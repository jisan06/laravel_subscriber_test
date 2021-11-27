<?php

namespace Database\Factories;

use App\Models\Subscriber;
use Illuminate\Database\Eloquent\Factories\Factory;

class SubscriberFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */


    public function definition()
    {
        return [
            'first_name' => $this->faker->firstName,
            'last_name' => $this->faker->lastName,
            'email' => $this->faker->unique()->safeEmail(),
            'birth_day' =>  $this->faker->dateTimeBetween('1970-01-01', date('Y-m-d')),
            'created_at' =>  $this->faker->dateTimeBetween('1970-01-01', date('Y-m-d')),
            'updated_at' =>  $this->faker->dateTimeBetween('1980-01-01', date('Y-m-d')) ,
        ];
    }
}
