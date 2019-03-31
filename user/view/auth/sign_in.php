<?php
session_start();
if (isset($_SESSION['user'])) {
    header('LOCATION:http://classlink.com/user/view/deshboard.php');
}

?>


<!doctype html>
<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Classlink.com ::</title>
<!-- Favicon-->
<link rel="icon" href="http://classlink.com/assets/images/logo.png" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet" href="http://classlink.com/assets/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="http://classlink.com/assets/css/style.min.css"> 
</head>

<body class="theme-blush">

<div class="authentication">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-sm-12">
                <form class="card auth_form" method="post" action="http://classlink.com/user/controller/authentication/auth_signin.php">
                    <div class="header">
                        <img class="logo" src="http://classlink.com/assets/images/logo.png" alt="" style="width:219px;">
                        <h5>Log in</h5>
                    </div>
                    <div class="body">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="email" placeholder="Username" require>
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="zmdi zmdi-account-circle"></i></span>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" name="password" placeholder="Password" required>
                            <div class="input-group-append">                                
                                <span class="input-group-text"><a href="forgot-password.html" class="forgot" title="Forgot Password"><i class="zmdi zmdi-lock"></i></a></span>
                            </div>                            
                        </div>
                        <div class="checkbox">
                            <input id="remember_me" type="checkbox">
                            <label for="remember_me">Remember Me</label>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block waves-effect waves-light">SIGN IN</button>                        
                       
                    </div>
                </form>
                
            </div>
            <div class="col-lg-8 col-sm-12">
                <div class="card">
                    <img src="http://classlink.com/assets/images/signin.svg" alt="Sign In"/>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Jquery Core Js -->
<script src="http://classlink.com/assets/bundles/libscripts.bundle.js"></script>
<script src="http://classlink.com/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js -->
</body>
</html>