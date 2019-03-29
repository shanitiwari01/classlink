<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
$user_id=$_SESSION['user']['user_id'];
$title=$_POST['title'];
$letter_discription=$_POST['Letter_discription'];
$date=$_POST['date'];
$qry=" INSERT INTO `letter`( `user_id`, `subject`, `description`, `date`, `status`)
 VALUES ('$user_id','$title','$letter_discription','$date','N') ";
$run=mysqli_query($con,$qry);

header('LOCATION:http://classlink.com/user/Letter_box/view/show_letter.php');

?>