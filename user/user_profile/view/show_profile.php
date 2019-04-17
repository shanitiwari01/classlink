<?php include $_SERVER['DOCUMENT_ROOT'].'/user/layout/header.php'; ?>
<head>
    <link rel="stylesheet" href="http://classlink.com/assets/plugin/summernote.css"/>
    <link rel="stylesheet" href="http://classlink.com/assets/css/bootstrap-select.css" />
    <link rel="stylesheet" href="http://classlink.com/assets/css/lightgallery.css" />
</head>
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img class="zmdi-hc-spin" src="http://classlink.com/assets/images/loader.svg" width="48" height="48" alt="Aero"></div>
        <p>Please wait...</p>
    </div>
</div>

<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<?php include $_SERVER['DOCUMENT_ROOT'].'/user/layout/footer.php'; ?>

<?php
 
 include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
 
 $user_id= $_SESSION['user']['user_id'];
 $qry="SELECT * FROM `m_user` WHERE `user_id`='$user_id'";  
 $run=mysqli_query($con,$qry);
 $result=mysqli_fetch_array($run);
 
?>

<section class="content">
    <div class="body_scroll">
        
        <div class="container-fluid">
            <div class="row clearfix">

                <div class="col-lg-10 col-md-12 m-auto">
                    <div class="card mcard_3">
                        <div class="body">
                            <img src="http://classlink.com/assets/images/user_signup/<?php echo $result['user_image']; ?>" class="rounded-circle shadow " alt="profile-image">
                            <h4 class="m-t-12"><?php echo $result['user_name']; ?></h4>                            
                            <div class="row m-t-5">
                                <div class="col-4 mt-4 ">
                                    
                                    <small class="text-muted">EMAIL</small>
                                    <p class="text-muted"><?php echo $result['user_email']; ?></p>

                                   
                                </div>
                                <div class="col-4 mt-4 ">
                                    
                                    <small class="text-muted">CONTACT</small>
                                    <p class="text-muted"><?php echo $result['user_contact']; ?></p>

                                   
                                </div>
                                <div class="col-4 mt-4 ">
                                    
                                    <small class="text-muted">DATE OF BIRTH</small>
                                    <p class="text-muted"><?php echo $result['user_dob']; ?></p>

                                   
                                </div>
                                                     
                            </div>
                        </div>
                    </div>
                                      
                </div>





<!-- Jquery Core Js --> 
<script src="http://classlink.com/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="http://classlink.com/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="http://classlink.com/assets/bundles/image-gallery.js"></script> <!-- Dropzone Plugin Js --> 
<script src="http://classlink.com/assets/bundles/dropzone.js"></script> <!-- Dropzone Plugin Js --> 
<script src="http://classlink.com/assets/bundles/lightgallery-all.min.js"></script> <!-- Dropzone Plugin Js --> 

<script src="http://classlink.com/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="http://classlink.com/assets/bundles/summernote.js"></script>
</body>

</html>