<?php 
session_start();
$con = new mysqli("localhost", "root", "", "diditDB");

if (!$con) {
    die ("Connection failed");
}

?>