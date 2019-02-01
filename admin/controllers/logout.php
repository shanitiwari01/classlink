<?php
include('../../database/dbcon.php');
session_start();
session_destroy();
header("LOCATION:../index.php");

?>