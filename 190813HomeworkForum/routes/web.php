<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', 'PostController@index');
Route::resource('/post', 'PostController');

Route::post('/update', 'HomeController@update');

Route::get('/login', 'HomeController@logout');
Route::post('/login', 'HomeController@login');