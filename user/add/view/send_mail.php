<?php
$user_id = $_GET['id'];
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
$qry = "UPDATE `m_user` SET `mail` = 'Y' WHERE `user_id` = '$user_id'";
$run=mysqli_query($con,$qry);

$qry="SELECT * FROM `m_user` WHERE `user_id`= $user_id ";
$run=mysqli_query($con,$qry);
$data = mysqli_fetch_array($run);
$user_name=$data['user_name'];
$user_email=$data['user_email'];
$link = 'http://classlink.com/user/view/auth/signup/signup.php?id='.$user_id;
$subject = 'test';
$mail = 'Hello '.$user_name.',<br/><p>Click On below link for signup in classlink<p><br/>'.$link;

//print_r($contact_us);
include $_SERVER['DOCUMENT_ROOT'].'mail.php';

if($data['user_role_id'] == 3){
    header('LOCATION:http://classlink.com/user/add/view/show_student.php');
}else{
    header('LOCATION:http://classlink.com/user/add/view/show_techers.php');
}
?>