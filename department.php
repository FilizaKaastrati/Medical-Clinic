<?php
include "classes/Database.php";

require("classes/Department.php");

if (session_id() == '') {
    session_start();
}
$id = $_GET['id'];
if (!isset($id)) {
    $_SESSION['error'] = 'Please specify department id.';
    header('Location: /departments.php');
    exit();
}
$department = Department::getById($id);

if (!$department) {
    $_SESSION['error'] = 'Department does not exist!';
    header('Location: /departments.php');
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="./css/style.css"/>
    <link rel="stylesheet" href="./vendors/font-awsome/css/all.css"/>

</head>

<body>
<header>
    <?php include "components/header.php" ?>
    <div class="page-title">
        <h2 class="h1-aboutus"><?php echo $department['title'] ?></h2>
    </div>
</header>
<div class="about-section">
    <div class="section-col text-right">
        <?php
        if ($department['photo']) {
            echo '<img class="aboutus-img" src="' . $department['photo'] . '" alt=""/>';
        } else {
            echo '<img class="aboutus-img" src="/photos/Neurology2.jpg" alt=""/>';
        }
        ?>

    </div>
    <div class="section-col text-left">
        <p class="about-medical">The best care</p>
        <p class="p-about-us"><?php echo $department['description']; ?> </p>
        <br>
        <a href="/medical-clinic/contact.php" class=" btnlink btn2">Book an Appointment</a>
    </div>
</div>
<br>
<footer>
    <div class="footer">
        <p>@UBT 2020.</p>
    </div>
</footer>
</body>
</html>
