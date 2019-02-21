<?php
include 'C:/xampp/htdocs/classlink/database/dbcon.php';



$id=$_POST['Courseid']; 
$cname=$_POST['cname'];
$cdiscription=$_POST['cdiscription'];
$qry="UPDATE `user_course` SET `course_name` = '$cname', `course_discription` = '$cdiscription' WHERE `course_id` = '$id'";
$result=mysqli_query($con,$qry);
if ($result) {
  header('LOCATION:http://classlink.com/user/view/deshboard.php');   
}
?>
