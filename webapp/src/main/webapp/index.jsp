<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>DevOps Learning Registration</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: #f4f4f9;
      padding: 20px;
    }

    .container {
      background-color: #fff;
      max-width: 500px;
      margin: auto;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      color: #333;
    }

    label {
      display: block;
      margin-bottom: 6px;
      margin-top: 12px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-top: 4px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    .registerbtn {
      background-color: #007bff;
      color: white;
      padding: 12px;
      width: 100%;
      margin-top: 20px;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      transition: background 0.3s ease-in-out;
    }

    .registerbtn:hover {
      background-color: #0056b3;
    }

    .signin {
      text-align: center;
      margin-top: 15px;
    }

    .terms {
      font-size: 14px;
      color: #555;
    }

    .password-strength {
      font-size: 13px;
      margin-top: 5px;
      color: #888;
    }
  </style>
</head>
<body>

  <form action="action_page.php" method="post" autocomplete="on">
    <div class="container">
      <h1>Register for DevOps Learning</h1>
      <p>Please fill in this form to create your DevOps learning account.</p>
      <hr>

      <label for="Name">Full Name</label>
      <input type="text" id="Name" name="Name" placeholder="John Doe" required>

      <label for="mobile">Mobile Number</label>
      <input type="tel" id="mobile" name="mobile" placeholder="10-digit mobile number" pattern="[0-9]{10}" title="Enter a valid 10-digit mobile number" required>

      <label for="email">Email</label>
      <input type="email" id="email" name="email" placeholder="example@example.com" required>

      <label for="psw">Password</label>
      <input type="password" id="psw" name="psw" placeholder="Minimum 6 characters" minlength="6" required oninput="checkPasswordStrength()">
      <div class="password-strength" id="strengthMessage"></div>

      <label for="psw-repeat">Repeat Password</label>
      <input type="password" id="psw-repeat" name="psw-repeat" placeholder="Repeat your password" minlength="6" required>

      <p class="terms">By creating an account you agree to our <a href="#" target="_blank">Terms & Privacy</a>.</p>

      <button type="submit" class="registerbtn">Register</button>
    </div>

    <div class="container signin">
      <p>Already have an account? <a href="#">Sign in</a>.</p>
    </div>

    <div class="container">
      <h2 style="text-align:center; color: green;">Thank you! Happy Learning 🎓</h2>
    </div>
  </form>

  <script>
    function checkPasswordStrength() {
      const password = document.getElementById("psw").value;
      const strengthMsg = document.getElementById("strengthMessage");
      if (password.length < 6) {
        strengthMsg.textContent = "Weak password";
        strengthMsg.style.color = "red";
      } else if (password.match(/[A-Z]/) && password.match(/[0-9]/) && password.length >= 8) {
        strengthMsg.textContent = "Strong password";
        strengthMsg.style.color = "green";
      } else {
        strengthMsg.textContent = "Moderate password (add uppercase & numbers)";
        strengthMsg.style.color = "orange";
      }
    }
  </script>

</body>
</html>


