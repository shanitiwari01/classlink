<?php include $_SERVER['DOCUMENT_ROOT'].'/user/layout/header.php'; ?>

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

 

<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>TEACHER LIST</h2>
                    <a href="http://classlink.com/user/add/view/add_teacher.php" class="btn btn-primary ">Add Teachers</a>
            </div>
            
        </div>

        <div class="container-fluid">
       
            <!-- Basic Table -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="card">
                        <div class="header">
                        </div>
                        <div class="body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>TEACHER ID</th>  
                                        <th>TEACHER NAME</th>
                                        <th>EMAIL ADDRESS</th>
                                        <th>COURSE</th>
                                    

                                    </tr>
                                </thead>
                                <?php
                            
                                include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
                                  $qry="SELECT * FROM `m_user` WHERE `user_role_id`= 2";
                                  $run=mysqli_query($con,$qry);
                                  while ($result = mysqli_fetch_array($run)) {
                                      
                                      ?>

                                
                                <tbody>
                                    <tr>
                                        <td><?php echo $result['user_id']; ?></td>
                                        <td><?php echo $result['user_name']; ?></td>
                                        <td><?php echo $result['user_email']; ?></td>
                                        <td><?php echo $result['user_course']; ?></td>
                                        
                                    </tr>
                                    <?php
                                  }
                                  ?>
                                </tbody>
                            </table>
                        </div>
                        </div>
                      
                        </div>
                    </div>
                </div>
            </div>

                        

          
            <!-- #END# Hover Rows --> 
        </div>
    </div>
</section>

<!-- Jquery Core Js --> 
<script src="http://classlink.com/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="http://classlink.com/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="http://classlink.com/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
</body>


</html>