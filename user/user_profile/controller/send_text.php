<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
$user_id = $_POST['user_id'];
$numbers = $_POST['contact'];
$message = $_POST['message'];



include $_SERVER['DOCUMENT_ROOT'].'sms.php';


header('LOCATION:http://classlink.com/user/user_profile/view/user_info.php?id='.$user_id);
?>