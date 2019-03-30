<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
$user = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];
$qry = "INSERT INTO `m_user`( `user_name`, `user_email`, `user_password`) VALUES ('$user' , '$email' , '$password') ";
$result=mysqli_query($con,$qry);
if ($result)
{
    header('LOCATION:http://classlink.com/admin/view/dashboard.php');
}
?>