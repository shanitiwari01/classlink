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
<link rel="icon" href="http://classlink.com/assets/images/logo.png" type="image/x-icon">
<!-- Favicon-->
<link rel="stylesheet" href="http://classlink.com/assets/bootstrap/bootstrap.min.css">
<!-- Custom Css -->
<link rel="stylesheet" href="http://classlink.com/assets/css/style.min.css">
<link rel="stylesheet" href="http://classlink.com/assets/css/bootstrap-select.css">
</head>
<body class="theme-blush">


<!-- Left Sidebar -->
<aside id="leftsidebar" class="sidebar">
    <div class="navbar-brand">
        <button class="btn-menu ls-toggle-btn" type="button"><i class="zmdi zmdi-menu"></i></button>
        <a href="#"><img src="http://classlink.com/assets/images/logo.png" width="85" alt="ClassLINK"></a>
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
                    <a class="image" href="http://classlink.com/user/user_profile/view/show_profile.php"><img src="http://classlink.com/assets/images/user_signup/<?php echo $run['user_image']; ?>" alt="User"></a>
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
           <?php
            include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
            $user_id= $_SESSION['user']['user_id'];
            $qry=" SELECT * FROM `m_user` WHERE `user_id`='$user_id' ";
            $result=mysqli_query($con,$qry);
            $run = mysqli_fetch_array($result)

           ?>
           <?php 
           if ($run['user_role_id']==3) {
               ?>
                <a href="http://classlink.com/user/blog_post/view/post_list_view.php"><i class="zmdi zmdi-blogger"></i><span>Blogger</span></a>
            
             <?php
           }
           else{
               ?>
            <a href="http://classlink.com/user/view/deshboard.php"><i class="zmdi zmdi-collection-folder-image"></i><span>Course</span></a>
           
            <a href="http://classlink.com/user/add/view/show_student.php"><i class="zmdi zmdi-male-alt"></i><span>Student</span></a>
            
            <a href="http://classlink.com/user/add/view/show_techers.php"><i class=""></i><i class="zmdi zmdi-account"></i><span>Teacher</span></a>
            <a href="http://classlink.com/user/blog_post/view/post_list_view.php"><i class="zmdi zmdi-blogger"></i><span>Blogger</span></a>

<?php
           }
           ?>
           
           
           
            
           <li> <a href="javascript:void(0);" class="menu-toggle waves-effect waves-block"><i class="zmdi zmdi-assignment"></i><span>Friends</span></a>
                <ul class="ml-menu">
                    <li><a href="http://classlink.com/user/friends/connected.php" class=" waves-effect waves-block">Connected</a></li>
                  
                    <li><a href="http://classlink.com/user/friends/send_request.php" class=" waves-effect waves-block">Send Request</a></li>
                    <li><a href="http://classlink.com/user/friends/recevie_request.php" class=" waves-effect waves-block">Recevie Request</a></li>
                </ul>
            </li>
        </ul>
    </div>
</aside>
</body>