<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Tests\TestCase;


class HttpTest extends TestCase
{
   /**
    * A basic test example.
    *
    * @return void
    */
   public function test_home_page() {
           $response = $this->get('/');
           $response->assertStatus(200);
   }


     public function test_login_page() {
             $response = $this->get('/login');
             $response->assertStatus(200);
   }

  public function test_register_page() {
          $response = $this->get('/register');
          $response->assertStatus(200);
   }

   public function test_contact_page() {
           $response = $this->get('/contact');
           $response->assertStatus(200);
   }


}
