<!DOCTYPE html>
<head>
    <title>Registration foam</title>
    <link rel="stylesheet" href="styleR.css">
</head>
<body>
    <div class="container">
        <div class="title">Registration</div>
        <form action="\lms\Adminn\admin\register.php" method="post">
    <div class="user-details">
        <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" name="first_name" placeholder="Enter your name" required>
        </div>
        <div class="input-box">
            <span class="details">Second Name</span>
            <input type="text" name="second_name" placeholder="Enter your username" required>
        </div>
        <div class="input-box">
            <span class="details">Email</span>
            <input type="text" name="email" placeholder="Enter your email" required>
        </div>
        <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" name="phone_number" placeholder="Enter your number" required>
        </div>
        <div class="input-box">
            <span class="details">Password</span>
            <input type="password" name="password" placeholder="Enter your password" required>
        </div>
        <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="password" name="confirm_password" placeholder="Confirm your password" required>
        </div>
    </div>
    <div class="gender-detail">
        <input type="radio" name="gender" id="dot-1" value="Male" required>
        <input type="radio" name="gender" id="dot-2" value="Female">
        <input type="radio" name="gender" id="dot-3" value="Prefer not to say">
        <span class="genter-title">Gender</span>
        <div class="category">
            <label for="dot-1">
                <span class="dot one"></span>
                <span class="gender">Male</span>
            </label>
            <label for="dot-2">
                <span class="dot two"></span>
                <span class="gender">Female</span>
            </label>
            <label for="dot-3">
                <span class="dot three"></span>
                <span class="gender">Prefer not to say</span>
            </label>
        </div>
    </div>
    <div class="input-box">
        <span class="details">Role</span>
        <select name="role" required>
            <option value="student">Student</option>
            <option value="instructor">Instructor</option>
            <option value="Admin">Admin</option>
        </select>
    </div>
    <div class="button">
        <input type="submit" value="Register">
    </div>
</form>
