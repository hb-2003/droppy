<?php
$mysqli = new mysqli("127.0.0.1", "root", "", "droppy", 3306);
if ($mysqli->connect_errno) {
    die("Connection failed: " . $mysqli->connect_error);
}
$result = $mysqli->query("SELECT * FROM droppy_settings");
if ($result) {
    $row = $result->fetch_assoc();
    if (isset($row['site_url'])) {
        echo "site_url: " . $row['site_url'] . "\n";
    } else {
        print_r($row);
    }
} else {
    echo "Query failed: " . $mysqli->error;
}
