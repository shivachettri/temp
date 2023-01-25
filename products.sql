-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 25, 2023 at 07:49 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `issaspizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uuid` varchar(32) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `quantity` int(2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_addon`
--

CREATE TABLE `cart_addon` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_addon_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_choice`
--

CREATE TABLE `cart_choice` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_choice_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `selections` text DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_crust`
--

CREATE TABLE `cart_crust` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_crust_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_size`
--

CREATE TABLE `cart_size` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_size_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_topping`
--

CREATE TABLE `cart_topping` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_topping_id` int(11) DEFAULT NULL,
  `product_topping_by_size_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `headline` text DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `headline`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BUILD YOUR OWN PIZZA', '', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(2, 'Speciality Pizzas', '', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(3, 'Slices', '', '1', '2023-01-23 12:30:50', '2023-01-23 18:00:50'),
(4, 'Specials', '', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(5, 'Salads', '', '1', '2023-01-23 12:53:37', '2023-01-23 18:23:37'),
(6, 'Breads & More', '', '1', '2023-01-23 12:58:30', '2023-01-23 18:28:30'),
(7, 'Wings & Chicken Tinders', '', '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(8, 'Subs', '', '1', '2023-01-23 13:06:03', '2023-01-23 18:36:03'),
(9, 'Desserts', '', '1', '2023-01-23 13:10:35', '2023-01-23 18:40:35'),
(10, 'Beverages', '', '1', '2023-01-26 11:25:13', '2023-01-26 16:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` int(11) NOT NULL,
  `from_km` varchar(20) DEFAULT NULL,
  `to_km` varchar(20) DEFAULT NULL,
  `charges` varchar(20) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`id`, `from_km`, `to_km`, `charges`, `status`, `created_at`) VALUES
