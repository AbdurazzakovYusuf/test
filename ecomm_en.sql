-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm_en`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 4, 2, '2022-06-22 03:59:45', '2022-06-22 03:59:45'),
(9, 9, 1, '2022-06-22 04:49:57', '2022-06-22 04:49:57'),
(10, 10, 1, '2022-06-22 04:50:02', '2022-06-22 04:50:02'),
(11, 4, 1, '2022-06-22 04:50:08', '2022-06-22 04:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_06_21_145502_create_users_table', 1),
(3, '2022_06_21_161743_create_products_table', 2),
(4, '2022_06_21_193930_create_cart_table', 3),
(5, '2022_06_22_110043_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'pending', 'cash', 'pending', 'Dicta laudantium do', NULL, NULL),
(2, 2, 3, 'pending', 'cash', 'pending', 'Dicta laudantium do', NULL, NULL),
(3, 8, 3, 'pending', 'cash', 'pending', 'Dicta laudantium do', NULL, NULL),
(4, 10, 3, 'pending', 'cash', 'pending', 'Dicta laudantium do', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'LG mobile', '200$', 'mobile', '                Amazon.in\r\n                LG W41 (Magic Blue, 48 MP Quad Camera, 4GB RAM, 64GB Storage), Small', 'https://m.media-amazon.com/images/I/614+W18ms+L._SY606_.jpg', NULL, NULL),
(2, 'LG mobile', '267$', 'mobile', 'The mesmerizing space design with a 3D glass ring on the back is crafted using double-coated double film and innovative nano texture . High-quality materials will give new sensations from working with the device.\r\n\r\n', 'https://consumer-img.huawei.com/content/dam/huawei-cbg-site/mkt/ru/pdp/nova9-se/huawei-nova9-se.jpg', NULL, NULL),
(3, 'Oppo mobile', '400$', 'mobile', 'Built-in memory\n                128 GB\n                Screen diagonal\n                6.43\n                Battery capacity\n                4310 mA * h', 'https://image.oppo.com/content/dam/oppo/common/mkt/v2-2/reno6pro-5g-oversea/navigation/Homepage-header2-427-x-600.png.thumb.webp', NULL, NULL),
(4, 'Panasonic', '570$', 'TV', 'Connect your TV to the Internet and start using a variety of Internet applications and a web browser.', 'https://www.creditasia.uz/upload/iblock/522/televizor-panasonic-tx-43hxr700-1.png', NULL, NULL),
(5, 'Sony', '2500$\r\n', 'TV', '                Light emitting diode (LED) backlight-Yes, Direct LED', 'https://www.mediapark.uz/upload/file/mp/products/TV/1733.jpg', NULL, NULL),
(6, 'LG fridge', '580$', 'Fridge', '260 Litres Frost Free Refrigerator With Smart Inverter Compressor, Convertible Fridge, Smart Diagnosis™, Auto Smart Connect™, MOIST adn FRESH', 'https://www.lg.com/in/images/refrigerators/md07524769/gallery/GL-S292RPZX-Refrigerators-Front-View-D01.jpg', NULL, NULL),
(7, 'Samsung fridge', '700$', 'Fridge', 'Samsung SRF9300BFH 637L French Door Fridge (Black Stainless Steel)', 'https://cdn.shopify.com/s/files/1/0024/9803/5810/products/523200-Product-0-I-637741141959068251_800x800.jpg?v=1638477869', NULL, NULL),
(8, 'Coffee maker', '180$', 'Coffee machine', '                Espresso Machines 15 Bar with Milk Frother, Expresso Coffee Machine for Espresso, Latte and Mocha, 1.5L Removable Water Tank and Double Temperature Control System, Classial, Sliver, 1050W', 'https://sunbeam-s3-production.s3.ap-southeast-2.amazonaws.com/large_PC8100_1340x1340_1_eacb40c232.jpeg', NULL, NULL),
(9, 'LG Microwave', '429$', 'Microwave', 'With the new EasyClean® interior, you can have quick and high performance cleaning inside and out without using chemicals.', 'https://www.lg.com/us/images/cooking-appliances/md07505292/gallery/desktop-03.jpg', NULL, NULL),
(10, 'Trighteach Cooktop', '300$', 'Gas stove', 'Trighteach Portable Induction Cooktop, Double Countertop Burner Total 1800W Electric Stove with Digital Touch Sensor and Kids Safety Lock, 8 Power Levels Induction Cooker', 'https://m.media-amazon.com/images/I/61C09+djDaL._AC_SL1500_.jpg', NULL, NULL),
(11, 'Asus Laptop', '1500$', 'Laptop', 'ASUS ZenBook Pro Duo 15 OLED UX582 Laptop, 15.6” OLED 4K UHD Touch Display, Intel Core i9-11900H, 32GB, 1TB, GeForce RTX 3080 Laptop GPU, ScreenPad Plus, Windows 11 Pro', 'https://m.media-amazon.com/images/I/81AKWKpG4TL._AC_SL1500_.jpg', NULL, NULL),
(12, 'ThinkPad ', '580$', 'Laptop', '11th Generation Intel® Core™ i7-11800H Processor (8 Cores / 16 Threads, 2.30 GHz, up to 4.60 GHz with Turbo Boost, 24 MB Cache)', 'https://www.lenovo.com/medias/wmd00000487.png?context=bWFzdGVyfHJvb3R8MzI4OTc5fGltYWdlL3BuZ3xoZTQvaGJlLzE0MTEwNjA3NjcxMzI2LnBuZ3wwYmQwOTNmMDhiNWI3NzhkYTQ1Zjg1YzM4NzNhNDNhYTkxMTVmNWEyMmE5OWNiMzE2NDhhYTE5ZTZiMjM2ODcz', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Cassady', 'Dolores laboriosam', 'gezaluc@mailinator.com', '+1 (641) 124-8573', '$2y$10$Fn2Pwz3LBKhTvuLCZxteROcBiHjYmo6yDuKvft6qaiqce97GfTKie', NULL, NULL),
(2, 'Peter', 'Dolores laboriosam', 'Spider@mailinator.com', '+1 (706) 158-9985 ', '$2y$10$oIoWrMVle7ioTa8rah6jk.ztbfgNoPobChXyhPmXWcHjIlnhSGUIe', NULL, NULL),
(3, 'Mustafa', 'Agahi', 'Mustafa@ay.com', '+998 (90) 000-04-25 ', '$2y$10$ZPCBPSgOnVCe0YDl4r3Cre0FRJjBzG4IQFd4Z95ecsV9Lqc/CtAOW', NULL, NULL),
(4, 'Yusuf', 'Gulabad', 'abdurazzakovusuf@gmail.com', '+998903241493', '$2y$10$tMcaHmkPlkV1OTsDJ9K7TOgcLsBXPxKESYtVMIm7EqPke3/kxZQxm', '2022-06-22 08:47:58', '2022-06-22 08:47:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
