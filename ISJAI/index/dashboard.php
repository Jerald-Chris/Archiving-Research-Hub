<!-- PHP Connection to database -->
<?php
session_start();
include('../php connect/connect.php');
include('../php functions/common_functions.php');
if(!isset($_SESSION['admin_name'])) {
    header('location: login.php');
}
?>

<!-- HTML Start -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISJAI ADMIN DASHBOARD</title>
    <!-- CSS Links -->
    <link rel="stylesheet" href="../css/dashboard-styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Gabarito:wght@400;500;600&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <!-- Sidebar of the dashboard -->
    <aside>
        <nav>
            <div class="home-sidebar">
                <a href="./dashboard.php" class="logo"><img src="../images/logo.png" alt="ISJAI Logo"></a>
                <span class="logo-name">ISJAI</span>
            </div>
            <div class="sidebar">
                <ul class="sidebar-items">
                    <li><a href="./dashboard.php" class="records"><i class='bx bxs-data'></i><span class="record-li">Student Records</span></a></li>
                    <li><a href="./dashboard-documents.php" class="docs"><i class='bx bxs-file'></i><span class="docs-li">Research Documents</span></a></li>
                    <li><a href="add_stem.php" class="adding"><i class='bx bxs-user-circle'></i><span class="add-li">Add STEM Documents</span></a></li>
                    <li><a href="add_abm.php" class="adding"><i class='bx bxs-user-circle'></i><span class="add-li">Add ABM Documents</span></a></li>
                    <li><a href="add_humms.php" class="adding"><i class='bx bxs-user-circle'></i><span class="add-li">Add HUMMS Documents</span></a></li>
                    <li><a href="./dashboard-user.php" class="user"><i class='bx bxs-user-circle'></i><span class="user-li">User</span></a></li>
                    <li><a href="./login.php" class="log-out"><i class='bx bxs-exit'></i><span class="log-out-li">Log out</span></a></li>
                </ul>
            </div>
        </nav>
    </aside>
    <header>
        <!-- Header of Dashboard -->
        <div class="home-icon">
            <i class='bx bx-menu'></i>
            <span><h1>Admin Dashboard</h1></span>
        </div>
        <!-- Search box of the header -->
        <div class="search-box">
            <label for="search-user">
                <input type="type" class="search-box" placeholder="">
                <a href="#"><i class='bx bx-search'></i></a>
            </label>
        </div>
    </header>
    <!-- Table -->
    <section>
        <table class="data">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>RESEARCH TITLE</th>
                <th>DATE ACCESSED</th>
            </tr>
            <tr>
                <td>01</td>
                <td>Dela Cruz, Juan</td>
                <td>Study...</td>
                <td>November 3, 2023</td>
            </tr>
            <tr>
                <td>02</td>
                <td>Dela Cruz, Juan</td>
                <td>Study...</td>
                <td>November 3, 2023</td>
            </tr>
            <tr>
                <td>03</td>
                <td>Dela Cruz, Juan</td>
                <td>Study...</td>
                <td>November 3, 2023</td>
            </tr>
            <tr>
                <td>04</td>
                <td>Dela Cruz, Juan</td>
                <td>Study...</td>
                <td>November 3, 2023</td>
            </tr>
            <tr>
                <td>05</td>
                <td>Dela Cruz, Juan</td>
                <td>Study...</td>
                <td>November 3, 2023</td>
            </tr>
            <tr>
                <td>06</td>
                <td>Dela Cruz, Juan</td>
                <td>Study...</td>
                <td>November 3, 2023</td>
            </tr>
            <tr>
                <td>07</td>
                <td>Dela Cruz, Juan</td>
                <td>Study...</td>
                <td>November 3, 2023</td>
            </tr>
            <tr>
                <td>08</td>
                <td>Dela Cruz, Juan</td>
                <td>Study ...</td>
                <td>November 3, 2023</td>
            </tr>
            <tr>
                <td>09</td>
                <td>Dela Cruz, Juan</td>
                <td>Study...</td>
                <td>November 3, 2023</td>
            </tr>
            <tr>
                <td>10</td>
                <td>Dela Cruz, Juan</td>
                <td>Study...</td>
                <td>November 3, 2023</td>
            </tr>
        </table>
    </section>
</body>
</html>