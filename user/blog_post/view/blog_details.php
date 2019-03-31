 
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

<!-- Right Sidebar -->
<aside id="rightsidebar" class="right-sidebar">
    <ul class="nav nav-tabs sm">
        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#setting"><i class="zmdi zmdi-settings zmdi-hc-spin"></i></a></li>
        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#chat"><i class="zmdi zmdi-comments"></i></a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="setting">
            <div class="slim_scroll">
                <div class="card">
                    <h6>Theme Option</h6>
                    <div class="light_dark">
                        <div class="radio">
                            <input type="radio" name="radio1" id="lighttheme" value="light" checked="">
                            <label for="lighttheme">Light Mode</label>
                        </div>
                        <div class="radio mb-0">
                            <input type="radio" name="radio1" id="darktheme" value="dark">
                            <label for="darktheme">Dark Mode</label>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <h6>Color Skins</h6>
                    <ul class="choose-skin list-unstyled">
                        <li data-theme="purple"><div class="purple"></div></li>                   
                        <li data-theme="blue"><div class="blue"></div></li>
                        <li data-theme="cyan"><div class="cyan"></div></li>
                        <li data-theme="green"><div class="green"></div></li>
                        <li data-theme="orange"><div class="orange"></div></li>
                        <li data-theme="blush" class="active"><div class="blush"></div></li>
                    </ul>                    
                </div>
                <div class="card">
                    <h6>General Settings</h6>
                    <ul class="setting-list list-unstyled">
                        <li>
                            <div class="checkbox">
                                <input id="checkbox1" type="checkbox">
                                <label for="checkbox1">Report Panel Usage</label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox">
                                <input id="checkbox2" type="checkbox" checked="">
                                <label for="checkbox2">Email Redirect</label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox">
                                <input id="checkbox3" type="checkbox" checked="">
                                <label for="checkbox3">Notifications</label>
                            </div>                        
                        </li>
                        <li>
                            <div class="checkbox">
                                <input id="checkbox4" type="checkbox">
                                <label for="checkbox4">Auto Updates</label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox">
                                <input id="checkbox5" type="checkbox" checked="">
                                <label for="checkbox5">Offline</label>
                            </div>
                        </li>
                        <li>
                            <div class="checkbox">
                                <input id="checkbox6" type="checkbox" checked="">
                                <label for="checkbox6">Location Permission</label>
                            </div>
                        </li>
                    </ul>
                </div>                
            </div>                
        </div>       
        <div class="tab-pane right_chat" id="chat">
            <div class="slim_scroll">
                <div class="card">
                    <ul class="list-unstyled">
                        <li class="online">
                            <a href="javascript:void(0);">
                                <div class="media">
                                    <img class="media-object " src="http://classlink.com/assets/images/xs/avatar4.jpg" alt="">
                                    <div class="media-body">
                                        <span class="name">Sophia <small class="float-right">11:00AM</small></span>
                                        <span class="message">There are many variations of passages of Lorem Ipsum available</span>
                                        <span class="badge badge-outline status"></span>
                                    </div>
                                </div>
                            </a>                            
                        </li>
                        <li class="online">
                            <a href="javascript:void(0);">
                                <div class="media">
                                    <img class="media-object " src="http://classlink.com/assets/images/xs/avatar5.jpg" alt="">
                                    <div class="media-body">
                                        <span class="name">Grayson <small class="float-right">11:30AM</small></span>
                                        <span class="message">All the Lorem Ipsum generators on the</span>
                                        <span class="badge badge-outline status"></span>
                                    </div>
                                </div>
                            </a>                            
                        </li>
                        <li class="offline">
                            <a href="javascript:void(0);">
                                <div class="media">
                                    <img class="media-object " src="http://classlink.com/assets/images/xs/avatar2.jpg" alt="">
                                    <div class="media-body">
                                        <span class="name">Isabella <small class="float-right">11:31AM</small></span>
                                        <span class="message">Contrary to popular belief, Lorem Ipsum</span>
                                        <span class="badge badge-outline status"></span>
                                    </div>
                                </div>
                            </a>                            
                        </li>
                        <li class="me">
                            <a href="javascript:void(0);">
                                <div class="media">
                                    <img class="media-object " src="http://classlink.com/assets/images/xs/avatar1.jpg" alt="">
                                    <div class="media-body">
                                        <span class="name">John <small class="float-right">05:00PM</small></span>
                                        <span class="message">It is a long established fact that a reader</span>
                                        <span class="badge badge-outline status"></span>
                                    </div>
                                </div>
                            </a>                            
                        </li>
                        <li class="online">
                            <a href="javascript:void(0);">
                                <div class="media">
                                    <img class="media-object " src="http://classlink.com/assets/images/xs/avatar3.jpg" alt="">
                                    <div class="media-body">
                                        <span class="name">Alexander <small class="float-right">06:08PM</small></span>
                                        <span class="message">Richard McClintock, a Latin professor</span>
                                        <span class="badge badge-outline status"></span>
                                    </div>
                                </div>
                            </a>                            
                        </li>                        
                    </ul>
                </div>
            </div>
        </div>
    </div>
</aside>


<?php 

include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');

$post_id=$_GET['post_id'];

