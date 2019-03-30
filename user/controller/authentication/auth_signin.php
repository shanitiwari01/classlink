<?php
include('C:/xampp/htdocs/classlink/database/dbcon.php');
session_start();
$email=$_POST['email'];
$password=$_POST['password'];
$qry="SELECT * FROM `m_user` WHERE `user_email` = '$email' and `user_password` = '$password'";
$result=mysqli_query($con,$qry);

if (mysqli_num_rows($result) > 0) {

    $row =mysqli_fetch_assoc($result);
    
    $_SESSION['user']=$row;
    $_SESSION['user_id']=$row["user_id"];
    $_SESSION["collage_id"]=$row['collage_id'];
    $_SESSION["user_name"]=$row["user_name"];
    $_SESSION["user_email"]=$row["user_email"];
    $_SESSION["user_course"]=$row["user_course"];
    $_SESSION["user_role_id"]=$row["user_role_id"];

    header('LOCATION:http://classlink.com/user/view/deshboard.php');
}


?>