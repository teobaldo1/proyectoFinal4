import { useEffect, useState } from "react";
import axios from "axios";
import API_URL from "./config";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
  Paper,
  Box,
} from "@mui/material";

const Users = ({ onLogout }) => {
  const [usuarios, setUsuarios] = useState([]);
  const logout = () => {
    onLogout();
  };

  const [editUsuario, setEditUsuario] = useState({
    id_usuario: null,
    id_persona: "",
    id_rol: "",
    usuario: "",
    clave: "",
    fecha: "",
    fechaCreacion: "",
    fechaModificacion: "",
    usuarioCreacion: "",
    usuarioModificacion: "",
  });
  const [storeUsuario, setStoreUsuario] = useState({
    id_usuario: null,
    id_persona: "",
    id_rol: "",
    usuario: "",
    clave: "",
    fecha: "",
    fechaCreacion: "",
    fechaModificacion: "",
    usuarioCreacion: "",
    usuarioModificacion: "",
  });

  const [modalOpen, setModalOpen] = useState(false);

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const response = await axios.get(`${API_URL}/usuarios`);
      setUsuarios(response.data);
    } catch (error) {
      className = "border p-2 mb-2 w-full";
      console.error("Error fetching data:", error);
    }
  };

  //   const handleDelete1=(docente_id)=>{
  //     Swal.fire({
  //       title: "Estas Seguro?",
  //       text: "No podras recuperar la informacion",
  //       icon: "warning",
  //       showCancelButton: true,
  //       confirmButtonColor: "#3085d6",
  //       cancelButtonColor: "#d33",
  //       confirmButtonText: "Eliminar"
  //     }).then((result) => {
  //       if (result.isConfirmed) {
  //          Swal.fire( handleDelete(docente_id))
  //          if (handleDelete) {
  //           Swal.fire({
  //             title: "Eliminado!",
  //             text: "El registro ha sido eliminado.",
  //             icon: "success"
  //           });
  //          }
  //       }
  //     });
  //    }

  const handleDelete = async (id_usuario) => {
    try {
      await axios.delete(`${API_URL}/usuarios/${id_usuario}`);
      // Actualizar la lista de estudiantes después de la eliminación
      fetchData();
    } catch (error) {
      console.error("Error deleting Usuario:", error);
    }
  };

  const handleEdit = (usuario) => {
    setEditUsuario({
      id_usuario: usuario.id_usuario,
      id_persona: usuario.id_persona,
      id_rol: usuario.id_rol,
      usuario: usuario.usuario,
      clave: usuario.clave,
      fecha: usuario.fecha,
      fechaCreacion: usuario.fechaCreacion,
      fechaModificacion: usuario.fechaModificacion,
      usuarioCreacion: usuario.usuarioCreacion,
      usuarioModificacion: usuario.usuarioModificacion,
    });
  };

  const handlOpenModal = () => {
    setModalOpen(true);
  };

  const handleCloseModal = () => {
    setModalOpen(false);
  };

  // alert editar//
  const handleSaveEdit1 = () => {
    Swal.fire({
      title: "Deseas guardar los cambios?",
      showDenyButton: true,

      confirmButtonText: "Guardar",
      denyButtonText: `Cancelar`,
    }).then((result) => {
      if (result.isConfirmed) {
        Swal.fire(handleSaveEdit());
        if (handleSaveEdit) {
          Swal.fire({
            title: "Guardado!",
            text: "El registro ha sido Guardado.",
            icon: "success",
          });
        }
      } else if (result.isDenied) {
        Swal.fire("Datos no Guardados");
      }
    });
  };

  const handleSaveEdit = async () => {
    try {
      await axios.put(`${API_URL}/usuarios/${editUsuario.id_usuario}`, {
        id_persona: editUsuario.id_persona,
        id_rol: editUsuario.id_rol,
        usuario: editUsuario.usuario,
        clave: editUsuario.clave,
        fecha: editUsuario.fecha,
        fechaCreacion: editUsuario.fechaCreacion,
        fechaModificacion: editUsuario.fechaModificacion,
        usuarioCreacion: editUsuario.usuarioCreacion,
        usuarioModificacion: editUsuario.usuarioModificacion,
      });
      fetchData();
      setEditUsuario({
        id_usuario: null,
        id_persona: "",
        id_rol: "",
        usuario: "",
        clave: "",
        fecha: "",
        fechaCreacion: "",
        fechaModificacion: "",
        usuarioCreacion: "",
        usuarioModificacion: "",
      });
    } catch (error) {
      console.error("Error updating usuarios:", error);
    }
  };

  //   // alert Agregar Docentes//

  const handleStore1 = () => {
    Swal.fire({
      title: "Deseas guardar los cambios?",
      showDenyButton: true,

      confirmButtonText: "Guardar",
      denyButtonText: `Cancelar`,
    }).then((result) => {
      if (result.isConfirmed) {
        Swal.fire(handleStore());
        if (handleStore) {
          Swal.fire({
            title: "Guardado!",
            text: "El registro ha sido Guardado.",
            icon: "success",
          });
        }
      } else if (result.isDenied) {
        Swal.fire("Datos no guardados");
      }
    });
  };
  const handleStore = async () => {
    try {
      await axios.post(`${API_URL}/usuarios`, {
        id_persona: storeUsuario.id_persona,
        id_rol: storeUsuario.id_rol,
        usuario: storeUsuario.usuario,
        clave: storeUsuario.clave,
        fecha: storeUsuario.fecha,
        fechaCreacion: storeUsuario.fechaCreacion,
        fechaModificacion: storeUsuario.fechaModificacion,
        usuarioCreacion: storeUsuario.usuarioCreacion,
        usuarioModificacion: storeUsuario.usuarioModificacion,
      });
      fetchData();
      handleCloseModal(true);
      setStoreUsuario({
        id_persona: "",
        id_rol: "",
        usuario: "",
        clave: "",
        fecha: "",
        fechaCreacion: "",
        fechaModificacion: "",
        usuarioCreacion: "",
        usuarioModificacion: "",
      });
    } catch (error) {
      console.error("Error save Usuario:", error);
    }
  };
  function cerrarModal() {
    setModalOpen(false);
  }

  return (
    <div className="flex">
      <div className="flex justify-center flex-col items-center">
        <div className="bg-gray-800  text-white flex justify-around h-[3vh] w-cover items-center "></div>
        <div className="flex  p-[1rem] w-[75vw]  items-center ">
          <h1 className=" text-2xl  px-[2.5rem] w-96 ">Lista de Usuarios</h1>

          <div className="flex pl-80 gap-x-4 items-center ">
            <div className="flex  ">
              <button
                onClick={() => handlOpenModal()}
                className="px-4 py-2 w-40 font-medium text-white bg-blue-800 rounded-md hover:bg-blue-500 focus:outline-none focus:shadow-outline-blue active:bg-blue-600 transition duration-150 ease-in-out"
              >
                Agregar Usuario
              </button>
            </div>
            <div className="text-red-500 pl-36 flex w-60 ">
              <a onClick={logout} href="/" className="flex">
                <span class="material-symbols-outlined">logout</span>
                Logout
              </a>
            </div>
          </div>
        </div>
        <div className=" flex justify-end w-full">
          <Box
            component={Paper}
            sx={{
              height: 450,
              width: "95%",
              overflow: "auto",
              "& .MuiTableContainer-root": {
                maxHeight: 380,
              },
              "& .MuiTableHead-root": {
                position: "sticky",
                top: 0,
                backgroundColor: "rgb(0, 0, 255)",
              },
            }}
          >
            <Table>
              <TableHead>
                <TableRow
                  sx={{
                    position: "sticky",
                    top: 0,
                    width: "100%",
                    justifyContent: "spacebetween",
                    backgroundColor: "rgb(10, 10, 100)",
                  }}
                >
                  <TableCell>
                    {" "}
                    <div className="text-center px-[3vw] text-white">
                      {" "}
                      Persona{"  "}
                    </div>
                  </TableCell>
                  <TableCell>
                    <div className="text-center  px-[3vw] text-white"> Rol</div>
                  </TableCell>
                  <TableCell>
                    <div className="text-center text-white"> Usuario </div>
                  </TableCell>
                  <TableCell>
                    <div className="text-center text-white">Fecha</div>
                  </TableCell>
                  <TableCell>
                    <div className="text-center text-white">
                      Fecha de creacion
                    </div>
                  </TableCell>
                  <TableCell>
                    <div className="text-center text-white">
                      Fecha de Modificacion
                    </div>
                  </TableCell>
                  <TableCell>
                    <div className="text-center text-white">
                      Usuario Creacion
                    </div>
                  </TableCell>
                  <TableCell>
                    <div className="text-center text-white">
                      Usuario Modificacion
                    </div>
                  </TableCell>
                  <TableCell>
                    <div className="text-center text-white">Accion</div>
                  </TableCell>
                </TableRow>
              </TableHead>
              <TableBody>
                {usuarios.map((usuario) => (
                  <TableRow key={usuario.id}>
                    <TableCell align="left">
                      {" "}
                      <div className=" text-center w-[10rem]">
                        <div className="flex items-center">
                          <div className="ml-4">
                            <div className="text-sm font-medium text-gray-900">
                              {`${usuario.id_persona}`}
                            </div>
                          </div>
                        </div>
                      </div>
                    </TableCell>
                    <TableCell align="left">
                      <div className="text-sm text-center text-gray-500 ">
                        {`${usuario.id_rol}`}
                      </div>
                    </TableCell>
                    <TableCell align="left">
                      <div className="text-sm text-center text-gray-500 ">
                        {`${usuario.usuario}`}
                      </div>
                    </TableCell>
                    <TableCell align="left">
                      <div className=" text-center">{`${usuario.fecha}`}</div>
                    </TableCell>
                    <TableCell align="left">
                      <div className=" text-center">{`${usuario.fechaCreacion}`}</div>
                    </TableCell>
                    <TableCell align="left">
                      <div className=" text-center">{`${usuario.fechaModificacion}`}</div>
                    </TableCell>
                    <TableCell align="left">
                      <div className=" text-center">{`${usuario.usuarioCreacion}`}</div>
                    </TableCell>
                    <TableCell align="left">
                      <div className=" text-center">{`${usuario.usuarioModificacion}`}</div>
                    </TableCell>

                    <TableCell align="left">
                      <div className="flex gap-4 justify-center">
                        <button
                          type="submit"
                          onClick={() => handleEdit(usuario)}
                          className="px-4 py-2 font-medium text-blue-500 hover:text-blue-200 rounded-md  focus:outline-none focus:shadow-outline-blue active:bg-blue-600 transition duration-150 ease-in-out"
                        >
                          <span class="material-symbols-outlined">
edit_square
</span>
                        </button>
                        <button
                          onClick={() => handleDelete(usuario.id_usuario)}
                          className="px-4 py-2 font-medium text-red-500 hover:text-red-200  focus:outline-none focus:shadow-outline-blue active:bg-blue-600 transition duration-150 ease-in-out"
                        >
                          <span class="material-symbols-outlined">delete</span>
                        </button>
                      </div>
                    </TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </Box>
        </div>
        {/* Modal para la edición */}
        {editUsuario.id_usuario !== null && (
          <div className="fixed inset-0 flex items-center justify-center bg-gray-500 bg-opacity-75">
            <div className="w-[370px] flex flex-col ">
               
              </div>
            <div className="bg-white p-4 rounded-md w-[350px]">
            <form onSubmit={cerrarModal}>
            <button
                  type="submit"
                  className="bg-white text-gray-500   w-[20px] h-[20px] flex items-center justify-center rounded-md hover:bg-blue-400 focus:outline-none "
                >
                  <span className="material-symbols-outlined">close</span>
                </button>
            </form>
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Persona:
              </label>
              <input
                type="text"
                id="addNombre"
                value={editUsuario.id_persona}
                onChange={(e) =>
                  setEditUsuario({ ...editUsuario, id_persona: e.target.value })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Rol:
              </label>
              <input
                type="text"
                id="addApellido"
                value={editUsuario.id_rol}
                onChange={(e) =>
                  setEditUsuario({ ...editUsuario, id_rol: e.target.value })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Usuario:
              </label>
              <input
                type="text"
                id="addNombre"
                value={editUsuario.usuario}
                onChange={(e) =>
                  setEditUsuario({ ...editUsuario, usuario: e.target.value })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addusuario"
                className="block text-sm font-medium text-gray-700"
              >
                Clave:
              </label>
              <input
                type="text"
                id="addclave"
                value={editUsuario.clave}
                onChange={(e) =>
                  setEditUsuario({ ...editUsuario, clave: e.target.value })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Fecha:
              </label>
              <input
                type="text"
                id="addfecha"
                value={editUsuario.fecha}
                onChange={(e) =>
                  setEditUsuario({
                    ...editUsuario,
                    fecha: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Fecha de creacion:
              </label>
              <input
                type="text"
                id="addFC"
                value={editUsuario.fechaCreacion}
                onChange={(e) =>
                  setEditUsuario({
                    ...editUsuario,
                    fechaCreacion: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Fecha de Modificacion:
              </label>
              <input
                type="text"
                id="addFM"
                value={editUsuario.fechaModificacion}
                onChange={(e) =>
                  setEditUsuario({
                    ...editUsuario,
                    fechaModificacion: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Usuario Creacion:
              </label>
              <input
                type="text"
                id="addUC"
                value={editUsuario.usuarioCreacion}
                onChange={(e) =>
                  setEditUsuario({
                    ...editUsuario,
                    usuarioCreacion: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Usuario Modificacion:
              </label>
              <input
                type="text"
                id="addUM"
                value={editUsuario.usuarioModificacion}
                onChange={(e) =>
                  setEditUsuario({
                    ...editUsuario,
                    usuarioModificacion: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <div className="flex">
                <button
                  onClick={handleSaveEdit1}
                  className="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600 focus:outline-none focus:shadow-outline-blue active:bg-blue-700"
                >
                  Guardar
                </button>
                
                  <button
                    
                    className="z-10 ml-3 bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600 focus:outline-none focus:shadow-outline-blue active:bg-blue-700"
                  >
                    Cancelar
                  </button>
                
              </div>
            </div>
          </div>
        )}
        {/* -------------------- MODAL PARA AGREGAR Usuarios
    ------------------------ */}
        {modalOpen && (
          <div className="fixed inset-0 flex items-center justify-center bg-gray-500 bg-opacity-75">
            <div className="bg-white p-4 rounded-md">
              <div className="w-[370px] flex  justify-end">
                <button
                  onClick={handleCloseModal}
                  className="bg-gray-500 text-white  px-4 py-2 w-[20px] h-[20px] flex items-center justify-center rounded-md hover:bg-blue-400 focus:outline-none "
                >
                  <span className="material-symbols-outlined">close</span>
                </button>
              </div>
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Persona:
              </label>
              <input
                type="text"
                id="addNombre"
                value={storeUsuario.id_persona}
                onChange={(e) =>
                  setStoreUsuario({
                    ...storeUsuario,
                    id_persona: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Rol:
              </label>
              <input
                type="text"
                id="addApellido"
                value={storeUsuario.id_rol}
                onChange={(e) =>
                  setStoreUsuario({ ...storeUsuario, id_rol: e.target.value })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Usuario:
              </label>
              <input
                type="text"
                id="addNombre"
                value={storeUsuario.usuario}
                onChange={(e) =>
                  setStoreUsuario({ ...storeUsuario, usuario: e.target.value })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addusuario"
                className="block text-sm font-medium text-gray-700"
              >
                Clave:
              </label>
              <input
                type="text"
                id="addclave"
                value={storeUsuario.clave}
                onChange={(e) =>
                  setStoreUsuario({ ...storeUsuario, clave: e.target.value })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Fecha:
              </label>
              <input
                type="text"
                id="addfecha"
                value={storeUsuario.fecha}
                onChange={(e) =>
                  setStoreUsuario({
                    ...storeUsuario,
                    fecha: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Fecha de creacion:
              </label>
              <input
                type="text"
                id="addFC"
                value={storeUsuario.fechaCreacion}
                onChange={(e) =>
                  setStoreUsuario({
                    ...storeUsuario,
                    fechaCreacion: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Fecha de Modificacion:
              </label>
              <input
                type="text"
                id="addFM"
                value={storeUsuario.fechaModificacion}
                onChange={(e) =>
                  setStoreUsuario({
                    ...storeUsuario,
                    fechaModificacion: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Usuario Creacion:
              </label>
              <input
                type="text"
                id="addUC"
                value={storeUsuario.usuarioCreacion}
                onChange={(e) =>
                  setStoreUsuario({
                    ...storeUsuario,
                    usuarioCreacion: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />
              <label
                htmlFor="addNombre"
                className="block text-sm font-medium text-gray-700"
              >
                Usuario Modificacion:
              </label>
              <input
                type="text"
                id="addUM"
                value={storeUsuario.usuarioModificacion}
                onChange={(e) =>
                  setStoreUsuario({
                    ...storeUsuario,
                    usuarioModificacion: e.target.value,
                  })
                }
                className="border p-2 mb-2 w-full h-6"
              />

              <button
                onClick={handleStore1}
                className="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600 focus:outline-none focus:shadow-outline-blue active:bg-blue-700"
              >
                Agregar
              </button>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};

export default Users;
