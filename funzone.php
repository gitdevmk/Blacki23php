<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}
include 'config.php';
?>

<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Fun Zone || Black-i Shop</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="funzone" href="funzone"/>
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
          <li><a href="cart.php">View Cart</a></li>
          <li><a href="orders.php">My Orders</a></li>
          <li><a href="products.php">Products</a></li>
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
            echo '<li><a href="register.php">Register</a></li>';
          }
          ?>
        </ul>
      </section>
    </nav>


    <p style="font-family: Arial, sans-serif; font-size: 18px; color: #333; text-align: center; margin: 20px;">
    Check Our Trivia Games and Other Free Apps
        </p>

<div style="text-align: center;">
    <a href="funzone/dtp.html">Know About Desktop Power Cord</a>
    <br>
    <a href="funzone/vga.html">Know About Vga</a>
    <br>
    <a href="funzone/usblan.html">Know About Usb Lan</a>
    <br>
    <a href="funzone/usbhub.html">Know About Usb Hub</a>
    <br>
    <a href="funzone/u3mf.html">Know About Usb Extension 3.0</a>
    <br>
    <a href="funzone/u2mf.html">Know About Usb Extension 2.0</a>
    <br>
    <a href="funzone/usbdock.html">Know About Usb Docking Station</a>
    <br>
    <a href="funzone/u3mf.html">Know About Usb Extension 3.0</a>
    <br>
    <a href="funzone/u3tcconv.html">Know About Usb to Type-c Female converter</a>
    <br>
    <a href="funzone/typecdock.html">Know About Type-c Docking Station</a>
    <br>
    <a href="funzone/tcmm.html">Know About Type-c Cables</a>
    <br>
    <a href="funzone/tco.html">Know About Type-C to Usb Female converter</a>
    <br>
    <a href="funzone/tchdcable.html">Know About Type-c To Hdmi Cable</a>
    <br>
    <a href="funzone/mdphd.html">Know About Mini Dp To Hdmi</a>
    <br>
    <a href="funzone/dpvga.html">Know About Dp To Vga</a>
    <br>
    <a href="funzone/hdmiswitcher.html">Know About Hdmi Switch and Splitters</a>
    <br>
    <a href="funzone/hdmi.html">Know About Hdmi</a>
    <br>



</div>

<!-- Link to view or download software.txt -->
<p style="font-size: 1.2em; font-weight: bold; text-align: center; margin-top: 20px;">
           Go Back To
            <a href="products.php"> products </a>



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