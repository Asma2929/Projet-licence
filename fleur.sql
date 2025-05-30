-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 30 mai 2025 à 15:34
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fleur`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(19, 0, 61, 'English Rose:', 9, 4, 'b0031984b678d89e365c9c00f886e578.jpg'),
(20, 2, 58, 'Damask Rose', 10, 1, '69ef3622c9980df47a7e9777c3c61bb7.jpg'),
(21, 2, 18, 'Vintage Glamour Bouquet', 49, 1, 'R5626D_LOL_preset_proflowers-mx-hero-sv-new (1).jpg');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 2, 'asma', 'Asma@gmail.com', '3', 'bonjour');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_products` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `placed_on` int(50) NOT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(4, 2, '', '', '', 'credit card', 'flat no. , , ,  - ', ', White bouquet (3) ', '18', 5, 'completed'),
(6, 4, '', '', '', 'cash on delivery', 'flat no. , , ,  - ', ', Pink rose (1) ', '13', 5, 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('adminweek','forever','scented','gift','wedding','petit','anniversary','mother','getwell','newbaby','just','european','orchid','succulents','house') NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `details`, `price`, `image`) VALUES
(17, 'Birthday Bash Bouquet', 'anniversary', 'Bloom Details:\r\n-Rose\r\n-Carnation\r\n-Alstroemeria\r\n-Delphinium\r\n-Aster', 63, 'R5522D_LOL_preset_proflowers-mx-hero-sv-new (1).jpg'),
(18, 'Vintage Glamour Bouquet', 'anniversary', 'Bloom Details:\r\nRose\r\nCarnation', 49, 'R5626D_LOL_preset_proflowers-mx-hero-sv-new (1).jpg'),
(19, 'Renaissance Luxury Bouquet', 'anniversary', 'Bloom Details:\r\nGerbera Daisy\r\nStock\r\nRose\r\nWaxflower\r\nSnapdragon', 135, 'V5761D_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(20, 'Lucky Lily Bouquet', 'anniversary', 'Bloom Details\r\nCarnation\r\nRose\r\nTulip\r\nLily', 58, 'R5661D_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(21, 'The Dreamscape Bouquet', 'anniversary', 'Bloom Details:\r\nRose\r\nLily\r\nAlstroemeria\r\nCarnation\r\nChrysanthemum\r\nEucalyptus', 54, 'R5549D_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(22, 'Sun-drenched Blooms Box Bouquet', 'getwell', 'Bloom Details:\r\nCarnation\r\nSunflower\r\nDaisy', 63, 'M3D_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(23, ' Fit for a Queen Luxury Bouquet', 'getwell', 'Bloom Details:\r\nRose\r\nSnapdragon\r\nLily\r\nHydrangea', 135, 'V5765D_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(24, 'Cerulean Waves Bouquet', 'getwell', 'Bloom Details\r\nDelphinium\r\nChrysanthemum\r\nEucalyptus\r\nSucculent\r\nRose', 59, 'R5605D_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(25, 'Catching Rays Bouquet', 'getwell', 'Bloom Details\r\nDelphinium\r\nStock\r\nSunflower', 50, 'F5511D_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(26, 'Little Luxuries Bouquet', 'getwell', 'Bloom Details\r\nRose\r\nStock\r\nAlstroemeria\r\nHydrangea\r\nCarnation', 76, 'CCED_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(27, 'Botanical Dream Bouquet', 'just', 'Bloom Details\r\nRose\r\nCarnation\r\nChrysanthemum\r\nEucalyptus', 49, 'R5559D_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(28, 'Slice of Sunrise Bouquet', 'just', 'Bloom Details\r\nRose\r\nAlstroemeria\r\nStock\r\nEucalyptus', 67, 'R5639D_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(29, 'Clear Skies Bouquet', 'just', 'Bloom Details\r\nDelphinium\r\nHydrangea\r\nRose', 72, 'NFGD_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(30, 'Grapeful Bouquet', 'just', 'Bloom Details\r\nRose\r\nStock', 60, 'R5654D_CLEAR_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(31, 'The Davi', 'just', 'Bloom Details\r\nRose\r\nLarkspur\r\nHydrangea\r\nQueen Anne\'s Lace', 30, 'd1267b22-ce87-40b1-a35b-75f57902df7d.jpg'),
(32, 'Baby\'s First Block - Pink', 'newbaby', 'Details:\r\n• Pink Gerbera Daisies\r\n• White Spray Roses\r\n• Pink Spray Roses\r\n• Monte Casino\r\n• Glass Baby Block Vase', 43, 'T37-2.jpg'),
(33, 'Baby\'s First Blue Block Bouquet', 'newbaby', '• Baby Blue Block Vase\r\n• Yellow Gerbera Daisies (Deluxe & Premium only)\r\n• White Spray Roses\r\n• Blue Delphinium\r\n• Decorative Blue Ribbon', 43, 'T34-2.jpg'),
(34, 'Joyful Inspirations', 'newbaby', '• One Dozen Blue & White Swirled Roses\r\n• Personalized Card Message\r\n• Clear Vase (Optional)', 49, 'FTD-VW1.jpg'),
(35, 'Festive Floral Garden', 'newbaby', '• Red Carnations\r\n• Yellow Daisies\r\n• Purple Monte Casino\r\n• Green Button Poms\r\n• Vase with Rainbow Ribbons', 27, 'FYF-125.jpg'),
(36, 'Pretty Pink Present', 'newbaby', '• Pink Roses\r\n• Pink Lilies\r\n• Pink Alstroemeria\r\n• Green Mums\r\n• Pink Vase with Decorative Bow', 43, 'T19-1.jpg'),
(37, 'Ladybug Chocolate-Covered Strawberries', 'gift', '• 12 Chocolate Covered Strawberries\r\n• Milk, White & Dark Chocolate\r\n• Heart Sprinkles', 40, 'E-818.jpg'),
(38, 'Mrs. Fields Baked Goods Gift - Deluxe', 'gift', '• 30 Bite Sized Cookies\r\n• 18 Brownie Bites\r\n• 8 Signature Cookies\r\n• Variety of Flavors\r\n• Personal Card Message\r\n• Gift Box', 67, 'U-006.jpg'),
(39, 'BIRTHDAY Belgian Chocolate Sandwich Cookies', 'gift', 'Hand Crafted by Artisans in a small batch kitchen\r\n14 OREO® Cookies covered in Belgian Milk Dark Chocolate', 49, 'GE300_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(40, ' Beary Happy Birthday Snack Basket', 'gift', '• Plush Birthday Bear\r\n• Chocolate Chip Cookies - 2.5 oz.\r\n• Butter Toffee Pretzels - 2 oz.\r\n• Confetti Cake Popcorn - 2 oz.\r\n• Milk Chocolate S\'more Bar - 3.5 oz.\r\n• 2 Soft Baked brownie Cookies - 1 oz.\r\n• Cherry Sours - 3 oz.\r\n• Personal Card Message\r\n• Gift Box', 51, 'O-017.jpg'),
(41, 'Bon Vivant Gourmet Basket', 'gift', 'Apples, pears, orange, grapes, bananas & pineapple w/ cheese, crackers, tea & other', 123, 'T107-1.jpg'),
(42, 'Breakable Belgian Chocolate Cupcake', 'gift', '• 7.5\" x 7\" Breakable Belgian Chocolate Cupcake\r\n• 8 oz. Belgian Milk Chocolate Covered Pretzels\r\n• Chocolate Gems\r\n• Wooden Hammer\r\n• Gift Box\r\n• Personalized Card Message', 55, 'E-606.jpg'),
(43, 'Luxury Dozen Preserved Red Roses', 'forever', '• One Dozen Preserved Red Roses\r\n• Personal Card Message\r\n• Hat Box', 109, 'F-739.jpg'),
(44, 'Premium Preserved Sapphire Blue Roses', 'forever', '• 25 Preserved Blue Roses\r\n• Hat Box\r\n• Personalized Card Message', 179, 'F-289.jpg'),
(45, 'Luxury Dozen Preserved Sweetheart Roses', 'forever', '• One Dozen Preserved Roses\r\n• Mix of Hot Pink, Madeline, & Champagne Pink\r\n• Personal Card Message\r\n• Hat Box', 109, 'F-754.jpg'),
(46, 'Cotton Candy', 'forever', '• Pink Roses\r\n• White Roses\r\n• Mini Carnations\r\n• Green Poms\r\n• Clear Glass Vase with Bow', 43, 'T37-1.jpg'),
(47, 'Luxury Dozen Preserved Rainbow Roses', 'forever', '• One Dozen Preserved Rainbow Roses\r\n• Hat Box\r\n• Complimentary Gift Message', 134, 'F-790.jpg'),
(48, ' Luxury Dozen Preserved Champagne Pink Roses ', 'forever', '• One Dozen Preserved Pink Roses\r\n• Personal Card Message\r\n• Hat Box', 109, 'F-753.jpg'),
(49, 'Alluring Elegance Bouquet', 'wedding', 'Bloom Details\r\nEucalyptus\r\nLily\r\nQueen Anne\'s Lace\r\nStock\r\nVeronica', 72, 'NAED_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(50, 'Long Stem White Rose Bouquet', 'wedding', 'Bloom Details\r\nRose', 94, 'E5435D_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(51, 'Fresh Linen Box Bouquet', 'wedding', 'Bloom Details\r\nRose\r\nEucalyptus', 81, 'CCHD_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(52, 'Sending a Garden of Love', 'adminweek', '• Purple Stock', 81, 'P4039_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(53, 'Southern Peach Bouquet', 'adminweek', '• Peach Roses\r\n• White Asiatic Lilies\r\n• Peach Mini Carnations\r\n• White Stock\r\n• Pitta Negra\r\n• Dusty Miller\r\n• Green Echeveria Succulent\r\n• Glass Cube Vase', 51, 'TEV55-6.jpg'),
(54, 'How Sweet It Is', 'adminweek', '• Light Orange Roses\r\n• Orange Spray Roses\r\n• Hot Pink Carnations\r\n• Matsumoto Asters\r\n• Clear Glass Vase', 39, 'T46-1.jpg'),
(55, 'Be Happy® Bouquet', 'adminweek', '• Yellow Roses\r\n• Yellow Daisies\r\n• White Daisies\r\n• Smiley Face Vase\r\n• Delivery Today Available', 43, 'T43-1.jpg'),
(56, 'Strawberry Lemonade Rose & Lily Bouquet', 'adminweek', '• Yellow Lilies\r\n• Pink Roses\r\n• Clear Glass Vase', 31, 'FYF-126.jpg'),
(57, 'Utopian Sunflower Garden', 'adminweek', '• Sunflowers\r\n• Pink Tulips\r\n• Red Alstroemeria\r\n• Purple Monte Casino Asters\r\n• Green Poms\r\n• Clear Glass Vase with Raffia', 43, 'FYF-117_A2.jpg'),
(58, 'Damask Rose', 'scented', 'A rich, soft, and romantic scent, often associated with love and elegance.', 10, '69ef3622c9980df47a7e9777c3c61bb7.jpg'),
(59, 'Centifolia Rose', 'scented', ' A warm, full-bodied fragrance, reminiscent of fresh rose bouquets.', 10, '9da69859aba8a80f05a7f51ba355dd81.jpg'),
(60, 'Turkish Rose', 'scented', 'An exotic, deep scent often used in luxurious perfumes and oriental blends.', 9, '73e19bf3a2205a60b481a449e18aba4f.jpg'),
(61, 'English Rose:', 'scented', 'A gentle, delicate scent, sometimes with hints of fruit or mint.', 9, 'b0031984b678d89e365c9c00f886e578.jpg'),
(62, 'Rose blended with vanilla or sandalwood', 'scented', 'Adds depth and warmth to the scent, commonly used in relaxation or meditation candles.', 10, 'd627a88afb6c6fc9fd58d78a314d81fb.jpg'),
(63, 'Wild Rose', 'scented', 'A fresh, slightly tangy floral scent that captures the aroma of roses growing naturally in the wild.', 9, 'f8b05fc93971af6a8d697240f9a8cc71.jpg'),
(64, 'Purely Pristine White Orchid Duo', 'orchid', '• Two White Orchid Plants\r\n• 4\" White Ceramic Planter\r\n• Approximately 6\"-10\" Tall\r\n• Personalized Card Message', 47, 'P-420.jpg'),
(65, 'Only the Best for You Orchid Garden', 'orchid', '• Two Magenta Orchid Plants\r\n• Glitter Heart Pick\r\n• 10 Inch Lavender Ceramic Planter\r\n• Soil Protecting Moss Layer\r\n• Stands Approximately 18\" - 30\" Tall\r\n• Expert Care Guide', 99, 'P-470.jpg'),
(66, 'Perfect Peach Orchid Plant', 'orchid', '• 16-30 Inch Orchid Plant\r\n• 10 Inch Diameter Pot', 95, 'P-234.jpg'),
(67, 'Modern Succulent Garden', 'succulents', '• Assortment Of Succulents\r\n• Keepsake Container\r\n• River Rocks', 75, 'TPL01-1A.jpg'),
(68, 'Succulent Jade Bonsai Tree', 'succulents', '• Dwarf Jade Bonsai Plant\r\n• Approximately 6\"-10\" Tall\r\n• Ceramic Planter\r\n• Gift Box', 50, 'M-005.jpg'),
(69, 'White Rose Succulent Bouquet', 'succulents', '• White Roses\r\n• White Asiatic Lilies\r\n• Green Carnations\r\n• Green Cushion Mums\r\n• Hanging Green Amaranthus\r\n• Echeveria Succulent\r\n• Keepsake Container', 71, 'NAED_LOL_preset_proflowers-mx-hero-sv-new.jpg'),
(70, 'Premium Dish Garden', 'house', '• Green House Plants\r\n• Easy To Care For\r\n• Keepsake Container', 51, 'FYF-885.jpg'),
(71, 'Whimsical Money Tree', 'house', '• Premium Money Tree Plant\r\n• 5\" Diameter Gold Ceramic Planter\r\n• Stands Approximately 14-16\" Tall', 51, 'P-346.jpg'),
(72, 'Stunning Spider Plant', 'house', '• Premium Spider Plant\r\n• 5\" Diameter White Planter', 47, 'P-360.jpg'),
(74, 'Zen Oasis Dish Garden', 'european', '• Seasonal Dish Garden\r\n• Woven Basket\r\n• Personalized Card Message\r\n• Same Day Plant Delivery Available', 46, 'FYF-434.jpg'),
(75, 'Pink Daydreams Dish Garden', 'european', '• Peace Lily Plant\r\n• Hot Pink Azalea\r\n• Pink Fittonia\r\n• English Ivy\r\n• Assorted Green Plants\r\n• Basket\r\n• Personalized Card Message', 73, 'FTD-C27-5195.jpg'),
(76, 'The Peaceful Garden Planter', 'european', '• African Violets\r\n• Hot Pink Cyclamen\r\n• Pink Azalea\r\n• Assorted Green Plants\r\n• White Woven Basket\r\n• Personalized Card Message', 55, 'FTD-S29-5008.jpg'),
(77, 'Bold Elegance Bouquet', 'mother', '• Hot Pink Roses\r\n• Pink Stargazer Lilies\r\n• Burgundy Stock\r\n• Lavender Cushion Spray Chrysanthemums\r\n• Pink Snapdragons\r\n• Spiral Eucalyptus\r\n• Lemon Leaf\r\n• Glass Vase', 95, 'TEV52-1.jpg'),
(78, 'Radiant Red Rose Plant', 'mother', '- Red Mini Rose Plant\r\n• 6 Inch Diameter Pink Tin\r\n• Personal Card Message', 47, 'YA109.jpg'),
(79, 'Pretty Please Mother\'s Day Balloon Bouquet', 'mother', '• Pink Spray Roses\r\n• White Daisies\r\n• Green Button Spray Chrysanthemums\r\n• Purple Monte Cassino Asters\r\n• Limonium\r\n• Glass Vase\r\n• Ribbon\r\n• Mother\'s Day Mylar Balloon', 43, 'TEV12-4-MDB.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'asma', 'asmanecib595@gmail.com', 'f93a40ec0518673f1242ab46b844d919', 'admin'),
(2, 'farida', 'farida@gmail.com', '41a6a36598a0acd0d0c3aac95edc7b35', 'user');

-- --------------------------------------------------------

--
-- Structure de la table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
