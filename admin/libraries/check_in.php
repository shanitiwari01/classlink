<?php
session_start();
if (!isset($_SESSION['user'])) {

    header('LOCATION:http://classlink.com/admin/');
}

?>