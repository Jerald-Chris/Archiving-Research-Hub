<!-- PHP Connection to database -->
<?php
session_start();
include('../php connect/connect.php');
include('../php functions/common_functions.php');
$select_query = "Select *from `user_registration`";
$result = mysqli_query($con, $select_query);
$row = mysqli_fetch_assoc($result);
?>

<!-- HTML Start -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISJAI User</title>
    <!-- CSS Links -->
    <link rel="icon" type="image/x-icon" href="../images/logo.png">
    <link rel="stylesheet" href="../css/dashboard-user.css">
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
        <!-- Main Section of the Dashboard (Admin Details) -->
        <div class="home-icon">
            <i class='bx bx-menu'></i>
            <span><h1>User Details</h1></span>
        </div>
    </header>
    <section>
        <div class="about-user">
            <h2 class="admin-name">Admin Name: <?php echo $_SESSION['admin_name']; ?></h2>
            <h2 class="admin-name">Email Address: <?php echo $_SESSION['email'];?></h2>
        </div>
    </section>
</body>
</html>