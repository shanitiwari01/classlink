<?php
// include $_SERVER['DOCUMENT_ROOT'].'/user/controller/authentication/check_in.php';

if (!isset($_SESSION['user'])) {
    header('LOCATION:view/auth/sign_in.php');
}else{
    header('LOCATION:http://classlink.com/user/view/deshboard.php');
}
?>
