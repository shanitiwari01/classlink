<?php
include('C:/xampp/htdocs/classlink/database/dbcon.php');
$user_id=$_POST['id'];
$session_id=$_SESSION['user_id'];
$qry=" INSERT INTO `friend` WHERE `sender_id`='$session_id' , `receiver_id`='$user_id' , `status`='P'";
$run=mysqli_query($con,$qry);
?>