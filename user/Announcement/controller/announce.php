<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
$user_id= $_SESSION['user']['user_id'];
$title=$_POST['title'];
$announce_disc=$_POST['description'];
$imagename=$_FILES['picture']['name'];
$tempname=$_FILES['picture']['tmp_name'];
move_uploaded_file($tempname,"../../../assets/images/announcement/$imagename");
$qry="INSERT INTO `community`( `user_id`, `title`, `description`, `image`, `status`) 
VALUES ('$user_id','$title','$announce_disc','$imagename','Y') ";
 $run=mysqli_query($con,$qry);

header('LOCATION:http://classlink.com/user/Announcement/view/show_announce.php');


?>