<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        return [
            'name' => fake()->name(),
            'status' => rand(0,1),
            'slug' => fake()->name(),
            'image' => "https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png",
            'description' => fake()->name(),
            'category' => fake()->name(),
            'quantity' => rand(1,100),
            'price' => rand(100,500),
            ];
    }
}
