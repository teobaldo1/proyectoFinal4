<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Persona>
 */
class PersonaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
   
    {
        return [
            'primerNombre'=>fake()->firstName(),
            'segundoNombre'=>fake()->name(),
            'primerApellido'=>fake()->lastName(),
            'segundoApellido'=>fake()->lastName(),
            'fechaCreacion'=>fake()->date(),
            'fechaModificacion'=>fake()->date(),
            'usuarioCreacion'=>fake()->userName(),
            'usuarioModificacion'=>fake()->userName(),
        
        ];
    }
}
