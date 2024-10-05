<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "admission_chatbot";
// Database connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Fetch fee details
$query = "SELECT category, fee FROM fee";
$result = $mysqli->query($query);

// Display the fee structure
if ($result->num_rows > 0) {
    echo "Fee Structure           ";
    while($row = $result->fetch_assoc()) {
        echo $row["category"] . ":" . $row["fee"] ." || ";
    }
    echo "</table>";
} else {
    echo "No data available.";
}

$mysqli->close();
?>
