<!-- PHP Connection to database -->
<?php
include('../php connect/connect.php');
include('../php functions/common_functions.php');
?>

<!-- HTML Start --> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISJAI Research Documents</title>
    <link rel="icon" type="image/x-icon" href="../images/logo.png">
    <!-- CSS Links -->
    <link rel="stylesheet" href="../css/dashboard-documents.css">
    <link href="https://fonts.googleapis.com/css2?family=Gabarito:wght@400;500;600&display=swap" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <!-- Aside Sidebar of the Dashboard -->
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
        <!-- Header of the Dashboard -->
        <div class="home-icon">
            <i class='bx bx-menu'></i>
            <span><h1>Research Documents</h1></span>
        </div>
        <!-- Search box -->
        <div class="search-box">
            <label for="search-user">
                <form method="get">
                    <input name="search" type="text" class="search-box" placeholder="">
                    <a href="#"><i class='bx bx-search'></i></a>
                </form>
            </label>
        </div>
    </header>
    <section>
        <!-- STEM Table -->
        <h1 class="stem-data">STEM</h1>
        <table class="data">
            <tr>
                <th>DOCUMENT NO.</th>
                <th>RESEARCH TITLE</th>
                <th>AUTHOR</th>
                <th>DATE ACCESSED</th>
                <th>ACTION</th>
            </tr>
            <tr>
                <!-- PHP Function in searching STEM data -->
                <?php
                    search_stem();
                ?>
            </tr>
        </table>
        <!-- ABM Table -->
        <h1 class="stem-data">ABM</h1>
        <table class="data">
            <tr>
                <th>DOCUMENT NO.</th>
                <th>RESEARCH TITLE</th>
                <th>AUTHOR</th>
                <th>DATE ACCESSED</th>
                <th>ACTION</th>
            </tr>
            <tr>
                <!-- PHP Function in searching ABM data -->
                <?php
                    search_abm();
                ?>
            </tr>
        </table>
        <!-- HUMSS Table -->
        <h1 class="stem-data">HUMSS</h1>
        <table class="data">
            <tr>
                <th>DOCUMENT NO.</th>
                <th>RESEARCH TITLE</th>
                <th>AUTHOR</th>
                <th>DATE ACCESSED</th>
                <th>ACTION</th>
            </tr>
            <tr>
                <!-- PHP Function in searching HUMSS data -->
                <?php
                    search_humms();
                ?>
            </tr>
        </table>
    </section>
</body>
</html>