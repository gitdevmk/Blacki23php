<?php
session_start();

// Feature 1: Dynamic Page Title
$pageTitle = 'About Us' . ' || Black-i Shop';
?>

<!DOCTYPE html
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php echo $pageTitle; ?></title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
    <!-- Feature 2: Favicon -->
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <!-- Feature 11: Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <!-- Feature 11: Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
        }

        .top-bar {
            background-color: #333;
        }

        .top-bar ul.right li a {
            color: #fff;
        }

        .top-bar ul.right li.active a {
            background-color: #555;
        }

        .top-bar ul.right li a:hover {
            background-color: #555;
        }

        .button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 20px 0px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #45a049;
        }

        .video-container {
            position: relative;
            padding-bottom: 56.25%;
            padding-top: 30px;
            height: 0;
            overflow: hidden;
        }

        .video-container iframe,
        .video-container object,
        .video-container embed {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        #location-map {
            height: 400px;
            width: 100%;
            background-color: #f2f2f2;
        }

        .subscribe-form {
            background-color: #f2f2f2;
            padding: 20px;
            margin-top: 30px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .subscribe-form h3 {
            margin-top: 0;
        }

        .subscribe-form input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
        }

        .subscribe-form button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 0;
            cursor: pointer;
        }

        .subscribe-form button[type="submit"]:hover {
            background-color: #45a049;
        }

        .testimonials {
            background-color: #f2f2f2;
            padding: 20px;
            margin-top: 30px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .testimonials h3 {
            margin-top: 0;
        }

        .testimonial {
            margin-bottom: 20px;
        }

        .testimonial cite {
            font-style: italic;
        }

        .faq-section {
            background-color: #f2f2f2;
            padding: 20px;
            margin-top: 30px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .faq-section h3 {
            margin-top: 0;
        }

        .faq h4 {
            margin-bottom: 10px;
        }

        .faq p {
            margin: 0;
        }

        footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            margin-top: 30px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
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
                <li class="active"><a href="about.php">About</a></li>
                <li><a href="products.php">Products</a></li>
                <li><a href="cart.php">View Cart</a></li>
                <li><a href="orders.php">My Orders</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="blog.php">Blog</a></li>
                <li><a href="Funzone.php">Fun Zone</a></li>

                <?php
                if (isset($_SESSION['username'])) {
                    echo '<li><a href="account.php">My Account</a></li>';
                    echo '<li><a href="out.php">Log Out</a></li>';
                } else {
                    echo '<li><a href="login.php">Log In</a></li>';
                    echo '<li><a href="register.php">Register</a></li>';
                }
                ?>
            </ul>
        </section>
    </nav>

    <div class="row" style="margin-top:30px;">
        <div class="small-12">
            <img src="images/blackilogo.jpg" alt="Black-i Logo" style="width: 100%; max-width: 400px; height: auto;">

            <p>Introducing Black-I, a trailblazing brand that epitomizes technological innovation in the market. With over 6 years of industry expertise and a steadfast commitment to producing top-tier cable and converter solutions in India, Black-I stands as a beacon of excellence in the realm of electronic accessories.

            <br>
            

                <!-- Feature 3: Responsive Image -->
                <img src="images/aboutus.jpeg" alt="About Us Image" style="width: 100%; max-width: 800px; height: auto; margin-top: 20px;">

                <!-- Feature 4: Quote Section -->
                <blockquote>
                    "Innovation distinguishes between a leader and a follower." - Steve Jobs
                </blockquote>

                <!-- Feature 5: Call-to-Action Button -->
                <a href="products.php" class="button">Explore Our Products</a>

                <!-- Feature 6: Video Embed -->
                <div class="video-container">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/I3ASvtkSMSc?si=F0ZWitOxqbRjwYwq" frameborder="0" allowfullscreen></iframe>
                </div>

               <!-- Leaflet CSS and JavaScript -->
<link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
<script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>

<!-- Feature 7: Interactive Map -->
<div id="location-map" style="height: 400px;"></div>
<script>
    // Initialize and add the map
    var map = L.map('location-map').setView([12.9652752, 77.5849611], 18); // Updated coordinates and zoom level

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '© OpenStreetMap contributors'
    }).addTo(map);

    // You can add markers, popups, etc., to the map as needed
    // For example, adding a marker:
    L.marker([12.9652752, 77.5849611]).addTo(map).bindPopup('Your Location');


                </script>

            </p>

            <!-- Feature 8: Subscription Form -->
            <div class="subscribe-form">
                <h3>Subscribe to Our Newsletter</h3>
                <form action="subscribe.php" method="post">
                    <input type="email" name="email" placeholder="Enter your email" required>
                    <button type="submit">Subscribe</button>
                </form>
            </div>

            <!-- Feature 9: Testimonials -->
            <div class="testimonials">
                <h3>What Our Customers Say</h3>
                <div class="testimonial">
                    <p>"Great products and excellent customer service. I'm a satisfied customer!"</p>
                    <cite>- John Doe</cite>
                </div>
                <!-- Add more testimonials as needed -->
            </div>

            <!-- Feature 10: FAQ Section -->
            <div class="faq-section">
                <h3>Frequently Asked Questions</h3>
                <div class="faq">
                    <h4>Q: How do I place an order?</h4>
                    <p>A: You can place an order by visiting our "Products" page and selecting the items you want to purchase.</p>
                </div>
                <!-- Add more FAQs as needed -->
                
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
    <!-- Feature 11: Google Maps API Script -->
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=YOUR_GOOGLE_MAPS_API_KEY&callback=initMap"></script>
    <script>
        $(document).foundation();
    </script>
</body>

</html>
