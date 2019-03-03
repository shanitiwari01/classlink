<?php
include('C:/xampp/htdocs/classlink/database/dbcon.php');
if (isset($_POST['usignup'])) {
    $id=$_POST['id'];
    $name=$_POST['username'];
    $email=$_POST['email'];
    $password=$_POST['password'];
    $course=$_POST['course'];
    $imagename=$_FILES['user_pic']['name'];
    $tempname=$_FILES['user_pic']['tmp_name'];

    move_uploaded_file($tempname,"../../assets/images/user_signup/$imagename");

    $qry=" UPDATE `m_user` SET `user_name` = '$name', `user_email` ='$email',
     `user_course` = '$course',
     `user_password` = '$password' , `user_image` ='$imagename' WHERE `user_id` = '$id' ";
     
     $result=mysqli_query($con,$qry);
     if (!$result) {
      echo"error";
     }
     else
     {
         
         header('LOCATION:http://classlink.com/user/controller/suggetion.php');
     
}}

?>