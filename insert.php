<?php

include 'config.php';

$fname = $mysqli->real_escape_string($_POST["fname"]);
$lname = $mysqli->real_escape_string($_POST["lname"]);
$address = $mysqli->real_escape_string($_POST["address"]);
$city = $mysqli->real_escape_string($_POST["city"]);
$pin = $mysqli->real_escape_string($_POST["pin"]);
$email = $mysqli->real_escape_string($_POST["email"]);
$pwd = $mysqli->real_escape_string($_POST["pwd"]);

if($mysqli->query("INSERT INTO users (fname, lname, address, city, pin, email, password) VALUES('$fname', '$lname', '$address', '$city', '$pin', '$email', '$pwd')")){
	echo 'Data inserted';
	echo '<br/>';
} else {
	echo 'Error: ' . $mysqli->error;
}

header ("location:login.php");

?>