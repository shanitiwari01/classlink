<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
$user_id=$_POST['id'];
$status=$_POST['status'];
//$session_id=$_SESSION['user']['user_id'];

$qry = "UPDATE `friend` SET `status`='$status' WHERE `friend_id`='$user_id'";
$run=mysqli_query($con,$qry);
echo $user_id;
?>