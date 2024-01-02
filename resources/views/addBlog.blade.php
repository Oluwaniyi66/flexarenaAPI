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

    <link rel="stylesheet" href="css/style2.css"> 
    <title>flex Store || Add Blog</title>
</head>
<body>
    
    <div id='create-product'>
            <div class='container'>
                <div class='add-product'>
                    <form action="" method="POST" enctype="multipart/form-data">
                        @csrf 
                        <div class='productform-header'>
                            <h2>Add Blog</h2>
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
                                <label>Blog Title</label>
                                <input type="text" name="title" />
                                @error('title')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <div class='form-group-inner'>
                                <label>Author Name</label>
                                <input type="text" name="author" />
                                @error('author')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class='form-group-inner'>
                                <label>Blog Image</label>
                                <input type="file" name="image"  />
                                @error('image')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <div class='form-group-inner'>
                                <label>Blog Category</label>
                                <select name='category'>
                                    <option value="music">Music</option>
                                    <option value="entertainment">Entertainment</option>
                                    <option value="dance">Dance</option>
                                    <option value="comedy">Comedy</option>
                                    <option value="sport">Sport</option>
                                    <option value="politics">Politics</option>
                                    <option value="religion">Religion</option>
                                </select>
                                @error('category')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class='form-group-inner'>
                                <label>Blog Content1</label>
                                <textarea name="content1"></textarea>
                                @error('content1')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <div class='form-group-inner'>
                                <label>Blog Content2</label>
                                <textarea name="content2"></textarea>
                                @error('content2')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <div class='form-group-inner'>
                                <label>Blog Content3</label>
                                <textarea name="content3"></textarea>
                                @error('content3')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class='form-group'>
                            <div class='form-group-inner'>
                                <label>Blog Image1/Video1</label>
                                <input type="file" name="img1_vid1"/>
                                @error('img1_vid1')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                            <div class='form-group-inner'>
                                <label>Blog Image2/Video2</label>
                                <input type="file" name="img2_vid2"/>
                                @error('img2_vid2')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group">
                            <div class='form-group-inner'>
                                <label>video URL</label>
                                <input type="text" name="vid_url"/>
                                @error('vid_url')
                                <div class="alert alert-danger">
                                    {{ $message }}
                                </div>
                                @enderror
                            </div>
                        </div>
                        <div class='product-btn'>
                            <button type="submit">Add Blog</button>
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