$qry=" SELECT * FROM `post` WHERE `post_id`= '$post_id'";
$run=mysqli_query($con,$qry);
$result = mysqli_fetch_array($run);


     ?>


<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Blog Detail</h2>
                    
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="card">
                        <div class="blogitem mb-5">
                            <div class="blogitem-image">
                                <a href="blog-details.html"><img src="http://classlink.com/assets/images/post_pic/<?php echo $result['image']; ?>" alt="blog image"></a>
                                <span class="blogitem-date">Monday, December 15, 2018</span>
                            </div>
                            <div class="blogitem-content">
                                <div class="blogitem-header">
                                    <div class="blogitem-meta">
                                        <span><i class="zmdi zmdi-account"></i>By <a href="javascript:void(0);">Michael</a></span>
                                        <span><i class="zmdi zmdi-comments"></i><a href="blog-details.html">Comments(3)</a></span>
                                    </div>
                                    <div class="blogitem-share">
                                        <ul class="list-unstyled mb-0">
                                            <li><a href="javascript:void(0);"><i class="zmdi zmdi-facebook-box"></i></a></li>
                                            <li><a href="javascript:void(0);"><i class="zmdi zmdi-instagram"></i></a></li>
                                            <li><a href="javascript:void(0);"><i class="zmdi zmdi-twitter-box"></i></a></li>
                                            <li><a href="javascript:void(0);"><i class="zmdi zmdi-linkedin-box"></i></a></li>
                                        </ul>
                                    </div>
                                </div>

                               

                                 
                                <h5><a href="blog-details.html"><?php echo $result['title']; ?></a></h5>
                                <p><?php  echo $result['discription'];  ?></p>
                                <blockquote class="blockquote">
                                    <p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Aliquam vulputate tortor nec commodo ultricies lectus nisl facilisis enim trpis.</p>
                                    <footer>by <a href="blog.html">ThemeMakker</a></footer>
                                </blockquote>
                                <p>The point of using Lorem of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incdidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullaco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaeca cupidatat non proident.</p>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2><strong>Comments</strong> (2)</h2>
                        </div>
                        <div class="">
                            <ul class="comment-reply list-unstyled">
                                <li>
                                    <div class="icon-box"><img class="img-fluid img-thumbnail" src="http://classlink.com/assets/images/sm/avatar2.jpg" alt="Awesome Image"></div>
                                    <div class="text-box">
                                        <h5>Kareem Todd</h5>
                                        <span class="comment-date">Wednesday, October 17, 2018 at 4:00PM.</span>
                                        <a href="javascript:void(0);" class="replybutton"><i class="zmdi zmdi-mail-reply-all"></i> Reply</a>
                                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour.</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon-box"><img class="img-fluid img-thumbnail" src="http://classlink.com/assets/images/sm/avatar1.jpg" alt="Awesome Image"></div>
                                    <div class="text-box">
                                        <h5>Stillnot david</h5>
                                        <span class="comment-date">Wednesday, October 17, 2018 at 4:00PM.</span>
                                        <a href="javascript:void(0);" class="replybutton"><i class="zmdi zmdi-mail-reply-all"></i> Reply</a>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.</p>
                                    </div>
                                </li>
                            </ul>                                        
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h2><strong>Leave</strong> a Comment</h2>
                        </div>
                        <div class="">
                            <small>Your email address will not be published. Required fields are marked*</small>
                            <form class="row comment-form mt-2" action="http://classlink.com/user/blog_post/controller/comment.php" method="post" id="commentdata">
                            <div class="col-sm-6">
                                    <div class="form-group">
                                        <input type="hidden" class="form-control" value="<?php echo $result['post_id']; ?>" name="post_id">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <textarea rows="4" class="form-control no-resize" name="com" placeholder="Please type what you want..."></textarea>
                                    </div>
                                    <button type="submit" class="btn btn btn-primary" onClick="comment();">SUBMIT</button>
                                </div>
                                 <!-------script ------->
                            <script>
                                    function comment(){
                                      document.getElementById('commentdata').submit();
                                   }
                                    </script>
                                    <!-----script--------->


                            </form>
                        </div>
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
                                    <a href="blog-details.html"><img src="http://classlink.com/assets/images/post_pic/1.jpg" alt="blog thumbnail"></a>
                                    <div class="recentpost-content">
                                        <a href="blog-details.html">Fundamental analysis services</a>
                                        <span>August 01, 2018</span>
                                    </div>
                                </li>
                                <li>
                                    <a href="blog-details.html"><img src="http://classlink.com/assets/images/post_pic/2.jpg" alt="blog thumbnail"></a>
                                    <div class="recentpost-content">
                                        <a href="blog-details.html">Steps to a successful Business</a>
                                        <span>November 01, 2018</span>
                                    </div>
                                </li>
                                <li>
                                    <a href="blog-details.html"><img src="http://classlink.com/assets/images/post_pic/3.jpg" alt="blog thumbnail"></a>
                                    <div class="recentpost-content">
                                        <a href="#blog-details.html">Development Progress Conference</a>
                                        <span>December 01, 2018</span>
                                    </div>
                                </li>
                                <li>
                                    <a href="blog-details.html"><img src="http://classlink.com/assets/images/post_pic/12.jpg" alt="blog thumbnail"></a>
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

