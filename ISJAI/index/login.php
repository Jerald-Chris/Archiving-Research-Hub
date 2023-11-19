<!--Connect to Database-->
<?php
session_start();
include('../php connect/connect.php');
include('../php functions/common_functions.php');
login();
?>

<!--HTML Start -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | ISJAI Research Hub</title>

    <!-- CSS Links -->
    <link rel="icon" type="image/x-icon" href="../images/logo.png">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="../css/login-styles.css?v=<?php echo time(); ?>" rel='stylesheet'>
</head>

<body> 
    <header> <!--Header Part of the Homepage-->
        <nav>
            <div class="header-page">
                <img src="../images/logo.png" alt="ISJAI">
                <h3>ISJAI Research Hub</h3>
                <p>SEÑIOR HIGH SCHOOL DEPARTMENT</p>
            </div>
        </nav>
    </header>

<!-- Main Section of the Webpage -->
    <section class="main">
        <div class="wrapper">
            <!-- Login Form -->
            <div class="login-form">
                <h1>STUDENT LOGIN</h1>
                <form action="#" method="post">
                    <div class="input-box">
                        <!-- Email Input of the Form -->
                        <i class='bx bxs-envelope'></i><input type="email" name="email" class="space" placeholder="Enter Email Address:" required autocomplete="@gmail.com">
                    </div>
                    <div class="input-box">
                        <!-- Password Input of the Form -->
                        <i class='bx bxs-lock-alt'></i><input type="password" name="password" class="space" placeholder="Enter Password:" required>
                    </div>
                    <div class="submit">
                        <!-- Submit Button of the Form -->
                        <button name="register-submit" type="sumbit">LOGIN</button>
                    </div>
                    <!-- If no account else redirect to register form -->
                    <div class="login-register">
                        <p>Don't have an account? |<a href="./register.php"> Register</a> | <a href="./login-admin.php"> Admin Login</a></p>
                    </div>
                </form>
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
</body>
</html>
