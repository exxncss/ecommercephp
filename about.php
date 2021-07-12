<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();} for php 5.4 and above

if(session_id() == '' || !isset($_SESSION)){session_start();}


?>

<!DOCTYPE html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About Us || Weebspedia</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <script src="js/vendor/modernizr.js"></script>
  </head>
  <body>

    <nav class="top-bar" data-topbar role="navigation">
      <ul class="title-area">
        <li class="name">
          <h1><a href="index.php">Weebspedia</a></h1>
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
      <div class="small-12">
        <p>Weebspedia adalah sebuah contoh website e-commerce C2C yang dibuat oleh kelompok 2 E-commerce sebagai materi presentasi vicon ke 2 e-Commerce. 
        <a href="http://www.techbarrack.com" target="_blank" rel="noopener noreferrer" title="Tech Barrack Solutions">Tech Barrack Solutions</a>.</p>
        <p>Kelompok 2: <br>Muhamad Ikhsan - 171011402114.
          <br>Igusta Willyarto - 171011402577
          <br>Visca Reza Steven Cornel Pardede - 171011401084
          <br>Stevan Gerald Nathanael - 171011400951
          <br>Manah Yasa - 171011401357
          <br>Allia Okti Sativa - 171011401043
          <br></p>

        <footer>
           <p style="text-align:center; font-size:0.8em;">&copy; Weebspedia 2021. All Rights Reserved.</p>
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
