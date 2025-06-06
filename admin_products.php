<?php

@include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if (!isset($admin_id)) {
   header('location:login.php');
   exit;
}

$message = []; 

if (isset($_POST['add_product'])) {

   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $price = mysqli_real_escape_string($conn, $_POST['price']);
   $details = mysqli_real_escape_string($conn, $_POST['details']);
   $type = mysqli_real_escape_string($conn, $_POST['type']);

   $image = $_FILES['image']['name'];
   $image_size = $_FILES['image']['size'];
   $image_tmp_name = $_FILES['image']['tmp_name'];
   $image_folder = 'flowers/' . $image;

   $select_product_name = mysqli_query($conn, "SELECT name FROM `products` WHERE name = '$name'") or die('query failed');

   if (mysqli_num_rows($select_product_name) > 0) {
      $message[] = 'Product name already exists!';
   } else {
      $insert_product = mysqli_query($conn, "INSERT INTO `products`(name, details, price, image, type) VALUES('$name', '$details', '$price', '$image', '$type')") or die('query failed');

      if ($insert_product) {
         if ($image_size > 2000000) {
            $message[] = 'Image size is too large!';
         } else {
            move_uploaded_file($image_tmp_name, $image_folder);
            $message[] = 'Product added successfully!';
         }
      }
   }
}

if (isset($_GET['delete'])) {

   $delete_id = $_GET['delete'];
   $select_delete_image = mysqli_query($conn, "SELECT image FROM `products` WHERE id = '$delete_id'") or die('query failed');
   $fetch_delete_image = mysqli_fetch_assoc($select_delete_image);
   unlink('flowers/' . $fetch_delete_image['image']);

   mysqli_query($conn, "DELETE FROM `products` WHERE id = '$delete_id'") or die('query failed');
   mysqli_query($conn, "DELETE FROM `wishlist` WHERE pid = '$delete_id'") or die('query failed');
   mysqli_query($conn, "DELETE FROM `cart` WHERE pid = '$delete_id'") or die('query failed');

   header('location:admin_products.php');
   exit;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Admin Products</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
   <link rel="stylesheet" href="css/admin_style.css">
</head>
<body>

<?php @include 'admin_header.php'; ?>

<section class="add-products">

   <form action="" method="POST" enctype="multipart/form-data">
      <h3>Add New Product</h3>

      <?php
         if (!empty($message)) {
            foreach ($message as $msg) {
               echo '<span class="message">' . $msg . '</span>';
            }
         }
      ?>

      <input type="text" class="box" required placeholder="Enter product name" name="name">
      <input type="number" min="0" class="box" required placeholder="Enter product price" name="price">

      <!-- حقل type -->
      <select name="type" class="box" required>
         <option value="">-- Select product type --</option>
         <option value="just">just because</option>
         <option value="anniversary">Anniversary</option>
         <option value="mother">mother day</option>
         <option value="getwell">Getwell</option>
         <option value="newbaby">Newbaby</option>
         <option value="wedding">Wedding</option>
         <option value="petit">Petit prix</option>
         <option value="scented">Scented candles</option>
         <option value="forever">Forever flowers</option>
         <option value="gift">Gift</option>
         <option value="adminweek">Admin week</option>
         <option value="orchid">Orchid</option>
         <option value="succulents">Succelents</option>
         <option value="house">house plants</option>
         <option value="european">european plants</option>



         
      </select>

      <textarea name="details" class="box" required placeholder="Enter product details" cols="30" rows="10"></textarea>
      <input type="file" accept="image/jpg, image/jpeg, image/png" required class="box" name="image">
      <input type="submit" value="Add Product" name="add_product" class="btn">
   </form>

</section>

<section class="show-products">

   <div class="box-container">

      <?php
         $select_products = mysqli_query($conn, "SELECT * FROM `products`") or die('query failed');
         if (mysqli_num_rows($select_products) > 0) {
            while ($fetch_products = mysqli_fetch_assoc($select_products)) {
      ?>
      <div class="box">
         <div class="price">$<?php echo $fetch_products['price']; ?>/-</div>
         <img class="image" src="flowers/<?php echo $fetch_products['image']; ?>" alt="">
         <div class="name"><?php echo $fetch_products['name']; ?></div>
         <div class="type"><strong>Type:</strong> <?php echo $fetch_products['type']; ?></div>
         <div class="details"><?php echo $fetch_products['details']; ?></div>
         <a href="admin_update_product.php?update=<?php echo $fetch_products['id']; ?>" class="option-btn">Update</a>
         <a href="admin_products.php?delete=<?php echo $fetch_products['id']; ?>" class="delete-btn" onclick="return confirm('Delete this product?');">Delete</a>
      </div>
      <?php
            }
         } else {
            echo '<p class="empty">No products added yet!</p>';
         }
      ?>
   </div>

</section>

<script src="js/admin_script.js"></script>

</body>
</html>












