<?php
date_default_timezone_set("Asia/Bangkok");

/* Local Connection */
$conn = new mysqli("localhost", "root", "", "test");

/* Online Connection */
// $conn = new mysqli("localhost", "meg", "Crprojects@1985", "aeenshop_com");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>