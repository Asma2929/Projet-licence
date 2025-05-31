<?php
if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>

<header class="header">

    <div class="flex">

        <a href="home.php" class="logo">Florar</a>

        <nav class="navbar">
            <ul>
                <li><a href="home.php">home</a></li>
                <li><a href="contact.php">contact</a></li>
                <li><a href="shop.php">shop</a></li>
                <li><a href="orders.php">My orders</a></li>
                <li><a href="#">account +</a>
                    <ul>
                        <li><a href="login.php">login</a></li>
                        <li><a href="register.php">register</a></li>
                    </ul>
                </li>
            </ul>
        </nav>

        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <a href="search_page.php" class="fas fa-search"></a>
            <div id="user-btn" class="fas fa-user"></div>
            <?php
                $select_wishlist_count = mysqli_query($conn, "SELECT * FROM `wishlist` WHERE user_id = '$user_id'") or die('query failed');
                $wishlist_num_rows = mysqli_num_rows($select_wishlist_count);
            ?>
            <a href="wishlist.php"><i class="fas fa-heart"></i><span>(<?php echo $wishlist_num_rows; ?>)</span></a>
            <?php
                $select_cart_count = mysqli_query($conn, "SELECT * FROM `cart` WHERE user_id = '$user_id'") or die('query failed');
                $cart_num_rows = mysqli_num_rows($select_cart_count);
            ?>
            <a href="cart.php"><i class="fas fa-shopping-cart"></i><span>(<?php echo $cart_num_rows; ?>)</span></a>
        </div>

        <div class="account-box">
            <p>username : <span><?php echo $_SESSION['user_name']; ?></span></p>
            <p>email : <span><?php echo $_SESSION['user_email']; ?></span></p>
            <a href="logout.php" class="delete-btn">logout</a>
        </div>

    </div>

</header>
<header class="header2">

    <div class="flex">

        
    <nav class="navbar">
            <ul>
                <li><a href="adminweek.php">admin week</a></li>
                <li><a href="gift.php">gift</a></li>
                <li><a href="#">plants +</a>
                    <ul>
                        <li><a href="european.php">european plan gardens</a></li>
                        <li><a href="orchid.php">orchid ans tropical plants</a></li>
                        <li><a href="succulents.php">succulents and terrariums</a></li>
                        <li><a href="house.php">house & green plants</a></li>
                        
                        
                    </ul>
                </li>
                <li><a href="forever.php">forever flowers</a></li>
                <li><a href="scented.php">scented candles</a></li>
                <li><a href="#">occasions +</a>
                    <ul>
                        <li><a href="anniversary.php">anniversary</a></li>
                        <li><a href="mother.php">mother's day</a></li>
                        <li><a href="getwell.php">get well</a></li>
                        <li><a href="newbaby.php">new baby</a></li>
                        <li><a href="just.php">just because</a></li>
                        <li><a href="wedding.php">wedding flowers</a></li>
                    </ul>
                </li>
                
                
            
            </ul>
        </nav>

       
    </div>

</header>


