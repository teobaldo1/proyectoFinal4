<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Enlace>
 */
class EnlaceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
       
       
        return [
            'id_pagina'=>fake()->numberBetween(1,10),
            'id_rol'=>fake()->numberBetween(1,10),
            'descripcion'=>fake()->text(),
            'fechaCreacion'=>fake()->date(),
            'fechaModificacion'=>fake()->date(),
            'usuarioCreacion'=>fake()->userName(),
            'usuarioModificacion'=>fake()->userName(),
           
        ];
    }
}
