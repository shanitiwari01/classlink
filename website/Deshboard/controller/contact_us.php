<?php
include $_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php';
if (isset($_POST['send']))
{
 
    $name=$_POST['name'];
    $email=$_POST['email'];
    $subject=$_POST['subject'];
    $collage=$_POST['collage'];
    $message=$_POST['message'];
    $q="INSERT INTO `contact_us`( `name`, `email`, `subject`, `school_name`, `message`) 
    VALUES ('$name','$email','$subject','$collage','$message')";
    $result=mysqli_query($con,$q);
    if ($result) {
    header('LOCATION:http://classlink.com/website/eStartup/index.php');
    }

}




?>