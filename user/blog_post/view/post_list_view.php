 
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

<section class="content blog-page">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Blog List</h2>
                    <a href="http://classlink.com/user/blog_post/blog_post.php" class="btn btn-primary">Add Posts</a>
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="card">

                    <?php
                    include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
                    $qry=" SELECT * FROM `post` WHERE `status`= 'Y' ";
                    $run=mysqli_query($con,$qry);
                    while ($result = mysqli_fetch_array($run)) {
                    
                        $date = date_create($result['created_at']);

                    ?>


                        <div class="blogitem mb-5">
                            <div class="blogitem-image">
                    <a href="http://classlink.com/user/blog_post/view/blog_details.php?post_id=<?php echo $result['post_id']; ?>"><?php if(!empty($result['image'])){ ?><img src="http://classlink.com/assets/images/post_pic/<?php echo $result['image']; ?>" alt="blog image"><?php } ?></a>
                                <span class="blogitem-date"><?php echo date_format($date, 'g:ia \o\n l jS F Y');  ?></span>
                            </div>
                            <div class="blogitem-content">
                                <h5><a href="http://classlink.com/user/blog_post/view/blog_details.php?post_id=<?php echo $result['post_id']; ?>"><?php  echo $result['title']; ?></a></h5>
                                <p><?php echo $result['discription']; ?></p>
                                <a href="http://classlink.com/user/blog_post/view/blog_details.php?post_id=<?php echo $result['post_id']; ?>" class="btn btn-info">Read More</a>
                            </div>
                        </div>
                       <?php
                       }
                       ?>
                        
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
</section>









<!-- Jquery Core Js --> 
<script src="http://classlink.com/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="http://classlink.com/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="http://classlink.com/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
</body>


</html>

