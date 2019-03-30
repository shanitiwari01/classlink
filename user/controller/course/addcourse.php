<?php
include $_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php';
//$id=$_POST['id'];
$cname = $_POST['cname'] ;
$course_dis = $_POST['cdiscription'] ;
$qry =" INSERT INTO `user_course`( `course_name`, `course_discription`) VALUES ('$cname' , '$course_dis')";
$result = mysqli_query($con,$qry);
if ($result) {
    header('LOCATION:http://classlink.com/user/view/deshboard.php');
}
?>