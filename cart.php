<?php
//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}
include 'config.php';
?>

<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shopping Cart || Black-i Shop</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
</head>
<body>

<nav class="top-bar" data-topbar role="navigation">
    <ul class="title-area">
        <li class="name">
            <h1><a href="index.php">Black-i Shop</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
    </ul>

    <section class="top-bar-section">
        <!-- Right Nav Section -->
        <ul class="right">
            <li><a href="about.php">About</a></li>
            <li><a href="products.php">Products</a></li>
            <li class="active"><a href="cart.php">View Cart</a></li>
            <li><a href="orders.php">My Orders</a></li>
            <li><a href="contact.php">Contact</a></li>
            <li><a href="blog.php">Blog</a></li>
            <li><a href="Funzone.php">Fun Zone</a></li>

            <?php
            if(isset($_SESSION['username'])){
                echo '<li><a href="account.php">My Account</a></li>';
                echo '<li><a href="logout.php">Log Out</a></li>';
                echo '<p>Welcome, ' . $_SESSION['username'] . '!</p>'; // Feature 1
            } else {
                echo '<li><a href="login.php">Log In</a></li>';
                echo '<li><a href="register.php">Register</a></li>';
            }
            ?>
        </ul>
    </section>
</nav>

<div class="row" style="margin-top:10px;">
    <div class="large-12">
        <?php
        echo '<p><h3>Your Shopping Cart</h3></p>';

        if(isset($_SESSION['cart'])) {
            $total = 0;
            echo '<table>';
            echo '<tr>';
            echo '<th>Code</th>';
            echo '<th>Name</th>';
            echo '<th>Description</th>'; // Feature 6
            echo '<th>Quantity</th>';
            echo '<th>Cost</th>';
            echo '<th>Image</th>'; // Feature 7
            echo '<th>Availability</th>'; // Feature 10
            echo '</tr>';
            
            foreach($_SESSION['cart'] as $product_id => $quantity) {
                $result = $mysqli->query("SELECT product_code, product_name, product_desc, qty, price FROM products WHERE id = ".$product_id);

                if($result){
                    while($obj = $result->fetch_object()) {
                        $cost = $obj->price * $quantity; //work out the line cost
                        $total = $total + $cost; //add to the total cost

                        echo '<tr>';
                        echo '<td>'.$obj->product_code.'</td>';
                        echo '<td>'.$obj->product_name.'</td>';
                        echo '<td>'.$obj->product_desc.'</td>'; // Feature 6
                        echo '<td>'.$quantity.'</td>';
                        echo '<td>'.$cost.'</td>';
                        echo '<td><img src="images/' . $product_id . '.jpg" alt="' . $obj->product_name . '" style="width: 50px; height: auto;"></td>'; // Feature 7

                        // Feature 10: Product Availability
                        echo '<td>';
                        if ($obj->qty < $quantity) {
                            echo '<span style="color: red;">Out of Stock</span>';
                        } else {
                            echo 'In Stock';
                        }
                        echo '</td>';

                        echo '</tr>';
                    }
                }
            }

            echo '<tr>';
            echo '<td colspan="3" align="right">Total</td>';
            echo '<td>'.$total.'</td>';
            echo '</tr>';

            echo '<tr>';
            echo '<td colspan="4" align="right"><a href="update-cart.php?action=empty" class="button alert">Empty Cart</a>&nbsp;<a href="products.php" class="button [secondary success alert]">Continue Shopping</a>';

            if(isset($_SESSION['username'])) {
                echo '<a href="orders-update.php"><button style="float:right;">COD</button></a>';
            } else {
                echo '<a href="login.php"><button style="float:right;">Login</button></a>';
            }

            echo '</td>';
            echo '</tr>';
            echo '</table>';
        } else {
            echo "You have no items in your shopping cart.";
        }
        ?>
    </div>
</div>

 <!-- Feature 2: Display Cart Item Count -->
 <?php
        if(isset($_SESSION['cart'])) {
            $itemCount = array_sum($_SESSION['cart']);
            echo '<p>Items in Cart: ' . $itemCount . '</p>';
        }
        ?>

        <!-- Feature 3: Responsive Design -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Link to view or download software.txt -->
<p style="font-size: 1.2em; font-weight: bold; text-align: center; margin-top: 20px;">
            Download Software.txt and copy-paste the link into your browser as per the product name!
            <a href="images/software.txt" download>Software.txt</a>
        </p>
            
<div class="row" style="margin-top:10px;">
    <div class="small-12">
        <!-- Feature 1: Simple Social Media Icons -->
        <div class="social-icons">
            <a href="https://linktr.ee/blackiofficial"><img src="images/linktree.png" alt="Linktree"></a>
            <!-- Add more social media icons as needed -->
        </div>

       

        <!-- Feature 4: Notification for Empty Cart -->
        <?php
        if(empty($_SESSION['cart'])) {
            echo '<p>Your shopping cart is empty. <a href="products.php">Browse products</a></p>';
        }
        ?>

        <div class="trust-badges">
            <img src="images/trustbadge1.jpg" alt="Trust Badge 1">
            <img src="images/trustbadge2.jpg" alt="Trust Badge 2">
            <!-- Add more trust badges as needed -->
        </div>

        <img src="images/blackilogo.jpg" alt="Black-i Logo" style="width: 50px; height: auto;">
    </div>
</div>


<!-- Feature 5: Footer Updates -->
<footer style="margin-top:10px;">
            <p style="text-align:center; font-size:0.8em;clear:both;">&copy; Blacki Shop. All Rights Reserved.</p>
            <p style="text-align:center; font-size:0.8em;"><a href="terms.php">Terms of Service</a> | <a href="privacy.php">Privacy Policy</a></p>
        </footer>

<script src="js/vendor/jquery.js"></script>
<script src="js/foundation.min.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>
