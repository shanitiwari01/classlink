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
                    <h2> Add Teacher</h2>
                 
            </div>
            
        </div>

        <div class="container-fluid">
       
            <!-- Basic Table -->
            <div class="row clearfix">
                <div class="col-lg-7 col-md-12 col-sm-12 m-auto" >
                    <div class="card">
                        <div class="header">
                        </div>
                        <div class="body">
                        <div class="body">
                <form  action="http://classlink.com/user/add/controller/add_teacherdata.php" method="post" id="addtech">

                    <div class="form-group">
                             <label for="name"> Name</label>
                             <input type="text" class="form-control" id="name" name="name" required>
                           </div>

                           <div class="form-group">
                           <label for="email">Email</label>
                           <input type="email" class="form-control" name="email" required>
                           </div>

                           <div class="form-group">
                           <label for="course">Course</label>

                           <?php 
                                include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
                                $result=mysqli_query($con,'SELECT * FROM `user_course`'); 
                                
                            ?> 
                                
                         
                           </div>

                           <div class="row clearfix">
                                <div class="col-sm-12 form-group">
                                    <select class="form-control show-tick  ms" name="course">
                                        <option >-- Please select Course--</option>
                                        <?php
                                        while($row=mysqli_fetch_assoc($result)) { 
                                            echo "<option  value='$row[course_id]'>".$row['course_name']."</option>"; 
                                        } 
                                        ?>
                                    </select>
                                </div>
                            </div>











                           <div class="form-group">
                           <button type="submit" class="btn btn-danger" onClick="addteacher();">Add Teacher</button>
                           </div>

                            <!-------script ------->
                         <script>
                         function addteacher(){
                           document.getElementById('addtech').submit();
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
        </div>
    </div>
</section>

<!-- Jquery Core Js --> 
<script src="http://classlink.com/assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="http://classlink.com/assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="http://classlink.com/assets/bundles/mainscripts.bundle.js"></script><!-- Custom Js --> 
</body>


</html>