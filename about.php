<?php

@include 'config.php';

session_start();


$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : null;

?>


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/stylee.css">
   <link href="https://cdnjs.cloudflare.com/ajax/libs/hover.css/2.3.1/css/hover-min.css" rel="stylesheet">


</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3 class ="wow animate__animated animate__fadeInBottomRight">about us</h3>
    <p> <a href="home.php">home</a> / about </p>
</section>

<section class="about">

    <div class="flex">

        <div class="image">
            <img src="images/about-img-1.png" alt="" class="hvr-rotate">
        </div>

        <div class="content">
            <h3 class= "wow animate__animated animate__backInDown">why choose us?</h3>
            <p>Because we don't just offer flowers, we deliver your feelings with sincerity and care. Every flower is carefully selected to express you in the most beautiful way.</p>
            <a href="shop.php" class="btn">shop now</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3 class= "wow animate__animated animate__backInDown">what we provide?</h3>
            <p>We offer a variety of flower bouquets to suit all occasions, with fast and reliable delivery service, ensuring the flowers are as beautiful as you desire.</p>
            <a href="contact.php" class="btn">contact us</a>
        </div>

        <div class="image">
            <img src="images/about-img-2.jpg" alt="" class="hvr-rotate">
        </div>

    </div>

    <div class="flex">

        <div class="image">
            <img src="images/about-img-3.jpg" alt="" class="hvr-rotate">
        </div>

        <div class="content">
            <h3 class= "wow animate__animated animate__backInDown">who we are?</h3>
            <p> We are a team dedicated to offering the most beautiful flower bouquets, committed to providing high-quality service and attention to every detail of your experience, because we believe every flower tells a unique story and expression.</p>
            <a href="#reviews" class="btn">clients reviews</a>
        </div>

    </div>

</section>

<section class="reviews" id="reviews">

    <h1 class="title">client's reviews</h1>

    <div class="box-container" > 

        <div class="box hvr-grow">
            <img src="images/pic-1.png" alt="" >
            <p>It was my first time ordering, and I was a bit hesitant, but when the flowers arrived, they were exactly as I imagined. Thank you</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3> Hassan Murad</h3>
        </div>

        <div class="box hvr-grow">
            <img src="images/pic-2.png" alt="صورة" class="zoom-image animate__animated ">
            <p>""I ordered a beautiful bouquet for Admin Week, and it brightened up the office! The vibrant colors and fresh fragrance made everyone smile. Thank you for such wonderful service!"</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3 class="wow animate__animated animate__fadeIn">Rana Fouad</h3>
        </div>

        <div class="box hvr-grow">
            <img src="images/pic-3.png" alt="">
            <p>"I bought a bouquet for my mom for Mother's Day, and seeing her face light up was priceless. Thank you so much</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3> Ibrahim Nasser</h3>
        </div>

        <div class="box hvr-grow">
            <img src="images/pic-4.png" alt="">
            <p>Great website and a smooth shopping experience. The flowers are gorgeous, and the site is easy to navigate.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3> Sara Khaled</h3>
        </div>

        <div class="box hvr-grow">
            <img src="images/pic-5.png" alt="">
            <p>"I bought a bouquet to visit a friend in the hospital, and it brightened his day. Thank you for making that moment special!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Tarek Ali</h3>
        </div>

        <div class="box hvr-grow">
            <img src="images/pic-6.png" alt="">
            <p>I ordered a flower bouquet for my brother’s graduation, and it was the highlight of his day. I’m really grateful for the excellent service!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Reem Jaber</h3>
        </div>

    </div>

</section>











<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>
<script src="js/wow.min.js"></script>
              <script>
              new WOW().init();
              </script>

</body>
</html>