(1, '0.01', '3', '3.99', '1', '2023-01-25 18:47:11'),
(2, '3.01', '5', '4.99', '1', '2023-01-25 18:47:49');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `discount_code` varchar(10) DEFAULT NULL,
  `type` enum('p','f') DEFAULT NULL,
  `value` float(10,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mail_broker`
--

CREATE TABLE `mail_broker` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `delivery_distance` float(5,2) DEFAULT NULL,
  `discount_code` varchar(10) DEFAULT NULL,
  `sub_total` float(10,2) DEFAULT NULL,
  `tax` float(10,2) DEFAULT NULL,
  `delivery_charges` float(10,2) DEFAULT NULL,
  `discount_value` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `mode_of_payment` enum('c','o') DEFAULT NULL,
  `order_status` enum('p','c','t','f','x') DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_addon`
--

CREATE TABLE `order_addon` (
  `id` int(11) NOT NULL,
  `order_product_id` int(11) DEFAULT NULL,
  `product_addon_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_choice`
--

CREATE TABLE `order_choice` (
  `id` int(11) NOT NULL,
  `order_product_id` int(11) DEFAULT NULL,
  `product_choice_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `selections` text DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_crust`
--

CREATE TABLE `order_crust` (
  `id` int(11) NOT NULL,
  `order_product_id` int(11) DEFAULT NULL,
  `product_crust_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `quantity` int(2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_size`
--

CREATE TABLE `order_size` (
  `id` int(11) NOT NULL,
  `order_product_id` int(11) DEFAULT NULL,
  `product_size_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_topping`
--

CREATE TABLE `order_topping` (
  `id` int(11) NOT NULL,
  `order_product_id` int(11) DEFAULT NULL,
  `product_topping_id` int(11) DEFAULT NULL,
  `product_topping_by_size_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_crust` enum('0','1') DEFAULT NULL,
  `is_size` enum('0','1') DEFAULT NULL,
  `is_topping` enum('0','1') DEFAULT NULL,
  `is_choice` enum('0','1') NOT NULL,
  `is_addon` enum('0','1') DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `description`, `is_crust`, `is_size`, `is_topping`, `is_choice`, `is_addon`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Build Your Own Pizza', 0.00, 'Build your own pizza with Issa\'s Pizza.', '1', '1', '1', '1', '0', '1', '2023-01-23 11:23:49', '2023-01-26 13:00:32'),
(2, 2, 'Meat Lovers Pizza', 0.00, 'Pizza sauce, mozzarella cheese, pepperoni, ham, sausage, bacon & extra cheese.', '1', '1', '1', '1', '0', '1', '2023-01-23 11:29:21', '2023-01-26 13:05:57'),
(3, 2, 'BBQ Chicken Pizza', 0.00, 'BBQ sauce, grilled chicken, onions & extra cheese. Halal.', '1', '1', '1', '1', '0', '1', '2023-01-23 11:34:24', '2023-01-26 13:08:57'),
(4, 2, 'Hawaiian Pizza', 0.00, 'Pizza sauce, mozzarella cheese, ham, bacon, pineapple & extra cheese.', '1', '1', '1', '1', '0', '1', '2023-01-23 11:39:22', '2023-01-26 13:10:24'),
(5, 2, 'Buffalo Chicken Pizza', 0.00, 'Hot buffalo sauce, marinated chicken, onions, loaded with cheese.', '1', '1', '1', '0', NULL, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(6, 2, 'Issa’s Supreme (Deluxe) Pizza', 0.00, 'Pizza sauce, mozzarella cheese, pepperoni, ham, sausage, mushrooms, green peppers & extra cheese.', '1', '1', '1', '1', '0', '1', '2023-01-23 11:46:21', '2023-01-26 13:12:46'),
(7, 2, 'Garden Feast Pizza', 0.00, 'Pizza sauce, Mozzarella cheese, mushrooms, green peppers, tomatoes, onions & extra cheese. Vegetarian.', '1', '1', '1', '1', '0', '1', '2023-01-23 11:48:52', '2023-01-26 13:21:17'),
(8, 2, 'The Factory Pepperonizer Pizza', 0.00, 'Pizza sauce, mozzarella cheese, triple pepperoni & extra cheese.', '1', '1', '1', '1', '0', '1', '2023-01-23 12:20:25', '2023-01-26 13:14:46'),
(9, 2, 'Athenian Pizza', 0.00, 'Pizza sauce, mozzarella cheese, feta, tomatoes, hot peppers & extra cheese. Vegetarian.', '1', '1', '1', '1', '0', '1', '2023-01-23 12:22:08', '2023-01-26 13:22:54'),
(10, 2, 'Triple Cheese Pizza', 0.00, 'Pizza sauce, mozzarella& Muenster blend, Cheddar, topped with extra cheese.', '1', '1', '1', '1', '0', '1', '2023-01-23 12:25:44', '2023-01-26 13:16:18'),
(11, 2, 'Spinach Supreme Pizza', 0.00, 'Pizza sauce, mozzarella cheese, spinach, tomatoes, feta & extra cheese. Vegetarian.', '1', '1', '1', '1', '0', '1', '2023-01-23 12:28:11', '2023-01-26 13:24:22'),
(12, 2, 'Steak Supreme Pizza', 0.00, 'Pizza sauce, mozzarella cheese, steak, mushrooms, green peppers & extra cheese.', '1', '1', '1', '1', '0', '1', '2023-01-23 12:29:38', '2023-01-26 13:18:10'),
(13, 3, 'Slices', 1.50, 'Grab a Slice of hot & fresh pizza', '0', '0', '0', '1', '0', '1', '2023-01-23 12:30:50', '2023-01-26 13:25:28'),
(14, 4, '1-Topping Pizza Special', 0.00, 'A hand-tossed with cheese and your choice of topping.', '1', '1', '1', '1', '0', '1', '2023-01-23 12:33:00', '2023-01-26 13:33:37'),
(15, 4, 'Family Meal Deal', 0.00, 'Large pizza with your choice of 2 toppings. A large cheezy bread, a large salad & a 2-liter drink.', '1', '1', '1', '1', '1', '1', '2023-01-23 12:37:27', '2023-01-26 13:56:32'),
(16, 4, 'Pizza & Bread Special', 0.00, 'Choose any size pizza with 2 toppings and Issa\'s Cheezy Bread.', '1', '1', '1', '1', '0', '1', '2023-01-23 12:44:40', '2023-01-26 13:38:06'),
(17, 5, 'Greek Salad', 0.00, 'Lettuce, tomatoes, onions, feta, olives & hot peppers, greek dressing. Vegetarian.', '0', '1', '0', '1', '1', '1', '2023-01-23 12:53:37', '2023-01-26 16:36:00'),
(18, 5, 'Antipasto Salad', 0.00, 'Lettuce, ham, pepperoni, tomatoes, onions, Italian dressing.', '0', '1', '0', '1', '1', '1', '2023-01-23 12:54:37', '2023-01-26 16:43:35'),
(19, 5, 'Tossed Salad', 0.00, 'Lettuce, tomatoes, onions, cucumbers, croutons, Italian dressing. Vegetarian.', '0', '1', '0', '1', '1', '1', '2023-01-23 12:55:59', '2023-01-26 16:41:30'),
(20, 5, 'Grilled Chicken Salad', 0.00, 'Lettuce, grilled chicken, tomatoes, onions, feta cheese, ranch dressing.', '0', '1', '0', '1', '1', '1', '2023-01-23 12:57:15', '2023-01-26 16:45:11'),
(21, 6, 'Issa’s Cheezy Bread', 0.00, 'Issa’s Cheezy Bread', '0', '1', '0', '1', '0', '1', '2023-01-23 12:58:30', '2023-01-26 16:46:17'),
(22, 6, 'Calzone', 5.99, 'Calzone', '0', '0', '0', '1', '0', '1', '2023-01-23 12:59:20', '2023-01-26 16:47:49'),
(23, 6, 'Garlic Bread', 0.00, 'Garlic Bread', '0', '1', '0', '1', '0', '1', '2023-01-23 13:00:14', '2023-01-26 16:46:51'),
(24, 7, 'Wings', 0.00, 'Wings', '0', '1', '0', '1', '1', '1', '2023-01-23 13:03:00', '2023-01-26 16:49:49'),
(25, 7, 'Tenders', 0.00, 'Tenders', '0', '1', '0', '1', '1', '1', '2023-01-23 13:05:12', '2023-01-26 16:50:49'),
(26, 8, 'Cheese Steak Sub', 0.00, 'Steak, cheese, green peppers, onions, lettuce, tomatoes and mayo.', NULL, '1', NULL, '0', NULL, '1', '2023-01-23 13:06:03', '2023-01-23 18:36:03'),
(27, 8, 'Tuna Delight Sub', 0.00, 'Cheese, green peppers, onions, lettuce, tomatoes and mayo. Halal.', NULL, '1', NULL, '0', NULL, '1', '2023-01-23 13:06:44', '2023-01-23 18:36:44'),
(28, 8, 'Chicken Fajita Sub', 0.00, 'Provolone Cheese, green peppers, hot peppers, onions, grilled chicken, lettuce, tomatoes, and mayo. (Halal).', NULL, '1', NULL, '0', NULL, '1', '2023-01-23 13:07:32', '2023-01-23 18:37:32'),
(29, 8, 'Veggie Sub', 0.00, 'Provolone cheese, green peppers, hot peppers, onions, mushrooms, and black olives, lettuce, tomatoes and Italian dressing. Vegetarian.', NULL, '1', NULL, '0', NULL, '1', '2023-01-23 13:08:07', '2023-01-23 18:38:07'),
(30, 8, 'Gyro Sub', 0.00, 'Feta cheese, onions, gyro meat, topped with lettuce, tomatoes and ranch sauce.', NULL, '1', NULL, '0', NULL, '1', '2023-01-23 13:09:11', '2023-01-23 18:39:11'),
(31, 8, 'Italian Sub', 0.00, 'Cheese, ham, pepperoni, yellow peppers, onions, Italian dressing, lettuce tomato and mayo.', NULL, '1', NULL, '0', NULL, '1', '2023-01-23 13:09:48', '2023-01-23 18:39:48'),
(32, 9, 'Cinnamon Bites', 0.00, 'Freshly made dough, baked and finished off with cinnamon sugar along with a nice layer of icing.', NULL, '1', NULL, '0', NULL, '1', '2023-01-23 13:10:35', '2023-01-23 18:40:35'),
(33, 4, 'Dorm Special', 0.00, 'Your choice of pizza with 2 toppings and a 20 oz. drink.', '1', '1', '1', '1', '0', '1', '2023-01-26 08:14:11', '2023-01-26 13:45:29'),
(34, 4, 'Party Pack', 0.00, 'A large 1-topping pizza, choice of 8 pieces wings & 16 pieces cheezy bread.', '1', '1', '1', '1', NULL, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(35, 4, 'Lunch combo #1', 0.00, 'LUNCH COMBO #1', NULL, '1', NULL, '1', NULL, '1', '2023-01-26 08:30:29', '2023-01-26 14:00:29'),
(36, 4, 'Lunch Combo #2', 0.00, 'Lunch Combo #2', '1', '1', '1', '1', '0', '1', '2023-01-26 08:33:06', '2023-01-26 17:03:27'),
(37, 4, 'Slice Lunch Combo', 0.00, 'Slice Lunch Combo', NULL, '1', NULL, '1', NULL, '1', '2023-01-26 08:34:13', '2023-01-26 14:04:13'),
(38, 10, 'Soda', 0.00, 'Soda', '0', '1', '0', '1', '0', '1', '2023-01-26 11:25:13', '2023-01-26 17:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_addon`
--

CREATE TABLE `product_addon` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_addon`
--

INSERT INTO `product_addon` (`id`, `product_id`, `title`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 15, 'Greek Dressing', 0.50, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(2, 15, 'Italian Dressing', 0.50, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(3, 15, 'French Dressing', 0.50, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(4, 15, 'Ranch Dressing', 0.50, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(5, 17, 'Greek Dressing', 0.50, '1', '2023-01-23 12:53:37', '2023-01-23 18:23:37'),
(6, 17, 'Italian Dressing', 0.50, '1', '2023-01-23 12:53:37', '2023-01-23 18:23:37'),
(7, 17, 'French Dressing', 0.50, '1', '2023-01-23 12:53:37', '2023-01-23 18:23:37'),
(8, 17, 'Ranch Dressing', 0.50, '1', '2023-01-23 12:53:37', '2023-01-23 18:23:37'),
(9, 17, 'Egg', 0.50, '1', '2023-01-23 12:53:37', '2023-01-23 18:23:37'),
(10, 17, 'Chicken', 0.50, '1', '2023-01-23 12:53:37', '2023-01-23 18:23:37'),
(11, 18, 'Greek Dressing', 0.50, '1', '2023-01-23 12:54:37', '2023-01-23 18:24:37'),
(12, 18, 'Italian Dressing', 0.50, '1', '2023-01-23 12:54:37', '2023-01-23 18:24:37'),
(13, 18, 'French Dressing', 0.50, '1', '2023-01-23 12:54:37', '2023-01-23 18:24:37'),
(14, 18, 'Ranch Dressing', 0.50, '1', '2023-01-23 12:54:37', '2023-01-23 18:24:37'),
(15, 18, 'Egg', 0.50, '1', '2023-01-23 12:54:37', '2023-01-23 18:24:37'),
(16, 18, 'Chicken', 0.50, '1', '2023-01-23 12:54:37', '2023-01-23 18:24:37'),
(17, 19, 'Greek Dressing', 0.50, '1', '2023-01-23 12:55:59', '2023-01-23 18:25:59'),
(18, 19, 'Italian Dressing', 0.50, '1', '2023-01-23 12:55:59', '2023-01-23 18:25:59'),
(19, 19, 'French Dressing', 0.50, '1', '2023-01-23 12:55:59', '2023-01-23 18:25:59'),
(20, 19, 'Ranch Dressing', 0.50, '1', '2023-01-23 12:55:59', '2023-01-23 18:25:59'),
(21, 19, 'Egg', 0.50, '1', '2023-01-23 12:55:59', '2023-01-23 18:25:59'),
(22, 19, 'Chicken', 0.50, '1', '2023-01-23 12:55:59', '2023-01-23 18:25:59'),
(23, 20, 'Greek Dressing', 0.50, '1', '2023-01-23 12:57:15', '2023-01-23 18:27:15'),
(24, 20, 'Italian Dressing', 0.50, '1', '2023-01-23 12:57:15', '2023-01-23 18:27:15'),
(25, 20, 'French Dressing', 0.50, '1', '2023-01-23 12:57:15', '2023-01-23 18:27:15'),
(26, 20, 'Ranch Dressing', 0.50, '1', '2023-01-23 12:57:15', '2023-01-23 18:27:15'),
(27, 20, 'Egg', 0.50, '1', '2023-01-23 12:57:15', '2023-01-23 18:27:15'),
(28, 20, 'Chicken', 0.50, '1', '2023-01-23 12:57:15', '2023-01-23 18:27:15'),
(29, 21, 'Pizza Sauce', 0.00, '0', '2023-01-23 12:58:30', '2023-01-26 16:46:17'),
(30, 21, 'Ranch Dressing', 0.00, '0', '2023-01-23 12:58:30', '2023-01-26 16:46:17'),
(31, 23, 'Pizza Sauce', 0.00, '0', '2023-01-23 13:00:14', '2023-01-26 16:46:51'),
(32, 23, 'Ranch Dressing', 0.00, '0', '2023-01-23 13:00:14', '2023-01-26 16:46:51'),
(33, 24, 'Ranch Dressing', 0.50, '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(34, 24, 'Blue Cheese Dressing', 0.50, '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(35, 25, 'Ranch Dressing', 0.50, '1', '2023-01-23 13:05:12', '2023-01-23 18:35:12'),
(36, 25, 'Blue Cheese Dressing', 0.50, '1', '2023-01-23 13:05:12', '2023-01-23 18:35:12'),
(37, 38, '20 oz.', 1.99, '0', '2023-01-26 11:25:13', '2023-01-26 17:09:44'),
(38, 38, '2 Liter', 2.99, '0', '2023-01-26 11:25:13', '2023-01-26 17:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_choice`
--

CREATE TABLE `product_choice` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `options` text DEFAULT NULL,
  `no_selection` int(3) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_choice`
--

INSERT INTO `product_choice` (`id`, `product_id`, `title`, `options`, `no_selection`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Make it with', 'No Cheese', 0, '1', '2023-01-26 07:30:32', '2023-01-26 16:56:27'),
(2, 2, 'Make it with', 'No Cheese,No Pizza Sauce,No Mozzarella Cheese,No Pepperoni,No Ham,No Sausage,No Bacon', 0, '1', '2023-01-26 07:35:57', '2023-01-26 13:09:13'),
(3, 3, 'Make it with', 'No BBQ Sauce,No Grilled chicken,No Onions,No Cheese', 0, '1', '2023-01-26 07:38:57', '2023-01-26 13:09:23'),
(4, 4, 'Make it with', 'No Cheese,No Pizza Sauce,No Mozzarella Cheese,No Pepperoni,No Ham,No Sausage,No Bacon', 0, '1', '2023-01-26 07:40:24', '2023-01-26 13:10:24'),
(5, 6, 'Make it with', 'No Cheese,No Pizza Sauce,No Mozzarella Cheese,No Pepperoni,No Ham,No Sausage,No Mushroom,No Green Peppers', 0, '1', '2023-01-26 07:42:46', '2023-01-26 13:12:46'),
(6, 8, 'Make it with', 'No Pizza Sauce,No Mozzarella Cheese,No Pepperoni,No Extra Cheese', 0, '1', '2023-01-26 07:44:46', '2023-01-26 13:14:46'),
(7, 10, 'Make it with', 'No Pizza Sauce,No Extra Cheese,No Mozzarella Cheese', 0, '1', '2023-01-26 07:46:18', '2023-01-26 13:16:18'),
(8, 12, 'Make it with', 'No Cheese,No Pizza Sauce,No Mozzarella Cheese,No Steak,No Mushroom,No Green Peppers', 0, '1', '2023-01-26 07:48:10', '2023-01-26 13:18:10'),
(9, 7, 'Make it with', 'No Cheese,No Pizza Sauce,No Mozzarella Cheese,No Mushroom,No Green Peppers,No Tomatoes,No Onions', 0, '1', '2023-01-26 07:51:17', '2023-01-26 13:21:17'),
(10, 9, 'Make it with', 'No Cheese,No Mozzarella Cheese,No Feta Cheese,No Pizza Sauce', 0, '1', '2023-01-26 07:52:54', '2023-01-26 13:22:54'),
(11, 11, 'Make it with', 'No Pizza Sauce,No Mozzarella Cheese,No Spinach,No Tomatoes,No Feta Cheese,No Cheese', 0, '1', '2023-01-26 07:54:22', '2023-01-26 13:24:22'),
(12, 13, 'An Option', 'Regular', 1, '1', '2023-01-26 07:55:28', '2023-01-26 16:58:27'),
(13, 14, 'Topping', 'Pepperoni, Ham, Bacon, Sausage, Beef, Gyro, Steak, Chicken, Mushrooms, Green Pepper, Onions, Tomatoes, Spinach, Broccoli, Black Olives, Green Olives, Banana Peppers, Jalapenos, Feta Cheese, Pineapple, Anchovies, Extra Cheese', 1, '1', '2023-01-26 08:03:37', '2023-01-26 13:33:37'),
(14, 16, 'Up To Two Toppings', 'Pepperoni, Ham, Bacon, Sausage, Beef, Gyro, Steak, Chicken, Mushrooms, Green Pepper, Onions, Tomatoes, Spinach, Broccoli, Black Olives, Green Olives, Banana Peppers, Jalapenos, Feta Cheese, Pineapple, Anchovies, Extra Cheese', 2, '1', '2023-01-26 08:08:06', '2023-01-26 13:38:06'),
(15, 16, 'Sauce', 'Issa\'s House Pizza Sauce,Ranch Base,Alfredo Sauce', 1, '1', '2023-01-26 08:08:06', '2023-01-26 13:38:06'),
(16, 33, 'Drink', 'Coke,Diet Coke,Sprite', 1, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(17, 33, 'Up to two toppings', 'Pepperoni, Ham, Bacon, Sausage, Beef, Gyro, Steak, Chicken, Mushrooms, Green Pepper, Onions, Tomatoes, Spinach, Broccoli, Black Olives, Green Olives, Banana Peppers, Jalapenos, Feta Cheese, Pineapple, Anchovies, Extra Cheese', 2, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(18, 34, 'Sauce', 'Issa\'s House Pizza Sauce,Ranch Base,Alfredo Sauce', 1, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(19, 34, 'Topping', 'Pepperoni, Ham, Bacon, Sausage, Beef, Gyro, Steak, Chicken, Mushrooms, Green Pepper, Onions, Tomatoes, Spinach, Broccoli, Black Olives, Green Olives, Banana Peppers, Jalapenos, Feta Cheese, Pineapple, Anchovies, Extra Cheese', 1, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(20, 34, 'Option for the wings', 'Plain,BBQ,Hot', 1, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(21, 15, 'Up To Two Toppings', 'Pepperoni, Ham, Bacon, Sausage, Beef, Gyro, Steak, Chicken, Mushrooms, Green Pepper, Onions, Tomatoes, Spinach, Broccoli, Black Olives, Green Olives, Banana Peppers, Jalapenos, Feta Cheese, Pineapple, Anchovies, Extra Cheese', 2, '1', '2023-01-26 08:26:32', '2023-01-26 13:56:32'),
(22, 15, 'Salad', 'Greek Salad.Tossed Salad,Antipasto Salad,Grilled Chicken Salad', 1, '1', '2023-01-26 08:26:32', '2023-01-26 13:56:32'),
(23, 15, 'Salad Dressing', 'Greek Dressing,Italian Dressing,French Dressing,Ranch Dressing,No Dressing', 1, '1', '2023-01-26 08:26:32', '2023-01-26 13:56:32'),
(24, 15, 'Drink', 'Coke,Diet Coke,Sprite', 1, '1', '2023-01-26 08:26:32', '2023-01-26 13:56:32'),
(25, 35, 'Pop', 'Coke,Diet Coke,Sprite,Cherry Coke,Fanta', 1, '1', '2023-01-26 08:30:29', '2023-01-26 14:00:29'),
(26, 35, 'Sub', 'Cheese Steak Sub,Chicken Fajita Sub,Gyro Sub,Tuna Delight Sub,Veggie Sub,Italian Sub', 1, '1', '2023-01-26 08:30:29', '2023-01-26 14:00:29'),
(27, 36, 'Pop', 'Coke,Diet Coke,Sprite,Cherry Coke,Fanta', 1, '1', '2023-01-26 08:33:07', '2023-01-26 14:03:07'),
(28, 36, 'Make The Pizza With', 'No Cheese', 0, '1', '2023-01-26 08:33:07', '2023-01-26 17:03:27'),
(29, 37, 'Pop', 'Coke,Diet Coke,Sprite,Cherry Coke,Fanta', 1, '1', '2023-01-26 08:34:13', '2023-01-26 14:04:13'),
(30, 17, 'Make it with', 'No Lettuce,No Tomatoes,No Onions,No Feta Cheese,No Olives,No Hot Pappers', 0, '1', '2023-01-26 11:06:00', '2023-01-26 16:36:00'),
(31, 17, 'Substitute Dressing with ', 'Italian Dressing,French Dressing,Ranch Dressing,No Dressing', 1, '1', '2023-01-26 11:06:00', '2023-01-26 16:36:00'),
(32, 19, 'Substitute Dressing with ', 'Italian Dressing,French Dressing,Ranch Dressing,No Dressing', 1, '1', '2023-01-26 11:11:30', '2023-01-26 16:41:30'),
(33, 19, 'Make It With', 'No Lettuce,No Tomatoes,No Onions,No Cucumbers,No Croutons', 0, '1', '2023-01-26 11:11:30', '2023-01-26 16:41:30'),
(34, 18, 'Substitute Dressing with ', 'Italian Dressing,French Dressing,Ranch Dressing,No Dressing', 1, '1', '2023-01-26 11:13:35', '2023-01-26 16:43:35'),
(35, 18, 'Make It With', 'No Lettuce,No Tomatoes,No Onions,No Ham,No Pepperoni', 0, '1', '2023-01-26 11:13:35', '2023-01-26 16:43:35'),
(36, 20, 'Make it with', 'No Lettuce,No Tomatoes,No Onions,No Feta Cheese,No Grilled Chicken', 0, '1', '2023-01-26 11:15:11', '2023-01-26 16:45:11'),
(37, 20, 'Substitute Dressing with  ', 'Italian Dressing,French Dressing,Ranch Dressing,No Dressing', 1, '1', '2023-01-26 11:15:11', '2023-01-26 16:45:11'),
(38, 21, 'Dipping Sauce', 'Pizza Sauce,Ranch Dressing', 1, '1', '2023-01-26 11:16:17', '2023-01-26 16:46:17'),
(39, 23, 'Dipping Sauce', 'Pizza Sauce,Ranch Dressing', 1, '1', '2023-01-26 11:16:51', '2023-01-26 16:46:51'),
(40, 22, 'Up To Three Toppings', 'Pepperoni, Ham, Bacon, Sausage, Beef, Gyro, Steak, Chicken, Mushrooms, Green Pepper, Onions, Tomatoes, Spinach, Broccoli, Black Olives, Green Olives, Banana Peppers, Jalapenos, Feta Cheese, Pineapple, Anchovies, Extra Cheese', 3, '1', '2023-01-26 11:17:49', '2023-01-26 16:47:49'),
(41, 24, 'Option', 'Plain,BBQ,Hot', 1, '1', '2023-01-26 11:19:49', '2023-01-26 16:49:49'),
(42, 24, 'Dipping Sauce', 'Ranch Dressing,Blue Cheese Dressing', 1, '1', '2023-01-26 11:19:49', '2023-01-26 16:49:49'),
(43, 25, 'Dipping Sauce', 'BBQ Sauce,Ranch Dressing,Blue Cheese Dressing', 1, '1', '2023-01-26 11:20:49', '2023-01-26 16:50:49'),
(44, 38, 'Soda', 'Coke,Diet Coke,Sprite,Cherry Coke,Fanta', 1, '1', '2023-01-26 11:25:13', '2023-01-26 16:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_crust`
--

CREATE TABLE `product_crust` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_crust`
--

INSERT INTO `product_crust` (`id`, `product_id`, `title`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(2, 1, 'Thin Crust', 0.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(3, 1, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(4, 1, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(5, 1, 'Gluten Free Crust', 2.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(6, 2, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(7, 2, 'Thin Crust', 0.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(8, 2, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(9, 2, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(10, 2, 'Gluten Free Crust', 2.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(11, 3, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(12, 3, 'Thin Crust', 0.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(13, 3, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(14, 3, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(15, 3, 'Gluten Free Crust', 2.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(16, 4, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(17, 4, 'Thin Crust', 0.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(18, 4, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(19, 4, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(20, 4, 'Gluten Free Crust', 2.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(21, 5, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(22, 5, 'Thin Crust', 0.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(23, 5, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(24, 5, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(25, 5, 'Gluten Free Crust', 2.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(26, 6, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(27, 6, 'Thin Crust', 0.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(28, 6, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(29, 6, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(30, 6, 'Gluten Free Crust', 2.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(31, 7, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(32, 7, 'Thin Crust', 0.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(33, 7, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(34, 7, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(35, 7, 'Gluten Free Crust', 2.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(36, 8, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(37, 8, 'Thin Crust', 0.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(38, 8, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(39, 8, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(40, 8, 'Gluten Free Crust', 2.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(41, 9, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(42, 9, 'Thin Crust', 0.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(43, 9, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(44, 9, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(45, 9, 'Gluten Free Crust', 2.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(46, 10, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(47, 10, 'Thin Crust', 0.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(48, 10, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(49, 10, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(50, 10, 'Gluten Free Crust', 2.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(51, 11, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(52, 11, 'Thin Crust', 0.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(53, 11, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(54, 11, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(55, 11, 'Gluten Free Crust', 2.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(56, 12, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(57, 12, 'Thin Crust', 0.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(58, 12, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(59, 12, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(60, 12, 'Gluten Free Crust', 2.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(61, 14, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(62, 14, 'Thin Crust', 0.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(63, 14, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(64, 14, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(65, 14, 'Gluten Free Crust', 2.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:20'),
(66, 15, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(67, 15, 'Thin Crust', 0.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(68, 15, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(69, 15, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(70, 15, 'Gluten Free Crust', 2.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(71, 16, 'Hand Tossed Crust', 0.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(72, 16, 'Thin Crust', 0.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(73, 16, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(74, 16, 'Whole Wheat Dough', 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(75, 16, 'Gluten Free Crust', 2.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(76, 33, 'Hand Tossed Crust', 0.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(77, 33, 'Thin Crust', 0.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(78, 33, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(79, 33, 'Whole Wheat Dough', 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(80, 33, 'Gluten Free Crust', 2.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(81, 34, 'Hand Tossed Crust', 0.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(82, 34, 'Thin Crust', 0.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(83, 34, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(84, 34, 'Whole Wheat Dough', 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(85, 34, 'Gluten Free Crust', 2.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(86, 36, 'Hand Tossed Crust', 0.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(87, 36, 'Thin Crust', 0.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(88, 36, 'Detroit Style Deep Dish Crust', 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(89, 36, 'Whole Wheat Dough', 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(90, 36, 'Gluten Free Crust', 2.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `title`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Small', 6.99, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(2, 1, 'Medium', 8.99, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(3, 1, 'Large', 9.99, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(4, 2, 'Small', 10.99, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(5, 2, 'Medium', 12.99, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(6, 2, 'Large', 14.99, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(7, 3, 'Small', 10.99, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(8, 3, 'Medium', 12.99, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(9, 3, 'Large', 14.99, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(10, 4, 'Small', 10.99, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(11, 4, 'Medium', 12.99, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(12, 4, 'Large', 14.99, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(13, 5, 'Small', 10.99, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(14, 5, 'Medium', 12.99, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(15, 5, 'Large', 14.99, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(16, 6, 'Small', 10.99, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(17, 6, 'Medium', 12.99, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(18, 6, 'Large', 14.99, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(19, 7, 'Small', 10.99, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(20, 7, 'Medium', 12.99, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(21, 7, 'Large', 14.99, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(22, 8, 'Small', 10.99, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(23, 8, 'Medium', 12.99, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(24, 8, 'Large', 14.99, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(25, 9, 'Small', 10.99, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(26, 9, 'Medium', 12.99, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(27, 9, 'Large', 14.99, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(28, 10, 'Small', 10.99, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(29, 10, 'Medium', 12.99, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(30, 10, 'Large', 14.99, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(31, 11, 'Small', 10.99, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(32, 11, 'Medium', 12.99, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(33, 11, 'Large', 14.99, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(34, 12, 'Small', 10.99, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(35, 12, 'Medium', 12.99, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(36, 12, 'Large', 14.99, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(37, 14, 'Small', 4.99, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(38, 14, 'Medium', 6.99, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(39, 14, 'Large', 7.99, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(40, 15, 'Special', 29.99, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(41, 16, 'Small', 9.99, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(42, 16, 'Medium', 11.99, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(43, 16, 'Large', 13.99, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(44, 17, 'Small', 5.99, '1', '2023-01-23 12:53:37', '2023-01-23 18:23:37'),
(45, 17, 'Large', 8.99, '1', '2023-01-23 12:53:37', '2023-01-23 18:23:37'),
(46, 18, 'Small', 5.99, '1', '2023-01-23 12:54:37', '2023-01-23 18:24:37'),
(47, 18, 'Large', 8.99, '1', '2023-01-23 12:54:37', '2023-01-23 18:24:37'),
(48, 19, 'Small', 5.99, '1', '2023-01-23 12:55:59', '2023-01-23 18:25:59'),
(49, 19, 'Large', 8.99, '1', '2023-01-23 12:55:59', '2023-01-23 18:25:59'),
(50, 20, 'Small', 5.99, '1', '2023-01-23 12:57:15', '2023-01-23 18:27:15'),
(51, 20, 'Large', 8.99, '1', '2023-01-23 12:57:15', '2023-01-23 18:27:15'),
(52, 21, '8 Pieces', 5.99, '1', '2023-01-23 12:58:30', '2023-01-23 18:28:30'),
(53, 21, '16 Pieces', 8.99, '1', '2023-01-23 12:58:30', '2023-01-23 18:28:30'),
(54, 23, '8 Pieces', 4.99, '1', '2023-01-23 13:00:14', '2023-01-23 18:30:14'),
(55, 23, '16 Pieces', 7.99, '1', '2023-01-23 13:00:14', '2023-01-23 18:30:14'),
(56, 24, '8 Pieces', 7.99, '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(57, 24, '16 Pieces', 13.99, '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(58, 25, '4 Pieces', 4.99, '1', '2023-01-23 13:05:12', '2023-01-23 18:35:12'),
(59, 25, '8 Pieces', 8.99, '1', '2023-01-23 13:05:12', '2023-01-23 18:35:12'),
(60, 26, '8\"', 5.99, '1', '2023-01-23 13:06:03', '2023-01-23 18:36:03'),
(61, 26, '16\"', 9.99, '1', '2023-01-23 13:06:03', '2023-01-23 18:36:03'),
(62, 27, '8\"', 5.99, '1', '2023-01-23 13:06:44', '2023-01-23 18:36:44'),
(63, 27, '16\"', 9.99, '1', '2023-01-23 13:06:44', '2023-01-23 18:36:44'),
(64, 28, '8\"', 5.99, '1', '2023-01-23 13:07:32', '2023-01-23 18:37:32'),
(65, 28, '16\"', 9.99, '1', '2023-01-23 13:07:32', '2023-01-23 18:37:32'),
(66, 29, '8\"', 5.99, '1', '2023-01-23 13:08:07', '2023-01-23 18:38:07'),
(67, 29, '16\"', 9.99, '1', '2023-01-23 13:08:07', '2023-01-23 18:38:07'),
(68, 30, '8\"', 5.99, '1', '2023-01-23 13:09:11', '2023-01-23 18:39:11'),
(69, 30, '16\"', 9.99, '1', '2023-01-23 13:09:11', '2023-01-23 18:39:11'),
(70, 31, '8\"', 5.99, '1', '2023-01-23 13:09:48', '2023-01-23 18:39:48'),
(71, 31, '16\"', 9.99, '1', '2023-01-23 13:09:48', '2023-01-23 18:39:48'),
(72, 32, '8\"', 4.99, '1', '2023-01-23 13:10:35', '2023-01-23 18:40:35'),
(73, 32, '16\"', 7.99, '1', '2023-01-23 13:10:35', '2023-01-23 18:40:35'),
(74, 33, 'Small', 10.99, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(75, 33, 'Medium', 12.99, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(76, 33, 'Large', 14.99, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(77, 34, 'Special', 25.99, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(78, 35, 'Special', 7.99, '1', '2023-01-26 08:30:29', '2023-01-26 14:00:29'),
(79, 36, 'Special', 7.99, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(80, 37, 'Special', 5.50, '1', '2023-01-26 08:34:13', '2023-01-26 14:04:13'),
(81, 38, '20 oz.', 1.99, '1', '2023-01-26 11:39:44', '2023-01-26 17:09:44'),
(82, 38, '2 Liter', 2.99, '1', '2023-01-26 11:39:44', '2023-01-26 17:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_topping`
--

CREATE TABLE `product_topping` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_topping`
--

INSERT INTO `product_topping` (`id`, `product_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pepperoni', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(2, 1, 'Ham', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(3, 1, 'Bacon', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(4, 1, 'Sausage', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(5, 1, 'Beef', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(6, 1, 'Gyro', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(7, 1, 'Steak', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(8, 1, 'Chicken', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(9, 1, 'Mushroom', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(10, 1, 'Green Pepper', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(11, 1, 'Onions', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(12, 1, 'Tomatoes', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(13, 1, 'Spinach', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(14, 1, 'Broccoli', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(15, 1, 'Black Olives', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(16, 1, 'Green Olives', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(17, 1, 'Banana Peppers', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(18, 1, 'Jalapenos', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(19, 1, 'Feta Cheese', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(20, 1, 'Pineapple', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(21, 1, 'Anchovies', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(22, 1, 'Extra Cheese', '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(23, 2, 'Pepperoni', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(24, 2, 'Ham', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(25, 2, 'Bacon', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(26, 2, 'Sausage', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(27, 2, 'Beef', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(28, 2, 'Gyro', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(29, 2, 'Steak', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(30, 2, 'Chicken', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(31, 2, 'Mushrooms', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(32, 2, 'Green Pepper', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(33, 2, 'Onions', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(34, 2, 'Tomatoes', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(35, 2, 'Spinach', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(36, 2, 'Broccoli', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(37, 2, 'Black Olives', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(38, 2, 'Green Olives', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(39, 2, 'Banana Peppers', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(40, 2, 'Jalapenos', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(41, 2, 'Feta Cheese', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(42, 2, 'Pineapple', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(43, 2, 'Anchovies', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(44, 2, 'Extra Cheese', '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(45, 3, 'Pepperoni', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(46, 3, 'Ham', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(47, 3, 'Bacon', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(48, 3, 'Sausage', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(49, 3, 'Beef', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(50, 3, 'Gyro', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(51, 3, 'Steak', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(52, 3, 'Chicken', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(53, 3, 'Mushrooms', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(54, 3, 'Green Pepper', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(55, 3, 'Onions', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(56, 3, 'Tomatoes', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(57, 3, 'Spinach', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(58, 3, 'Broccoli', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(59, 3, 'Black Olives', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(60, 3, 'Green Olives', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(61, 3, 'Banana Peppers', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(62, 3, 'Jalapenos', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(63, 3, 'Feta Cheese', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(64, 3, 'Pineapple', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(65, 3, 'Anchovies', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(66, 3, 'Extra Cheese', '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(67, 4, 'Pepperoni', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(68, 4, 'Ham', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(69, 4, 'Bacon', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(70, 4, 'Sausage', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(71, 4, 'Beef', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(72, 4, 'Gyro', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(73, 4, 'Steak', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(74, 4, 'Chicken', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(75, 4, 'Mushrooms', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(76, 4, 'Green Pepper', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(77, 4, 'Onions', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(78, 4, 'Tomatoes', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(79, 4, 'Spinach', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(80, 4, 'Broccoli', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(81, 4, 'Black Olives', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(82, 4, 'Green Olives', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(83, 4, 'Banana Peppers', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(84, 4, 'Jalapenos', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(85, 4, 'Feta Cheese', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(86, 4, 'Pineapple', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(87, 4, 'Anchovies', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(88, 4, 'Extra Cheese', '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(89, 5, 'Pepperoni', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(90, 5, 'Ham', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(91, 5, 'Bacon', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(92, 5, 'Sausage', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(93, 5, 'Beef', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(94, 5, 'Gyro', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(95, 5, 'Steak', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(96, 5, 'Chicken', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(97, 5, 'Mushrooms', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(98, 5, 'Green Pepper', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(99, 5, 'Onions', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(100, 5, 'Tomatoes', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(101, 5, 'Spinach', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(102, 5, 'Broccoli', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(103, 5, 'Black Olives', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(104, 5, 'Green Olives', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(105, 5, 'Banana Peppers', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(106, 5, 'Jalapenos', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(107, 5, 'Feta Cheese', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(108, 5, 'Pineapple', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(109, 5, 'Anchovies', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(110, 5, 'Extra Cheese', '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(111, 6, 'Pepperoni', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(112, 6, 'Ham', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(113, 6, 'Bacon', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(114, 6, 'Sausage', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(115, 6, 'Beef', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(116, 6, 'Gyro', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(117, 6, 'Steak', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(118, 6, 'Chicken', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(119, 6, 'Mushrooms', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(120, 6, 'Green Pepper', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(121, 6, 'Onions', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(122, 6, 'Tomatoes', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(123, 6, 'Spinach', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(124, 6, 'Broccoli', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(125, 6, 'Black Olives', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(126, 6, 'Green Olives', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(127, 6, 'Banana Peppers', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(128, 6, 'Jalapenos', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(129, 6, 'Feta Cheese', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(130, 6, 'Pineapple', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(131, 6, 'Anchovies', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(132, 6, 'Extra Cheese', '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(133, 7, 'Pepperoni', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(134, 7, 'Ham', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(135, 7, 'Bacon', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(136, 7, 'Sausage', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(137, 7, 'Beef', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(138, 7, 'Gyro', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(139, 7, 'Steak', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(140, 7, 'Chicken', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(141, 7, 'Mushrooms', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(142, 7, 'Green Pepper', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(143, 7, 'Onions', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(144, 7, 'Tomatoes', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(145, 7, 'Spinach', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(146, 7, 'Broccoli', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(147, 7, 'Black Olives', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(148, 7, 'Green Olives', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(149, 7, 'Banana Peppers', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(150, 7, 'Jalapenos', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(151, 7, 'Feta Cheese', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(152, 7, 'Pineapple', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(153, 7, 'Anchovies', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(154, 7, 'Extra Cheese', '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(155, 8, 'Pepperoni', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(156, 8, 'Ham', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(157, 8, 'Bacon', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(158, 8, 'Sausage', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(159, 8, 'Beef', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(160, 8, 'Gyro', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(161, 8, 'Steak', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(162, 8, 'Chicken', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(163, 8, 'Mushrooms', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(164, 8, 'Green Pepper', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(165, 8, 'Onions', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(166, 8, 'Tomatoes', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(167, 8, 'Spinach', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(168, 8, 'Broccoli', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(169, 8, 'Black Olives', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(170, 8, 'Green Olives', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(171, 8, 'Banana Peppers', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(172, 8, 'Jalapenos', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(173, 8, 'Feta Cheese', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(174, 8, 'Pineapple', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(175, 8, 'Anchovies', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(176, 8, 'Extra Cheese', '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(177, 9, 'Pepperoni', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(178, 9, 'Ham', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(179, 9, 'Bacon', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(180, 9, 'Sausage', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(181, 9, 'Beef', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(182, 9, 'Gyro', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(183, 9, 'Steak', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(184, 9, 'Chicken', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(185, 9, 'Mushrooms', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(186, 9, 'Green Pepper', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(187, 9, 'Onions', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(188, 9, 'Tomatoes', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(189, 9, 'Spinach', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(190, 9, 'Broccoli', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(191, 9, 'Black Olives', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(192, 9, 'Green Olives', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(193, 9, 'Banana Peppers', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(194, 9, 'Jalapenos', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(195, 9, 'Feta Cheese', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(196, 9, 'Pineapple', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(197, 9, 'Anchovies', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(198, 9, 'Extra Cheese', '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(199, 10, 'Pepperoni', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(200, 10, 'Ham', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(201, 10, 'Bacon', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(202, 10, 'Sausage', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(203, 10, 'Beef', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(204, 10, 'Gyro', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(205, 10, 'Steak', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(206, 10, 'Chicken', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(207, 10, 'Mushrooms', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(208, 10, 'Green Pepper', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(209, 10, 'Onions', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(210, 10, 'Tomatoes', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(211, 10, 'Spinach', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(212, 10, 'Broccoli', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(213, 10, 'Black Olives', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(214, 10, 'Green Olives', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(215, 10, 'Banana Peppers', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(216, 10, 'Jalapenos', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(217, 10, 'Feta Cheese', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(218, 10, 'Pineapple', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(219, 10, 'Anchovies', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(220, 10, 'Extra Cheese', '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(221, 11, 'Pepperoni', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(222, 11, 'Ham', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(223, 11, 'Bacon', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(224, 11, 'Sausage', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(225, 11, 'Beef', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(226, 11, 'Gyro', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(227, 11, 'Steak', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(228, 11, 'Chicken', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(229, 11, 'Mushrooms', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(230, 11, 'Green Pepper', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(231, 11, 'Onions', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(232, 11, 'Tomatoes', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(233, 11, 'Spinach', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(234, 11, 'Broccoli', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(235, 11, 'Black Olives', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(236, 11, 'Green Olives', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(237, 11, 'Banana Peppers', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(238, 11, 'Jalapenos', '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(239, 11, 'Feta Cheese', '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(240, 11, 'Pineapple', '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(241, 11, 'Anchovies', '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(242, 11, 'Extra Cheese', '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(243, 12, 'Pepperoni', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(244, 12, 'Ham', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(245, 12, 'Bacon', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(246, 12, 'Sausage', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(247, 12, 'Beef', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(248, 12, 'Gyro', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(249, 12, 'Steak', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(250, 12, 'Chicken', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(251, 12, 'Mushrooms', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(252, 12, 'Green Pepper', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(253, 12, 'Onions', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(254, 12, 'Tomatoes', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(255, 12, 'Spinach', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(256, 12, 'Broccoli', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(257, 12, 'Black Olives', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(258, 12, 'Green Olives', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(259, 12, 'Banana Peppers', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(260, 12, 'Jalapenos', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(261, 12, 'Feta Cheese', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(262, 12, 'Pineapple', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(263, 12, 'Anchovies', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(264, 12, 'Extra Cheese', '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(265, 14, 'Pepperoni', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(266, 14, 'Ham', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(267, 14, 'Bacon', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(268, 14, 'Sausage', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(269, 14, 'Beef', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(270, 14, 'Gyro', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(271, 14, 'Steak', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(272, 14, 'Chicken', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(273, 14, 'Mushrooms', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(274, 14, 'Green Pepper', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(275, 14, 'Onions', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(276, 14, 'Tomatoes', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(277, 14, 'Spinach', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(278, 14, 'Broccoli', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(279, 14, 'Black Olives', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(280, 14, 'Green Olives', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(281, 14, 'Banana Peppers', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(282, 14, 'Jalapenos', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(283, 14, 'Feta Cheese', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(284, 14, 'Pineapple', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(285, 14, 'Anchovies', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(286, 14, 'Extra Cheese', '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(287, 15, 'Pepperoni', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(288, 15, 'Ham', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(289, 15, 'Bacon', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(290, 15, 'Sausage', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(291, 15, 'Beef', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(292, 15, 'Gyro', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(293, 15, 'Steak', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(294, 15, 'Chicken', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(295, 15, 'Mushrooms', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(296, 15, 'Green Pepper', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(297, 15, 'Onions', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(298, 15, 'Tomatoes', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(299, 15, 'Spinach', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(300, 15, 'Broccoli', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(301, 15, 'Black Olives', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(302, 15, 'Green Olives', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(303, 15, 'Banana Peppers', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(304, 15, 'Jalapenos', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(305, 15, 'Feta Cheese', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(306, 15, 'Pineapple', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(307, 15, 'Anchovies', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(308, 15, 'Extra Cheese', '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(309, 16, 'Pepperoni', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(310, 16, 'Ham', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(311, 16, 'Bacon', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(312, 16, 'Sausage', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(313, 16, 'Beef', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(314, 16, 'Gyro', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(315, 16, 'Steak', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(316, 16, 'Chicken', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(317, 16, 'Mushrooms', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(318, 16, 'Green Pepper', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(319, 16, 'Onions', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(320, 16, 'Tomatoes', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(321, 16, 'Spinach', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(322, 16, 'Broccoli', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(323, 16, 'Black Olives', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(324, 16, 'Green Olives', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(325, 16, 'Banana Peppers', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(326, 16, 'Jalapenos', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(327, 16, 'Feta Cheese', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(328, 16, 'Pineapple', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(329, 16, 'Anchovies', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(330, 16, 'Extra Cheese', '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(331, 24, 'Plain', '0', '2023-01-23 13:03:00', '2023-01-26 16:48:11'),
(332, 24, 'BBQ', '0', '2023-01-23 13:03:00', '2023-01-26 16:48:11'),
(333, 24, 'Hot', '0', '2023-01-23 13:03:00', '2023-01-26 16:48:11'),
(334, 33, 'Pepperoni', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(335, 33, 'Ham', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(336, 33, 'Bacon', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(337, 33, 'Sausage', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(338, 33, 'Beef', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(339, 33, 'Gyro', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(340, 33, 'Steak', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(341, 33, 'Chicken', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(342, 33, 'Mushrooms', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(343, 33, 'Green Pepper', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(344, 33, 'Onions', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(345, 33, 'Tomatoes', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(346, 33, 'Spinach', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(347, 33, 'Broccoli', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(348, 33, 'Black Olives', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(349, 33, 'Green Olives', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(350, 33, 'Banana Peppers', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(351, 33, 'Jalapenos', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(352, 33, 'Feta Cheese', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(353, 33, 'Pineapple', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(354, 33, 'Anchovies', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(355, 33, 'Extra Cheese', '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(356, 34, 'Pepperoni', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(357, 34, 'Ham', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(358, 34, 'Bacon', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(359, 34, 'Sausage', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(360, 34, 'Beef', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(361, 34, 'Gyro', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(362, 34, 'Steak', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(363, 34, 'Chicken', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(364, 34, 'Mushrooms', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(365, 34, 'Green Pepper', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(366, 34, 'Onions', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(367, 34, 'Tomatoes', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(368, 34, 'Spinach', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(369, 34, 'Broccoli', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(370, 34, 'Black Olives', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(371, 34, 'Green Olives', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(372, 34, 'Banana Peppers', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(373, 34, 'Jalapenos', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(374, 34, 'Feta Cheese', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(375, 34, 'Pineapple', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(376, 34, 'Anchovies', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(377, 34, 'Extra Cheese', '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(378, 36, 'Pepperoni', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(379, 36, 'Ham', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(380, 36, 'Bacon', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(381, 36, 'Sausage', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(382, 36, 'Beef', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(383, 36, 'Gyro', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(384, 36, 'Steak', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(385, 36, 'Chicken', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(386, 36, 'Mushrooms', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(387, 36, 'Green Pepper', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(388, 36, 'Onions', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(389, 36, 'Tomatoes', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(390, 36, 'Spinach', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(391, 36, 'Broccoli', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(392, 36, 'Black Olives', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(393, 36, 'Green Olives', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(394, 36, 'Banana Peppers', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(395, 36, 'Jalapenos', '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(396, 36, 'Feta Cheese', '1', '2023-01-26 08:33:07', '2023-01-26 14:03:07'),
(397, 36, 'Pineapple', '1', '2023-01-26 08:33:07', '2023-01-26 14:03:07'),
(398, 36, 'Anchovies', '1', '2023-01-26 08:33:07', '2023-01-26 14:03:07'),
(399, 36, 'Extra Cheese', '1', '2023-01-26 08:33:07', '2023-01-26 14:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_topping_by_size`
--

CREATE TABLE `product_topping_by_size` (
  `id` int(11) NOT NULL,
  `product_topping_id` int(11) DEFAULT NULL,
  `product_size_id` int(11) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_topping_by_size`
--

INSERT INTO `product_topping_by_size` (`id`, `product_topping_id`, `product_size_id`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(2, 1, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(3, 1, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(4, 2, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(5, 2, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(6, 2, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(7, 3, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(8, 3, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(9, 3, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(10, 4, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(11, 4, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(12, 4, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(13, 5, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(14, 5, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(15, 5, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(16, 6, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(17, 6, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(18, 6, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(19, 7, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(20, 7, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(21, 7, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(22, 8, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(23, 8, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(24, 8, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(25, 9, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(26, 9, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(27, 9, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(28, 10, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(29, 10, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(30, 10, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(31, 11, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(32, 11, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(33, 11, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(34, 12, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(35, 12, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(36, 12, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(37, 13, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(38, 13, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(39, 13, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(40, 14, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(41, 14, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(42, 14, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(43, 15, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(44, 15, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(45, 15, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(46, 16, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(47, 16, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(48, 16, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(49, 17, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(50, 17, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(51, 17, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(52, 18, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(53, 18, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(54, 18, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(55, 19, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(56, 19, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(57, 19, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(58, 20, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(59, 20, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(60, 20, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(61, 21, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(62, 21, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(63, 21, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(64, 22, 1, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(65, 22, 2, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(66, 22, 3, 1.00, '1', '2023-01-23 11:23:49', '2023-01-23 16:53:49'),
(67, 23, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(68, 23, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(69, 23, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(70, 24, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(71, 24, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(72, 24, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(73, 25, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(74, 25, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(75, 25, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(76, 26, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(77, 26, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(78, 26, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(79, 27, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(80, 27, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(81, 27, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(82, 28, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(83, 28, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(84, 28, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(85, 29, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(86, 29, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(87, 29, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(88, 30, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(89, 30, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(90, 30, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(91, 31, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(92, 31, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(93, 31, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(94, 32, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(95, 32, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(96, 32, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(97, 33, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(98, 33, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(99, 33, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(100, 34, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(101, 34, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(102, 34, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(103, 35, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(104, 35, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(105, 35, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(106, 36, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(107, 36, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(108, 36, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(109, 37, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(110, 37, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(111, 37, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(112, 38, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(113, 38, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(114, 38, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(115, 39, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(116, 39, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(117, 39, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(118, 40, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(119, 40, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(120, 40, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(121, 41, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(122, 41, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(123, 41, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(124, 42, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(125, 42, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(126, 42, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(127, 43, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(128, 43, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(129, 43, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(130, 44, 4, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(131, 44, 5, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(132, 44, 6, 1.00, '1', '2023-01-23 11:29:21', '2023-01-23 16:59:21'),
(133, 45, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(134, 45, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(135, 45, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(136, 46, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(137, 46, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(138, 46, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(139, 47, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(140, 47, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(141, 47, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(142, 48, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(143, 48, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(144, 48, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(145, 49, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(146, 49, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(147, 49, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(148, 50, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(149, 50, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(150, 50, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(151, 51, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(152, 51, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(153, 51, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(154, 52, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(155, 52, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(156, 52, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(157, 53, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(158, 53, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(159, 53, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(160, 54, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(161, 54, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(162, 54, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(163, 55, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(164, 55, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(165, 55, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(166, 56, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(167, 56, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(168, 56, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(169, 57, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(170, 57, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(171, 57, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(172, 58, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(173, 58, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(174, 58, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(175, 59, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(176, 59, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(177, 59, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(178, 60, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(179, 60, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(180, 60, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(181, 61, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(182, 61, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(183, 61, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(184, 62, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(185, 62, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(186, 62, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(187, 63, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(188, 63, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(189, 63, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(190, 64, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(191, 64, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(192, 64, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(193, 65, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(194, 65, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(195, 65, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(196, 66, 7, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(197, 66, 8, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(198, 66, 9, 1.00, '1', '2023-01-23 11:34:24', '2023-01-23 17:04:24'),
(199, 67, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(200, 67, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(201, 67, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(202, 68, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(203, 68, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(204, 68, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(205, 69, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(206, 69, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(207, 69, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(208, 70, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(209, 70, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(210, 70, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(211, 71, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(212, 71, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(213, 71, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(214, 72, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(215, 72, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(216, 72, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(217, 73, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(218, 73, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(219, 73, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(220, 74, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(221, 74, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(222, 74, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(223, 75, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(224, 75, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(225, 75, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(226, 76, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(227, 76, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(228, 76, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(229, 77, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(230, 77, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(231, 77, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(232, 78, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(233, 78, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(234, 78, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(235, 79, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(236, 79, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(237, 79, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(238, 80, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(239, 80, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(240, 80, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(241, 81, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(242, 81, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(243, 81, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(244, 82, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(245, 82, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(246, 82, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(247, 83, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(248, 83, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(249, 83, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(250, 84, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(251, 84, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(252, 84, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(253, 85, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(254, 85, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(255, 85, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(256, 86, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(257, 86, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(258, 86, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(259, 87, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(260, 87, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(261, 87, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(262, 88, 10, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(263, 88, 11, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(264, 88, 12, 1.00, '1', '2023-01-23 11:39:22', '2023-01-23 17:09:22'),
(265, 89, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(266, 89, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(267, 89, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(268, 90, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(269, 90, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(270, 90, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(271, 91, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(272, 91, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(273, 91, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(274, 92, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(275, 92, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(276, 92, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(277, 93, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(278, 93, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(279, 93, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(280, 94, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(281, 94, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(282, 94, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(283, 95, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(284, 95, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(285, 95, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(286, 96, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(287, 96, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(288, 96, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(289, 97, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(290, 97, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(291, 97, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(292, 98, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(293, 98, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(294, 98, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(295, 99, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(296, 99, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(297, 99, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(298, 100, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(299, 100, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(300, 100, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(301, 101, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(302, 101, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(303, 101, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(304, 102, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(305, 102, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(306, 102, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(307, 103, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(308, 103, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(309, 103, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(310, 104, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(311, 104, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(312, 104, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(313, 105, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(314, 105, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(315, 105, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(316, 106, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(317, 106, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(318, 106, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(319, 107, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(320, 107, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(321, 107, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(322, 108, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(323, 108, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(324, 108, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(325, 109, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(326, 109, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(327, 109, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(328, 110, 13, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(329, 110, 14, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(330, 110, 15, 1.00, '1', '2023-01-23 11:41:30', '2023-01-23 17:11:30'),
(331, 111, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(332, 111, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(333, 111, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(334, 112, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(335, 112, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(336, 112, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(337, 113, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(338, 113, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(339, 113, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(340, 114, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(341, 114, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(342, 114, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(343, 115, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(344, 115, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(345, 115, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(346, 116, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(347, 116, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(348, 116, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(349, 117, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(350, 117, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(351, 117, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(352, 118, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(353, 118, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(354, 118, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(355, 119, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(356, 119, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(357, 119, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(358, 120, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(359, 120, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(360, 120, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(361, 121, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(362, 121, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(363, 121, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(364, 122, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(365, 122, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(366, 122, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(367, 123, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(368, 123, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(369, 123, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(370, 124, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(371, 124, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(372, 124, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(373, 125, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(374, 125, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(375, 125, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(376, 126, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(377, 126, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(378, 126, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(379, 127, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(380, 127, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(381, 127, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(382, 128, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(383, 128, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(384, 128, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(385, 129, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(386, 129, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(387, 129, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(388, 130, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(389, 130, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(390, 130, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(391, 131, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(392, 131, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(393, 131, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(394, 132, 16, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(395, 132, 17, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(396, 132, 18, 1.00, '1', '2023-01-23 11:46:21', '2023-01-23 17:16:21'),
(397, 133, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(398, 133, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(399, 133, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(400, 134, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(401, 134, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(402, 134, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(403, 135, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(404, 135, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(405, 135, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(406, 136, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(407, 136, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(408, 136, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(409, 137, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(410, 137, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(411, 137, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(412, 138, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(413, 138, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(414, 138, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(415, 139, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(416, 139, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(417, 139, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(418, 140, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(419, 140, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(420, 140, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(421, 141, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(422, 141, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(423, 141, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(424, 142, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(425, 142, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(426, 142, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(427, 143, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(428, 143, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(429, 143, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(430, 144, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(431, 144, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(432, 144, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(433, 145, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(434, 145, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(435, 145, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(436, 146, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(437, 146, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(438, 146, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(439, 147, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(440, 147, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(441, 147, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(442, 148, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(443, 148, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(444, 148, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(445, 149, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(446, 149, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(447, 149, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(448, 150, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(449, 150, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(450, 150, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(451, 151, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(452, 151, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(453, 151, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(454, 152, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(455, 152, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(456, 152, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(457, 153, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(458, 153, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(459, 153, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(460, 154, 19, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(461, 154, 20, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(462, 154, 21, 1.00, '1', '2023-01-23 11:48:52', '2023-01-23 17:18:52'),
(463, 155, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(464, 155, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(465, 155, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(466, 156, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(467, 156, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(468, 156, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(469, 157, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(470, 157, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(471, 157, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(472, 158, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(473, 158, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(474, 158, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(475, 159, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(476, 159, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(477, 159, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(478, 160, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(479, 160, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(480, 160, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(481, 161, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(482, 161, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(483, 161, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(484, 162, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(485, 162, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(486, 162, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(487, 163, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(488, 163, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(489, 163, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(490, 164, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(491, 164, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(492, 164, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(493, 165, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(494, 165, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(495, 165, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(496, 166, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(497, 166, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(498, 166, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(499, 167, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(500, 167, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(501, 167, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(502, 168, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(503, 168, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(504, 168, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(505, 169, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(506, 169, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(507, 169, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(508, 170, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(509, 170, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(510, 170, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(511, 171, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(512, 171, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(513, 171, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(514, 172, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(515, 172, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(516, 172, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(517, 173, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(518, 173, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(519, 173, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(520, 174, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(521, 174, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(522, 174, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(523, 175, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(524, 175, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(525, 175, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(526, 176, 22, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(527, 176, 23, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(528, 176, 24, 1.00, '1', '2023-01-23 12:20:25', '2023-01-23 17:50:25'),
(529, 177, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(530, 177, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(531, 177, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(532, 178, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(533, 178, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(534, 178, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(535, 179, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(536, 179, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(537, 179, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(538, 180, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(539, 180, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(540, 180, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(541, 181, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(542, 181, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(543, 181, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(544, 182, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(545, 182, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(546, 182, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(547, 183, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(548, 183, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(549, 183, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(550, 184, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(551, 184, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(552, 184, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(553, 185, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(554, 185, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(555, 185, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(556, 186, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(557, 186, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(558, 186, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(559, 187, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(560, 187, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(561, 187, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(562, 188, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(563, 188, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(564, 188, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(565, 189, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(566, 189, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(567, 189, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(568, 190, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(569, 190, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(570, 190, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(571, 191, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(572, 191, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(573, 191, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(574, 192, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(575, 192, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(576, 192, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(577, 193, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(578, 193, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(579, 193, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(580, 194, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(581, 194, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(582, 194, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(583, 195, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(584, 195, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(585, 195, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(586, 196, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(587, 196, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(588, 196, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(589, 197, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(590, 197, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(591, 197, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(592, 198, 25, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(593, 198, 26, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(594, 198, 27, 1.00, '1', '2023-01-23 12:22:08', '2023-01-23 17:52:08'),
(595, 199, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(596, 199, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(597, 199, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(598, 200, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(599, 200, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(600, 200, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(601, 201, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(602, 201, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(603, 201, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(604, 202, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(605, 202, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(606, 202, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(607, 203, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(608, 203, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(609, 203, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(610, 204, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(611, 204, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(612, 204, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(613, 205, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(614, 205, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(615, 205, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(616, 206, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(617, 206, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(618, 206, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(619, 207, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(620, 207, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(621, 207, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(622, 208, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(623, 208, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(624, 208, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(625, 209, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(626, 209, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(627, 209, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(628, 210, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(629, 210, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(630, 210, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(631, 211, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(632, 211, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(633, 211, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(634, 212, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(635, 212, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(636, 212, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(637, 213, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(638, 213, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(639, 213, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(640, 214, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(641, 214, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(642, 214, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(643, 215, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(644, 215, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(645, 215, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(646, 216, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(647, 216, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(648, 216, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(649, 217, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(650, 217, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(651, 217, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(652, 218, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(653, 218, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(654, 218, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(655, 219, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(656, 219, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(657, 219, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(658, 220, 28, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(659, 220, 29, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(660, 220, 30, 1.00, '1', '2023-01-23 12:25:44', '2023-01-23 17:55:44'),
(661, 221, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(662, 221, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(663, 221, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(664, 222, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(665, 222, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(666, 222, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(667, 223, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(668, 223, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(669, 223, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(670, 224, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(671, 224, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(672, 224, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(673, 225, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(674, 225, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(675, 225, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(676, 226, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(677, 226, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(678, 226, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(679, 227, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(680, 227, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(681, 227, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(682, 228, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(683, 228, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(684, 228, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(685, 229, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(686, 229, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(687, 229, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(688, 230, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(689, 230, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(690, 230, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(691, 231, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(692, 231, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(693, 231, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(694, 232, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(695, 232, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(696, 232, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(697, 233, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(698, 233, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(699, 233, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(700, 234, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(701, 234, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(702, 234, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(703, 235, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(704, 235, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(705, 235, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(706, 236, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(707, 236, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(708, 236, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(709, 237, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(710, 237, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(711, 237, 33, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11');
INSERT INTO `product_topping_by_size` (`id`, `product_topping_id`, `product_size_id`, `price`, `status`, `created_at`, `updated_at`) VALUES
(712, 238, 31, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(713, 238, 32, 1.00, '1', '2023-01-23 12:28:11', '2023-01-23 17:58:11'),
(714, 238, 33, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(715, 239, 31, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(716, 239, 32, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(717, 239, 33, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(718, 240, 31, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(719, 240, 32, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(720, 240, 33, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(721, 241, 31, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(722, 241, 32, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(723, 241, 33, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(724, 242, 31, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(725, 242, 32, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(726, 242, 33, 1.00, '1', '2023-01-23 12:28:12', '2023-01-23 17:58:12'),
(727, 243, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(728, 243, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(729, 243, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(730, 244, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(731, 244, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(732, 244, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(733, 245, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(734, 245, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(735, 245, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(736, 246, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(737, 246, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(738, 246, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(739, 247, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(740, 247, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(741, 247, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(742, 248, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(743, 248, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(744, 248, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(745, 249, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(746, 249, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(747, 249, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(748, 250, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(749, 250, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(750, 250, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(751, 251, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(752, 251, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(753, 251, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(754, 252, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(755, 252, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(756, 252, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(757, 253, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(758, 253, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(759, 253, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(760, 254, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(761, 254, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(762, 254, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(763, 255, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(764, 255, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(765, 255, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(766, 256, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(767, 256, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(768, 256, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(769, 257, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(770, 257, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(771, 257, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(772, 258, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(773, 258, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(774, 258, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(775, 259, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(776, 259, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(777, 259, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(778, 260, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(779, 260, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(780, 260, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(781, 261, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(782, 261, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(783, 261, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(784, 262, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(785, 262, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(786, 262, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(787, 263, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(788, 263, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(789, 263, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(790, 264, 34, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(791, 264, 35, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(792, 264, 36, 1.00, '1', '2023-01-23 12:29:38', '2023-01-23 17:59:38'),
(793, 265, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(794, 265, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(795, 265, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(796, 266, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(797, 266, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(798, 266, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(799, 267, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(800, 267, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(801, 267, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(802, 268, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(803, 268, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(804, 268, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(805, 269, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(806, 269, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(807, 269, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(808, 270, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(809, 270, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(810, 270, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(811, 271, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(812, 271, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(813, 271, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(814, 272, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(815, 272, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(816, 272, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(817, 273, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(818, 273, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(819, 273, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(820, 274, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(821, 274, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(822, 274, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(823, 275, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(824, 275, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(825, 275, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(826, 276, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(827, 276, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(828, 276, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(829, 277, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(830, 277, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(831, 277, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(832, 278, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(833, 278, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(834, 278, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(835, 279, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(836, 279, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(837, 279, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(838, 280, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(839, 280, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(840, 280, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(841, 281, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(842, 281, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(843, 281, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(844, 282, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(845, 282, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(846, 282, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(847, 283, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(848, 283, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(849, 283, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(850, 284, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(851, 284, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(852, 284, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(853, 285, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(854, 285, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(855, 285, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(856, 286, 37, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(857, 286, 38, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(858, 286, 39, 1.00, '1', '2023-01-23 12:33:00', '2023-01-23 18:03:00'),
(859, 287, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(860, 288, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(861, 289, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(862, 290, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(863, 291, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(864, 292, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(865, 293, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(866, 294, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(867, 295, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(868, 296, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(869, 297, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(870, 298, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(871, 299, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(872, 300, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(873, 301, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(874, 302, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(875, 303, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(876, 304, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(877, 305, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(878, 306, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(879, 307, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(880, 308, 40, 1.00, '1', '2023-01-23 12:37:27', '2023-01-23 18:07:27'),
(881, 309, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(882, 309, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(883, 309, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(884, 310, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(885, 310, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(886, 310, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(887, 311, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(888, 311, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(889, 311, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(890, 312, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(891, 312, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(892, 312, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(893, 313, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(894, 313, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(895, 313, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(896, 314, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(897, 314, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(898, 314, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(899, 315, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(900, 315, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(901, 315, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(902, 316, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(903, 316, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(904, 316, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(905, 317, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(906, 317, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(907, 317, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(908, 318, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(909, 318, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(910, 318, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(911, 319, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(912, 319, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(913, 319, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(914, 320, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(915, 320, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(916, 320, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(917, 321, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(918, 321, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(919, 321, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(920, 322, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(921, 322, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(922, 322, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(923, 323, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(924, 323, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(925, 323, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(926, 324, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(927, 324, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(928, 324, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(929, 325, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(930, 325, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(931, 325, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(932, 326, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(933, 326, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(934, 326, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(935, 327, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(936, 327, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(937, 327, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(938, 328, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(939, 328, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(940, 328, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(941, 329, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(942, 329, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(943, 329, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(944, 330, 41, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(945, 330, 42, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(946, 330, 43, 1.00, '1', '2023-01-23 12:44:40', '2023-01-23 18:14:40'),
(947, 331, 56, 0.00, '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(948, 331, 57, 0.00, '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(949, 332, 56, 0.00, '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(950, 332, 57, 0.00, '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(951, 333, 56, 0.00, '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(952, 333, 57, 0.00, '1', '2023-01-23 13:03:00', '2023-01-23 18:33:00'),
(953, 334, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(954, 334, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(955, 334, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(956, 335, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(957, 335, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(958, 335, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(959, 336, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(960, 336, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(961, 336, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(962, 337, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(963, 337, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(964, 337, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(965, 338, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(966, 338, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(967, 338, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(968, 339, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(969, 339, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(970, 339, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(971, 340, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(972, 340, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(973, 340, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(974, 341, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(975, 341, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(976, 341, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(977, 342, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(978, 342, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(979, 342, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(980, 343, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(981, 343, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(982, 343, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(983, 344, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(984, 344, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(985, 344, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(986, 345, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(987, 345, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(988, 345, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(989, 346, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(990, 346, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(991, 346, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(992, 347, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(993, 347, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(994, 347, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(995, 348, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(996, 348, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(997, 348, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(998, 349, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(999, 349, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1000, 349, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1001, 350, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1002, 350, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1003, 350, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1004, 351, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1005, 351, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1006, 351, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1007, 352, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1008, 352, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1009, 352, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1010, 353, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1011, 353, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1012, 353, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1013, 354, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1014, 354, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1015, 354, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1016, 355, 74, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1017, 355, 75, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1018, 355, 76, 1.00, '1', '2023-01-26 08:14:11', '2023-01-26 13:44:11'),
(1019, 356, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1020, 357, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1021, 358, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1022, 359, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1023, 360, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1024, 361, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1025, 362, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1026, 363, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1027, 364, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1028, 365, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1029, 366, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1030, 367, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1031, 368, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1032, 369, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1033, 370, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1034, 371, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1035, 372, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1036, 373, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1037, 374, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1038, 375, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1039, 376, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1040, 377, 77, 1.00, '1', '2023-01-26 08:22:08', '2023-01-26 13:52:08'),
(1041, 378, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1042, 379, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1043, 380, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1044, 381, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1045, 382, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1046, 383, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1047, 384, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1048, 385, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1049, 386, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1050, 387, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1051, 388, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1052, 389, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1053, 390, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1054, 391, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1055, 392, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1056, 393, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1057, 394, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1058, 395, 79, 1.00, '1', '2023-01-26 08:33:06', '2023-01-26 14:03:06'),
(1059, 396, 79, 1.00, '1', '2023-01-26 08:33:07', '2023-01-26 14:03:07'),
(1060, 397, 79, 1.00, '1', '2023-01-26 08:33:07', '2023-01-26 14:03:07'),
(1061, 398, 79, 1.00, '1', '2023-01-26 08:33:07', '2023-01-26 14:03:07'),
(1062, 399, 79, 1.00, '1', '2023-01-26 08:33:07', '2023-01-26 14:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `tax` varchar(10) DEFAULT NULL,
  `lat` varchar(15) DEFAULT NULL,
  `lon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`tax`, `lat`, `lon`) VALUES
('0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `role` enum('s','u') DEFAULT NULL,
  `account_status` enum('0','1') DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `email`, `phone`, `role`, `account_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '4a118d1f15f4f4ea38127ad5be37f052', '-', NULL, 's', NULL, '1', '2023-01-25 18:45:53', '2023-01-26 00:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `page` text DEFAULT NULL,
  `ip_address` varchar(128) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `referrer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `working_hours`
--

CREATE TABLE `working_hours` (
  `day` enum('0','1','2','3','4','5','6') DEFAULT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `working_hours`
--

INSERT INTO `working_hours` (`day`, `from_time`, `to_time`, `updated_at`) VALUES
('0', '00:00:00', '12:00:00', '2023-01-26 00:18:17'),
('1', '00:00:00', '12:00:00', '2023-01-26 00:18:17'),
('2', '00:00:00', '12:00:00', '2023-01-26 00:18:17'),
('3', '00:00:00', '12:00:00', '2023-01-26 00:18:17'),
('4', '00:00:00', '12:00:00', '2023-01-26 00:18:17'),
('5', '00:00:00', '12:00:00', '2023-01-26 00:18:17'),
('6', '00:00:00', '12:00:00', '2023-01-26 00:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `zip_codes`
--

CREATE TABLE `zip_codes` (
  `id` int(11) NOT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zip_codes`
--

INSERT INTO `zip_codes` (`id`, `zip_code`, `status`, `created_at`) VALUES
(1, '48197', '1', '2023-01-25 18:48:30'),
(2, '48198', '1', '2023-01-25 18:48:34'),
(3, '48199', '1', '2023-01-25 18:48:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_addon`
--
ALTER TABLE `cart_addon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_choice`
--
ALTER TABLE `cart_choice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_crust`
--
ALTER TABLE `cart_crust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_size`
--
ALTER TABLE `cart_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_topping`
--
ALTER TABLE `cart_topping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_broker`
--
ALTER TABLE `mail_broker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_addon`
--
ALTER TABLE `order_addon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_choice`
--
ALTER TABLE `order_choice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_crust`
--
ALTER TABLE `order_crust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_size`
--
ALTER TABLE `order_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_topping`
--
ALTER TABLE `order_topping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_addon`
--
ALTER TABLE `product_addon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_choice`
--
ALTER TABLE `product_choice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_crust`
--
ALTER TABLE `product_crust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_topping`
--
ALTER TABLE `product_topping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_topping_by_size`
--
ALTER TABLE `product_topping_by_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zip_codes`
--
ALTER TABLE `zip_codes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_addon`
--
ALTER TABLE `cart_addon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_choice`
--
ALTER TABLE `cart_choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_crust`
--
ALTER TABLE `cart_crust`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_size`
--
ALTER TABLE `cart_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_topping`
--
ALTER TABLE `cart_topping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail_broker`
--
ALTER TABLE `mail_broker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_addon`
--
ALTER TABLE `order_addon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_choice`
--
ALTER TABLE `order_choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_crust`
--
ALTER TABLE `order_crust`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_size`
--
ALTER TABLE `order_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_topping`
--
ALTER TABLE `order_topping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_addon`
--
ALTER TABLE `product_addon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_choice`
--
ALTER TABLE `product_choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_crust`
--
ALTER TABLE `product_crust`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `product_topping`
--
ALTER TABLE `product_topping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT for table `product_topping_by_size`
--
ALTER TABLE `product_topping_by_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1063;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zip_codes`
--
ALTER TABLE `zip_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
