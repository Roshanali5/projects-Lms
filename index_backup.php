<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title> 
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="Stylehome.css">
    <style>
        /* Main dashboard area */
.main-dashboard {
  margin-left: 3px; /* sidebar ki width ke barabar */
  padding: 30px;
  background-color: #f4f4f4;
  min-height: 100vh;
}

/* Dashboard title */
.dashboard-title {
  font-size: 28px;
  font-weight: bold;
  margin-bottom: 20px;
  color: #333;
}

/* Cards container */
.card-container {
  display: flex;
  flex-wrap: wrap;
  gap: 20px;
  margin-bottom: 20px;
}

/* Each card */
.card {
  background-color: white;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
  flex: 1 1 250px;
  text-align: center;
}

.card h2 {
  font-size: 18px;
  color: #555;
  margin-bottom: 10px;
}

.card p {
  font-size: 32px;
  font-weight: bold;
  color: #007BFF;
}

/* Welcome box */
.welcome-box {
  background-color: white;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
}

.welcome-box h2 {
  font-size: 22px;
  color: #333;
  margin-bottom: 10px;
}

.welcome-box p {
  color: #666;
}

/* Responsive - Mobile View */
@media (max-width: 768px) {
  .main-dashboard {
    margin-left: 0;
    padding: 20px;
  }

  .card-container {
    flex-direction: column;
  }

  .card {
    width: 100%;
  }
}

    </style>
</head>
<body>

<!-- Header -->
<header class="header">
    <section class="flex">
        <a href="Home.html" class="logo">Educa.</a>

        <form action="" method="post" class="Search-form">
            <input type="text" name="Search-box" placeholder="Search courses..." required maxlength="100">
            <button type="submit" class="fas fa-search" name="Search-box"></button>
        </form>

        <div class="icon">
            <div id="menu-btn" class="fas fa-bars"></div>
            <div id="user-btn" class="fas fa-user"></div>
        </div>

        <div class="profile">
            <img src="imgprofile.jpeg" alt="Profile image">
            <h3>Login</h3>
            <span>Student, Teacher, Admin</span>
            <a href="#" class="btn">View profile</a>
            <div class="flex-btn">
            <a href="\lms\login.php" class="option-btn">Login</a>
            <a href="\lms\Registration.php" class="option-btn">Register</a>
            </div>
        </div>
    </section>
</header>

<!-- Sidebar -->
<div class="side-bar">
    <div class="profile">
        <img src="imgprofile.jpeg" alt="Profile image">
        <h3>Login</h3>
        <span>Student, Teacher, Admin</span>
        <a href="#" class="btn">View profile</a>
        <a href="\lms\login.php" class="option-btn">Login</a>
        <a href="\lms\Registration.php" class="option-btn">Register</a>
    </div>

    <nav class="navbar">
        <a href="#"><i class="fas fa-home"></i><span>Dashboard</span></a>
        <a href="\lms\login.php"><i class="fa-solid fa-chalkboard-user"></i><span>Teacher</span></a>
        <a href="\lms\login.php"><i class="fa-solid fa-graduation-cap"></i><span>Student</span></a>
        <a href="\lms\Adminn\admin.php"><i class="fa-solid fa-user-tie"></i><span>Admin</span></a>
    </nav>
</div>
  <!-- Dashboard Content -->
  <div class="main-dashboard">
      <div class="dashboard-title">Dashboard</div>

      <div class="card-container">
        <div class="card">
          <h2>Total Students</h2>
          <p>120</p>
        </div>
        <div class="card">
          <h2>Total Submissions</h2>
          <p>350</p>
        </div>
      </div>

      <div class="welcome-box">
        <h2>Welcome, Teacher , Student, Admin!</h2>
        <p>Hope you’re having a productive day. Here’s your dashboard overview.</p>
      </div>
    </div>
  </div>

<!-- JS -->
<script>
    let menuBtn = document.querySelector('#menu-btn');
    let sideBar = document.querySelector('.side-bar');

    menuBtn.onclick = () => {
        sideBar.classList.toggle('active');
        document.body.classList.toggle('sidebar-active');
    };
</script>

<script src="home.js"></script>

</body>
</html>
