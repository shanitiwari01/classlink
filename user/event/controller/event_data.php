<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
$user_id= $_SESSION['user']['user_id'];
$title=$_POST['title'];
$discription=$_POST['discription'];
$imagename=$_FILES['picture']['name'];
$tempname=$_FILES['picture']['tmp_name'];
move_uploaded_file($tempname,"../../../assets/images/event/$imagename");
$qry="INSERT INTO `event`(`title`, `description`, `image`) 
VALUES ('$standard_id','$title','$discription','$imagename') ";
 $run=mysqli_query($con,$qry);

header('LOCATION:http://classlink.com/user/event/view/show_event.php');


?>