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

// Fetch compulsory subjects for sem1
$compulsoryQuery = "SELECT complusory_name FROM sem1_c";
$compulsoryResult = $mysqli->query($compulsoryQuery);

// Fetch optional subjects for sem1
$optionalQuery = "SELECT optional_name FROM sem1_o";
$optionalResult = $mysqli->query($optionalQuery);

// Displaysubjects
{
    echo "Compulsory Subjects for Semester 1     ";
    while($row = $compulsoryResult->fetch_assoc()) {
        echo $row["complusory_name"];
    }
    echo "Optional Subjects for Semester 1";
    while($row = $optionalResult->fetch_assoc()) {
        echo  $row["optional_name"];
    }
}

$mysqli->close();
?>
