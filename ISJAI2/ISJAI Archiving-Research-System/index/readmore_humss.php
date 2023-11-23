<?php
include("../php connect/connect.php");
include("../php functions/common_functions.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/readmore.css?v=<?php echo time(); ?>">
    <link href="https://fonts.googleapis.com/css2?family=Gabarito&display=swap" rel="stylesheet">
    <title>Read More</title>
</head>
<body>
    <div class="box">
            <div class="contentbox">
            <button class="back"><a href="../index/stem-page.php">&lt; &nbsp Previous</a></button>
            <?php
                    if(isset($_POST["ID"])) {
                    $id = $_POST["ID"];

                    $select_query = "Select *from `research_humss` where ID = '$id'";
                    $result = mysqli_query($con, $select_query);
                    $row = mysqli_fetch_array($result);
                ?>
                <h1><?php echo $row['Research_Title']; ?></h1>
                <h2>ABSTRACT</h2>
                    <p><?php echo $row['Description']; ?></p>
                <h2>Author</h2>
                    <p><?php echo $row['Author']; ?></p>
                <h2>Date Published</h2>
                    <p><?php echo $row['Date_Added']; ?></p>
                <button class="link"><h3 class="glink"><a target="_blank" href="<?php echo $row['Link']; ?>">Open File Here</a></h3></button>
                    <?php
                        }
                    ?>
            </div>  
    </div>
</body>
</html>