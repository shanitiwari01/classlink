<?php include $_SERVER['DOCUMENT_ROOT'].'/user/layout/header.php'; ?>
<head>
    <link rel="stylesheet" href="http://classlink.com/assets/plugin/summernote.css"/>
    <link rel="stylesheet" href="http://classlink.com/assets/css/bootstrap-select.css" />
    <link rel="stylesheet" href="http://classlink.com/assets/css/dropify.min.css" />

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

 

<section class="content blog-page">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Announcement</h2>
                    
                    <button class="btn btn-primary btn-icon mobile_menu" type="button"><i class="zmdi zmdi-sort-amount-desc"></i></button>
                </div>
                <div class="col-lg-5 col-md-6 col-sm-12">                
                    <button class="btn btn-primary btn-icon float-right right_icon_toggle_btn" type="button"><i class="zmdi zmdi-arrow-right"></i></button>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 col-md-10 col-sm-12 m-auto">
                    <form action="http://classlink.com/user/Announcement/controller/announce.php" method="post" id="postdata" enctype="multipart/form-data">
                    <div class="card">
                        <div class="body">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter Blog title" name="title" />
                            </div>
                           
                        </div>
                    </div>
                    <div class="card">
                        <div class="body">
                        <div class="form-group">
                        <textarea name="announce_discription" class="form-control" placeholder="Enter Blog Discription . . ."></textarea>
                        </div>
                            <div>
                            <input type="file"  name="picture" class="dropify">
                            </div>
                            <button type="button" class="btn btn-info waves-effect m-t-20" onClick="post();">ANNOUNCEMENT</button>
                        </div>
                    </div>
                            <!-------script ------->
                            <script>
                                    function post(){
                                      document.getElementById('postdata').submit();
                                   }
                                    </script>
                                    <!-----script--------->

                </form>
                </div>            
            </div>
        </div>
    </div>
</section>
<!-- Jquery Core Js --> 
<script src="http://classlink.com/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="http://classlink.com/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="http://classlink.com/assets/bundles/dropzone.js"></script> <!-- Dropzone Plugin Js -->




<script src="http://classlink.com/assets/bundles/dropify.min.js"></script> <!-- Dropzone Plugin Js -->
<script src="http://classlink.com/assets/bundles/dropify.js"></script> <!-- Dropzone Plugin Js -->



<script src="http://classlink.com/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js -->
<script src="http://classlink.com/assets/bundles/summernote.js"></script>
</body>

</html>