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

// Fetch compulsory subjects for sem2
$compulsoryQuery = "SELECT complusory_name FROM sem2_c";
$compulsoryResult = $mysqli->query($compulsoryQuery);

// Fetch optional subjects for sem2
$optionalQuery = "SELECT optional_name FROM sem2_o";
$optionalResult = $mysqli->query($optionalQuery);

// Display compulsory subjects
if ($compulsoryResult->num_rows > 0) {
    echo "<h2>Compulsory Subjects for Semester 2</h2>";
    echo "<ul>";
    while($row = $compulsoryResult->fetch_assoc()) {
        echo "<li>" . $row["complusory_name"] . "</li>";
    }
    echo "</ul>";
}

// Display optional subjects
if ($optionalResult->num_rows > 0) {
    echo "<h2>Optional Subjects for Semester 2</h2>";
    echo "<ul>";
    while($row = $optionalResult->fetch_assoc()) {
        echo "<li>" . $row["optional_name"] . "</li>";
    }
    echo "</ul>";
}

$mysqli->close();
?>
