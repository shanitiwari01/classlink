<?php
include $_SERVER['DOCUMENT_ROOT'].'/user/layout/header.php'; ?>
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img class="zmdi-hc-spin" src="http://classlink.com/assets/images/loader.svg" width="48" height="48" alt="Aero"></div>
        <p>Please wait...</p>
    </div>
</div>

<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<?php include $_SERVER['DOCUMENT_ROOT'].'/user/layout/footer.php';  ?>
<section class="content">
<div class="body_scroll">
<div class="container-fluid">
            <div class="row clearfix">
            <?php
                        include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
                        
                        $user_id=$_SESSION['user_id'];
                        $qry="SELECT * FROM `vfriends` WHERE `sender_user_id`='$user_id' AND `friend_status`='P'";
                        $result=mysqli_query($con,$qry);
                        while ($data=mysqli_fetch_assoc($result)) {
                        ?>

                        <div class="col-lg-4 col-md-12">
                            <div class="card mcard_3">
                                <div class="body">
                                    <a href="http://classlink.com/user/user_profile/view/user_info.php?id=<?php $data['user_id']; ?>"><img style="height: 90px;width: 90px;" 
                                    src="http://classlink.com/assets/images/user_signup/
                                    <?php echo $data['receiver_user_image']; ?>" 
                                    class="rounded-circle shadow " alt="profile-image"></a>
                                    <h4 class="m-t-10"><?php echo $data['receiver_user_name']; ?></h4>                            
                                    <div class="row">
                                        
                                        <div class="m-auto">
                                        
                                       <?php  
                                       
                                       if ($data['receiver_user_role_id']==1) {
                                           echo "Principle";
                                       }
                                       elseif($data['receiver_user_role_id']==2)
                                       {
                                           echo "Teacher";
                                       }
                                       elseif($data['receiver_user_role_id']==3)
                                       {
                                           echo "Student";
                                       }
                                       
                                       
                                       ?>
               
                                                                          
                                        </div>                           
                                    </div>
                                </div>
                            </div>                   
                        </div>
                   
<?php   } ?> 


             
</div> 
</div>




</section>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<!-- Jquery Core Js --> 
<script src="http://classlink.com/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="http://classlink.com/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<!-- <script src="http://classlink.com/assets/bundles/jquery-3.3.1.min.js"></script> -->
<script src="http://classlink.com/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 