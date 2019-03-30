<?php
include($_SERVER['DOCUMENT_ROOT'].'/database/dbcon.php');
session_start();
session_destroy();
header("LOCATION:http://classlink.com/user/");

?>