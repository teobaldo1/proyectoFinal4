<?php

use App\Http\Controllers\UserController;
use App\Http\Controllers\UsuarioController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



Route::middleware('auth:api')->group( function () {
    Route::post('/logout',[App\Http\Controllers\UserController::class,'logout']);
});

Route::controller(UsuarioController::class)->group(function() {
    Route::get('/usuarios', 'index');
    Route::post('/usuarios', 'store');
    Route::put('/usuarios/{id_usuario}', 'update');
    Route::delete('/usuarios/{id}', 'destroy');  
   
});

Route::controller(UserController::class)->group(function() {
    Route::get('/login', 'index');
    Route::post('/login', 'store');
    Route::post('/login', 'login');
});