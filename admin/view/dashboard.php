<?php include $_SERVER['DOCUMENT_ROOT'].'/admin/layout/header.php'; ?>
<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img class="zmdi-hc-spin" src="http://classlink.com/assets/images/loader.svg" width="48" height="48" alt="Aero"></div>
        <p>Please wait...</p>
    </div>
</div>

<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<?php include $_SERVER['DOCUMENT_ROOT'].'/admin/layout/footer.php'; ?>

 

<section class="content">
    <div class="body_scroll">
        <div class="block-header">
            <div class="row">
                <div class="col-lg-7 col-md-6 col-sm-12">
                    <h2>Contact Us</h2>
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
                                            <th>NAME</th>
                                            <th>EMAIL</th>
                                            <th>SUBJECT</th>
                                            <th>MESSAGE</th>
                                            <th>MAIL</th>
                                        

                                        </tr>
                                    </thead>
                                    <?php
                                    include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
                                      $qry="SELECT * FROM `contact_us` ";
                                      $run=mysqli_query($con,$qry);
                                      while ($result = mysqli_fetch_array($run)) {
                                          ?>

                                    
                                    <tbody>
                                        <tr>
                                            <td><?php echo $result['name']; ?></td>
                                            <td><?php echo $result['email']; ?></td>
                                            <td><?php echo $result['subject']; ?></td>
                                            <td><?php echo $result['message']; ?></td>
                                            <td><button class='btn btn-primary btn-outline-dark' name="send"><a href="http://classlink.com/admin/mail/mail.php?id=<?php echo $result['contact_id']; ?>" class="text-white">Send Mail</a></button></td>
                                            
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