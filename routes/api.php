<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


Route::post('register', 'UserController@register');
Route::post('login', 'UserController@login');

Route::group(['middleware' => ['jwt.verify']], function() {
    Route::post('create-post', 'PostController@create_post');
    Route::put('edit-post', 'PostController@edit_post');
    Route::delete('delete-post', 'PostController@delete_post');
    Route::post('post-like', 'PostController@post_like');
    Route::post('post-comment', 'PostController@post_comment');
    Route::get('post-list', 'PostController@post_list');
});
