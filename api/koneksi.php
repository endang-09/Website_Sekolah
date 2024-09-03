<?php

// koneksi ke database
$localhost = "localhost";
$username = "root";
$password =  "";
$db = "sin";

$con = new mysqli($localhost, $username, $password, $db);

if(!$con) {
    die("connect error");
}

?>