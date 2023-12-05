<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;

class UsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
       return Usuario::all();
    }

  
    public function store(Request $request)
    {
        $usuario= new Usuario();
        $usuario->id_persona= $request->id_persona;
        $usuario->id_rol= $request->id_rol;
        $usuario->usuario= $request->usuario;
        $usuario->clave= $request->clave;
        $usuario->fecha= $request->fecha;
        $usuario->fechaCreacion= $request->fechaCreacion;
        $usuario->fechaModificacion= $request->fechaModificacion;
        $usuario->usuarioCreacion= $request->usuarioCreacion;
        $usuario->usuarioModificacion= $request->usuarioModificacion;

        $usuario->save();
        return  'usuario creado exitosamente.';

        



    }

   
    public function show(Usuario $usuario)
    {
        
    }

    
    public function edit(Usuario $usuario)
    {
        
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $usuario = Usuario::find($id);

        $usuario->id_persona= $request->id_persona;
        $usuario->id_rol= $request->id_rol;
        $usuario->usuario= $request->usuario;
        $usuario->clave= $request->clave;
        $usuario->fecha= $request->fecha;
        $usuario->fechaCreacion= $request->fechaCreacion;
        $usuario->fechaModificacion= $request->fechaModificacion;
        $usuario->usuarioCreacion= $request->usuarioCreacion;
        $usuario->usuarioModificacion= $request->usuarioModificacion;
        $usuario->save();
        return "guardado correctamente";
    }

    
    public function destroy($id)
    {
        $usuario = Usuario::find($id);
        $usuario->delete(); 
        return "Usuario Eliminado";
    }

    
  


}
