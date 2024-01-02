<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\BlogComment;
use App\Models\Contact;
use App\Models\ContactUser;
use App\Models\Faq;
use App\Models\OrderDetails; 
use App\Models\Orders;
use App\Models\Product;
use App\Models\User; 
use Faker\Provider\Uuid;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB; 
use Illuminate\Support\Facades\Hash; 
use Illuminate\Support\Str;

class flex_Store extends Controller
{

    // Adding the products from a ReactJS form 
    public function addProduct(Request $req)
    {

        // Requesting all the data coming from our react app and saving into a 'product_details' variable
        $product_details = $req->all();

        // Creating a new variable called 'new_product' and saving the 'product details' values into it
        $new_product['name'] = $product_details['product_name'];
        $new_product['price'] = $product_details['product_price'];
        $new_product['category'] = $product_details['product_category'];
        $new_product['long_desc'] = $product_details['product_long_desc'];
        $new_product['short_desc'] = $product_details['product_short_desc'];
        $new_product['image'] = $product_details['product_image'];
        $new_product['img_alt1'] = $product_details['product_alt_image1'];
        $new_product['img_alt2'] = $product_details['product_alt_image2'];
        $new_product['img_alt3'] = $product_details['product_alt_image3'];
        $new_product['video'] = $product_details['product_alt_video'];

        // Insert into the database 
        $save_db = Product::create($new_product);

        // Saving into the database now and returning a response to our react app
        if ($save_db) {
            return response()->json([
                'status' => 'success',
                'message' => 'Product Added Successfully!'
            ]);
        } else {
            return response()->json([
                'status' => 'failed',
                'code' => 'Product was not added'
            ]);
        }
    }

    // Adding the products from a ReactJS form
    public function addProduct2(Request $req)
    {

        // Creating a new variable called 'new_product' and saving the 'product details' values into it
        $new_product['name'] = $req->product_name;
        $new_product['price'] = $req->product_price;
        $new_product['category'] = $req->product_category;
        $new_product['long_desc'] = $req->product_long_desc;
        $new_product['short_desc'] = $req->product_short_desc;

        // Handling the files
        $file1 = $req->file('product_image');
        $file2 = $req->file('product_alt_image1');
        $file3 = $req->file('product_alt_image2');
        $file4 = $req->file('product_alt_image3');
        $file5 = $req->file('product_alt_video');

        // Get image original name and rename it using the time function
        $file_name1 = time() . '_' . $file1->getClientOriginalName();
        $file_name2 = time() . '_' . $file2->getClientOriginalName();
        $file_name3 = time() . '_' . $file3->getClientOriginalName();
        $file_name4 = time() . '_' . $file4->getClientOriginalName();
        $file_name5 = time() . '_' . $file5->getClientOriginalName();

        // Location/Folder to store the files in your public folder
        $image_path = 'uploaded_files';

        // Move the files now into the Location/Folder
        $move_file1 = $file1->move($image_path, $file_name1);
        $move_file2 = $file2->move($image_path, $file_name2);
        $move_file3 = $file3->move($image_path, $file_name3);
        $move_file4 = $file4->move($image_path, $file_name4);
        $move_file5 = $file5->move($image_path, $file_name5);

        // Update the "new_product" array with the path name of each file
        $new_product['image'] = $image_path . '/' . $file_name1;
        $new_product['img_alt1'] = $image_path . '/' . $file_name2;
        $new_product['img_alt2'] = $image_path . '/' . $file_name3;
        $new_product['img_alt3'] = $image_path . '/' . $file_name4;
        $new_product['video'] = $image_path . '/' . $file_name5;

        // Insert into the database 
        $save_db = Product::create($new_product);

        // Saving into the database now and returning a response to our react app
        if ($save_db) {
            return response()->json([
                'status' => 'success',
                'message' => 'Product Added Successfully!'
            ]);
        } else {
            return response()->json([
                'status' => 'failed',
                'code' => 'Product was not added'
            ]);
        }
    }

    // Adding the products from a laravel form
    public function addProductLaravel()
    {

        return view('addProduct');
    }

