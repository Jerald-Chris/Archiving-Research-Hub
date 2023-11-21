<!--Connect to Database-->
<?php
session_start();
include('../php connect/connect.php');
include('../php functions/common_functions.php');
add_STEM();
?>

<!-- HTML Start -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Documents | ISJAI Research Hub</title>
    <!-- CSS Links -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="../css/add_docu.css" rel='stylesheet'>
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
    <!-- Main Section of the Dashboard -->
    <section class="main">
        <div class="wrapper">
            <!-- ADD STEM DOCUMENT Form -->
            <div class="login-form">
                <h1>ADD DOCUMENT</h1>
                <form action="" method="post">
                    <!-- Research Title Input of the Form -->
                    <div class="input-box">
                    <i class='bx bxs-envelope'>
                        </i><input type="text" name="title" class="space" placeholder="Research Title" required autocomplete="off">
                    </div>
                    <!-- Research Author Input of the Form -->
                    <div class="input-box">
                        <i class='bx bxs-user-circle'></i><input type="text" name="author" class="space" placeholder="Author" required autocomplete="off">
                    </div>
                     <!-- Research Insert File of the Form -->
                    <div class="file-box">
                        <input type="file" name="res_img" class="space" placeholder="Insert Image" required>
                    </div>
                     <!-- Research Strand Choice of the Form -->
                    <div class="input-box-type">
                        <i class='bx bxs-file-pdf'></i>
                        <label>RESEARCH STRAND:</label>
                        <input list="usertype-opts" id="usertype-choice" name="strand" class="space" placeholder="STEM | ABM | HUMMS" required>
                        <datalist id="usertype-opts">
                            <option value="STEM">STEM</option>
                            <option value="ABM">ABM</option>
                            <option value="HUMMS">HUMMS</option>
                       </datalist>
                    </div>
                     <!-- Submit Button of the Form -->
                    <div class="submit">
                        <button name="register_submit" type="submit">SUBMIT</button>
                    </div>
                    <!-- Return to Dashboard -->
                    <div class="return_dash">
                        <p>Return to Dashboard? |<a href="./dashboard.php">&nbsp Return</a></p>
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