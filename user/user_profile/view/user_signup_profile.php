<?php include $_SERVER['DOCUMENT_ROOT'].'/user/layout/header.php'; ?>
<head>
    <link rel="stylesheet" href="http://classlink.com/assets/plugin/summernote.css"/>
    <link rel="stylesheet" href="http://classlink.com/assets/css/bootstrap-select.css"/>
    
    <link rel="stylesheet" href="http://classlink.com/assets/css/dropify.min.css"/>
    <link rel="stylesheet" href="http://classlink.com/assets/css/bootstrap-tagsinput.css"/>
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

<!---------user Profile Details-------->

<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>User Details</h2>
                   
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>                                
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <!-- Basic Validation -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                    <?php
                    include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
                    
                    $user_id= $_SESSION['user']['user_id'];
                    $qry="SELECT * FROM `m_user` WHERE `user_id`='$user_id'";  
                    $run=mysqli_query($con,$qry);
                    $result=mysqli_fetch_array($run);
                    ?>
                        <div class="body">
                            <form action="http://classlink.com/user/user_profile/controller/user_profile_data.php" enctype="multipart/form-data" id="form_validation" id="postdata" method="POST">
                                <div class="form-group form-float">
                                    <input type="text" class="form-control" value="<?php echo $result['user_name'];  ?>" name="name" required>
                                </div>
                               
                                <div class="form-group form-float">
                                    <input type="email" class="form-control" value="<?php echo $result['user_email'];?>" name="email" required>
                                </div>
                                
                                    <div class="input-group masked-input">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-calendar"></i></span>
                                        </div>
                                        <input type="text" class="form-control date" name="dob" placeholder="00/00/0000" value="<?php echo $result['user_dob'];  ?>">
                                    </div><br>

                                    
                                    <div class="input-group masked-input mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="zmdi zmdi-phone"></i></span>
                                        </div>
                                        <input type="text" class="form-control mobile-phone-number" name="contact" placeholder="+00 (000) 000-00-00" value="<?php echo $result['user_contact'];  ?>">
                                    </div>
                                <div class="form-group">
                                    <div class="radio inlineblock m-r-20">
                                        <input type="radio" name="gender" id="male" class="with-gap " value="Male"  <?php if ($result['user_gender']== 'Male') {  echo "checked";  }  ?>>
                                        <label for="male">Male</label>
                                    </div>                                
                                    <div class="radio inlineblock">
                                        <input type="radio" name="gender" id="Female" class="with-gap" value="Female" <?php if ($result['user_gender']== 'Female') {  echo "checked";  }  ?>>
                                        <label for="Female">Female</label>
                                    </div>
                                </div>

                                <div class="form-group">
                            <input type="file"  name="picture" class=" form-control dropify" value="<?php echo $result['user_image'];  ?>" >
                            </div>
                                
                                <div class="form-group form-float">
                                    <textarea name="address" cols="30" rows="5" placeholder="Address..." class="form-control no-resize" value="<?php echo $result['user_address'];?>" required><?php echo $result['user_address'];?></textarea>
                                </div>
                               

                                  <!-------script ------->
                            <script>
                                    function submit(){
                                      document.getElementById('postdata').submit();
                                   }
                                    </script>
                                    <!-----script--------->
                               
                                <button class="btn btn-raised btn-primary waves-effect" onClick="submit();" type="submit" >SUBMIT</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

           
            
        </div>
    </div>
</section>

<!-------------------------end of user profile Details------------->
<script src="http://classlink.com/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="http://classlink.com/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="http://classlink.com/assets/bundles/dropzone.js"></script> <!-- Dropzone Plugin Js -->


<script src="http://classlink.com/assets/bundles/jquery.inputmask.bundle.js"></script> <!-- Dropzone Plugin Js -->

<script src="http://classlink.com/assets/bundles/dropify.min.js"></script> <!-- Dropzone Plugin Js -->
<script src="http://classlink.com/assets/bundles/dropify.js"></script> <!-- Dropzone Plugin Js -->
<script src="assets/plugins/jquery-inputmask/jquery.inputmask.bundle.js"></script> <!-- Input Mask Plugin Js --> 


<script src="http://classlink.com/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="http://classlink.com/assets/bundles/summernote.js"></script>
</body>

</html>

