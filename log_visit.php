<?php
include 'config.php';

// Get the visitor's IP address
$ip_address = $_SERVER['REMOTE_ADDR'];

// Prepare an SQL statement to insert the visit into the logs table
$stmt = $mysqli->prepare("INSERT INTO logs (ip_address) VALUES (?)");
$stmt->bind_param("s", $ip_address);

// Execute the statement
if ($stmt->execute()) {
    
} else {
    echo "Error: " . $stmt->error;
}

// Close the statement and connection
$stmt->close();
$mysqli->close();
?>
