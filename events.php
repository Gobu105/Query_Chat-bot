<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Events - Department of Computer Science</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <?php include ('header.php'); ?>

  <main>
    <section>
      <h2>Upcoming Events</h2>
      <div class="event">
        <h3>Annual Hackathon</h3>
        <p>Date: October 15, 2024</p>
        <a href="event-registration.html?event_id=1">Register Now</a>
      </div>
      <div class="event">
        <h3>AI Workshop</h3>
        <p>Date: November 5, 2024</p>
        <a href="event-registration.html?event_id=2">Register Now</a>
      </div>
    </section>
  </main>

  <!-- Floating Chat Button -->
  <button class="chat-btn" onclick="toggleChat()">
        <span class="chat-icon">💬</span>
    </button>

    <!-- Chat Section -->
    <!-- chat.html -->
    <div class="chat-container" id="chatContainer">
        <div class="chat-header">
            Chat with Us
        </div>
        <div class="chat-body" id="chat-body">
            <!-- Initially show login form -->
            <div id="authSection">
                <h3>Login</h3>
                <div class="auth-container" id="loginForm">
                    <input type="text" id="loginRno" placeholder="Registration Number" required>
                    <input type="password" id="loginPassword" placeholder="Password" required>
                    <button onclick="login()">Login</button>
                    <p>Don't have an account? <a href="#" onclick="showRegister()">Register</a></p>
                </div>

                <div class="auth-container" id="registerForm" style="display: none;">
                    <h3>Register</h3>
                    <input type="text" id="registerRno" placeholder="Registration Number (10 digits)" pattern="\d{10}"
                        required>
                    <input type="text" id="registerFirstName" placeholder="First Name" required>
                    <input type="text" id="registerLastName" placeholder="Last Name" required>
                    <input type="password" id="registerPassword" placeholder="Password" required>
                    <button onclick="register()">Register</button>
                    <p>Already have an account? <a href="#" onclick="showLogin()">Login</a></p>
                </div>
            </div>

            <!-- Chat messages will be appended here after login -->
            <div id="chatSection" style="display: none;">
                <div class="chat-message">Hello! How can we help you?</div>
            </div>
        </div>

        <div class="chat-footer" id="chatFooter" style="display: none;">
            <form id="chatForm" style="display: flex; width: 100%;">
                <input type="text" name="message" id="message" placeholder="Type a message..." autocomplete="off">
                <button type="submit">Send</button>
            </form>
        </div>
    </div>


    <script src="script.js"></script> <!-- Link to JavaScript file -->
</body>
</html>
