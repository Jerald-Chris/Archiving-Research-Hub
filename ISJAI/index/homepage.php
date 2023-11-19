<!-- PHP Connection to database -->
<?php
session_start();
include('../php connect/connect.php');
include('../php functions/common_functions.php');
if(!isset($_SESSION['user_name'])) {
    header('location: login.php');
}
?>

<!-- HTML Start -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ISJAI Research Hub</title>
    <!-- CSS Links -->
    <link rel="icon" type="image/x-icon" href="../images/logo.png">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="../css/home-styles.css" rel='stylesheet'>
</head>
<body> 
    <header> <!--Header Part of the Homepage-->
        <nav>
            <a href="../index/homepage.php" class="home"><img src="../images/logo.png" class="logo" alt="ISJAI Logo"></a>
            <span class="header-title"><h1>ISJAI Research Hub</h1><br><p>Senior High School Department</p></span>
            <img src="../images/user.png" alt="User" class="user" onclick="toggleMenu()">

            <!-- Drop-down menu of the header -->
            <div class="sub-menu-wrap" id="subMenu">
                <div class="sub-menu">
                    <div class="user-info">
                        <img src="../images/logo.png" alt="ISJAI Logo">
                        <h3><?php echo $_SESSION['user_name']?></h3>
                    </div>
                    <hr>
                    <a href="./login.php" class="log-out"><i class='bx bxs-exit'></i><p>Log out</p></a>
                </div>
            </div>
        </nav>
    </header>
    <section>
        <div class="strands">
            
            <!--Middle Section of the Homepage (Specialization Tracks- STEM, ABM, and HUMSS)-->
            <div class="strand-cards">
                <ul>
                    <li><a href="../index/stem-page.php"><i class='bx bx-hard-hat'></i></a>
                        <h6>STEM</h6><label class="stem">Science, Technology, <br>Engineering and Mathematics</label></li>
                    <li><a href="../index/abm-page.php"><i class='bx bx-credit-card-alt'></i></a>
                        <h6>ABM</h6><label class="abm">Accountancy, Business<br>and Management</label></li>
                    <li><a href="../index/humss-page.php"><i class='bx bx-book-reader'></i></a>
                        <h6>HUMSS</h6><label class="humss">Humanities and<br>Social Sciences</label></li>
                </ul>
            </div>
        </div>
    </section>
    <footer>
        <!--Footer Part of the Homepage (ISJAI quote, Copyright Statements, and Contacts)-->
        <div class="quote">
            <h3><b>SERVE THE INTEREST OF JESUS, LIKE ST. JOSEPH.</b></h3>
            <p>© IBAAN SAINT JAMES ACADEMY. ALL RIGHTS RESERVED.</p>
        <div class="social-media">
            <ul class="socials">
                <li><a href="https://www.facebook.com/sjalibrary"><i class='bx bxl-facebook-circle'></i></a></li>
                <li><a href="sjalibrary15@gmail.com"><i class='bx bxs-envelope' ></i></a></li>
                <li><a href="#"><i class='bx bxs-phone'></i></a></li>
            </ul>
            </div>
        </div>
    </footer>

    <!-- Javascript for user-menu -->
    <script src="../js/user-menu.js"></script>
</body>
</html>