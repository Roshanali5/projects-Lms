<?php
session_start();
session_unset();
session_destroy();
header("Location: \lms\login.php"); // ✅ Sahi redirect
exit();
?>
