<?php
if (session_id() == '' || !isset($_SESSION)) {
    session_start();
}

if (isset($_SESSION["username"])) {
    header("location:index.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Register || Black-i Shop</title>
    <link rel="stylesheet" href="css/foundation.css"/>
    <link rel="stylesheet" href="css/style.css"/> <!-- Add your custom CSS file -->
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

            if(isset($_SESSION['username'])){
                echo '<li><a href="account.php">My Account</a></li>';
                echo '<li><a href="logout.php">Log Out</a></li>';
            }
            else{
                echo '<li><a href="login.php">Log In</a></li>';
                echo '<li class="active"><a href="register.php">Register</a></li>';
            }
            ?>
        </ul>
    </section>
</nav>

<form method="POST" action="insert.php" class="registration-form">
    <div class="row">
        <div class="small-12 medium-8 columns">

      
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">First Name</label>
            </div>
            <div class="small-8 columns">
              <input type="text" id="right-label" placeholder="YourFirstName" name="fname">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">Last Name</label>
            </div>
            <div class="small-8 columns">
              <input type="text" id="right-label" placeholder="YourLastName" name="lname">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">Address</label>
            </div>
            <div class="small-8 columns">
              <input type="text" id="right-label" placeholder="Infinite Loop" name="address">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">City</label>
            </div>
            <div class="small-8 columns">
              <input type="text" id="right-label" placeholder="Mumbai" name="city">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">Pin Code</label>
            </div>
            <div class="small-8 columns">
              <input type="number" id="right-label" placeholder="400056" name="pin">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">E-Mail</label>
            </div>
            <div class="small-8 columns">
              <input type="email" id="right-label" placeholder="your@email.com" name="email">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">Password</label>
            </div>
            <div class="small-8 columns">
              <input type="password" id="right-label" name="pwd">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
            </div>
            <div class="small-8 columns">
            <div class="row">
                <div class="small-4 columns">
                    <label for="confirm-password" class="right inline">Confirm Password</label>
                </div>
                <div class="small-8 columns">
                    <input type="password" id="confirm-password" name="confirm_pwd" required>
                </div>
            </div>

            <div class="row">
                <div class="small-8 columns small-offset-4">
                    <input type="checkbox" id="terms" name="terms" required>
                    <label for="terms" class="inline">I agree to the terms and conditions</label>
                </div>
            </div>

            <div class="row">
                <div class="small-8 columns small-offset-4">
                    <input type="submit" value="Register" class="button primary">
                    <input type="reset" value="Reset" class="button secondary">
                </div>
            </div>
        </div>
    </div>
</form>

    <div class="row" style="margin-top:10px;">
      <div class="small-12">
      
      <img src="images/blackilogo.jpg" alt="Black-i Logo" style="width: 50px; height: auto;">
    </div>
</div>


<!-- Feature 5: Footer Updates -->
<footer style="margin-top:10px;">
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
