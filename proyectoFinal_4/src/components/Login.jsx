function Login({ handleInputChange, handleSubmit, dataUsuario }) {
  return (
    <main className="h-screen flex flex-col items-center bg-blue-100 pt-32">
    <div className="flex flex-col h-[200px] w-[320px] bg-white rounded-md ">
      <form
      onSubmit={handleSubmit}
        action=""
        className="flex flex-col h-[200px] w-[320px] bg-white items-center rounded-md"
        method="post"
      >
        <div className="flex flex-col gap-y-3 items-center pt-5 ">
          <h2>Ingresa a tu cuenta</h2>

          <div className="flex justify-center items-center border-[1px] border-gray-400">
            <input
              className=" w-[250px] h-[30px] pl-4 text-sm  border-0 border-gray-200 "
              type="email"
              placeholder="Email"
              name="email"
             onChange={handleInputChange}
              value={dataUsuario.email}
            />
            <span className="material-symbols-outlined pr-1 text-gray-400">
              mail
            </span>
          </div>
          <div className="flex justify-center items-center border-[1px] border-gray-400">
            <input
              type="password"
              className="w-[250px] h-[30px] pl-4 text-sm  border-0 border-gray-200 "
              placeholder="Password"
              name="password"
             onChange={handleInputChange}
              value={dataUsuario.password}
            />
            <span className="material-symbols-outlined  pr-1 text-gray-400 ">
              lock
            </span>
          </div>
        </div>

        <div className="pt-4 pl-[190px]">
          <button
            class="w-[80px] h-[25px] bg-blue-500 text-white   rounded-md  "
            type="submit"
          >
            Ingresar
          </button>
        </div>
      </form>
    </div>
  </main>
  );
}

export default Login;
