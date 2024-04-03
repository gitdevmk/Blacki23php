<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

include 'config.php';

if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = array();
}

if (isset($_GET['id'])) {
  $product_id = $_GET['id'];
} else {
  // Handle the case where 'id' is not set, perhaps redirect the user or show an error message.
}
$action = $_GET['action'];

// Check if the user is logged in
if (!isset($_SESSION['user'])) {
    // Redirect the user to the login page or show an error message
}

$max_quantity = 10; // Set the maximum quantity limit

if($action === 'empty')
  unset($_SESSION['cart']);

  $stmt = $mysqli->prepare("SELECT qty FROM products WHERE id = ?");
  $stmt->bind_param("i", $product_id);
  $stmt->execute();
  $result = $stmt->get_result();
  
  if ($result) {
      // rest of your code
  } else {
      // handle the case where the query fails
  }
  
  $stmt->close();


if($result){

  if($obj = $result->fetch_object()) {

    if (!isset($_SESSION['cart'][$product_id])) {
        $_SESSION['cart'][$product_id] = 0;
    }

    switch($action) {

      case "add":
        if($_SESSION['cart'][$product_id]+1 <= $obj->qty && $_SESSION['cart'][$product_id] < $max_quantity) {
          $_SESSION['cart'][$product_id]++;
          $message = "Product added to cart";
        } else {
          $message = "Cannot add more than $obj->qty items or the maximum quantity limit of $max_quantity items has been reached";
        }
      break;

      case "remove":
      $_SESSION['cart'][$product_id]--;
      if($_SESSION['cart'][$product_id] == 0) {
        unset($_SESSION['cart'][$product_id]);
        $message = "Product removed from cart";
      }
      break;

    }

    // Store the message in the session
    $_SESSION['message'] = $message;

  }
}



header("location:cart.php");

?>