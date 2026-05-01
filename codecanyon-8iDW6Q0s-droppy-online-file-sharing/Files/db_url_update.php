<?php
$mysqli = new mysqli("127.0.0.1", "root", "", "droppy", 3306);
if ($mysqli->connect_errno) {
    die("Connection failed: " . $mysqli->connect_error);
}
$mysqli->query("UPDATE droppy_settings SET site_url = 'http://localhost:8000/'");
echo "Updated rows: " . $mysqli->affected_rows;
