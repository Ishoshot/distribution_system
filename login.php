<?php require_once 'core/init.php';?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
   <link rel="shortcut icon" href="src/media/favico.ico" type="image/x-icon">
  <title>Admin || Login</title>

  <!-- Custom fonts-->
  <link href="src/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles-->
  <link href="src/css/admin.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">


    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">

            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                  </div>
<?php

  if (Input::exists()) {
  if (Token::check(Input::get('token'))) {
    
    $validate = new  Validate();
     $validation = $validate->check($_POST, array(
      'username' => array('required' => true),
      'password' => array('required' => true)
     ));

     if ($validation->passed()) {
      $user = new User();

      $remember = (Input::get('remember')==='on') ? true : false;
      $login = $user->login(Input::get('username'),  Input::get('password'), $remember);

        if($login){


    if ($user->hasPermission('admin')) {
      # code...

          Redirect::to('index.php');
     }else{
          Redirect::to('home.php');


     }



          }else{
          echo '<div class="alert alert-danger" role="alert">
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
            <span class="sr-only">Error:</span>
          Sorry, login failed </div>';
        }

     }else{
      foreach ($validation->errors() as $error) {
        # code...
          echo'<div class="alert alert-danger" role="alert">
  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span>' .
  $error . '</div>';
        
      }
     }

  }
}
?>

                  <form method="POST" action="" class="user">

                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" name="username"  placeholder="Enter Email Address...">
                    </div>
                    
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" name="password" placeholder="Password">
                    </div>
                    
                    <div class="form-group">
                        <input type="hidden" name="token" value="<?php echo Token::generate();?>">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" name="remember" class="custom-control-input" checked="checked">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    <input type="submit" value="Login" class="btn btn-primary btn-user btn-block">
                    </a>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="src/vendor/jquery/jquery.min.js"></script>
  <script src="src/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="src/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="src/js/admin.min.js"></script>

</body>

</html>
