<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Database\Factories\UsuarioFactory;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
       $paginaSeeder= new PaginaSeeder;
       $paginaSeeder->run();

       $personaSeeder= new PersonaSeeder;
       $personaSeeder->run();
    
       $rolesSeeder= new RolSeeder;
       $rolesSeeder->run();

       $enlaceSeeder= new EnlaceSeeder;
       $enlaceSeeder->run();

       $usuarioSeeder= new UsuarioSeeder;
       $usuarioSeeder->run();

       $bitacoraSeeder= new BitacoraSeeder;
       $bitacoraSeeder->run();

       $userSeeder= new UserSeeder;
       $userSeeder->run();

    }
}
