
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(to right, #74ebd5, #9face6);
        }

        .container {
            background-color: white;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            margin-bottom: 25px;
            color: #333;
        }

        .input-box {
            position: relative;
            margin-bottom: 20px;
        }

        .input-box input {
            width: 100%;
            padding: 12px 40px 12px 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            outline: none;
            transition: 0.3s ease;
        }

        .input-box input:focus {
            border-color: #5b7cfa;
            box-shadow: 0 0 5px rgba(91, 124, 250, 0.5);
        }

        #lockicon {
            position: absolute;
            right: 12px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            font-size: 18px;
        }

        .btn {
            background-color: #5b7cfa;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s ease;
        }

        .btn:hover {
            background-color: #3f5eea;
        }

        .register-link {
            margin-top: 20px;
            font-size: 14px;
        }

        .register-link a {
            color: #5b7cfa;
            text-decoration: none;
            font-weight: bold;
        }

        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function togglePassword() {
            var passwordInput = document.getElementById("password");
            var lockIcon = document.getElementById("lockicon");
            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                lockIcon.textContent = "🔓";
            } else {
                passwordInput.type = "password";
                lockIcon.textContent = "🔒";
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="\lms\Adminn\admin\login.php" method="POST">
            <div class="input-box">
                <input type="email" name="email" placeholder="Email" required>
            </div>
            <div class="input-box">
                <input type="password" name="password" placeholder="Password" required id="password">
                <i id="lockicon" onclick="togglePassword()">🔒</i>
            </div>
            <button type="submit" class="btn">Log in</button>
        </form>
        <div class="register-link">
            <p>Don't have an account? <a href="\lms\Registration.php">Register</a></p>
        </div>
    </div>
</body>
</html>
