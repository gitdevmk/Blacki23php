<?php

if (session_id() == '' || !isset($_SESSION)) {
    session_start();
}

include 'config.php';

// Logout functionality
if (isset($_GET['logout'])) {
    // Clear all session variables
    $_SESSION = array();

    // Destroy the session
    session_destroy();

    // Clear the Remember Me cookie (if set)
    if (isset($_COOKIE['remember_user'])) {
        setcookie('remember_user', '', time() - 3600, '/');
    }

    // Redirect to the login page after logout
    header("location: login.php");
    exit(); // Stop script execution after sending header
}

$username = $_POST["username"];
$password = $_POST["pwd"];
$remember = isset($_POST["remember"]) ? $_POST["remember"] : false;

$result = $mysqli->query('SELECT id, email, password, fname, type from users order by id asc');

if ($result === FALSE) {
    die(mysql_error());
}

if ($result) {
    while ($obj = $result->fetch_object()) {
        if ($obj->email === $username && password_verify($password, $obj->password)) {

            // Password is correct, set session variables
            $_SESSION['username'] = $username;
            $_SESSION['type'] = $obj->type;
            $_SESSION['id'] = $obj->id;
            $_SESSION['fname'] = $obj->fname;

            // Remember Me functionality
            if ($remember) {
                // Set a long-lived cookie (adjust the expiration time as needed)
                setcookie('remember_user', $username, time() + 3600 * 24 * 30, '/');
            }

            header("location:index.php");
            exit(); // Stop script execution after sending header
        } else {
            if ($flag === 'true') {
                redirect();
                $flag = 'false';
            }
        }
    }
}

function redirect()
{
    echo '<h1>Invalid Login! Redirecting...</h1>';
    header("Refresh: 3; url=index.php");
    exit(); // Stop script execution after sending header
}

// User Authentication Middleware
if (!isset($_SESSION['username'])) {
    // Redirect to the login page if the user is not authenticated
    header("location: login.php");
    exit(); // Stop script execution after sending header
}
?>
