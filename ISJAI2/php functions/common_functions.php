<?php 
//register function
function register(){
  global $con;
  if(isset($_POST['register-submit'])){
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $usertype = $_POST['usertype-choice'];


    //if email already exist in the database
    $select_query = "Select *from `user_registration` where Email = '$email'";
    $result = mysqli_query($con, $select_query);
    $rows_count = mysqli_num_rows($result);
    if($rows_count>0){
        echo "<script> alert('Email already exist')</script>";
    }
    else{
        //insert data to database
        $insert_query = "insert into `user_registration` (Name, Email, Password, User_Type)
        values ('$name', '$email', '$password', '$usertype')";
        $sql_execute = mysqli_query($con, $insert_query);
        echo"<script> alert('Successfully Registered')</script>";
        echo "<script> window.open('login.php', '_self')</script>";
    }
}
}


//login function
function login(){
  global $con;
  if(isset($_POST['register-submit'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    //condition if email exist and correct
    $select = "SELECT *FROM `user_registration` WHERE Email = '$email' AND Password = '$password'";
    $result = mysqli_query($con, $select);
    $rows_count = mysqli_num_rows($result);
    if($rows_count>0) {
        $row = mysqli_fetch_array($result);
        
        if($row["User_Type"] == 'Student') {
          $_SESSION['user_name'] = $row['Name'];
          header('Location: homepage.php');

    }else{
      echo "<script> alert('Incorrect Email or Password')</script>";
//if email and password is wrong
}
}
} 
}    



//add documents
function add_STEM(){
  global $con;
  if(isset($_POST['register_submit'])){
    $title = $_POST['title'];
    $author = $_POST['author'];
    $image = $_POST['res_img'];
    $strand = $_POST['strand'];

    //condition if research title already exist
    $select_query = "Select *from `research_stem` where Research_Title = '$title'";
    $result = mysqli_query($con, $select_query);
    $rows_count = mysqli_num_rows($result);
    if($rows_count>0){
        echo "<script> alert('Research already exist')</script>";
    }
    else{
        //insert research files
        $insert_query = "insert into `research_stem` (Research_Title, Author, Research_Image, Strand, Date_Added)
        values ('$title', '$author', '$image', '$strand', NOW())";
        $sql_execute = mysqli_query($con, $insert_query);
        echo"<script> alert('Successfully Added')</script>";
    }
}
}

function add_ABM(){
  global $con;
  if(isset($_POST['register_submit'])){
    $title = $_POST['title'];
    $author = $_POST['author'];
    $image = $_POST['res_img'];
    $strand = $_POST['strand'];

    //condition if research title already exist
    $select_query = "Select *from `research_abm` where Research_Title = '$title'";
    $result = mysqli_query($con, $select_query);
    $rows_count = mysqli_num_rows($result);
    if($rows_count>0){
        echo "<script> alert('Research already exist')</script>";
    }
    else{
        //insert research files
        $insert_query = "insert into `research_abm` (Research_Title, Author, Research_Image, Strand, Date_Added)
        values ('$title', '$author', '$image', '$strand', NOW())";
        $sql_execute = mysqli_query($con, $insert_query);
        echo"<script> alert('Successfully Added')</script>";
    }
}
}

function add_HUMMS(){
  global $con;
  if(isset($_POST['register_submit'])){
    $title = $_POST['title'];
    $author = $_POST['author'];
    $image = $_POST['res_img'];
    $strand = $_POST['strand'];

    //condition if research title already exist
    $select_query = "Select *from `research_humss` where Research_Title = '$title'";
    $result = mysqli_query($con, $select_query);
    $rows_count = mysqli_num_rows($result);
    if($rows_count>0){
        echo "<script> alert('Research already exist')</script>";
    }
    else{
        //insert research files
        $insert_query = "insert into `research_humss` (Research_Title, Author, Research_Image, Strand, Date_Added)
        values ('$title', '$author', '$image', '$strand', NOW())";
        $sql_execute = mysqli_query($con, $insert_query);
        echo"<script> alert('Successfully Added')</script>";
    }
}
}

//search function
function search_stem(){
  global $con;
  if(isset($_GET['search'])){
    //condition para ma search by research title at author
    $filtervalues = $_GET['search'];
    $select_query = "Select *from `research_stem` where CONCAT(Research_Title, Author, Strand) LIKE '%$filtervalues%'";
    $query_run = mysqli_query($con, $select_query);

    //to display in table
    if(mysqli_num_rows($query_run) > 0){
        foreach($query_run as $row){
          
          ?>
            <tr>
                <td><?php echo $row['Research_Title']; ?></td>
                <td><?php echo $row['Author']; ?></td>
                <td><?php echo $row['Date_Added']; ?></td>
                <td>
                      <button class="delete"><a href="../index/delete.php?ID=<?php echo $row['ID']; ?>" onclick="return confirm('Are you sure you want to Log Out?')">Delete</a></button>
                </td>
            </tr>
          <?php
        }   
    }
  }
}

function search_humms(){
  global $con;
  if(isset($_GET['search'])){
    //condition para ma search by research title at author
    $filtervalues = $_GET['search'];
    $select_query = "Select *from `research_humss` where CONCAT(Research_Title, Author, Strand) LIKE '%$filtervalues%'";
    $query_run = mysqli_query($con, $select_query);

    //to display in table
    if(mysqli_num_rows($query_run) > 0){
        foreach($query_run as $row){
          
          ?>
            <tr>
                <td><?php echo $row['Research_Title']; ?></td>
                <td><?php echo $row['Author']; ?></td>
                <td><?php echo $row['Date_Added']; ?></td>
                <td>
                      <button class="delete"><a href="../index/delete.php?ID=<?php echo $row['ID']; ?>" onclick="return confirm('Are you sure you want to Log Out?')">Delete</a></button>
                </td>
            </tr>
          <?php
        }   
    }
  }
}

function search_abm(){
  global $con;
  if(isset($_GET['search'])){
    //condition para ma search by research title at author
    $filtervalues = $_GET['search'];
    $select_query = "Select *from `research_abm` where CONCAT(Research_Title, Author, Strand) LIKE '%$filtervalues%'";
    $query_run = mysqli_query($con, $select_query);

    //to display in table
    if(mysqli_num_rows($query_run) > 0){
        foreach($query_run as $row){
          
          ?>
            <tr>
                <td><?php echo $row['Research_Title']; ?></td>
                <td><?php echo $row['Author']; ?></td>
                <td><?php echo $row['Date_Added']; ?></td>
                <td>
                      <button class="delete"><a href="../index/delete.php?ID=<?php echo $row['ID']; ?>" onclick="return confirm('Are you sure you want to Log Out?')">Delete</a></button>
                </td>
            </tr>
          <?php
        }   
    }
  }
}

function display_dash_doc(){
  global $con;
  $select_query = "Select *from `research_documents`";
  $result = mysqli_query($con, $select_query);
    while ($row = mysqli_fetch_assoc($result)) {
      ?>
            <tr>
                <td><?php echo $row['Research_Title']; ?></td>
                <td><?php echo $row['Author']; ?></td>
                <td><?php echo $row['Date_Added']; ?></td>
                
            </tr>
          <?php
    }

}

//display documents in stud dashboard
function display_stem_home(){
  global $con;
  $select_query = "Select *from `research_stem`";
  $result = mysqli_query($con, $select_query);
    while ($row = mysqli_fetch_assoc($result)) {
        ?>
      <div class="swiper-slide card">
        <div class="card-content">
            <div class="image">
                <img src="../images/pdf-holder.png" alt="pdf">
            </div>
        <div class="title">
            <span class="research-title"><?php echo $row['Research_Title'];?></span>
            <span class="author"><?php echo $row['Author']; ?></span>
        </div>
        <div class="button">
            <button class="viewMore"><a href="../index/readmore_stem.php">View more</a></button>
        </div>
        </div>
      </div>
        <?php
            }
}

function display_abm_home(){
  global $con;
  $select_query = "Select *from `research_abm`";
  $result = mysqli_query($con, $select_query);
    while ($row = mysqli_fetch_assoc($result)) {
        ?>
      <div class="swiper-slide card">
        <div class="card-content">
            <div class="image">
                <img src="../images/pdf-holder.png" alt="pdf">
            </div>
        <div class="title">
            <span class="research-title"><?php echo $row['Research_Title'];?></span>
            <span class="author"><?php echo $row['Author']; ?></span>
        </div>
        <div class="button">
            <button class="viewMore"><a href="../index/readmore_abm.php">View more</a></button>
        </div>
        </div>
      </div>
        <?php
            }
}

function display_humms_home(){
  global $con;
  $select_query = "Select *from `research_humss`";
  $result = mysqli_query($con, $select_query);
    while ($row = mysqli_fetch_assoc($result)) {
        ?>
      <div class="swiper-slide card">
        <div class="card-content">
            <div class="image">
                <img src="../images/pdf-holder.png" alt="pdf">
            </div>
        <div class="title">
            <span class="research-title"><?php echo $row['Research_Title'];?></span>
            <span class="author"><?php echo $row['Author']; ?></span>
        </div>
        <div class="button">
            <button class="viewMore"><a href="../index/readmore_humss.php">View more</a></button>
        </div>
        </div>
      </div>
        <?php
            }
}

//search in hp
function search_stem_hp(){
  global $con;
  if(isset($_GET['search'])){
    $filtervalues = $_GET['search'];
    $select_query = "Select *from `research_stem` where CONCAT(Research_Title, Author) LIKE '%$filtervalues%'";
    $result = mysqli_query($con, $select_query);

    if(mysqli_num_rows($result) > 0){
      foreach($result as $row){
        ?>
      <div class="swiper-slide card">
        <div class="card-content">
            <div class="image">
                <img src="../images/pdf-holder.png" alt="pdf">
            </div>
        <div class="title">
            <span class="research-title"><?php echo $row['Research_Title']; ?></span>
            <span class="author"><?php echo $row['Author']; ?></span>
        </div>
        <div class="button">
            <button class="viewMore"><a href="../index/readmore.php">View more</a></button>
        </div>
        </div>
      </div>
        <?php
      }     
}
}
}

function search_abm_hp(){
  global $con;
  if(isset($_GET['search'])){
    $filtervalues = $_GET['search'];
    $select_query = "Select *from `research_abm` where CONCAT(Research_Title, Author) LIKE '%$filtervalues%'";
    $result = mysqli_query($con, $select_query);

    if(mysqli_num_rows($result) > 0){
      foreach($result as $row){
        ?>
      <div class="swiper-slide card">
        <div class="card-content">
            <div class="image">
                <img src="../images/pdf-holder.png" alt="pdf">
            </div>
        <div class="title">
            <span class="research-title"><?php echo $row['Research_Title']; ?></span>
            <span class="author"><?php echo $row['Author']; ?></span>
        </div>
        <div class="button">
            <button class="viewMore"><a href="../index/readmore.php">View more</a></button>
        </div>
        </div>
      </div>
        <?php
      }     
}
}
}

function search_humms_hp(){
  global $con;
  if(isset($_GET['search'])){
    $filtervalues = $_GET['search'];
    $select_query = "Select *from `research_humms` where CONCAT(Research_Title, Author) LIKE '%$filtervalues%'";
    $result = mysqli_query($con, $select_query);

    if(mysqli_num_rows($result) > 0){
      foreach($result as $row){
        ?>
      <div class="swiper-slide card">
        <div class="card-content">
            <div class="image">
                <img src="../images/pdf-holder.png" alt="pdf">
            </div>
        <div class="title">
            <span class="research-title"><?php echo $row['Research_Title']; ?></span>
            <span class="author"><?php echo $row['Author']; ?></span>
        </div>
        <div class="button">
            <button class="viewMore"><a href="../index/readmore.php">View more</a></button>
        </div>
        </div>
      </div>
        <?php
      }     
}
}
}


function delete(){
  global $con;

  $select_query = "Select *from `research_stem`";
  $result = mysqli_query($con, $select_query);
  $row = mysqli_fetch_assoc($result);
  
  if(isset($_GET['delete'])){
    $id = $row['ID'];

    $delete_query = "Delete *from `research_stem` where ID = '$id'";
    $delete_run = mysqli_query($con, $delete_query);

    if($delete_run){
      echo "<script> alert('Data Deleted'); </script>";
      header("location: ../index/dashboard-documents.php");
    }else{
      echo "<script> alert('Data Not Deleted'); </script>";
    }
}
}



function search_student(){
  global $con;
  if(isset($_GET['search'])){
    //condition para ma search by research title at author
    $filtervalues = $_GET['search'];
    $select_query = "Select *from `user_registration` where CONCAT(Name) LIKE '%$filtervalues%'";
    $query_run = mysqli_query($con, $select_query);

    //to display in table
    if(mysqli_num_rows($query_run) > 0){
        foreach($query_run as $row){
          ?>
            <tr>
                <td><?php echo $row['Name']; ?></td>
                <td><?php echo $row['Email']; ?></td>
                <td><?php echo $row['User_Type']; ?></td>
                <td>
                      <button><a href="delete_student.php?id=<?php echo $row['id']; ?>">Delete</a></button>
                </td>
            </tr>
                <?php
          
        }
    }
  }
}
?>


