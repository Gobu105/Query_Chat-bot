<?php
// Database connection (adjust as per your DB credentials)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "admission_chatbot";  // Your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the user's message from the POST request
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $userMessage = trim($_POST['message']); // The message sent by the user

    // Basic sanitization to prevent SQL injection
    $userMessage = $conn->real_escape_string($userMessage);

    // Example: You can now query a table for predefined answers or handle logic here
    // Assuming you have a table 'faq' with columns 'question' and 'answer'
    
    $sql = "SELECT answer FROM faq WHERE question LIKE '%$userMessage%' LIMIT 1";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Output data of the matched row
        $row = $result->fetch_assoc();
        echo $row["answer"];
    } else {
        // If no answer is found in the database, you can provide a default response
        echo "Sorry, I don't understand the question. Please try asking differently or contact support.";
    }
}

// Close the connection
$conn->close();
?>
