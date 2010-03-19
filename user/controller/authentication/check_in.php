<?php
include('C:/xampp/htdocs/classlink/database/dbcon.php');
session_start();
if (!isset($_SESSION['user'])) {

    header('LOCATION:http://classlink.com/user/view/auth/sign_in.php');
}


?>