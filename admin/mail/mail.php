<?php
 include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
 $contact_id=$_GET['id'];
 $contactus="SELECT * FROM `contact_us` WHERE `contact_id`='$contact_id'";
 $run=mysqli_query($con,$contactus);
 $data=mysqli_fetch_array($run);

echo "<pre>";
//print_r($data);

/*foreach ($data as $key => $value) {
   echo " $key => $value\n";
}*/
$schoo_name=$data['school_name'];

$m_user_collage=" INSERT INTO `m_user_college`(`college_name`) VALUES ('$schoo_name') ";

$run_uc=mysqli_query($con,$m_user_collage);
$last_id = mysqli_insert_id($con);

$user_name=$data['name'];
$user_email=$data['email'];


$m_user="INSERT INTO `m_user`( `collage_id`, `user_name`, `user_email`) VALUES ('$last_id','$user_name','$user_email')";
$run_muser=mysqli_query($con,$m_user);



//print_r($contact_us);

if($run_muser)
{
   $contact_us="UPDATE `contact_us` SET `status` = 'Y' WHERE `contact_id` = '$contact_id'";
   $run_contact=mysqli_query($con,$contact_us);
   header('LOCATION:http://classlink.com/admin/view/dashboard.php');
}
?>