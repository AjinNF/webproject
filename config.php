<?php

$db_host = "db-test.cehxubx9bgxu.ap-southeast-1.rds.amazonaws.com";
$db_user = "root";
$db_pass = "123456789";
$db_name = "dbtest";

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}
