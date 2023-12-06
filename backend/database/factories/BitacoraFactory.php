<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Bitacora>
 */
class BitacoraFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
       
        return [
            'bitacora'=>fake()->text(),
            'id_usuario'=>fake()->numberBetween(1,10),
            'fecha'=>fake()->date(),
            'hora'=>fake()->date(),
            'ip'=>fake()->phoneNumber(),
            'so'=>fake()->name(),
            'navegador'=>fake()->email(),
            'usuario'=>fake()->userName(),
        ];
    }
}
