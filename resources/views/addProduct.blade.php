<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap Link  -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Font Styles  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Parisienne">

    <!-- Font Awesome Link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">    
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />

    <link rel="stylesheet" href="css/style.css"> 
    <title>flex Store || Add Product</title>
</head>
<body>
    
    <div id='create-product'>
            <div class='container'>
                <div class='add-product'>
                    <form action="/submit_form" method="POST" enctype="multipart/form-data">
                        @csrf 
                        <div class='productform-header'>
                            <h2>Add Product</h2>
                        </div>
                        <div class="form-message">
                            @if ($message = Session::get('success'))
                                <div class="alert alert-success">
                                    <strong>{{ $message }}</strong>
                                </div>
                            @endif
                        </div>
                        <div class='form-group'> 
                            <div class='form-group-inner'>
                                <label>Product Name</label>
                                <input type="text" name="product_name" />
                                @error('product_name')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <div class='form-group-inner'>
                                <label>Product Price</label>
                                <input type="text" name="product_price" />
                                @error('product_price')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <div class='form-group-inner'>
                                <label>Product Discount</label>
                                <input type="text" name="product_discount" />
                                @error('product_discount')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class='form-group-inner'>
                                <label>Product Image</label>
                                <input type="file" name="product_image"  />
                                @error('product_image')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <div class='form-group-inner'>
                                <label>Product Category</label>
                                <select name='product_category'>
                                    <option value="electronics">Electronics</option>
                                    <option value="fashion">Fashion</option>
                                    <option value="computer_and_accessories">Computers & Accessories</option>
                                    <option value="phones_and_tablets">Phones & Tablets</option>
                                    <option value="home_and_kitchen">Home & Kitchen</option>
                                    <option value="groceries">Groceries</option>
                                    <option value="musical_instruments">Musical Instruments</option>
                                    <option value="home_and_offices">Home & Offices</option>
                                    <option value="sports_and_outdoors">Sports & Outdoors</option>
                                    <option value="agriculture_and_food">Agriculture & Food</option>
                                    <option value="health_and_beauty">Health & Beauty</option>
                                    <option value="toys_and_games">Toys & Games</option>
                                </select>
                                @error('product_category')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class='form-group-inner'>
                                <label>Long Description</label>
                                <textarea name="product_long_desc"></textarea>
                                @error('product_long_desc')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <div class='form-group-inner'>
                                <label>Short Description</label>
                                <textarea name="product_short_desc"></textarea>
                                @error('product_short_desc')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class='form-text'>
                            <h4>Alternative Images/Video.</h4>
                            <p>
                                <b>Note: </b> It's not compulsory your product must 
                                              have alternative images or videos. Only include them 
                                              if the product have.
                            </p>
                        </div>
                        <div class='form-group'>
                            <div class='form-group-inner'>
                                <label>Product Alt Img1</label>
                                <input type="file"name="product_alt_image1" />
                                @error('product_alt_image1')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <div class='form-group-inner'>
                                <label>Product Alt Img2</label>
                                <input type="file" name="product_alt_image2" />
                                @error('product_alt_image2')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class='form-group-inner'>
                                <label>Product Alt Img3</label>
                                <input type="file" name="product_alt_image3" />
                                @error('product_alt_image3')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <div class='form-group-inner'>
                                <label>Product Alt Video</label>
                                <input type="file" name="product_alt_video"/>
                                @error('product_alt_video')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class='product-btn'>
                            <button type="submit">Add Product</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
