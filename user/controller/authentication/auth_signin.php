<?php
include('C:/xampp/htdocs/classlink/database/dbcon.php');
session_start();
$email=$_POST['email'];
$password=$_POST['password'];
$qry="SELECT * FROM `m_user` WHERE `user_email` = '$email' and `user_password` = '$password' and `user_role_id` = 1";
$result=mysqli_query($con,$qry);

if (mysqli_num_rows($result) > 0) {

    $row=mysqli_fetch_assoc($result);
    $_SESSION["user"] = $row;

    header('LOCATION:http://classlink.com/admin/view/dashboard.php');
}else{
    header('LOCATION:http://classlink.com/user/view/auth/sign_in.php');
}

?>