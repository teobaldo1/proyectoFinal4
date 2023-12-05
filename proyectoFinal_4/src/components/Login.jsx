function Login({ handleInputChange, handleSubmit, dataUsuario }) {
  return (
    <main className="h-screen flex flex-col justify-center items-center bg-white ">
      <div className="  flex justify-center items-center gap-6">
      <div className="flex flex-col  items-center" >
        <h1 className="text-6xl font-sans font-semibold pb-6">JWT Authentication</h1>
        <img src="../public/programador1.jpg" alt="" className="h-[400px] W-[200px] shadow-2xl" /></div>
    <div className="flex flex-col  h-[250px] w-[400px] bg-white rounded-md shadow-2xl border-[1px] border-gray-300 gap-y-10">
      <form
      onSubmit={handleSubmit}
        action=""
        className="flex flex-col h-[200px] w-[400px]  bg-white items-center rounded-md"
        method="post"
      >
        <div className="flex flex-col gap-y-3 items-center pt-5 ">
          <h1 className="text-2xl font-sans font-bold">Iniciar Sesion</h1>

          <div className="flex justify-center items-center pl-8     ">
            <input
              className=" w-[285px] h-[30px] pl-4 text-sm  border-[1px] border-gray-300"
              type="email"
              placeholder="Email"
              name="email"
             onChange={handleInputChange}
              value={dataUsuario.email}
            />
            <span className="material-symbols-outlined pr-1 text-white pl-1">
              mail
            </span>
          </div>
          <div className="flex justify-center items-center pl-8 ">
            <input
              type="password"
              className="w-[285px] h-[30px] pl-4 text-sm border-[1px] border-gray-300 "
              placeholder="Password"
              name="password"
             onChange={handleInputChange}
              value={dataUsuario.password}
            />
            <span className="material-symbols-outlined  pr-1 text-white pl-1">
              lock
            </span>
          </div>
        </div>

        <div className="pt-4 flex justify-center">
          <button
            className=" w-72  h-[35px] bg-gray-900 text-white  text-xl  "
            type="submit"
          >
            Login
          </button>
        </div>
      </form>
    </div>
    </div>
  </main>
  );
}

export default Login;
