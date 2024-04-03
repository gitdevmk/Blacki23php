<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

include 'config.php';

if (isset($_GET['id'])) {
  $product_id = $_GET['id'];
} else {
  // Handle the case where 'id' is not set, perhaps redirect the user or show an error message.
}
$action = $_GET['action'];


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

    switch($action) {

      case "add":
      if($_SESSION['cart'][$product_id]+1 <= $obj->qty)
        $_SESSION['cart'][$product_id]++;
      break;

      case "remove":
      $_SESSION['cart'][$product_id]--;
      if($_SESSION['cart'][$product_id] == 0)
        unset($_SESSION['cart'][$product_id]);
        break;



    }
  }
}



header("location:cart.php");

?>
