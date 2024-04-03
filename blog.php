<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
include 'config.php';
?>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Blog || Black-i Shop</title>
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
                <li><a href="cart.php">View Cart</a></li>
                <li><a href="orders.php">My Orders</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="blog.php">Blog</a></li>
                <li><a href="funzone.php">Fun Zone</a></li>
                <?php
                if (isset($_SESSION['username'])) {
                    echo '<li><a href="account.php">My Account</a></li>';
                    echo '<li><a href="logout.php">Log Out</a></li>';
                } else {
                    echo '<li><a href="login.php">Log In</a></li>';
                    echo '<li><a href="register.php">Register</a></li>';
                }
                ?>
            </ul>
        </section>
    </nav>

    <br>
    <p>blog coming soon</p>
    <br>

    <div class="row" style="margin-top:10px;">
        <div class="small-12">
            <?php
            $result = $mysqli->query('SELECT * FROM blog_posts');
            if ($result === false) {
                die(mysqli_error($mysqli));
            }

            if ($result->num_rows > 0) {
                while ($obj = $result->fetch_object()) {
                    echo '<div class="large-4 columns">';
                    echo '<p><h3>' . $obj->title . '</h3></p>';
                    echo '</div>';
                }
            }
            ?>
        </div>
    </div>

    <div class="row" style="margin-top:10px;">
        <div class="small-12">
        </div>
    </div>
    <!-- Link to view or download software.txt -->
    <p style="font-size: 1.2em; font-weight: bold; text-align: center; margin-top: 20px;">
        Download Software.txt and copy-paste the link into your browser as per the product name!
        <a href="images/software.txt" download>Software.txt</a>
    </p>
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
