<?php
include("../php connect/connect.php");
$select_query = "Select *from `research_abm`";
$result = mysqli_query($con, $select_query);
$row = mysqli_fetch_array($result);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/readmore.css">
    <link href="https://fonts.googleapis.com/css2?family=Gabarito&display=swap" rel="stylesheet">
    <title>Read More</title>
</head>
<body>
    <div class="box">
        <div class="picbox"></div>
                <?php
                    if($row>0){
                ?>
            <div class="contentbox">
                <h1><?php echo $row['Research_Title']; ?></h1>
                <h2>ABSTRACT</h2>
                    <p>There is a great need to identify and develop positive attitude towards science subject of student teachers. The time has
                        come to increase our efforts to develop positive attitude towards science subject among teachers, student teachers
                        and school children. This is an immediate requirement of the present day. This paper reports on attitude of student
                        teachers towards science with respect to their locality of the college. The sample consists of 1080 student teachers of
                        Madurai revenue district. A scale on attitude towards science was used to get the data from the student teachers.
                        Percentage Analysis, Mean, Standard Deviation and ’t'tests were used for analyzing the data. The results showed that
                        there is no significant difference in attitude towards science of urban and rural student teachers.
                        Keywords: Attitude Towards Science, Student Teachers, Locality of the College</p>
                <h2>Author</h2>
                    <p><?php echo $row['Author']; ?></p>
                <h2>Date Published</h2>
                    <p><?php echo $row['Date_Added']; ?></p>
            </div>
            <?php
                    }
            ?>
    </div>
</body>
</html>