<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
$user_id= $_SESSION['user']['user_id'];
$blog_title=$_POST['blog_title'];
$blog_disc=$_POST['post_discription'];
$imagename=$_FILES['picture']['name'];
$tempname=$_FILES['picture']['tmp_name'];
move_uploaded_file($tempname,"../../../assets/images/post_pic/$imagename");
$qry=" INSERT INTO `post`( `user_id`, `title`, `discription`, `image`) VALUES
 ('$user_id','$blog_title','$blog_disc','$imagename') ";
 $run=mysqli_query($con,$qry);
if ($_SESSION[user_role_id]==1) {
    header('LOCATION:http://classlink.com/user/blog_post/view/post_aprove.php');
}
else
{
    header('LOCATION:http://classlink.com/user/blog_post/view/post_list_view.php')
}



?>