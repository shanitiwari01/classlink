<!doctype html>
<html class="no-js " lang="en">

<!-- Mirrored from thememakker.com/templates/aero/html/sign-up.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 Jan 2019 16:16:43 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: Aero Bootstrap4 Admin :: Sign Up</title>
<!-- Favicon-->
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Custom Css -->
<link rel="stylesheet" href="http://classlink.com/assets/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="http://classlink.com/assets/css/style.min.css">
</head>

<body class="theme-blush">

<div class="authentication">    
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-sm-12">
            <?php
            include 'C:/xampp/htdocs/classlink/database/dbcon.php';
            $user_id=$_GET['id'];
            $m_user=" SELECT * FROM `m_user` WHERE `user_id`='$user_id'";
            $result=mysqli_query($con,$m_user);
            $run=mysqli_fetch_assoc($result);
            
            ?>
                <form class="card auth_form" action="http://classlink.com/user/controller/user_signup.php" method="post" enctype="multipart/form-data">
                    <div class="header">
                        <img class="logo" src="http://classlink.com/assets/images/logo.png" alt="" style="width:219px;" >
                        <h5>Sign Up</h5>
                        <span>Register a new membership</span>
                    </div>
                    <div class="body">
                        <div class="input-group mb-2">
                            <input type="text" class="form-control" value="<?php echo $run['user_name']; ?>" name="username">
                        </div>
                        <div class="input-group mb-2">
                            <input type="text" class="form-control" value="<?php echo $run['user_email']; ?>" name="email">
                            <div class="input-group-append">
                            </div>
                        </div>                        
                        <div class="input-group mb-2">
                            <input type="password" class="form-control" placeholder="Password" name="password">                         
                        </div>
                        <div class="form-group">
                        
                          <select class="form-control" id="sel1" placeholder="Select Your Course" name="course">
                          
                          <option>Select Your Course</option>
                          <option>M.B.S</option>
                          <option>M.Sci</option>
                          <option>MBA</option>
                          </select>
                          </div>
                        <div class="input-group mb-2">
                            <input type="file" class="form-control" placeholder="Picture" name="user_pic">                              
                        </div>
                        <div class="checkbox">
                            <input id="remember_me" type="checkbox">
                            <label for="remember_me">I read and agree to the <a href="javascript:void(0);">terms of usage</a></label>
                        </div>
                        <input type="hidden" name="id" value="<?php echo $run['user_id'] ;?>">
                        <button type="submit"  class="btn btn-primary btn-block waves-effect waves-light" name="usignup">SIGN UP</button>
                        <div class="signin_with mt-3">
                            <a class="link" href="sign-in.html">You already have a membership?</a>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-8 col-sm-12">
                <div class="card">
                    <img src="http://classlink.com/assets/images/signup.svg" alt="Sign Up" class="mt-5" />
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