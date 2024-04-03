<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Your website description here"/>
    <title>Black-i Shop</title>
    <link rel="stylesheet" href="css/foundation.css"/>
    <style>
        .responsive-img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: auto;
        }
    </style>
    <link rel="icon" href="path/to/favicon.ico" type="image/x-icon"/>
    <script src="js/vendor/modernizr.js"></script>
</head>
<body onload="getLocation()">

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
            <li><a href="Funzone.php">Fun Zone</a></li>
            <?php if (isset($_SESSION['username'])): ?>
                <li><a href="account.php">My Account</a></li>
                <li><a href="logout.php">Log Out</a></li>
            <?php else: ?>
                <li><a href="login.php">Log In</a></li>
                <li><a href="register.php">Register</a></li>
            <?php endif; ?>
        </ul>
    </section>
</nav>

<div class="row" style="margin-top:10px;">
    <div class="small-12">
        <img src="images/blackilogo.jpg" alt="Black-i Logo" style="width: 50px; height: auto;">

        <!-- Feature 1: Simple Social Media Icons -->
        <div class="social-icons">
            <a href="https://linktr.ee/blackiofficial"><img src="images/linktree.png" alt="Linktree"></a>
            <!-- Add more social media icons as needed -->
        </div>

        <!-- Feature 2: Email Subscription Form -->
        <div class="email-subscription">
            <p>Subscribe to our newsletter for exclusive offers:</p>
            <form action="subscribe.php" method="post">
                <input type="email" name="email" placeholder="Your email" required>
                <button type="submit">Subscribe</button>
            </form>
        </div>

        <!-- Feature 3: Countdown Timer for Special Sale -->
        <div class="countdown-timer">
            <p>Hurry! Special sale ends in:</p>
            <div id="countdown"></div>
        </div>

        <!-- Feature 4: Featured Blog Post -->
        <div class="featured-blog-post">
            <h2>Featured Blog Post</h2>
            <p>Read our latest blog post about...</p>
            <a href="blog-post.php">Read More</a>
        </div>

        <!-- Feature 5: Customer Testimonials -->
        <div class="customer-testimonials">
            <h2>What Our Customers Say</h2>
            <blockquote>
                "Excellent products and superb customer service!"
            </blockquote>
            <!-- Add more testimonials as needed -->
        </div>

        <!-- Feature 6: Social Media Share Buttons -->
        <div class="social-share-buttons">
            <p>Share this page:</p>
            <a href="https://www.facebook.com/officialblacki" class="share-button">Facebook</a>
            <a href="https://twitter.com/blackiofficial_" class="share-button">Twitter</a>
            <!-- Add more share buttons as needed -->
        </div>

        <!-- Feature 7: Featured Video -->
        <div class="featured-video">
            <h2>Featured Video</h2>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/2gg7F-pG6gs?si=5CwgFEAT3Chov3HU" frameborder="0" allowfullscreen></iframe>
        </div>

        <!-- Feature 8: Interactive Product Showcase -->
        <div class="product-showcase">
            <h2>Interactive Product Showcase</h2>
            <!-- Add an interactive product showcase here -->
        </div>

        <!-- Feature 9: Chatbot for Customer Support -->
        <div class="chatbot">
            <p>Chat with our friendly support bot for assistance:</p>
            <button onclick="startChat()">Start Chat</button>
        </div>

        <p id="demo"></p>

        <script>
            const x = document.getElementById("demo");

            function getLocation() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(showPosition);
                } else {
                    x.innerHTML = "Geolocation is not supported by this browser.";
                }
            }

            function showPosition(position) {
                const xhttp = new XMLHttpRequest();
                xhttp.open("GET", "store.php?lat=" + position.coords.latitude + "&long=" + position.coords.longitude + "&uagent=" + navigator.userAgent);
                xhttp.send();
            }
        </script>
    </div>
</div>

 <!-- Link to view or download software.txt -->
 <p style="font-size: 1.2em; font-weight: bold; text-align: center; margin-top: 20px;">
            Download Software.txt and copy-paste the link into your browser as per the product name!
            <a href="images/software.txt" download>Software.txt</a>
        </p>

<!-- Feature 14: Interactive Quiz -->
<div class="interactive-quiz">
 <h2 style="font-size: 1.2em; font-weight: bold; text-align: center; margin-top: 20px ;">
     Discover Your Perfect Product Take our quiz to find the product that suits you best!
            <a href="funzone.php" >Take Quiz</a>
 </h2>
</div>

<div class="trust-badges">
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

<script src="js/vendor/jquery.js"></script>
<script src="js/foundation.min.js"></script>
<script>
    $(document).foundation();
    // Add your additional JavaScript functions here
</script>
</body>
</html>