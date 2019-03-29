<?php
session_start();
include $_SERVER['DOCUMENT_ROOT'].'/user/controller/authentication/check_in.php';
?>
<html class="no-js " lang="en">


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">

<title>:: classlink ::</title>
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="http://classlink.com/assets/bootstrap/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet" href="http://classlink.com/assets/css/style.min.css">
</head>
<body class="theme-blush">


<!-- Left Sidebar -->
<aside id="leftsidebar" class="sidebar">
    <div class="navbar-brand">
        <button class="btn-menu ls-toggle-btn" type="button"><i class="zmdi zmdi-menu"></i></button>
        <a href="index-2.html"><img src="http://classlink.com/assets/images/logo.png" width="85" alt="ClassLINK"><span class="m-l-10">ClassLINK</span></a>
    </div>
    <div class="menu">
        <ul class="list">
        <?php
        include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
        
        $user_id= $_SESSION['user']['user_id'];
        $qry=" SELECT * FROM `m_user` WHERE `user_id`='$user_id' ";
        $result=mysqli_query($con,$qry);
        $run = mysqli_fetch_array($result)

        ?>
           
                <div class="user-info">
                    <a class="image" href="profile.html"><img src="http://classlink.com/assets/images/user_signup/<?php echo $run['image']; ?>" alt="User"></a>
                    <div class="detail">
                        <h4><?php echo $run['user_name']; ?></h4>
                        <small><?php
                        if ($run['user_role_id']==1) {
                            echo "Principle";
                        }
                        elseif($run['user_role_id']==2)
                        {
                            echo "Teacher";
                        }
                        elseif($run['user_role_id']==3)
                        {
                            echo "Student";
                        }
                        
                        
                        ?></small>
                    </div>
                </div>
            
            
           <a href="index-2.html"><i class="zmdi zmdi-collection-folder-image"></i><span>Course</span></a>
           
           <a href="index-2.html"><i class="zmdi zmdi-male-alt"></i><span>Student</span></a>
           
           <a href="index-2.html"><i class=""></i><i class="zmdi zmdi-account"></i><span>Teacher</span></a>
           
           <a href="index-2.html"><i class="zmdi zmdi-blogger"></i><span>Blogger</span></a>
           
           
           
           
           
            
            
            
        </ul>
    </div>
</aside>
</body>
</html>