<?php
error_reporting(1);
ini_set('display_errors', 1);

require_once "config.php";
require_once "db.php";
// require_once "functions.php";

$result = mysqli_query($conn, "SELECT id, name, email FROM users");

while ($row = mysqli_fetch_assoc($result)) {
    echo $row['id'] . " - " . $row['name'] . " - " . $row['email'] . "<br>";
}
