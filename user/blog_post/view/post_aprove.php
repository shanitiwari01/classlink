 
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

<?php include $_SERVER['DOCUMENT_ROOT'].'/user/layout/footer.php';  ?>

 



<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Post List</h2>
            </div>
        </div>
        
        <div class="container-fluid">
            <!-- Basic Table -->
            <div class="row clearfix">
                <div class="col-lg-10 col-md-10 col-sm-12 m-auto">
                
                    <div class="card">
                        <div class="header">
                    </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                              
                                            <th>POST TITLE</th>
                                            <th>POST IMAGE</th>
                                            <th>APPROVED</th>
                                            

                                        </tr>
                                    </thead>
                                    <?php
                                
                                    include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
                                      $qry="SELECT * FROM `post` WHERE `status`='P'";
                                      $run=mysqli_query($con,$qry);
                                      while ($result = mysqli_fetch_array($run)) {
                                          
                                          ?>

                                    
                                    <tbody>
                                        <tr>
                                            <td><?php echo $result['title']; ?></td>
                                            <td><img src="http://classlink.com/assets/images/post_pic/<?php echo $result['image']; ?>" width="50%" height="35%" ></td>
                                            <td><a href='http://classlink.com/user/blog_post/controller/post_approved.php?post_id=<?php echo $result['post_id'];?>' class='btn btn-danger'>Approved</a></td>
                                           
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

