<?php
error_reporting(0);
ini_set('display_errors', 0);

require_once "config.php";
require_once "db.php";
require_once "functions.php";

$result = mysqli_query($conn, "SELECT id, name, email FROM userss");

while ($row = mysqli_fetch_assoc($result)) {
    echo $row['id'] . " - " . $row['name'] . " - " . $row['email'] . "<br>";
}
