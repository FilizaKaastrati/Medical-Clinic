<?php
if (session_id() == '') {
    session_start();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="vendors/font-awsome/css/all.css"/>
</head>

<body>

<div>
    <?php include "components/header.php" ?>

    <div id="Maincontent">
        <img src="photos/hero-img-1.jpg" alt=""/>
        <div class="boxes">
            <h4>Neurology</h4>
            <p> Department of Neurology has a team
                of highly trained specialists with vast experience.</p>
            <a href="/medical-clinic/departments.php">Learn More</a>
        </div>
        <div class="boxes">
            <h4>Cardiology</h4>
            <p>Medical Clinic isone of the
                the best Cardiology Hospitals in Hyderabad.</p>
            <a href="/medical-clinic/departments.php">Learn More</a>
        </div>
        <div class="boxes">
            <h4>Orthopedics</h4>
            <p>Health is our greatest treasure and
                with incredible specialists.</p>
            <a href="/medical-clinic/departments.php">Learn More</a>
        </div>


    </div>
    <div class="Appointment">
        <p> Schedule your appointment online</p>

        <a href="html/contact.html" alt="About us" class="btnn btnlink">Book an Aoppointment</a>
    </div>
    <div class="Content">
        <p>Sign up for our newsletter</p>
        <form method="POST" action="newsletter.php">
            <input id="email" placeholder="Enter your email here" type="email" name="email" required>
            <button id="button" type="submit">Subscribe</button>
        </form>
    </div>
</div>
<footer>
    <div class="footer">
        <p>@UBT 2020.</p>
    </div>
</footer>
</body>
</html>
