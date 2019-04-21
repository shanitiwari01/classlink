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
                    <h2>STUDENT LIST</h2>
                    <a href="http://classlink.com/user/add/view/add_student.php" class="btn btn-primary ">Add Students</a>
                    
                 
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
                                        <th>STUDENT ID</th>  
                                        <th>STUDENT NAME</th>
                                        <th>EMAIL ADDRESS</th>
                                        <th>COURSE</th>
                                        <th>MAIL</th>
                                    

                                    </tr>
                                </thead>
                                <?php
                            
                                include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
                                  $qry="SELECT * FROM `vusers` WHERE `user_role_id`= 3";
                                  $run=mysqli_query($con,$qry);
                                  while ($result = mysqli_fetch_array($run)) {
                                      
                                      ?>

                                
                                <tbody>
                                    <tr>
                                        <td><?php echo $result['user_id']; ?></td>
                                        <td><?php echo $result['user_name']; ?></td>
                                        <td><?php echo $result['user_email']; ?></td>
                                        <td><?php echo $result['course_name']; ?></td>
                                        <td>
                                        <?php if($result['mail'] == 'N'){ ?>
                                            <button class='btn btn-primary btn-outline-dark' name="send"><a href="http://classlink.com/user/add/view/send_mail.php?id=<?php echo $result['user_id']; ?>" class="text-white">Send Mail</a></button>
                                        <?php }else{ ?>
                                            <input type="button" class='btn btn-primary btn-outline-dark' name="send" value="Sended Mail">
                                        <?php } ?>
                                        </td>
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
<script src="http://classlink.com/assets/bundles/mainscripts.bundle.js"></script>
<script>


</script>
</body>


</html>