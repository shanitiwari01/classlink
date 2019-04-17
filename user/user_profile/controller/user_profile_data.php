<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');

session_start();
$user_id= $_SESSION['user']['user_id'];
$name=$_POST['name'];
$email=$_POST['email'];
$dob=$_POST['dob'];
$contact=$_POST['contact'];
$gender=$_POST['gender'];
$address=$_POST['address'];
$imagename=$_FILES['picture']['name'];
$tempname=$_FILES['picture']['tmp_name'];

    move_uploaded_file($tempname,"../../../assets/images/user_signup/$imagename");

    if(empty($imagename))
    {
        $qry=" UPDATE `m_user` SET
`user_name`='$name',
`user_email`='$email',
`user_contact`='$contact',
`user_gender`='$gender',
`user_address`='$address',
`user_dob`='$dob',
 WHERE `user_id`='$user_id'";

    }
else
{
    $qry=" UPDATE `m_user` SET
    `user_name`='$name',
    `user_email`='$email',
    `user_contact`='$contact',
    `user_gender`='$gender',
    `user_address`='$address',
    `user_dob`='$dob',
    `user_image`='$imagename' WHERE `user_id`='$user_id'";
    
}
$run=mysqli_query($con,$qry);


header('LOCATION:http://classlink.com/user/user_profile/view/show_profile.php');

?>