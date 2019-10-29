<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\post;
use Faker\Generator as Faker;

$factory->define(App\post::class, function (Faker $faker) {
    return [
        'user_id' => function(){
            return factory('App\User')->create()->id;
        },
        'title' => $faker->sentence,
        'body'  => $faker->paragraph
    ];
});
