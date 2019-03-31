 
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
                    <h2>Update Course </h2>
            </div>
        </div>
        <div class="container-fluid">
            <!-- Basic Table -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="card">
                <div class="header"></div>
                <div class="body">
                <?php
                 include $_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php';
                 $course_id=$_GET['course_id'];
                 $qry="SELECT * FROM `user_course` WHERE `course_id`='$course_id'";
                  $run=mysqli_query($con,$qry);
                   $data=mysqli_fetch_assoc($run);

                 ?>
                <form  action="http://classlink.com/user/controller/course/update.php" method="post" id="update">

                    <div class="form-group">
                             <label for="cn">Course Name</label>
                             <input type="text" class="form-control" id="cname" name="cname" value="<?php echo $data['course_name']; ?>">
                           </div>

                           <div class="form-group">
                             <label for="cd">Course Discription</label>
                             <textarea class="form-control" rows="5" id="cdiscription" name="cdiscription" ><?php echo $data['course_discription']; ?></textarea>
                           </div>

                           <div class="form-group">
                            <input type="hidden" name="Courseid" value="<?php echo $data['course_id']; ?>">
                            
                           <button type="submit" class="btn btn-primary" name="data" onClick="update();">Save Changes</button>
                           </div>



                        <!-------script ------->
                         <script>
                         function update(){
                           document.getElementById('update').submit();
                        }
                         </script>
                         <!-----script--------->



                </form>


                </div>
                </div>




            </div>
            </div>
            </div>
         
            <!-- #END# Hover Rows --> 
        
    
</section>


<!-- Jquery Core Js --> 
<script src="http://classlink.com/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="http://classlink.com/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="http://classlink.com/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
</body>


</html>

