<?php
include 'C:/xampp/htdocs/classlink/database/dbcon.php';
$courseid= $_REQUEST['course_id'];
$qry="DELETE FROM `user_course` WHERE `course_id`='$courseid'";
$run=mysqli_query($con,$qry);
if ($run) {
    header('LOCATION:http://classlink.com/user/view/deshboard.php');
}
?>