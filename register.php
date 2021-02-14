<?php
include "classes/Database.php";
require ("classes/User.php");

if (session_id() == '') {
    session_start();
}

if (isset($_POST["name"]) && isset($_POST["surname"]) && isset($_POST["email"]) && filter_var($_POST["email"], FILTER_VALIDATE_EMAIL) && isset($_POST["password"]) && isset($_POST["rp_password"])) {
    $name = $_POST["name"];
    $surname = $_POST["surname"];
    $email = $_POST["email"];
    $pass = $_POST["password"];
    $rpPass = $_POST["rp_password"];

    if ($pass != $rpPass) {
        $_SESSION['error'] = "Passwords doesn't match!";
    } else {
        $user = new User();
        $user->setName($name);
        $user->setSurname($surname);
        $user->setEmail($email);
        $user->setRole('patient');
        $user->setPassword($pass);

        $savedUser = $user->saveToDatabase();

        if ($savedUser) {
            $_SESSION['email'] = $savedUser['email'];
            $_SESSION['name'] = $savedUser['name'];
            $_SESSION['surname'] = $savedUser['surname'];
            $_SESSION['role'] = $savedUser['role'];
        } else {
            $_SESSION['error'] = "Can't register with information. Please change something and try again!";
        }
    }
    header('Location: /');
} else {
    $_SESSION['error'] = "Please fill all register fields";
    header('Location: /');
}

