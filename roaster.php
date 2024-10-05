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

// Fetch roaster details
$query = "SELECT caste, seat_normal, seat_in_house FROM roaster";
$result = $mysqli->query($query);

// Display the seat details
if ($result->num_rows > 0) {
    echo "Seat Allocation by Caste    ";
    while($row = $result->fetch_assoc()) {
        echo $row["caste"] .":". $row["seat_normal"] . "," . $row["seat_in_house"];
    }
    echo "</table>";
} else {
    echo "No data available.";
}

$mysqli->close();
?>
