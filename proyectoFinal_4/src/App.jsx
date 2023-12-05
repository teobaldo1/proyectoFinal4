import { useState } from "react";
import { BrowserRouter, Route, BrowserRouter as Router, Routes } from "react-router-dom";

import Login from "./components/Login";
import Users from "./components/viewUsuario";
import LOGIN_URL from "./components/UserLogin";
import axios from "axios";

function App() {
  const [isLoading, setIsLoading] = useState(false);

  const handleLogout=()=>{ 
    setIsLoading(false);
    
  };

  const [dataUsuario, setDataUsuario] = useState({
    email: "",
    password: "",
  });

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    const newDataUsuario = { ...dataUsuario, [name]: value };
    setDataUsuario(newDataUsuario);
  };
  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!e.target.checkValidity()) {
      console.log("no enviar");
    } else {
      try {
        const response = await axios.post(`${LOGIN_URL}/login`, dataUsuario);
        console.log(response.data);
        if (response.data) {
          Swal.fire({
            title: 'Inicio de Sesión exitoso',
            text: 'Bienvenido al sistema de registro de Usuario',
            icon: 'success',
          });
          setIsLoading(true);
          
        }else{
          Swal.fire({
            title: 'Credenciales incorrectas',
            text: response.data.mensaje,
            icon: 'info',
          });

        }

        
      } catch (error) {
        
        console.error("Error during login:", error);
        
      }
    }
  };

  return (
    <>
    <BrowserRouter>
      {!isLoading ? (
        
          <Routes>
              <Route
              path="/"
              element={
                <Login
                  handleInputChange={handleInputChange}
                  handleSubmit={handleSubmit}
                  dataUsuario={dataUsuario}
                />
              }
            ></Route>
            </Routes>
        
      ) : (
        
          <Routes>
            <Route path="/" element={<Users onLogout={handleLogout}  />}></Route>
          </Routes>
       
      )}
      </BrowserRouter>
    </>
  );
}

export default App;
