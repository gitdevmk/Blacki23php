<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}

?>

<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contact || Blacki Shop</title>
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
          <li><a href="blog.php">Blog</a></li>
          <li><a href="Funzone.php">Fun Zone</a></li>
          <li class="active"><a href="contact.php">Contact</a></li>
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

    <div class="row" style="margin-top:30px;">
    <div class="small-22">
        <img src="images/blackilogo.jpg" alt="Black-i Logo" style="width: 50px; height: auto;">
        <p>Wanna get in touch. Email us at <a href="mailto:mehulkothariofficial@gmail.com">mehulkothariofficial@gmail.com</a>
            or call us on +91 79757 76280 / +91 83102 83150
            <br>
            check out other website www.blacki.co.in
        </p>

        <!-- Feature 2: Contact Form -->
        <form action="submit_contact.php" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email">

            <label for="message">Message:</label>
            <textarea id="message" name="message"></textarea>

            <input type="submit" value="Submit">
        </form>

        <!-- Feature 3: Business Hours -->
        <p>Business Hours:<br>
            Monday - Saturday: 11:30 AM - 6:00 PM<br>
            Sunday: Closed
        </p>

        <!-- Feature 4: Social Media Links -->
        <div class="social-icons">
            <a href="https://linktr.ee/blackiofficial"><img src="images/linktree.png" alt="Linktree"></a>
            <!-- Add more social media icons as needed -->
        </div>

        <!-- Feature 5: Newsletter Subscription -->
        <label for="newsletter">Subscribe to our Newsletter:</label>
        <input type="email" id="newsletter" name="newsletter">
        <button type="submit">Subscribe</button>

        <!-- Feature 6: Live Chat Integration -->
        <div class="live-chat">
            <p>Need assistance? Chat with us!</p>
            <!-- Add live chat integration code here -->
        </div>

        <!-- Feature 7: FAQ Section -->
        <div class="faq-section">
            <h3>Frequently Asked Questions</h3>
            <p>Q: How can I track my order?<br>
                A: You can track your order in the "My Orders" section of your account.
            </p>
            <!-- Add more FAQ items as needed -->
        </div>

        <!-- Feature 8: Language Selector -->
        <div class="language-selector">
            <label for="language">Select Language:</label>
            <select id="language" name="language">
                <option value="en">English</option>
                <option value="es">Español</option>
                <!-- Add more language options as needed -->
            </select>
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