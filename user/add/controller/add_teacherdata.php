<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');

    session_start();

    $name=$_POST['name'];
    $email=$_POST['email'];
    $course=$_POST['course'];
    $collage=$_SESSION['collage_id'];
        
    $qry=" INSERT INTO `m_user`(`user_name`, `user_email`, `user_course`,`collage_id`,`user_role_id`) 
    VALUES ('$name','$email','$course','$collage',2)";
    $result=mysqli_query($con,$qry);
   
header('LOCATION:http://classlink.com/user/add/view/show_techers.php');
 
?>