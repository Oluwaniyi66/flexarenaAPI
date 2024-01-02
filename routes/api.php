<?php

use App\Http\Controllers\flex_Store;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route; 

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// React Endpoints For flexStore
Route::any('/add_product', [flex_Store::class, 'addProduct']); 

Route::any('/all_products', [flex_Store::class, 'getAllProducts']);

Route::any('/all_products/{prod_id}', [flex_Store::class, 'getSingleProduct']);

Route::any('/all_blogs', [flex_Store::class, 'getAllBlogs']);

Route::any('/all_blogs/{blog_id}', [flex_Store::class, 'getSingleBlog']);

Route::any('/all_product_status', [flex_Store::class, 'productStatus']);

Route::any('/register', [flex_Store::class, 'registerReact']);

Route::any('/login', [flex_Store::class, 'loginReact']);

Route::any('/contact', [flex_Store::class, 'contactReact']);

Route::any('/faq', [flex_Store::class, 'faqReact']);

Route::any('/all_faqs', [flex_Store::class, 'getAllFaqsReact']);

Route::any('/blog_subcontents', [flex_Store::class, 'blogSubContent']);

Route::any('/add_comment', [flex_Store::class, 'addBlogComment']);

Route::any('/blog_comments/{blog_id}', [flex_Store::class, 'getBlogComments']);

Route::any('/add_items_bought', [flex_Store::class, 'addItemsBought']);
   


// Endpoints for Contact App
Route::any('/create_contact', [flex_Store::class, 'createContact']);

Route::any('/all_contacts', [flex_Store::class, 'getAllContacts']);

Route::any('/edit_contact/{user_id}', [flex_Store::class, 'editContact']);

Route::any('/delete_contact/{user_id}', [flex_Store::class, 'deleteContact']);
