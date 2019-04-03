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
                    <h2>Course Name</h2>
            </div>
        </div>
        
        <div class="container-fluid">
            <!-- Basic Table -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12">
                
                    <div class="card">
                        <div class="header">
                        <!-- Button to Open the Modal -->
                 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                          Add Course                        
                        </button>
                        <!-- The Modal -->
                         <div class="modal" id="myModal">
                           <div class="modal-dialog">
                             <div class="modal-content">

                               <!-- Modal Header -->
                               <div class="modal-header">
                                 <h4 class="modal-title">Add More Courses</h4>
                                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                               </div>

                               <!-- Modal body -->
                               <div class="modal-body">
                               <form action="http://classlink.com/user/controller/course/addcourse.php" method="post" id="insert_course">

                           <div class="form-group">
                             <label for="cn">Course Name</label>
                             <input type="text" class="form-control" id="cname" name="cname">
                           </div>

                           <div class="form-group">
                             <label for="cd">Course Discription</label>
                             <textarea class="form-control" rows="5" id="cdiscription" name="cdiscription"></textarea>
                           </div>
                            
                        <div class="modal-footer">
                           <button type="submit" class="btn btn-danger save" onclick="insert();" >submit</button>
                           <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button> 
                        </div>    
                         </form>
                         <!-------script ------->
                         <script>
                         function insert(){
                           document.getElementById('insert_course').submit();
                        }
                         </script>
                         <!-----script--------->
                               </div>
                             </div>
                           </div>
                         </div>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>NO.</th>  
                                            <th>COURSE NAME</th>
                                            <th>COURSE DISCRIPTION</th>
                                            <th>DELETE</th>
                                            <th>UPDATE</th>

                                        </tr>
                                    </thead>
                                    <?php
                                
                                    include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
                                      $qry="SELECT * FROM `user_course` ";
                                      $run=mysqli_query($con,$qry);
                                      while ($result = mysqli_fetch_array($run)) {
                                          
                                          ?>

                                    
                                    <tbody>
                                        <tr>
                                            <td><?php echo $result['course_id']; ?></td>
                                            <td><?php echo $result['course_name']; ?></td>
                                            <td><?php echo $result['course_discription']; ?></td>
                                            <td><a href='http://classlink.com/user/controller/course/delete.php?course_id=<?php echo $result['course_id'];?>' class='btn btn-primary btn-outline-dark'>Delete</a></td>
                                            <td><a href='http://classlink.com/user/controller/Course_update/courseupdate.php?course_id=<?php echo $result['course_id'];?>' class='btn btn-primary btn-outline-dark save' data-id="<?php $user_id ?>">Update</a></td>
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

