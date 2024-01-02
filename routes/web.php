<?php

use App\Http\Controllers\flex_Store;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () { 
    return view('welcome'); 
});

Route::any('/add_product_laravel', [flex_Store::class, 'addProductLaravel']);

Route::any('/add_blog_laravel', [flex_Store::class, 'addBlogLaravel']);

Route::any('/register', [flex_Store::class, 'registerLaravel']);  
 
Route::any('/view_result1', [flex_Store::class, 'getAllProducts']);

Route::any('/view_result2', [flex_Store::class, 'productStatus']);

Route::any('/submit_form', [flex_Store::class, 'submitLaravelForm']);
