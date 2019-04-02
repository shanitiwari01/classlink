<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
$user_id=$_SESSION['user']['user_id'];
$title=$_POST['suggestion'];
$discription=$_POST['suggestion_discription'];
$qry=" INSERT INTO `suggestion`( `user_id`, `title`, `comment`,`status`) VALUES ('$user_id','$title','$discription','P') ";
$run=mysqli_query($con,$qry);
if ($run) {
    header('LOCATION:http://classlink.com/user/suggestion/view/suggestion.php');
}


?>