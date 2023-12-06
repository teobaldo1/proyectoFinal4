<?php


namespace App\Http\Controllers;

header('Access-Control-Allow-Origin', '*');

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;

class UserController extends Controller
{
    public function index()
    {
       return User::all();
    }

  
    public function store(Request $request)
    {
        $usuario= new User();
        $usuario->name= $request->name;
        $usuario->email= $request->email;
        $usuario->email_verified_at= $request->email_verified_at;
        $usuario->password= $request->password;
        $usuario->save();
        return  'usuario creado exitosamente.';    

   }


   public function login(Request $request){
    $credencials= $request->only('email','password');
     if (Auth::guard('api')->attempt($credencials)) {
        $user= Auth::guard('api')->user();
        $jwt= JWTAuth::attempt($credencials);
        $success=true;
        $data= compact('user','jwt');
        return compact('success','data');
     }else {
       
        return false;
     }
     
    
       }

       public function logout(){
        Auth::guard('api')->logout();
        $success=true;
        return compact('success');
       }
}
