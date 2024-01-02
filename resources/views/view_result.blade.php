<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>flex Store || View Product Results</title>
</head>
<body>
    
    <div class="container">
        <h2>Trending</h2>
        {{ $trending }}
        <hr><hr>
        <h2>Featured</h2>
        {{ $featured }}
        <hr><hr>
        <h2>New Arrival</h2>
        {{ $new_arrival }}
        <hr><hr>
        <h2>Special Offer</h2>
        {{ $special_offer }}
        <hr><hr>
        <h2>Best Seller</h2>
        {{ $best_seller }}
        <hr><hr>
        <h2>Top Category</h2>
        {{ $top_category }}
    </div>

</body>
</html>
