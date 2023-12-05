<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Usuario>
 */
class UsuarioFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        
           
            return [
            'id_persona'=>fake()->numberBetween(1,10),
            'id_rol'=>fake()->numberBetween(1,10),
            'usuario'=>fake()->userName(),
            'clave'=>fake()->userName(),
            'fecha'=>fake()->date(),
            'fechaCreacion'=>fake()->date(),
            'fechaModificacion'=>fake()->date(),
            'usuarioCreacion'=>fake()->userName(),
            'usuarioModificacion'=>fake()->userName(),
        ];
    }
}
