<?php

namespace Tests\Feature;

use App\User;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Tests\TestCase;

class AuthenticationTest extends TestCase
{
    use DatabaseMigrations;

    
    /** @test */
    public function it_will_register_a_user()
    {
        $response = $this->post('api/register', [
            'email'    => 'test2@gmail.com',
            'password' => 'password'
        ]);

        $response->assertJsonStructure([
            'access_token'
        ]);
    }

    /** @test */
    public function it_will_log_a_user_in()
    {
        $response = $this->post('api/login', [
            'email'    => 'test3@gmail.com',
            'password' => 'password'
        ]);

        $response->assertJsonStructure([
            'access_token'
        ]);
    }

    /** @test */
    public function it_will_not_log_an_invalid_user_in()
    {
        $response = $this->post('api/login', [
            'email'    => 'test@email.com',
            'password' => 'notlegitpassword'
        ]);

        $response->assertJsonStructure([
            'error',
        ]);
    }
}