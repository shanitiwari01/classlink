<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
$user_id=$_POST['id'];
$session_id=$_SESSION['user']['user_id'];

$qry = "INSERT INTO `friend` (`sender_id`, `receiver_id`, `status`) VALUES ('$session_id','$user_id','P')";
$run=mysqli_query($con,$qry);
echo $user_id;
?>