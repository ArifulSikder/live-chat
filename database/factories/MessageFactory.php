<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Message>
 */
class MessageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        do {
            $from = rand(1, 30);
            $to = rand(1, 30);
            $is_read = rand(0, 1);
        } while ($from === $to);
        return [
            'from' => $from,
            'to' => $to,
            'message' => fake()->sentence(),
            'is_read' => $is_read,
        ];
    }
}
