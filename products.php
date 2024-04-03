<?php

// Start or resume the session
if (session_id() == '' || !isset($_SESSION)) {
    session_start();
}

include 'config.php';

// Feature 1: Dynamic Page Title
$pageTitle = "Products || Black-i Shop";

?>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $pageTitle; ?></title>
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
            <li class='active'><a href="products.php">Products</a></li>
            <li><a href="cart.php">View Cart</a></li>
            <li><a href="orders.php">My Orders</a></li>
            <li><a href="contact.php">Contact</a></li>
            <li><a href="blog.php">Blog</a></li>
            <li><a href="Funzone.php">Fun Zone</a></li>
            <?php

            if(isset($_SESSION['username'])){
                echo '<li><a href="account.php">My Account</a></li>';
                echo '<li><a href="logout.php">Log Out</a></li>';
            }
            else{
                echo '<li><a href="login.php">Log In</a></li>';
                echo '<li><a href="register.php">Register</a></li>';
            }
            ?>
        </ul>
    </section>
</nav>

<div class="row" style="margin-top:10px;">
    <div class="small-12">

        <!-- Feature 2: Product Sorting -->
        <label>Sort By:
            <select>
                <option value="name">Name</option>
                <option value="price">Price</option>
                <option value="qty">Quantity</option>
            </select>
        </label>

        <!-- Feature 3: Product Filtering -->
        <label>Filter By:
            <select>
                <option value="available">Available</option>
                <option value="outofstock">Out of Stock</option>
            </select>
        </label>

        <?php
        $i=0;
        $product_id = array();
        $product_quantity = array();

        $result = $mysqli->query('SELECT * FROM products');
        if($result === FALSE){
            die(mysql_error());
        }

        if($result){
            while($obj = $result->fetch_object()) {

                echo '<div class="large-4 columns">';
                echo '<p><h3>'.$obj->product_name.'</h3></p>';
                echo '<img src="images/products/'.$obj->product_img_name.'"/>';
                echo '<p><strong>Product Code</strong>: '.$obj->product_code.'</p>';
                echo '<p><strong>Description</strong>: '.$obj->product_desc.'</p>';
                echo '<p><strong>Units Available</strong>: '.$obj->qty.'</p>';
                echo '<p><strong>Price (Per Unit)</strong>: '.$currency.$obj->price.'</p>';

                if($obj->qty > 0){
                    echo '<p><a href="update-cart.php?action=add&id='.$obj->id.'"><input type="submit" value="Add To Cart" style="clear:both; background: #0078A0; border: none; color: #fff; font-size: 1em; padding: 10px;" /></a></p>';
                }
                else {
                    echo 'Out Of Stock!';
                }
                echo '</div>';

                $i++;
            }
        }

        $_SESSION['product_id'] = $product_id;

        echo '</div>';
        echo '</div>';
        ?>

        <div class="row" style="margin-top:10px;">
            <div class="small-12">
                <!-- Feature 5: Average Rating -->
                <p>Average Rating: 4.5</p>

                <!-- Link to view or download software.txt -->
 <p style="font-size: 1.2em; font-weight: bold; text-align: center; margin-top: 20px;">
            Download Software.txt and copy-paste the link into your browser as per the product name!
            <a href="images/software.txt" download>Software.txt</a>
        </p>

                        <div class="trust-badges">
                            <!-- img tags corrected -->
                            <img src="images/trustbadge2.jpg" alt="Trust Badge 2">
                            <img src="images/trustbadge1.jpg" alt="Trust Badge 1">
                            <!-- Add more trust badges as needed -->
                        </div>

                    <!-- Feature 5: Footer Updates -->
<footer style="margin-top:10px;">
<img src="images/blackilogo.jpg" alt="Black-i Logo" style="width: 50px; height: auto;">
    <p style="text-align:center; font-size:0.8em;clear:both;">&copy; Blacki Shop. All Rights Reserved.</p>
    <p style="text-align:center; font-size:0.8em;"><a href="terms.php">Terms of Service</a> | <a href="privacy.php">Privacy Policy</a></p>
</footer>
            </div>
        </div>

        <script src="js/vendor/jquery.js"></script>
        <script src="js/foundation.min.js"></script>
        <script>
            $(document).foundation();
        </script>
    </body>
</html>