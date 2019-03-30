<?php

include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
$post_id=$_GET['post_id'];
$qry=" UPDATE `post` SET `status` = 'Y' WHERE `post`.`post_id` = $post_id ";
$run=mysqli_query($con,$qry);
if ($run) {
    header('LOCATION:http://classlink.com/user/blog_post/view/post_aprove.php');
}

?>