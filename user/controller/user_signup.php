<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
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
     $query=" SELECT * FROM `m_user` WHERE `user_id`='$id'";
     $run=mysqli_query($con,$query);
     $data=mysqli_fetch_assoc($run);
     if (!$result) {
      echo"error";
     }
     else
     {
         $_SESSION['user_id']=$data['user_id'];
         $_SESSION['name']=$data['user_name'];
         $_SESSION['email']=$data['user_email'];
         $_SESSION['user_course']=$data['user_course'];
         
       
        
          
         header('LOCATION:http://classlink.com/user/controller/suggetion/suggetion.php');
         
     
}}

?>