 
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
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="body search">
                            <div class="input-group mb-0">
                                <input type="text" class="form-control" placeholder="Search...">
                                <div class="input-group-append">
                                    <span class="input-group-text" id="basic-addon2"><i class="zmdi zmdi-search"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>                    
                    <div class="card">
                        <div class="header">
                            <h2><strong>Categories</strong></h2>                        
                        </div>
                        <div class="body">
                            <ul class="list-unstyled mb-0 widget-categories">
                                <li><a href="javascript:void(0);">Business Report</a></li>
                                <li><a href="javascript:void(0);">Business Growth</a></li>
                                <li><a href="javascript:void(0);">Business Strategy</a></li>
                                <li><a href="javascript:void(0);">Financial Advise</a></li>
                                <li><a href="javascript:void(0);">Creative Idea</a></li>
                                <li><a href="javascript:void(0);">Marketing</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2><strong>Recent</strong> Posts</h2>
                        </div>
                        <div class="body">
                            <ul class="list-unstyled mb-0 widget-recentpost">
                                <li>
                                    <a href="blog-details.html"><img src="http://classlink.com/assets/images/image-gallery/1.jpg" alt="blog thumbnail"></a>
                                    <div class="recentpost-content">
                                        <a href="blog-details.html">Fundamental analysis services</a>
                                        <span>August 01, 2018</span>
                                    </div>
                                </li>
                                <li>
                                    <a href="blog-details.html"><img src="http://classlink.com/assets/images/image-gallery/2.jpg" alt="blog thumbnail"></a>
                                    <div class="recentpost-content">
                                        <a href="blog-details.html">Steps to a successful Business</a>
                                        <span>November 01, 2018</span>
                                    </div>
                                </li>
                                <li>
                                    <a href="blog-details.html"><img src="http://classlink.com/assets/images/image-gallery/3.jpg" alt="blog thumbnail"></a>
                                    <div class="recentpost-content">
                                        <a href="#blog-details.html">Development Progress Conference</a>
                                        <span>December 01, 2018</span>
                                    </div>
                                </li>
                                <li>
                                    <a href="blog-details.html"><img src="http://classlink.com/assets/images/image-gallery/12.jpg" alt="blog thumbnail"></a>
                                    <div class="recentpost-content">
                                        <a href="blog-details.html">Steps to a successful Business</a>
                                        <span>December 15, 2018</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="card">
                        <div class="header">
                            <h2><strong>Tag</strong> Clouds</h2>                        
                        </div>
                        <div class="body">
                            <ul class="list-unstyled mb-0 tag-clouds">
                                <li><a href="javascript:void(0);" class="tag badge badge-default">Design</a></li>
                                <li><a href="javascript:void(0);" class="tag badge badge-success">Project</a></li>
                                <li><a href="javascript:void(0);" class="tag badge badge-info">Creative UX</a></li>
                                <li><a href="javascript:void(0);" class="tag badge badge-success">Wordpress</a></li>
                                <li><a href="javascript:void(0);" class="tag badge badge-warning">HTML5</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2><strong>Instagram</strong> Post</h2>                        
                        </div>
                        <div class="body">
                            <ul class="list-unstyled mb-0 instagram-plugin">
                                <li><a href="javascript:void(0);"><img src="http://classlink.com/assets/images/blog/05-img.jpg" alt="image description"></a></li>
                                <li><a href="javascript:void(0);"><img src="http://classlink.com/assets/images/blog/06-img.jpg" alt="image description"></a></li>
                                <li><a href="javascript:void(0);"><img src="http://classlink.com/assets/images/blog/07-img.jpg" alt="image description"></a></li>
                                <li><a href="javascript:void(0);"><img src="http://classlink.com/assets/images/blog/08-img.jpg" alt="image description"></a></li>
                                <li><a href="javascript:void(0);"><img src="http://classlink.com/assets/images/blog/09-img.jpg" alt="image description"></a></li>
                                <li><a href="javascript:void(0);"><img src="http://classlink.com/assets/images/blog/10-img.jpg" alt="image description"></a></li>
                                <li><a href="javascript:void(0);"><img src="http://classlink.com/assets/images/blog/11-img.jpg" alt="image description"></a></li>
                                <li><a href="javascript:void(0);"><img src="http://classlink.com/assets/images/blog/12-img.jpg" alt="image description"></a></li>
                                <li><a href="javascript:void(0);"><img src="http://classlink.com/assets/images/blog/13-img.jpg" alt="image description"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2><strong>Email</strong> Newsletter</h2>
                        </div>
                        <div class="body newsletter">                            
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Enter Email">
                                <div class="input-group-append">
                                    <span class="input-group-text" id="basic-addon2"><i class="zmdi zmdi-mail-send"></i></span>
                                </div>
                            </div>
                            <small>Get our products/news earlier than others, let’s get in touch.</small>
                        </div>
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

