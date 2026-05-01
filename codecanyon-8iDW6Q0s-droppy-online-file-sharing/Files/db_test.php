<?php
$mysqli = new mysqli("127.0.0.1", "root", "", "droppy", 3306);
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
} else {
    echo "Successfully connected to MySQL.";
}
