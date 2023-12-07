<!-- Delete Record --> 
<?php
include("../php connect/connect.php");
$id=$_GET['ID'];
$id1=$_GET['id'];
mysqli_query($con, "delete from `research_stem` where ID = '$id'");
header("location: dashboard-documents.php");
mysqli_query($con, "delete from `research_abm` where ID = '$id'");
header("location: dashboard-documents.php");
mysqli_query($con, "delete from `research_humms` where ID = '$id'");
header("location: dashboard-documents.php");
mysqli_query($con, "delete from `user_registration` where id = '$id1'");
header("location: dashboard.php");
?>
