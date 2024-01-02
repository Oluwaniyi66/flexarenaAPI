<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style3.css">
    <title>flex Store || Register</title>
</head>
<body>
    <div>
    <div class='container' id='register'>
            <form method="post" action="" enctype="multipart/form-data">
                @csrf 
                <div class='login-header'>
                    <h2>REGISTER</h2>
                    <p>Please fill in your details below:</p>
                </div>
                <div class='form-group'>
                    <input type='text' name='first_name' placeholder='First Name...'  />
                </div>
                <div class='form-group'>
                    <input type='text' name='last_name' placeholder='Last Name...' />
                </div>
                <div class='form-group'>
                    <input type='email' name='email' placeholder='Type your email...'  />
                </div>
                <div class='form-group'>
                    <input type='text' name='address' placeholder='Address...' />
                </div>
                <div class='form-group'>
                    <input type='tel' name='phone_number' placeholder='Phone Number'  />
                </div>
                <div class='form-group'>
                    <input type='file' name='profile_picx'  />
                </div>
                <div class='form-group'>
                    <input type='password' name='password' placeholder='Password' />
                </div>
                <div class='form-group'>
                    <input type='password' name='confirm_password' placeholder='Confirm Password' />
                </div>
                <div class='btn'>
                    <button type='submit'>Register</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
