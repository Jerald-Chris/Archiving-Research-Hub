<!-- PHP Connection to database -->
<?php
session_start();
include('../php connect/connect.php');
include('../php functions/common_functions.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HUMSS | ISJAI Research Hub</title>
    <link rel="icon" type="image/x-icon" href="../images/logo.png">
    <!-- CSS Links -->
    <link rel="stylesheet" href="../css/strands-styles.css?<?php echo time(); ?>">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
</head>
<body>
    <!-- Navigation part of the Homepage -->
    <nav class="nav">
        <i class="uil uil-bars navOpenBtn"></i>
        <a href="../index/homepage.php" class="logo"><img src="../images/logo.png" alt="ISJAI Logo"></a>
        <ul class="nav-link">
          <i class="uil uil-times navCloseBtn"></i>
          <span class="header-title"><h1>ISJAI Research Hub</h1><br><p>Senior High School Department</p></span>
        </ul>
        <!-- Search box -->
        <i class="uil uil-search search-icon" id="searchIcon"></i>
        <div class="search-box">
            <form action="" method="get">
                <input name="search" type="text" id="search" placeholder="Search here..." />
            </form>
        </div>
        <!-- Drop down menu (username, logout) -->
        <img src="../images/user.png" alt="User" class="user" onclick="toggleMenu()">
            <div class="sub-menu-wrap" id="subMenu">
                <div class="sub-menu">
                    <div class="user-info">
                        <img src="../images/logo.png" alt="ISJAI Logo">
                        <h3><?php echo $_SESSION['user_name']?></h3>
                    </div>
                    <hr>
                    <a href="logout.php" class="log-out" onclick="return confirm('Are you sure you want to Log Out?')"><p>Log out</p></a>
                </div>
            </div>
      </nav>
      <!-- Main section of the Homepage -->
    <section class="title-page">
    <div class="title-page">
        <h1>HUMSS</h1>
        <p>Humanities and Social Sciences</p>
    </div>
    </section>
    <!-- Swiper Container -->
    <section>
        <div class=" swiper mySwiper container">
            <div class="swiper-wrapper content">
                <!-- PHP Connection to Swiper.js -->
                <?php
                    search_humms_hp();
                    display_humms_home();
                ?>
            </div> 
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
    </section>
    <!-- Javascript Links -->
    <script src="../js/swiper.js"></script>
    <script src="../js/swipe.js"></script>
    <script src="../js/search.js" defer></script>
    <script src="../js/user-menu.js"></script>
</body>
</html>