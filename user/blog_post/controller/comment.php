<?php


include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
$user_id= $_SESSION['user']['user_id'];
$post_id=$_POST['post_id'];
$comment=$_POST['com'];


$qry=" INSERT INTO `post_comment`( `post_id`, `user_id`, `comment`) VALUES 
('$post_id','$user_id','$comment' ) ";
$run=mysqli_query($con,$qry);

if ($run) {
    header('LOCATION:http://classlink.com/user/blog_post/view/post_list_view.php?=post_id'.$post_id);
}





?>