    // LARAVEL ADD PRODUCT FORM
    public function submitLaravelForm(Request $request)
    {

        $request->validate([
            'product_name' => 'required',
            'product_price' => 'required',
            'product_discount' => 'required',
            'product_image' => 'required|file|mimes:jpg,jpeg,bmp,png,doc,docx,csv,rtf,xlsx,xls,txt,pdf,zip',
            'product_category' => 'required',
            'product_long_desc' => 'required',
            'product_short_desc' => 'required',
            'product_alt_image1' => 'required|file|mimes:jpg,jpeg,png,doc,docx,csv,,txt,pdf,zip',
            'product_alt_image2' => 'required|file|mimes:jpg,jpeg,png,doc,docx,csv,,txt,pdf,zip',
            'product_alt_image3' => 'required|file|mimes:jpg,jpeg,png,doc,docx,csv,,txt,pdf,zip',
            'product_alt_video' => 'required|file|mimes:jpg,jpeg,png,doc,docx,csv,,txt,pdf,zip'
        ]);

        // Getting the name of the files and renaming them using the in-built time function.
        $fileName1 = time() . '_' . $request->product_image->getClientOriginalName();
        $fileName2 = time() . '_' . $request->product_alt_image1->getClientOriginalName();
        $fileName3 = time() . '_' . $request->product_alt_image2->getClientOriginalName();
        $fileName4 = time() . '_' . $request->product_alt_image3->getClientOriginalName();
        $fileName5 = time() . '_' . $request->product_alt_video->getClientOriginalName();


        // Moving the files into a folder name "uploaded-files" inside the "public" folder of the laravel app.
        $request->product_image->move(public_path('uploaded_files'), $fileName1);
        $request->product_alt_image1->move(public_path('uploaded_files'), $fileName2);
        $request->product_alt_image2->move(public_path('uploaded_files'), $fileName3);
        $request->product_alt_image3->move(public_path('uploaded_files'), $fileName4);
        $request->product_alt_video->move(public_path('uploaded_files'), $fileName5);


        // Inserting/Saving the product details into the database now
        $product_details = $request->all();

        $new_product['name'] = $product_details['product_name'];
        $new_product['price'] = $product_details['product_price'];
        $new_product['discount'] = $product_details['product_discount'];
        $new_product['category'] = $product_details['product_category'];
        $new_product['long_desc'] = $product_details['product_long_desc'];
        $new_product['short_desc'] = $product_details['product_short_desc'];
        $new_product['image'] = $fileName1;
        $new_product['img_alt1'] = $fileName2;
        $new_product['img_alt2'] = $fileName3;
        $new_product['img_alt3'] = $fileName4;
        $new_product['video'] = $fileName5;

        $save_db = Product::create($new_product);

        if ($save_db) {
            return back()->with('success', 'A New Product Has Been Added To The Database.');
        }
    }

    // LARAVEL ADD BLOG FORM
    public function addBlogLaravel(Request $request)
    {

        if ($request->isMethod('post')) {

            $request->validate([
                'title' => 'required',
                'author' => 'required',
                'image' => 'required|file|mimes:jpg,jpeg,png,doc,docx,csv,txt,pdf,zip,webp',
                'category' => 'required',
                'content1' => 'required',
                'content2' => 'required',
                'content3' => 'required',
                'img1_vid1' => 'required|file|mimes:jpg,jpeg,png,doc,docx,csv,,txt,pdf,zip,webp',
                'img2_vid2' => 'required|file|mimes:jpg,jpeg,png,doc,docx,csv,,txt,pdf,zip,webp'
            ]);

            // Getting the name of the files and renaming them using the in-built time function.
            $fileName1 = time() . '_' . $request->image->getClientOriginalName();
            $fileName2 = time() . '_' . $request->img1_vid1->getClientOriginalName();
            $fileName3 = time() . '_' . $request->img2_vid2->getClientOriginalName();


            // Moving the files into a folder name "uploaded-blogs" inside the "public" folder of the laravel app.
            $request->image->move(public_path('uploaded_blogs'), $fileName1);
            $request->img1_vid1->move(public_path('uploaded_blogs'), $fileName2);
            $request->img2_vid2->move(public_path('uploaded_blogs'), $fileName3);


            // Inserting/Saving the product details into the database now
            $blog_details = $request->all();

            $new_blog['title'] = $blog_details['title'];
            $new_blog['author'] = $blog_details['author'];
            $new_blog['category'] = $blog_details['category'];
            $new_blog['content1'] = $blog_details['content1'];
            $new_blog['content2'] = $blog_details['content2'];
            $new_blog['content3'] = $blog_details['content3'];
            $new_blog['image'] = $fileName1;
            $new_blog['img1_vid1'] = $fileName2;
            $new_blog['img2_vid2'] = $fileName3;
            $new_blog['vid_url'] = $blog_details['vid_url'];

            $save_db = Blog::create($new_blog);

            if ($save_db) {
                return back()->with('success', 'A New Blog Has Been Published.');
            }
        }

        return view('addBlog');
    }

    // Get All Products From Database And Send To React.
    public function getAllProducts()
    {
        $all_products = Product::all();

        return $all_products;
    }

    // Getting the single product and sending back to reactjs
    public function getSingleProduct($prod_id)
    {
        $product = Product::find($prod_id);

        return $product;
    }

    // Get All Blogs From Database And Send To React. 
    public function getAllBlogs()
    {
        $all_blogs = Blog::all();

        return $all_blogs;
    }

