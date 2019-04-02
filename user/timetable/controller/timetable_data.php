<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
$user_course= $_SESSION['user']['user_course'];
$title=$_POST['title'];
$disc=$_POST['discription'];
$imagename=$_FILES['picture']['name'];
$tempname=$_FILES['picture']['tmp_name'];
move_uploaded_file($tempname,"../../../assets/images/timetable/$imagename");
$qry="INSERT INTO `timetable`( `standard_id`, `title`, `description`, `image`, `status`) 
VALUES ('$user_course','$title','$disc','$imagename','N') ";
 $run=mysqli_query($con,$qry);
 $_SESSION['standard_id']=$run['standard_id'];

header('LOCATION:http://classlink.com/user/timetable/view/show_timetable.php');


?>