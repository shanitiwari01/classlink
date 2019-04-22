<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
$standard_id= $_SESSION['user']['user_course'];
$title=$_POST['title'];
$disc=$_POST['discription'];
$imagename=$_FILES['picture']['name'];
$tempname=$_FILES['picture']['tmp_name'];
move_uploaded_file($tempname,"../../../assets/images/result/$imagename");
$qry="INSERT INTO `result`( `standard_id`, `title`, `description`, `result_image`, `status`) 
VALUES ('$standard_id','$title','$disc','$imagename','N') ";
 $run=mysqli_query($con,$qry);

header('LOCATION:http://classlink.com/user/result/view/show_result.php');


?>