    // Get Single Blogs From Database And Send To React. 
    public function getSingleBlog($blog_id)
    {
        $blog = Blog::find($blog_id);

        return $blog;
    }

    // Get Product Via Status[trending, featured, best_seller, new_arrival, latest]
    public function productStatus()
    {
        $trending = DB::table('products')->where('status1', 'trending')->get();
        $featured = DB::table('products')->where('status2', 'featured')->get();
        $new_arrival = DB::table('products')->where('status1', 'new_arrival')->get();
        $best_seller = DB::table('products')->where('status2', 'best_seller')->get();
        $special_offer = DB::table('products')->where('status1', 'special_offer')->get();
        $top_category = DB::table('products')->where('status3', 'top_category')->get();
        $top_blogs = DB::table('blogs')->orderBy('id', 'desc')->paginate(3);

        return response()->json([
            'trending' => $trending,
            'featured' => $featured,
            'new_arrival' => $new_arrival,
            'best_seller' => $best_seller,
            'special_offer' => $special_offer,
            'top_category' => $top_category,
            'top_blogs' => $top_blogs
        ]);
    }

    // Handle Registration from reactjs
    public function registerReact(Request $request)
    {
        return $request->all();

        $incoming_data = $request->all();
        $new_user['first_name'] = $incoming_data['first_name'];
        $new_user['last_name'] = $incoming_data['last_name'];
        $new_user['email'] = $incoming_data['email'];
        $new_user['address'] = $incoming_data['address'];
        $new_user['phone_number'] = $incoming_data['phone_number'];

        // Update the password and verify password in the new_user array to hashed password
        $new_user['password'] = Hash::make($request->password);
        $new_user['confirm_password'] = Hash::make($request->confirm_password);

        // Getting the original name of the file and renaming it.
        $fileName = time() . '_' . $request->file('profile_picx')->getClientOriginalName();

        // Moving the file into a folder name "uploaded_files" inside the "public" folder of the laravel app.
        $request->file('profile_picx')->move(public_path('uploaded_files'), $fileName);

        // Updating the new_user array with the new name of the file
        $new_user['profile_picx'] = $fileName;

        $save_db = User::create($new_user);

        if ($save_db) {
            return response()->json([
                'status' => 'success',
                'message' => 'New User Added Successfully',
                'data' => $save_db
            ]);
        }
    }

    // This handles our registration form in laravel
    public function registerLaravel(Request $request)
    {

        if ($request->isMethod('post')) {

            $incoming_data = $request->all();
            $new_user['first_name'] = $incoming_data['first_name'];
            $new_user['last_name'] = $incoming_data['last_name'];
            $new_user['email'] = $incoming_data['email'];
            $new_user['address'] = $incoming_data['address'];
            $new_user['phone_number'] = $incoming_data['phone_number'];

            // Update the password and verify password in the new_user array to hashed password
            $new_user['password'] = Hash::make($request->password);
            $new_user['confirm_password'] = Hash::make($request->confirm_password);

            // Getting the original name of the file and renaming it.
            $fileName = time() . '_' . $request->file('profile_picx')->getClientOriginalName();

            // Moving the file into a folder name "uploaded_files" inside the "public" folder of the laravel app.
            $request->file('profile_picx')->move(public_path('uploaded_files'), $fileName);

            // Updating the new_user array with the new name of the file
            $new_user['profile_picx'] = $fileName;

            $save_db = User::create($new_user);

            if ($save_db) {
                return "New Contact Added";
            }
        }

        return view('register');
    }

    // Handles login from reactjs
    public function loginReact(Request $request)
    {
        $inputed_email = $request->email;
        $inputed_password = $request->password;

        $user_details = DB::table('users')->where('email', $inputed_email)->first();
        $login_attempt = Auth::attempt(['email' => $inputed_email, 'password' => $inputed_password]);
        $token = Str::uuid()->toString();

        if ($login_attempt) {
            return response()->json([
                'status' => 'success',
                'token' => $token,
                'user' => $user_details
            ]);
        } else {
            return response()->json([
                'status' => 'failed',
                'msg' => "Name and Email Do Not Match"
            ]);
        }
    }

    // Handles the contact form in our React Project
    public function contactReact(Request $request)
    {

        $incoming_data = $request->all();

        $save_db = Contact::create($incoming_data);

        if ($save_db) {
            return response()->json([
                'status' => 'success',
                'msg' => "Your message has been sent. Our Admin will get back to you soon!"
            ]);
        }
    }

    // Handle the faq form in our React Project
    public function faqReact(Request $request)
    {

        $incoming_data = $request->all();

        $save_db = Faq::create($incoming_data);

        if ($save_db) {
            return response()->json([
                'status' => 'success',
                'msg' => "Your Question Has Been Sent. Our Admin will get back to you soon!"
            ]);
        }
    }

