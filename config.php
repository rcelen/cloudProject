<?php
$databaseHost = 'db';
$databaseUsername = 'root';
$databasePassword = 'root';
$databaseName = 'cloud_project';

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName);

if (!$mysqli) {
    die("Connection failed: " . mysqli_connect_error());
}
?>