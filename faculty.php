<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Faculty - Department of Computer Science</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <!-- Include Header -->
  <?php include ('header.php'); ?>

  <main>
    <section>
      <h2>Meet Our Faculty</h2>
      <!-- Faculty Member 1 -->
      <div class="faculty-member">
        <h3>PROF. SHAMKANT S.DESHMUKH</h3>
        <p>Head of Computer Science Department</p>
        <p><strong>Experience:</strong> 23 years</p>
      </div>

      <!-- Faculty Member 2 -->
      <div class="faculty-member">
        <h3>PROF. MANISHA S. SURYAVANSHI</h3>
        <p>Professor</p>
        <p><strong>Experience:</strong> 23 years</p>
      </div>

      <!-- Faculty Member 3 -->
      <div class="faculty-member">
        <h3>PROF. MADHURI S. GHANEKAR</h3>
        <p>Professor</p>
        <p><strong>Experience:</strong> 30 years</p>
      </div>

      <!-- Faculty Member 4 -->
      <div class="faculty-member">
        <h3>PROF. SANGEETA S. RAUT</h3>
        <p>Professor</p>
        <p><strong>Experience:</strong> 21 years</p>
      </div>

      <!-- Faculty Member 5 -->
      <div class="faculty-member">
        <h3>PROF. ABHIJIT V. SATHE</h3>
        <p>Professor</p>
        <p><strong>Experience:</strong> 18 years</p>
      </div>

      <!-- Faculty Member 6 -->
      <div class="faculty-member">
        <h3>PROF. SHWETA KHADSE-JAWALE</h3>
        <p>Professor</p>
        <p><strong>Experience:</strong> 16 years</p>
      </div>

      <!-- Faculty Member 7 -->
      <div class="faculty-member">
        <h3>PROF. KIRAN KULKARNI</h3>
        <p>Assistant Professor</p>
        <p><strong>Experience:</strong> 6 years</p>
      </div>
      
    </section>
  </main>

  <!-- Floating Chat Button -->
  <button class="chat-btn" onclick="toggleChat()">
    <span class="chat-icon">💬</span>
  </button>

  <!-- Chat Section -->
  <div class="chat-container" id="chatContainer">
    <div class="chat-header">Chat with Us</div>
    <div class="chat-body" id="chat-body">
      <!-- Login Form -->
      <div id="authSection">
        <h3>Login</h3>
        <div class="auth-container" id="loginForm">
          <input type="text" id="loginRno" placeholder="Registration Number" required>
          <input type="password" id="loginPassword" placeholder="Password" required>
          <button onclick="login()">Login</button>
          <p>Don't have an account? <a href="#" onclick="showRegister()">Register</a></p>
        </div>

        <!-- Register Form -->
        <div class="auth-container" id="registerForm" style="display: none;">
          <h3>Register</h3>
          <input type="text" id="registerRno" placeholder="Registration Number (10 digits)" pattern="\d{10}" required>
          <input type="text" id="registerFirstName" placeholder="First Name" required>
          <input type="text" id="registerLastName" placeholder="Last Name" required>
          <input type="password" id="registerPassword" placeholder="Password" required>
          <button onclick="register()">Register</button>
          <p>Already have an account? <a href="#" onclick="showLogin()">Login</a></p>
        </div>
      </div>

      <!-- Chat messages after login -->
      <div id="chatSection" style="display: none;">
        <div class="chat-message">Hello! How can we help you?</div>
      </div>
    </div>

    <!-- Chat Footer -->
    <div class="chat-footer" id="chatFooter" style="display: none;">
      <form id="chatForm" style="display: flex; width: 100%;">
        <input type="text" name="message" id="message" placeholder="Type a message..." autocomplete="off">
        <button type="submit">Send</button>
      </form>
    </div>
  </div>

  <script src="script.js"></script>
</body>
</html>