    // Get all faqs and send to the react app so it can be displayed on the page.
    public function getAllFaqsReact()
    {

        $all_faqs = Faq::all();

        return $all_faqs;
    }

    // Get four products and four blogs to send to our react app to be used on the blog page
    public function blogSubContent()
    {
        $adProducts = DB::table('products')->whereBetween('id', [1, 6])->paginate(4);
        $offerProducts = DB::table('products')->whereBetween('id', [8, 14])->paginate(4);
        $popular_blogs = DB::table('blogs')->whereBetween('id', [2, 6])->paginate(4);
        $recent_blogs = DB::table('blogs')->orderBy('id', 'desc')->paginate(4);

        return response()->json([
            'adProducts' => $adProducts,
            'popular_blogs' => $popular_blogs,
            'recent_blogs' => $recent_blogs,
            'offer_products' => $offerProducts
        ]);
    }

    // Add comment to a single blog
    public function addBlogComment(Request $request)
    {

        $new_comment['blog_id'] = $request[1]['blog_id'];
        $new_comment['name'] = $request[0]['name'];
        $new_comment['email'] = $request[0]['email'];
        $new_comment['comment'] = $request[0]['comment'];

        $create_comment = BlogComment::create($new_comment);

        if ($create_comment) {
            return response()->json([
                'status' => 'success',
                'message' => 'Your Comment Has Been Published',
                'comment' => $new_comment
            ]);
        }
    }

    // Get all comments for each blog and send down to the react single blog page.
    public function getBlogComments($blog_id)
    {
        $blog_comments = DB::table('blog_comments')->where('blog_id', $blog_id)->get();

        return $blog_comments;
    }

    // Adding the items bought to database
    public function addItemsBought(Request $req)
    {

        // Put the order details in a 'new_order' array
        $new_order['user_id'] = $req['user_id'];
        $new_order['product_id'] = $req['product_id'];
        $new_order['product_price'] = $req['product_price'];
        $new_order['product_qty'] = $req['product_qty'];
        $new_order['product_total'] = $req['product_total'];
        $new_order['reference_num'] = $req['reference_num'];
        $new_order['transaction_num'] = $req['transaction_num'];
        $new_order['product_status'] = $req['status'];

        // Now save into the database
        $create_order = Orders::create($new_order);

        // Put the customer details in a 'customer_details' array
        $customer_details['product_id'] = $req['product_id'];
        $customer_details['customer_first_name'] = $req['first_name'];
        $customer_details['customer_last_name'] = $req['last_name'];
        $customer_details['customer_phone_num'] = $req['phone_number'];
        $customer_details['customer_email'] = $req['email'];
        $customer_details['customer_address'] = $req['address'];
        $customer_details['customer_city'] = $req['city'];
        $customer_details['customer_country'] = $req['country'];
        $customer_details['customer_postal_code'] = $req['postal_code'];

        // Now save into the database
        $save_customer_details = OrderDetails::create($customer_details);

        if ($create_order && $save_customer_details) {
            return response()->json([
                'order' => $new_order,
                'orderDetails' => $customer_details,
                'status' => 'success'
            ]);
        }
    }



    // CONTACT APP CONTACT APP CONTACT APP 
    // Creating contact from your react add form.(Contact App)
    public function createContact(Request $req)
    {

        $save_to_db = ContactUser::create($req->all());

        if ($save_to_db) {
            return response()->json([
                'status' => "success",
                'data' => $save_to_db,
                'message' => 'A New Contact Has Been Added'
            ]);
        }
    }

    // Creating a function to get all contacts from the database to send to our React App(Contact App)
    public function getAllContacts()
    {
        $all_contacts = ContactUser::all();

        return $all_contacts;
    }

    // Editing contact from your react form(Contact App)
    public function editContact(Request $req, $user_id)
    {
        $contact_to_edit = ContactUser::find($user_id);

        $contact_to_edit->name = $req->name;
        $contact_to_edit->email = $req->email;
        $contact_to_edit->phone_number = $req->phone_number;
        $contact_to_edit->profile_picx = $req->profile_picx;
        $contact_to_edit->occupation = $req->occupation;
        $contact_to_edit->location = $req->location;
        $contact_to_edit->save();

        if ($contact_to_edit->save()) {
            return response()->json([
                'status' => "success",
                'message' => 'Contact was successfully updated.'
            ]);
        } else {
            return response()->json([
                'status' => "failed",
                'message' => 'There was an issue editing the contact.'
            ]);
        }
    }

    // Deleting contact from your react(Contact App)
    public function deleteContact($user_id)
    {
        $contact_to_delete = ContactUser::find($user_id);
        $delete_now = $contact_to_delete->delete();

        if ($delete_now) {
            return response()->json([
                'status' => 'success',
                'message' => "Contact successfully deleted."
            ]);
        }
    }
}
