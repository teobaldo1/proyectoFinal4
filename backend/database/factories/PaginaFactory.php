<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pagina>
 */
class PaginaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [
            'fechaCreacion'=>fake()->date(),
            'fechaModificacion'=>fake()->date(),
            'usuarioCreacion'=>fake()->userName(),
            'usuarioModificacion'=>fake()->userName(),
            'url'=>fake()->url(),
            'estado'=>fake()->name(),
            'nombre'=>fake()->name(),
            'descripcion'=>fake()->text(),
            'icono'=>fake()->image(null, 640, 480),
            'tipo'=>fake()->name(),
        ];
    }   
}
