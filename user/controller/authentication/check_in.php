<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
// print_r($_SESSION);exit;
if (!isset($_SESSION['user'])) {
     header('LOCATION:view/auth/sign_in.php');
}

?>