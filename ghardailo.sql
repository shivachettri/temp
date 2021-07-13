-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 03:31 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ghardailo`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 222, 3513, ''),
(2, 1, 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 222, 3514, ''),
(3, 2, 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 222, 3520, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', '71QRLCaDwJhpusXYl1s8EsAOX7zK5yGAJRg6n0g9PoXRInR33Cmvc8ffhGRjS0eZTftT3TrC0Z0ixzTfUzfeHl7poTALDsGOcrfNDQBXa36yWNQeYcaFFmj8YnaPx5a4dDFNRIdLUSXByFjIdzXq8lY3vtFGQlOtOahoANsJr0Bkill5zNgurGS1EndzDJYRU9rCvmq9q9dqORvCpSMvqK3Vz5nrP3ANxvlnj8zZwgTlGlsjOOWRfoNcwLGYOrXX', 1, '2019-05-11 08:44:28', '2019-05-11 08:44:28'),
(2, 'Default', '0uZ67T1igFKmp0jlgRCmjpP7K8sH32A37WsdPvBdnKBjSfocSG24LoF63tyAJYOq7HXdshoHx1gXhdAW3EAzD0YQOHMSMhD7IUafNpipRrGRA4SuQ66BSWul1SEOSxmAkok8Sc3eIAmFFXcMXvwWJWshWUblfrOCKhEfXAalYkrRkxbYLfOEjUoOs093MdQI4pw6aJA1kz6RFvJQROBhyJKUnVzWeZgLPtz8BDr1oS7Qbs0l9TpUc51kEnjs9Yiu', 1, '2019-05-11 02:41:29', '2019-05-11 02:41:29'),
(3, 'Default', 'rRhTsQKFz9V5d2FCOzQIi5SCN9WFoIWiTXQkKUEsyUy1nvIihvCosxVw0At4kiRDErDZNno6iKHNXUQC0lNcaunx3BCfV6paK4weBxw46GFhuj0YX3DE0AdwfQDZZDQBhcxOfxdju2lvpA7niO7XsIdNmrUg2b1u2eUceaGhMaJRYYhHaQlfb4RGwJsfFZZprwfX1YAn4JOsVkwzeB32nvk7zjX7bjp36WE3J3QlU45fFvMMmsw48ntj01oqz7k8', 1, '2019-05-31 15:10:23', '2019-05-31 15:10:23'),
(4, 'Default', 'zhPuSzDCC8tvNNt50ibYtQYD8F2UFYbZnqACPpBo7cGGpuCLyieiJIH5lCJlYMnHLq84ZDwTjbJnBpWfsG2YMajulknGMpJMO74lKu7ebjuUzwF6whXiCN1YYeBEuUKczVM7UUkn8ks70Nuzc7dG7Et3POQ8fYwiW1qKV5CwNJM7Fs3UZyzMlz8oP4fpQSzoyK0FbfJcD87jeNeJcWXkpLRvyGNuffnh43d64QoWDXuuJIfG21FyR2vZYRs1sTdb', 1, '2019-09-15 07:51:09', '2019-09-15 07:51:09'),
(5, 'Default', 'QictfQzHEmXOmCsPOvC7J6DVLli6D3v2uVAK3Cq5fjdppr8NdAfNDiFbcKTO086o6LfE84LCz4wxyA76ZGWJxAP78vphKMus3ifXzK1f1MQOWJjRnnmia2B1aAXNK5UDokF9xbIHEzobJcpO2fKeny4u5GdiDvnOXG9gYzgsWO2vvtoWodbpXoFUDqWvzED1N2MJjyrjfW2Vdglkhxo5TnI5eiI7YfRJpSbbejYghlw96ZjoBJKEoyC4duiUqUT3', 1, '2019-10-09 14:42:42', '2019-10-09 14:42:42'),
(6, 'Default', 'CreM8n3ntW0pj0n7YQ36udp9IrUqnRrdRzMmK6tmJ8iCsjVMEo4IPn8hQAaFTITdzJZMKwakPt9A5s5ce1IsAYu62TRaTIfkFN8oWyMxOXcfRsuicgcBOoZCYy3qrSj81vFd4n9CAsG86RWbZetWfou73yos6KgQkDt0UDl8UlJjGIGBVnFNNinXx0oaX7DBX42YrqLbTugS0Ir6JaCnhuQZO2YRoCaIT3gPaYywYTwiJHvfC5bm2lgqYhxQoTZ2', 1, '2019-12-10 02:26:58', '2019-12-10 02:26:58'),
(7, 'Default', '8Baytw9vDDiHkdc4gA2IWHxgF1lltkr9utO558dF0N1uVFPp15KET5EXh2nqLOKzvliR4busMpOwqnuavgo1JipsvYgQ34xEexy0igIzRyNzasHhoMIBRG0FklW3hwgzK3HgSoRC6CYMStf5KNBVvy2nwCC5UGHfzqSUXAnDLEjFRG2aA2L3uXyQ0dqitikL1sYKhh2PGnz6OZzkin2Ff5VawZQIwjA6aWjLKcNIjkSDfKxtymmoEUPWMb6ptdbw', 1, '2020-03-30 13:56:15', '2020-03-30 13:56:15'),
(8, 'Default', '69plRezJ2AR0lHabrBmvMWCoZlYQMjFEkrrCjbSeozGCuuauKW9OhvGKpEQi08zlg8ng2rgyhooGJFyRVda29l0cBj4fqCN92JLnNDFF0A398BNRkMdHRDZR6AwDeA2h0OY7FKo0LPC4EopIDqZoMuUon3Froiavljr61jrR9TjbvWq2Iy6yup7tfLeQ5DutcLJJ1NcNq14tAlS8GqeqetJYiAJGZWyKdlNJf3vfppeY3dFlPbaKcAANofVTivOA', 1, '2021-07-13 13:27:29', '2021-07-13 13:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 4, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(1, 4, 'c255c6f602c2bfad10accf4323', '127.0.0.1', '2019-10-04 15:50:08', '2019-10-04 15:50:08'),
(2, 4, '39f35c6d0aa386fd2395726f49', '127.0.0.1', '2019-10-04 15:50:12', '2019-10-04 15:50:12'),
(3, 4, '62e70c752c590f188164df4473', '127.0.0.1', '2019-10-04 15:50:59', '2019-10-04 15:50:59'),
(4, 4, '9533e40a49525beb32260f7c0c', '127.0.0.1', '2019-10-04 15:51:01', '2019-10-04 15:51:01'),
(5, 4, 'd221b35334c85dfa2320543159', '127.0.0.1', '2019-10-04 15:51:14', '2019-10-04 15:51:14'),
(6, 4, 'c3c2190b5b300b1a2b1ec7a05f', '127.0.0.1', '2019-10-04 15:51:17', '2019-10-04 15:51:17'),
(7, 4, '9a4276bc14e2fa1fcfac6b891b', '127.0.0.1', '2019-10-04 15:51:28', '2019-10-04 15:51:28'),
(8, 4, 'f667fcf82684b5c0e584ffd4ef', '127.0.0.1', '2019-10-04 15:51:31', '2019-10-04 15:51:31'),
(9, 4, 'af04cd3e5ddbf84885ba4dbea6', '127.0.0.1', '2019-10-04 15:51:38', '2019-10-04 15:51:38'),
(10, 4, '098eacf29d0d774d06c9594129', '127.0.0.1', '2019-10-04 15:51:41', '2019-10-04 15:51:41'),
(11, 4, 'a11dcf3488b1012724aec438d9', '127.0.0.1', '2019-10-04 15:51:49', '2019-10-04 15:51:49'),
(12, 4, 'abea4a66bc0bf560bd35517873', '127.0.0.1', '2019-10-04 15:52:02', '2019-10-04 15:52:02'),
(13, 4, '422c94b89d4978c1e06f77d1cd', '127.0.0.1', '2019-10-04 15:53:43', '2019-10-04 15:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(11, 6, 'test 8'),
(10, 6, 'test 7'),
(9, 6, 'test 6'),
(8, 6, 'test 5'),
(7, 6, 'test 4'),
(6, 6, 'test 3'),
(5, 6, 'test 2'),
(4, 6, 'test 1'),
(2, 6, 'No. of Cores'),
(1, 6, 'Description'),
(3, 6, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(6, 6, 'Processor'),
(5, 6, 'Motherboard'),
(4, 6, 'Technical'),
(3, 6, 'Memory');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(160, 7, 6, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(106, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(107, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(145, 7, 5, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(113, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(116, 7, 3, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(117, 6, 3, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(144, 6, 5, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(143, 7, 5, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(196, 8, 6, 'RedBull', '#', 'catalog/brandslider/br2.png', 0),
(123, 7, 3, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(126, 7, 4, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(127, 6, 4, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(197, 8, 6, 'NFL', '#', 'catalog/brandslider/br1.png', 0),
(195, 8, 6, 'Sony', '#', 'catalog/brandslider/br3.png', 0),
(194, 8, 6, 'Coca Cola', '#', 'catalog/brandslider/br4.png', 0),
(133, 7, 4, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(193, 8, 6, 'Harley Davidson', '#', '', 0),
(161, 6, 6, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(162, 7, 6, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(192, 8, 6, 'Canon', '#', '', 0),
(190, 8, 1, 'Harley Davidson', '#', 'catalog/brandslider/br3.png', 0),
(191, 8, 6, 'Burger King', '#', 'catalog/brandslider/br5.png', 0),
(188, 8, 1, 'Burger King', '#', 'catalog/brandslider/br5.png', 0),
(189, 8, 1, 'Canon', '#', 'catalog/brandslider/br2.png', 0),
(187, 8, 1, 'Coca Cola', '#', 'catalog/brandslider/br4.png', 0),
(186, 8, 1, 'Sony', '#', 'catalog/brandslider/br3.png', 0),
(185, 8, 1, 'RedBull', '#', 'catalog/brandslider/br2.png', 0),
(184, 8, 1, 'NFL', '#', 'catalog/brandslider/br1.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `secondary_image` varchar(255) DEFAULT NULL,
  `alternative_image` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `secondary_image`, `alternative_image`, `is_featured`) VALUES
(25, 'catalog/PopularCate/popular8.jpg', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2019-01-29 09:19:53', 'catalog/PopularCate/popular8.jpg', '', 0),
(27, '', 301, 0, 0, 2, 1, '2009-01-31 01:55:34', '2019-04-06 10:07:21', '', '', 0),
(20, 'catalog/PopularCate/popular7.jpg', 18, 1, 1, 1, 1, '2009-01-05 21:49:43', '2020-04-09 09:48:46', 'catalog/f-cate/fresh_vegetables.jpg', '', 1),
(24, 'catalog/PopularCate/popular6.jpg', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2019-10-20 22:04:40', 'catalog/f-cate/breakfast.jpg', '', 0),
(18, 'catalog/category-image/category-image.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2020-04-16 10:24:42', '', '', 0),
(26, '', 301, 0, 0, 1, 1, '2009-01-31 01:55:14', '2019-04-06 10:07:47', '', '', 0),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2019-01-29 09:56:41', '', '', 0),
(30, '', 0, 1, 0, 1, 1, '2009-02-02 13:11:59', '2019-12-11 14:42:21', 'catalog/f-cate/bakery.jpg', '', 0),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2019-01-29 09:56:52', '', '', 0),
(33, 'catalog/PopularCate/popular5.jpg', 164, 1, 1, 6, 1, '2009-02-03 14:17:55', '2019-12-25 13:54:20', '', '', 0),
(62, '', 301, 0, 1, 0, 1, '2018-04-26 21:23:29', '2019-04-06 10:06:43', '', '', 0),
(78, '', 59, 0, 1, 0, 1, '2018-04-26 21:41:52', '2019-04-08 15:46:43', '', '', 0),
(77, '', 59, 0, 1, 0, 1, '2018-04-26 21:40:38', '2019-04-08 15:47:25', '', '', 0),
(61, '', 301, 0, 1, 0, 1, '2018-04-26 21:23:03', '2019-04-06 10:07:10', '', '', 0),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2020-04-09 09:48:37', 'catalog/f-cate/fresh_fruits.jpg', '', 1),
(76, '', 59, 0, 1, 0, 1, '2018-04-26 21:40:04', '2019-04-08 15:47:29', '', '', 0),
(75, '', 59, 0, 1, 0, 1, '2018-04-26 21:39:16', '2019-04-08 15:47:21', '', '', 0),
(74, '', 57, 0, 1, 0, 1, '2018-04-26 21:36:02', '2019-04-08 15:47:17', '', '', 0),
(73, '', 57, 0, 1, 0, 1, '2018-04-26 21:35:23', '2019-04-08 15:47:13', '', '', 0),
(72, '', 57, 0, 1, 0, 1, '2018-04-26 21:34:19', '2019-04-08 15:47:08', '', '', 0),
(71, '', 57, 0, 1, 0, 1, '2018-04-26 21:33:32', '2019-04-08 15:47:04', '', '', 0),
(57, 'catalog/PopularCate/popular2.jpg', 293, 0, 1, 3, 1, '2011-04-26 08:53:16', '2019-05-09 14:50:54', 'catalog/PopularCate/popular2.jpg', '', 0),
(69, 'catalog/PopularCate/popular4.jpg', 0, 1, 1, 0, 1, '2018-04-26 21:31:42', '2020-04-09 09:59:02', 'catalog/f-cate/bread_bakery.jpg', '', 1),
(59, 'catalog/PopularCate/popular3.jpg', 293, 0, 1, 0, 1, '2018-04-25 20:48:08', '2019-05-09 14:51:01', 'catalog/PopularCate/popular3.jpg', '', 0),
(63, '', 301, 0, 1, 0, 1, '2018-04-26 21:24:50', '2019-04-06 10:08:21', '', '', 0),
(64, '', 300, 0, 1, 0, 1, '2018-04-26 21:25:55', '2019-04-06 09:56:30', '', '', 0),
(65, '', 300, 0, 1, 0, 1, '2018-04-26 21:26:50', '2019-04-06 09:50:28', '', '', 0),
(66, '', 300, 0, 1, 0, 1, '2018-04-26 21:27:18', '2019-04-06 09:56:01', '', '', 0),
(67, '', 300, 0, 1, 0, 1, '2018-04-26 21:27:41', '2019-04-06 09:57:10', '', '', 0),
(68, '', 300, 0, 1, 0, 1, '2018-04-26 21:30:20', '2019-04-06 09:57:44', '', '', 0),
(81, '', 29, 0, 1, 0, 1, '2018-05-24 04:15:24', '2019-01-11 16:11:48', '', '', 0),
(82, '', 29, 0, 1, 0, 1, '2018-05-24 04:16:00', '2019-01-11 16:11:45', '', '', 0),
(83, '', 29, 0, 1, 0, 1, '2018-05-24 04:16:32', '2019-01-11 16:11:55', '', '', 0),
(84, '', 29, 0, 1, 0, 1, '2018-05-24 04:16:57', '2019-01-11 16:11:52', '', '', 0),
(85, '', 31, 0, 1, 0, 1, '2018-05-24 04:17:34', '2019-01-11 16:11:38', '', '', 0),
(86, '', 31, 0, 1, 0, 1, '2018-05-24 04:18:03', '2019-01-11 16:11:34', '', '', 0),
(87, '', 31, 0, 1, 0, 1, '2018-05-24 04:18:31', '2019-01-11 16:11:31', '', '', 0),
(88, '', 31, 0, 1, 0, 1, '2018-05-24 04:18:54', '2019-01-11 16:11:27', '', '', 0),
(89, '', 33, 0, 1, 0, 1, '2018-05-24 04:28:17', '2019-03-11 11:08:04', '', '', 0),
(90, '', 33, 0, 1, 0, 1, '2018-05-24 04:29:20', '2019-03-11 11:10:42', '', '', 0),
(91, '', 33, 0, 1, 0, 1, '2018-05-24 04:30:08', '2019-03-11 11:11:05', '', '', 0),
(92, '', 33, 0, 1, 0, 1, '2018-05-24 04:30:34', '2019-03-11 11:11:25', '', '', 0),
(93, '', 33, 0, 1, 0, 1, '2018-05-24 04:31:11', '2018-08-09 13:14:58', '', '', 0),
(95, '', 46, 0, 1, 0, 1, '2018-05-24 14:56:08', '2019-04-06 09:49:13', '', '', 0),
(96, '', 301, 0, 1, 0, 1, '2018-05-24 14:57:50', '2019-04-06 10:06:55', '', '', 0),
(164, 'catalog/category-image/category-image.jpg', 0, 1, 1, 0, 1, '2018-08-09 15:10:21', '2019-12-25 13:54:13', '', '', 0),
(173, '', 164, 0, 1, 0, 1, '2018-08-21 10:28:01', '2019-12-25 13:54:42', 'catalog/f-cate/f-cate3-3.jpg', '', 0),
(174, '', 173, 0, 1, 0, 1, '2018-08-21 10:28:44', '2019-01-11 16:39:07', '', '', 0),
(175, '', 173, 0, 1, 0, 1, '2018-08-21 10:29:17', '2019-01-11 16:39:03', '', '', 0),
(176, '', 173, 0, 1, 0, 1, '2018-08-21 10:29:49', '2019-01-11 16:37:37', '', '', 0),
(177, '', 173, 0, 1, 0, 1, '2018-08-21 10:30:23', '2019-01-11 16:37:32', '', '', 0),
(178, '', 173, 0, 1, 0, 1, '2018-08-21 10:30:54', '2019-01-11 16:43:31', '', '', 0),
(180, '', 164, 1, 1, 0, 1, '2018-08-21 10:33:07', '2019-12-25 13:54:34', 'catalog/f-cate/f-cate3-1.jpg', '', 0),
(181, '', 180, 0, 1, 0, 1, '2018-08-21 10:33:44', '2019-03-18 10:03:28', '', '', 0),
(182, '', 180, 0, 1, 0, 1, '2018-08-21 10:34:41', '2019-03-18 10:04:09', '', '', 0),
(183, '', 180, 0, 1, 0, 1, '2018-08-21 10:35:46', '2019-03-18 10:04:34', '', '', 0),
(184, '', 180, 0, 1, 0, 1, '2018-08-21 10:36:18', '2019-01-11 16:35:03', '', '', 0),
(185, '', 180, 0, 1, 0, 1, '2018-08-21 10:37:01', '2019-03-18 10:05:03', '', '', 0),
(220, '', 18, 0, 1, 0, 1, '2019-03-23 16:04:38', '2020-04-09 10:00:24', 'catalog/f-cate/canned_goods.jpg', '', 1),
(194, '', 164, 0, 1, 0, 1, '2018-08-21 10:46:22', '2019-12-25 13:54:27', 'catalog/f-cate/f-cate3-2.jpg', '', 0),
(195, '', 194, 0, 1, 0, 1, '2018-08-21 10:47:12', '2019-03-18 10:08:11', '', '', 0),
(196, '', 194, 0, 1, 0, 1, '2018-08-21 10:47:40', '2019-03-18 10:08:57', '', '', 0),
(197, '', 194, 0, 1, 0, 1, '2018-08-21 10:48:07', '2019-03-18 10:10:56', '', '', 0),
(198, '', 194, 0, 1, 0, 1, '2018-08-21 10:48:40', '2019-03-18 10:25:25', '', '', 0),
(199, '', 194, 0, 1, 0, 1, '2018-08-21 10:49:15', '2019-01-11 16:43:05', '', '', 0),
(225, '', 221, 0, 1, 0, 1, '2019-04-01 08:39:50', '2019-12-25 13:53:32', 'catalog/f-cate/f-cate4-3.jpg', '', 0),
(224, '', 292, 0, 1, 0, 1, '2019-04-01 08:39:27', '2019-12-11 14:27:58', NULL, NULL, 0),
(223, '', 221, 0, 1, 0, 1, '2019-04-01 08:30:31', '2019-12-25 13:53:26', 'catalog/f-cate/f-cate4-2.jpg', '', 0),
(222, '', 221, 0, 1, 0, 1, '2019-04-01 08:30:04', '2019-12-25 13:53:52', 'catalog/f-cate/f-cate4-4.jpg', '', 0),
(221, 'catalog/category-image/category-image.jpg', 0, 1, 1, 0, 1, '2019-04-01 08:14:42', '2019-12-25 13:54:02', '', '', 0),
(205, '', 300, 0, 1, 0, 1, '2019-03-11 15:23:43', '2019-04-06 09:50:01', NULL, NULL, 0),
(206, '', 300, 0, 1, 0, 1, '2019-03-11 15:24:20', '2019-04-06 09:55:26', NULL, NULL, 0),
(207, '', 300, 0, 1, 0, 1, '2019-03-11 15:24:56', '2019-04-06 09:51:00', NULL, NULL, 0),
(208, '', 301, 0, 1, 0, 1, '2019-03-11 15:25:50', '2019-04-06 10:08:10', NULL, NULL, 0),
(209, '', 301, 0, 1, 0, 1, '2019-03-11 15:26:24', '2019-04-06 10:06:28', NULL, NULL, 0),
(210, '', 301, 0, 1, 0, 1, '2019-03-11 15:27:02', '2019-04-06 10:07:58', NULL, NULL, 0),
(226, '', 222, 0, 1, 0, 1, '2019-04-01 08:43:53', '2019-04-01 08:43:53', NULL, NULL, 0),
(227, '', 222, 0, 1, 0, 1, '2019-04-01 08:45:08', '2019-04-01 08:45:08', NULL, NULL, 0),
(228, '', 222, 0, 1, 0, 1, '2019-04-01 08:45:36', '2019-04-01 08:45:36', NULL, NULL, 0),
(229, '', 222, 0, 1, 0, 1, '2019-04-01 08:46:02', '2019-04-01 08:46:02', NULL, NULL, 0),
(230, '', 222, 0, 1, 0, 1, '2019-04-01 08:49:46', '2019-04-01 08:49:46', NULL, NULL, 0),
(231, '', 224, 0, 1, 0, 1, '2019-04-01 08:52:02', '2019-04-01 08:52:02', NULL, NULL, 0),
(232, '', 224, 0, 1, 0, 1, '2019-04-01 08:52:21', '2019-04-01 08:52:21', NULL, NULL, 0),
(233, '', 224, 0, 1, 0, 1, '2019-04-01 08:52:42', '2019-04-01 08:52:42', NULL, NULL, 0),
(234, '', 224, 0, 1, 0, 1, '2019-04-01 08:53:09', '2019-04-01 08:53:09', NULL, NULL, 0),
(235, '', 224, 0, 1, 0, 1, '2019-04-01 08:53:36', '2019-04-01 08:53:36', NULL, NULL, 0),
(236, '', 223, 0, 1, 0, 1, '2019-04-01 08:55:05', '2019-04-01 08:55:05', NULL, NULL, 0),
(237, '', 223, 0, 1, 0, 1, '2019-04-01 08:55:52', '2019-04-01 08:55:52', NULL, NULL, 0),
(238, '', 223, 0, 1, 0, 1, '2019-04-01 08:56:18', '2019-04-01 08:56:18', NULL, NULL, 0),
(239, '', 223, 0, 1, 0, 1, '2019-04-01 08:56:42', '2019-04-01 08:56:42', NULL, NULL, 0),
(240, '', 223, 0, 1, 0, 1, '2019-04-01 08:57:13', '2019-04-01 08:57:13', NULL, NULL, 0),
(241, '', 225, 0, 1, 0, 1, '2019-04-01 09:02:34', '2019-04-01 09:02:34', NULL, NULL, 0),
(242, '', 225, 0, 1, 0, 1, '2019-04-01 09:02:55', '2019-04-01 09:02:55', NULL, NULL, 0),
(243, '', 225, 0, 1, 0, 1, '2019-04-01 09:03:17', '2019-04-01 09:03:17', NULL, NULL, 0),
(244, '', 225, 0, 1, 0, 1, '2019-04-01 09:03:40', '2019-04-01 09:03:40', NULL, NULL, 0),
(245, '', 225, 0, 1, 0, 1, '2019-04-01 09:04:08', '2019-04-01 09:04:08', NULL, NULL, 0),
(246, 'catalog/category-image/category-image.jpg', 0, 1, 1, 0, 1, '2019-04-01 09:05:02', '2020-04-10 16:38:15', 'catalog/f-cate/juice.jpg', '', 1),
(247, 'catalog/category-image/category-image.jpg', 0, 1, 1, 0, 1, '2019-04-01 09:10:51', '2020-04-09 10:00:05', 'catalog/f-cate/eggs_dairy.jpg', '', 1),
(262, 'catalog/category-image/category-image.jpg', 0, 1, 1, 0, 1, '2019-04-03 14:27:52', '2019-12-21 21:53:53', 'catalog/f-cate/f-cate1.jpg', '', 0),
(274, '', 221, 0, 1, 0, 1, '2019-04-03 16:45:25', '2019-12-25 13:53:42', 'catalog/f-cate/f-cate4-1.jpg', '', 0),
(275, '', 274, 0, 1, 0, 1, '2019-04-03 16:48:13', '2019-04-03 16:48:13', NULL, NULL, 0),
(276, '', 274, 0, 1, 0, 1, '2019-04-03 16:49:31', '2019-04-03 16:49:31', NULL, NULL, 0),
(277, '', 274, 0, 1, 0, 1, '2019-04-03 16:50:00', '2019-04-03 16:50:00', NULL, NULL, 0),
(278, '', 274, 0, 1, 0, 1, '2019-04-03 16:50:35', '2019-04-03 16:50:35', NULL, NULL, 0),
(279, '', 274, 0, 1, 0, 1, '2019-04-03 16:51:24', '2019-04-03 16:51:24', NULL, NULL, 0),
(292, '', 0, 1, 1, 0, 1, '2019-04-05 16:19:30', '2019-12-18 09:32:00', '', '', 0),
(293, '', 0, 1, 1, 0, 1, '2019-04-05 16:20:49', '2019-11-18 13:27:07', '', '', 0),
(295, '', 0, 1, 1, 0, 1, '2019-04-05 16:30:22', '2019-12-11 14:46:20', '', '', 0),
(296, '', 0, 1, 1, 0, 1, '2019-04-05 16:31:31', '2019-12-21 21:55:13', 'catalog/f-cate/f-cate3.jpg', '', 0),
(297, '', 0, 1, 1, 0, 1, '2019-04-05 16:32:18', '2020-04-10 16:39:07', 'catalog/f-cate/pizza.jpg', '', 1),
(298, '', 0, 1, 1, 0, 1, '2019-04-05 16:33:06', '2019-05-09 14:52:06', '', '', 0),
(299, '', 0, 1, 1, 0, 1, '2019-04-05 16:42:17', '2019-12-21 21:54:39', 'catalog/f-cate/f-cate4.jpg', '', 0),
(300, '', 292, 0, 1, 0, 1, '2019-04-06 09:32:59', '2019-12-11 14:28:26', NULL, NULL, 0),
(301, '', 292, 0, 1, 0, 1, '2019-04-06 09:36:02', '2019-12-11 14:28:55', NULL, NULL, 0),
(302, '', 300, 0, 1, 0, 1, '2019-04-06 09:44:55', '2019-04-06 09:44:55', NULL, NULL, 0),
(303, '', 46, 0, 1, 0, 1, '2019-04-06 09:58:39', '2019-04-06 09:58:39', NULL, NULL, 0),
(304, '', 46, 0, 1, 0, 1, '2019-04-06 09:59:06', '2019-04-06 09:59:06', NULL, NULL, 0),
(305, '', 351, 0, 1, 0, 1, '2019-04-06 09:59:25', '2019-12-21 10:01:00', NULL, NULL, 0),
(306, '', 351, 0, 1, 0, 1, '2019-04-06 09:59:45', '2019-12-21 10:01:12', NULL, NULL, 0),
(347, '', 220, 0, 1, 0, 1, '2019-09-17 21:42:49', '2019-09-17 21:43:15', NULL, NULL, 0),
(346, '', 220, 0, 1, 0, 1, '2019-09-17 21:42:19', '2019-09-17 21:42:19', NULL, NULL, 0),
(309, '', 46, 0, 1, 0, 1, '2019-04-06 10:05:30', '2019-04-06 10:05:30', NULL, NULL, 0),
(310, '', 46, 0, 1, 0, 1, '2019-04-06 10:05:56', '2019-04-06 10:05:56', NULL, NULL, 0),
(311, '', 351, 0, 1, 0, 1, '2019-04-06 10:08:50', '2019-12-21 10:01:55', NULL, NULL, 0),
(312, '', 20, 0, 1, 0, 1, '2019-04-06 10:09:10', '2019-04-06 10:09:10', NULL, NULL, 0),
(313, '', 20, 0, 1, 0, 1, '2019-04-06 10:09:27', '2019-04-06 10:09:27', NULL, NULL, 0),
(314, '', 20, 0, 1, 0, 1, '2019-04-06 10:09:44', '2019-04-06 10:09:44', NULL, NULL, 0),
(351, '', 18, 0, 1, 0, 1, '2019-11-11 15:50:35', '2020-04-09 09:50:28', 'catalog/f-cate/dry_fruits_snacks.jpg', '', 1),
(316, '', 20, 0, 1, 0, 1, '2019-04-06 10:10:19', '2019-10-15 21:52:49', NULL, NULL, 0),
(317, '', 20, 0, 1, 0, 1, '2019-04-06 10:10:36', '2019-10-15 21:53:36', NULL, NULL, 0),
(319, '', 351, 0, 1, 0, 1, '2019-04-06 10:18:14', '2019-12-21 10:01:45', NULL, NULL, 0),
(325, '', 0, 1, 1, 0, 1, '2019-04-08 10:25:21', '2019-12-11 13:33:19', NULL, NULL, 0),
(326, '', 325, 0, 1, 0, 1, '2019-04-08 10:28:38', '2019-12-11 14:15:24', NULL, NULL, 0),
(327, '', 326, 0, 1, 0, 1, '2019-04-08 10:37:33', '2019-06-16 16:36:52', NULL, NULL, 0),
(328, '', 326, 0, 1, 0, 1, '2019-04-08 10:38:05', '2019-04-08 10:38:05', NULL, NULL, 0),
(329, '', 326, 0, 1, 0, 1, '2019-04-08 10:38:42', '2019-04-08 10:38:42', NULL, NULL, 0),
(330, '', 326, 0, 1, 0, 1, '2019-04-08 10:39:23', '2019-04-08 10:39:23', NULL, NULL, 0),
(331, '', 325, 0, 1, 0, 1, '2019-04-08 10:40:56', '2019-12-11 14:14:19', NULL, NULL, 0),
(332, '', 331, 0, 1, 0, 1, '2019-04-08 10:41:38', '2019-04-08 10:41:38', NULL, NULL, 0),
(333, '', 331, 0, 1, 0, 1, '2019-04-08 10:42:17', '2019-04-08 10:42:17', NULL, NULL, 0),
(334, '', 331, 0, 1, 0, 1, '2019-04-08 10:43:01', '2019-04-08 10:43:01', NULL, NULL, 0),
(335, '', 331, 0, 1, 0, 1, '2019-04-08 11:11:13', '2019-04-08 11:11:13', NULL, NULL, 0),
(336, '', 325, 0, 1, 0, 1, '2019-04-08 11:13:56', '2019-12-11 14:16:05', NULL, NULL, 0),
(337, '', 336, 0, 1, 0, 1, '2019-04-08 11:14:42', '2019-04-08 11:14:42', NULL, NULL, 0),
(338, '', 336, 0, 1, 0, 1, '2019-04-08 11:15:18', '2019-04-08 11:15:18', NULL, NULL, 0),
(339, '', 336, 0, 1, 0, 1, '2019-04-08 11:15:52', '2019-04-08 11:15:52', NULL, NULL, 0),
(340, '', 336, 0, 1, 0, 1, '2019-04-08 11:16:31', '2019-04-08 11:16:31', NULL, NULL, 0),
(341, '', 325, 0, 1, 0, 1, '2019-04-08 11:18:23', '2019-12-11 14:14:58', NULL, NULL, 0),
(342, '', 341, 0, 1, 0, 1, '2019-04-08 11:19:57', '2019-04-08 11:25:20', NULL, NULL, 0),
(343, '', 341, 0, 1, 0, 1, '2019-04-08 11:20:55', '2019-04-08 11:20:55', NULL, NULL, 0),
(344, '', 341, 0, 1, 0, 1, '2019-04-08 11:21:46', '2019-04-08 11:25:30', NULL, NULL, 0),
(345, '', 341, 0, 1, 0, 1, '2019-04-08 11:22:19', '2019-04-08 11:22:19', NULL, NULL, 0),
(348, '', 220, 0, 1, 0, 1, '2019-09-17 21:43:42', '2019-09-17 21:43:42', NULL, NULL, 0),
(349, '', 220, 0, 1, 0, 1, '2019-09-17 21:44:10', '2019-09-17 21:44:10', NULL, NULL, 0),
(350, '', 220, 0, 1, 0, 1, '2019-09-17 21:44:31', '2019-10-15 21:55:44', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(31, 1, 'Scanners', '', 'Scanners', '', ''),
(29, 1, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(223, 1, 'Bags', '', 'Bags', '', ''),
(24, 1, 'Herbal', '&lt;p&gt;A console game is a form of interactive multimedia used for entertainment.&lt;/p&gt;\r\n&lt;p&gt;The game consists of manipulable images (and usually sounds) generated by a video game console and displayed on a television or similar audio-video system. The game itself is usually controlled and manipulated using a handheld device connected to the console, called a controller. The controller generally contains a number of buttons and directional controls, (such as analogue joysticks), each of which has been assigned a purpose for interacting with and controlling the images on the screen. The display, speakers, console, and controls of a console can also be incorporated into one small object known as a handheld game.&lt;/p&gt;', 'Herbal', '', ''),
(71, 1, 'Kids Tablets', '', 'Kids Tablets', '', ''),
(72, 1, 'iPad &amp; Tablet Accessories', '', 'iPad &amp; Tablet Accessories', '', ''),
(73, 1, 'iPad', '', 'iPad', '', ''),
(74, 1, 'E-Readers', '', 'E-Readers', '', ''),
(76, 1, 'iPhone', '', 'iPhone', '', ''),
(77, 1, 'Prepaid Phones', '', 'Prepaid Phones', '', ''),
(78, 1, 'Adapters, Cables &amp; Chargers', '', 'Adapters, Cables &amp; Chargers', '', ''),
(57, 1, 'Tablets', '&lt;p&gt;The idea of tablet computing is generally credited to Alan Kay of Xerox, who sketched out the idea in 1971. The first widely sold tablet computer was Apple Computer\'s Newton, which was not a commercial success. Technological advances in battery life, display resolution, handwriting recognition software, memory and wireless internet access have since made tablets a viable computing option.&lt;/p&gt;', 'Tablets', '', ''),
(59, 1, 'Mobiles', '&lt;p&gt;The mobile phone can be used to communicate over long distances without wires. It works by communicating with a nearby base station (also called a &quot;cell site&quot;) which connects it to the main phone network. When moving, if the mobile phone gets too far away from the cell it is connected to, that cell sends a message to another cell to tell the new cell to take over the call. This is called a &quot;hand off,&quot; and the call continues with the new cell the phone is connected to. The hand-off is done so well and carefully that the user will usually never even know that the call was transferred to another cell.&lt;/p&gt;', 'Mobiles', '', ''),
(225, 1, 'Glasses', '', 'Glasses', '', ''),
(63, 1, 'Top Picks for Monitors', '', 'Top Picks for Monitors', '', ''),
(81, 1, 'Trackballs 1', '', 'Trackballs 1', '', ''),
(82, 1, 'Trackballs 2', '', 'Trackballs 2', '', ''),
(83, 1, 'Mice 1', '', 'Mice 1', '', ''),
(84, 1, 'Mice 2', '', 'Mice 2', '', ''),
(85, 1, 'Scanners 1', '', 'Scanners 1', '', ''),
(86, 1, 'Scanners 2', '', 'Scanners 2', '', ''),
(87, 1, 'Scanners 3', '', 'Scanners 3', '', ''),
(88, 1, 'Scanners 4', '', 'Scanners 4', '', ''),
(92, 1, 'Sinks', '', 'Sinks', '', ''),
(93, 1, 'Banquet camera', '', 'Banquet camera', '', ''),
(61, 1, 'IPS Monitors', '', 'IPS Monitors', '', ''),
(27, 1, 'LCD Monitors', '', 'LCD Monitors', '', ''),
(26, 1, 'LED Monitors', '', 'LED Monitors', '', ''),
(25, 1, 'Accessories', '&lt;p&gt;Example of category description text&lt;/p&gt;', 'Accessories', '', ''),
(69, 6, 'Bread &amp; Bakery', '&lt;p&gt;Headphones (or head-phones in the early days of telephony and radio) are a pair of small loudspeaker drivers worn on or around the head over a user\'s ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound. Headphones let a single user listen to an audio source privately, in contrast to a loudspeaker, which emits sound into the open air for anyone nearby to hear. &lt;/p&gt;', 'Bread &amp; Bakery', '', ''),
(62, 1, 'Gaming Monitors', '', 'Gaming Monitors', '', ''),
(64, 1, 'MacBooks', '', 'MacBooks', '', ''),
(65, 1, 'Chromebooks', '', 'Chromebooks', '', ''),
(66, 1, 'Gaming Laptops', '', 'Gaming Laptops', '', ''),
(67, 1, 'Microsoft Surface', '', 'Microsoft Surface', '', ''),
(68, 1, 'PC Laptops', '', 'PC Laptops', '', ''),
(89, 1, 'Hyllis', '', 'Hyllis', '', ''),
(90, 1, 'Bathroom Vanities', '', 'Bathroom Vanities', '', ''),
(91, 1, 'Bathroom storage', '', 'Bathroom storage', '', ''),
(227, 1, 'Gas Stovetop Compatible', '', 'Gas Stovetop Compatible', '', ''),
(95, 1, 'Avocado', '', 'Avocado', '', ''),
(96, 1, 'GPS Monitors', '', 'GPS Monitors', '', ''),
(18, 1, 'Shop Organic', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Shop Organic', '', ''),
(174, 1, 'Bed', '', 'Bed', '', ''),
(175, 1, 'Daybed', '', 'Daybed', '', ''),
(176, 1, 'Futon', '', 'Futon', '', ''),
(177, 1, 'Hammock', '', 'Hammock', '', ''),
(178, 1, 'Headboard', '', 'Headboard', '', ''),
(180, 1, 'Houseware', '', 'Houseware', '', ''),
(181, 1, 'Dining Tables ', '', 'Dining Tables ', '', ''),
(182, 1, 'Dining Chairs', '', 'Dining Chairs', '', ''),
(183, 1, 'Sideboards', '', 'Sideboards', '', ''),
(184, 1, 'Gramophone', '', 'Gramophone', '', ''),
(185, 1, 'Tableware', '', 'Tableware', '', ''),
(222, 1, 'Watches', '', 'Watches', '', ''),
(221, 1, 'Shop Fashion', '', 'Shop Fashion', '', ''),
(195, 1, 'Chairs &amp; Sofas', '', 'Chairs &amp; Sofas', '', ''),
(196, 1, 'Tables', '', 'Tables', '', ''),
(197, 1, 'Sets', '', 'Sets', '', ''),
(198, 1, 'Loungers', '', 'Loungers', '', ''),
(199, 1, 'Chest', '', 'Chest', '', ''),
(33, 1, 'Bed Room', '&lt;p&gt;A camera is an optical instrument for recording or capturing images, which may be stored locally, transmitted to another location, or both. The images may be individual still photographs or sequences of images constituting videos or movies. The camera is a remote sensing device as it senses subjects without any contact . The word camera comes from camera obscura, which means &quot;dark chamber&quot; and is the Latin name of the original device for projecting an image of external reality onto a flat surface. The modern photographic camera evolved from the camera obscura. The functioning of the camera is very similar to the functioning of the human eye. The first permanent photograph was made in 1826 by Joseph Nicéphore Niépce.&lt;/p&gt;', 'Bed Room', '', ''),
(224, 1, 'Desktop', '', 'Desktop', '', ''),
(205, 1, 'Backlit', '', 'Backlit', '', ''),
(206, 1, 'EXcaliberPC', '', 'EXcaliberPC', '', ''),
(207, 1, 'Eluktronics', '', 'Eluktronics', '', ''),
(208, 1, 'Single Core', '', 'Single Core', '', ''),
(209, 1, 'Dual Core', '', 'Dual Core', '', ''),
(210, 1, 'Quad Core', '', 'Quad Core', '', ''),
(226, 1, 'Dishwasher-Safe', '', 'Dishwasher-Safe', '', ''),
(228, 1, 'Induction Stovetop Compatible', '', 'Induction Stovetop Compatible', '', ''),
(229, 1, 'Ceramic', '', 'Ceramic', '', ''),
(230, 1, 'Mirror Satin', '', 'Mirror Satin', '', ''),
(231, 1, 'Calphalon', '', 'Calphalon', '', ''),
(232, 1, 'Contemporary', '', 'Contemporary', '', ''),
(233, 1, 'Hard-Anodized', '', 'Hard-Anodized', '', ''),
(234, 1, 'Aluminum Nonstick', '', 'Aluminum Nonstick', '', ''),
(235, 1, 'Sauce Pan', '', 'Sauce Pan', '', ''),
(236, 1, 'Ultimate', '', 'Ultimate', '', ''),
(237, 1, 'Hard Anodized', '', 'Hard Anodized', '', ''),
(238, 1, 'Scratch Resistant', '', 'Scratch Resistant', '', ''),
(239, 1, 'Titanium Nonstick ', '', 'Titanium Nonstick ', '', ''),
(240, 1, 'Thermo-Spot', '', 'Thermo-Spot', '', ''),
(241, 1, 'Cuisinart', '', 'Cuisinart', '', ''),
(242, 1, 'Aura Stainless', '', 'Aura Stainless', '', ''),
(243, 1, 'Steel Stovetop', '', 'Steel Stovetop', '', ''),
(244, 1, 'Homeinart', '', 'Homeinart', '', ''),
(245, 1, 'Kettle Stainless', '', 'Kettle Stainless', '', ''),
(247, 6, 'Eggs &amp; Dairy', '', 'Eggs &amp; Dairy', '', ''),
(164, 1, 'Shop Furniture', '&lt;p&gt;We Assist you in Different Fields of Digital Marketing and Web Designing. Skilled Designers. Effective Services. Highlights: Highly Skilled Developers And Designers Available, Providing Effective And Result Oriented Services.&lt;/p&gt;', 'Shop Furniture', '', ''),
(298, 1, 'TV &amp; Audio', '', 'TV &amp; Audio', '', ''),
(296, 1, 'Studio &amp; Professional', '', 'Studio &amp; Professional', '', ''),
(262, 1, 'Headphones', '', 'Headphones', '', ''),
(274, 1, 'Shoes', '', 'Shoes', '', ''),
(275, 1, 'Circular Saws', '', 'Circular Saws', '', ''),
(276, 1, 'Mitre Saws', '', 'Mitre Saws', '', ''),
(277, 1, 'Jigsaws', '', 'Jigsaws', '', ''),
(278, 1, 'Reciprocating Saws', '', 'Reciprocating Saws', '', ''),
(279, 1, 'Table Saws', '', 'Table Saws', '', ''),
(220, 6, 'Canned Goods', '', 'Canned Goods', '', ''),
(293, 1, 'Mobile &amp; Tablets', '', 'Mobile &amp; Tablets', '', ''),
(297, 6, 'Pizza', '', 'Pizza', '', ''),
(299, 1, 'Smartwatch', '', 'Smartwatch', '', ''),
(300, 1, 'Laptops', '', 'Laptops', '', ''),
(302, 1, 'Apple laptops', '', 'Apple laptops', '', ''),
(303, 1, 'Coconut*', '', 'Coconut*', '', ''),
(304, 1, 'Coffee', '', 'Coffee', '', ''),
(305, 1, 'Cucumber', '', 'Cucumber', '', ''),
(306, 1, 'Eggplant', '', 'Eggplant', '', ''),
(348, 1, 'Hypebeast', '', 'Hypebeast', '', ''),
(346, 1, 'Luxury', '', 'Luxury', '', ''),
(309, 1, 'Banana', '', 'Banana', '', ''),
(310, 1, 'Blueberries', '', 'Blueberries', '', ''),
(311, 1, 'Beets', '', 'Beets', '', ''),
(312, 1, 'Cabbage', '', 'Cabbage', '', ''),
(313, 1, 'Carrots', '', 'Carrots', '', ''),
(314, 1, 'Kale', '', 'Kale', '', ''),
(31, 6, 'Scanners', '', 'Scanners', '', ''),
(316, 1, 'Potatoes', '', 'Potatoes', '', ''),
(317, 1, 'Spinach', '', 'Spinach', '', ''),
(299, 6, 'Smartwatch', '', 'Smartwatch', '', ''),
(319, 1, 'Arugula', '', 'Arugula', '', ''),
(327, 1, 'Sports', '', 'Sports', '', ''),
(328, 1, 'Home Theater', '', 'Home Theater', '', ''),
(329, 1, 'Stereo Receivers and Amplifiers', '', 'Stereo Receivers and Amplifiers', '', ''),
(330, 1, 'Surround Sound Speakers Systems', '', 'Surround Sound Speakers Systems', '', ''),
(332, 1, 'Accessories', '', 'Accessories', '', ''),
(333, 1, 'Auto GPS Units', '', 'Auto GPS Units', '', ''),
(334, 1, 'Fitness GPS Units', '', 'Fitness GPS Units', '', ''),
(335, 1, 'Handheld GPS Units', '', 'Handheld GPS Units', '', ''),
(337, 1, 'Smart Appliances', '', 'Smart Appliances', '', ''),
(338, 1, 'Smart Display', '', 'Smart Display', '', ''),
(339, 1, 'Smart Energy and Lighting', '', 'Smart Energy and Lighting', '', ''),
(340, 1, 'Smart Health and Fitness', '', 'Smart Health and Fitness', '', ''),
(341, 1, 'Cell Phones', '', 'Cell Phones', '', ''),
(342, 1, 'Cellphone Accessories', '', 'Cellphone Accessories', '', ''),
(343, 1, 'Mobile Hotspots &amp; Plans', '', 'Mobile Hotspots &amp; Plans', '', ''),
(344, 1, 'Phones With Plans', '', 'Phones With Plans', '', ''),
(345, 1, 'Prepaid Plans', '', 'Prepaid Plans', '', ''),
(75, 1, 'Unlocked Phones', '', 'Unlocked Phones', '', ''),
(295, 1, 'Handmade', '', 'Handmade', '', ''),
(301, 1, 'Monitors', '', 'Monitors', '', ''),
(194, 1, 'Home Decor', '', 'Home Decor', '', ''),
(336, 1, 'Smart Home', '', 'Smart Home', '', ''),
(350, 1, 'Gvasalia', '', 'Gvasalia', '', ''),
(349, 1, 'Generic', '', 'Generic', '', ''),
(347, 1, 'Seasonal', '', 'Seasonal', '', ''),
(297, 1, 'Pizza', '', 'Pizza', '', ''),
(298, 6, 'TV &amp; Audio', '', 'TV &amp; Audio', '', ''),
(296, 6, 'Studio &amp; Professional', '', 'Studio &amp; Professional', '', ''),
(262, 6, 'Headphones', '', 'Headphones', '', ''),
(274, 6, 'Shoes', '', 'Shoes', '', ''),
(275, 6, 'Circular Saws', '', 'Circular Saws', '', ''),
(276, 6, 'Mitre Saws', '', 'Mitre Saws', '', ''),
(277, 6, 'Jigsaws', '', 'Jigsaws', '', ''),
(278, 6, 'Reciprocating Saws', '', 'Reciprocating Saws', '', ''),
(279, 6, 'Table Saws', '', 'Table Saws', '', ''),
(293, 6, 'Mobile &amp; Tablets', '', 'Mobile &amp; Tablets', '', ''),
(239, 6, 'Titanium Nonstick ', '', 'Titanium Nonstick ', '', ''),
(240, 6, 'Thermo-Spot', '', 'Thermo-Spot', '', ''),
(241, 6, 'Cuisinart', '', 'Cuisinart', '', ''),
(242, 6, 'Aura Stainless', '', 'Aura Stainless', '', ''),
(243, 6, 'Steel Stovetop', '', 'Steel Stovetop', '', ''),
(244, 6, 'Homeinart', '', 'Homeinart', '', ''),
(245, 6, 'Kettle Stainless', '', 'Kettle Stainless', '', ''),
(247, 1, 'Eggs &amp; Dairy', '', 'Eggs &amp; Dairy', '', ''),
(164, 6, 'Shop Furniture', '&lt;p&gt;We Assist you in Different Fields of Digital Marketing and Web Designing. Skilled Designers. Effective Services. Highlights: Highly Skilled Developers And Designers Available, Providing Effective And Result Oriented Services.&lt;/p&gt;', 'Shop Furniture', '', ''),
(238, 6, 'Scratch Resistant', '', 'Scratch Resistant', '', ''),
(237, 6, 'Hard Anodized', '', 'Hard Anodized', '', ''),
(236, 6, 'Ultimate', '', 'Ultimate', '', ''),
(235, 6, 'Sauce Pan', '', 'Sauce Pan', '', ''),
(234, 6, 'Aluminum Nonstick', '', 'Aluminum Nonstick', '', ''),
(210, 6, 'Quad Core', '', 'Quad Core', '', ''),
(226, 6, 'Dishwasher-Safe', '', 'Dishwasher-Safe', '', ''),
(228, 6, 'Induction Stovetop Compatible', '', 'Induction Stovetop Compatible', '', ''),
(229, 6, 'Ceramic', '', 'Ceramic', '', ''),
(230, 6, 'Mirror Satin', '', 'Mirror Satin', '', ''),
(231, 6, 'Calphalon', '', 'Calphalon', '', ''),
(232, 6, 'Contemporary', '', 'Contemporary', '', ''),
(233, 6, 'Hard-Anodized', '', 'Hard-Anodized', '', ''),
(224, 6, 'Desktop', '', 'Desktop', '', ''),
(205, 6, 'Backlit', '', 'Backlit', '', ''),
(206, 6, 'EXcaliberPC', '', 'EXcaliberPC', '', ''),
(207, 6, 'Eluktronics', '', 'Eluktronics', '', ''),
(208, 6, 'Single Core', '', 'Single Core', '', ''),
(209, 6, 'Dual Core', '', 'Dual Core', '', ''),
(33, 6, 'Bed Room', '&lt;p&gt;A camera is an optical instrument for recording or capturing images, which may be stored locally, transmitted to another location, or both. The images may be individual still photographs or sequences of images constituting videos or movies. The camera is a remote sensing device as it senses subjects without any contact . The word camera comes from camera obscura, which means &quot;dark chamber&quot; and is the Latin name of the original device for projecting an image of external reality onto a flat surface. The modern photographic camera evolved from the camera obscura. The functioning of the camera is very similar to the functioning of the human eye. The first permanent photograph was made in 1826 by Joseph Nicéphore Niépce.&lt;/p&gt;', 'Bed Room', '', ''),
(198, 6, 'Loungers', '', 'Loungers', '', ''),
(199, 6, 'Chest', '', 'Chest', '', ''),
(182, 6, 'Dining Chairs', '', 'Dining Chairs', '', ''),
(183, 6, 'Sideboards', '', 'Sideboards', '', ''),
(184, 6, 'Gramophone', '', 'Gramophone', '', ''),
(185, 6, 'Tableware', '', 'Tableware', '', ''),
(222, 6, 'Watches', '', 'Watches', '', ''),
(221, 6, 'Shop Fashion', '', 'Shop Fashion', '', ''),
(195, 6, 'Chairs &amp; Sofas', '', 'Chairs &amp; Sofas', '', ''),
(196, 6, 'Tables', '', 'Tables', '', ''),
(197, 6, 'Sets', '', 'Sets', '', ''),
(174, 6, 'Bed', '', 'Bed', '', ''),
(175, 6, 'Daybed', '', 'Daybed', '', ''),
(176, 6, 'Futon', '', 'Futon', '', ''),
(177, 6, 'Hammock', '', 'Hammock', '', ''),
(178, 6, 'Headboard', '', 'Headboard', '', ''),
(180, 6, 'Houseware', '', 'Houseware', '', ''),
(181, 6, 'Dining Tables ', '', 'Dining Tables ', '', ''),
(18, 6, 'Shop Organic', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Shop Organic', '', ''),
(96, 6, 'GPS Monitors', '', 'GPS Monitors', '', ''),
(95, 6, 'Avocado', '', 'Avocado', '', ''),
(227, 6, 'Gas Stovetop Compatible', '', 'Gas Stovetop Compatible', '', ''),
(91, 6, 'Bathroom storage', '', 'Bathroom storage', '', ''),
(90, 6, 'Bathroom Vanities', '', 'Bathroom Vanities', '', ''),
(89, 6, 'Hyllis', '', 'Hyllis', '', ''),
(68, 6, 'PC Laptops', '', 'PC Laptops', '', ''),
(67, 6, 'Microsoft Surface', '', 'Microsoft Surface', '', ''),
(66, 6, 'Gaming Laptops', '', 'Gaming Laptops', '', ''),
(65, 6, 'Chromebooks', '', 'Chromebooks', '', ''),
(64, 6, 'MacBooks', '', 'MacBooks', '', ''),
(62, 6, 'Gaming Monitors', '', 'Gaming Monitors', '', ''),
(93, 6, 'Banquet camera', '', 'Banquet camera', '', ''),
(61, 6, 'IPS Monitors', '', 'IPS Monitors', '', ''),
(27, 6, 'LCD Monitors', '', 'LCD Monitors', '', ''),
(26, 6, 'LED Monitors', '', 'LED Monitors', '', ''),
(25, 6, 'Accessories', '&lt;p&gt;Example of category description text&lt;/p&gt;', 'Accessories', '', ''),
(69, 1, 'Bread &amp; Bakery', '&lt;p&gt;Headphones (or head-phones in the early days of telephony and radio) are a pair of small loudspeaker drivers worn on or around the head over a user\'s ears. They are electroacoustic transducers, which convert an electrical signal to a corresponding sound. Headphones let a single user listen to an audio source privately, in contrast to a loudspeaker, which emits sound into the open air for anyone nearby to hear. &lt;/p&gt;', 'Bread &amp; Bakery', '', ''),
(92, 6, 'Sinks', '', 'Sinks', '', ''),
(88, 6, 'Scanners 4', '', 'Scanners 4', '', ''),
(87, 6, 'Scanners 3', '', 'Scanners 3', '', ''),
(86, 6, 'Scanners 2', '', 'Scanners 2', '', ''),
(85, 6, 'Scanners 1', '', 'Scanners 1', '', ''),
(84, 6, 'Mice 2', '', 'Mice 2', '', ''),
(83, 6, 'Mice 1', '', 'Mice 1', '', ''),
(82, 6, 'Trackballs 2', '', 'Trackballs 2', '', ''),
(81, 6, 'Trackballs 1', '', 'Trackballs 1', '', ''),
(63, 6, 'Top Picks for Monitors', '', 'Top Picks for Monitors', '', ''),
(225, 6, 'Glasses', '', 'Glasses', '', ''),
(59, 6, 'Mobiles', '&lt;p&gt;The mobile phone can be used to communicate over long distances without wires. It works by communicating with a nearby base station (also called a &quot;cell site&quot;) which connects it to the main phone network. When moving, if the mobile phone gets too far away from the cell it is connected to, that cell sends a message to another cell to tell the new cell to take over the call. This is called a &quot;hand off,&quot; and the call continues with the new cell the phone is connected to. The hand-off is done so well and carefully that the user will usually never even know that the call was transferred to another cell.&lt;/p&gt;', 'Mobiles', '', ''),
(57, 6, 'Tablets', '&lt;p&gt;The idea of tablet computing is generally credited to Alan Kay of Xerox, who sketched out the idea in 1971. The first widely sold tablet computer was Apple Computer\'s Newton, which was not a commercial success. Technological advances in battery life, display resolution, handwriting recognition software, memory and wireless internet access have since made tablets a viable computing option.&lt;/p&gt;', 'Tablets', '', ''),
(78, 6, 'Adapters, Cables &amp; Chargers', '', 'Adapters, Cables &amp; Chargers', '', ''),
(77, 6, 'Prepaid Phones', '', 'Prepaid Phones', '', ''),
(76, 6, 'iPhone', '', 'iPhone', '', ''),
(74, 6, 'E-Readers', '', 'E-Readers', '', ''),
(73, 6, 'iPad', '', 'iPad', '', ''),
(72, 6, 'iPad &amp; Tablet Accessories', '', 'iPad &amp; Tablet Accessories', '', ''),
(71, 6, 'Kids Tablets', '', 'Kids Tablets', '', ''),
(223, 6, 'Bags', '', 'Bags', '', ''),
(24, 6, 'Herbal', '&lt;p&gt;A console game is a form of interactive multimedia used for entertainment.&lt;/p&gt;\r\n&lt;p&gt;The game consists of manipulable images (and usually sounds) generated by a video game console and displayed on a television or similar audio-video system. The game itself is usually controlled and manipulated using a handheld device connected to the console, called a controller. The controller generally contains a number of buttons and directional controls, (such as analogue joysticks), each of which has been assigned a purpose for interacting with and controlling the images on the screen. The display, speakers, console, and controls of a console can also be incorporated into one small object known as a handheld game.&lt;/p&gt;', 'Herbal', '', ''),
(29, 6, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(20, 6, 'Fresh Vegetables', '&lt;p&gt;A computer monitor is an output device which displays information in pictorial form. A monitor usually comprises the display device, circuitry, casing, and power supply. The display device in modern monitors is typically a thin film transistor liquid crystal display (TFT-LCD) with LED backlighting having replaced cold-cathode fluorescent lamp (CCFL) backlighting. Older monitors used a cathode ray tube (CRT). Monitors are connected to the computer via VGA, Digital Visual Interface (DVI), HDMI, DisplayPort, Thunderbolt, low-voltage differential signaling (LVDS) or other proprietary connectors and signals.&lt;/p&gt;', 'Fresh Vegetables', 'Example of category description', ''),
(292, 1, 'Computers &amp; Laptops', '', 'Computers &amp; Laptops', '', ''),
(30, 1, 'Video Games', '', 'Video Games', '', ''),
(246, 6, 'Juice', '', 'Juice', '', ''),
(173, 1, 'Outdoor', '', 'Outdoor', '', ''),
(326, 1, 'Home Audio &amp; Theater', '', 'Home Audio &amp; Theater', '', ''),
(331, 1, 'GPS &amp; Navigation', '', 'GPS &amp; Navigation', '', ''),
(325, 1, 'Shop electronics', 'Shop up to 50% off shoes, clothing and accessories. Find discounts on favorites like running shoes, training gear, tights, and more at the adidas online sale.', 'Shop electronics', '', ''),
(300, 6, 'Laptops', '', 'Laptops', '', ''),
(302, 6, 'Apple laptops', '', 'Apple laptops', '', ''),
(303, 6, 'Coconut*', '', 'Coconut*', '', ''),
(304, 6, 'Coffee', '', 'Coffee', '', ''),
(305, 6, 'Cucumber', '', 'Cucumber', '', ''),
(306, 6, 'Eggplant', '', 'Eggplant', '', ''),
(348, 6, 'Hypebeast', '', 'Hypebeast', '', ''),
(346, 6, 'Luxury', '', 'Luxury', '', ''),
(309, 6, 'Banana', '', 'Banana', '', ''),
(310, 6, 'Blueberries', '', 'Blueberries', '', ''),
(311, 6, 'Beets', '', 'Beets', '', ''),
(312, 6, 'Cabbage', '', 'Cabbage', '', ''),
(313, 6, 'Carrots', '', 'Carrots', '', ''),
(314, 6, 'Kale', '', 'Kale', '', ''),
(316, 6, 'Potatoes', '', 'Potatoes', '', ''),
(317, 6, 'Spinach', '', 'Spinach', '', ''),
(319, 6, 'Arugula', '', 'Arugula', '', ''),
(327, 6, 'Sports', '', 'Sports', '', ''),
(328, 6, 'Home Theater', '', 'Home Theater', '', ''),
(329, 6, 'Stereo Receivers and Amplifiers', '', 'Stereo Receivers and Amplifiers', '', ''),
(330, 6, 'Surround Sound Speakers Systems', '', 'Surround Sound Speakers Systems', '', ''),
(332, 6, 'Accessories', '', 'Accessories', '', ''),
(333, 6, 'Auto GPS Units', '', 'Auto GPS Units', '', ''),
(334, 6, 'Fitness GPS Units', '', 'Fitness GPS Units', '', ''),
(335, 6, 'Handheld GPS Units', '', 'Handheld GPS Units', '', ''),
(337, 6, 'Smart Appliances', '', 'Smart Appliances', '', ''),
(338, 6, 'Smart Display', '', 'Smart Display', '', ''),
(339, 6, 'Smart Energy and Lighting', '', 'Smart Energy and Lighting', '', ''),
(340, 6, 'Smart Health and Fitness', '', 'Smart Health and Fitness', '', ''),
(341, 6, 'Cell Phones', '', 'Cell Phones', '', ''),
(342, 6, 'Cellphone Accessories', '', 'Cellphone Accessories', '', ''),
(343, 6, 'Mobile Hotspots &amp; Plans', '', 'Mobile Hotspots &amp; Plans', '', ''),
(344, 6, 'Phones With Plans', '', 'Phones With Plans', '', ''),
(345, 6, 'Prepaid Plans', '', 'Prepaid Plans', '', ''),
(75, 6, 'Unlocked Phones', '', 'Unlocked Phones', '', ''),
(295, 6, 'Handmade', '', 'Handmade', '', ''),
(301, 6, 'Monitors', '', 'Monitors', '', ''),
(194, 6, 'Home Decor', '', 'Home Decor', '', ''),
(336, 6, 'Smart Home', '', 'Smart Home', '', ''),
(350, 6, 'Gvasalia', '', 'Gvasalia', '', ''),
(349, 6, 'Generic', '', 'Generic', '', ''),
(347, 6, 'Seasonal', '', 'Seasonal', '', ''),
(351, 1, 'Dry Fruits &amp; Snacks', '', 'Dry Fruits &amp; Snacks', '', ''),
(46, 1, 'Fresh Fruits', '', 'Fresh Fruits', '', ''),
(292, 6, 'Computers &amp; Laptops', '', 'Computers &amp; Laptops', '', ''),
(30, 6, 'Video Games', '', 'Video Games', '', ''),
(246, 1, 'Juice', '', 'Juice', '', ''),
(173, 6, 'Outdoor', '', 'Outdoor', '', ''),
(326, 6, 'Home Audio &amp; Theater', '', 'Home Audio &amp; Theater', '', ''),
(331, 6, 'GPS &amp; Navigation', '', 'GPS &amp; Navigation', '', ''),
(325, 6, 'Shop electronics', 'Shop up to 50% off shoes, clothing and accessories. Find discounts on favorites like running shoes, training gear, tights, and more at the adidas online sale.', 'Shop electronics', '', ''),
(20, 1, 'Fresh Vegetables', '&lt;p&gt;A computer monitor is an output device which displays information in pictorial form. A monitor usually comprises the display device, circuitry, casing, and power supply. The display device in modern monitors is typically a thin film transistor liquid crystal display (TFT-LCD) with LED backlighting having replaced cold-cathode fluorescent lamp (CCFL) backlighting. Older monitors used a cathode ray tube (CRT). Monitors are connected to the computer via VGA, Digital Visual Interface (DVI), HDMI, DisplayPort, Thunderbolt, low-voltage differential signaling (LVDS) or other proprietary connectors and signals.&lt;/p&gt;', 'Fresh Vegetables', 'Example of category description', ''),
(46, 6, 'Fresh Fruits', '', 'Fresh Fruits', '', ''),
(351, 6, 'Dry Fruits &amp; Snacks', '', 'Dry Fruits &amp; Snacks', '', ''),
(220, 1, 'Canned Goods', '', 'Canned Goods', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 8),
(18, 9),
(18, 10),
(18, 11),
(18, 12),
(18, 13),
(18, 14),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 8),
(20, 9),
(20, 10),
(20, 11),
(20, 12),
(20, 13),
(20, 14),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 5),
(24, 6),
(24, 7),
(24, 8),
(24, 9),
(24, 10),
(24, 11),
(24, 12),
(24, 13),
(24, 14),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(25, 5),
(25, 6),
(25, 7),
(25, 8),
(25, 9),
(25, 10),
(25, 11),
(25, 12),
(25, 13),
(25, 14),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(26, 5),
(26, 6),
(26, 7),
(26, 8),
(26, 9),
(26, 10),
(26, 11),
(26, 12),
(26, 13),
(26, 14),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(27, 6),
(27, 7),
(27, 8),
(27, 9),
(27, 10),
(27, 11),
(27, 12),
(27, 13),
(27, 14),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(29, 6),
(29, 7),
(29, 8),
(29, 9),
(29, 10),
(29, 11),
(29, 12),
(29, 13),
(29, 14),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(30, 10),
(30, 11),
(30, 12),
(30, 13),
(30, 14),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6),
(31, 7),
(31, 8),
(31, 9),
(31, 10),
(31, 11),
(31, 12),
(31, 13),
(31, 14),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(33, 7),
(33, 8),
(33, 9),
(33, 10),
(33, 11),
(33, 12),
(33, 13),
(33, 14),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(46, 5),
(46, 6),
(46, 7),
(46, 8),
(46, 9),
(46, 10),
(46, 11),
(46, 12),
(46, 13),
(46, 14),
(57, 1),
(57, 2),
(57, 3),
(57, 4),
(57, 5),
(57, 6),
(57, 7),
(57, 8),
(57, 9),
(57, 10),
(57, 11),
(57, 12),
(57, 13),
(57, 14),
(59, 1),
(59, 2),
(59, 3),
(59, 4),
(59, 5),
(59, 6),
(59, 7),
(59, 8),
(59, 9),
(59, 10),
(59, 11),
(59, 12),
(59, 13),
(59, 14),
(69, 1),
(69, 2),
(69, 3),
(69, 4),
(69, 5),
(69, 6),
(69, 7),
(69, 8),
(69, 9),
(69, 10),
(69, 11),
(69, 12),
(69, 13),
(69, 14),
(81, 1),
(81, 2),
(81, 10),
(81, 13),
(164, 1),
(164, 2),
(164, 3),
(164, 4),
(164, 5),
(164, 6),
(164, 7),
(164, 8),
(164, 9),
(164, 10),
(164, 11),
(164, 12),
(164, 13),
(164, 14),
(173, 7),
(173, 8),
(173, 9),
(173, 10),
(173, 11),
(173, 13),
(173, 14),
(173, 15),
(173, 16),
(173, 17),
(173, 18),
(173, 19),
(173, 20),
(173, 21),
(180, 7),
(180, 8),
(180, 9),
(180, 10),
(180, 11),
(180, 13),
(180, 14),
(180, 15),
(180, 16),
(180, 17),
(180, 18),
(180, 19),
(180, 20),
(180, 21),
(194, 7),
(194, 8),
(194, 9),
(194, 10),
(194, 11),
(194, 13),
(194, 14),
(194, 21),
(221, 1),
(221, 2),
(221, 5),
(221, 7),
(221, 8),
(221, 11),
(221, 21),
(222, 1),
(222, 2),
(222, 5),
(222, 6),
(222, 7),
(222, 8),
(222, 13),
(222, 21),
(246, 1),
(246, 2),
(246, 3),
(246, 4),
(246, 5),
(246, 6),
(246, 7),
(246, 8),
(246, 11),
(246, 13),
(246, 21),
(247, 1),
(247, 2),
(247, 3),
(247, 4),
(247, 5),
(247, 7),
(247, 8),
(247, 11),
(247, 13),
(247, 21),
(262, 1),
(262, 2),
(262, 3),
(262, 4),
(262, 6),
(262, 7),
(262, 8),
(262, 11),
(262, 13),
(262, 21),
(292, 1),
(292, 2),
(292, 3),
(292, 4),
(292, 7),
(292, 11),
(292, 13),
(292, 21),
(293, 1),
(293, 2),
(293, 3),
(293, 4),
(293, 6),
(293, 7),
(293, 8),
(293, 11),
(293, 13),
(293, 21),
(295, 1),
(295, 2),
(295, 3),
(295, 4),
(295, 6),
(295, 7),
(295, 8),
(295, 11),
(295, 13),
(295, 21),
(296, 1),
(296, 2),
(296, 3),
(296, 4),
(296, 6),
(296, 7),
(296, 11),
(296, 13),
(296, 21),
(297, 1),
(297, 2),
(297, 3),
(297, 4),
(297, 6),
(297, 7),
(297, 11),
(297, 13),
(297, 21),
(298, 1),
(298, 2),
(298, 3),
(298, 4),
(298, 6),
(298, 7),
(298, 11),
(298, 13),
(298, 21),
(299, 1),
(299, 2),
(299, 3),
(299, 4),
(299, 6),
(299, 7),
(299, 11),
(299, 13),
(299, 21),
(300, 1),
(300, 2),
(300, 3),
(300, 4),
(300, 7),
(300, 11),
(300, 13),
(300, 21),
(301, 1),
(301, 2),
(301, 3),
(301, 4),
(301, 7),
(301, 11),
(301, 13),
(301, 21),
(325, 1),
(325, 2),
(325, 3),
(325, 4),
(325, 6),
(325, 7),
(325, 11),
(325, 13),
(325, 21),
(326, 1),
(326, 2),
(326, 3),
(326, 4),
(326, 7),
(326, 11),
(326, 13),
(326, 21),
(335, 1),
(335, 2),
(335, 3),
(335, 4),
(335, 6),
(335, 7),
(335, 11),
(335, 13),
(335, 21),
(336, 1),
(336, 2),
(336, 3),
(336, 4),
(336, 6),
(336, 7),
(336, 11),
(336, 13),
(336, 21),
(341, 1),
(341, 2),
(341, 3),
(341, 4),
(341, 6),
(341, 7),
(341, 11),
(341, 13),
(341, 21),
(351, 1),
(351, 2),
(351, 3),
(351, 4),
(351, 5),
(351, 7),
(351, 8),
(351, 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(62, 62, 2),
(63, 63, 2),
(26, 301, 1),
(61, 61, 2),
(62, 301, 1),
(20, 20, 1),
(27, 301, 1),
(62, 292, 0),
(29, 25, 0),
(29, 29, 1),
(30, 30, 0),
(57, 293, 0),
(31, 25, 0),
(31, 31, 1),
(20, 18, 0),
(27, 27, 2),
(27, 292, 0),
(26, 26, 2),
(26, 292, 0),
(24, 24, 0),
(18, 18, 0),
(61, 292, 0),
(61, 301, 1),
(46, 18, 0),
(46, 46, 1),
(233, 233, 2),
(33, 33, 1),
(78, 293, 0),
(78, 78, 2),
(78, 59, 1),
(77, 59, 1),
(77, 293, 0),
(76, 293, 0),
(77, 77, 2),
(76, 76, 2),
(76, 59, 1),
(75, 59, 1),
(75, 293, 0),
(74, 293, 0),
(75, 75, 2),
(74, 74, 2),
(74, 57, 1),
(73, 57, 1),
(73, 293, 0),
(72, 57, 1),
(72, 293, 0),
(73, 73, 2),
(71, 57, 1),
(72, 72, 2),
(71, 293, 0),
(71, 71, 2),
(69, 69, 0),
(57, 57, 1),
(59, 59, 1),
(59, 293, 0),
(63, 301, 1),
(63, 292, 0),
(64, 292, 0),
(64, 300, 1),
(64, 64, 2),
(65, 292, 0),
(65, 300, 1),
(65, 65, 2),
(66, 292, 0),
(66, 300, 1),
(66, 66, 2),
(67, 67, 2),
(67, 292, 0),
(67, 300, 1),
(68, 292, 0),
(68, 300, 1),
(68, 68, 2),
(81, 25, 0),
(81, 29, 1),
(81, 81, 2),
(82, 25, 0),
(82, 29, 1),
(82, 82, 2),
(83, 25, 0),
(83, 29, 1),
(83, 83, 2),
(84, 25, 0),
(84, 29, 1),
(84, 84, 2),
(85, 25, 0),
(85, 31, 1),
(85, 85, 2),
(86, 25, 0),
(86, 31, 1),
(86, 86, 2),
(87, 25, 0),
(87, 31, 1),
(87, 87, 2),
(88, 25, 0),
(88, 31, 1),
(88, 88, 2),
(89, 89, 2),
(89, 33, 1),
(90, 90, 2),
(90, 33, 1),
(91, 91, 2),
(91, 33, 1),
(92, 92, 2),
(92, 33, 1),
(93, 93, 2),
(93, 33, 1),
(232, 224, 1),
(232, 292, 0),
(95, 46, 1),
(95, 95, 2),
(95, 18, 0),
(96, 292, 0),
(96, 301, 1),
(96, 96, 2),
(177, 177, 2),
(175, 175, 2),
(225, 221, 0),
(173, 173, 1),
(174, 174, 2),
(223, 223, 1),
(185, 185, 2),
(184, 184, 2),
(183, 183, 2),
(182, 182, 2),
(176, 176, 2),
(181, 181, 2),
(180, 180, 1),
(199, 199, 2),
(227, 222, 1),
(197, 197, 2),
(198, 198, 2),
(195, 195, 2),
(196, 196, 2),
(174, 173, 1),
(173, 164, 0),
(178, 178, 2),
(194, 194, 1),
(226, 222, 1),
(220, 18, 0),
(222, 221, 0),
(164, 164, 0),
(174, 164, 0),
(175, 173, 1),
(175, 164, 0),
(176, 173, 1),
(176, 164, 0),
(177, 173, 1),
(177, 164, 0),
(178, 173, 1),
(178, 164, 0),
(180, 164, 0),
(181, 164, 0),
(181, 180, 1),
(182, 164, 0),
(182, 180, 1),
(183, 164, 0),
(183, 180, 1),
(184, 180, 1),
(184, 164, 0),
(185, 164, 0),
(185, 180, 1),
(227, 227, 2),
(227, 221, 0),
(226, 226, 2),
(226, 221, 0),
(225, 225, 1),
(224, 224, 1),
(224, 292, 0),
(223, 221, 0),
(222, 222, 1),
(221, 221, 0),
(220, 220, 1),
(194, 164, 0),
(195, 164, 0),
(195, 194, 1),
(196, 164, 0),
(196, 194, 1),
(197, 164, 0),
(197, 194, 1),
(198, 164, 0),
(198, 194, 1),
(199, 194, 1),
(199, 164, 0),
(33, 164, 0),
(89, 164, 0),
(90, 164, 0),
(91, 164, 0),
(92, 164, 0),
(93, 164, 0),
(233, 224, 1),
(232, 232, 2),
(231, 231, 2),
(231, 224, 1),
(231, 292, 0),
(230, 222, 1),
(230, 230, 2),
(230, 221, 0),
(229, 222, 1),
(229, 229, 2),
(229, 221, 0),
(228, 222, 1),
(228, 228, 2),
(228, 221, 0),
(205, 205, 2),
(205, 300, 1),
(205, 292, 0),
(206, 206, 2),
(206, 300, 1),
(206, 292, 0),
(207, 207, 2),
(207, 300, 1),
(207, 292, 0),
(208, 208, 2),
(208, 301, 1),
(208, 292, 0),
(209, 209, 2),
(209, 301, 1),
(209, 292, 0),
(210, 210, 2),
(210, 301, 1),
(210, 292, 0),
(233, 292, 0),
(234, 224, 1),
(234, 234, 2),
(234, 292, 0),
(235, 224, 1),
(235, 235, 2),
(235, 292, 0),
(236, 221, 0),
(236, 223, 1),
(236, 236, 2),
(237, 221, 0),
(237, 223, 1),
(237, 237, 2),
(238, 221, 0),
(238, 223, 1),
(238, 238, 2),
(239, 221, 0),
(239, 223, 1),
(239, 239, 2),
(240, 221, 0),
(240, 223, 1),
(240, 240, 2),
(241, 221, 0),
(241, 225, 1),
(241, 241, 2),
(242, 221, 0),
(242, 225, 1),
(242, 242, 2),
(243, 221, 0),
(243, 225, 1),
(243, 243, 2),
(244, 221, 0),
(244, 225, 1),
(244, 244, 2),
(245, 221, 0),
(245, 225, 1),
(245, 245, 2),
(246, 246, 0),
(247, 247, 0),
(262, 262, 0),
(274, 221, 0),
(274, 274, 1),
(275, 221, 0),
(275, 274, 1),
(275, 275, 2),
(276, 221, 0),
(276, 274, 1),
(276, 276, 2),
(277, 221, 0),
(277, 274, 1),
(277, 277, 2),
(278, 221, 0),
(278, 274, 1),
(278, 278, 2),
(279, 221, 0),
(279, 274, 1),
(279, 279, 2),
(292, 292, 0),
(293, 293, 0),
(295, 295, 0),
(296, 296, 0),
(297, 297, 0),
(298, 298, 0),
(299, 299, 0),
(300, 292, 0),
(300, 300, 1),
(301, 301, 1),
(301, 292, 0),
(302, 302, 2),
(302, 300, 1),
(302, 292, 0),
(303, 303, 2),
(303, 46, 1),
(303, 18, 0),
(304, 304, 2),
(304, 46, 1),
(304, 18, 0),
(305, 305, 2),
(305, 18, 0),
(305, 351, 1),
(306, 306, 2),
(306, 18, 0),
(306, 351, 1),
(347, 220, 1),
(347, 18, 0),
(347, 347, 2),
(346, 18, 0),
(346, 220, 1),
(346, 346, 2),
(309, 309, 2),
(309, 46, 1),
(309, 18, 0),
(310, 310, 2),
(310, 46, 1),
(310, 18, 0),
(311, 311, 2),
(311, 18, 0),
(311, 351, 1),
(312, 312, 2),
(312, 20, 1),
(312, 18, 0),
(313, 313, 2),
(313, 20, 1),
(313, 18, 0),
(314, 314, 2),
(314, 20, 1),
(314, 18, 0),
(348, 18, 0),
(316, 316, 2),
(316, 20, 1),
(316, 18, 0),
(317, 317, 2),
(317, 20, 1),
(317, 18, 0),
(351, 18, 0),
(351, 351, 1),
(319, 319, 2),
(319, 18, 0),
(319, 351, 1),
(325, 325, 0),
(326, 325, 0),
(326, 326, 1),
(327, 327, 2),
(327, 325, 0),
(327, 326, 1),
(328, 328, 2),
(328, 326, 1),
(328, 325, 0),
(329, 329, 2),
(329, 326, 1),
(329, 325, 0),
(330, 330, 2),
(330, 326, 1),
(330, 325, 0),
(331, 331, 1),
(331, 325, 0),
(332, 332, 2),
(332, 331, 1),
(332, 325, 0),
(333, 333, 2),
(333, 331, 1),
(333, 325, 0),
(334, 334, 2),
(334, 331, 1),
(334, 325, 0),
(335, 335, 2),
(335, 331, 1),
(335, 325, 0),
(336, 336, 1),
(340, 325, 0),
(337, 337, 2),
(337, 336, 1),
(337, 325, 0),
(338, 338, 2),
(338, 336, 1),
(338, 325, 0),
(339, 339, 2),
(339, 336, 1),
(339, 325, 0),
(340, 340, 2),
(340, 336, 1),
(336, 325, 0),
(341, 341, 1),
(341, 325, 0),
(342, 342, 2),
(342, 341, 1),
(342, 325, 0),
(343, 343, 2),
(343, 341, 1),
(343, 325, 0),
(344, 344, 2),
(344, 341, 1),
(344, 325, 0),
(345, 345, 2),
(345, 341, 1),
(345, 325, 0),
(348, 220, 1),
(348, 348, 2),
(349, 18, 0),
(349, 220, 1),
(349, 349, 2),
(350, 220, 1),
(350, 18, 0),
(350, 350, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(24, 3, 0),
(69, 3, 0),
(59, 0, 0),
(25, 2, 0),
(30, 0, 0),
(57, 0, 0),
(18, 0, 0),
(46, 1, 0),
(20, 3, 0),
(27, 2, 0),
(26, 2, 0),
(61, 2, 0),
(62, 2, 0),
(63, 1, 0),
(64, 2, 0),
(65, 2, 0),
(66, 2, 0),
(67, 2, 0),
(68, 2, 0),
(71, 2, 0),
(72, 1, 0),
(73, 1, 0),
(74, 1, 0),
(75, 6, 0),
(76, 1, 0),
(77, 1, 0),
(78, 1, 0),
(33, 0, 0),
(81, 2, 0),
(82, 2, 0),
(83, 2, 0),
(84, 2, 0),
(85, 2, 0),
(86, 2, 0),
(87, 2, 0),
(88, 2, 0),
(89, 2, 0),
(90, 2, 0),
(91, 2, 0),
(92, 1, 0),
(93, 2, 0),
(231, 2, 0),
(95, 2, 0),
(96, 2, 0),
(46, 0, 0),
(18, 1, 0),
(231, 3, 0),
(93, 3, 0),
(92, 0, 0),
(91, 3, 0),
(90, 3, 0),
(89, 3, 0),
(33, 1, 0),
(88, 3, 0),
(87, 3, 0),
(86, 3, 0),
(85, 3, 0),
(31, 1, 0),
(31, 0, 0),
(82, 3, 0),
(81, 3, 0),
(84, 3, 0),
(83, 3, 0),
(29, 1, 0),
(29, 0, 0),
(25, 3, 0),
(75, 7, 0),
(78, 0, 0),
(59, 1, 0),
(69, 2, 0),
(24, 2, 0),
(63, 0, 0),
(26, 3, 0),
(27, 3, 0),
(61, 3, 0),
(96, 3, 0),
(62, 3, 0),
(20, 2, 0),
(68, 3, 0),
(67, 3, 0),
(64, 3, 0),
(66, 3, 0),
(65, 3, 0),
(95, 3, 0),
(226, 0, 0),
(226, 1, 0),
(30, 1, 0),
(71, 3, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(57, 1, 0),
(77, 0, 0),
(76, 0, 0),
(88, 1, 0),
(88, 0, 0),
(87, 1, 0),
(87, 0, 0),
(86, 1, 0),
(86, 0, 0),
(85, 1, 0),
(85, 0, 0),
(31, 2, 0),
(31, 3, 0),
(82, 1, 0),
(82, 0, 0),
(81, 1, 0),
(81, 0, 0),
(84, 1, 0),
(84, 0, 0),
(83, 1, 0),
(83, 0, 0),
(29, 2, 0),
(29, 3, 0),
(25, 1, 0),
(25, 0, 0),
(231, 1, 0),
(231, 0, 0),
(93, 1, 0),
(93, 0, 0),
(92, 2, 0),
(92, 3, 0),
(91, 1, 0),
(91, 0, 0),
(90, 1, 0),
(90, 0, 0),
(89, 1, 0),
(89, 0, 0),
(33, 2, 0),
(33, 3, 0),
(68, 1, 0),
(68, 0, 0),
(67, 1, 0),
(67, 0, 0),
(64, 1, 0),
(64, 0, 0),
(66, 1, 0),
(66, 0, 0),
(65, 1, 0),
(65, 0, 0),
(95, 1, 0),
(95, 0, 0),
(46, 2, 0),
(46, 3, 0),
(18, 2, 0),
(18, 3, 0),
(26, 1, 0),
(26, 0, 0),
(27, 1, 0),
(27, 0, 0),
(61, 1, 0),
(61, 0, 0),
(96, 1, 0),
(96, 0, 0),
(62, 1, 0),
(62, 0, 0),
(20, 1, 0),
(20, 0, 0),
(63, 2, 0),
(63, 3, 0),
(69, 1, 0),
(69, 0, 0),
(24, 1, 0),
(24, 0, 0),
(77, 2, 0),
(77, 3, 0),
(76, 2, 0),
(76, 3, 0),
(75, 3, 0),
(75, 2, 0),
(78, 2, 0),
(78, 3, 0),
(59, 2, 0),
(59, 3, 0),
(71, 1, 0),
(71, 0, 0),
(72, 2, 0),
(72, 3, 0),
(73, 2, 0),
(73, 3, 0),
(74, 2, 0),
(74, 3, 0),
(57, 2, 0),
(57, 3, 0),
(226, 2, 0),
(226, 3, 0),
(30, 2, 0),
(30, 3, 0),
(164, 3, 0),
(164, 2, 0),
(164, 1, 0),
(164, 0, 0),
(173, 0, 0),
(173, 1, 0),
(173, 2, 0),
(173, 3, 0),
(174, 3, 0),
(174, 2, 0),
(174, 1, 0),
(174, 0, 0),
(175, 3, 0),
(175, 2, 0),
(175, 1, 0),
(175, 0, 0),
(176, 3, 0),
(176, 2, 0),
(176, 1, 0),
(176, 0, 0),
(177, 3, 0),
(177, 2, 0),
(177, 1, 0),
(177, 0, 0),
(178, 3, 0),
(178, 2, 0),
(178, 1, 0),
(178, 0, 0),
(180, 3, 0),
(180, 2, 0),
(180, 1, 0),
(180, 0, 0),
(181, 0, 0),
(181, 1, 0),
(181, 2, 0),
(181, 3, 0),
(182, 0, 0),
(182, 1, 0),
(182, 2, 0),
(182, 3, 0),
(183, 0, 0),
(183, 1, 0),
(183, 2, 0),
(183, 3, 0),
(184, 3, 0),
(184, 2, 0),
(184, 1, 0),
(184, 0, 0),
(185, 3, 0),
(185, 2, 0),
(185, 1, 0),
(185, 0, 0),
(220, 3, 0),
(220, 2, 0),
(220, 1, 0),
(220, 0, 0),
(225, 3, 0),
(225, 2, 0),
(225, 1, 0),
(225, 0, 0),
(224, 0, 0),
(224, 1, 0),
(224, 2, 0),
(224, 3, 0),
(223, 0, 0),
(223, 1, 0),
(223, 2, 0),
(223, 3, 0),
(222, 0, 0),
(222, 1, 0),
(222, 2, 0),
(222, 3, 0),
(221, 0, 0),
(221, 1, 0),
(221, 2, 0),
(221, 3, 0),
(194, 3, 0),
(194, 2, 0),
(194, 1, 0),
(194, 0, 0),
(195, 0, 0),
(195, 1, 0),
(195, 2, 0),
(195, 3, 0),
(196, 0, 0),
(196, 1, 0),
(196, 2, 0),
(196, 3, 0),
(197, 0, 0),
(197, 1, 0),
(197, 2, 0),
(197, 3, 0),
(198, 0, 0),
(198, 1, 0),
(198, 2, 0),
(198, 3, 0),
(199, 3, 0),
(199, 2, 0),
(199, 1, 0),
(199, 0, 0),
(230, 3, 0),
(230, 2, 0),
(230, 1, 0),
(230, 0, 0),
(229, 3, 0),
(229, 2, 0),
(229, 1, 0),
(229, 0, 0),
(228, 0, 0),
(228, 1, 0),
(228, 2, 0),
(228, 3, 0),
(227, 3, 0),
(227, 2, 0),
(227, 1, 0),
(227, 0, 0),
(205, 3, 0),
(205, 2, 0),
(205, 1, 0),
(205, 0, 0),
(206, 3, 0),
(206, 2, 0),
(206, 1, 0),
(206, 0, 0),
(207, 3, 0),
(207, 2, 0),
(207, 1, 0),
(207, 0, 0),
(208, 3, 0),
(208, 2, 0),
(208, 1, 0),
(208, 0, 0),
(209, 3, 0),
(209, 2, 0),
(209, 1, 0),
(209, 0, 0),
(210, 3, 0),
(210, 2, 0),
(210, 1, 0),
(210, 0, 0),
(232, 0, 0),
(232, 1, 0),
(232, 2, 0),
(232, 3, 0),
(233, 0, 0),
(233, 1, 0),
(233, 2, 0),
(233, 3, 0),
(234, 0, 0),
(234, 1, 0),
(234, 2, 0),
(234, 3, 0),
(235, 0, 0),
(235, 1, 0),
(235, 2, 0),
(235, 3, 0),
(236, 0, 0),
(236, 1, 0),
(236, 2, 0),
(236, 3, 0),
(237, 0, 0),
(237, 1, 0),
(237, 2, 0),
(237, 3, 0),
(238, 0, 0),
(238, 1, 0),
(238, 2, 0),
(238, 3, 0),
(239, 0, 0),
(239, 1, 0),
(239, 2, 0),
(239, 3, 0),
(240, 0, 0),
(240, 1, 0),
(240, 2, 0),
(240, 3, 0),
(241, 0, 0),
(241, 1, 0),
(241, 2, 0),
(241, 3, 0),
(242, 0, 0),
(242, 1, 0),
(242, 2, 0),
(242, 3, 0),
(243, 0, 0),
(243, 1, 0),
(243, 2, 0),
(243, 3, 0),
(244, 0, 0),
(244, 1, 0),
(244, 2, 0),
(244, 3, 0),
(245, 0, 0),
(245, 1, 0),
(245, 2, 0),
(245, 3, 0),
(246, 0, 0),
(246, 1, 0),
(246, 2, 0),
(246, 3, 0),
(247, 3, 0),
(247, 2, 0),
(247, 1, 0),
(247, 0, 0),
(292, 1, 0),
(292, 0, 0),
(262, 0, 0),
(262, 1, 0),
(262, 2, 0),
(262, 3, 0),
(274, 3, 0),
(274, 2, 0),
(274, 1, 0),
(274, 0, 0),
(275, 0, 0),
(275, 1, 0),
(275, 2, 0),
(275, 3, 0),
(276, 0, 0),
(276, 1, 0),
(276, 2, 0),
(276, 3, 0),
(277, 0, 0),
(277, 1, 0),
(277, 2, 0),
(277, 3, 0),
(278, 0, 0),
(278, 1, 0),
(278, 2, 0),
(278, 3, 0),
(279, 0, 0),
(279, 1, 0),
(279, 2, 0),
(279, 3, 0),
(292, 3, 0),
(292, 2, 0),
(293, 0, 0),
(293, 1, 0),
(293, 2, 0),
(293, 3, 0),
(295, 3, 0),
(295, 2, 0),
(295, 1, 0),
(295, 0, 0),
(296, 0, 0),
(296, 1, 0),
(296, 2, 0),
(296, 3, 0),
(297, 3, 0),
(297, 2, 0),
(297, 1, 0),
(298, 3, 0),
(298, 2, 0),
(298, 1, 0),
(298, 0, 0),
(299, 3, 0),
(299, 2, 0),
(299, 1, 0),
(299, 0, 0),
(300, 0, 0),
(300, 1, 0),
(300, 2, 0),
(300, 3, 0),
(301, 0, 0),
(301, 1, 0),
(301, 2, 0),
(301, 3, 0),
(302, 0, 0),
(302, 1, 0),
(302, 2, 0),
(302, 3, 0),
(303, 0, 0),
(303, 1, 0),
(303, 2, 0),
(303, 3, 0),
(304, 0, 0),
(304, 1, 0),
(304, 2, 0),
(304, 3, 0),
(305, 3, 0),
(305, 2, 0),
(305, 1, 0),
(305, 0, 0),
(306, 3, 0),
(306, 2, 0),
(306, 1, 0),
(306, 0, 0),
(347, 0, 0),
(347, 1, 0),
(347, 2, 0),
(347, 3, 0),
(346, 3, 0),
(346, 2, 0),
(346, 1, 0),
(346, 0, 0),
(309, 0, 0),
(309, 1, 0),
(309, 2, 0),
(309, 3, 0),
(310, 0, 0),
(310, 1, 0),
(310, 2, 0),
(310, 3, 0),
(311, 3, 0),
(311, 2, 0),
(311, 1, 0),
(311, 0, 0),
(312, 0, 0),
(312, 1, 0),
(312, 2, 0),
(312, 3, 0),
(313, 0, 0),
(313, 1, 0),
(313, 2, 0),
(313, 3, 0),
(314, 0, 0),
(314, 1, 0),
(314, 2, 0),
(314, 3, 0),
(351, 3, 0),
(351, 2, 0),
(351, 1, 0),
(351, 0, 0),
(316, 0, 0),
(316, 1, 0),
(316, 2, 0),
(316, 3, 0),
(317, 0, 0),
(317, 1, 0),
(317, 2, 0),
(317, 3, 0),
(319, 3, 0),
(319, 2, 0),
(319, 1, 0),
(319, 0, 0),
(325, 3, 0),
(325, 2, 0),
(325, 1, 0),
(325, 0, 0),
(326, 0, 0),
(326, 1, 0),
(326, 2, 0),
(326, 3, 0),
(297, 0, 0),
(327, 3, 0),
(327, 2, 0),
(327, 1, 0),
(327, 0, 0),
(328, 0, 0),
(328, 1, 0),
(328, 2, 0),
(328, 3, 0),
(328, 6, 0),
(328, 7, 0),
(329, 0, 0),
(329, 1, 0),
(329, 2, 0),
(329, 3, 0),
(329, 6, 0),
(329, 7, 0),
(330, 0, 0),
(330, 1, 0),
(330, 2, 0),
(330, 3, 0),
(330, 6, 0),
(330, 7, 0),
(331, 3, 0),
(331, 2, 0),
(331, 1, 0),
(331, 0, 0),
(332, 0, 0),
(332, 1, 0),
(332, 2, 0),
(332, 3, 0),
(332, 6, 0),
(332, 7, 0),
(333, 0, 0),
(333, 1, 0),
(333, 2, 0),
(333, 3, 0),
(333, 6, 0),
(333, 7, 0),
(334, 0, 0),
(334, 1, 0),
(334, 2, 0),
(334, 3, 0),
(334, 6, 0),
(334, 7, 0),
(335, 0, 0),
(335, 1, 0),
(335, 2, 0),
(335, 3, 0),
(335, 6, 0),
(335, 7, 0),
(336, 3, 0),
(336, 2, 0),
(336, 1, 0),
(336, 0, 0),
(337, 0, 0),
(337, 1, 0),
(337, 2, 0),
(337, 3, 0),
(337, 6, 0),
(337, 7, 0),
(338, 0, 0),
(338, 1, 0),
(338, 2, 0),
(338, 3, 0),
(338, 6, 0),
(338, 7, 0),
(339, 0, 0),
(339, 1, 0),
(339, 2, 0),
(339, 3, 0),
(339, 6, 0),
(339, 7, 0),
(340, 0, 0),
(340, 1, 0),
(340, 2, 0),
(340, 3, 0),
(340, 6, 0),
(340, 7, 0),
(341, 0, 0),
(341, 1, 0),
(341, 2, 0),
(341, 3, 0),
(342, 7, 0),
(342, 6, 0),
(342, 3, 0),
(342, 2, 0),
(342, 1, 0),
(342, 0, 0),
(343, 0, 0),
(343, 1, 0),
(343, 2, 0),
(343, 3, 0),
(343, 6, 0),
(343, 7, 0),
(344, 7, 0),
(344, 6, 0),
(344, 3, 0),
(344, 2, 0),
(344, 1, 0),
(344, 0, 0),
(345, 0, 0),
(345, 1, 0),
(345, 2, 0),
(345, 3, 0),
(345, 6, 0),
(345, 7, 0),
(75, 1, 0),
(75, 0, 0),
(78, 6, 0),
(78, 7, 0),
(71, 6, 0),
(71, 7, 0),
(72, 6, 0),
(72, 7, 0),
(73, 6, 0),
(73, 7, 0),
(74, 6, 0),
(74, 7, 0),
(77, 6, 0),
(77, 7, 0),
(76, 6, 0),
(76, 7, 0),
(348, 0, 0),
(348, 1, 0),
(348, 2, 0),
(348, 3, 0),
(349, 0, 0),
(349, 1, 0),
(349, 2, 0),
(349, 3, 0),
(350, 3, 0),
(350, 2, 0),
(350, 1, 0),
(350, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(18, 0),
(18, 1),
(18, 2),
(18, 3),
(20, 0),
(20, 1),
(20, 2),
(20, 3),
(24, 0),
(24, 1),
(24, 2),
(24, 3),
(25, 0),
(25, 1),
(25, 2),
(25, 3),
(26, 0),
(26, 1),
(26, 2),
(26, 3),
(27, 0),
(27, 1),
(27, 2),
(27, 3),
(29, 0),
(29, 1),
(29, 2),
(29, 3),
(30, 0),
(30, 1),
(30, 2),
(30, 3),
(31, 0),
(31, 1),
(31, 2),
(31, 3),
(33, 2),
(46, 0),
(46, 1),
(46, 2),
(46, 3),
(57, 0),
(57, 1),
(57, 2),
(57, 3),
(59, 0),
(59, 1),
(59, 2),
(59, 3),
(61, 0),
(61, 1),
(61, 2),
(61, 3),
(62, 0),
(62, 1),
(62, 2),
(62, 3),
(63, 0),
(63, 1),
(63, 2),
(63, 3),
(64, 0),
(64, 1),
(64, 2),
(64, 3),
(65, 0),
(65, 1),
(65, 2),
(65, 3),
(66, 0),
(66, 1),
(66, 2),
(66, 3),
(67, 0),
(67, 1),
(67, 2),
(67, 3),
(68, 0),
(68, 1),
(68, 2),
(68, 3),
(69, 0),
(69, 1),
(69, 2),
(69, 3),
(71, 0),
(71, 1),
(71, 2),
(71, 3),
(72, 0),
(72, 1),
(72, 2),
(72, 3),
(73, 0),
(73, 1),
(73, 2),
(73, 3),
(74, 0),
(74, 1),
(74, 2),
(74, 3),
(75, 0),
(75, 1),
(75, 2),
(75, 3),
(76, 0),
(76, 1),
(76, 2),
(76, 3),
(77, 0),
(77, 1),
(77, 2),
(77, 3),
(78, 0),
(78, 1),
(78, 2),
(78, 3),
(81, 0),
(81, 1),
(81, 2),
(81, 3),
(82, 0),
(82, 1),
(82, 2),
(82, 3),
(83, 0),
(83, 1),
(83, 2),
(83, 3),
(84, 0),
(84, 1),
(84, 2),
(84, 3),
(85, 0),
(85, 1),
(85, 2),
(85, 3),
(86, 0),
(86, 1),
(86, 2),
(86, 3),
(87, 0),
(87, 1),
(87, 2),
(87, 3),
(88, 0),
(88, 1),
(88, 2),
(88, 3),
(89, 0),
(89, 1),
(89, 2),
(89, 3),
(90, 0),
(90, 1),
(90, 2),
(90, 3),
(91, 0),
(91, 1),
(91, 2),
(91, 3),
(92, 0),
(92, 1),
(92, 2),
(92, 3),
(93, 0),
(93, 1),
(93, 2),
(93, 3),
(95, 0),
(95, 1),
(95, 2),
(95, 3),
(96, 0),
(96, 1),
(96, 2),
(96, 3),
(164, 2),
(173, 2),
(174, 0),
(174, 1),
(174, 2),
(174, 3),
(175, 0),
(175, 1),
(175, 2),
(175, 3),
(176, 0),
(176, 1),
(176, 2),
(176, 3),
(177, 0),
(177, 1),
(177, 2),
(177, 3),
(178, 0),
(178, 1),
(178, 2),
(178, 3),
(180, 2),
(181, 0),
(181, 1),
(181, 2),
(181, 3),
(182, 0),
(182, 1),
(182, 2),
(182, 3),
(183, 0),
(183, 1),
(183, 2),
(183, 3),
(184, 0),
(184, 1),
(184, 2),
(184, 3),
(185, 0),
(185, 1),
(185, 2),
(185, 3),
(194, 2),
(195, 0),
(195, 1),
(195, 2),
(195, 3),
(196, 0),
(196, 1),
(196, 2),
(196, 3),
(197, 0),
(197, 1),
(197, 2),
(197, 3),
(198, 0),
(198, 1),
(198, 2),
(198, 3),
(199, 0),
(199, 1),
(199, 2),
(199, 3),
(205, 0),
(205, 1),
(205, 2),
(205, 3),
(206, 0),
(206, 1),
(206, 2),
(206, 3),
(207, 0),
(207, 1),
(207, 2),
(207, 3),
(208, 0),
(208, 1),
(208, 2),
(208, 3),
(209, 0),
(209, 1),
(209, 2),
(209, 3),
(210, 0),
(210, 1),
(210, 2),
(210, 3),
(220, 0),
(220, 1),
(220, 2),
(220, 3),
(221, 3),
(222, 3),
(223, 3),
(224, 0),
(224, 1),
(224, 2),
(224, 3),
(225, 3),
(226, 0),
(226, 1),
(226, 2),
(226, 3),
(227, 0),
(227, 1),
(227, 2),
(227, 3),
(228, 0),
(228, 1),
(228, 2),
(228, 3),
(229, 0),
(229, 1),
(229, 2),
(229, 3),
(230, 0),
(230, 1),
(230, 2),
(230, 3),
(231, 0),
(231, 1),
(231, 2),
(231, 3),
(232, 0),
(232, 1),
(232, 2),
(232, 3),
(233, 0),
(233, 1),
(233, 2),
(233, 3),
(234, 0),
(234, 1),
(234, 2),
(234, 3),
(235, 0),
(235, 1),
(235, 2),
(235, 3),
(236, 0),
(236, 1),
(236, 2),
(236, 3),
(237, 0),
(237, 1),
(237, 2),
(237, 3),
(238, 0),
(238, 1),
(238, 2),
(238, 3),
(239, 0),
(239, 1),
(239, 2),
(239, 3),
(240, 0),
(240, 1),
(240, 2),
(240, 3),
(241, 0),
(241, 1),
(241, 2),
(241, 3),
(242, 0),
(242, 1),
(242, 2),
(242, 3),
(243, 0),
(243, 1),
(243, 2),
(243, 3),
(244, 0),
(244, 1),
(244, 2),
(244, 3),
(245, 0),
(245, 1),
(245, 2),
(245, 3),
(246, 0),
(246, 1),
(246, 2),
(246, 3),
(247, 0),
(247, 1),
(247, 2),
(247, 3),
(262, 0),
(274, 3),
(275, 0),
(275, 1),
(275, 2),
(275, 3),
(276, 0),
(276, 1),
(276, 2),
(276, 3),
(277, 0),
(277, 1),
(277, 2),
(277, 3),
(278, 0),
(278, 1),
(278, 2),
(278, 3),
(279, 0),
(279, 1),
(279, 2),
(279, 3),
(292, 0),
(292, 1),
(292, 2),
(292, 3),
(293, 0),
(293, 1),
(293, 2),
(293, 3),
(295, 0),
(295, 1),
(295, 2),
(295, 3),
(296, 0),
(297, 0),
(297, 1),
(297, 2),
(297, 3),
(298, 0),
(298, 1),
(298, 2),
(298, 3),
(299, 0),
(300, 0),
(300, 1),
(300, 2),
(300, 3),
(301, 0),
(301, 1),
(301, 2),
(301, 3),
(302, 0),
(302, 1),
(302, 2),
(302, 3),
(303, 0),
(303, 1),
(303, 2),
(303, 3),
(304, 0),
(304, 1),
(304, 2),
(304, 3),
(305, 0),
(305, 1),
(305, 2),
(305, 3),
(306, 0),
(306, 1),
(306, 2),
(306, 3),
(309, 0),
(309, 1),
(309, 2),
(309, 3),
(310, 0),
(310, 1),
(310, 2),
(310, 3),
(311, 0),
(311, 1),
(311, 2),
(311, 3),
(312, 0),
(312, 1),
(312, 2),
(312, 3),
(313, 0),
(313, 1),
(313, 2),
(313, 3),
(314, 0),
(314, 1),
(314, 2),
(314, 3),
(316, 0),
(316, 1),
(316, 2),
(316, 3),
(317, 0),
(317, 1),
(317, 2),
(317, 3),
(319, 0),
(319, 1),
(319, 2),
(319, 3),
(325, 0),
(325, 1),
(325, 2),
(325, 3),
(326, 0),
(326, 1),
(326, 2),
(326, 3),
(327, 0),
(327, 1),
(327, 2),
(327, 3),
(328, 0),
(328, 1),
(328, 2),
(328, 3),
(329, 0),
(329, 1),
(329, 2),
(329, 3),
(330, 0),
(330, 1),
(330, 2),
(330, 3),
(331, 0),
(331, 1),
(331, 2),
(331, 3),
(332, 0),
(332, 1),
(332, 2),
(332, 3),
(333, 0),
(333, 1),
(333, 2),
(333, 3),
(334, 0),
(334, 1),
(334, 2),
(334, 3),
(335, 0),
(335, 1),
(335, 2),
(335, 3),
(336, 0),
(336, 1),
(336, 2),
(336, 3),
(337, 0),
(337, 1),
(337, 2),
(337, 3),
(338, 0),
(338, 1),
(338, 2),
(338, 3),
(339, 0),
(339, 1),
(339, 2),
(339, 3),
(340, 0),
(340, 1),
(340, 2),
(340, 3),
(341, 0),
(341, 1),
(341, 2),
(341, 3),
(342, 0),
(342, 1),
(342, 2),
(342, 3),
(343, 0),
(343, 1),
(343, 2),
(343, 3),
(344, 0),
(344, 1),
(344, 2),
(344, 3),
(345, 0),
(345, 1),
(345, 2),
(345, 3),
(346, 0),
(346, 1),
(346, 2),
(346, 3),
(347, 0),
(347, 1),
(347, 2),
(347, 3),
(348, 0),
(348, 1),
(348, 2),
(348, 3),
(349, 0),
(349, 1),
(349, 2),
(349, 3),
(350, 0),
(350, 1),
(350, 2),
(350, 3),
(351, 0),
(351, 1),
(351, 2),
(351, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2019-05-11 01:53:17'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 1, 1, 'Plaza', 'Themes', 'demo@gmail.com', '0123456789', '', '8aebfe71cd347dd61dcb38208be2a861bf62c6b9', '8aWn0gXkH', NULL, NULL, 0, 2, '', '127.0.0.1', 1, 0, '', '', '2019-10-04 15:55:17'),
(2, 1, 3, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '2c220dbebf9e7f7a0ad5f3adc93e40c9e3b807b4', 'uxuctAHvD', NULL, NULL, 0, 3, '', '127.0.0.1', 1, 0, '', '', '2019-12-25 09:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 6, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2019-10-04 15:55:33'),
(2, 2, '127.0.0.1', '2019-12-25 09:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, '', '127.0.0.1', 1, '2019-05-24 14:18:57', '2019-05-24 14:18:57'),
(3, 'plazatheme@gmail.com', '127.0.0.1', 1, '2019-10-04 08:49:38', '2019-10-04 08:49:38'),
(5, 'admin@gmail.com', '127.0.0.1', 2, '2019-12-25 02:14:51', '2019-12-25 02:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'module', 'ptcontrolpanel'),
(44, 'module', 'ptlayoutbuilder'),
(45, 'module', 'ptmenu'),
(46, 'module', 'ptstaticblock'),
(47, 'module', 'ptslider'),
(48, 'module', 'ptblog'),
(50, 'module', 'ptnewsletter'),
(51, 'module', 'ptajaxlogin'),
(52, 'module', 'ptsearch'),
(71, 'module', 'ptproducts'),
(56, 'module', 'html'),
(68, 'module', 'ptfeaturedcate'),
(72, 'module', 'pttestimonial');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(42, 0, 'ptcontrolpanel.ocmod.zip', '2019-12-11 09:33:36'),
(9, 0, 'ptsearch.ocmod.zip', '2019-01-09 19:15:31'),
(40, 0, 'ptthemecustom.ocmod.zip', '2019-11-13 14:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(14, 2, 0),
(13, 2, 0),
(12, 2, 0),
(11, 2, 0),
(10, 2, 0),
(9, 2, 0),
(8, 2, 0),
(7, 2, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(1, 1, 1, 'Apple'),
(2, 1, 1, 'Canon'),
(3, 1, 1, 'Hewlett-Packard'),
(4, 1, 1, 'HTC'),
(5, 1, 1, 'Palm'),
(6, 1, 1, 'Sony'),
(13, 1, 2, 'Blue'),
(12, 1, 2, 'Violet'),
(11, 1, 2, 'Red'),
(10, 1, 2, 'Green'),
(9, 1, 2, 'Gray'),
(8, 1, 2, 'White'),
(7, 1, 2, 'Black'),
(15, 1, 3, 'XS'),
(16, 1, 3, 'S'),
(17, 1, 3, 'L'),
(18, 1, 3, 'M'),
(19, 1, 3, 'XL'),
(20, 1, 3, 'XXL'),
(14, 1, 2, 'Orange'),
(21, 1, 2, 'Yellow'),
(18, 6, 3, 'M'),
(17, 6, 3, 'L'),
(16, 6, 3, 'S'),
(15, 6, 3, 'XS'),
(7, 6, 2, 'Black'),
(8, 6, 2, 'White'),
(9, 6, 2, 'Gray'),
(10, 6, 2, 'Green'),
(11, 6, 2, 'Red'),
(12, 6, 2, 'Violet'),
(13, 6, 2, 'Blue'),
(6, 6, 1, 'Sony'),
(5, 6, 1, 'Palm'),
(4, 6, 1, 'HTC'),
(3, 6, 1, 'Hewlett-Packard'),
(2, 6, 1, 'Canon'),
(1, 6, 1, 'Apple'),
(19, 6, 3, 'XL'),
(20, 6, 3, 'XXL'),
(14, 6, 2, 'Orange'),
(21, 6, 2, 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 0),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Manufacturers'),
(2, 1, 'Color'),
(3, 1, 'Size'),
(2, 6, 'Color'),
(1, 6, 'Manufacturers'),
(3, 6, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_category`
--

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `conversions` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `conversion_value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_status`
--

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_target`
--

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_target`
--

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(3, 6, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(5, 6, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(4, 6, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(6, 6, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(4, 1, 0),
(4, 2, 0),
(6, 8, 0),
(6, 3, 0),
(6, 2, 0),
(3, 8, 0),
(3, 3, 0),
(3, 2, 0),
(5, 8, 0),
(5, 3, 0),
(5, 2, 0),
(4, 3, 0),
(4, 8, 0),
(6, 1, 0),
(6, 0, 0),
(3, 1, 0),
(3, 0, 0),
(5, 1, 0),
(5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(3, 8),
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(4, 8),
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(5, 8),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(6, 'Germany', 'de-de', 'de', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Organic 1 - Home Page Layout'),
(2, 'Organic 1 - Product Page Layout'),
(3, 'Organic 1 - Category Page Layout'),
(4, 'Organic 1 - Default Page Layout'),
(6, 'Organic 1 - Account Page Layout'),
(17, 'Organic 2 - Blog Post Page Layout'),
(15, 'Organic 1 - Mobile Layout'),
(16, 'Organic 2 - Account Page Layout'),
(14, 'Organic 1 - Blog Post Page Layout'),
(18, 'Organic 2 - Home Page Layout'),
(19, 'Organic 2 - Mobile Layout'),
(20, 'Organic 2 - Product Page Layout'),
(21, 'Organic 2 - Category Page Layout'),
(22, 'Organic 2 - Default Page Layout'),
(23, 'Organic 3 - Account Page Layout'),
(24, 'Organic 3 - Blog Post Page Layout'),
(25, 'Organic 3 - Category Page Layout'),
(26, 'Organic 3 - Default Page Layout'),
(27, 'Organic 3 - Home Page Layout'),
(28, 'Organic 3 - Mobile Layout'),
(29, 'Organic 3 - Product Page Layout'),
(30, 'Organic 4 - Account Page Layout'),
(31, 'Organic 4 - Blog Post Page Layout'),
(32, 'Organic 4 - Category Page Layout'),
(33, 'Organic 4 - Default Page Layout'),
(34, 'Organic 4 - Home Page Layout'),
(35, 'Organic 4 - Mobile Layout'),
(36, 'Organic 4 - Product Page Layout');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(3668, 4, 'ptstaticblock.301', 'position8', 0),
(3654, 14, 'ptstaticblock.301', 'position8', 0),
(3692, 16, 'ptstaticblock.41', 'position7', 0),
(3675, 1, 'ptstaticblock.301', 'position8', 0),
(3759, 26, 'ptstaticblock.41', 'position7', 0),
(3733, 20, 'ptstaticblock.301', 'position8', 0),
(3826, 28, 'ptstaticblock.301', 'position8', 0),
(3725, 19, 'ptstaticblock.300', 'position6', 0),
(3686, 2, 'ptstaticblock.41', 'position7', 0),
(3653, 14, 'ptstaticblock.41', 'position7', 0),
(3652, 14, 'ptstaticblock.300', 'position6', 0),
(3684, 2, 'ptnewsletter.42', 'position5', 0),
(3807, 31, 'ptstaticblock.301', 'position8', 0),
(3699, 17, 'ptstaticblock.41', 'position7', 0),
(3706, 21, 'ptstaticblock.300', 'position6', 0),
(3732, 20, 'ptstaticblock.41', 'position7', 0),
(3708, 21, 'ptstaticblock.301', 'position8', 0),
(3719, 18, 'ptstaticblock.300', 'position6', 0),
(3687, 2, 'ptstaticblock.301', 'position8', 0),
(3801, 32, 'ptstaticblock.301', 'position8', 0),
(3662, 3, 'ptstaticblock.301', 'position8', 0),
(3713, 22, 'ptstaticblock.41', 'position7', 0),
(3731, 20, 'ptstaticblock.300', 'position6', 0),
(3681, 15, 'ptstaticblock.301', 'position8', 0),
(3685, 2, 'ptstaticblock.300', 'position6', 0),
(3753, 25, 'ptstaticblock.41', 'position7', 0),
(3778, 34, 'ptstaticblock.41', 'position7', 0),
(3738, 23, 'ptstaticblock.41', 'position7', 0),
(3674, 1, 'ptstaticblock.41', 'position7', 0),
(3667, 4, 'ptstaticblock.41', 'position7', 0),
(3666, 4, 'ptstaticblock.300', 'position6', 0),
(3661, 3, 'ptstaticblock.41', 'position7', 0),
(3745, 24, 'ptstaticblock.41', 'position7', 0),
(3660, 3, 'ptstaticblock.300', 'position6', 0),
(3651, 14, 'ptnewsletter.42', 'position5', 0),
(3659, 3, 'ptnewsletter.42', 'position5', 0),
(3650, 14, 'ptmenu.35', 'position3', 0),
(3772, 35, 'ptstaticblock.301', 'position8', 0),
(3825, 28, 'ptstaticblock.41', 'position7', 0),
(3730, 20, 'ptnewsletter.42', 'position5', 0),
(3718, 18, 'ptnewsletter.42', 'position5', 0),
(3717, 18, 'ptmenu.35', 'position3', 0),
(3648, 6, 'account', 'column_right', 1),
(3712, 22, 'ptstaticblock.300', 'position6', 0),
(3647, 6, 'ptstaticblock.301', 'position8', 0),
(3833, 27, 'ptstaticblock.301', 'position8', 0),
(3707, 21, 'ptstaticblock.41', 'position7', 0),
(3646, 6, 'ptstaticblock.41', 'position7', 0),
(3645, 6, 'ptstaticblock.300', 'position6', 0),
(3644, 6, 'ptnewsletter.42', 'position5', 0),
(3643, 6, 'ptmenu.35', 'position3', 0),
(3800, 32, 'ptstaticblock.41', 'position7', 0),
(3698, 17, 'ptstaticblock.300', 'position6', 0),
(3813, 30, 'ptstaticblock.301', 'position8', 0),
(3683, 2, 'ptmenu.35', 'position3', 0),
(3680, 15, 'ptstaticblock.41', 'position7', 0),
(3806, 31, 'ptstaticblock.41', 'position7', 0),
(3691, 16, 'ptstaticblock.300', 'position6', 0),
(3824, 28, 'ptstaticblock.300', 'position6', 0),
(3665, 4, 'ptnewsletter.42', 'position5', 0),
(3673, 1, 'ptstaticblock.300', 'position6', 0),
(3785, 33, 'ptstaticblock.301', 'position8', 0),
(3672, 1, 'ptnewsletter.42', 'position5', 0),
(3777, 34, 'ptstaticblock.300', 'position6', 0),
(3671, 1, 'ptmenu.35', 'position3', 0),
(3670, 1, 'ptmenu.33', 'position2', 0),
(3664, 4, 'ptmenu.35', 'position3', 0),
(3679, 15, 'ptstaticblock.300', 'position6', 0),
(3678, 15, 'ptnewsletter.42', 'position5', 0),
(3677, 15, 'ptmenu.35', 'position3', 0),
(3770, 35, 'ptstaticblock.300', 'position6', 0),
(3766, 36, 'ptstaticblock.301', 'position8', 0),
(3658, 3, 'ptmenu.35', 'position3', 0),
(3831, 27, 'ptstaticblock.300', 'position6', 0),
(3754, 25, 'ptstaticblock.301', 'position8', 0),
(3823, 28, 'ptnewsletter.42', 'position5', 0),
(3642, 6, 'ptmenu.33', 'position2', 0),
(3817, 29, 'ptnewsletter.42', 'position5', 0),
(3649, 14, 'ptmenu.33', 'position2', 0),
(3819, 29, 'ptstaticblock.41', 'position7', 0),
(3655, 3, 'ptstaticblock.255', 'column_left', 1),
(3663, 4, 'ptmenu.33', 'position2', 0),
(3818, 29, 'ptstaticblock.300', 'position6', 0),
(3676, 15, 'ptlayoutbuilder.190', 'content_top', 0),
(3682, 2, 'ptmenu.33', 'position2', 0),
(3657, 3, 'ptmenu.33', 'position2', 0),
(3729, 20, 'ptmenu.35', 'position3', 0),
(3728, 20, 'ptmenu.33', 'position2', 0),
(3724, 19, 'ptnewsletter.42', 'position5', 0),
(3723, 19, 'ptmenu.35', 'position3', 0),
(3716, 18, 'ptmenu.33', 'position2', 0),
(3711, 22, 'ptnewsletter.42', 'position5', 0),
(3705, 21, 'ptnewsletter.42', 'position5', 0),
(3704, 21, 'ptmenu.35', 'position3', 0),
(3697, 17, 'ptnewsletter.42', 'position5', 0),
(3690, 16, 'ptnewsletter.42', 'position5', 0),
(3830, 27, 'ptnewsletter.42', 'position5', 0),
(3744, 24, 'ptstaticblock.300', 'position6', 0),
(3752, 25, 'ptstaticblock.300', 'position6', 0),
(3758, 26, 'ptstaticblock.300', 'position6', 0),
(3828, 27, 'ptmenu.286', 'position2', 0),
(3829, 27, 'ptmenu.35', 'position3', 0),
(3822, 28, 'ptmenu.35', 'position3', 0),
(3816, 29, 'ptmenu.35', 'position3', 0),
(3737, 23, 'ptstaticblock.300', 'position6', 0),
(3765, 36, 'ptstaticblock.41', 'position7', 0),
(3769, 35, 'ptnewsletter.42', 'position5', 0),
(3768, 35, 'ptmenu.35', 'position3', 0),
(3764, 36, 'ptstaticblock.300', 'position6', 0),
(3776, 34, 'ptnewsletter.42', 'position5', 0),
(3763, 36, 'ptnewsletter.42', 'position5', 0),
(3798, 32, 'ptnewsletter.42', 'position5', 0),
(3799, 32, 'ptstaticblock.300', 'position6', 0),
(3784, 33, 'ptstaticblock.41', 'position7', 0),
(3761, 36, 'ptmenu.33', 'position2', 0),
(3812, 30, 'ptstaticblock.41', 'position7', 0),
(3762, 36, 'ptmenu.35', 'position3', 0),
(3771, 35, 'ptstaticblock.41', 'position7', 0),
(3669, 1, 'ptlayoutbuilder.195', 'content_top', 0),
(3656, 3, 'ptstaticblock.302', 'column_left', 2),
(3722, 19, 'ptlayoutbuilder.62', 'content_top', 0),
(3715, 18, 'ptlayoutbuilder.60', 'content_top', 0),
(3710, 22, 'ptmenu.35', 'position3', 0),
(3709, 22, 'ptmenu.33', 'position2', 0),
(3703, 21, 'ptmenu.33', 'position2', 0),
(3702, 21, 'ptstaticblock.302', 'column_left', 2),
(3701, 21, 'ptstaticblock.255', 'column_left', 1),
(3696, 17, 'ptmenu.35', 'position3', 0),
(3695, 17, 'ptmenu.33', 'position2', 0),
(3693, 16, 'ptstaticblock.301', 'position8', 0),
(3689, 16, 'ptmenu.35', 'position3', 0),
(3688, 16, 'ptmenu.33', 'position2', 0),
(3757, 26, 'ptnewsletter.42', 'position5', 0),
(3756, 26, 'ptmenu.35', 'position3', 0),
(3755, 26, 'ptmenu.286', 'position2', 0),
(3815, 29, 'ptmenu.286', 'position2', 0),
(3821, 28, 'ptlayoutbuilder.68', 'content_top', 0),
(3832, 27, 'ptstaticblock.41', 'position7', 0),
(3827, 27, 'ptlayoutbuilder.63', 'content_top', 0),
(3750, 25, 'ptmenu.35', 'position3', 0),
(3751, 25, 'ptnewsletter.42', 'position5', 0),
(3749, 25, 'ptmenu.286', 'position2', 0),
(3743, 24, 'ptnewsletter.42', 'position5', 0),
(3742, 24, 'ptmenu.35', 'position3', 0),
(3741, 24, 'ptmenu.286', 'position2', 0),
(3739, 23, 'ptstaticblock.301', 'position8', 0),
(3736, 23, 'ptnewsletter.42', 'position5', 0),
(3735, 23, 'ptmenu.35', 'position3', 0),
(3734, 23, 'ptmenu.286', 'position2', 0),
(3748, 25, 'ptstaticblock.302', 'column_left', 2),
(3767, 35, 'ptlayoutbuilder.71', 'content_top', 0),
(3775, 34, 'ptmenu.35', 'position3', 0),
(3774, 34, 'ptmenu.33', 'position2', 0),
(3773, 34, 'ptlayoutbuilder.204', 'content_top', 0),
(3783, 33, 'ptstaticblock.300', 'position6', 0),
(3782, 33, 'ptnewsletter.42', 'position5', 0),
(3781, 33, 'ptmenu.35', 'position3', 0),
(3780, 33, 'ptmenu.33', 'position2', 0),
(3797, 32, 'ptmenu.35', 'position3', 0),
(3796, 32, 'ptmenu.33', 'position2', 0),
(3794, 32, 'ptstaticblock.255', 'column_left', 1),
(3805, 31, 'ptstaticblock.300', 'position6', 0),
(3804, 31, 'ptnewsletter.42', 'position5', 0),
(3803, 31, 'ptmenu.35', 'position3', 0),
(3802, 31, 'ptmenu.33', 'position2', 0),
(3814, 30, 'account', 'column_right', 0),
(3811, 30, 'ptstaticblock.300', 'position6', 0),
(3810, 30, 'ptnewsletter.42', 'position5', 0),
(3809, 30, 'ptmenu.35', 'position3', 0),
(3808, 30, 'ptmenu.33', 'position2', 0),
(3795, 32, 'ptstaticblock.302', 'column_left', 2),
(3747, 25, 'ptstaticblock.255', 'column_left', 1),
(3694, 16, 'account', 'column_right', 0),
(3700, 17, 'ptstaticblock.301', 'position8', 0),
(3714, 22, 'ptstaticblock.301', 'position8', 0),
(3720, 18, 'ptstaticblock.41', 'position7', 0),
(3721, 18, 'ptstaticblock.301', 'position8', 0),
(3726, 19, 'ptstaticblock.41', 'position7', 0),
(3727, 19, 'ptstaticblock.301', 'position8', 0),
(3740, 23, 'account', 'column_right', 0),
(3746, 24, 'ptstaticblock.301', 'position8', 0),
(3760, 26, 'ptstaticblock.301', 'position8', 0),
(3779, 34, 'ptstaticblock.301', 'position8', 0),
(3820, 29, 'ptstaticblock.301', 'position8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(689, 35, 3, 'plaza/responsive/mobile'),
(698, 27, 2, 'common/home'),
(697, 28, 2, 'plaza/responsive/mobile'),
(696, 29, 2, 'product/product'),
(695, 30, 3, 'account/%'),
(694, 31, 3, 'plaza/blog/post'),
(681, 18, 1, 'common/home'),
(691, 33, 3, ''),
(686, 25, 2, 'product/category'),
(687, 26, 2, ''),
(678, 17, 1, 'plaza/blog/post'),
(690, 34, 3, 'common/home'),
(693, 32, 3, 'product/category'),
(684, 23, 2, 'account/%'),
(685, 24, 2, 'plaza/blog/post'),
(677, 16, 1, 'account/%'),
(688, 36, 3, 'product/product'),
(680, 22, 1, ''),
(679, 21, 1, 'product/category'),
(683, 20, 1, 'product/product'),
(682, 19, 1, 'plaza/responsive/mobile'),
(670, 6, 0, 'account/%'),
(672, 3, 0, 'product/category'),
(676, 2, 0, 'product/product'),
(675, 15, 0, 'plaza/responsive/mobile'),
(673, 4, 0, ''),
(671, 14, 0, 'plaza/blog/post'),
(674, 1, 0, 'common/home');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(2, 6, 'Millimeter', 'mm'),
(1, 6, 'Centimeter', 'cm'),
(3, 6, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(5, 8),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(6, 8),
(7, 0),
(7, 1),
(7, 2),
(7, 3),
(7, 8),
(8, 0),
(8, 1),
(8, 2),
(8, 3),
(8, 8),
(9, 0),
(9, 1),
(9, 2),
(9, 3),
(9, 8),
(10, 0),
(10, 1),
(10, 2),
(10, 3),
(10, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(9, 9, 'Plaza Ajax Search', 'plaza_ajax_search', 'Plaza Themes', '1.0', '', '<modification>\r\n    <name>Plaza Ajax Search</name>\r\n	<version>1.0</version>\r\n	<author>Plaza Themes</author>\r\n	<code>plaza_ajax_search</code>\r\n\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search ><![CDATA[$data[\'search\'] = $this->load->controller(\'common/search\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				$search_status = $this->config->get(\'module_ptsearch_status\');\r\n				if($search_status) {\r\n					$data[\'search\'] = $this->load->controller(\'extension/module/ptsearch\');\r\n					$data[\'search_status\'] = true;\r\n				} else {\r\n					$data[\'search\'] = $this->load->controller(\'common/search\');\r\n					$data[\'search_status\'] = false;\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>', 1, '2019-01-09 19:15:33');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(42, 42, 'Plaza Control Panel', 'plaza_control_panel', 'Plaza Themes', '18.12.27', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <code>plaza_control_panel</code>\r\n    <name>Plaza Control Panel</name>\r\n    <version>18.12.27</version>\r\n    <author>Plaza Themes</author>\r\n\r\n    <!-- Menu Left in Admin -->\r\n    <file path=\"admin/controller/common/column_left.php\">\r\n        <operation>\r\n            <search ><![CDATA[$catalog = array();]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            $this->load->language(\'plaza/adminmenu\');\r\n\r\n            if($this->user->hasPermission(\'access\', \'extension/module/ptcontrolpanel\')) {\r\n                $data[\'menus\'][] = array(\r\n                    \'id\'       => \'plaza-dashboard\',\r\n                    \'icon\'     => \'fa-plaza\',\r\n                    \'name\'     => $this->language->get(\'text_theme_dashboard\'),\r\n                    \'href\'     => $this->url->link(\'extension/module/ptcontrolpanel\', \'user_token=\' . $this->session->data[\'user_token\'], true)\r\n                );\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- PRODUCT CONFIGURATION -->\r\n    <file path=\"admin/controller/catalog/product.php\"> <!-- Done -->\r\n        <operation>\r\n            <search ><![CDATA[public function index() {]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n        $this->load->model(\'plaza/controlpanel\');\r\n        $this->model_plaza_controlpanel->setupRotateImage();\r\n        $this->model_plaza_controlpanel->setupColorSwatches();\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[$this->load->language(\'catalog/product\');]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $this->load->language(\'plaza/rotateimage\');\r\n                $this->load->language(\'extension/module/ptcontrolpanel\');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[\'sort_order\' => $product_image[\'sort_order\']]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                \'is_rotate\' => $product_image[\'is_rotate\'],\r\n                \'product_option_value_id\' => $product_image[\'product_option_value_id\'],\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"admin/model/catalog/product.php\"> <!-- Done -->\r\n        <operation>\r\n            <search><![CDATA[$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\'\");]]></search>\r\n            <add position=\"replace\">\r\n                <![CDATA[\r\n                    if(isset($product_image[\'product_option_value_id\']) && $product_image[\'product_option_value_id\']) {\r\n                        $this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\', is_rotate = \'\" . (int)$product_image[\'is_rotate\'] . \"\', product_option_value_id = \'\" . (int)$product_image[\'product_option_value_id\'] . \"\'\");\r\n                    } else {\r\n                        $this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_image SET product_id = \'\" . (int)$product_id . \"\', image = \'\" . $this->db->escape($product_image[\'image\']) . \"\', sort_order = \'\" . (int)$product_image[\'sort_order\'] . \"\', is_rotate = \'\" . (int)$product_image[\'is_rotate\'] . \"\'\");\r\n                    }\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"admin/view/template/catalog/product_form.twig\"> <!-- Done -->\r\n        <operation>\r\n            <search><![CDATA[<td class=\"text-right\">{{ entry_sort_order }}</td>]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    <td class=\"text-center\">{{ entry_option }}</td>\r\n                    <td class=\"text-center\">{{ entry_rotate }}</td>\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<td class=\"text-left\"><button type=\"button\" onclick=\"$(\'#image-row{{ image_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n                    <!-- Swatches Options -->\r\n                    <td class=\"text-center\">\r\n                      <select class=\"form-control image-opt\" id=\"product-image-option-{{ image_row }}\" data-row=\"{{ image_row }}\" style=\"margin-bottom: 10px;\">\r\n                        <option value=\"0\">{{ text_choose_option }}</option>\r\n                        {% for product_option in product_options %}\r\n                          {% if product_option.type == \"select\" or product_option.type == \"radio\" %}\r\n                            <option value=\"{{ product_option.product_option_id }}\">{{ product_option.name }}</option>\r\n                          {% endif %}\r\n                        {% endfor %}\r\n                      </select>\r\n                      {% for product_option in product_options %}\r\n                        {% if product_option.type == \"select\" or product_option.type == \"radio\" %}\r\n                        <select class=\"form-control image-opt-value\" id=\"product-image-option-{{ image_row }}-{{ product_option.product_option_id }}\" data-row=\"{{ image_row }}\" data-type=\"{{ product_option.product_option_id }}\">\r\n                          <option value=\"0\">{{ text_choose_value }}</option>\r\n                          {% for po_value in product_option.product_option_value %}\r\n                            {% if option_values[product_option.option_id] %}\r\n                              {% for option_value in option_values[product_option.option_id] %}\r\n                                {% if option_value.option_value_id == po_value.option_value_id %}\r\n                                  <option value=\"{{ po_value.product_option_value_id }}\" {% if product_image.product_option_value_id == po_value.product_option_value_id %} selected=\"selected\" {% endif %}>{{ option_value.name }}</option>\r\n                                {% endif %}\r\n                              {% endfor %}\r\n                            {% endif %}\r\n                          {% endfor %}\r\n                        </select>\r\n                        {% endif %}\r\n                      {% endfor %}\r\n                    </td>\r\n\r\n                    <!-- Rotate Image -->\r\n                    <td class=\"text-center\">\r\n                      <select name=\"product_image[{{ image_row }}][is_rotate]\" class=\"form-control rotate-select\">\r\n                        {% if product_image.is_rotate and (product_image.is_rotate == 1) %}\r\n                        <option value=\"1\" selected=\"selected\">Yes</option>\r\n                        <option value=\"0\">No</option>\r\n                        {% else %}\r\n                        <option value=\"1\">Yes</option>\r\n                        <option value=\"0\" selected=\"selected\">No</option>\r\n                        {% endif %}\r\n                      </select>\r\n                    </td>\r\n                    <!-- End -->\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[function addImage() {]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n                    $(\'#tab-image tfoot td:first\').attr(\'colspan\', 4);\r\n\r\n                    // Swatches Options\r\n                    $(\'.image-opt-value\').hide();\r\n                    $(\'.image-opt-value\').each(function () {\r\n                      var row = $(this).data(\'row\');\r\n                      $(this).find(\'option\').each(function () {\r\n                        if($(this).attr(\"selected\") == \'selected\') {\r\n                          var option_id = $(this).closest(\'.image-opt-value\').data(\'type\');\r\n                          $(\'#product-image-option-\' + row).find(\"option[value=\'\" + option_id + \"\']\").attr(\'selected\', \'selected\');\r\n                          $(this).closest(\'.image-opt-value\').attr(\'name\', \'product_image[\' + row + \'][product_option_value_id]\').show();\r\n                        }\r\n                      });\r\n                    });\r\n\r\n                    $(\'.image-opt\').change(function () {\r\n                      var row = $(this).data(\'row\');\r\n                      var id_select = $(this).attr(\'id\');\r\n                      var product_option_id = $(this).val();\r\n                      $(\'#image-row\' + row).find(\'.image-opt-value\').removeAttr(\'name\').hide();\r\n                      $(\'#\' + id_select + \"-\" + product_option_id).attr(\'name\', \'product_image[\' + row + \'][product_option_value_id]\').show();\r\n                    });\r\n\r\n                    $(\'.rotate-select\').change(function() {\r\n                      var value = $(this).val();\r\n                      if(value == 1) {\r\n                        $(\'.rotate-select\').val(0);\r\n                        $(this).val(1);\r\n                      }\r\n                    });\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$(\'#images tbody\').append(html);]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    // Swatches Options\r\n                    $(\'.image-opt\').change(function () {\r\n                      var row = $(this).data(\'row\');\r\n                      var id_select = $(this).attr(\'id\');\r\n                      var product_option_id = $(this).val();\r\n                      $(\'#image-row\' + row).find(\'.image-opt-value\').removeAttr(\'name\').hide();\r\n                      $(\'#\' + id_select + \"-\" + product_option_id).attr(\'name\', \'product_image[\' + row + \'][product_option_value_id]\').show();\r\n                    });\r\n\r\n                    $(\'.rotate-select\').change(function() {\r\n                      var value = $(this).val();\r\n                      if(value == 1) {\r\n                        $(\'.rotate-select\').val(0);\r\n                        $(this).val(1);\r\n                      }\r\n                    });\r\n                    //End\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[html += \'  <td class=\"text-left\"><button type=\"button\" onclick=\"$(\\\'#image-row\' + image_row  + \'\\\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger\"><i class=\"fa fa-minus-circle\"></i></button></td>\';]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n                    // Swatches Options\r\n                    html += \'  <td class=\"text-center\">\';\r\n                    html += \'    <select class=\"form-control image-opt\" id=\"product-image-option-\' + image_row + \'\" data-row=\"\' + image_row + \'\" style=\"margin-bottom: 10px;\">\';\r\n                    html += \'       <option value=\"0\">{{ text_choose_option }}</option>\';\r\n                    {% for product_option in product_options %}\r\n                    {% if product_option.type == \"select\" or product_option.type == \"radio\" %}\r\n                    html += \'       <option value=\"{{ product_option.product_option_id }}\">{{ product_option.name }}</option>\';\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                    html += \'    </select>\';\r\n                    {% for product_option in product_options %}\r\n                    {% if product_option.type == \"select\" or product_option.type == \"radio\" %}\r\n                    html += \'    <select class=\"form-control image-opt-value\" id=\"product-image-option-\' + image_row + \'-{{ product_option.product_option_id }}\" data-row=\"\' + image_row + \'\" data-type=\"{{ product_option.product_option_id }}\" style=\"display: none;\">\';\r\n                    html += \'       <option value=\"0\">{{ text_choose_value }}</option>\';\r\n                    {% for po_value in product_option.product_option_value %}\r\n                    {% if option_values[product_option.option_id] %}\r\n                    {% for option_value in option_values[product_option.option_id] %}\r\n                    {% if option_value.option_value_id == po_value.option_value_id %}\r\n                    html += \'       <option value=\"{{ po_value.product_option_value_id }}\">{{ option_value.name }}</option>\';\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                    html += \'    </select>\';\r\n                    {% endif %}\r\n                    {% endfor %}\r\n                    html += \'  </td>\';\r\n\r\n                    html += \' <td class=\"text-center\">\';\r\n                    html += \'   <select name=\"product_image[\' + image_row + \'][is_rotate]\" class=\"form-control rotate-select\">\';\r\n                    html += \'     <option value=\"1\">{{ text_yes }}</option>\';\r\n                    html += \'     <option value=\"0\" selected=\"selected\">{{ text_no }}</option>\';\r\n                    html += \'   </select>\';\r\n                    html += \' </td>\';\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/product/product.php\"> <!-- Done -->\r\n        <operation>\r\n            <search><![CDATA[$data[\'heading_title\'] = $product_info[\'name\'];]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            /* Plaza Product Configuration */\r\n            $this->load->model(\'tool/image\');\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            /* Catalog Mode */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_price\')[$store_id])) {\r\n                $data[\'show_product_price\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_price\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_price\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_cart\')[$store_id])) {\r\n                $data[\'show_product_button_cart\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_cart\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_button_cart\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_wishlist\')[$store_id])) {\r\n                $data[\'show_product_button_wishlist\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_wishlist\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_button_wishlist\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_compare\')[$store_id])) {\r\n                $data[\'show_product_button_compare\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_compare\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_button_compare\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_options\')[$store_id])) {\r\n                $data[\'show_product_options\'] = (int) $this->config->get(\'module_ptcontrolpanel_product_options\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_options\'] = 0;\r\n            }\r\n\r\n            /* Product Details */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_related\')[$store_id])) {\r\n                $data[\'show_product_related\'] = (int) $this->config->get(\'module_ptcontrolpanel_related\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_related\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_social\')[$store_id])) {\r\n                $data[\'show_product_social\'] = (int) $this->config->get(\'module_ptcontrolpanel_social\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_social\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_tax\')[$store_id])) {\r\n                $data[\'show_product_tax\'] = (int) $this->config->get(\'module_ptcontrolpanel_tax\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_tax\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_tags\')[$store_id])) {\r\n                $data[\'show_product_tags\'] = (int) $this->config->get(\'module_ptcontrolpanel_tags\')[$store_id];\r\n            } else {\r\n                $data[\'show_product_tags\'] = 0;\r\n            }\r\n\r\n            $use_zoom = (int) $this->config->get(\'module_ptcontrolpanel_use_zoom\')[$store_id];\r\n\r\n            if($use_zoom) {\r\n                $data[\'use_zoom\'] = true;\r\n\r\n                if ($product_info[\'image\']) {\r\n                    $data[\'small_image\'] = $this->model_tool_image->resize($product_info[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_height\'));\r\n                } else {\r\n                    $data[\'small_image\'] = \'\';\r\n                }\r\n\r\n                $data[\'popup_dimension\'] = array(\r\n                    \'width\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_width\'),\r\n                    \'height\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_popup_height\')\r\n                );\r\n\r\n                $data[\'thumb_dimension\'] = array(\r\n                    \'width\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_width\'),\r\n                    \'height\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_height\')\r\n                );\r\n\r\n                $data[\'small_dimension\'] = array(\r\n                    \'width\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_width\'),\r\n                    \'height\' => $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_additional_height\')\r\n                );\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_zoom_type\')[$store_id])) {\r\n                    $zoom_type = $this->config->get(\'module_ptcontrolpanel_zoom_type\')[$store_id];\r\n                } else {\r\n                    $zoom_type = \'outer\';\r\n                }\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_zoom_space\')[$store_id])) {\r\n                    $zoom_space = $this->config->get(\'module_ptcontrolpanel_zoom_space\')[$store_id];\r\n                } else {\r\n                    $zoom_space = \'0\';\r\n                }\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_zoom_title\')[$store_id])) {\r\n                    $zoom_title = (int) $this->config->get(\'module_ptcontrolpanel_zoom_title\')[$store_id];\r\n                } else {\r\n                    $zoom_title = 0;\r\n                }\r\n\r\n                $data[\'product_zoom_settings\'] = array(\r\n                    \'type\' => $zoom_type,\r\n                    \'space\' => $zoom_space,\r\n                    \'title\' => $zoom_title\r\n                );\r\n\r\n                if (file_exists(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/product/zoom.css\')) {\r\n                    $this->document->addStyle(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/product/zoom.css\');\r\n                } else {\r\n                    $this->document->addStyle(\'catalog/view/theme/default/stylesheet/plaza/product/zoom.css\');\r\n                }\r\n\r\n                $this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/swiper.min.css\');\r\n                \r\n                $this->document->addScript(\'catalog/view/javascript/jquery/swiper/js/swiper.jquery.js\');\r\n                $this->document->addStyle(\'catalog/view/javascript/plaza/cloudzoom/css/cloud-zoom.css\');\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/cloudzoom/cloud-zoom.1.0.2.min.js\');\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/cloudzoom/zoom.js\');\r\n            } else {\r\n                $data[\'use_zoom\'] = false;\r\n            }\r\n\r\n            $use_swatches = (int) $this->config->get(\'module_ptcontrolpanel_use_swatches\')[$store_id];\r\n\r\n            if($use_swatches) {\r\n                $data[\'use_swatches\'] = true;\r\n                $data[\'icon_swatches_width\'] = $this->config->get(\'module_ptcontrolpanel_swatches_width\')[$store_id];\r\n                $data[\'icon_swatches_height\'] = $this->config->get(\'module_ptcontrolpanel_swatches_height\')[$store_id];\r\n                $data[\'swatches_option\'] = $this->config->get(\'module_ptcontrolpanel_swatches_option\')[$store_id];\r\n\r\n                if (file_exists(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/swatches/swatches.css\')) {\r\n                    $this->document->addStyle(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/swatches/swatches.css\');\r\n                } else {\r\n                    $this->document->addStyle(\'catalog/view/theme/default/stylesheet/plaza/swatches/swatches.css\');\r\n                }\r\n\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/swatches/swatches.js\');\r\n            } else {\r\n                $data[\'use_swatches\'] = false;\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'images\'][] = array(]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                    \'product_option_value_id\' => $result[\'product_option_value_id\'],\r\n                    \'product_image_option\' => $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_thumb_height\')),\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if ((float)$product_info[\'special\']) {]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $this->load->model(\'plaza/catalog\');\r\n\r\n				$product_plaza_info = $this->model_plaza_catalog->getProduct($data[\'product_id\']);\r\n\r\n				if (isset($product_plaza_info[\'date_start\']) && $product_plaza_info[\'date_start\']) {\r\n					if($product_plaza_info[\'date_start\'] != \'0000-00-00\') {\r\n						$data[\'date_start\'] = $product_plaza_info[\'date_start\'];\r\n					} else {\r\n						$data[\'date_start\'] = false;\r\n					}\r\n					\r\n				} else {\r\n					$data[\'date_start\'] = false;\r\n				}\r\n\r\n				if(isset($product_plaza_info[\'date_end\']) &&  $product_plaza_info[\'date_end\']) {\r\n					if($product_plaza_info[\'date_end\'] != \'0000-00-00\') {\r\n						$data[\'date_end\'] = $product_plaza_info[\'date_end\'];\r\n					} else {\r\n						$data[\'date_end\'] = false;\r\n					}\r\n				} else {\r\n					$data[\'date_end\'] = false;\r\n				}\r\n\r\n				if($data[\'date_start\'] && $data[\'date_end\']) {\r\n					$this->document->addScript(\'catalog/view/javascript/plaza/countdown/countdown.js\');\r\n				}\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'special\'] = false;]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $data[\'date_start\'] = false;\r\n				$data[\'date_end\'] = false;\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    \r\n    <!-- CATEGORY CONFIGURATION -->\r\n    <file path=\"catalog/controller/product/category.php\">\r\n        <operation>\r\n            <search><![CDATA[$data[\'heading_title\'] = $category_info[\'name\'];]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            /* Plaza Category Configuration */\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            /* Catalog Mode */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_price\')[$store_id])) {\r\n                $data[\'show_cate_price\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_price\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_price\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_cart\')[$store_id])) {\r\n                $data[\'show_cate_cart\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_cart\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_cart\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_wishlist\')[$store_id])) {\r\n                $data[\'show_cate_wishlist\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_wishlist\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_wishlist\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_compare\')[$store_id])) {\r\n                $data[\'show_cate_compare\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_compare\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_compare\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_prodes\')[$store_id])) {\r\n                $data[\'show_cate_prodes\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_prodes\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_prodes\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_label\')[$store_id])) {\r\n                $data[\'show_cate_label\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_label\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_label\'] = 0;\r\n            }\r\n\r\n            /* Category Settings */\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_image\')[$store_id])) {\r\n                $data[\'show_cate_img\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_image\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_img\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_category_description\')[$store_id])) {\r\n                $data[\'show_cate_des\'] = (int) $this->config->get(\'module_ptcontrolpanel_category_description\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_des\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_sub_category\')[$store_id])) {\r\n                $data[\'show_cate_sub\'] = (int) $this->config->get(\'module_ptcontrolpanel_sub_category\')[$store_id];\r\n            } else {\r\n                $data[\'show_cate_sub\'] = 0;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id])) {\r\n                $data[\'use_filter\'] = (int) $this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id];\r\n            } else {\r\n                $data[\'use_filter\'] = 0;\r\n            }\r\n\r\n            if (!empty($_SERVER[\'HTTPS\'])) {\r\n                // SSL connection\r\n                $common_url = str_replace(\'http://\', \'https://\', $this->config->get(\'config_url\'));\r\n            } else {\r\n                $common_url = $this->config->get(\'config_url\');\r\n            }\r\n\r\n            $data[\'pt_sorts\'] = array();\r\n\r\n            $data[\'pt_limits\'] = array();\r\n\r\n            if($data[\'use_filter\']) {\r\n                \r\n				\r\n				$this->document->addStyle(\'catalog/view/javascript/jquery/css/jquery-ui.css\');\r\n				if (file_exists(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/category/filter.css\')) {\r\n                    $this->document->addStyle(\'catalog/view/theme/\' . $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_directory\') . \'/stylesheet/plaza/category/filter.css\');\r\n                } else {\r\n                    $this->document->addStyle(\'catalog/view/theme/default/stylesheet/plaza/category/filter.css\');\r\n                }\r\n				$this->document->addScript(\'catalog/view/javascript/jquery/jquery-ui.js\');	\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/category/filter.js\');\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_default\'),\r\n                    \'value\' => \'p.sort_order-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.sort_order&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_name_asc\'),\r\n                    \'value\' => \'pd.name-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=pd.name&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_name_desc\'),\r\n                    \'value\' => \'pd.name-DESC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=pd.name&order=DESC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_price_asc\'),\r\n                    \'value\' => \'p.price-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.price&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_price_desc\'),\r\n                    \'value\' => \'p.price-DESC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.price&order=DESC\' . $url\r\n                );\r\n\r\n                if ($this->config->get(\'config_review_status\')) {\r\n                    $data[\'pt_sorts\'][] = array(\r\n                        \'text\'  => $this->language->get(\'text_rating_desc\'),\r\n                        \'value\' => \'rating-DESC\',\r\n                        \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=rating&order=DESC\' . $url\r\n                    );\r\n\r\n                    $data[\'pt_sorts\'][] = array(\r\n                        \'text\'  => $this->language->get(\'text_rating_asc\'),\r\n                        \'value\' => \'rating-ASC\',\r\n                        \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=rating&order=ASC\' . $url\r\n                    );\r\n                }\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_model_asc\'),\r\n                    \'value\' => \'p.model-ASC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.model&order=ASC\' . $url\r\n                );\r\n\r\n                $data[\'pt_sorts\'][] = array(\r\n                    \'text\'  => $this->language->get(\'text_model_desc\'),\r\n                    \'value\' => \'p.model-DESC\',\r\n                    \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . \'&sort=p.model&order=DESC\' . $url\r\n                );\r\n\r\n                $data[\'pt_limits\'] = array();\r\n\r\n                $limits = array_unique(array($this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_product_limit\'), 25, 50, 75, 100));\r\n\r\n                sort($limits);\r\n\r\n                foreach($limits as $value) {\r\n                    $data[\'pt_limits\'][] = array(\r\n                        \'text\'  => $value,\r\n                        \'value\' => $value,\r\n                        \'href\'  => $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . $url . \'&limit=\' . $value\r\n                    );\r\n                }\r\n\r\n                if(isset($this->config->get(\'module_ptcontrolpanel_loader_img\')[$store_id])) {\r\n                    $data[\'loader_img\'] = $common_url . \'image/\' . $this->config->get(\'module_ptcontrolpanel_loader_img\')[$store_id];\r\n                } else {\r\n                    $data[\'loader_img\'] = $common_url . \'image/plaza/ajax-loader.gif\';;\r\n                }\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$store_id])) {\r\n	            $data[\'use_quick_view\'] = (int) $this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$store_id];\r\n	        } else {\r\n	            $data[\'use_quick_view\'] = 0;\r\n	        }\r\n\r\n	        if(isset($this->config->get(\'module_ptcontrolpanel_img_effect\')[$store_id])) {\r\n                $data[\'image_effect\'] = $this->config->get(\'module_ptcontrolpanel_img_effect\')[$store_id];\r\n            } else {\r\n                $data[\'image_effect\'] = false;\r\n            }\r\n\r\n            if($data[\'image_effect\'] == \'swatches\') {\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/swatches/swatches.js\');\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_advance_view\')[$store_id])) {\r\n                $data[\'use_advance_view\'] = (int) $this->config->get(\'module_ptcontrolpanel_advance_view\')[$store_id];\r\n            } else {\r\n                $data[\'use_advance_view\'] = 0;\r\n            }\r\n\r\n            if($data[\'use_advance_view\']) {\r\n                $this->document->addScript(\'catalog/view/javascript/plaza/category/grid.js\');\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_default_view\')[$store_id])) {\r\n                $data[\'advance_default_view\'] = $this->config->get(\'module_ptcontrolpanel_default_view\')[$store_id];\r\n            } else {\r\n                $data[\'advance_default_view\'] = false;\r\n            }\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_product_row\')[$store_id])) {\r\n                $data[\'product_p_row\'] = $this->config->get(\'module_ptcontrolpanel_product_row\')[$store_id];\r\n            } else {\r\n                $data[\'product_p_row\'] = false;\r\n            }\r\n			$new_results = $this->model_catalog_product->getLatestProducts(10);\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                if($data[\'image_effect\'] == \'hover\') {\r\n                    $this->load->model(\'plaza/rotateimage\');\r\n\r\n                    $product_rotate_image = $this->model_plaza_rotateimage->getProductRotateImage($result[\'product_id\']);\r\n\r\n                    if($product_rotate_image) {\r\n                        $rotate_image = $this->model_tool_image->resize($product_rotate_image, $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'));\r\n                    } else {\r\n                        $rotate_image = false;\r\n                    }\r\n                } else {\r\n                    $rotate_image = false;\r\n                }\r\n\r\n                $swatches_images = array();\r\n\r\n                $options = array();\r\n\r\n                if($data[\'image_effect\'] == \'swatches\') {\r\n                    $data[\'icon_swatches_width\'] = $this->config->get(\'module_ptcontrolpanel_cate_swatches_width\')[$store_id];\r\n                    $data[\'icon_swatches_height\'] = $this->config->get(\'module_ptcontrolpanel_cate_swatches_height\')[$store_id];\r\n\r\n                    $this->load->model(\'plaza/swatches\');\r\n\r\n                    $images = $this->model_catalog_product->getProductImages($result[\'product_id\']);\r\n\r\n                    $is_swatches = false;\r\n\r\n                    foreach ($images as $img) {\r\n                        if ($img[\'product_option_value_id\']) {\r\n                            $image_option_id = $this->model_plaza_swatches->getOptionIdByProductOptionValueId($img[\'product_option_value_id\']);\r\n\r\n                            if($image_option_id == $this->config->get(\'module_ptcontrolpanel_swatches_option\')[$store_id]) {\r\n                                $is_swatches = true;\r\n\r\n                                $swatches_images[] = array(\r\n                                    \'product_option_value_id\' => $img[\'product_option_value_id\'],\r\n                                    \'image\' => $this->model_tool_image->resize($img[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_product_height\'))\r\n                                );\r\n                            }\r\n                        }\r\n                    }\r\n\r\n                    if($is_swatches) {\r\n                        foreach ($this->model_catalog_product->getProductOptions($result[\'product_id\']) as $option) {\r\n                            if($option[\'option_id\'] == $this->config->get(\'module_ptcontrolpanel_swatches_option\')[$store_id]) {\r\n                                $product_option_value_data = array();\r\n\r\n                                foreach ($option[\'product_option_value\'] as $option_value) {\r\n                                    if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\r\n                                        $product_option_value_data[] = array(\r\n                                            \'product_option_value_id\' => $option_value[\'product_option_value_id\'],\r\n                                            \'option_value_id\'         => $option_value[\'option_value_id\'],\r\n                                            \'name\'                    => $option_value[\'name\'],\r\n                                            \'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], $data[\'icon_swatches_width\'], $data[\'icon_swatches_height\']),\r\n                                        );\r\n                                    }\r\n                                }\r\n\r\n                                $options[] = array(\r\n                                    \'product_option_id\'    => $option[\'product_option_id\'],\r\n                                    \'product_option_value\' => $product_option_value_data,\r\n                                    \'option_id\'            => $option[\'option_id\'],\r\n                                    \'name\'                 => $option[\'name\'],\r\n                                    \'type\'                 => $option[\'type\'],\r\n                                    \'value\'                => $option[\'value\'],\r\n                                );\r\n                            }\r\n                        }\r\n                    }\r\n                }\r\n				$is_new = false;\r\n				if ($new_results) {\r\n					foreach($new_results as $new_r) {\r\n						if($result[\'product_id\'] == $new_r[\'product_id\']) {\r\n							$is_new = true;\r\n						}\r\n					}\r\n				}\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                    \'options\' => $options,\r\n                    \'swatches_images\' => $swatches_images,\r\n                    \'rotate_image\' => $rotate_image,\r\n					\'is_new\'        => $is_new,\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$pagination = new Pagination();]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            $pt_pagination = new Pagination();\r\n            $pt_pagination->total = $product_total;\r\n            $pt_pagination->page = $page;\r\n            $pt_pagination->limit = $limit;\r\n            $pt_pagination->url = $common_url . \'index.php?route=plaza/filter/category&path=\' . $category_id . $url . \'&page={page}\';\r\n\r\n            $data[\'pt_pagination\'] = $pt_pagination->render();\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_left.php\">\r\n    	<operation>\r\n            <search><![CDATA[if ($route == \'product/category\' && isset($this->request->get[\'path\'])) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n       	if ($route == \'product/category\') {\r\n			$store_id = $this->config->get(\'config_store_id\');\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id])) {\r\n				$use_filter = (int) $this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id];\r\n			} else {\r\n				$use_filter = 0;\r\n			}\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id])) {\r\n				$filter_position = $this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id];\r\n			} else {\r\n				$filter_position = false;\r\n			}\r\n\r\n			if($use_filter && $filter_position == \'left\') {\r\n				$data[\'use_filter\'] = true;\r\n			} else {\r\n				$data[\'use_filter\'] = false;\r\n			}\r\n\r\n			if($data[\'use_filter\']) {\r\n				$data[\'filter_section\'] = $this->load->controller(\'plaza/filter\');\r\n			}\r\n		} else {\r\n			$data[\'use_filter\'] = false;\r\n		}\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_right.php\">\r\n    	<operation>\r\n            <search><![CDATA[if ($route == \'product/category\' && isset($this->request->get[\'path\'])) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n       	if ($route == \'product/category\') {\r\n			$store_id = $this->config->get(\'config_store_id\');\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id])) {\r\n				$use_filter = (int) $this->config->get(\'module_ptcontrolpanel_use_filter\')[$store_id];\r\n			} else {\r\n				$use_filter = 0;\r\n			}\r\n\r\n			if(isset($this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id])) {\r\n				$filter_position = $this->config->get(\'module_ptcontrolpanel_filter_position\')[$store_id];\r\n			} else {\r\n				$filter_position = false;\r\n			}\r\n\r\n			if($use_filter && $filter_position == \'right\') {\r\n				$data[\'use_filter\'] = true;\r\n			} else {\r\n				$data[\'use_filter\'] = false;\r\n			}\r\n\r\n			if($data[\'use_filter\']) {\r\n				$data[\'filter_section\'] = $this->load->controller(\'plaza/filter\');\r\n			}\r\n		} else {\r\n			$data[\'use_filter\'] = false;\r\n		}\r\n\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/model/catalog/product.php\">\r\n        <operation>\r\n            <search><![CDATA[if (!empty($data[\'filter_manufacturer_id\'])) {]]></search>\r\n            <add position=\"before\">\r\n                <![CDATA[\r\n        /* Price range */\r\n        if  (!empty($data[\'filter_price\'])) {\r\n            $min_price = $data[\'filter_price\'][\'min_price\'];\r\n            $max_price = $data[\'filter_price\'][\'max_price\'];\r\n            $sql_sl_special = \"(SELECT price FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND ((ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) AND (ps.date_end = \'0000-00-00\' OR ps.date_end > NOW())) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1)\";\r\n            $sql_sl_discount = \"(SELECT price FROM \" . DB_PREFIX . \"product_discount pd2 WHERE pd2.product_id = p.product_id AND pd2.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND pd2.quantity = \'1\' AND ((pd2.date_start = \'0000-00-00\' OR pd2.date_start < NOW()) AND (pd2.date_end = \'0000-00-00\' OR pd2.date_end > NOW())) ORDER BY pd2.priority ASC, pd2.price ASC LIMIT 1)\";\r\n            $sql .= \" AND (CASE WHEN \" . $sql_sl_special . \" IS NOT NULL THEN \" . $sql_sl_special . \" WHEN \" . $sql_sl_discount . \" IS NOT NULL THEN \". $sql_sl_discount . \" ELSE p.price END) >=\'\". $min_price .\"\'\" ;\r\n            $sql .= \" AND (CASE WHEN \" . $sql_sl_special . \" IS NOT NULL THEN \" . $sql_sl_special . \" WHEN \" . $sql_sl_discount . \" IS NOT NULL THEN \". $sql_sl_discount . \" ELSE p.price END) <=\'\". $max_price .\"\'\";\r\n        }\r\n        /* End */\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- Plaza THEME OPTION -->\r\n    <file path=\"catalog/controller/common/header.php\">\r\n        <operation>\r\n            <search><![CDATA[return $this->load->view(\'common/header\', $data);]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n        $data[\'store_id\'] = $this->config->get(\'config_store_id\');\r\n		$data[\'email\'] = $this->config->get(\'config_email\');\r\n        /* General */\r\n		if(isset($this->config->get(\'module_ptcontrolpanel_header_layout\')[$data[\'store_id\']])) {\r\n            $data[\'header_layout\'] = (int) $this->config->get(\'module_ptcontrolpanel_header_layout\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'header_layout\'] = 1;\r\n        }\r\n		\r\n        /* Sticky Header */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_sticky_header\')[$data[\'store_id\']])) {\r\n            $data[\'sticky_header\'] = (int) $this->config->get(\'module_ptcontrolpanel_sticky_header\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'sticky_header\'] = 0;\r\n        }\r\n\r\n        /* Scroll Top */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_scroll_top\')[$data[\'store_id\']])) {\r\n            $data[\'scroll_top\'] = (int) $this->config->get(\'module_ptcontrolpanel_scroll_top\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'scroll_top\'] = 0;\r\n        }\r\n\r\n        /* Lazy Load */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_lazy_load\')[$data[\'store_id\']])) {\r\n            $data[\'lazy_load\'] = (int) $this->config->get(\'module_ptcontrolpanel_lazy_load\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'lazy_load\'] = 0;\r\n        }\r\n\r\n        /* Catalog Mode */\r\n        /* Header */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_header_cart\')[$data[\'store_id\']])) {\r\n            $data[\'header_cart\'] = (int) $this->config->get(\'module_ptcontrolpanel_header_cart\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'header_cart\'] = 0;\r\n        }\r\n\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_header_currency\')[$data[\'store_id\']])) {\r\n            $data[\'header_currency\'] = (int) $this->config->get(\'module_ptcontrolpanel_header_currency\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'header_currency\'] = 0;\r\n        }\r\n\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_module_quickview\')[$data[\'store_id\']])) {\r\n            $module_quick_view = (int) $this->config->get(\'module_ptcontrolpanel_module_quickview\')[$data[\'store_id\']];\r\n        } else {\r\n            $module_quick_view = 0;\r\n        }\r\n\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$data[\'store_id\']])) {\r\n            $category_quick_view = (int) $this->config->get(\'module_ptcontrolpanel_cate_quickview\')[$data[\'store_id\']];\r\n        } else {\r\n            $category_quick_view = 0;\r\n        }\r\n\r\n        if($module_quick_view || $category_quick_view) {\r\n        	$data[\'use_quick_view\'] = true;\r\n        } else {\r\n			$data[\'use_quick_view\'] = false;\r\n        }\r\n\r\n        /* Advance */\r\n        if(isset($this->config->get(\'module_ptcontrolpanel_custom_js\')[$data[\'store_id\']])) {\r\n            $data[\'custom_js\'] = $this->config->get(\'module_ptcontrolpanel_custom_js\')[$data[\'store_id\']];\r\n        } else {\r\n            $data[\'custom_js\'] = false;\r\n        }\r\n        	]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'menu\'] = $this->load->controller(\'common/menu\');]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $data[\'header\'] = $this->load->controller(\'plaza/header\');\r\n            ]]></add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[class ControllerCommonHeader extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[return $this->load->view(\'common/header\', $data);]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n        $detect = new Mobile_Detect;\r\n		if ( $detect->isTablet() ) {\r\n			return $this->load->view(\'common/header\', $data);\r\n		} else {\r\n			if( $detect->isMobile()){\r\n				return $this->load->view(\'plaza/page_section/header_mobile\', $data);\r\n			} else {\r\n				return $this->load->view(\'common/header\', $data);\r\n			}\r\n		}\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_left.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonColumnLeft extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/column_right.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonColumnRight extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/content_bottom.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonContentBottom extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/content_top.php\">\r\n        <operation>\r\n            <search><![CDATA[class ControllerCommonContentTop extends Controller {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            require_once(DIR_SYSTEM . \'Mobile_Detect.php\');\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->get[\'route\'])) {]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            if (isset($this->request->get[\'route\']) && $this->request->get[\'route\'] != \"common/home\") {\r\n            ]]></add>\r\n        </operation>\r\n\r\n        <operation>\r\n            <search><![CDATA[$route = \'common/home\';]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n            $store_id = $this->config->get(\'config_store_id\');\r\n\r\n            if(isset($this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id])) {\r\n                $responsive_type = $this->config->get(\'module_ptcontrolpanel_responsive_type\')[$store_id];\r\n            } else {\r\n                $responsive_type = \"\";\r\n            }\r\n\r\n            if($responsive_type == \"specified\") {\r\n                $detect = new Mobile_Detect;\r\n\r\n                if ( $detect->isTablet() ) {\r\n                    $route = \'common/home\';\r\n                } else {\r\n                    if( $detect->isMobile()){\r\n                        $route = \'plaza/responsive/mobile\';\r\n                    } else {\r\n                        $route = \'common/home\';\r\n                    }\r\n                }\r\n            } else {\r\n                $route = \'common/home\';\r\n            }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- Layouts Position -->\r\n    <file path=\"admin/controller/design/layout.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->response->setOutput($this->load->view(\'design/layout_form\', $data));]]></search>\r\n            <add position=\"replace\"><![CDATA[\r\n                $this->load->language(\'design/layout\');\r\n\r\n                $this->response->setOutput($this->load->view(\'plaza/design/plaza_layout\', $data));\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n	\r\n	<!-- Fixed URL SEO -->\r\n	\r\n	<file path=\"catalog/controller/startup/seo_url.php\">\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if ($url[0] == \'information_id\') {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			if ($url[0] == \'post_id\') {\r\n				$this->request->get[\'post_id\'] = $url[1];\r\n			}	\r\n			if ($url[0] == \'post_list_id\') {\r\n				$this->request->get[\'post_list_id\'] = $url[1];\r\n			}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if ($query->row[\'query\'] && $url[0] != \'information_id\' && $url[0] != \'manufacturer_id\' && $url[0] != \'category_id\' && $url[0] != \'product_id\') {]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			if ($query->row[\'query\'] && $url[0] != \'information_id\' && $url[0] != \'post_list_id\' && $url[0] != \'post_id\' && $url[0] != \'manufacturer_id\' && $url[0] != \'category_id\' && $url[0] != \'product_id\') {\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[$this->request->get[\'route\'] = $query->row[\'query\'];]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			if($query->row[\'query\'] && $url[0] == \'ptblog\') {\r\n				$this->request->get[\'route\'] = \"plaza/blog\";\r\n			}	\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[$this->request->get[\'route\'] = \'information/information\';]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				} elseif (isset($this->request->get[\'post_id\'])) {\r\n					$this->request->get[\'route\'] = \'plaza/blog/post\';\r\n				} elseif (isset($this->request->get[\'post_list_id\'])) {\r\n					$this->request->get[\'route\'] = \'plaza/blog/category\';\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if (isset($data[\'route\'])) {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			if($data[\'route\'] == \'plaza/blog\') {\r\n						$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'ptblog\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n						if ($query->num_rows && $query->row[\'keyword\']) {\r\n							$url .= \'/\' . $query->row[\'keyword\'];\r\n\r\n							unset($data[$key]);\r\n						}\r\n					}\r\n				}\r\n			}	\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[if (($data[\'route\'] == \'product/product\' && $key == \'product_id\') || (($data[\'route\'] == \'product/manufacturer/info\' || $data[\'route\'] == \'product/product\') && $key == \'manufacturer_id\') || ($data[\'route\'] == \'information/information\' && $key == \'information_id\')) {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			foreach ($data as $key => $value) {\r\n			if (isset($data[\'route\'])) {\r\n				if($data[\'route\'] == \'plaza/blog/post\' && $key == \'post_id\') {\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n					if ($query->num_rows && $query->row[\'keyword\']) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n\r\n						unset($data[$key]);\r\n					}\r\n				}\r\n\r\n				if($data[\'route\'] == \'plaza/blog/category\' && $key == \'post_list_id\') {\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n\r\n					if ($query->num_rows && $query->row[\'keyword\']) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n\r\n						unset($data[$key]);\r\n					}\r\n				}	\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"0\"><![CDATA[} elseif ($key == \'path\') {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			} elseif ($key == \'route\') {\r\n			$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"seo_url WHERE `query` = \'\" . $this->db->escape($value) . \"\' AND store_id = \'\" . (int)$this->config->get(\'config_store_id\') . \"\' AND language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\");\r\n			if ($query->num_rows && $query->row[\'keyword\']) {\r\n				$url .= \'/\' . $query->row[\'keyword\'];\r\n				unset($data[$key]);\r\n			} else if ($data[\'route\'] == \"common/home\") { \r\n			 $url .= \'/\'; \r\n			} 	\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2019-12-11 09:33:37');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(40, 40, 'Plaza Theme Custom', 'plaza_theme_custom', 'Plazathemes', '1.0', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <code>plaza_theme_custom</code>\r\n    <name>Plaza Theme Custom</name>\r\n    <version>1.0</version>\r\n    <author>Plazathemes</author>\r\n	<!-- Add position in header -->\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'menu\'] = $this->load->controller(\'common/menu\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Plaza Module Postion\r\n					$data[\'position1\'] = $this->load->controller(\'common/position1\');\r\n					$data[\'position2\'] = $this->load->controller(\'common/position2\');\r\n					$data[\'position3\'] = $this->load->controller(\'common/position3\');\r\n					$data[\'position4\'] = $this->load->controller(\'common/position4\');\r\n					$data[\'position5\'] = $this->load->controller(\'common/position5\');\r\n					$data[\'position6\'] = $this->load->controller(\'common/position6\');\r\n					$data[\'position7\'] = $this->load->controller(\'common/position7\');\r\n					$data[\'position8\'] = $this->load->controller(\'common/position8\');\r\n					$data[\'position9\'] = $this->load->controller(\'common/position9\');\r\n					$data[\'position10\'] = $this->load->controller(\'common/position10\');\r\n				// End Plaza Module Postion\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Add position in footer -->\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'powered\'] = sprintf($this->language->get(\'text_powered\'), $this->config->get(\'config_name\'), date(\'Y\', time()));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Plaza Module Postion\r\n					$data[\'position1\'] = $this->load->controller(\'common/position1\');\r\n					$data[\'position2\'] = $this->load->controller(\'common/position2\');\r\n					$data[\'position3\'] = $this->load->controller(\'common/position3\');\r\n					$data[\'position4\'] = $this->load->controller(\'common/position4\');\r\n					$data[\'position5\'] = $this->load->controller(\'common/position5\');\r\n					$data[\'position6\'] = $this->load->controller(\'common/position6\');\r\n					$data[\'position7\'] = $this->load->controller(\'common/position7\');\r\n					$data[\'position8\'] = $this->load->controller(\'common/position8\');\r\n					$data[\'position9\'] = $this->load->controller(\'common/position9\');\r\n					$data[\'position10\'] = $this->load->controller(\'common/position10\');\r\n				// End Plaza Module Postion\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Add class page in body tag -->\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'menu\'] = $this->load->controller(\'common/menu\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Add class page in body tag\r\n				if (isset($this->request->get[\'route\'])) {\r\n					if (isset($this->request->get[\'product_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'product_id\'];\r\n					} elseif (isset($this->request->get[\'path\'])) {\r\n						$class = \'-\' . $this->request->get[\'path\'];\r\n					} elseif (isset($this->request->get[\'manufacturer_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'manufacturer_id\'];\r\n					} elseif (isset($this->request->get[\'information_id\'])) {\r\n						$class = \'-\' . $this->request->get[\'information_id\'];\r\n					} else {\r\n						$class = \'\';\r\n					}\r\n\r\n					$data[\'class\'] = str_replace(\'/\', \'-\', $this->request->get[\'route\']);\r\n				} else {\r\n					$data[\'class\'] = \'common-home\';\r\n				}\r\n				// End Add class page in body tag\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Remove link swipe js,cs in carousel module default -->\r\n	<file path=\"catalog/controller/extension/module/carousel.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/swiper.min.css\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				//$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/swiper.min.css\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/opencart.css\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				//$this->document->addStyle(\'catalog/view/javascript/jquery/swiper/css/opencart.css\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$this->document->addScript(\'catalog/view/javascript/jquery/swiper/js/swiper.jquery.js\');]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				//$this->document->addScript(\'catalog/view/javascript/jquery/swiper/js/swiper.jquery.js\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<!-- Add span tag in category module default -->\r\n	<file path=\"catalog/controller/extension/module/category.php\">\r\n        <operation>\r\n            <search><![CDATA[\'name\' => $child[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),]]></search>\r\n            <add position=\"replace\">\r\n                <![CDATA[\r\n                    \'name\' => $child[\'name\'] . ($this->config->get(\'config_product_count\') ? \' <span>\' . $this->model_catalog_product->getTotalProducts($filter_data) . \'</span>\' : \'\'),\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[\'name\'        => $category[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),]]></search>\r\n            <add position=\"replace\">\r\n                <![CDATA[\r\n                    \'name\'        => $category[\'name\'] . ($this->config->get(\'config_product_count\') ? \' <span>\' . $this->model_catalog_product->getTotalProducts($filter_data) . \'</span>\' : \'\'),\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n	<!-- Add manufacturer to category,manufacturer,search,special -->\r\n	<file path=\"catalog/controller/product/{category,manufacturer,search,special}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$result[\'rating\'],]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Add manufacturer\r\n					\'manufacturer\' => $result[\'manufacturer\'],\r\n					\'manufacturer_href\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n				// End Add manufacturer\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<!-- Add text_stock to category,manufacturer,search,special -->\r\n	<file path=\"catalog/controller/product/{category,manufacturer,search,special}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				if ($result[\'quantity\'] <= 0) {\r\n					$stock = $result[\'stock_status\'];\r\n				} elseif ($this->config->get(\'config_stock_display\')) {\r\n					$stock = $result[\'quantity\'];\r\n				} else {\r\n					$stock = $this->language->get(\'text_instock\');\r\n				}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					\'stock\'		=> $stock,\r\n					\'quantity\'      => (int) $result[\'quantity\'],\r\n            ]]></add>\r\n        </operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<!-- Add manufacturer to related product -->\r\n		<operation>\r\n			<search><![CDATA[$rating,]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				// Add manufacturer to related product\r\n					\'manufacturer\' => $result[\'manufacturer\'],\r\n					\'manufacturer_href\' => $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n				// End Add manufacturer to related product\r\n			]]></add>\r\n		</operation>\r\n		<!-- Add positon to product page -->\r\n		<operation>\r\n			<search><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'position10\'] = $this->load->controller(\'common/position10\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<!-- Add rate_special in category -->\r\n	<file path=\"catalog/controller/product/category.php\">\r\n        <operation>\r\n            <search><![CDATA[$special = $this->currency->format($this->tax->calculate($result[\'special\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\')), $this->session->data[\'currency\']);]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    $rate_special = round(($result[\'price\'] - $result[\'special\']) / $result[\'price\'] * 100);\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[$special = false;]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    $rate_special = false;\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n		<operation>\r\n            <search><![CDATA[$data[\'products\'][] = array(]]></search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n                    \'rate_special\'      => $rate_special,\r\n                ]]>\r\n            </add>\r\n        </operation>	\r\n    </file>\r\n	\r\n	<!-- Fix text headding,empty -->\r\n	<file path=\"catalog/controller/account/{account,address,affiliate,download,edit,forgotten,login,logout,newsletter,order,password,recurring,register,reset,return,reward,success,tracking,transaction,voucher,wishlist}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/affiliate/{login,register,success,}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/checkout/{cart,checkout,failure,success}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/product/{compare,manufacturer,search,special}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/{common,error}/{maintenance,not_found}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 \r\n	 <file path=\"catalog/controller/extension/{credit_card,payment}/{sagepay_direct,sagepay_server,squareup,amazon_login_pay,klarna_checkout,wechat_pay}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	</file>\r\n	<file path=\"catalog/controller/information/{sitemap,contact}*.php\">\r\n	  <operation>\r\n	   <search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n	   <add position=\"after\"><![CDATA[\r\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n	   ]]></add>\r\n	  </operation>\r\n	 </file>\r\n	 <file path=\"catalog/controller/account/{address,download,order,recurring,return,reward,transaction,wishlist}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/extension/credit_card/{sagepay_direct,sagepay_server}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/{category,search}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/product/{compare,manufacturer,special}*.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->setTitle($this->language->get(\'heading_title\'));]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_empty\'] = $this->language->get(\'text_empty\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/account/voucher.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->load->language(\'account/voucher\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_agree\'] = $this->language->get(\'text_agree\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->load->language(\'design/layout\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[protected function getForm() {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$this->load->language(\'design/layout\');\r\n				$data[\'heading_title\'] = $this->language->get(\'heading_title\');\r\n			]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>', 1, '2019-11-13 14:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'BrandSlider', 'carousel', '{\"name\":\"BrandSlider\",\"banner_id\":\"8\",\"width\":\"164\",\"height\":\"38\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(195, 'Organic 1 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Organic 1 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=xnnWteSDvwnsFB0RcuxeKelSkhVzLp3y\"},{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=xnnWteSDvwnsFB0RcuxeKelSkhVzLp3y&amp;module_id=43\"},{\"code\":\"ptslider.36\",\"name\":\" Plaza Slider &gt; Home slideshow 1\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=xnnWteSDvwnsFB0RcuxeKelSkhVzLp3y&amp;module_id=36\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.38\",\"name\":\" Plaza Static Block &gt; Policy Block\",\"url\":\"http:\\/\\/madina1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=vg66oCVx5ZQB5A16TNHhx7ZzryBrwEbb&amp;module_id=38\"},{\"code\":\"ptproducts.295\",\"name\":\" Plaza Products  &gt; Best seller products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=fQzVcbm9yJm0pTIJIl1oyRYyeHMtec96&amp;module_id=295\"},{\"code\":\"ptfeaturedcate.232\",\"name\":\" Plaza Special Categories &gt; Special Categories 1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=fQzVcbm9yJm0pTIJIl1oyRYyeHMtec96&amp;module_id=232\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"module-group\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.296\",\"name\":\" Plaza Products  &gt; Deal Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=fQzVcbm9yJm0pTIJIl1oyRYyeHMtec96&amp;module_id=296\"}]},\"format\":\"4\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.297\",\"name\":\" Plaza Products  &gt; New Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=fQzVcbm9yJm0pTIJIl1oyRYyeHMtec96&amp;module_id=297\"}]},\"format\":\"8\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.249\",\"name\":\" Plaza Static Block &gt; Static Middle Store1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=fQzVcbm9yJm0pTIJIl1oyRYyeHMtec96&amp;module_id=249\"},{\"code\":\"ptproducts.298\",\"name\":\" Plaza Products  &gt; Featured Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=fQzVcbm9yJm0pTIJIl1oyRYyeHMtec96&amp;module_id=298\"},{\"code\":\"ptstaticblock.196\",\"name\":\" Plaza Static Block &gt; Static Bottom Store1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=fQzVcbm9yJm0pTIJIl1oyRYyeHMtec96&amp;module_id=196\"},{\"code\":\"ptproducts.299\",\"name\":\" Plaza Products  &gt; Most Viewed Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=fQzVcbm9yJm0pTIJIl1oyRYyeHMtec96&amp;module_id=299\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=fQzVcbm9yJm0pTIJIl1oyRYyeHMtec96&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(249, 'Static Middle Store1', 'ptstaticblock', '{\"name\":\"Static Middle Store1\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-middle-store1&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1 col-sm-3 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-middle-store1.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-middle-store1.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-3 col-sm-3 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img3-middle-store1.jpg&quot; alt=&quot;img3&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-middle-store1&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1 col-sm-3 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-middle-store1.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-middle-store1.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-3 col-sm-3 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img3-middle-store1.jpg&quot; alt=&quot;img3&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(298, 'Featured Products 01', 'ptproducts', '{\"name\":\"Featured Products 01\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Featured Products\",\"de-de\":\"Featured Products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add hot products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add hot products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"180\",\"slider_height\":\"180\",\"auto\":\"0\",\"item\":{\"desktop\":\"4\",\"laptop\":\"4\",\"tablet\":\"3\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"0\",\"show_wishlist\":\"0\",\"show_compare\":\"0\",\"show_countdown\":\"0\",\"show_quickview\":\"0\",\"show_hover_image\":\"0\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_specified_products\":[\"42\",\"48\",\"36\",\"34\",\"32\",\"41\",\"40\",\"29\",\"30\",\"35\",\"177\",\"44\",\"43\",\"45\"],\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"298\"}'),
(299, 'Most Viewed Products 01', 'ptproducts', '{\"name\":\"Most Viewed Products 01\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Most Viewed\",\"de-de\":\"Most Viewed\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add most viewed products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add most viewed products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"6\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"mostviewed\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"299\"}'),
(196, 'Static Bottom Store1', 'ptstaticblock', '{\"name\":\"Static Bottom Store1\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-bottom-store1&quot;&gt;\\r\\n   &lt;div class=&quot;image&quot;&gt;\\r\\n     &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-bottom-store1.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n     &lt;div class=&quot;text&quot;&gt;\\r\\n       &lt;p class=&quot;text1&quot;&gt;Grocery Shopping&lt;\\/p&gt;\\r\\n       &lt;p class=&quot;text2&quot;&gt;We Make It Easy&lt;\\/p&gt;\\r\\n     &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-bottom-store1&quot;&gt;\\r\\n   &lt;div class=&quot;image&quot;&gt;\\r\\n     &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-bottom-store1.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n     &lt;div class=&quot;text&quot;&gt;\\r\\n       &lt;p class=&quot;text1&quot;&gt;Grocery Shopping&lt;\\/p&gt;\\r\\n       &lt;p class=&quot;text2&quot;&gt;We Make It Easy&lt;\\/p&gt;\\r\\n     &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(33, 'Horizontal Menu 01', 'ptmenu', '{\"name\":\"Horizontal Menu 01\",\"status\":\"1\",\"menu\":\"4\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"253237\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"700\",\"item_font_color_hover\":\"253237\",\"item_font_weight_hover\":\"700\",\"item_pd_top\":\"5px\",\"item_pd_right\":\"17px\",\"item_pd_bottom\":\"5px\",\"item_pd_left\":\"17px\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"253237\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"700\",\"mega_sub_item_hover_font_color\":\"4FB68D\",\"mega_sub_item_hover_font_weight\":\"700\",\"mega_sub_sub_item_font_color\":\"888888\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"4FB68D\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"12px\",\"mega_menu_pd_right\":\"30px\",\"mega_menu_pd_bottom\":\"30px\",\"mega_menu_pd_left\":\"30px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"253237\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"700\",\"second_item_font_color_hover\":\"4FB68D\",\"second_item_font_weight_hover\":\"700\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"888888\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"4FB68D\",\"third_item_font_weight_hover\":\"400\"}'),
(46, 'Home slideshow 2', 'ptslider', '{\"name\":\"Home slideshow 2\",\"status\":\"1\",\"slider\":\"2\",\"width\":\"1920\",\"height\":\"816\"}'),
(47, 'Home slideshow 3', 'ptslider', '{\"name\":\"Home slideshow 3\",\"status\":\"1\",\"slider\":\"3\",\"width\":\"1920\",\"height\":\"690\"}'),
(35, 'Mobile Menu 01', 'ptmenu', '{\"name\":\"Mobile Menu 01\",\"status\":\"1\",\"menu\":\"8\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"253237\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"253237\",\"item_font_size\":\"1.5rem\",\"item_font_transform\":\"uppercase\",\"item_font_weight\":\"600\",\"item_font_color_hover\":\"4FB68D\",\"item_font_weight_hover\":\"600\",\"item_pd_top\":\"5px\",\"item_pd_right\":\"0px\",\"item_pd_bottom\":\"5px\",\"item_pd_left\":\"0px\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"FFFFFF\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"none\",\"mega_sub_item_font_weight\":\"300\",\"mega_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_item_hover_font_weight\":\"300\",\"mega_sub_sub_item_font_color\":\"FFFFFF\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"none\",\"mega_sub_sub_item_font_weight\":\"300\",\"mega_sub_sub_item_hover_font_color\":\"FFFFFF\",\"mega_sub_sub_item_hover_font_weight\":\"300\",\"mega_menu_pd_top\":\"0px\",\"mega_menu_pd_right\":\"0px\",\"mega_menu_pd_bottom\":\"0px\",\"mega_menu_pd_left\":\"0px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"253237\",\"second_item_font_size\":\"1.6rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"600\",\"second_item_font_color_hover\":\"4FB68D\",\"second_item_font_weight_hover\":\"600\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"888888\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"4FB68D\",\"third_item_font_weight_hover\":\"400\"}'),
(36, 'Home slideshow 1', 'ptslider', '{\"name\":\"Home slideshow 1\",\"status\":\"1\",\"slider\":\"1\",\"width\":\"1920\",\"height\":\"660\"}'),
(38, 'Policy Block', 'ptstaticblock', '{\"name\":\"Policy Block\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;policy-block&quot;&gt;\\r\\n  &lt;div class=&quot;inner&quot;&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/free_shipping.png&quot; alt=&quot;free_shipping&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Free Shipping&lt;\\/label&gt;\\r\\n            &lt;p&gt;On all orders over $75.00&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/free_returns.png&quot; alt=&quot;return&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Free Returns&lt;\\/label&gt;\\r\\n            &lt;p&gt;Returns are free within 9 days&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/payment_secure.png&quot; alt=&quot;payment-secure&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;100% Payment Secure&lt;\\/label&gt;\\r\\n            &lt;p&gt;Your payment are safe with us.&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/support247.png&quot; alt=&quot;support247&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Support 24\\/7&lt;\\/label&gt;\\r\\n            &lt;p&gt;Contact us 24 hours a day&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n   \\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;policy-block&quot;&gt;\\r\\n  &lt;div class=&quot;inner&quot;&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/free_shipping.png&quot; alt=&quot;free_shipping&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Free Shipping&lt;\\/label&gt;\\r\\n            &lt;p&gt;On all orders over $75.00&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/free_returns.png&quot; alt=&quot;return&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Free Returns&lt;\\/label&gt;\\r\\n            &lt;p&gt;Returns are free within 9 days&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/payment_secure.png&quot; alt=&quot;payment-secure&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;100% Payment Secure&lt;\\/label&gt;\\r\\n            &lt;p&gt;Your payment are safe with us.&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col&quot;&gt;\\r\\n      &lt;div class=&quot;box&quot;&gt;\\r\\n        &lt;div class=&quot;inner&quot;&gt;\\r\\n          &lt;img src=&quot;image\\/catalog\\/ptblock\\/support247.png&quot; alt=&quot;support247&quot;&gt;\\r\\n          &lt;div class=&quot;text&quot;&gt;\\r\\n            &lt;label&gt;Support 24\\/7&lt;\\/label&gt;\\r\\n            &lt;p&gt;Contact us 24 hours a day&lt;\\/p&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n   \\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(295, 'Best seller products 01', 'ptproducts', '{\"name\":\"Best seller products 01\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Best Sellers\",\"de-de\":\"Best Sellers\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add bestselling products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add bestselling products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"bestseller\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"295\"}'),
(41, 'Footer Contact us', 'ptstaticblock', '{\"name\":\"Footer Contact us\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;footer-contact-us&quot;&gt;\\r\\n  &lt;a href=&quot;#&quot; class=&quot;logo-footer&quot;&gt;&lt;img src=&quot;image\\/catalog\\/logo\\/ecolife.png&quot; alt=&quot;logo-footer&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;p&gt;We are a team of designers and developers that create high quality Magento, Prestashop, Opencart.&lt;\\/p&gt;\\r\\n  &lt;div class=&quot;footer-phone&quot;&gt;\\r\\n    &lt;label&gt;NEED HELP?&lt;\\/label&gt;\\r\\n    &lt;p&gt;(+800) 345 678, (+800) 123 456&lt;\\/p&gt;\\r\\n  &lt;\\/div&gt;\\r\\n  &lt;div class=&quot;social-block&quot;&gt;\\r\\n  &lt;div class=&quot;social&quot;&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/www.facebook.com\\/PlazaThemes1\\/&quot; class=&quot;facebook&quot; target=&quot;_blank&quot; title=&quot;Facebook&quot;&gt;&lt;i class=&quot;ion-social-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/twitter.com\\/plazathemes&quot; target=&quot;_blank&quot; class=&quot;twitter&quot; title=&quot;Twitter&quot;&gt;&lt;i class=&quot;ion-social-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;#&quot; target=&quot;_blank&quot; class=&quot;instagram&quot; title=&quot;Instagram&quot;&gt;&lt;i class=&quot;ion-social-instagram-outline&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/www.youtube.com\\/user\\/plazathemes&quot; target=&quot;_blank&quot; class=&quot;youtube&quot; title=&quot;Youtube&quot;&gt;&lt;i class=&quot;ion-social-youtube-outline&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;footer-contact-us&quot;&gt;\\r\\n  &lt;a href=&quot;#&quot; class=&quot;logo-footer&quot;&gt;&lt;img src=&quot;image\\/catalog\\/logo\\/ecolife.png&quot; alt=&quot;logo-footer&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;p&gt;We are a team of designers and developers that create high quality Magento, Prestashop, Opencart.&lt;\\/p&gt;\\r\\n  &lt;div class=&quot;footer-phone&quot;&gt;\\r\\n    &lt;label&gt;NEED HELP?&lt;\\/label&gt;\\r\\n    &lt;p&gt;(+800) 345 678, (+800) 123 456&lt;\\/p&gt;\\r\\n  &lt;\\/div&gt;\\r\\n  &lt;div class=&quot;social-block&quot;&gt;\\r\\n  &lt;div class=&quot;social&quot;&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/www.facebook.com\\/PlazaThemes1\\/&quot; class=&quot;facebook&quot; target=&quot;_blank&quot; title=&quot;Facebook&quot;&gt;&lt;i class=&quot;ion-social-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/twitter.com\\/plazathemes&quot; target=&quot;_blank&quot; class=&quot;twitter&quot; title=&quot;Twitter&quot;&gt;&lt;i class=&quot;ion-social-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;#&quot; target=&quot;_blank&quot; class=&quot;instagram&quot; title=&quot;Instagram&quot;&gt;&lt;i class=&quot;ion-social-instagram-outline&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n    &lt;a href=&quot;https:\\/\\/www.youtube.com\\/user\\/plazathemes&quot; target=&quot;_blank&quot; class=&quot;youtube&quot; title=&quot;Youtube&quot;&gt;&lt;i class=&quot;ion-social-youtube-outline&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n\"}}}'),
(277, 'Blog 2', 'ptblog', '{\"name\":\"Blog 2\",\"status\":\"1\",\"list\":\"1\",\"width\":\"450\",\"height\":\"277\",\"auto\":\"0\",\"items\":\"3\",\"speed\":\"1000\",\"rows\":\"1\",\"navigation\":\"1\",\"pagination\":\"0\"}'),
(42, 'Newsletter Subscribe', 'ptnewsletter', '{\"name\":\"Newsletter Subscribe\",\"status\":\"1\",\"popup\":\"0\"}'),
(43, 'Newsletter Popup', 'ptnewsletter', '{\"name\":\"Newsletter Popup\",\"status\":\"1\",\"popup\":\"1\"}'),
(300, 'Footer Software', 'ptstaticblock', '{\"name\":\"Footer Software\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;footer-software&quot;&gt;\\r\\n  &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/apple_store.png&quot; alt=&quot;apple_store&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/google_play.png&quot; alt=&quot;google_play&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;footer-software&quot;&gt;\\r\\n  &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/apple_store.png&quot; alt=&quot;apple_store&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/google_play.png&quot; alt=&quot;google_play&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(301, 'Payment', 'ptstaticblock', '{\"name\":\"Payment\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;payment&quot;&gt;\\r\\n  &lt;img src=&quot;image\\/catalog\\/ptblock\\/payment.png&quot; alt=&quot;payment&quot;&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;payment&quot;&gt;\\r\\n  &lt;img src=&quot;image\\/catalog\\/ptblock\\/payment.png&quot; alt=&quot;payment&quot;&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(302, 'Static Sidebar', 'ptstaticblock', '{\"name\":\"Static Sidebar\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-sidebar&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;\\r\\n      &lt;img src=&quot;image\\/catalog\\/ptblock\\/img-sidebar.jpg&quot; alt=&quot;img-sidebar&quot;&gt;\\r\\n    &lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-sidebar&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;\\r\\n      &lt;img src=&quot;image\\/catalog\\/ptblock\\/img-sidebar.jpg&quot; alt=&quot;img-sidebar&quot;&gt;\\r\\n    &lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(255, 'Popular Tags', 'ptstaticblock', '{\"name\":\"Popular Tags\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;popular-tags&quot;&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;&lt;h3&gt;Popular Tags&lt;\\/h3&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;ul&gt;\\r\\n&lt;li&gt;                                                  \\t\\t\\t\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Amazon&quot;&gt;Amazon&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Apple&quot;&gt;Apple&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=IPhone&quot;&gt;IPhone&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Headphone&quot;&gt;Headphone&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Beats&quot;&gt;Beats&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Bluetooth&quot;&gt;Bluetooth&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Speaker&quot;&gt;Speaker&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Bose&quot;&gt;Bose&lt;\\/a&gt;\\r\\n\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;popular-tags&quot;&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;&lt;h3&gt;Popular Tags&lt;\\/h3&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;ul&gt;\\r\\n&lt;li&gt;                                                  \\t\\t\\t\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Amazon&quot;&gt;Amazon&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Apple&quot;&gt;Apple&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=IPhone&quot;&gt;IPhone&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Headphone&quot;&gt;Headphone&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Beats&quot;&gt;Beats&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Bluetooth&quot;&gt;Bluetooth&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Speaker&quot;&gt;Speaker&lt;\\/a&gt;\\r\\n\\t&lt;a href=&quot;index.php?route=product\\/search&amp;amp;search=Bose&quot;&gt;Bose&lt;\\/a&gt;\\r\\n\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(50, 'Home slideshow 4', 'ptslider', '{\"name\":\"Home slideshow 4\",\"status\":\"1\",\"slider\":\"4\",\"width\":\"1920\",\"height\":\"816\"}'),
(190, 'Organic 1 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Organic 1 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.56\",\"name\":\" Plaza Slider &gt; Mobile Home slideshow 1\",\"url\":\"http:\\/\\/antomi1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=Ikwx42OVfE3CF9nDdtpNnDOAMuLaCq5F&amp;module_id=56\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.38\",\"name\":\" Plaza Static Block &gt; Policy Block\",\"url\":\"http:\\/\\/madina1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=oc2vF3ce27XH7bSl1Eldeq03MEW3G0oe&amp;module_id=38\"},{\"code\":\"ptproducts.295\",\"name\":\" Plaza Products  &gt; Best seller products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=uwFlPuvd50viePQpzQ6JNplc5YDyA2W8&amp;module_id=295\"},{\"code\":\"ptfeaturedcate.232\",\"name\":\" Plaza Special Categories &gt; Special Categories 1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=uwFlPuvd50viePQpzQ6JNplc5YDyA2W8&amp;module_id=232\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"module-group\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.296\",\"name\":\" Plaza Products  &gt; Deal Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=uwFlPuvd50viePQpzQ6JNplc5YDyA2W8&amp;module_id=296\"},{\"code\":\"ptproducts.297\",\"name\":\" Plaza Products  &gt; New Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=uwFlPuvd50viePQpzQ6JNplc5YDyA2W8&amp;module_id=297\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.249\",\"name\":\" Plaza Static Block &gt; Static Middle Store1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=uwFlPuvd50viePQpzQ6JNplc5YDyA2W8&amp;module_id=249\"},{\"code\":\"ptproducts.298\",\"name\":\" Plaza Products  &gt; Featured Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=uwFlPuvd50viePQpzQ6JNplc5YDyA2W8&amp;module_id=298\"},{\"code\":\"ptstaticblock.196\",\"name\":\" Plaza Static Block &gt; Static Bottom Store1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=uwFlPuvd50viePQpzQ6JNplc5YDyA2W8&amp;module_id=196\"},{\"code\":\"ptproducts.299\",\"name\":\" Plaza Products  &gt; Most Viewed Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=uwFlPuvd50viePQpzQ6JNplc5YDyA2W8&amp;module_id=299\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=uwFlPuvd50viePQpzQ6JNplc5YDyA2W8&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(56, 'Mobile Home slideshow 1', 'ptslider', '{\"name\":\"Mobile Home slideshow 1\",\"status\":\"1\",\"slider\":\"1\",\"width\":\"767\",\"height\":\"264\"}'),
(57, 'Mobile Home slideshow 2', 'ptslider', '{\"name\":\"Mobile Home slideshow 2\",\"status\":\"1\",\"slider\":\"2\",\"width\":\"767\",\"height\":\"326\"}'),
(58, 'Mobile Home slideshow 3', 'ptslider', '{\"name\":\"Mobile Home slideshow 3\",\"status\":\"1\",\"slider\":\"3\",\"width\":\"767\",\"height\":\"275\"}'),
(59, 'Mobile Home slideshow 4', 'ptslider', '{\"name\":\"Mobile Home slideshow 4\",\"status\":\"1\",\"slider\":\"4\",\"width\":\"767\",\"height\":\"326\"}'),
(60, 'Organic 2 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Organic 2 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4\"},{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=43\"},{\"code\":\"ptslider.46\",\"name\":\" Plaza Slider &gt; Home slideshow 2\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=GVLYx6rxFhktHdJxIYK69fmLQfVvTPlc&amp;module_id=46\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.249\",\"name\":\" Plaza Static Block &gt; Static Middle Store1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h&amp;module_id=249\"},{\"code\":\"ptfeaturedcate.232\",\"name\":\" Plaza Special Categories &gt; Special Categories 1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h&amp;module_id=232\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"module-group\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.296\",\"name\":\" Plaza Products  &gt; Deal Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h&amp;module_id=296\"}]},\"format\":\"4\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.297\",\"name\":\" Plaza Products  &gt; New Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h&amp;module_id=297\"}]},\"format\":\"8\"}]}]}]},{\"class\":\"testimonials-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"pttestimonial.303\",\"name\":\" Plaza Testimonial &gt; Testimonial 02\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/pttestimonial&amp;user_token=rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h&amp;module_id=303\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.38\",\"name\":\" Plaza Static Block &gt; Policy Block\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h&amp;module_id=38\"},{\"code\":\"ptproducts.298\",\"name\":\" Plaza Products  &gt; Featured Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h&amp;module_id=298\"},{\"code\":\"ptstaticblock.196\",\"name\":\" Plaza Static Block &gt; Static Bottom Store1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h&amp;module_id=196\"},{\"code\":\"ptblog.277\",\"name\":\" Plaza Blog &gt; Blog 2\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h&amp;module_id=277\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(303, 'Testimonial 02', 'pttestimonial', '{\"name\":\"Testimonial 02\",\"status\":\"1\",\"width\":\"120\",\"height\":\"120\",\"auto\":\"0\",\"items\":\"2\",\"limit\":\"10\",\"speed\":\"500\",\"rows\":\"1\",\"navigation\":\"0\",\"pagination\":\"1\"}'),
(62, 'Organic 2 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Organic 2 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.57\",\"name\":\" Plaza Slider &gt; Mobile Home slideshow 2\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=57\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.249\",\"name\":\" Plaza Static Block &gt; Static Middle Store1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=249\"},{\"code\":\"ptfeaturedcate.232\",\"name\":\" Plaza Special Categories &gt; Special Categories 1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=232\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"module-group\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.296\",\"name\":\" Plaza Products  &gt; Deal Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=296\"},{\"code\":\"ptproducts.297\",\"name\":\" Plaza Products  &gt; New Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=297\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"testimonials-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"pttestimonial.303\",\"name\":\" Plaza Testimonial &gt; Testimonial 02\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/pttestimonial&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=303\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.38\",\"name\":\" Plaza Static Block &gt; Policy Block\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=38\"},{\"code\":\"ptproducts.298\",\"name\":\" Plaza Products  &gt; Featured Products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=298\"},{\"code\":\"ptstaticblock.196\",\"name\":\" Plaza Static Block &gt; Static Bottom Store1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=196\"},{\"code\":\"ptblog.277\",\"name\":\" Plaza Blog &gt; Blog 2\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=277\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(296, 'Deal Products 01', 'ptproducts', '{\"name\":\"Deal Products 01\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Hot Deals\",\"de-de\":\"Hot Deals\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add hot products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add hot products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"450\",\"slider_height\":\"450\",\"auto\":\"0\",\"item\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"5\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"countdown-module nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"1\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_specified_products\":[\"42\",\"41\",\"45\",\"29\"],\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"296\"}'),
(297, 'New Products 01', 'ptproducts', '{\"name\":\"New Products 01\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"New Arrivals\",\"de-de\":\"New Arrivals\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add new products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add new products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"4\",\"laptop\":\"4\",\"tablet\":\"3\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"latest\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"297\"}'),
(63, 'Organic 3 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Organic 3 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=43\"},{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4\"},{\"code\":\"ptslider.47\",\"name\":\" Plaza Slider &gt; Home slideshow 3\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=47\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.304\",\"name\":\" Plaza Static Block &gt; Static Top Store3\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=PNY1OLkE03mCbc5QTyoZjyFT7Z6UAg0L&amp;module_id=304\"},{\"code\":\"ptstaticblock.38\",\"name\":\" Plaza Static Block &gt; Policy Block\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=PNY1OLkE03mCbc5QTyoZjyFT7Z6UAg0L&amp;module_id=38\"},{\"code\":\"ptproducts.295\",\"name\":\" Plaza Products  &gt; Best seller products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=PNY1OLkE03mCbc5QTyoZjyFT7Z6UAg0L&amp;module_id=295\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"background-image-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.311\",\"name\":\" Plaza Static Block &gt; Static Module Store3\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=tqnD7fyrhtK5qnGjwkt2pZuJBD2uIXl1&amp;module_id=311\"}]},\"format\":\"6\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.305\",\"name\":\" Plaza Products  &gt; Featured Products 03\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=PNY1OLkE03mCbc5QTyoZjyFT7Z6UAg0L&amp;module_id=305\"}]},\"format\":\"6\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.306\",\"name\":\" Plaza Products  &gt; Deals Product 03\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=PNY1OLkE03mCbc5QTyoZjyFT7Z6UAg0L&amp;module_id=306\"},{\"code\":\"ptproducts.307\",\"name\":\" Plaza Products  &gt; New Products 03\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=PNY1OLkE03mCbc5QTyoZjyFT7Z6UAg0L&amp;module_id=307\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=PNY1OLkE03mCbc5QTyoZjyFT7Z6UAg0L&amp;module_id=29\"},{\"code\":\"ptblog.277\",\"name\":\" Plaza Blog &gt; Blog 2\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=PNY1OLkE03mCbc5QTyoZjyFT7Z6UAg0L&amp;module_id=277\"},{\"code\":\"ptfeaturedcate.232\",\"name\":\" Plaza Special Categories &gt; Special Categories 1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=PNY1OLkE03mCbc5QTyoZjyFT7Z6UAg0L&amp;module_id=232\"}]},\"format\":\"12\"}]}]}]}]}');
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(312, 'Most Viewed Products 04', 'ptproducts', '{\"name\":\"Most Viewed Products 04\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Most Viewed\",\"de-de\":\"Most Viewed\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add most viewed products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add most viewed products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"180\",\"slider_height\":\"180\",\"auto\":\"0\",\"item\":{\"desktop\":\"4\",\"laptop\":\"4\",\"tablet\":\"3\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"0\",\"show_wishlist\":\"0\",\"show_compare\":\"0\",\"show_countdown\":\"0\",\"show_quickview\":\"0\",\"show_hover_image\":\"0\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"mostviewed\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"312\"}'),
(68, 'Organic 3 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Organic 3 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.58\",\"name\":\" Plaza Slider &gt; Mobile Home slideshow 3\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=58\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.304\",\"name\":\" Plaza Static Block &gt; Static Top Store3\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=rPWtHrm0bEyVHb5Kvg8fA1fhWvek52YX&amp;module_id=304\"},{\"code\":\"ptstaticblock.38\",\"name\":\" Plaza Static Block &gt; Policy Block\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=rPWtHrm0bEyVHb5Kvg8fA1fhWvek52YX&amp;module_id=38\"},{\"code\":\"ptproducts.295\",\"name\":\" Plaza Products  &gt; Best seller products 01\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=rPWtHrm0bEyVHb5Kvg8fA1fhWvek52YX&amp;module_id=295\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"background-image-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.311\",\"name\":\" Plaza Static Block &gt; Static Module Store3\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=tqnD7fyrhtK5qnGjwkt2pZuJBD2uIXl1&amp;module_id=311\"},{\"code\":\"ptproducts.305\",\"name\":\" Plaza Products  &gt; Featured Products 03\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=rPWtHrm0bEyVHb5Kvg8fA1fhWvek52YX&amp;module_id=305\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.306\",\"name\":\" Plaza Products  &gt; Deals Product 03\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=rPWtHrm0bEyVHb5Kvg8fA1fhWvek52YX&amp;module_id=306\"},{\"code\":\"ptproducts.307\",\"name\":\" Plaza Products  &gt; New Products 03\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=rPWtHrm0bEyVHb5Kvg8fA1fhWvek52YX&amp;module_id=307\"},{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=rPWtHrm0bEyVHb5Kvg8fA1fhWvek52YX&amp;module_id=29\"},{\"code\":\"ptblog.277\",\"name\":\" Plaza Blog &gt; Blog 2\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptblog&amp;user_token=rPWtHrm0bEyVHb5Kvg8fA1fhWvek52YX&amp;module_id=277\"},{\"code\":\"ptfeaturedcate.232\",\"name\":\" Plaza Special Categories &gt; Special Categories 1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptfeaturedcate&amp;user_token=rPWtHrm0bEyVHb5Kvg8fA1fhWvek52YX&amp;module_id=232\"}]},\"format\":\"12\"}]}]}]}]}'),
(286, 'Horizontal Menu 03', 'ptmenu', '{\"name\":\"Horizontal Menu 03\",\"status\":\"1\",\"menu\":\"4\",\"effect\":\"none\",\"menu_bg\":\"FFFFFF\",\"menu_text_color\":\"FFFFFF\",\"menu_pd_top\":\"0px\",\"menu_pd_right\":\"0px\",\"menu_pd_bottom\":\"0px\",\"menu_pd_left\":\"0px\",\"item_bg\":\"FFFFFF\",\"item_bg_hover\":\"FFFFFF\",\"item_font_color\":\"FFFFFF\",\"item_font_size\":\"1.4rem\",\"item_font_transform\":\"capitalize\",\"item_font_weight\":\"700\",\"item_font_color_hover\":\"FFFFFF\",\"item_font_weight_hover\":\"700\",\"item_pd_top\":\"5px\",\"item_pd_right\":\"17px\",\"item_pd_bottom\":\"5px\",\"item_pd_left\":\"17px\",\"item_show\":\"5\",\"mega_menu_bg\":\"FFFFFF\",\"mega_sub_item_font_color\":\"253237\",\"mega_sub_item_font_size\":\"1.4rem\",\"mega_sub_item_font_transform\":\"capitalize\",\"mega_sub_item_font_weight\":\"700\",\"mega_sub_item_hover_font_color\":\"4FB68D\",\"mega_sub_item_hover_font_weight\":\"700\",\"mega_sub_sub_item_font_color\":\"888888\",\"mega_sub_sub_item_font_size\":\"1.4rem\",\"mega_sub_sub_item_font_transform\":\"capitalize\",\"mega_sub_sub_item_font_weight\":\"400\",\"mega_sub_sub_item_hover_font_color\":\"4FB68D\",\"mega_sub_sub_item_hover_font_weight\":\"400\",\"mega_menu_pd_top\":\"12px\",\"mega_menu_pd_right\":\"30px\",\"mega_menu_pd_bottom\":\"30px\",\"mega_menu_pd_left\":\"30px\",\"second_item_bg\":\"FFFFFF\",\"second_item_bg_hover\":\"FFFFFF\",\"second_item_font_color\":\"253237\",\"second_item_font_size\":\"1.4rem\",\"second_item_font_transform\":\"capitalize\",\"second_item_font_weight\":\"700\",\"second_item_font_color_hover\":\"4FB68D\",\"second_item_font_weight_hover\":\"700\",\"third_item_bg\":\"FFFFFF\",\"third_item_bg_hover\":\"FFFFFF\",\"third_item_font_color\":\"888888\",\"third_item_font_size\":\"1.4rem\",\"third_item_font_transform\":\"capitalize\",\"third_item_font_weight\":\"400\",\"third_item_font_color_hover\":\"4FB68D\",\"third_item_font_weight_hover\":\"400\"}'),
(71, 'Organic 4 - Mobile Home Page', 'ptlayoutbuilder', '{\"name\":\"Organic 4 - Mobile Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptslider.59\",\"name\":\" Plaza Slider &gt; Mobile Home slideshow 4\",\"url\":\"http:\\/\\/ocframe.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=a8466CsL9pHauWX11EEa5vKAo63tS4d4&amp;module_id=59\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.38\",\"name\":\" Plaza Static Block &gt; Policy Block\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=38\"},{\"code\":\"ptstaticblock.308\",\"name\":\" Plaza Static Block &gt; Static Top Store4\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=308\"},{\"code\":\"ptproducts.309\",\"name\":\" Plaza Products  &gt; Best seller products 04\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=309\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"background-image-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.311\",\"name\":\" Plaza Static Block &gt; Static Module Store3\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=tqnD7fyrhtK5qnGjwkt2pZuJBD2uIXl1&amp;module_id=311\"},{\"code\":\"ptproducts.305\",\"name\":\" Plaza Products  &gt; Featured Products 03\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=305\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.310\",\"name\":\" Plaza Products  &gt; New Products 04\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=310\"},{\"code\":\"ptstaticblock.196\",\"name\":\" Plaza Static Block &gt; Static Bottom Store1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=196\"},{\"code\":\"ptproducts.312\",\"name\":\" Plaza Products  &gt; Most Viewed Products 04\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=DdZcoV0pdoWw4Zavk9mSSQo7Gf6nWqrU&amp;module_id=312\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"testimonials-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"pttestimonial.303\",\"name\":\" Plaza Testimonial &gt; Testimonial 02\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/pttestimonial&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=303\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(311, 'Static Module Store3', 'ptstaticblock', '{\"name\":\"Static Module Store3\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-module-store3&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-module-store3.png&quot; alt=&quot;img-module-store3&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-module-store3&quot;&gt;\\r\\n  &lt;div class=&quot;image&quot;&gt;\\r\\n    &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-module-store3.png&quot; alt=&quot;img-module-store3&quot;&gt;&lt;\\/a&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}}}'),
(204, 'Organic 4 - Home Page', 'ptlayoutbuilder', '{\"name\":\"Organic 4 - Home Page\",\"status\":\"1\",\"widget\":[{\"class\":\"full-width\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptnewsletter.43\",\"name\":\" Plaza Newsletter &gt; Newsletter Popup\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptnewsletter&amp;user_token=ALFfcKAGHiCnUiYCepCm5cOhnDnhJwUo&amp;module_id=43\"},{\"code\":\"ptajaxlogin\",\"name\":\" Plaza Quick Login\",\"url\":\"http:\\/\\/vogue1.com\\/admin\\/index.php?route=extension\\/module\\/ptajaxlogin&amp;user_token=ALFfcKAGHiCnUiYCepCm5cOhnDnhJwUo\"},{\"code\":\"ptslider.50\",\"name\":\" Plaza Slider &gt; Home slideshow 4\",\"url\":\"http:\\/\\/dorno1.com\\/admin\\/index.php?route=extension\\/module\\/ptslider&amp;user_token=GFUMXMjdZ2BK5VckWxKGQmQHuNt7lIpl&amp;module_id=50\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.38\",\"name\":\" Plaza Static Block &gt; Policy Block\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=38\"},{\"code\":\"ptstaticblock.308\",\"name\":\" Plaza Static Block &gt; Static Top Store4\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=308\"},{\"code\":\"ptproducts.309\",\"name\":\" Plaza Products  &gt; Best seller products 04\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=309\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"background-image-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptstaticblock.311\",\"name\":\" Plaza Static Block &gt; Static Module Store3\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=tqnD7fyrhtK5qnGjwkt2pZuJBD2uIXl1&amp;module_id=311\"}]},\"format\":\"6\"},{\"info\":{\"module\":[{\"code\":\"ptproducts.305\",\"name\":\" Plaza Products  &gt; Featured Products 03\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=305\"}]},\"format\":\"6\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"ptproducts.310\",\"name\":\" Plaza Products  &gt; New Products 04\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=310\"},{\"code\":\"ptstaticblock.196\",\"name\":\" Plaza Static Block &gt; Static Bottom Store1\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptstaticblock&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=196\"},{\"code\":\"ptproducts.312\",\"name\":\" Plaza Products  &gt; Most Viewed Products 04\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/ptproducts&amp;user_token=DdZcoV0pdoWw4Zavk9mSSQo7Gf6nWqrU&amp;module_id=312\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"testimonials-full\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"pttestimonial.303\",\"name\":\" Plaza Testimonial &gt; Testimonial 02\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/pttestimonial&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=303\"}]},\"format\":\"12\"}]}]}]},{\"class\":\"\",\"main_cols\":[{\"format\":\"12\",\"sub_rows\":[{\"sub_cols\":[{\"info\":{\"module\":[{\"code\":\"carousel.29\",\"name\":\"Carousel &gt; BrandSlider\",\"url\":\"http:\\/\\/ecolife1.com\\/admin\\/index.php?route=extension\\/module\\/carousel&amp;user_token=68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF&amp;module_id=29\"}]},\"format\":\"12\"}]}]}]}]}'),
(310, 'New Products 04', 'ptproducts', '{\"name\":\"New Products 04\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"New Arrivals\",\"de-de\":\"New Arrivals\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add new products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add new products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"6\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"latest\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"310\"}'),
(309, 'Best seller products 04', 'ptproducts', '{\"name\":\"Best seller products 04\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Best seller\",\"de-de\":\"Best seller\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add bestselling products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add bestselling products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"5\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"12\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"bestseller\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"309\"}'),
(232, 'Special Categories 1', 'ptfeaturedcate', '{\"name\":\"Special Categories 1\",\"status\":\"1\",\"width\":\"450\",\"height\":\"170\",\"limit\":\"10\",\"item\":\"3\",\"speed\":\"1000\",\"autoplay\":\"0\",\"rows\":\"2\",\"shownextback\":\"1\",\"shownav\":\"0\",\"slider\":\"1\",\"showcatedes\":\"0\",\"showsub\":\"0\",\"showsubnumber\":\"4\",\"use_cate_second_image\":\"1\"}'),
(304, 'Static Top Store3', 'ptstaticblock', '{\"name\":\"Static Top Store3\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-top-store3&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-top-store3.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-top-store3.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img3-top-store3.jpg&quot; alt=&quot;img3&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    \\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-top-store3&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-top-store3.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-top-store3.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img3-top-store3.jpg&quot; alt=&quot;img3&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    \\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}'),
(305, 'Featured Products 03', 'ptproducts', '{\"name\":\"Featured Products 03\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Featured Products\",\"de-de\":\"Featured Products\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add hot products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add hot products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"180\",\"slider_height\":\"180\",\"auto\":\"0\",\"item\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"0\",\"show_wishlist\":\"0\",\"show_compare\":\"0\",\"show_countdown\":\"0\",\"show_quickview\":\"0\",\"show_hover_image\":\"0\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"0\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_specified_products\":[\"42\",\"48\",\"36\",\"34\",\"32\",\"41\",\"40\",\"29\",\"30\",\"35\",\"177\",\"44\",\"43\",\"45\"],\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":305}'),
(306, 'Deals Product 03', 'ptproducts', '{\"name\":\"Deals Product 03\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"Hot Deals\",\"de-de\":\"Hot Deals\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add hot products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add hot products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"row\":{\"desktop\":\"1\",\"laptop\":\"1\",\"tablet\":\"1\",\"s_tablet\":\"1\",\"mobile\":\"1\",\"s_mobile\":\"1\"},\"limit\":\"10\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"list\",\"layout_classname\":\"countdown-module nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"1\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"specified\",\"single_specified_product\":\"\",\"single_specified_products\":[\"42\",\"41\",\"45\",\"29\"],\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"306\"}'),
(307, 'New Products 03', 'ptproducts', '{\"name\":\"New Products 03\",\"status\":\"1\",\"module_title\":{\"en-gb\":\"New Arrivals\",\"de-de\":\"New Arrivals\"},\"module_type\":\"single_tab\",\"show_module_description\":\"1\",\"module_description\":{\"en-gb\":\"&lt;p&gt;Add new products to weekly line up&lt;\\/p&gt;\",\"de-de\":\"&lt;p&gt;Add new products to weekly line up&lt;\\/p&gt;\"},\"slider_width\":\"370\",\"slider_height\":\"370\",\"auto\":\"0\",\"item\":{\"desktop\":\"6\",\"laptop\":\"5\",\"tablet\":\"4\",\"s_tablet\":\"3\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"row\":{\"desktop\":\"2\",\"laptop\":\"2\",\"tablet\":\"2\",\"s_tablet\":\"2\",\"mobile\":\"2\",\"s_mobile\":\"2\"},\"limit\":\"14\",\"speed\":\"500\",\"navigation\":\"1\",\"pagination\":\"0\",\"layout_type\":\"slider\",\"product_layout_type\":\"grid\",\"layout_classname\":\"nav-style-2\",\"show_price\":\"1\",\"show_cart\":\"1\",\"show_wishlist\":\"1\",\"show_compare\":\"1\",\"show_countdown\":\"0\",\"show_quickview\":\"1\",\"show_hover_image\":\"1\",\"show_swatches_image\":\"0\",\"show_product_description\":\"0\",\"show_label\":\"1\",\"single_product_collection\":\"special\",\"single_specified_product\":\"\",\"single_category\":\"20\",\"single_category_product_type\":\"all\",\"single_category_product\":\"\",\"single_category_product_special_type\":\"\",\"single_product_special_type\":\"latest\",\"single_image_width\":\"100\",\"single_image_height\":\"100\",\"single_image\":\"\",\"single_image_link\":\"\",\"module_id\":\"307\"}'),
(308, 'Static Top Store4', 'ptstaticblock', '{\"name\":\"Static Top Store4\",\"status\":\"1\",\"show_title\":\"0\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-middle-store1 style4&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1 col-sm-3 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-top-store4.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-top-store4.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-3 col-sm-3 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img3-top-store4.jpg&quot; alt=&quot;img3&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"},\"6\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;pt-block static-middle-store1 style4&quot;&gt;\\r\\n  &lt;div class=&quot;row&quot;&gt;\\r\\n    &lt;div class=&quot;col col-1 col-sm-3 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img1-top-store4.jpg&quot; alt=&quot;img1&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-2 col-sm-6 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img2-top-store4.jpg&quot; alt=&quot;img2&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col col-3 col-sm-3 col-xs-12&quot;&gt;\\r\\n      &lt;div class=&quot;image&quot;&gt;\\r\\n        &lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img3-top-store4.jpg&quot; alt=&quot;img3&quot;&gt;&lt;\\/a&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 4),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 1),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(5, 1, 'Color Option'),
(10, 6, 'Date &amp; Time'),
(9, 6, 'Time'),
(7, 6, 'File'),
(8, 6, 'Date'),
(6, 6, 'Textarea'),
(4, 6, 'Text'),
(2, 6, 'Checkbox'),
(1, 6, 'Radio'),
(12, 6, 'Delivery Date'),
(11, 6, 'Size'),
(5, 6, 'Color Option');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(31, 1, '', 2),
(45, 2, '', 4),
(44, 2, '', 3),
(61, 5, 'catalog/color-option/GreenYellow.jpg', 14),
(32, 1, '', 1),
(23, 2, '', 1),
(24, 2, '', 2),
(48, 11, '', 3),
(47, 11, '', 2),
(46, 11, '', 1),
(60, 5, 'catalog/color-option/Yellow.jpg', 13),
(58, 5, 'catalog/color-option/Pink.jpg', 11),
(59, 5, 'catalog/color-option/DarkTan.jpg', 12),
(54, 5, 'catalog/color-option/LightSteelBlue.jpg', 10),
(53, 5, 'catalog/color-option/Blue.jpg', 9),
(52, 5, 'catalog/color-option/Brown.jpg', 8),
(55, 11, '', 4),
(56, 11, '', 5),
(57, 11, '', 6),
(51, 5, 'catalog/color-option/Gray.jpg', 7),
(50, 5, 'catalog/color-option/White.jpg', 6),
(49, 5, 'catalog/color-option/Green.jpg', 5),
(42, 5, 'catalog/color-option/Purple.jpg', 4),
(41, 5, 'catalog/color-option/Black.jpg', 3),
(40, 5, 'catalog/color-option/Orange.jpg', 2),
(39, 5, 'catalog/color-option/Red.jpg', 1),
(63, 5, 'catalog/color-option/DarkModerateOrange.jpg', 15);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(31, 1, 1, 'Medium'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(32, 1, 1, 'Small'),
(61, 1, 5, 'GreenYellow'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'M'),
(60, 1, 5, 'Yellow'),
(59, 1, 5, 'DarkTan'),
(58, 1, 5, 'Pink'),
(47, 1, 11, 'S'),
(46, 1, 11, 'XS'),
(54, 1, 5, 'LightSteelBlue'),
(53, 1, 5, 'Blue'),
(52, 1, 5, 'Brown'),
(55, 1, 11, 'L'),
(56, 1, 11, 'XL'),
(57, 1, 11, 'XXL'),
(51, 1, 5, 'Gray'),
(50, 1, 5, 'White'),
(49, 1, 5, 'Green'),
(42, 1, 5, 'Purple'),
(41, 1, 5, 'Black'),
(40, 1, 5, 'Orange'),
(39, 1, 5, 'Red'),
(63, 1, 5, 'DarkModerateOrange'),
(57, 6, 11, 'XXL'),
(56, 6, 11, 'XL'),
(55, 6, 11, 'L'),
(52, 6, 5, 'Brown'),
(53, 6, 5, 'Blue'),
(54, 6, 5, 'LightSteelBlue'),
(46, 6, 11, 'XS'),
(47, 6, 11, 'S'),
(58, 6, 5, 'Pink'),
(59, 6, 5, 'DarkTan'),
(60, 6, 5, 'Yellow'),
(48, 6, 11, 'M'),
(24, 6, 2, 'Checkbox 2'),
(23, 6, 2, 'Checkbox 1'),
(61, 6, 5, 'GreenYellow'),
(32, 6, 1, 'Small'),
(44, 6, 2, 'Checkbox 3'),
(45, 6, 2, 'Checkbox 4'),
(31, 6, 1, 'Medium'),
(43, 6, 1, 'Large'),
(51, 6, 5, 'Gray'),
(50, 6, 5, 'White'),
(49, 6, 5, 'Green'),
(42, 6, 5, 'Purple'),
(41, 6, 5, 'Black'),
(40, 6, 5, 'Orange'),
(39, 6, 5, 'Red'),
(63, 6, 5, 'DarkModerateOrange');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2019-00', 2, 'Organic 3', 'http://ocframe3.com/', 1, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '4513.1760', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5', '2019-01-25 10:21:56', '2019-01-25 10:22:03'),
(2, 0, 'INV-2019-00', 3, 'Organic 4', 'http://corano4.com/', 1, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1592886.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5,tr;q=0.4', '2019-03-07 15:34:33', '2019-03-07 15:34:45'),
(3, 0, 'INV-2019-00', 3, 'Organic 4', 'http://ostromi4.com/', 1, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '3831.2000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5,tr;q=0.4', '2019-04-08 16:01:24', '2019-04-08 16:01:30'),
(4, 0, 'INV-2019-00', 3, 'Organic 4', 'http://ostromi4.com/', 1, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeen', 3513, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '590.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5,tr;q=0.4', '2019-04-08 16:21:05', '2019-04-08 16:21:10'),
(5, 0, 'INV-2019-00', 1, 'Organic 2', 'http://dorno2.com/', 1, 1, 'Plaza', 'Themes', 'demo@gmail.com', '0123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeenshire', 3514, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeenshire', 3514, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '2681.6000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'vi-VN,vi;q=0.8,en-US;q=0.5,en;q=0.3', '2019-10-04 15:55:45', '2019-10-04 15:55:52'),
(6, 0, 'INV-2019-00', 2, 'Organic 3', 'http://dorno3.com/', 1, 1, 'Plaza', 'Themes', 'demo@gmail.com', '0123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeenshire', 3514, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeenshire', 3514, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '5879.2000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'vi-VN,vi;q=0.8,en-US;q=0.5,en;q=0.3', '2019-10-07 21:53:26', '2019-10-07 21:53:33'),
(7, 0, 'INV-2019-00', 3, 'Organic 4', 'http://dorno4.com/', 1, 1, 'Plaza', 'Themes', 'demo@gmail.com', '0123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeenshire', 3514, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Aberdeenshire', 3514, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1577.6000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', 'vi-VN,vi;q=0.8,en-US;q=0.5,en;q=0.3', '2019-10-08 16:32:50', '2019-10-08 16:32:56'),
(8, 0, 'INV-2019-00', 3, 'Organic 4', 'http://madina4.com/', 2, 1, 'Plaza', 'Themes', 'demo@plazathemes.com', '123456789', '', '', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Blaenau Gwent', 3520, '', '[]', 'Cash On Delivery', 'cod', 'Plaza', 'Themes', '', 'NewYork', '', 'NewYork', '123456789', 'United Kingdom', 222, 'Blaenau Gwent', 3520, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '6948.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5,tr;q=0.4', '2019-12-25 09:16:21', '2019-12-25 09:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2019-01-25 10:22:01'),
(2, 1, 1, 0, '', '2019-01-25 10:22:03'),
(3, 2, 1, 0, '', '2019-03-07 15:34:39'),
(4, 2, 1, 0, '', '2019-03-07 15:34:45'),
(5, 3, 1, 0, '', '2019-04-08 16:01:28'),
(6, 3, 1, 0, '', '2019-04-08 16:01:30'),
(7, 4, 1, 0, '', '2019-04-08 16:21:08'),
(8, 4, 1, 0, '', '2019-04-08 16:21:10'),
(9, 5, 1, 0, '', '2019-10-04 15:55:49'),
(10, 5, 1, 0, '', '2019-10-04 15:55:52'),
(11, 6, 1, 0, '', '2019-10-07 21:53:31'),
(12, 6, 1, 0, '', '2019-10-07 21:53:33'),
(13, 7, 1, 0, '', '2019-10-08 16:32:53'),
(14, 7, 1, 0, '', '2019-10-08 16:32:56'),
(15, 8, 1, 0, '', '2019-12-25 09:16:27'),
(16, 8, 1, 0, '', '2019-12-25 09:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 3, 225, 0, 'Delivery Date', '2011-04-22', 'date'),
(2, 1, 7, 224, 13, 'Size', 'S', 'select'),
(3, 2, 12, 217, 2, 'Color Option', 'Purple', 'select'),
(4, 2, 12, 223, 8, 'Checkbox', 'Checkbox 1', 'checkbox'),
(5, 2, 12, 208, 0, 'Text', 'test', 'text'),
(6, 2, 12, 218, 5, 'Radio', 'Small', 'radio'),
(7, 2, 12, 209, 0, 'Textarea', 'Textarea', 'textarea'),
(8, 2, 12, 222, 0, 'File', '588b8e0c252415d9b2afc08ec094fdc9f226be69', 'file'),
(9, 2, 12, 219, 0, 'Date', '2011-02-20', 'date'),
(10, 2, 12, 221, 0, 'Time', '22:25', 'time'),
(11, 2, 12, 220, 0, 'Date &amp; Time', '2011-02-20 22:25', 'datetime'),
(12, 3, 17, 316, 0, 'Delivery Date', '2011-04-22', 'date'),
(13, 3, 21, 317, 183, 'Color Option', 'Orange', 'select'),
(14, 5, 28, 364, 294, 'Color Option', 'Green', 'select'),
(15, 5, 28, 360, 288, 'Checkbox', 'Checkbox 1', 'checkbox'),
(16, 5, 28, 358, 0, 'Text', 'test', 'text'),
(17, 5, 28, 359, 285, 'Radio', 'Small', 'radio'),
(18, 5, 28, 357, 0, 'Textarea', 'Textarea', 'textarea'),
(19, 5, 28, 365, 0, 'File', '23cd3e5a6b97db1ffea5a524629032ce4938cef4', 'file'),
(20, 5, 28, 362, 0, 'Date', '2011-02-20', 'date'),
(21, 5, 28, 361, 0, 'Time', '22:25', 'time'),
(22, 5, 28, 363, 0, 'Date &amp; Time', '2011-02-20 22:25', 'datetime'),
(23, 5, 29, 366, 300, 'Color Option', 'Gray', 'select'),
(24, 5, 30, 368, 303, 'Color Option', 'Blue', 'select'),
(25, 5, 30, 367, 0, 'Delivery Date', '2011-04-22', 'date'),
(26, 5, 31, 369, 308, 'Color Option', 'Yellow', 'select'),
(27, 5, 32, 370, 310, 'Color Option', 'Blue', 'select'),
(28, 6, 36, 386, 344, 'Color Option', 'Green', 'select'),
(29, 6, 38, 382, 334, 'Color Option', 'Yellow', 'select'),
(30, 6, 41, 383, 336, 'Color Option', 'Gray', 'select'),
(31, 6, 41, 384, 0, 'Delivery Date', '2011-04-22', 'date'),
(32, 6, 43, 385, 340, 'Color Option', 'Green', 'select'),
(33, 7, 50, 398, 367, 'Color Option', 'Gray', 'select'),
(34, 7, 50, 399, 0, 'Delivery Date', '2011-04-22', 'date'),
(35, 7, 51, 397, 365, 'Color Option', 'Yellow', 'select'),
(36, 7, 54, 400, 372, 'Color Option', 'Blue', 'select'),
(37, 8, 56, 457, 461, 'Color Option', 'LightSteelBlue', 'select'),
(38, 8, 56, 454, 452, 'Checkbox', 'Checkbox 1', 'checkbox'),
(39, 8, 56, 453, 0, 'Text', 'test', 'text'),
(40, 8, 56, 456, 457, 'Radio', 'Medium', 'radio'),
(41, 8, 56, 459, 0, 'Textarea', 'Textarea', 'textarea'),
(42, 8, 56, 458, 0, 'File', 'ebdcd0a2ac8a0bc0cb6bd5af307f014d1726b1d0', 'file'),
(43, 8, 56, 455, 0, 'Date', '2011-02-20', 'date'),
(44, 8, 56, 452, 0, 'Time', '22:25', 'time'),
(45, 8, 56, 460, 0, 'Date &amp; Time', '2011-02-20 22:25', 'datetime');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 48, 'iPod Classic 160GB 7th Generation', 'product 20', 1, '100.0000', '100.0000', '22.0000', 0),
(2, 1, 34, 'Apple iPod shuffle 2 GB Black (3rd Generation)', 'Product 7', 1, '100.0000', '100.0000', '22.0000', 0),
(3, 1, 47, 'HP LP3065 LCD Monitor 30 - 2560 x 1600 @ 60 Hz', 'Product 21', 1, '100.0000', '100.0000', '22.0000', 300),
(4, 1, 29, 'Palm Treo Pro Unlocked Phone with 2 MP Camera', 'Product 2', 1, '279.9900', '279.9900', '57.9980', 0),
(5, 1, 33, 'Samsung SyncMaster 2443BW - LCD monitor - 24&quot; Series', 'Product 6', 1, '200.0000', '200.0000', '42.0000', 0),
(6, 1, 46, 'Sony Vaio VPCS125FG (Intel Core i3-350M 2.26GHz, 4GB RAM)', 'Product 19', 1, '800.0000', '800.0000', '162.0000', 0),
(7, 1, 35, 'ViewSonic VP3268-4K PRO 32&quot; 4K Monitor with 100% sRGB', 'Product 8', 1, '110.0000', '110.0000', '24.0000', 0),
(8, 1, 30, 'Canon EOS 5D 12.8 MP Digital SLR Camera', 'Product 3', 1, '80.0000', '80.0000', '18.0000', 200),
(9, 1, 49, 'SAMSUNG Galaxy Tab E 9.6&quot; 16GB Android 6.0', 'SAM1', 1, '199.9900', '199.9900', '41.9980', 1000),
(10, 1, 45, 'MacBook Pro - 15&quot; Display with Touch Bar - Intel Core i7', 'Product 18', 1, '2000.0000', '2000.0000', '0.0000', 800),
(11, 1, 40, 'iPhone 8 Plus features a 5.5-inch Retina HD display', 'product 11', 1, '101.0000', '101.0000', '22.2000', 0),
(12, 2, 42, 'Apple Cinema 30-inch HD Flat-Panel Display', 'Product 15', 40, '100.0000', '4000.0000', '22.0000', 4000),
(13, 2, 41, 'iMac 4K 21.5-inch 2017 Mac Center', 'Product 14', 334, '90.0000', '30060.0000', '20.0000', 0),
(14, 2, 45, 'MacBook Pro - 15&quot; Display with Touch Bar - Intel Core i7', 'Product 18', 555, '1900.0000', '1054500.0000', '0.0000', 444000),
(15, 2, 29, 'Palm Treo Pro Unlocked Phone with 2 MP Camera', 'Product 2', 244, '200.0000', '48800.0000', '42.0000', 0),
(16, 2, 46, 'Sony Vaio VPCS125FG (Intel Core i3-350M 2.26GHz, 4GB RAM)', 'Product 19', 455, '800.0000', '364000.0000', '162.0000', 0),
(17, 3, 128, 'HP LP3065 LCD Monitor 30 - 2560 x 1600 @ 60 Hz', 'Store456', 1, '100.0000', '100.0000', '22.0000', 300),
(18, 3, 129, 'HTC Touch HD Windows Mobile smartphone', 'Store456', 1, '100.0000', '100.0000', '22.0000', 400),
(19, 3, 130, 'iMac 4K 21.5-inch 2017 Mac Center', 'Store456', 1, '90.0000', '90.0000', '20.0000', 0),
(20, 3, 131, 'iPhone 8 Plus features a 5.5-inch Retina HD display', 'Store456', 1, '101.0000', '101.0000', '22.2000', 0),
(21, 3, 132, 'iPod Classic 160GB 7th Generation', 'Store456', 1, '100.0000', '100.0000', '22.0000', 0),
(22, 3, 133, 'iPod nano 8 GB 2nd Generation (Black)', 'Store456', 1, '100.0000', '100.0000', '22.0000', 0),
(23, 3, 134, 'MacBook Air - 13.3&quot; Retina Display - Intel Core i5', 'Store456', 1, '1000.0000', '1000.0000', '202.0000', 700),
(24, 3, 136, 'MacBook Pro - 15&quot; Display with Touch Bar - Intel Core i7', 'Store456', 1, '1900.0000', '1900.0000', '0.0000', 800),
(25, 4, 130, 'iMac 4K 21.5-inch 2017 Mac Center', 'Store456', 1, '90.0000', '90.0000', '20.0000', 0),
(26, 4, 139, 'Samsung SyncMaster 2443BW - LCD monitor - 24&quot; Series', 'Store456', 1, '190.0000', '190.0000', '40.0000', 0),
(27, 4, 138, 'SAMSUNG Galaxy Tab E 9.6&quot; 16GB Android 6.0', 'Store456', 1, '200.0000', '200.0000', '42.0000', 1000),
(28, 5, 179, 'Apple Cinema 30-inch HD Flat-Panel Display', 'bag-product', 2, '104.0000', '208.0000', '22.8000', 200),
(29, 5, 181, 'Apple iPod Nano 2nd Generation 8GB - Black', 'bag-product', 1, '101.0000', '101.0000', '22.2000', 0),
(30, 5, 185, 'HP LP3065 LCD Monitor 30 - 2560 x 1600 @ 60 Hz', 'bag-product', 1, '102.0000', '102.0000', '22.4000', 300),
(31, 5, 188, 'iPhone 8 Plus features a 5.5-inch Retina HD display', 'bag-product', 1, '101.0000', '101.0000', '22.2000', 0),
(32, 5, 189, 'MacBook Air - 13.3&quot; Retina Display - Intel Core i5', 'bag-product', 1, '1001.0000', '1001.0000', '202.2000', 700),
(33, 5, 186, 'HTC Touch HD Windows Mobile smartphone', 'bag-product', 1, '100.0000', '100.0000', '22.0000', 400),
(34, 5, 190, 'MacBook Pro - 13&quot; Display with Touch Bar - Intel Core i5', 'bag-product', 1, '500.0000', '500.0000', '102.0000', 600),
(35, 5, 183, 'Apple iPod Touch 6th Generation Tested All Colors', 'bag-product', 1, '100.0000', '100.0000', '22.0000', 0),
(36, 6, 205, 'MacBook Air - 13.3&quot; Retina Display - Intel Core i5', 'headphone-product', 2, '1000.0000', '2000.0000', '202.0000', 1400),
(37, 6, 196, 'Apple iPod classic 160 GB Black - 7th Generation', 'headphone-product', 1, '100.0000', '100.0000', '22.0000', 0),
(38, 6, 197, 'Apple iPod Nano 2nd Generation 8GB - Black', 'headphone-product', 1, '100.0000', '100.0000', '22.0000', 0),
(39, 6, 198, 'Apple iPod shuffle 2 GB Black (3rd Generation)', 'headphone-product', 1, '100.0000', '100.0000', '22.0000', 0),
(40, 6, 199, 'Apple iPod Touch 6th Generation Tested All Colors', 'headphone-product', 1, '100.0000', '100.0000', '22.0000', 0),
(41, 6, 201, 'HP LP3065 LCD Monitor 30 - 2560 x 1600 @ 60 Hz', 'headphone-product', 1, '100.0000', '100.0000', '22.0000', 300),
(42, 6, 202, 'HTC Touch HD Windows Mobile smartphone', 'headphone-product', 1, '100.0000', '100.0000', '22.0000', 400),
(43, 6, 204, 'iPhone 8 Plus features a 5.5-inch Retina HD display', 'headphone-product', 1, '101.0000', '101.0000', '22.2000', 0),
(44, 6, 203, 'iMac 4K 21.5-inch, 3.0GHz Processor 1TB Storage', 'headphone-product', 1, '90.0000', '90.0000', '20.0000', 0),
(45, 6, 206, 'MacBook Pro - 13&quot; Display with Touch Bar - Intel Core i5', 'headphone-product', 1, '500.0000', '500.0000', '102.0000', 600),
(46, 6, 207, 'MacBook Pro - 15&quot; Display with Touch Bar - Intel Core i7', 'headphone-product', 1, '1900.0000', '1900.0000', '0.0000', 800),
(47, 7, 211, 'Apple iPod classic 160 GB Black - 7th Generation', 'jewelry-product', 1, '100.0000', '100.0000', '22.0000', 0),
(48, 7, 213, 'Apple iPod shuffle 2 GB Black (3rd Generation)', 'jewelry-product', 1, '100.0000', '100.0000', '22.0000', 0),
(49, 7, 214, 'Apple iPod Touch 6th Generation Tested All Colors', 'jewelry-product', 1, '100.0000', '100.0000', '22.0000', 0),
(50, 7, 216, 'HP LP3065 LCD Monitor 30 - 2560 x 1600 @ 60 Hz', 'jewelry-product', 1, '100.0000', '100.0000', '22.0000', 300),
(51, 7, 212, 'Apple iPod Nano 2nd Generation 8GB - Black', 'jewelry-product', 1, '100.0000', '100.0000', '22.0000', 0),
(52, 7, 217, 'HTC Touch HD Windows Mobile smartphone', 'jewelry-product', 1, '100.0000', '100.0000', '22.0000', 400),
(53, 7, 218, 'iMac 4K 21.5-inch, 3.0GHz Processor 1TB Storage', 'jewelry-product', 1, '90.0000', '90.0000', '20.0000', 0),
(54, 7, 219, 'iPhone 8 Plus features a 5.5-inch Retina HD display', 'jewelry-product', 1, '103.0000', '103.0000', '22.6000', 0),
(55, 7, 221, 'MacBook Pro - 13&quot; Display with Touch Bar - Intel Core i5', 'jewelry-product', 1, '500.0000', '500.0000', '102.0000', 600),
(56, 8, 290, 'Apple Cinema 30-inch HD Flat-Panel Display', 'fashion', 50, '114.0000', '5700.0000', '24.8000', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(13, 6, 'Chargeback'),
(12, 6, 'Reversed'),
(11, 6, 'Refunded'),
(10, 6, 'Failed'),
(9, 6, 'Canceled Reversal'),
(8, 6, 'Denied'),
(5, 6, 'Complete'),
(7, 6, 'Canceled'),
(3, 6, 'Shipped'),
(2, 6, 'Processing'),
(1, 6, 'Pending'),
(16, 6, 'Voided'),
(15, 6, 'Processed'),
(14, 6, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '4070.9800', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'tax', 'Eco Tax (-2.00)', '22.0000', 5),
(4, 1, 'tax', 'VAT (20%)', '415.1960', 5),
(5, 1, 'total', 'Total', '4513.1760', 9),
(6, 2, 'sub_total', 'Sub-Total', '1501360.0000', 1),
(7, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(8, 2, 'tax', 'Eco Tax (-2.00)', '2148.0000', 5),
(9, 2, 'tax', 'VAT (20%)', '89373.0000', 5),
(10, 2, 'total', 'Total', '1592886.0000', 9),
(11, 3, 'sub_total', 'Sub-Total', '3491.0000', 1),
(12, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(13, 3, 'tax', 'Eco Tax (-2.00)', '16.0000', 5),
(14, 3, 'tax', 'VAT (20%)', '319.2000', 5),
(15, 3, 'total', 'Total', '3831.2000', 9),
(16, 4, 'sub_total', 'Sub-Total', '480.0000', 1),
(17, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(18, 4, 'tax', 'Eco Tax (-2.00)', '8.0000', 5),
(19, 4, 'tax', 'VAT (20%)', '97.0000', 5),
(20, 4, 'total', 'Total', '590.0000', 9),
(21, 5, 'sub_total', 'Sub-Total', '2213.0000', 1),
(22, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(23, 5, 'tax', 'Eco Tax (-2.00)', '20.0000', 5),
(24, 5, 'tax', 'VAT (20%)', '443.6000', 5),
(25, 5, 'total', 'Total', '2681.6000', 9),
(26, 6, 'sub_total', 'Sub-Total', '5191.0000', 1),
(27, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(28, 6, 'tax', 'Eco Tax (-2.00)', '24.0000', 5),
(29, 6, 'tax', 'VAT (20%)', '659.2000', 5),
(30, 6, 'total', 'Total', '5879.2000', 9),
(31, 7, 'sub_total', 'Sub-Total', '1293.0000', 1),
(32, 7, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(33, 7, 'tax', 'Eco Tax (-2.00)', '20.0000', 5),
(34, 7, 'tax', 'VAT (20%)', '259.6000', 5),
(35, 7, 'total', 'Total', '1577.6000', 9),
(36, 8, 'sub_total', 'Sub-Total', '5700.0000', 1),
(37, 8, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(38, 8, 'tax', 'Eco Tax (-2.00)', '102.0000', 5),
(39, 8, 'tax', 'VAT (20%)', '1141.0000', 5),
(40, 8, 'total', 'Total', '6948.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(29, 'product', '', '', '', '', '', '', '', 753, 6, 'catalog/products/16.jpg', 6, 1, '99.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2020-04-14 11:22:43'),
(30, 'product', '', '', '', '', '', '', '', 9997, 6, 'catalog/products/7.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2009-02-03 16:59:00', '2020-04-14 13:22:51'),
(32, 'product', '', '', '', '', '', '', '', 999, 6, 'catalog/products/6.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2020-04-14 13:22:58'),
(34, 'product', '', '', '', '', '', '', '', 998, 6, 'catalog/products/4.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2020-04-14 13:23:05'),
(35, 'product', '', '', '', '', '', '', '', 999, 7, 'catalog/products/17.jpg', 5, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2020-04-14 11:22:36'),
(36, 'product', '', '', '', '', '', '', '', 994, 6, 'catalog/products/3.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2020-04-14 13:23:11'),
(40, 'product', '', '', '', '', '', '', '', 969, 5, 'catalog/products/12.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2020-04-14 11:23:15'),
(41, 'product', '', '', '', '', '', '', '', 643, 5, 'catalog/products/10.jpg', 8, 1, '90.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2020-04-14 11:23:26'),
(42, 'product', '', '', '', '', '', '', '', 300, 7, 'catalog/products/1.jpg', 8, 1, '120.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 0, '2009-02-03 21:07:37', '2020-04-14 13:23:22'),
(43, 'product', '', '', '', '', '', '', '', 927, 5, 'catalog/products/14.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2020-04-14 11:22:58'),
(44, 'product', '', '', '', '', '', '', '', 999, 5, 'catalog/products/13.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2020-04-14 11:23:09'),
(45, 'product', '', '', '', '', '', '', '', 441, 5, 'catalog/products/15.jpg', 8, 1, '120.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 21:08:17', '2020-04-14 11:22:51'),
(47, 'product', '', '', '', '', '', '', '', 1000, 5, 'catalog/products/8.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 0, '2009-02-03 21:08:40', '2020-04-14 13:22:45'),
(48, 'product', 'test 1', '', '', '', '', '', 'test 2', 993, 5, 'catalog/products/2.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2020-04-14 13:23:17'),
(177, 'product', '', '', '', '', '', '', '', 999, 7, 'catalog/products/19.jpg', 5, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2019-04-16 09:07:24', '2020-04-14 11:22:27'),
(28, 'product', '', '', '', '', '', '', '', 938, 7, 'catalog/products/9.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2020-04-14 11:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 4, 1, '8gb'),
(43, 2, 6, '1'),
(42, 3, 1, '100mhz'),
(42, 3, 6, '100mhz'),
(43, 2, 1, '1'),
(47, 2, 1, '4'),
(47, 2, 6, '4'),
(47, 4, 1, '16GB'),
(47, 4, 6, '16GB'),
(43, 4, 6, '8gb');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(32, 6, 'Apple iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'Apple iPod Touch 6th Generation Tested All Colors', '', ''),
(34, 6, 'Apple iPod shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'Apple iPod shuffle 2 GB Black (3rd Generation)', '', ''),
(48, 6, 'Apple iPod classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'Plazathemes, Table, Woo, e-Commerce', 'iPod Classic 160GB 7th Generation', '', ''),
(40, 6, 'iPhone 8 Plus', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'iPhone 8 Plus features a 5.5-inch Retina HD display', '', ''),
(28, 6, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'HTC Touch HD Windows Mobile smartphone', '', ''),
(35, 6, 'ViewSonic VP32', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', 'Plazatheme, Table, Woo, e-Commerce', 'ViewSonic VP3268-4K PRO 32&quot; 4K Monitor with 100% sRGB', '', ''),
(42, 6, 'Apple Cinema 30', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Plazatheme, Table, Woo, e-Commerce', 'Apple Cinema 30-inch HD Flat-Panel Display', '', ''),
(44, 6, 'MacBook Air - 13.3&quot;', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'MacBook Air - 13.3&quot; Retina Display - Intel Core i5', '', ''),
(45, 1, 'MacBook Pro - 15&quot;', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'Plazathemes, Table, Woo, e-Commerce', 'MacBook Pro - 15&quot; Display with Touch Bar - Intel Core i7', '', ''),
(36, 6, 'Apple iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'Apple iPod Nano 2nd Generation 8GB - Black', '', ''),
(47, 6, 'HP LP3065 LCD', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'HP LP3065 LCD Monitor 30 - 2560 x 1600 @ 60 Hz', '', ''),
(43, 6, 'MacBook Pro - 13&quot;', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'MacBook Pro - 13&quot; Display with Touch Bar - Intel Core i5', '', ''),
(177, 1, 'ViewSonic VP326', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', 'Plazatheme, Table, Woo, e-Commerce', 'ViewSonic VP3268-4K PRO 60&quot; 4K Monitor with 100% sRGB', '', ''),
(177, 6, 'ViewSonic VP326', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', 'Plazatheme, Table, Woo, e-Commerce', 'ViewSonic VP3268-4K PRO 60&quot; 4K Monitor with 100% sRGB', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'Palm Treo Pro Unlocked Phone with 2 MP Camera', '', ''),
(29, 6, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'Palm Treo Pro Unlocked Phone with 2 MP Camera', '', ''),
(32, 1, 'Apple iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'Apple iPod Touch 6th Generation Tested All Colors', '', ''),
(34, 1, 'Apple iPod shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'Apple iPod shuffle 2 GB Black (3rd Generation)', '', ''),
(48, 1, 'Apple iPod classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'Plazathemes, Table, Woo, e-Commerce', 'iPod Classic 160GB 7th Generation', '', ''),
(40, 1, 'iPhone 8 Plus', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'iPhone 8 Plus features a 5.5-inch Retina HD display', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'HTC Touch HD Windows Mobile smartphone', '', ''),
(35, 1, 'ViewSonic VP32', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', 'Plazatheme, Table, Woo, e-Commerce', 'ViewSonic VP3268-4K PRO 32&quot; 4K Monitor with 100% sRGB', '', ''),
(42, 1, 'Apple Cinema 30', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'Plazatheme, Table, Woo, e-Commerce', 'Apple Cinema 30-inch HD Flat-Panel Display', '', ''),
(44, 1, 'MacBook Air - 13.3&quot;', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'MacBook Air - 13.3&quot; Retina Display - Intel Core i5', '', ''),
(45, 6, 'MacBook Pro - 15&quot;', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'Plazathemes, Table, Woo, e-Commerce', 'MacBook Pro - 15&quot; Display with Touch Bar - Intel Core i7', '', ''),
(36, 1, 'Apple iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'Apple iPod Nano 2nd Generation 8GB - Black', '', ''),
(47, 1, 'HP LP3065 LCD', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'HP LP3065 LCD Monitor 30 - 2560 x 1600 @ 60 Hz', '', ''),
(43, 1, 'MacBook Pro - 13&quot;', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'MacBook Pro - 13&quot; Display with Touch Bar - Intel Core i5', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'Canon EOS 5D 12.8 MP Digital SLR Camera', '', ''),
(30, 6, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'Canon EOS 5D 12.8 MP Digital SLR Camera', '', ''),
(41, 1, 'iMac 4K 21.5-inch', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'iMac 4K 21.5-inch, 3.0GHz Processor 1TB Storage', '', ''),
(41, 6, 'iMac 4K 21.5-inch', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', 'Plazathemes, Table, Woo, e-Commerce', 'iMac 4K 21.5-inch, 3.0GHz Processor 1TB Storage', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(1022, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(1021, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(1020, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(28, 4),
(28, 8),
(29, 5),
(29, 10),
(30, 2),
(30, 7),
(32, 1),
(32, 11),
(34, 1),
(34, 13),
(35, 4),
(35, 14),
(36, 1),
(36, 7),
(40, 1),
(40, 7),
(41, 1),
(41, 7),
(42, 1),
(42, 12),
(43, 1),
(43, 7),
(43, 8),
(44, 1),
(44, 11),
(45, 1),
(45, 11),
(47, 3),
(47, 9),
(48, 1),
(48, 7),
(177, 4),
(177, 14);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `is_rotate` tinyint(1) DEFAULT 0,
  `product_option_value_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`, `is_rotate`, `product_option_value_id`) VALUES
(11609, 34, 'catalog/products/8.jpg', 0, 0, NULL),
(11608, 34, 'catalog/products/5.jpg', 0, 0, NULL),
(11607, 34, 'catalog/products/3.jpg', 0, 0, NULL),
(11606, 34, 'catalog/products/15.jpg', 0, 0, NULL),
(11605, 34, 'catalog/products/4.jpg', 0, 0, NULL),
(11559, 35, 'catalog/products/1.jpg', 0, 0, NULL),
(11558, 35, 'catalog/products/14.jpg', 0, 0, NULL),
(11557, 35, 'catalog/products/13.jpg', 0, 0, NULL),
(11556, 35, 'catalog/products/17.jpg', 0, 0, NULL),
(11604, 32, 'catalog/products/19.jpg', 0, 0, NULL),
(11603, 32, 'catalog/products/18.jpg', 0, 0, NULL),
(11602, 32, 'catalog/products/20.jpg', 0, 0, NULL),
(11601, 32, 'catalog/products/21.jpg', 0, 0, NULL),
(11580, 40, 'catalog/products/9.jpg', 0, 0, NULL),
(11579, 40, 'catalog/products/11.jpg', 0, 0, NULL),
(11578, 40, 'catalog/products/10.jpg', 0, 0, NULL),
(11577, 40, 'catalog/products/12.jpg', 0, 0, NULL),
(11585, 41, 'catalog/products/11.jpg', 0, 0, NULL),
(11584, 41, 'catalog/products/10.jpg', 0, 0, NULL),
(11583, 41, 'catalog/products/12.jpg', 0, 0, NULL),
(11582, 41, 'catalog/products/9.jpg', 0, 0, NULL),
(11581, 41, 'catalog/products/15.jpg', 0, 0, NULL),
(11623, 42, 'catalog/products/16.jpg', 0, 0, 284),
(11622, 42, 'catalog/products/20.jpg', 0, 1, 470),
(11621, 42, 'catalog/products/14.jpg', 0, 0, 4),
(11619, 42, 'catalog/products/1.jpg', 0, 0, 17),
(11620, 42, 'catalog/products/21.jpg', 0, 0, 239),
(11572, 43, 'catalog/products/1.jpg', 0, 0, NULL),
(11571, 43, 'catalog/products/17.jpg', 0, 0, NULL),
(11569, 43, 'catalog/products/14.jpg', 0, 0, NULL),
(11570, 43, 'catalog/products/13.jpg', 0, 0, NULL),
(11600, 32, 'catalog/products/6.jpg', 0, 0, NULL),
(11599, 30, 'catalog/products/20.jpg', 0, 0, NULL),
(11598, 30, 'catalog/products/21.jpg', 0, 0, NULL),
(11595, 30, 'catalog/products/7.jpg', 0, 0, NULL),
(11596, 30, 'catalog/products/19.jpg', 0, 0, NULL),
(11597, 30, 'catalog/products/2.jpg', 0, 0, NULL),
(11563, 29, 'catalog/products/4.jpg', 0, 0, NULL),
(11562, 29, 'catalog/products/3.jpg', 0, 0, NULL),
(11561, 29, 'catalog/products/15.jpg', 0, 0, NULL),
(11560, 29, 'catalog/products/16.jpg', 0, 0, NULL),
(11589, 28, 'catalog/products/9.jpg', 0, 0, NULL),
(11588, 28, 'catalog/products/10.jpg', 0, 0, NULL),
(11586, 28, 'catalog/products/12.jpg', 0, 0, NULL),
(11587, 28, 'catalog/products/11.jpg', 0, 0, NULL),
(11576, 44, 'catalog/products/14.jpg', 0, 1, NULL),
(11575, 44, 'catalog/products/13.jpg', 0, 0, NULL),
(11573, 44, 'catalog/products/17.jpg', 0, 0, NULL),
(11574, 44, 'catalog/products/15.jpg', 0, 0, NULL),
(11594, 47, 'catalog/products/4.jpg', 0, 0, NULL),
(11593, 47, 'catalog/products/3.jpg', 0, 0, NULL),
(11590, 47, 'catalog/products/8.jpg', 0, 0, NULL),
(11591, 47, 'catalog/products/15.jpg', 0, 0, NULL),
(11592, 47, 'catalog/products/16.jpg', 0, 0, NULL),
(11614, 48, 'catalog/products/2.jpg', 0, 0, NULL),
(11615, 48, 'catalog/products/18.jpg', 0, 0, NULL),
(11616, 48, 'catalog/products/21.jpg', 0, 0, NULL),
(11617, 48, 'catalog/products/20.jpg', 0, 0, NULL),
(11618, 48, 'catalog/products/19.jpg', 0, 0, NULL),
(11551, 177, 'catalog/products/18.jpg', 0, 0, NULL),
(11552, 177, 'catalog/products/20.jpg', 0, 0, NULL),
(11553, 177, 'catalog/products/19.jpg', 0, 0, NULL),
(11554, 177, 'catalog/products/2.jpg', 0, 0, NULL),
(11555, 177, 'catalog/products/21.jpg', 0, 0, NULL),
(11610, 36, 'catalog/products/5.jpg', 0, 0, NULL),
(11611, 36, 'catalog/products/3.jpg', 0, 0, NULL),
(11612, 36, 'catalog/products/4.jpg', 0, 1, NULL),
(11613, 36, 'catalog/products/15.jpg', 0, 0, NULL),
(11564, 45, 'catalog/products/16.jpg', 0, 0, NULL),
(11565, 45, 'catalog/products/15.jpg', 0, 0, NULL),
(11566, 45, 'catalog/products/4.jpg', 0, 0, NULL),
(11567, 45, 'catalog/products/3.jpg', 0, 0, NULL),
(11568, 45, 'catalog/products/5.jpg', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(342, 177, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(208, 42, 4, 'test', 1),
(217, 42, 5, '', 1),
(223, 42, 2, '', 1),
(218, 42, 1, '', 1),
(209, 42, 6, '', 1),
(221, 42, 9, '22:25', 1),
(219, 42, 8, '2011-02-20', 1),
(222, 42, 7, '', 1),
(220, 42, 10, '2011-02-20 22:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 9, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(10, 223, 42, 2, 44, 2691, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(5, 218, 42, 1, 32, 54, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(6, 218, 42, 1, 31, 141, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(7, 218, 42, 1, 43, 296, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(284, 217, 42, 5, 39, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(239, 217, 42, 5, 49, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(470, 217, 42, 5, 52, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(4, 217, 42, 5, 58, 87, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(17, 217, 42, 5, 59, 999, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(8, 223, 42, 2, 23, 6, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(9, 223, 42, 2, 24, 190, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(226, 342, 177, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(225, 342, 177, 11, 47, 9, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(224, 342, 177, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 30),
(28, 34),
(28, 35),
(28, 43),
(28, 44),
(28, 45),
(28, 47),
(28, 48),
(28, 177),
(29, 30),
(29, 35),
(29, 40),
(29, 41),
(29, 42),
(29, 177),
(30, 28),
(30, 29),
(30, 30),
(30, 34),
(30, 35),
(30, 42),
(30, 43),
(30, 45),
(30, 47),
(30, 48),
(30, 177),
(34, 28),
(34, 30),
(34, 41),
(34, 47),
(35, 28),
(35, 29),
(35, 30),
(35, 40),
(35, 41),
(35, 42),
(35, 47),
(35, 48),
(36, 44),
(40, 29),
(40, 35),
(40, 42),
(40, 44),
(40, 177),
(41, 29),
(41, 34),
(41, 35),
(41, 42),
(41, 43),
(41, 44),
(41, 45),
(41, 47),
(41, 48),
(41, 177),
(42, 29),
(42, 30),
(42, 35),
(42, 40),
(42, 41),
(42, 43),
(42, 44),
(42, 45),
(42, 47),
(42, 48),
(42, 177),
(43, 28),
(43, 30),
(43, 41),
(43, 42),
(43, 47),
(44, 28),
(44, 36),
(44, 40),
(44, 41),
(44, 42),
(44, 47),
(44, 48),
(45, 28),
(45, 30),
(45, 41),
(45, 42),
(45, 47),
(47, 28),
(47, 30),
(47, 34),
(47, 35),
(47, 41),
(47, 42),
(47, 43),
(47, 44),
(47, 45),
(47, 47),
(47, 48),
(47, 177),
(48, 28),
(48, 30),
(48, 35),
(48, 41),
(48, 42),
(48, 44),
(48, 47),
(48, 177),
(177, 28),
(177, 29),
(177, 30),
(177, 40),
(177, 41),
(177, 42),
(177, 47),
(177, 48);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(1460, 42, 1, 100),
(1458, 47, 1, 300),
(1457, 28, 1, 400),
(1455, 43, 1, 600),
(1459, 30, 1, 200),
(1456, 44, 1, 700),
(1454, 45, 1, 800);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(1254, 42, 1, 1, '80.0000', '2019-03-20', '2024-03-20'),
(1253, 30, 1, 2, '90.0000', '2018-05-30', '2020-05-30'),
(1252, 30, 1, 1, '80.0000', '2018-05-30', '2020-08-15'),
(1249, 29, 1, 0, '80.0000', '2019-02-14', '2025-02-14'),
(1251, 41, 1, 0, '70.0000', '2019-02-14', '2025-02-14'),
(1250, 45, 1, 0, '90.0000', '2019-02-28', '2024-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 18),
(28, 20),
(28, 24),
(28, 25),
(28, 46),
(28, 164),
(28, 180),
(28, 194),
(28, 196),
(28, 198),
(28, 220),
(28, 221),
(28, 222),
(28, 246),
(28, 292),
(28, 293),
(28, 295),
(28, 297),
(28, 299),
(28, 300),
(28, 325),
(29, 18),
(29, 20),
(29, 24),
(29, 164),
(29, 173),
(29, 181),
(29, 183),
(29, 194),
(29, 195),
(29, 198),
(29, 221),
(29, 224),
(29, 225),
(29, 292),
(29, 325),
(30, 18),
(30, 20),
(30, 24),
(30, 25),
(30, 46),
(30, 164),
(30, 173),
(30, 181),
(30, 182),
(30, 185),
(30, 194),
(30, 220),
(30, 221),
(30, 292),
(30, 293),
(30, 295),
(30, 297),
(30, 299),
(30, 300),
(30, 325),
(30, 351),
(32, 18),
(32, 20),
(32, 25),
(32, 46),
(32, 164),
(32, 173),
(32, 180),
(32, 182),
(32, 185),
(32, 197),
(32, 220),
(32, 221),
(32, 246),
(32, 262),
(32, 292),
(32, 293),
(32, 295),
(32, 297),
(32, 299),
(32, 300),
(32, 325),
(32, 351),
(34, 18),
(34, 20),
(34, 24),
(34, 25),
(34, 46),
(34, 69),
(34, 164),
(34, 180),
(34, 181),
(34, 194),
(34, 197),
(34, 262),
(34, 292),
(34, 293),
(34, 295),
(34, 299),
(34, 300),
(34, 325),
(35, 18),
(35, 20),
(35, 24),
(35, 25),
(35, 46),
(35, 57),
(35, 164),
(35, 173),
(35, 180),
(35, 181),
(35, 183),
(35, 195),
(35, 196),
(35, 197),
(35, 220),
(35, 221),
(35, 292),
(35, 297),
(35, 325),
(36, 18),
(36, 20),
(36, 46),
(36, 173),
(36, 182),
(36, 185),
(36, 194),
(36, 198),
(36, 220),
(36, 221),
(36, 262),
(36, 292),
(36, 295),
(36, 300),
(36, 325),
(40, 18),
(40, 24),
(40, 25),
(40, 164),
(40, 173),
(40, 180),
(40, 181),
(40, 182),
(40, 185),
(40, 194),
(40, 220),
(40, 221),
(40, 222),
(40, 246),
(40, 262),
(40, 292),
(40, 293),
(40, 295),
(40, 297),
(40, 299),
(40, 301),
(40, 325),
(41, 18),
(41, 25),
(41, 46),
(41, 164),
(41, 182),
(41, 198),
(41, 220),
(41, 221),
(41, 222),
(41, 246),
(41, 292),
(41, 293),
(41, 295),
(41, 297),
(41, 299),
(41, 301),
(41, 325),
(42, 18),
(42, 20),
(42, 46),
(42, 69),
(42, 164),
(42, 180),
(42, 197),
(42, 262),
(42, 292),
(42, 293),
(42, 295),
(42, 300),
(42, 325),
(43, 18),
(43, 20),
(43, 24),
(43, 25),
(43, 164),
(43, 173),
(43, 181),
(43, 182),
(43, 183),
(43, 185),
(43, 194),
(43, 195),
(43, 196),
(43, 198),
(43, 220),
(43, 221),
(43, 225),
(43, 262),
(43, 292),
(43, 293),
(43, 301),
(43, 325),
(43, 351),
(44, 18),
(44, 20),
(44, 25),
(44, 46),
(44, 164),
(44, 181),
(44, 182),
(44, 185),
(44, 194),
(44, 195),
(44, 197),
(44, 220),
(44, 221),
(44, 246),
(44, 262),
(44, 292),
(44, 293),
(44, 295),
(44, 297),
(44, 299),
(44, 301),
(44, 325),
(44, 351),
(45, 18),
(45, 20),
(45, 46),
(45, 164),
(45, 180),
(45, 194),
(45, 195),
(45, 196),
(45, 198),
(45, 220),
(45, 221),
(45, 224),
(45, 225),
(45, 246),
(45, 292),
(45, 295),
(45, 297),
(45, 299),
(45, 325),
(47, 18),
(47, 20),
(47, 25),
(47, 46),
(47, 164),
(47, 173),
(47, 181),
(47, 196),
(47, 197),
(47, 220),
(47, 221),
(47, 246),
(47, 292),
(47, 293),
(47, 295),
(47, 297),
(47, 299),
(47, 300),
(47, 325),
(47, 351),
(48, 18),
(48, 20),
(48, 24),
(48, 173),
(48, 180),
(48, 182),
(48, 185),
(48, 198),
(48, 220),
(48, 292),
(48, 295),
(48, 297),
(48, 300),
(48, 325),
(48, 351),
(177, 18),
(177, 20),
(177, 24),
(177, 25),
(177, 57),
(177, 164),
(177, 173),
(177, 180),
(177, 181),
(177, 183),
(177, 195),
(177, 196),
(177, 197),
(177, 220),
(177, 221),
(177, 292),
(177, 297),
(177, 325);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(30, 3, 0),
(47, 3, 0),
(28, 2, 0),
(41, 0, 0),
(40, 2, 0),
(48, 1, 0),
(36, 1, 0),
(34, 1, 0),
(32, 2, 0),
(43, 3, 0),
(44, 0, 0),
(45, 0, 0),
(29, 1, 0),
(35, 1, 0),
(35, 0, 0),
(29, 0, 0),
(45, 1, 0),
(44, 1, 0),
(43, 2, 0),
(32, 3, 0),
(34, 0, 0),
(36, 0, 0),
(48, 0, 0),
(40, 3, 0),
(41, 1, 0),
(28, 3, 0),
(47, 2, 0),
(30, 2, 0),
(42, 3, 0),
(42, 2, 0),
(30, 1, 0),
(30, 0, 0),
(35, 2, 0),
(35, 3, 0),
(29, 2, 0),
(29, 3, 0),
(45, 2, 0),
(45, 3, 0),
(44, 2, 0),
(44, 3, 0),
(32, 1, 0),
(32, 0, 0),
(34, 2, 0),
(34, 3, 0),
(36, 2, 0),
(36, 3, 0),
(40, 1, 0),
(40, 0, 0),
(41, 2, 0),
(41, 3, 0),
(28, 1, 0),
(28, 0, 0),
(47, 1, 0),
(47, 0, 0),
(42, 1, 0),
(42, 0, 0),
(177, 3, 0),
(177, 2, 0),
(43, 1, 0),
(43, 0, 0),
(48, 2, 0),
(48, 3, 0),
(177, 0, 0),
(177, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(28, 1),
(28, 2),
(28, 3),
(29, 0),
(29, 1),
(29, 2),
(29, 3),
(30, 0),
(30, 1),
(30, 2),
(30, 3),
(32, 0),
(32, 1),
(32, 2),
(32, 3),
(34, 0),
(34, 1),
(34, 2),
(34, 3),
(35, 0),
(35, 1),
(35, 2),
(35, 3),
(36, 0),
(36, 1),
(36, 2),
(36, 3),
(40, 0),
(40, 1),
(40, 2),
(40, 3),
(41, 0),
(41, 1),
(41, 2),
(41, 3),
(42, 0),
(42, 1),
(42, 2),
(42, 3),
(43, 0),
(43, 1),
(43, 2),
(43, 3),
(44, 0),
(44, 1),
(44, 2),
(44, 3),
(45, 0),
(45, 1),
(45, 2),
(45, 3),
(47, 0),
(47, 1),
(47, 2),
(47, 3),
(48, 0),
(48, 1),
(48, 2),
(48, 3),
(177, 0),
(177, 1),
(177, 2),
(177, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu`
--

CREATE TABLE `oc_ptmegamenu` (
  `menu_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `menu_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptmegamenu`
--

INSERT INTO `oc_ptmegamenu` (`menu_id`, `status`, `name`, `menu_type`) VALUES
(4, 1, 'Horizontal Menu 01', 'horizontal'),
(8, 1, 'Mobile Menu 01', 'mobile');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_sub_item`
--

CREATE TABLE `oc_ptmegamenu_sub_item` (
  `sub_menu_item_id` int(11) NOT NULL,
  `parent_menu_item_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_sub_item_description`
--

CREATE TABLE `oc_ptmegamenu_sub_item_description` (
  `sub_menu_item_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_top_item`
--

CREATE TABLE `oc_ptmegamenu_top_item` (
  `menu_item_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `has_title` tinyint(1) NOT NULL DEFAULT 0,
  `has_link` tinyint(1) NOT NULL DEFAULT 0,
  `has_child` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `item_align` varchar(255) NOT NULL,
  `sub_menu_type` varchar(255) NOT NULL,
  `sub_menu_content_type` varchar(255) NOT NULL,
  `sub_menu_content_columns` int(11) DEFAULT NULL,
  `sub_menu_content_width` varchar(100) DEFAULT NULL,
  `sub_menu_content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptmegamenu_top_item`
--

INSERT INTO `oc_ptmegamenu_top_item` (`menu_item_id`, `menu_id`, `status`, `has_title`, `has_link`, `has_child`, `category_id`, `position`, `name`, `link`, `icon`, `item_align`, `sub_menu_type`, `sub_menu_content_type`, `sub_menu_content_columns`, `sub_menu_content_width`, `sub_menu_content`) VALUES
(160, 4, 1, 1, 1, 0, 0, 0, 'Home', 'index.php?route=common/home', '', 'left', 'mega', 'widget', 1, '', '[]'),
(161, 4, 1, 1, 1, 1, 18, 0, 'Shop', 'index.php?route=product/category&amp;path=18', '', 'left', 'mega', 'widget', 1, '1050px', '{\"widget\":[{\"name\":\"Canned Goods\",\"category_id\":\"220\",\"show_image\":\"0\",\"show_child\":\"1\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"0\"},{\"name\":\"Dry Fruits &amp; Snacks\",\"category_id\":\"351\",\"show_image\":\"0\",\"show_child\":\"1\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"1\"},{\"name\":\"Fresh Fruits\",\"category_id\":\"46\",\"show_image\":\"0\",\"show_child\":\"1\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"2\"},{\"name\":\"Fresh Vegetables\",\"category_id\":\"20\",\"show_image\":\"0\",\"show_child\":\"1\",\"type\":\"category\",\"cols\":\"3\",\"position\":\"3\"},{\"name\":{\"1\":\"\",\"6\":\"\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block static-bottom-menu&quot;&gt;\\r\\n&lt;div class=&quot;image&quot;&gt;\\r\\n&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-bottom-menu.jpg&quot; alt=&quot;img-menu&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\",\"6\":\"&lt;div class=&quot;pt-block static-bottom-menu&quot;&gt;\\r\\n&lt;div class=&quot;image&quot;&gt;\\r\\n&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/ptblock\\/img-bottom-menu.jpg&quot; alt=&quot;img-menu&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"12\",\"position\":\"4\"}],\"category\":[{\"name\":\"Canned Goods\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"5\",\"category_id\":\"220\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Dry Fruits &amp; Snacks\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"6\",\"category_id\":\"351\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Fresh Fruits\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"7\",\"category_id\":\"46\",\"show_image\":\"0\",\"show_child\":\"0\"},{\"name\":\"Fresh Vegetables\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"8\",\"category_id\":\"20\",\"show_image\":\"0\",\"show_child\":\"0\"}]}'),
(162, 4, 1, 1, 1, 1, 25, 0, 'Accessories', 'index.php?route=product/category&amp;path=25', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Mice and Trackballs\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"29\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Scanners\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"31\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(163, 4, 1, 1, 1, 0, 0, 0, 'Specials', 'index.php?route=product/special', '', 'left', 'mega', 'widget', 1, '', '[]'),
(164, 4, 1, 1, 1, 0, 0, 0, 'Contact us', 'index.php?route=information/contact', '', 'left', 'mega', 'widget', 1, '', '[]'),
(165, 4, 1, 1, 1, 0, 0, 0, 'About us', 'index.php?route=information/information&amp;information_id=4', '', 'left', 'mega', 'widget', 1, '', '[]'),
(166, 4, 1, 1, 1, 1, 0, 0, 'Blog', 'index.php?route=plaza/blog', '', 'left', 'mega', 'widget', 1, '1140px', '{\"widget\":[{\"name\":{\"1\":\"Blog Page With Left Column\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=left&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-left-column.jpg&quot; alt=&quot;blog-page-left-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"0\"},{\"name\":{\"1\":\"Blog Page With Right Column\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=right&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-right-column.jpg&quot; alt=&quot;blog-page-right-column&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"1\"},{\"name\":{\"1\":\"Blog Page With Grid Style\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=grid&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-grid-style.jpg&quot; alt=&quot;blog-page-grid-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"2\"},{\"name\":{\"1\":\"Blog Page With List Style\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog&amp;amp;layout=full&amp;amp;content=list&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/blog-page-list-style.jpg&quot; alt=&quot;blog-page-list-style&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"3\"},{\"name\":{\"1\":\"Categories Post Page\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/category&amp;amp;post_list_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/categories-post-page.jpg&quot; alt=&quot;categories-post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"4\"},{\"name\":{\"1\":\"Post Page\"},\"content\":{\"1\":\"&lt;div class=&quot;pt-block&quot;&gt;&lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;index.php?route=plaza\\/blog\\/post&amp;amp;post_id=1&quot;&gt;&lt;img src=&quot;image\\/catalog\\/blog-menu\\/post-page.jpg&quot; alt=&quot;post-page&quot;&gt;&lt;\\/a&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"show_title\":\"1\",\"type\":\"html\",\"cols\":\"4\",\"position\":\"5\"}]}'),
(181, 8, 1, 1, 1, 0, 0, 0, 'Home', '', '', 'left', 'mega', 'widget', 1, '', '[]'),
(182, 8, 1, 1, 1, 1, 18, 0, 'Shop', 'index.php?route=product/category&amp;path=18', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Canned Goods\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"220\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Dry Fruits &amp; Snacks\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"351\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Fresh Fruits\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"2\",\"category_id\":\"46\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Fresh Vegetables\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"3\",\"category_id\":\"20\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(183, 8, 1, 1, 1, 0, 69, 0, 'Bread &amp; Bakery', 'index.php?route=product/category&amp;path=69', '', 'left', 'flyout', 'category', 1, '', '[]'),
(184, 8, 1, 1, 1, 0, 247, 0, 'Eggs &amp; Dairy', 'index.php?route=product/category&amp;path=247', '', 'left', 'mega', 'category', 1, '', '[]'),
(185, 8, 1, 1, 1, 1, 25, 0, 'Accessories', 'index.php?route=product/category&amp;path=25', '', 'left', 'flyout', 'category', 1, '', '{\"category\":[{\"name\":\"Mice and Trackballs\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"0\",\"category_id\":\"29\",\"show_image\":\"0\",\"show_child\":\"1\"},{\"name\":\"Scanners\",\"type\":\"category\",\"cols\":\"2\",\"position\":\"1\",\"category_id\":\"31\",\"show_image\":\"0\",\"show_child\":\"1\"}]}'),
(186, 8, 1, 1, 1, 0, 0, 0, 'Specials', 'index.php?route=product/special', '', 'left', 'mega', 'widget', 1, '', '[]'),
(187, 8, 1, 1, 1, 0, 0, 0, 'Contact us', 'index.php?route=information/contact', '', 'left', 'mega', 'widget', 1, '', '[]'),
(188, 8, 1, 1, 1, 0, 0, 0, 'About us', 'index.php?route=information/information&amp;information_id=4', '', 'left', 'mega', 'widget', 1, '', '[]'),
(189, 8, 1, 1, 1, 0, 0, 0, 'Blog', 'index.php?route=plaza/blog', '', 'left', 'mega', 'widget', 1, '', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptmegamenu_top_item_description`
--

CREATE TABLE `oc_ptmegamenu_top_item_description` (
  `menu_item_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptmegamenu_top_item_description`
--

INSERT INTO `oc_ptmegamenu_top_item_description` (`menu_item_id`, `language_id`, `title`) VALUES
(160, 1, 'Home'),
(160, 6, 'Home'),
(161, 1, 'Shop'),
(161, 6, 'Shop'),
(162, 1, 'Accessories'),
(162, 6, 'Accessories'),
(163, 1, 'Specials'),
(163, 6, 'Specials'),
(164, 1, 'Contact us'),
(164, 6, 'Contact us'),
(165, 1, 'About us'),
(165, 6, 'About us'),
(166, 1, 'Blog'),
(166, 6, 'Blog'),
(168, 1, 'Mobile &amp; Tablets'),
(168, 6, 'Mobile &amp; Tablets'),
(171, 1, 'Studio &amp; Professional'),
(171, 6, 'Studio &amp; Professional'),
(172, 1, 'TV &amp; Audio'),
(172, 6, 'TV &amp; Audio'),
(173, 1, 'Games &amp; Consoles '),
(173, 6, 'Games &amp; Consoles '),
(174, 1, 'Business &amp; Office'),
(174, 6, 'Business &amp; Office'),
(175, 1, 'Cameras'),
(175, 6, 'Cameras'),
(176, 1, 'Headphones'),
(176, 6, 'Headphones'),
(177, 1, 'Handmade'),
(177, 6, 'Handmade'),
(178, 1, 'Video Games'),
(178, 6, 'Video Games'),
(179, 1, 'Smartwatch'),
(179, 6, 'Smartwatch'),
(180, 1, 'Accessories'),
(180, 6, 'Accessories'),
(181, 1, 'Home'),
(181, 6, 'Home'),
(182, 1, 'Shop'),
(182, 6, 'Shop'),
(183, 1, 'Bread &amp; Bakery'),
(183, 6, 'Bread &amp; Bakery'),
(184, 1, 'Eggs &amp; Dairy'),
(184, 6, 'Eggs &amp; Dairy'),
(185, 1, 'Accessories'),
(185, 6, 'Accessories'),
(186, 1, 'Specials'),
(186, 6, 'Specials'),
(187, 1, 'Contact us'),
(187, 6, 'Contact us'),
(188, 1, 'About us'),
(188, 6, 'About us'),
(189, 1, 'Blog'),
(189, 6, 'Blog'),
(193, 1, 'Computers &amp; Laptops'),
(193, 6, 'Computers &amp; Laptops'),
(194, 1, 'Mobile &amp; Tablets'),
(194, 6, 'Mobile &amp; Tablets'),
(195, 1, 'Home'),
(195, 6, 'Home'),
(196, 1, 'Shop'),
(196, 6, 'Shop'),
(197, 1, 'Accessories'),
(197, 6, 'Accessories'),
(198, 1, 'Specials'),
(198, 6, 'Specials'),
(199, 1, 'Contact Us'),
(199, 6, 'Contact Us'),
(200, 1, 'About us'),
(200, 6, 'About us'),
(201, 1, 'Blog'),
(201, 6, 'Blog'),
(202, 1, 'Home'),
(202, 6, 'Home'),
(203, 1, 'Shop'),
(203, 6, 'Shop'),
(204, 1, 'Accessories'),
(204, 6, 'Accessories'),
(205, 1, 'Specials'),
(205, 6, 'Specials'),
(206, 1, 'Contact Us'),
(206, 6, 'Contact Us'),
(207, 1, 'About Us'),
(207, 6, 'About Us'),
(208, 1, 'Blog'),
(208, 6, 'Blog'),
(209, 1, 'Home'),
(209, 6, 'Home'),
(210, 1, 'Shop'),
(210, 6, 'Shop'),
(211, 1, 'Accessories'),
(211, 6, 'Accessories'),
(212, 1, 'Contact Us'),
(212, 6, 'Contact Us'),
(213, 1, 'About Us'),
(213, 6, 'About Us'),
(214, 1, 'Specials'),
(214, 6, 'Specials'),
(215, 1, 'Blog'),
(215, 6, 'Blog'),
(216, 1, 'Home'),
(216, 6, 'Home'),
(217, 1, 'Shop'),
(217, 6, 'Shop'),
(218, 1, 'Accessories'),
(218, 6, 'Accessories'),
(219, 1, 'Specials'),
(219, 6, 'Specials'),
(220, 1, 'Contact Us'),
(220, 6, 'Contact Us'),
(221, 1, 'About Us'),
(221, 6, 'About Us'),
(222, 1, 'Blog'),
(222, 6, 'Blog'),
(223, 1, 'Home'),
(223, 6, 'Home'),
(224, 1, 'Shop'),
(224, 6, 'Shop'),
(225, 1, 'Accessories'),
(225, 6, 'Accessories'),
(226, 1, 'Specials'),
(226, 6, 'Specials'),
(227, 1, 'About Us'),
(227, 6, 'About Us'),
(228, 1, 'Contact Us'),
(228, 6, 'Contact Us'),
(229, 1, 'Blog'),
(229, 6, 'Blog'),
(230, 1, 'Home'),
(230, 6, 'Home'),
(231, 1, 'Shop'),
(231, 6, 'Shop'),
(232, 1, 'Accessories'),
(232, 6, 'Accessories'),
(233, 1, 'Specials'),
(233, 6, 'Specials'),
(234, 1, 'About Us'),
(234, 6, 'About Us'),
(235, 1, 'Contact Us'),
(235, 6, 'Contact Us'),
(236, 1, 'Blog'),
(236, 6, 'Blog');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptnewsletter_email`
--

CREATE TABLE `oc_ptnewsletter_email` (
  `newsletter_id` int(11) NOT NULL,
  `subscribe` tinyint(1) NOT NULL DEFAULT 1,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost`
--

CREATE TABLE `oc_ptpost` (
  `post_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost`
--

INSERT INTO `oc_ptpost` (`post_id`, `status`, `sort_order`, `image`, `author`, `date_added`, `date_modified`) VALUES
(1, 1, 1, 'catalog/blog/4.jpg', 'Plaza', '2019-01-18 14:52:58', '2020-04-14 16:17:15'),
(2, 1, 1, 'catalog/blog/1.jpg', 'Plaza', '2019-01-18 14:58:13', '2020-04-14 16:16:50'),
(3, 1, 1, 'catalog/blog/3.jpg', 'Plaza', '2019-01-18 15:38:18', '2020-04-14 16:17:05'),
(4, 1, 1, 'catalog/blog/5.jpg', 'Plaza', '2019-01-18 15:41:48', '2020-04-14 16:17:25'),
(5, 1, 1, 'catalog/blog/7.jpg', 'Plaza', '2019-01-18 15:45:16', '2020-04-14 16:17:40'),
(6, 1, 1, 'catalog/blog/6.jpg', 'Plaza', '2019-01-31 13:48:39', '2020-04-14 16:17:33'),
(7, 1, 1, 'catalog/blog/2.jpg', 'Plaza', '2019-10-03 09:49:40', '2020-04-14 16:16:58'),
(8, 1, 1, 'catalog/blog/8.jpg', 'Plaza', '2019-12-23 09:12:04', '2020-04-14 16:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_comment`
--

CREATE TABLE `oc_ptpost_comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `reply_comment_id` int(11) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `date_submitted` datetime NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_description`
--

CREATE TABLE `oc_ptpost_description` (
  `post_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `intro_text` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_description`
--

INSERT INTO `oc_ptpost_description` (`post_id`, `language_id`, `name`, `description`, `intro_text`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'Children Left Home Alone For 4 Days In TV Experiment 2', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend. The show, called Alone at Home, recruited four families to participate in the experiment. Each couple left their children home alone for four days and cameras were placed all throughout the home to keep watch on the kids.&lt;/p&gt;\r\n&lt;h4&gt;Experiment.&lt;/h4&gt;\r\n&lt;p&gt;Four couples participated in a risky experiment that saw them leaving their kids home alone for four days. The experiment is meant to see how the kids would react with their four days of freedom.&lt;/p&gt;\r\n&lt;h4&gt;Freedom.&lt;/h4&gt;\r\n&lt;p&gt;The kids are between the ages of eight and 16, and all reacted differently to their newfound freedom. The eldest teen from one family ended up taking advantage of her parents’ liquor cabinet, while other kids feasted on sweets.&lt;/p&gt;\r\n&lt;h4&gt;Rules.&lt;/h4&gt;\r\n&lt;p&gt;&quot;There was no-one to say: “No, you can’t do this”, just me. I make my own rules,” said Millie, the 16-year-old daughter of Natalie and Dan. She was left home alone along with siblings 14-year-old Ethan and 13-year-old Laurel.&lt;/p&gt;', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home...&lt;/p&gt;', 'Children Left Home Alone For 4 Days In TV Experiment 2', 'A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend.', 'Children Left Home,Home Alone'),
(1, 6, 'Children Left Home Alone For 4 Days In TV Experiment 2', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend. The show, called Alone at Home, recruited four families to participate in the experiment. Each couple left their children home alone for four days and cameras were placed all throughout the home to keep watch on the kids.&lt;/p&gt;\r\n&lt;h4&gt;Experiment.&lt;/h4&gt;\r\n&lt;p&gt;Four couples participated in a risky experiment that saw them leaving their kids home alone for four days. The experiment is meant to see how the kids would react with their four days of freedom.&lt;/p&gt;\r\n&lt;h4&gt;Freedom.&lt;/h4&gt;\r\n&lt;p&gt;The kids are between the ages of eight and 16, and all reacted differently to their newfound freedom. The eldest teen from one family ended up taking advantage of her parents’ liquor cabinet, while other kids feasted on sweets.&lt;/p&gt;\r\n&lt;h4&gt;Rules.&lt;/h4&gt;\r\n&lt;p&gt;&quot;There was no-one to say: “No, you can’t do this”, just me. I make my own rules,” said Millie, the 16-year-old daughter of Natalie and Dan. She was left home alone along with siblings 14-year-old Ethan and 13-year-old Laurel.&lt;/p&gt;', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home...&lt;/p&gt;', 'Children Left Home Alone For 4 Days In TV Experiment 2', 'A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend.', 'Children Left Home,Home Alone'),
(2, 1, 'Celebrity Daughter Opens Up About Having Her Eye Color', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. There are some things, like the color of your eyes however, that aren’t as easy to change. Here, one reality tv star has opened up about having had her eyes surgically altered to look gray instead of her natural brown. While the procedure was done several years ago, Zonnique Pullins says she has since regretted undergoing the procedure.&lt;/p&gt;\r\n&lt;h4&gt;Procedure.&lt;/h4&gt;\r\n&lt;p&gt;Zonnique Pullins has recently opened up about undergoing a procedure that saw her having her eyes changed from brown to gray. Pullins has since had the procedure reversed and says she wouldn’t recommend it to anyone else.&lt;/p&gt;\r\n&lt;h4&gt;Inspiration.&lt;/h4&gt;\r\n&lt;p&gt;According to Yahoo, Pullins was inspired by her own mother, reality TV star Tameka “Tiny” Harris, who also got the procedure done back in 2014. Shortly after, Pullins had it done herself.&lt;/p&gt;\r\n&lt;h4&gt;Different.&lt;/h4&gt;\r\n&lt;p&gt;“They told me the procedure would be quick, like five or 10 minutes in my eye. They woke me up and it was very blurry, and then it kind of just fades in. I looked in the mirror and I was like, ‘They’re amazing.’ I just wanted to do something different. And I have the right to do that. It’s my body,” Harris told ABC News.&lt;/p&gt;', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look.&lt;/p&gt;', 'Celebrity Daughter Opens Up About Having Her Eye Color Changed', 'People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. ', 'Celebrity,Daughter Opens,Eye Color Changed'),
(2, 6, 'Celebrity Daughter Opens Up About Having Her Eye Color', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. There are some things, like the color of your eyes however, that aren’t as easy to change. Here, one reality tv star has opened up about having had her eyes surgically altered to look gray instead of her natural brown. While the procedure was done several years ago, Zonnique Pullins says she has since regretted undergoing the procedure.&lt;/p&gt;\r\n&lt;h4&gt;Procedure.&lt;/h4&gt;\r\n&lt;p&gt;Zonnique Pullins has recently opened up about undergoing a procedure that saw her having her eyes changed from brown to gray. Pullins has since had the procedure reversed and says she wouldn’t recommend it to anyone else.&lt;/p&gt;\r\n&lt;h4&gt;Inspiration.&lt;/h4&gt;\r\n&lt;p&gt;According to Yahoo, Pullins was inspired by her own mother, reality TV star Tameka “Tiny” Harris, who also got the procedure done back in 2014. Shortly after, Pullins had it done herself.&lt;/p&gt;\r\n&lt;h4&gt;Different.&lt;/h4&gt;\r\n&lt;p&gt;“They told me the procedure would be quick, like five or 10 minutes in my eye. They woke me up and it was very blurry, and then it kind of just fades in. I looked in the mirror and I was like, ‘They’re amazing.’ I just wanted to do something different. And I have the right to do that. It’s my body,” Harris told ABC News.&lt;/p&gt;', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look.&lt;/p&gt;', 'Celebrity Daughter Opens Up About Having Her Eye Color Changed', 'People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. ', 'Celebrity,Daughter Opens,Eye Color Changed'),
(3, 1, 'Children Left Home Alone For 4 Days In TV Experiment', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend. The show, called Alone at Home, recruited four families to participate in the experiment. Each couple left their children home alone for four days and cameras were placed all throughout the home to keep watch on the kids.&lt;/p&gt;\r\n&lt;h4&gt;Experiment.&lt;/h4&gt;\r\n&lt;p&gt;Four couples participated in a risky experiment that saw them leaving their kids home alone for four days. The experiment is meant to see how the kids would react with their four days of freedom.&lt;/p&gt;\r\n&lt;h4&gt;Freedom.&lt;/h4&gt;\r\n&lt;p&gt;The kids are between the ages of eight and 16, and all reacted differently to their newfound freedom. The eldest teen from one family ended up taking advantage of her parents’ liquor cabinet, while other kids feasted on sweets.&lt;/p&gt;\r\n&lt;h4&gt;Rules.&lt;/h4&gt;\r\n&lt;p&gt;&quot;There was no-one to say: “No, you can’t do this”, just me. I make my own rules,” said Millie, the 16-year-old daughter of Natalie and Dan. She was left home alone along with siblings 14-year-old Ethan and 13-year-old Laurel.&lt;/p&gt;', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home...&lt;/p&gt;', 'Children Left Home Alone For 4 Days In TV Experiment', 'A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend.', 'Children Left Home,Home Alone'),
(3, 6, 'Children Left Home Alone For 4 Days In TV Experiment', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend. The show, called Alone at Home, recruited four families to participate in the experiment. Each couple left their children home alone for four days and cameras were placed all throughout the home to keep watch on the kids.&lt;/p&gt;\r\n&lt;h4&gt;Experiment.&lt;/h4&gt;\r\n&lt;p&gt;Four couples participated in a risky experiment that saw them leaving their kids home alone for four days. The experiment is meant to see how the kids would react with their four days of freedom.&lt;/p&gt;\r\n&lt;h4&gt;Freedom.&lt;/h4&gt;\r\n&lt;p&gt;The kids are between the ages of eight and 16, and all reacted differently to their newfound freedom. The eldest teen from one family ended up taking advantage of her parents’ liquor cabinet, while other kids feasted on sweets.&lt;/p&gt;\r\n&lt;h4&gt;Rules.&lt;/h4&gt;\r\n&lt;p&gt;&quot;There was no-one to say: “No, you can’t do this”, just me. I make my own rules,” said Millie, the 16-year-old daughter of Natalie and Dan. She was left home alone along with siblings 14-year-old Ethan and 13-year-old Laurel.&lt;/p&gt;', '&lt;p&gt;A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home...&lt;/p&gt;', 'Children Left Home Alone For 4 Days In TV Experiment', 'A new reality show in the UK conducted an experiment to see just how kids and teens would behave after being left home alone for the weekend.', 'Children Left Home,Home Alone'),
(4, 1, 'Lotto Winner Offering Up Money To Any Man That Will Date Her', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man. Jane Park won the lottery when she was just 17, but now at 23, is looking for someone to settle down. She is currently offering up a generous “allowance” to the right man and has set up a website where men can apply for the coveted position.&lt;/p&gt;\r\n&lt;h4&gt;Settling down.&lt;/h4&gt;\r\n&lt;p&gt;Like many young people, Jane Park is looking for someone to settle down with. Unfortunately, the last few years have left her feeling jaded as she’s had her heart broken multiple times.&lt;/p&gt;\r\n&lt;h4&gt;Relationships.&lt;/h4&gt;\r\n&lt;p&gt;According to the Mirror UK, the 23-year-old has been in relationships in the past, but they’ve always ended because she never knows if the men she dates truly want to be with her or are only in it for the money.&lt;/p&gt;\r\n&lt;h4&gt;Bad luck.&lt;/h4&gt;\r\n&lt;p&gt;“Jane is amazing and has so much to give but she has found herself alone again as since she won, she’s had terrible luck. She’s never sure whether she is being loved for herself or for her bank balance,” a source told the Mirror UK.&lt;/p&gt;', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.&lt;/p&gt;', 'Lotto Winner Offering Up Money To Any Man That Will Date Her', 'The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.', 'Lotto Winner,Money To Any Man'),
(4, 6, 'Lotto Winner Offering Up Money To Any Man That Will Date Her', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man. Jane Park won the lottery when she was just 17, but now at 23, is looking for someone to settle down. She is currently offering up a generous “allowance” to the right man and has set up a website where men can apply for the coveted position.&lt;/p&gt;\r\n&lt;h4&gt;Settling down.&lt;/h4&gt;\r\n&lt;p&gt;Like many young people, Jane Park is looking for someone to settle down with. Unfortunately, the last few years have left her feeling jaded as she’s had her heart broken multiple times.&lt;/p&gt;\r\n&lt;h4&gt;Relationships.&lt;/h4&gt;\r\n&lt;p&gt;According to the Mirror UK, the 23-year-old has been in relationships in the past, but they’ve always ended because she never knows if the men she dates truly want to be with her or are only in it for the money.&lt;/p&gt;\r\n&lt;h4&gt;Bad luck.&lt;/h4&gt;\r\n&lt;p&gt;“Jane is amazing and has so much to give but she has found herself alone again as since she won, she’s had terrible luck. She’s never sure whether she is being loved for herself or for her bank balance,” a source told the Mirror UK.&lt;/p&gt;', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.&lt;/p&gt;', 'Lotto Winner Offering Up Money To Any Man That Will Date Her', 'The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.', 'Lotto Winner,Money To Any Man'),
(5, 1, 'People are Willing to Lie When It Comes to Money', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies that will make others or ourselves feel better. Research has found that we tell at least one lie a day and about 40 percent of people would happily lie if they knew they could get away with it.&lt;/p&gt;\r\n&lt;h4&gt;Lying.&lt;/h4&gt;\r\n&lt;p&gt;There’s just something about being human that makes us prone to lying. Even if we try to live our lives as honestly as possible, we can’t help but bend the truth. Most of our lies aren’t even told with malicious intent either.&lt;/p&gt;\r\n&lt;h4&gt;Dishonest.&lt;/h4&gt;\r\n&lt;p&gt;New research has found that 40 percent of people are pretty dishonest--and don’t feel bad about it. The study was performed by researchers involved with a new detective show The Heist.&lt;/p&gt;\r\n&lt;h4&gt;Scenario.&lt;/h4&gt;\r\n&lt;p&gt;Two-thousand volunteers were presented with a scenario: if they found money sticking out of an ATM, how would they react? They were given the options of either taking it as though it were their lucky day or be honest and turn it in.&lt;/p&gt;', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies...&lt;/p&gt;', 'People are Willing to Lie When It Comes to Money, According to Research', 'Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious.', 'People are Willing to Lie When It Comes to Money'),
(5, 6, 'People are Willing to Lie When It Comes to Money', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies that will make others or ourselves feel better. Research has found that we tell at least one lie a day and about 40 percent of people would happily lie if they knew they could get away with it.&lt;/p&gt;\r\n&lt;h4&gt;Lying.&lt;/h4&gt;\r\n&lt;p&gt;There’s just something about being human that makes us prone to lying. Even if we try to live our lives as honestly as possible, we can’t help but bend the truth. Most of our lies aren’t even told with malicious intent either.&lt;/p&gt;\r\n&lt;h4&gt;Dishonest.&lt;/h4&gt;\r\n&lt;p&gt;New research has found that 40 percent of people are pretty dishonest--and don’t feel bad about it. The study was performed by researchers involved with a new detective show The Heist.&lt;/p&gt;\r\n&lt;h4&gt;Scenario.&lt;/h4&gt;\r\n&lt;p&gt;Two-thousand volunteers were presented with a scenario: if they found money sticking out of an ATM, how would they react? They were given the options of either taking it as though it were their lucky day or be honest and turn it in.&lt;/p&gt;', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies...&lt;/p&gt;', 'People are Willing to Lie When It Comes to Money, According to Research', 'Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious.', 'People are Willing to Lie When It Comes to Money'),
(6, 1, 'Lotto Winner Offering Up Money To Any Man That Will Date Her2', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man. Jane Park won the lottery when she was just 17, but now at 23, is looking for someone to settle down. She is currently offering up a generous “allowance” to the right man and has set up a website where men can apply for the coveted position.&lt;/p&gt;\r\n&lt;h4&gt;Settling down.&lt;/h4&gt;\r\n&lt;p&gt;Like many young people, Jane Park is looking for someone to settle down with. Unfortunately, the last few years have left her feeling jaded as she’s had her heart broken multiple times.&lt;/p&gt;\r\n&lt;h4&gt;Relationships.&lt;/h4&gt;\r\n&lt;p&gt;According to the Mirror UK, the 23-year-old has been in relationships in the past, but they’ve always ended because she never knows if the men she dates truly want to be with her or are only in it for the money.&lt;/p&gt;\r\n&lt;h4&gt;Bad luck.&lt;/h4&gt;\r\n&lt;p&gt;“Jane is amazing and has so much to give but she has found herself alone again as since she won, she’s had terrible luck. She’s never sure whether she is being loved for herself or for her bank balance,” a source told the Mirror UK.&lt;/p&gt;', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.&lt;/p&gt;', 'Lotto Winner Offering Up Money To Any Man That Will Date Her2', 'The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.', 'Lotto Winner,Money To Any Man'),
(6, 6, 'Lotto Winner Offering Up Money To Any Man That Will Date Her2', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man. Jane Park won the lottery when she was just 17, but now at 23, is looking for someone to settle down. She is currently offering up a generous “allowance” to the right man and has set up a website where men can apply for the coveted position.&lt;/p&gt;\r\n&lt;h4&gt;Settling down.&lt;/h4&gt;\r\n&lt;p&gt;Like many young people, Jane Park is looking for someone to settle down with. Unfortunately, the last few years have left her feeling jaded as she’s had her heart broken multiple times.&lt;/p&gt;\r\n&lt;h4&gt;Relationships.&lt;/h4&gt;\r\n&lt;p&gt;According to the Mirror UK, the 23-year-old has been in relationships in the past, but they’ve always ended because she never knows if the men she dates truly want to be with her or are only in it for the money.&lt;/p&gt;\r\n&lt;h4&gt;Bad luck.&lt;/h4&gt;\r\n&lt;p&gt;“Jane is amazing and has so much to give but she has found herself alone again as since she won, she’s had terrible luck. She’s never sure whether she is being loved for herself or for her bank balance,” a source told the Mirror UK.&lt;/p&gt;', '&lt;p&gt;The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.&lt;/p&gt;', 'Lotto Winner Offering Up Money To Any Man That Will Date Her2', 'The UK’s youngest lottery winner has recently revealed she is searching for a boyfriend, and is willing to pay for the right man.', 'Lotto Winner,Money To Any Man'),
(7, 1, 'Celebrity Daughter Opens Up About Having Her Eye Color 2', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. There are some things, like the color of your eyes however, that aren’t as easy to change. Here, one reality tv star has opened up about having had her eyes surgically altered to look gray instead of her natural brown. While the procedure was done several years ago, Zonnique Pullins says she has since regretted undergoing the procedure.&lt;/p&gt;\r\n&lt;h4&gt;Procedure.&lt;/h4&gt;\r\n&lt;p&gt;Zonnique Pullins has recently opened up about undergoing a procedure that saw her having her eyes changed from brown to gray. Pullins has since had the procedure reversed and says she wouldn’t recommend it to anyone else.&lt;/p&gt;\r\n&lt;h4&gt;Inspiration.&lt;/h4&gt;\r\n&lt;p&gt;According to Yahoo, Pullins was inspired by her own mother, reality TV star Tameka “Tiny” Harris, who also got the procedure done back in 2014. Shortly after, Pullins had it done herself.&lt;/p&gt;\r\n&lt;h4&gt;Different.&lt;/h4&gt;\r\n&lt;p&gt;“They told me the procedure would be quick, like five or 10 minutes in my eye. They woke me up and it was very blurry, and then it kind of just fades in. I looked in the mirror and I was like, ‘They’re amazing.’ I just wanted to do something different. And I have the right to do that. It’s my body,” Harris told ABC News.&lt;/p&gt;', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look.&lt;/p&gt;', 'Celebrity Daughter Opens Up About Having Her Eye Color Changed 2', 'People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. ', 'Celebrity,Daughter Opens,Eye Color Changed'),
(7, 6, 'Celebrity Daughter Opens Up About Having Her Eye Color 2', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. There are some things, like the color of your eyes however, that aren’t as easy to change. Here, one reality tv star has opened up about having had her eyes surgically altered to look gray instead of her natural brown. While the procedure was done several years ago, Zonnique Pullins says she has since regretted undergoing the procedure.&lt;/p&gt;\r\n&lt;h4&gt;Procedure.&lt;/h4&gt;\r\n&lt;p&gt;Zonnique Pullins has recently opened up about undergoing a procedure that saw her having her eyes changed from brown to gray. Pullins has since had the procedure reversed and says she wouldn’t recommend it to anyone else.&lt;/p&gt;\r\n&lt;h4&gt;Inspiration.&lt;/h4&gt;\r\n&lt;p&gt;According to Yahoo, Pullins was inspired by her own mother, reality TV star Tameka “Tiny” Harris, who also got the procedure done back in 2014. Shortly after, Pullins had it done herself.&lt;/p&gt;\r\n&lt;h4&gt;Different.&lt;/h4&gt;\r\n&lt;p&gt;“They told me the procedure would be quick, like five or 10 minutes in my eye. They woke me up and it was very blurry, and then it kind of just fades in. I looked in the mirror and I was like, ‘They’re amazing.’ I just wanted to do something different. And I have the right to do that. It’s my body,” Harris told ABC News.&lt;/p&gt;', '&lt;p&gt;People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look.&lt;/p&gt;', 'Celebrity Daughter Opens Up About Having Her Eye Color Changed 2', 'People are constantly changing things about themselves--- from their hair styles to their clothes, to even the way they physically look. ', 'Celebrity,Daughter Opens,Eye Color Changed'),
(8, 1, 'People are Willing to Lie When It Comes to Money 2', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies that will make others or ourselves feel better. Research has found that we tell at least one lie a day and about 40 percent of people would happily lie if they knew they could get away with it.&lt;/p&gt;\r\n&lt;h4&gt;Lying.&lt;/h4&gt;\r\n&lt;p&gt;There’s just something about being human that makes us prone to lying. Even if we try to live our lives as honestly as possible, we can’t help but bend the truth. Most of our lies aren’t even told with malicious intent either.&lt;/p&gt;\r\n&lt;h4&gt;Dishonest.&lt;/h4&gt;\r\n&lt;p&gt;New research has found that 40 percent of people are pretty dishonest--and don’t feel bad about it. The study was performed by researchers involved with a new detective show The Heist.&lt;/p&gt;\r\n&lt;h4&gt;Scenario.&lt;/h4&gt;\r\n&lt;p&gt;Two-thousand volunteers were presented with a scenario: if they found money sticking out of an ATM, how would they react? They were given the options of either taking it as though it were their lucky day or be honest and turn it in.&lt;/p&gt;', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies...&lt;/p&gt;', 'People are Willing to Lie When It Comes to Money, According to Research', 'Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious.', 'People are Willing to Lie When It Comes to Money'),
(8, 6, 'People are Willing to Lie When It Comes to Money 2', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies that will make others or ourselves feel better. Research has found that we tell at least one lie a day and about 40 percent of people would happily lie if they knew they could get away with it.&lt;/p&gt;\r\n&lt;h4&gt;Lying.&lt;/h4&gt;\r\n&lt;p&gt;There’s just something about being human that makes us prone to lying. Even if we try to live our lives as honestly as possible, we can’t help but bend the truth. Most of our lies aren’t even told with malicious intent either.&lt;/p&gt;\r\n&lt;h4&gt;Dishonest.&lt;/h4&gt;\r\n&lt;p&gt;New research has found that 40 percent of people are pretty dishonest--and don’t feel bad about it. The study was performed by researchers involved with a new detective show The Heist.&lt;/p&gt;\r\n&lt;h4&gt;Scenario.&lt;/h4&gt;\r\n&lt;p&gt;Two-thousand volunteers were presented with a scenario: if they found money sticking out of an ATM, how would they react? They were given the options of either taking it as though it were their lucky day or be honest and turn it in.&lt;/p&gt;', '&lt;p&gt;Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious. We frequently tell lies...&lt;/p&gt;', 'People are Willing to Lie When It Comes to Money, According to Research', 'Humans have a problem: we really like to lie. And most of the lies that we tell aren’t even malicious.', 'People are Willing to Lie When It Comes to Money');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_list`
--

CREATE TABLE `oc_ptpost_list` (
  `post_list_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_list`
--

INSERT INTO `oc_ptpost_list` (`post_list_id`, `status`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_list_description`
--

CREATE TABLE `oc_ptpost_list_description` (
  `post_list_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_list_description`
--

INSERT INTO `oc_ptpost_list_description` (`post_list_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'Organic', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'Organic', 'Organic', 'Organic'),
(1, 6, 'Organic', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'Organic', 'Organic', 'Organic'),
(2, 1, 'Furniture', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'Furniture', 'Furniture', 'Furniture'),
(2, 6, 'Furniture', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;', 'Furniture', 'Furniture', 'Furniture'),
(3, 1, 'Fashion', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&lt;/p&gt;', 'Fashion', 'Fashion', 'Fashion'),
(3, 6, 'Fashion', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&lt;/p&gt;', 'Fashion', 'Fashion', 'Fashion'),
(4, 1, 'Digital', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&lt;/p&gt;', 'Digital', 'Digital', 'Digital'),
(4, 6, 'Digital', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n&lt;/p&gt;', 'Digital', 'Digital', 'Digital');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_list_to_store`
--

CREATE TABLE `oc_ptpost_list_to_store` (
  `post_list_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_list_to_store`
--

INSERT INTO `oc_ptpost_list_to_store` (`post_list_id`, `store_id`) VALUES
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(1, 0),
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_related_post`
--

CREATE TABLE `oc_ptpost_related_post` (
  `post_id` int(11) NOT NULL,
  `related_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_related_post`
--

INSERT INTO `oc_ptpost_related_post` (`post_id`, `related_post_id`) VALUES
(7, 2),
(2, 7),
(3, 2),
(2, 3),
(3, 7),
(7, 3),
(1, 2),
(2, 1),
(1, 7),
(7, 1),
(1, 3),
(3, 1),
(4, 2),
(2, 4),
(4, 7),
(7, 4),
(4, 3),
(3, 4),
(4, 1),
(1, 4),
(6, 2),
(2, 6),
(6, 3),
(3, 6),
(6, 1),
(1, 6),
(5, 2),
(2, 5),
(5, 3),
(3, 5),
(5, 1),
(1, 5),
(5, 4),
(4, 5),
(8, 2),
(2, 8),
(8, 7),
(7, 8),
(8, 3),
(3, 8),
(8, 1),
(1, 8),
(8, 4),
(4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_to_list`
--

CREATE TABLE `oc_ptpost_to_list` (
  `post_list_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_to_list`
--

INSERT INTO `oc_ptpost_to_list` (`post_list_id`, `post_id`) VALUES
(4, 2),
(4, 7),
(4, 3),
(4, 1),
(4, 4),
(4, 6),
(4, 5),
(4, 8),
(2, 4),
(2, 6),
(2, 5),
(2, 8),
(3, 5),
(3, 8),
(1, 3),
(1, 1),
(1, 4),
(1, 6),
(1, 5),
(1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptpost_to_store`
--

CREATE TABLE `oc_ptpost_to_store` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptpost_to_store`
--

INSERT INTO `oc_ptpost_to_store` (`post_id`, `store_id`) VALUES
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(7, 0),
(7, 1),
(7, 2),
(7, 3),
(3, 0),
(3, 1),
(3, 2),
(3, 3),
(1, 0),
(1, 1),
(1, 2),
(1, 3),
(4, 0),
(4, 1),
(4, 2),
(4, 3),
(6, 0),
(6, 1),
(6, 2),
(6, 3),
(5, 0),
(5, 1),
(5, 2),
(5, 3),
(8, 0),
(8, 1),
(8, 2),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptslider`
--

CREATE TABLE `oc_ptslider` (
  `ptslider_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `auto` tinyint(1) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `hover` tinyint(1) DEFAULT NULL,
  `nextback` tinyint(1) DEFAULT NULL,
  `contrl` tinyint(1) DEFAULT NULL,
  `effect` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptslider`
--

INSERT INTO `oc_ptslider` (`ptslider_id`, `name`, `status`, `auto`, `delay`, `hover`, `nextback`, `contrl`, `effect`) VALUES
(1, 'Home slideshow 1', 1, 1, 5000, 1, 1, 1, ''),
(2, 'Home slideshow 2', 1, 1, 5000, 1, 1, 1, ''),
(3, 'Home slideshow 3', 1, 1, 5000, 1, 1, 1, ''),
(4, 'Home slideshow 4', 1, 1, 5000, 1, 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptslider_image`
--

CREATE TABLE `oc_ptslider_image` (
  `ptslider_image_id` int(11) NOT NULL,
  `ptslider_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `slider_store` varchar(110) DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `secondary_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptslider_image`
--

INSERT INTO `oc_ptslider_image` (`ptslider_image_id`, `ptslider_id`, `link`, `type`, `slider_store`, `image`, `secondary_image`) VALUES
(671, 1, '#', 1, '0,0', 'catalog/slider/slider1-store1.jpg', NULL),
(672, 1, '#', 2, '0,0', 'catalog/slider/slider2-store1.jpg', NULL),
(673, 2, '#', 1, '1,0,1,0', 'catalog/slider/slider1-store2.jpg', NULL),
(674, 2, '#', 2, '1,0,1,0', 'catalog/slider/slider2-store2.jpg', NULL),
(675, 3, '#   ', 1, '2,0,2,0', 'catalog/slider/slider1-store3.jpg', NULL),
(676, 3, '#', 2, '2,0,2,0', 'catalog/slider/slider2-store3.jpg', NULL),
(681, 4, '#', 1, '3,0,3,0', 'catalog/slider/slider1-store4.jpg', NULL),
(682, 4, '#', 2, '3,0,3,0', 'catalog/slider/slider2-store4.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_ptslider_image_description`
--

CREATE TABLE `oc_ptslider_image_description` (
  `ptslider_image_id` int(11) NOT NULL,
  `ptslider_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_ptslider_image_description`
--

INSERT INTO `oc_ptslider_image_description` (`ptslider_image_id`, `ptslider_id`, `language_id`, `title`, `sub_title`, `description`) VALUES
(671, 1, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;not fried not baked&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Freeze Dried Fruits &lt;br&gt;\r\nPineapple Coconut&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;Free Shipping On Qualified Orders Over $35&lt;/p&gt;'),
(671, 1, 6, '', '', '&lt;p class=&quot;text1&quot;&gt;not fried not baked&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Freeze Dried Fruits &lt;br&gt;\r\nPineapple Coconut&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;Free Shipping On Qualified Orders Over $35&lt;/p&gt;'),
(672, 1, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;SALE JUST GOT BETTER&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Beats Pill Small 2.0 &lt;br&gt;\r\nWireless Speaker&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;A Vintage Speaker For The Minimalist&lt;/p&gt;'),
(672, 1, 6, '', '', '&lt;p class=&quot;text1&quot;&gt;SALE JUST GOT BETTER&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Beats Pill Small 2.0 &lt;br&gt;\r\nWireless Speaker&lt;/p&gt;\r\n&lt;p class=&quot;text3&quot;&gt;A Vintage Speaker For The Minimalist&lt;/p&gt;'),
(673, 2, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;coffee cream &amp;amp; chocolate&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Girella Motta Cacao &lt;br&gt;\r\nSoft Sponge Cake&lt;/p&gt;\r\n'),
(673, 2, 6, '', '', '&lt;p class=&quot;text1&quot;&gt;coffee cream &amp;amp; chocolate&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Girella Motta Cacao &lt;br&gt;\r\nSoft Sponge Cake&lt;/p&gt;\r\n'),
(674, 2, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;Cacao frutti rossi&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;La Girella Motta &lt;br&gt;\r\nDiventa Rosa&lt;/p&gt;\r\n'),
(674, 2, 6, '', '', '&lt;p class=&quot;text1&quot;&gt;Cacao frutti rossi&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;La Girella Motta &lt;br&gt;\r\nDiventa Rosa&lt;/p&gt;\r\n'),
(675, 3, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;100% Natural&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Fresh Lemonade &lt;br&gt;\r\nSummer Drinks&lt;/p&gt;'),
(675, 3, 6, '', '', '&lt;p class=&quot;text1&quot;&gt;100% Natural&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Fresh Lemonade &lt;br&gt;\r\nSummer Drinks&lt;/p&gt;'),
(676, 3, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;100% pure &amp;amp; nature&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Fresh Mango Juice &lt;br&gt;\r\nJust Fruit\r\n&lt;/p&gt;\r\n'),
(676, 3, 6, '', '', '&lt;p class=&quot;text1&quot;&gt;100% pure &amp;amp; nature&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Fresh Mango Juice &lt;br&gt;\r\nJust Fruit\r\n&lt;/p&gt;\r\n'),
(681, 4, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;100% Natural&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Fresh Vegetables &lt;br&gt;\r\nAnd Fruits&lt;/p&gt;\r\n'),
(681, 4, 6, '', '', '&lt;p class=&quot;text1&quot;&gt;100% Natural&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Fresh Vegetables &lt;br&gt;\r\nAnd Fruits&lt;/p&gt;\r\n'),
(682, 4, 1, '', '', '&lt;p class=&quot;text1&quot;&gt;best offer sale !&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Up To 70% Off &lt;br&gt;\r\nFresh Juice&lt;/p&gt;\r\n'),
(682, 4, 6, '', '', '&lt;p class=&quot;text1&quot;&gt;best offer sale !&lt;/p&gt;\r\n&lt;p class=&quot;text2&quot;&gt;Up To 70% Off &lt;br&gt;\r\nFresh Juice&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pttestimonial`
--

CREATE TABLE `oc_pttestimonial` (
  `pttestimonial_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pttestimonial`
--

INSERT INTO `oc_pttestimonial` (`pttestimonial_id`, `status`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pttestimonial_description`
--

CREATE TABLE `oc_pttestimonial_description` (
  `pttestimonial_id` int(11) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pttestimonial_description`
--

INSERT INTO `oc_pttestimonial_description` (`pttestimonial_id`, `language_id`, `image`, `customer_name`, `content`) VALUES
(1, 0, 'catalog/testimonials/ttm1.png', 'Sandy Wilcke', 'All Perfect !! I have three sites with magento , this theme is the best !! Excellent support , advice theme installation package , sorry for English, are Italian but I had no problem !! Thank you !'),
(2, 0, 'catalog/testimonials/ttm2.png', 'Sandy Wilcke', 'Perfect Themes and the best of all that you have many options to choose! Best Support team ever!Very fast responding and experts on their fields! Thank you very much! Are to be congratulated.'),
(3, 0, 'catalog/testimonials/ttm1.png', 'Sandy Wilcke', 'All Perfect !! I have three sites with magento , this theme is the best !! Excellent support , advice theme installation package , sorry for English, are Italian but I had no problem !! Thank you !'),
(4, 0, 'catalog/testimonials/ttm2.png', 'Sandy Wilcke', 'Perfect Themes and the best of all that you have many options to choose! Best Support team ever!Very fast responding and experts on their fields! Thank you very much! Are to be congratulated.');

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 4, 'Refunded'),
(2, 4, 'Credit Issued'),
(3, 4, 'Replacement Sent'),
(1, 5, 'Refunded'),
(2, 5, 'Credit Issued'),
(3, 5, 'Replacement Sent'),
(1, 6, 'Refunded'),
(2, 6, 'Credit Issued'),
(3, 6, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 4, 'Dead On Arrival'),
(2, 4, 'Received Wrong Item'),
(3, 4, 'Order Error'),
(4, 4, 'Faulty, please supply details'),
(5, 4, 'Other, please supply details'),
(1, 5, 'Dead On Arrival'),
(2, 5, 'Received Wrong Item'),
(3, 5, 'Order Error'),
(4, 5, 'Faulty, please supply details'),
(5, 5, 'Other, please supply details'),
(1, 6, 'Dead On Arrival'),
(2, 6, 'Received Wrong Item'),
(3, 6, 'Order Error'),
(4, 6, 'Faulty, please supply details'),
(5, 6, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 4, 'Pending'),
(3, 4, 'Complete'),
(2, 4, 'Awaiting Products'),
(1, 5, 'Pending'),
(3, 5, 'Complete'),
(2, 5, 'Awaiting Products'),
(1, 6, 'Pending'),
(3, 6, 'Complete'),
(2, 6, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 42, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 3, 1, '2018-05-06 22:22:26', '2019-02-11 08:37:39'),
(2, 30, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 4, 1, '2018-05-06 22:22:49', '2019-02-11 08:37:34'),
(3, 47, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 2, 1, '2018-05-06 22:23:13', '2019-02-11 08:37:29'),
(4, 28, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 5, 1, '2018-05-06 22:23:32', '2019-02-11 08:37:24'),
(5, 41, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 1, 1, '2018-05-06 22:23:59', '2019-02-11 08:37:18'),
(6, 40, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 5, 1, '2018-05-06 22:24:17', '2019-02-11 08:37:13'),
(7, 48, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 3, 1, '2018-05-06 22:24:35', '2019-02-11 08:37:09'),
(8, 36, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 4, 1, '2018-05-06 22:24:57', '2019-02-11 08:37:04'),
(9, 34, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 3, 1, '2018-05-06 22:25:26', '2019-02-11 08:36:59'),
(10, 32, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 5, 1, '2018-05-06 22:26:25', '2019-02-11 08:36:53'),
(11, 43, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 3, 1, '2018-05-06 22:26:45', '2019-02-11 08:36:48'),
(12, 44, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 4, 1, '2018-05-06 22:27:08', '2019-02-11 08:36:42'),
(13, 45, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 2, 1, '2018-05-06 22:27:27', '2019-02-11 08:36:37'),
(15, 29, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 5, 1, '2018-05-06 22:28:11', '2019-02-11 08:36:32'),
(16, 35, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 3, 1, '2018-05-06 22:28:29', '2019-02-11 08:36:12'),
(132, 177, 0, 'Plaza Themes', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', 3, 1, '2018-05-06 22:25:26', '2019-02-11 08:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(5935, 3, 1, 'product_id=28', 'htc-touch-hd'),
(5927, 3, 1, 'product_id=40', 'iphone'),
(5975, 3, 1, 'post_id=7', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed2'),
(816, 0, 1, 'product_id=31', 'nikon-d300'),
(5959, 3, 1, 'product_id=48', 'ipod-classic'),
(5955, 3, 1, 'product_id=36', 'ipod-nano'),
(2128, 1, 1, 'category_id=236', 'ultimate'),
(1121, 0, 1, 'category_id=25', 'accessories'),
(4345, 3, 1, 'information_id=4', 'about_us'),
(4344, 2, 1, 'information_id=4', 'about_us'),
(4350, 3, 1, 'information_id=6', 'delivery'),
(4349, 2, 1, 'information_id=6', 'delivery'),
(4355, 3, 1, 'information_id=3', 'privacy'),
(4354, 2, 1, 'information_id=3', 'privacy'),
(4360, 3, 1, 'information_id=5', 'terms'),
(4359, 2, 1, 'information_id=5', 'terms'),
(1122, 1, 1, 'category_id=25', 'accessories'),
(1123, 2, 1, 'category_id=25', 'accessories'),
(1124, 3, 1, 'category_id=25', 'accessories'),
(1145, 0, 1, 'category_id=29', 'mice-and-trackballs'),
(1146, 1, 1, 'category_id=29', 'mice-and-trackballs'),
(1147, 2, 1, 'category_id=29', 'mice-and-trackballs'),
(1148, 3, 1, 'category_id=29', 'mice-and-trackballs'),
(1149, 0, 1, 'category_id=31', 'scanners'),
(1150, 1, 1, 'category_id=31', 'scanners'),
(1151, 2, 1, 'category_id=31', 'scanners'),
(1152, 3, 1, 'category_id=31', 'scanners'),
(1153, 0, 1, 'information/contact', 'information-contact'),
(1154, 0, 1, 'information/sitemap', 'information-sitemap'),
(1155, 0, 1, 'account/login', 'account-login'),
(1156, 0, 1, 'account/return/add', 'account-return-add'),
(1157, 0, 1, 'product/special', 'product-special'),
(1158, 0, 1, 'affiliate/login', 'affiliate-login'),
(1159, 0, 1, 'account/voucher', 'account-voucher'),
(1160, 0, 1, 'product/manufacturer', 'product-manufacturer'),
(1161, 0, 1, 'account/order', 'account-order'),
(5879, 3, 1, 'category_id=297', 'pizza'),
(4348, 1, 1, 'information_id=6', 'delivery'),
(4358, 1, 1, 'information_id=5', 'terms'),
(4353, 1, 1, 'information_id=3', 'privacy'),
(5674, 2, 1, 'category_id=173', 'outdoor'),
(5213, 2, 1, 'category_id=293', 'mobile-tablets'),
(3440, 1, 1, 'category_id=298', 'tvs'),
(3441, 2, 1, 'category_id=298', 'tvs'),
(5919, 3, 1, 'product_id=43', 'macbook'),
(5915, 3, 1, 'product_id=45', 'macbook-pro'),
(5911, 3, 1, 'product_id=29', 'palm-treo-pro'),
(5878, 2, 1, 'category_id=297', 'pizza'),
(5366, 0, 1, 'category_id=336', 'smart-home'),
(5550, 3, 1, 'category_id=299', 'smartwatch'),
(5549, 2, 1, 'category_id=299', 'smartwatch'),
(5673, 2, 1, 'category_id=180', 'houseware'),
(5672, 2, 1, 'category_id=194', 'home-decor'),
(1389, 0, 1, 'category_id=89', 'hyllis'),
(1390, 1, 1, 'category_id=89', 'hyllis'),
(1391, 2, 1, 'category_id=89', 'hyllis'),
(1392, 3, 1, 'category_id=89', 'hyllis'),
(1397, 0, 1, 'category_id=90', 'bathroom-vanities'),
(1398, 1, 1, 'category_id=90', 'bathroom-vanities'),
(1399, 2, 1, 'category_id=90', 'bathroom-vanities'),
(1400, 3, 1, 'category_id=90', 'bathroom-vanities'),
(1401, 0, 1, 'category_id=91', 'bathroom-storage'),
(1402, 1, 1, 'category_id=91', 'bathroom-storage'),
(1403, 2, 1, 'category_id=91', 'bathroom-storage'),
(1404, 3, 1, 'category_id=91', 'bathroom-storage'),
(1405, 0, 1, 'category_id=92', 'sinks'),
(1406, 1, 1, 'category_id=92', 'sinks'),
(1407, 2, 1, 'category_id=92', 'sinks'),
(1408, 3, 1, 'category_id=92', 'sinks'),
(3429, 2, 1, 'category_id=57', 'tablets'),
(5939, 3, 1, 'product_id=47', 'hp-lp3065'),
(5931, 3, 1, 'product_id=41', 'imac'),
(2126, 1, 1, 'category_id=234', 'aluminum-nonstick'),
(2125, 1, 1, 'category_id=233', 'hard-anodized'),
(2123, 1, 1, 'category_id=231', 'calphalon'),
(2124, 1, 1, 'category_id=232', 'contemporary'),
(2127, 1, 1, 'category_id=235', 'sauce-pan'),
(5777, 1, 1, 'category_id=69', 'bread-bakery'),
(5050, 3, 1, 'category_id=24', 'herbal'),
(5049, 2, 1, 'category_id=24', 'herbal'),
(5048, 1, 1, 'category_id=24', 'herbal'),
(5047, 0, 1, 'category_id=24', 'herbal'),
(5389, 0, 1, 'category_id=30', 'video-games'),
(5046, 0, 1, 'category_id=350', 'gvasalia'),
(4652, 0, 1, 'category_id=349', 'generic'),
(2241, 3, 1, 'category_id=205', 'backlit'),
(2240, 2, 1, 'category_id=205', 'backlit'),
(2239, 1, 1, 'category_id=205', 'backlit'),
(2238, 0, 1, 'category_id=205', 'backlit'),
(2250, 3, 1, 'category_id=206', 'excaliberpc'),
(2249, 2, 1, 'category_id=206', 'excaliberpc'),
(2248, 1, 1, 'category_id=206', 'excaliberpc'),
(2247, 0, 1, 'category_id=206', 'excaliberpc'),
(2246, 3, 1, 'category_id=207', 'eluktronics'),
(2245, 2, 1, 'category_id=207', 'eluktronics'),
(2244, 1, 1, 'category_id=207', 'eluktronics'),
(2243, 0, 1, 'category_id=207', 'eluktronics'),
(2274, 3, 1, 'category_id=208', 'single-core'),
(2273, 2, 1, 'category_id=208', 'single-core'),
(2272, 1, 1, 'category_id=208', 'single-core'),
(2271, 0, 1, 'category_id=208', 'single-core'),
(2266, 3, 1, 'category_id=209', 'dual-core'),
(2265, 2, 1, 'category_id=209', 'dual-core'),
(2264, 1, 1, 'category_id=209', 'dual-core'),
(2263, 0, 1, 'category_id=209', 'dual-core'),
(2270, 3, 1, 'category_id=210', 'quad-core'),
(2269, 2, 1, 'category_id=210', 'quad-core'),
(2268, 1, 1, 'category_id=210', 'quad-core'),
(2267, 0, 1, 'category_id=210', 'quad-core'),
(1585, 0, 1, 'category_id=181', 'dining-tables '),
(1586, 1, 1, 'category_id=181', 'dining-tables'),
(1587, 2, 1, 'category_id=181', 'dining-tables'),
(1588, 3, 1, 'category_id=181', 'dining-tables'),
(1589, 0, 1, 'category_id=182', 'dining-chairs '),
(1590, 1, 1, 'category_id=182', 'dining-chairs'),
(1591, 2, 1, 'category_id=182', 'dining-chairs'),
(1592, 3, 1, 'category_id=182', 'dining-chairs'),
(1593, 0, 1, 'category_id=183', 'sideboards'),
(1594, 1, 1, 'category_id=183', 'sideboards'),
(1595, 2, 1, 'category_id=183', 'sideboards'),
(1596, 3, 1, 'category_id=183', 'sideboards'),
(1597, 0, 1, 'category_id=185', 'tableware'),
(1598, 1, 1, 'category_id=185', 'tableware'),
(1599, 2, 1, 'category_id=185', 'tableware'),
(1600, 3, 1, 'category_id=185', 'tableware'),
(1605, 0, 1, 'category_id=195', 'chairs-sofas'),
(1606, 1, 1, 'category_id=195', 'chairs-sofas'),
(1607, 2, 1, 'category_id=195', 'chairs-sofas'),
(1608, 3, 1, 'category_id=195', 'chairs-sofas'),
(1609, 0, 1, 'category_id=196', 'tables-outdoor'),
(1610, 1, 1, 'category_id=196', 'tables-outdoor'),
(1611, 2, 1, 'category_id=196', 'tables-outdoor'),
(1612, 3, 1, 'category_id=196', 'tables-outdoor'),
(1613, 0, 1, 'category_id=197', 'sets'),
(1614, 1, 1, 'category_id=197', 'sets'),
(1615, 2, 1, 'category_id=197', 'sets'),
(1616, 3, 1, 'category_id=197', 'sets'),
(1617, 0, 1, 'category_id=198', 'loungers'),
(1618, 1, 1, 'category_id=198', 'loungers'),
(1619, 2, 1, 'category_id=198', 'loungers'),
(1620, 3, 1, 'category_id=198', 'loungers'),
(4650, 0, 1, 'category_id=347', 'seasonal'),
(6023, 3, 1, 'post_id=8', 'people-are-willing-to-lie-when-it-comes-to-money-2'),
(6022, 2, 1, 'post_id=8', 'people-are-willing-to-lie-when-it-comes-to-money-2'),
(6021, 1, 1, 'post_id=8', 'people-are-willing-to-lie-when-it-comes-to-money-2'),
(6020, 0, 1, 'post_id=8', 'people-are-willing-to-lie-when-it-comes-to-money-2'),
(5361, 0, 1, 'category_id=331', 'gps-navigation'),
(5974, 2, 1, 'post_id=7', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed2'),
(5776, 0, 1, 'category_id=69', 'bread-bakery'),
(5671, 2, 1, 'category_id=33', 'bed-room'),
(2122, 1, 1, 'category_id=230', 'mirror-satin'),
(2121, 1, 1, 'category_id=229', 'ceramic'),
(5382, 0, 1, 'category_id=224', 'desktop'),
(2120, 1, 1, 'category_id=228', 'induction-stovetop-compatible'),
(2119, 1, 1, 'category_id=227', 'gas-stovetop-compatible'),
(2113, 1, 1, 'category_id=226', 'dishwashersafe'),
(2129, 1, 1, 'category_id=237', 'hard-anodizeds'),
(2130, 1, 1, 'category_id=238', 'scratch-resistant'),
(2131, 1, 1, 'category_id=239', 'titanium-nonstick '),
(2132, 1, 1, 'category_id=240', 'thermo-spot'),
(2133, 1, 1, 'category_id=241', 'cuisinart'),
(2134, 1, 1, 'category_id=242', 'aura-stainless'),
(2135, 1, 1, 'category_id=243', 'steel-stovetop'),
(2136, 1, 1, 'category_id=244', 'homeinart'),
(2137, 1, 1, 'category_id=245', 'kettle-stainless'),
(5668, 3, 1, 'category_id=222', 'watches'),
(5546, 0, 1, 'category_id=262', 'headphones'),
(5667, 3, 1, 'category_id=274', 'shoes'),
(2201, 2, 1, 'category_id=275', 'circular-saws'),
(2202, 2, 1, 'category_id=276', 'mitre-saws'),
(2203, 2, 1, 'category_id=277', 'jigsaws'),
(2204, 2, 1, 'category_id=278', 'reciprocating-saws'),
(2205, 2, 1, 'category_id=279', 'table-saws'),
(5212, 1, 1, 'category_id=293', 'mobile-tablets'),
(5362, 0, 1, 'category_id=341', 'cell-phones'),
(5547, 0, 1, 'category_id=299', 'smartwatch'),
(5548, 1, 1, 'category_id=299', 'smartwatch'),
(2236, 3, 1, 'category_id=302', 'apple-laptops'),
(2237, 0, 1, 'category_id=95', 'avocado'),
(2242, 3, 1, 'category_id=65', 'chromebooks'),
(2251, 3, 1, 'category_id=66', 'gaming-laptops'),
(2252, 3, 1, 'category_id=64', 'macbooks'),
(2253, 3, 1, 'category_id=67', 'microsoft-surface'),
(2254, 3, 1, 'category_id=68', 'pc-laptops'),
(2255, 0, 1, 'category_id=303', 'coconut'),
(2256, 0, 1, 'category_id=304', 'coffee'),
(5537, 0, 1, 'category_id=305', 'cucumber'),
(5538, 0, 1, 'category_id=306', 'eggplant'),
(4651, 0, 1, 'category_id=348', 'hypebeast'),
(4648, 0, 1, 'category_id=346', 'luxury'),
(2261, 0, 1, 'category_id=309', 'banana'),
(2262, 0, 1, 'category_id=310', 'blueberries'),
(5540, 0, 1, 'category_id=311', 'beets'),
(2276, 0, 1, 'category_id=312', 'cabbage'),
(2277, 0, 1, 'category_id=313', 'carrots'),
(2278, 0, 1, 'category_id=314', 'kale'),
(5032, 0, 1, 'category_id=316', 'potatoes'),
(5033, 0, 1, 'category_id=317', 'spinach'),
(5539, 0, 1, 'category_id=319', 'arugula'),
(3431, 0, 1, 'category_id=59', 'mobiles'),
(3427, 0, 1, 'category_id=57', 'tablets'),
(5670, 2, 1, 'category_id=164', 'shop-furniture'),
(5907, 3, 1, 'product_id=35', 'viewsonic-vp3268'),
(5877, 1, 1, 'category_id=297', 'pizza'),
(5943, 3, 1, 'product_id=30', 'canon-eos-5d'),
(5666, 3, 1, 'category_id=225', 'glasses'),
(6038, 2, 1, 'category_id=18', 'shop-organic'),
(5897, 1, 6, 'post_list_id=1', ''),
(5383, 0, 1, 'category_id=300', 'laptops'),
(5665, 3, 1, 'category_id=223', 'bags'),
(5531, 0, 1, 'category_id=292', 'computers-laptops'),
(5669, 3, 1, 'category_id=221', 'shop-fashion'),
(5551, 2, 1, 'category_id=296', 'studio-professional'),
(3439, 0, 1, 'category_id=298', 'tvs'),
(5385, 0, 1, 'category_id=301', 'monitors'),
(5973, 1, 1, 'post_id=7', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed2'),
(3718, 3, 1, 'category_id=327', 'sports'),
(2455, 3, 1, 'category_id=328', 'home-theater'),
(2458, 3, 1, 'category_id=329', 'stereo-receivers-and-amplifiers'),
(2461, 3, 1, 'category_id=330', 'surround-sound-speakers-systems'),
(2467, 3, 1, 'category_id=332', 'accessories4'),
(2470, 3, 1, 'category_id=333', 'auto-gps-units'),
(2473, 3, 1, 'category_id=334', 'fitness-gps-units'),
(3050, 3, 1, 'product/special', 'product-special'),
(2476, 3, 1, 'category_id=335', 'handheld-gps-units'),
(3049, 2, 1, 'product/special', 'product-special'),
(3048, 1, 1, 'product/special', 'product-special'),
(2482, 3, 1, 'category_id=337', 'smart-appliances'),
(5958, 2, 1, 'product_id=48', 'ipod-classic'),
(2485, 3, 1, 'category_id=338', 'smart-display'),
(5938, 2, 1, 'product_id=47', 'hp-lp3065'),
(2488, 3, 1, 'category_id=339', 'smart-energy-and-lighting'),
(5914, 2, 1, 'product_id=45', 'macbook-pro'),
(5923, 3, 1, 'product_id=44', 'macbook-air'),
(2491, 3, 1, 'category_id=340', 'smart-health-and-fitness'),
(5918, 2, 1, 'product_id=43', 'macbook'),
(5963, 3, 1, 'product_id=42', 'apple-cinema-30-inch-hd-flat-panel-display'),
(5972, 0, 1, 'post_id=7', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed2'),
(5922, 2, 1, 'product_id=44', 'macbook-air'),
(5930, 2, 1, 'product_id=41', 'imac'),
(5926, 2, 1, 'product_id=40', 'iphone'),
(5954, 2, 1, 'product_id=36', 'ipod-nano'),
(2509, 3, 1, 'category_id=342', 'cellphone-accessories'),
(2500, 3, 1, 'category_id=343', 'mobile-hotspots-plans'),
(5906, 2, 1, 'product_id=35', 'viewsonic-vp3268'),
(5951, 3, 1, 'product_id=34', 'ipod-shuffle'),
(2512, 3, 1, 'category_id=344', 'phones-with-plans'),
(2506, 3, 1, 'category_id=345', 'prepaid-plans'),
(5910, 2, 1, 'product_id=29', 'palm-treo-pro'),
(5942, 2, 1, 'product_id=30', 'canon-eos-5d'),
(3032, 3, 1, 'product_id=31', 'nikon-d300'),
(4352, 0, 1, 'information_id=3', 'privacy'),
(4343, 1, 1, 'information_id=4', 'about_us'),
(4357, 0, 1, 'information_id=5', 'terms'),
(4347, 0, 1, 'information_id=6', 'delivery'),
(5957, 1, 1, 'product_id=48', 'ipod-classic'),
(5937, 1, 1, 'product_id=47', 'hp-lp3065'),
(5929, 1, 1, 'product_id=41', 'imac'),
(5962, 2, 1, 'product_id=42', 'apple-cinema-30-inch-hd-flat-panel-display'),
(5917, 1, 1, 'product_id=43', 'macbook'),
(5921, 1, 1, 'product_id=44', 'macbook-air'),
(5913, 1, 1, 'product_id=45', 'macbook-pro'),
(5961, 1, 1, 'product_id=42', 'apple-cinema-30-inch-hd-flat-panel-display'),
(5925, 1, 1, 'product_id=40', 'iphone'),
(2581, 1, 1, 'account/login', 'account-login'),
(2582, 1, 1, 'account/order', 'account-order'),
(2583, 1, 1, 'account/return/add', 'account-return-add'),
(2584, 1, 1, 'account/voucher', 'account-voucher'),
(2585, 1, 1, 'affiliate/login', 'affiliate-login'),
(2586, 1, 1, 'information/contact', 'information-contact'),
(2587, 1, 1, 'information/sitemap', 'information-sitemap'),
(5953, 1, 1, 'product_id=36', 'ipod-nano'),
(5905, 1, 1, 'product_id=35', 'viewsonic-vp3268'),
(2594, 1, 1, 'product/manufacturer', 'product-manufacturer'),
(2595, 2, 1, 'account/login', 'account-login'),
(2596, 2, 1, 'account/order', 'account-order'),
(2597, 2, 1, 'account/return/add', 'account-return-add'),
(2598, 2, 1, 'account/voucher', 'account-voucher'),
(2599, 2, 1, 'affiliate/login', 'affiliate-login'),
(2600, 2, 1, 'information/contact', 'information-contact'),
(2601, 2, 1, 'information/sitemap', 'information-sitemap'),
(4397, 3, 1, 'manufacturer_id=10', 'sony'),
(4389, 3, 1, 'manufacturer_id=5', 'htc'),
(4393, 3, 1, 'manufacturer_id=6', 'palm'),
(4385, 3, 1, 'manufacturer_id=7', 'hewlett-packard'),
(4369, 3, 1, 'manufacturer_id=8', 'apple'),
(4377, 3, 1, 'manufacturer_id=9', 'canon'),
(2608, 2, 1, 'product/manufacturer', 'product-manufacturer'),
(2609, 3, 1, 'account/login', 'account-login'),
(2610, 3, 1, 'account/order', 'account-order'),
(2611, 3, 1, 'account/return/add', 'account-return-add'),
(2612, 3, 1, 'account/voucher', 'account-voucher'),
(2613, 3, 1, 'affiliate/login', 'affiliate-login'),
(2614, 3, 1, 'information/contact', 'information-contact'),
(2615, 3, 1, 'information/sitemap', 'information-sitemap'),
(4396, 2, 1, 'manufacturer_id=10', 'sony'),
(4388, 2, 1, 'manufacturer_id=5', 'htc'),
(4392, 2, 1, 'manufacturer_id=6', 'palm'),
(4384, 2, 1, 'manufacturer_id=7', 'hewlett-packard'),
(4368, 2, 1, 'manufacturer_id=8', 'apple'),
(4376, 2, 1, 'manufacturer_id=9', 'canon'),
(2622, 3, 1, 'product/manufacturer', 'product-manufacturer'),
(3013, 2, 1, 'product_id=31', 'nikon-d300'),
(5941, 1, 1, 'product_id=30', 'canon-eos-5d'),
(5909, 1, 1, 'product_id=29', 'palm-treo-pro'),
(5934, 2, 1, 'product_id=28', 'htc-touch-hd'),
(5933, 1, 1, 'product_id=28', 'htc-touch-hd'),
(5956, 0, 1, 'product_id=48', 'ipod-classic'),
(4395, 1, 1, 'manufacturer_id=10', 'sony'),
(4387, 1, 1, 'manufacturer_id=5', 'htc'),
(4391, 1, 1, 'manufacturer_id=6', 'palm'),
(4383, 1, 1, 'manufacturer_id=7', 'hewlett-packard'),
(4367, 1, 1, 'manufacturer_id=8', 'apple'),
(4375, 1, 1, 'manufacturer_id=9', 'canon'),
(5936, 0, 1, 'product_id=47', 'hp-lp3065'),
(5912, 0, 1, 'product_id=45', 'macbook-pro'),
(5920, 0, 1, 'product_id=44', 'macbook-air'),
(5916, 0, 1, 'product_id=43', 'macbook'),
(5960, 0, 1, 'product_id=42', 'apple-cinema-30-inch-hd-flat-panel-display'),
(5928, 0, 1, 'product_id=41', 'imac'),
(4394, 0, 1, 'manufacturer_id=10', 'sony'),
(4386, 0, 1, 'manufacturer_id=5', 'htc'),
(4390, 0, 1, 'manufacturer_id=6', 'palm'),
(4382, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(4366, 0, 1, 'manufacturer_id=8', 'apple'),
(4374, 0, 1, 'manufacturer_id=9', 'canon'),
(5924, 0, 1, 'product_id=40', 'iphone'),
(5952, 0, 1, 'product_id=36', 'ipod-nano'),
(5904, 0, 1, 'product_id=35', 'viewsonic-vp3268'),
(5950, 2, 1, 'product_id=34', 'ipod-shuffle'),
(5932, 0, 1, 'product_id=28', 'htc-touch-hd'),
(5908, 0, 1, 'product_id=29', 'palm-treo-pro'),
(5940, 0, 1, 'product_id=30', 'canon-eos-5d'),
(2994, 1, 1, 'product_id=31', 'nikon-d300'),
(5947, 3, 1, 'product_id=32', 'ipod-touch'),
(5946, 2, 1, 'product_id=32', 'ipod-touch'),
(5945, 1, 1, 'product_id=32', 'ipod-touch'),
(5944, 0, 1, 'product_id=32', 'ipod-touch'),
(3442, 3, 1, 'category_id=298', 'tvs'),
(5211, 0, 1, 'category_id=293', 'mobile-tablets'),
(3434, 3, 1, 'category_id=59', 'mobiles'),
(3433, 2, 1, 'category_id=59', 'mobiles'),
(3432, 1, 1, 'category_id=59', 'mobiles'),
(3430, 3, 1, 'category_id=57', 'tablets'),
(3428, 1, 1, 'category_id=57', 'tablets'),
(5876, 0, 1, 'category_id=297', 'pizza'),
(3717, 2, 1, 'category_id=327', 'sports'),
(3716, 1, 1, 'category_id=327', 'sports'),
(3715, 0, 1, 'category_id=327', 'sports'),
(5903, 3, 1, 'product_id=177', 'viewsonic-vp3268-1'),
(5902, 2, 1, 'product_id=177', 'viewsonic-vp3268-1'),
(5901, 1, 1, 'product_id=177', 'viewsonic-vp3268-1'),
(5641, 3, 1, 'post_list_id=2', 'furniture-blog'),
(5896, 0, 6, 'post_list_id=1', ''),
(5895, 3, 1, 'post_list_id=1', 'organic-blog'),
(4342, 0, 1, 'information_id=4', 'about_us'),
(4346, 8, 1, 'information_id=4', 'about_us'),
(4351, 8, 1, 'information_id=6', 'delivery'),
(4356, 8, 1, 'information_id=3', 'privacy'),
(4361, 8, 1, 'information_id=5', 'terms'),
(5967, 3, 1, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(5966, 2, 1, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(5965, 1, 1, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(5964, 0, 1, 'post_id=2', 'celebrity-daughter-opens-up-about-having-her-eye-color-changed'),
(5983, 3, 1, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(5982, 2, 1, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(5981, 1, 1, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(5980, 0, 1, 'post_id=3', 'children-left-home-alone-for-4-days-in-tv-experiment'),
(5991, 3, 1, 'post_id=1', 'children-left-home-alone-for-4-days-in-tv-experiment-2'),
(5990, 2, 1, 'post_id=1', 'children-left-home-alone-for-4-days-in-tv-experiment-2'),
(5989, 1, 1, 'post_id=1', 'children-left-home-alone-for-4-days-in-tv-experiment-2'),
(5988, 0, 1, 'post_id=1', 'children-left-home-alone-for-4-days-in-tv-experiment-2'),
(5999, 3, 1, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(5998, 2, 1, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(5997, 1, 1, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(5996, 0, 1, 'post_id=4', 'lotto-winner-offering-money-man-will-date'),
(6007, 3, 1, 'post_id=6', 'lotto-ưinner-offering-up-money-to-any-man-that-will-date-her2'),
(6006, 2, 1, 'post_id=6', 'lotto-ưinner-offering-up-money-to-any-man-that-will-date-her2'),
(6005, 1, 1, 'post_id=6', 'lotto-ưinner-offering-up-money-to-any-man-that-will-date-her2'),
(6004, 0, 1, 'post_id=6', 'lotto-ưinner-offering-up-money-to-any-man-that-will-date-her2'),
(6014, 2, 1, 'post_id=5', 'people-willing-lie-comes-money-according-research'),
(6013, 1, 1, 'post_id=5', 'people-willing-lie-comes-money-according-research'),
(6012, 0, 1, 'post_id=5', 'people-willing-lie-comes-money-according-research'),
(5894, 2, 1, 'post_list_id=1', 'organic-blog'),
(5893, 1, 1, 'post_list_id=1', 'organic-blog'),
(5640, 2, 1, 'post_list_id=2', 'furniture-blog'),
(5639, 1, 1, 'post_list_id=2', 'furniture-blog'),
(5645, 3, 1, 'post_list_id=3', 'fashion-blog'),
(5644, 2, 1, 'post_list_id=3', 'fashion-blog'),
(5643, 1, 1, 'post_list_id=3', 'fashion-blog'),
(5642, 0, 1, 'post_list_id=3', 'fashion-blog'),
(5605, 3, 1, 'post_list_id=4', 'digital-blog'),
(5604, 2, 1, 'post_list_id=4', 'digital-blog'),
(5603, 1, 1, 'post_list_id=4', 'digital-blog'),
(5602, 0, 1, 'post_list_id=4', 'digital-blog'),
(6031, 1, 6, 'ptblog', ''),
(6030, 1, 1, 'ptblog', 'blog'),
(6029, 0, 6, 'ptblog', ''),
(6028, 0, 1, 'ptblog', 'blog'),
(5760, 0, 1, 'category_id=46', 'fresh-fruits'),
(6037, 1, 1, 'category_id=18', 'shop-organic'),
(5638, 0, 1, 'post_list_id=2', 'furniture-blog'),
(5767, 3, 1, 'category_id=20', 'fresh-vegetables'),
(5787, 3, 1, 'category_id=220', 'canned-goods'),
(5892, 0, 1, 'post_list_id=1', 'organic-blog'),
(5900, 0, 1, 'product_id=177', 'viewsonic-vp3268-1'),
(5949, 1, 1, 'product_id=34', 'ipod-shuffle'),
(5768, 0, 1, 'category_id=351', 'dry-fruits-snacks'),
(5780, 0, 1, 'category_id=247', 'eggs-dairy'),
(5394, 0, 1, 'category_id=295', 'handmade'),
(5872, 0, 1, 'category_id=246', 'juice'),
(5214, 3, 1, 'category_id=293', 'mobile-tablets'),
(5948, 0, 1, 'product_id=34', 'ipod-shuffle'),
(5359, 0, 1, 'category_id=325', 'shop-electronics'),
(5364, 0, 1, 'category_id=326', 'home-audio-theater'),
(6036, 0, 1, 'category_id=18', 'shop-organic'),
(5766, 2, 1, 'category_id=20', 'fresh-vegetables'),
(5765, 1, 1, 'category_id=20', 'fresh-vegetables'),
(5764, 0, 1, 'category_id=20', 'fresh-vegetables'),
(5761, 1, 1, 'category_id=46', 'fresh-fruits'),
(5762, 2, 1, 'category_id=46', 'fresh-fruits'),
(5763, 3, 1, 'category_id=46', 'fresh-fruits'),
(5769, 1, 1, 'category_id=351', 'dry-fruits-snacks'),
(5770, 2, 1, 'category_id=351', 'dry-fruits-snacks'),
(5771, 3, 1, 'category_id=351', 'dry-fruits-snacks'),
(5786, 2, 1, 'category_id=220', 'canned-goods'),
(5785, 1, 1, 'category_id=220', 'canned-goods'),
(5784, 0, 1, 'category_id=220', 'canned-goods'),
(5778, 2, 1, 'category_id=69', 'bread-bakery'),
(5779, 3, 1, 'category_id=69', 'bread-bakery'),
(5781, 1, 1, 'category_id=247', 'eggs-dairy'),
(5782, 2, 1, 'category_id=247', 'eggs-dairy'),
(5783, 3, 1, 'category_id=247', 'eggs-dairy'),
(5873, 1, 1, 'category_id=246', 'juice'),
(5874, 2, 1, 'category_id=246', 'juice'),
(5875, 3, 1, 'category_id=246', 'juice'),
(5898, 2, 6, 'post_list_id=1', ''),
(5899, 3, 6, 'post_list_id=1', ''),
(5968, 0, 6, 'post_id=2', ''),
(5969, 1, 6, 'post_id=2', ''),
(5970, 2, 6, 'post_id=2', ''),
(5971, 3, 6, 'post_id=2', ''),
(5976, 0, 6, 'post_id=7', ''),
(5977, 1, 6, 'post_id=7', ''),
(5978, 2, 6, 'post_id=7', ''),
(5979, 3, 6, 'post_id=7', ''),
(5984, 0, 6, 'post_id=3', ''),
(5985, 1, 6, 'post_id=3', ''),
(5986, 2, 6, 'post_id=3', ''),
(5987, 3, 6, 'post_id=3', ''),
(5992, 0, 6, 'post_id=1', ''),
(5993, 1, 6, 'post_id=1', ''),
(5994, 2, 6, 'post_id=1', ''),
(5995, 3, 6, 'post_id=1', ''),
(6000, 0, 6, 'post_id=4', ''),
(6001, 1, 6, 'post_id=4', ''),
(6002, 2, 6, 'post_id=4', ''),
(6003, 3, 6, 'post_id=4', ''),
(6008, 0, 6, 'post_id=6', ''),
(6009, 1, 6, 'post_id=6', ''),
(6010, 2, 6, 'post_id=6', ''),
(6011, 3, 6, 'post_id=6', ''),
(6015, 3, 1, 'post_id=5', 'people-willing-lie-comes-money-according-research'),
(6016, 0, 6, 'post_id=5', ''),
(6017, 1, 6, 'post_id=5', ''),
(6018, 2, 6, 'post_id=5', ''),
(6019, 3, 6, 'post_id=5', ''),
(6024, 0, 6, 'post_id=8', ''),
(6025, 1, 6, 'post_id=8', ''),
(6026, 2, 6, 'post_id=8', ''),
(6027, 3, 6, 'post_id=8', ''),
(6032, 2, 1, 'ptblog', 'blog'),
(6033, 2, 6, 'ptblog', ''),
(6034, 3, 1, 'ptblog', 'blog'),
(6035, 3, 6, 'ptblog', ''),
(6039, 3, 1, 'category_id=18', 'shop-organic');

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('00168a58c541d0e266504db4e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 07:16:29'),
('00ecb8285ddc8ec498ba39b207', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-23 15:05:15'),
('0139ec8347dc2398ed89ca72cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 02:47:51'),
('019467a5fc75c76b21aacb9228', '{\"user_id\":\"1\",\"user_token\":\"Pdyz8ufioA5gSTajKJMfK7AM1tWcRraa\"}', '2019-10-15 15:33:46'),
('01ff1f038f28f0f8b7cd002c1b', '{\"user_id\":\"1\",\"user_token\":\"iKBn8FmY6lPu4YRQRCQEbIyr34lycWAk\"}', '2019-09-15 08:32:31'),
('02be3ba299dcc16cbf5c924b73', '{\"user_id\":\"1\",\"user_token\":\"AhEvS2W55sObJUAsejsyQ25qAwrFHRcZ\"}', '2019-11-20 03:29:39'),
('03132cce934abeb3f9a6945fb7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 15:44:10'),
('03b61f0479a3b0d26f368b5ea9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-08 02:31:02'),
('03d997a834e18dea7defb9ef3d', '{\"user_id\":\"1\",\"user_token\":\"C5Rma4Wk6066W8PiKQ0G4W7NwWkANvov\"}', '2019-12-24 15:55:54'),
('03e4eb487c4626bcc9726fb530', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 15:40:34'),
('0489d183fceb889db731314a8f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-09 03:17:42'),
('048e986bf385eef23116a92233', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4UuQwwl2WwT90ZzI5y89HQvs3GC6WQIi\"}', '2019-06-11 15:11:46'),
('053a75e8c64d0b3298242ec648', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 14:39:03'),
('066a5945f4184077f8c979b8db', '{\"user_id\":\"1\",\"user_token\":\"AngAL3IVYhUiglDk4LfETGixTPr3Xvzc\"}', '2019-11-19 10:13:15'),
('06a51fc2ba651183865445abd8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 08:08:04'),
('071d8725cd94a1e6b75bdef70b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-30 02:29:50'),
('085a41c8c418a180ec44bd9e19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uwFlPuvd50viePQpzQ6JNplc5YDyA2W8\"}', '2020-04-13 16:09:18'),
('093174224bf560570baed4cab6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-19 09:14:29'),
('098eacf29d0d774d06c9594129', '{\"api_id\":\"4\"}', '2019-10-04 09:15:41'),
('0a04ef12cef1f2bba159cfdb2a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"47\"]}', '2019-07-05 09:35:20'),
('0a4883a21d764bb171da47b039', '{\"user_id\":\"1\",\"user_token\":\"XzWiqDxDpHI5PIbZXgp8EcDzW2Pj3j3D\"}', '2019-09-17 15:28:17'),
('0abf98344f4af883a278cd522f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4TYPVJfsNvVj45YzqFsdhpyRxost9N1W\"}', '2020-03-31 07:39:01'),
('0b1d5852c937c0f6ae7f622c77', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"pUFtlOj1Px5TcQN1AFOC7sScgH1ZLzhL\"}', '2019-05-22 10:09:28'),
('0b6e1837297098f2f1978f528e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 14:15:32'),
('0b7b2d5a2a32343b2899b02e03', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ZRQ3B3aZjYLCyQrLhV5LaHBwLrjdSATa\"}', '2020-04-13 13:26:35'),
('0c0b152a913d238cedbf919fa8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-18 15:50:24'),
('0d0135520b10ab7f9620893cc4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 07:58:14'),
('0d3801d10acdcd6030398361bd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"RTzXBvMQDFzZrVExlwohm0tvxYTadJNj\"}', '2019-05-13 16:16:06'),
('0d6109f55392a896ec362c5621', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 04:12:33'),
('0db5675d13d4def214051be5a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 04:30:29'),
('0dbcc963d0d17e3e50989cb5e7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xnnWteSDvwnsFB0RcuxeKelSkhVzLp3y\"}', '2019-05-13 09:18:43'),
('0e087f978b694b75f6a9b16b94', '{\"user_id\":\"1\",\"user_token\":\"ZFgkya0iRYdXNUjkm5Jo8iFm1h1Z0GqC\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-07 10:15:05'),
('0f79dc216bd35b33ff15fc333e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:59:30'),
('0ff213a0c58c749a24c3f14bdc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 15:53:16'),
('1034c5e9e8056ec52151b295a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 15:22:45'),
('108c73ace6513112d5f88b39f6', '{\"user_id\":\"1\",\"user_token\":\"nOY8qFsButq8wh28eFe6rl5LrOePC503\",\"success\":\"Success: You have modified blog page settings!\"}', '2019-11-12 03:39:39'),
('1092d1c09eef856b85c5d0a52d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"48\"]}', '2019-05-22 07:57:05'),
('1117e0cc15e5eaca2d458b0919', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"O7nfqpJqsEhUP7OrPcejFXx2LJK4uJ8J\"}', '2020-04-11 05:12:54'),
('112a871eb5d2f1b77fe62509bf', '{\"user_id\":\"1\",\"user_token\":\"vqeafJPsYfEthCmDrIDOHaSFvCghKfjV\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-14 09:03:28'),
('118276cbfcb2747f0a50a5e01e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-09 04:26:44'),
('124d2b5374918c9778a1da8b07', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"J9bAocsQ4FCEy4wpAMV6zYWjrdJI27Bs\",\"compare\":[\"36\",\"28\",\"43\"],\"wishlist\":[\"40\",\"43\"]}', '2020-04-12 15:39:52'),
('12d911f2f14ccdd35da50749ec', '{\"user_id\":\"1\",\"user_token\":\"Ze2rMYTNEvP0s6HyQmnqgWejCJIvusQC\"}', '2020-04-19 15:45:57'),
('1327136a097a8ef38575f0a4ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2021-07-13 13:54:53'),
('137182f13736c9929d06e8cd2e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-22 05:07:03'),
('140432373974fb33b88b17357b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-13 10:05:46'),
('1514d6ed8c029a8a8c404459d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-13 13:11:24'),
('15677a013598bc3773b33b8431', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-18 10:07:48'),
('16b6e5cfb04a40ce6ba7968c0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 03:25:39'),
('1700b2b7e0d9552b0d44edcfd2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"pTg9VIFOCst9MNWSVcCMtK107NCOiQfE\"}', '2019-09-29 02:13:46'),
('170496e2c9ffecd3b6d1b21dfd', '{\"user_id\":\"1\",\"user_token\":\"zVkd8pch75LOaUTVdqgdYc9krjq6jdWv\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 08:01:13'),
('1854b6429c360940339a5006a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 03:58:10'),
('18a7c2812571427b8b76507183', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-08 15:28:02'),
('18b3097da4b499ff3766b2bfa7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 04:27:59'),
('1986d2ba56d678b4c4aa7d58c1', '{\"user_id\":\"1\",\"user_token\":\"PJe2KlkSP91kZscmGPn95sapwgViZwes\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-13 14:46:38'),
('1b3526f4edfc4ab44bf931a441', 'false', '2019-12-23 14:49:39'),
('1b3b747303c62b84694c6376c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-14 15:35:13'),
('1b60a600d861fc36c4a709c1af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 09:26:03'),
('1bdb1504226f34adecff4581ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-08 08:13:25'),
('1c0a1dd6064b2188ce1f05c120', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oKwn6ZfWwRvpQ9LyhZL6Bfe8uujNaMHC\"}', '2019-07-20 07:35:23'),
('1c6012a9e8fa65ee774bf5555c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"cZwumzecIpsjsjrJFmkucmuMCN3yfK9y\"}', '2019-07-29 02:59:08'),
('1c8e9aa028be4eb4124e1c4f36', 'false', '2019-10-11 14:17:01'),
('1c9df1bcd51ef27d48660ce9ba', '{\"user_id\":\"1\",\"user_token\":\"hWV54fGV2dDigW4lEyn8sB1OfQkFNi2r\"}', '2019-12-21 16:02:05'),
('1d8c087b65e295c55544ade5d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-25 15:41:10'),
('1d8d4be385d4607c1b1c76e27a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oTkjIBiIp81EPaZj7Jy3n0djBZVF4eV4\"}', '2019-09-27 09:42:05'),
('1e7ae841cb2213e4ce035ece61', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"NEON79fZsZIvi85GkG3rK0SYl6NeUVYK\",\"compare\":[\"42\",\"48\",\"36\"]}', '2019-05-15 16:05:28'),
('1e7c6435a6a97fcd8ab3ead701', '{\"user_id\":\"1\",\"user_token\":\"ALFfcKAGHiCnUiYCepCm5cOhnDnhJwUo\",\"language\":\"en-gb\",\"currency\":\"USD\",\"install\":\"M5QWcnTL6D\"}', '2019-05-23 09:57:57'),
('1eb0d13561a3b0615f3212c544', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 15:40:54'),
('1f3a3260f85fb6ccb7feba3992', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-01 15:39:18'),
('207863779e939cb932ada07f5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:49:02'),
('20c323a0b58560f78838b82651', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"fQzVcbm9yJm0pTIJIl1oyRYyeHMtec96\"}', '2020-04-09 04:44:24'),
('2149cd85e4c278e611ce69a0d6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"account\":\"register\",\"customer_id\":\"1\",\"payment_address\":{\"address_id\":\"2\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3514\",\"zone\":\"Aberdeenshire\",\"zone_code\":\"ABNS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3514\",\"zone\":\"Aberdeenshire\",\"zone_code\":\"ABNS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2019-10-04 09:31:28'),
('2281c522b0333a4278eafb563a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 03:59:42'),
('23a40ecdc0efb89f0d1845cbdf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 02:20:42'),
('250f72999cb1617e2a4c659292', 'false', '2019-12-23 15:10:23'),
('25abace2707928fa261b44554a', '{\"user_id\":\"1\",\"user_token\":\"apJkvbZ0aNbVPVkoysxYWmvya5bzSiMF\"}', '2019-10-24 15:02:47'),
('25f0c149836694dbf169dc7ced', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 10:22:16'),
('26c139736f4f8a7206eb35617b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dK5bs8DKJLbEeCkIJB8gFhwRkBI3Qhvs\"}', '2019-09-26 15:35:26'),
('27ce200aa9bc72c53ab3991aa0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-16 10:17:04'),
('285baf2876a76d8cc53726ee9f', '{\"user_id\":\"1\",\"user_token\":\"cMsEKz9mkLK58uSoZK7RaW77WgYBexLJ\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-12 04:52:09'),
('28ee64271cb0b8f07592a3e33c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-19 10:00:58'),
('29b2583593f874ba77417ad721', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-27 07:47:08'),
('2a62f4075e2cf55bfb7734e09c', '{\"user_id\":\"1\",\"user_token\":\"leG0hra35YO7xdpWnKKYjWH7hLYh85qx\"}', '2019-07-09 09:22:59'),
('2ba45df007887f50396109545d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 02:43:59'),
('2bcaa2820409a76bb2dd34fb63', '{\"user_id\":\"1\",\"user_token\":\"cxHL2QEdy4x5sDFOmJhG6Ec7u96sguMu\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 04:47:27'),
('2d402b32c056cb75aab76bde16', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dUXDDS3wvFWX2qAozKMDl9lxvFZsozdt\"}', '2019-06-29 14:45:00'),
('2d9f74b5c5777f741e0244e727', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ulgRghMVvMAxFJuDq7hKE4rxwWrbYhFI\"}', '2019-05-12 16:11:59'),
('2dc33bb35c8a7c0c8b58d7a7ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"EKZBiYtSPaMQ0K1jdTzurTdyX7PHesbf\"}', '2019-10-02 09:52:35'),
('2e2e2d4596d634974e9bb04d1a', '{\"user_id\":\"1\",\"user_token\":\"YdS1RvmtitCzkjdDoxjLUDVl1Ub8jTuO\"}', '2019-10-27 05:21:49'),
('2e363cd59d4c4cc84408674009', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 02:23:03'),
('2eb4b82f39b99b496473003cee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 13:44:41'),
('2f0c91a945758d3352aa4f41b5', '{\"user_id\":\"1\",\"user_token\":\"CDRec2SfNXdBYSqZ7hORIvUAMvQZjcCX\"}', '2019-12-17 07:48:23'),
('2f25fb44f5fda035d65b000a5f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"GNUSO8lXjLChYPsVpIj7pFunZm4bnk3I\"}', '2019-12-13 02:19:11'),
('300b956a7283d23e4fcba66b5a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-14 03:32:36'),
('30f479f591308cb2ca904cca26', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-08 15:20:00'),
('311131bc3f60191f17b476c182', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 08:12:19'),
('319b2d450094306b90dfe470a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 14:49:43'),
('31b72b3b4a939e7f9c8e435aec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-20 03:26:20'),
('31ec60dd19b1723e665008e054', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 06:48:50'),
('32318a9347041b6973bd4a56ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-11 15:08:23'),
('3319784ad08657a6c57cc58763', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-11 02:00:24'),
('3389d1f5c68c5968ed61d361dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"sZ3iT4szWwnPzhG0xWKvVtyCb3AEDvkh\",\"wishlist\":[\"40\"],\"compare\":[\"40\",\"42\"]}', '2020-04-17 10:15:55'),
('355a679741c77353f8d704d7a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 13:42:57'),
('35a564f052342301a5874b7c96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:59:37'),
('36f009d6921d2b667afb7d8b33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 02:55:54'),
('3711907a6412d99db48c3cff60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-27 09:38:42'),
('3729a1ac4d53298c2c1660bf80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-15 15:34:25'),
('38857a5bf736dc947cd8bbaa77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 08:18:20'),
('38ecc9a86486f30c42a0cb8f3f', '{\"user_id\":\"1\",\"user_token\":\"gRUgHV91xl7G3xpHuEpRfUvg2UPInD31\"}', '2019-10-17 09:59:24'),
('395205becc16329a549400d2e9', 'false', '2019-12-11 02:06:27'),
('39f35c6d0aa386fd2395726f49', '{\"api_id\":\"4\"}', '2019-10-04 09:14:12'),
('3a9200b633507c9404dd31d297', 'false', '2019-10-12 08:56:23'),
('3b4d478ca65df19b6acd040071', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 09:20:17'),
('3bd537810ab82fcabf22296d44', '{\"user_id\":\"1\",\"user_token\":\"vn00j8n3gpGmwoN2zSuBjtSGE02GYQFl\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 14:30:32'),
('3bf2821b3cc5ab40bafc06dcde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 10:27:50'),
('3bf79da6d7dd1403a4a8096df7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"payment_address\":{\"address_id\":\"2\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3514\",\"zone\":\"Aberdeenshire\",\"zone_code\":\"ABNS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3514\",\"zone\":\"Aberdeenshire\",\"zone_code\":\"ABNS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2019-10-07 15:23:09'),
('3c02aceef0b84a74ef8c5802df', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"9dvuMqykZ0ZXwZR3YgT46aAG5mZRuXJ3\"}', '2019-07-15 15:04:50'),
('3d3c79ae2db0a2ba527bfcbeb1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-07 15:12:24'),
('3da9ae7ed5d32c11e08fda57ce', '{\"user_id\":\"1\",\"user_token\":\"8j7xdkDWBIt3uPVxxvrncDBmS9fIDVcC\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 10:22:20'),
('3dbcbdcffdbd8c30fe6482edd3', '{\"user_id\":\"1\",\"user_token\":\"Dnqwyg7pC6nSHWwT1uSj0hh63K1ZScaU\"}', '2019-07-08 10:08:43'),
('4143d0b58581475b23bf746599', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tqnD7fyrhtK5qnGjwkt2pZuJBD2uIXl1\"}', '2020-04-18 03:59:00'),
('416edcfc8ad412b2e820240cfc', 'false', '2019-10-21 14:21:44'),
('4200dd2428030cbf30c7becd41', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 03:01:06'),
('422c94b89d4978c1e06f77d1cd', '{\"api_id\":\"4\"}', '2019-10-04 09:17:43'),
('43cb52b412f2c323d00e9ba143', '{\"user_id\":\"1\",\"user_token\":\"XFBJX1UtDtdncKna5tPytOUDuch600uP\"}', '2019-07-25 14:58:56'),
('43ebbb7e7cb6774f4ce98bcb65', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"9ShkCviGNxBPZiMsOzoqQSa4EgCvL9wp\"}', '2019-05-12 09:18:14'),
('448d2b7e070e62c87149eb3fb1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-27 04:29:08'),
('450d12710229fbc4ff00f144af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 03:58:36'),
('4526bdb784c1139fbc7db25f74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-03 03:35:02'),
('457f3ea902bdc84d5518cb4e8d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"fLqnM1HvVTlN3Xqf47CeHAc8llaoNa8r\"}', '2019-09-29 15:16:24'),
('45b3f11379c4b1a5258874d009', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 15:53:38'),
('46154ea74d5ddb4e6e66adf73b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 04:00:10'),
('46a7c04d8a3ad38f466c8539c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-08 15:35:16'),
('46db4f3d1ce1036e2cb6a84d28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 02:18:34'),
('47092ac09f29b635b6a887b2ea', '{\"user_id\":\"1\",\"user_token\":\"DdZcoV0pdoWw4Zavk9mSSQo7Gf6nWqrU\"}', '2020-04-21 02:32:35'),
('476db75f41c687cb76dc1bc338', 'false', '2019-11-19 08:28:02'),
('482ea537cd54b4cfbbbc6f1902', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 13:44:32'),
('4854601ec4745d6dea3a5f4ebb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-14 02:18:17'),
('48b0c13c4a714c554ac6b519ee', '{\"user_id\":\"1\",\"user_token\":\"E7EyauDcOhLDvH9WzbRtTETFqhQiHqw0\"}', '2019-07-01 14:16:57'),
('4a5358fada87a939a6d86c7260', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"lkru75QvyR1UHQ7ONX4tFNddE6g7UfdB\"}', '2019-06-16 05:27:53'),
('4a60ae94e1067a119a7690dc7e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"MIsA9Ba2BF3PQ8ASXIvVUcsoZ5Wg1x1G\"}', '2019-09-28 04:55:34'),
('4b831378c711f32df68e280cf2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-20 14:26:28'),
('4b927d70e8b7ec0c9275a6d2bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 08:12:25'),
('4bf401888e0729ead233071a8e', '{\"user_id\":\"1\",\"user_token\":\"GFUMXMjdZ2BK5VckWxKGQmQHuNt7lIpl\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-08 09:51:42'),
('4c2aa2370832faed5016c5b093', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 14:54:43'),
('4c3e2716a2285212f56ce83121', '{\"user_id\":\"1\",\"user_token\":\"eMN4LtsBjJojWMObDzVs6BqKfusSOI8M\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 15:37:20'),
('4c3ebc5addf280b3db2e151d77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 09:28:35'),
('4c4deb52f5ba5d31d79f828571', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"cTLipTL2r2Xk4yQRiyeLzwIHPo2cvpoT\"}', '2019-05-16 09:26:25'),
('4de24bd115b3a797b2184bb814', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 08:12:18'),
('4e44b3b5b70ca75ce8d042ce64', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 07:42:59'),
('4e8c9c51b727adb3e22fb6d396', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"rgQsufNzIpJmmOEexy70p4Zfoj3bobkb\"}', '2020-04-11 12:09:49'),
('4f5061b92d60443b67663dc240', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 03:57:53'),
('4f5749fceee2e53d6276b61c6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-17 10:21:23'),
('4f874c78ec6aa1746a15e15d3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 02:30:59'),
('50429a4bc60bac0721406a5f37', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"43\",\"28\"]}', '2019-11-16 04:53:40'),
('5046bb183059f87b0f9c2e7af7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 04:34:30'),
('519876282ef6dff1575e0bc872', '{\"user_id\":\"1\",\"user_token\":\"33pqrmA159sVHCj0pSlVU2nXxaVQfA6k\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 08:12:37'),
('51d69deee8ee5834055621e2e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 15:43:03'),
('51deafe8067ddc6609210cd9fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-07 10:20:33'),
('52664ba67235f6c6a31eb61e1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-26 14:42:17'),
('537882057acd0946755388f5ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-18 15:34:39'),
('54b21e0d6d22b692c06dbcc252', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"e8vaarNL77xjX2XSzjxBYCFM9bFNA95k\"}', '2019-06-30 10:30:54'),
('54cf01bed729c754348240f287', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"135Y2mthSykHb7YnQcldeNgruXsq0XdF\"}', '2019-10-03 03:34:49'),
('555d9446518a25b0e54f863732', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-20 15:07:33'),
('55af6c8b57d2247b4a63d514f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 14:49:29'),
('5601f4d5a3ee6af3d5c0813697', '{\"user_id\":\"1\",\"user_token\":\"zTel4NidDwZTnLqzdHN5i210SMxMeva8\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 02:56:49'),
('578d0e3a3fae001878b176ab9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-20 14:35:35'),
('579923a2f168341be7c6f66800', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"tkk4vwUvODmLZ8k0QFXRwNhS27uBp0qH\"}', '2019-06-27 10:23:08'),
('57caf67e3b932c72a145a25391', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"2LKHy571mx7jJZ8EZwDOXo5M3fXSlCBw\"}', '2019-05-14 16:19:38'),
('580e072050879f77569d9df8f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 04:20:14'),
('582fb1ed26a1a8cf5f8b6fc1cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-27 08:37:11'),
('5868ffc680f4698f2e86265d80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-14 10:20:23'),
('5934cc8520d1f32289de7f828a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-27 08:40:33'),
('59bd2d285de53738d8397d2667', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 07:16:36'),
('59cc8149d9967ad0e844f4b87f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4CHzLf37J9MHshDmQUgPFMlQPubu7xEU\"}', '2019-11-15 10:10:42'),
('5a275d29e67f4ef3f360ad8968', '{\"user_id\":\"1\",\"user_token\":\"oWXwPUnNQsS5Atb57ROVTyUcrf1uCYFs\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-20 15:37:46'),
('5a2d2ea51dcd7cfb5457802534', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 08:15:18'),
('5a6db593022972029a29916cb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-12 15:51:16'),
('5b1fc06c2ceb2d4d08b48be240', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 14:37:25'),
('5b632dffdffb518dbe1d8dba76', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"yROyJV07PYKeZUtfgLTU6c9Kypc3fFDg\"}', '2019-06-29 02:52:18'),
('5b71b423abd65f64e95f70904e', '{\"user_id\":\"1\",\"user_token\":\"fd6Z6omw4IRooSdaeCpipbsjqyc3xtNM\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 15:21:00'),
('5b816d2cea3b77c10e1b006c07', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 03:34:40'),
('5be1274c7ddc7bb1fa154bd444', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-20 15:29:45'),
('5be28a9017769ba4e978b4d59e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 01:47:38'),
('5bee7a7a50f6e448c7ebd104dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"YohVfSMIfPfUrkzNRKvypxFzvypb6Tle\"}', '2019-10-22 15:23:12'),
('5cd5b858f8e58bf2d7ccee6032', '{\"user_id\":\"1\",\"user_token\":\"kzbHBLbJlZO04fMXXdhgc8XvUuJ1WlGE\"}', '2019-10-25 15:35:42'),
('5d7135878369e7690137814fbd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 07:16:35'),
('5d9dcda3a557021ceb39dec020', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PO3cIzagMMVi5DA6S6CgLWUl1HVGhpQ8\"}', '2019-06-23 10:38:51'),
('5e05f8b948f3519107e9a426b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-17 10:09:04'),
('5e71031da79ea128cc21255822', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-20 14:35:31'),
('5f74f187939358eba312404379', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 15:30:29'),
('5f9087f2f2441309c303721212', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-24 15:35:15'),
('5facc5178ee25f72dc9f7af5ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 07:39:14'),
('605897b667379d2050a78a901c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"s13RaFz5Jn3xPWVh7CdQoMf5KqlOiJFh\"}', '2020-04-11 07:59:22'),
('61041f751d088a4a6fbc42ca94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 03:25:39'),
('619d5851188a2b93afba387cb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 02:12:09'),
('61bf3c60b476329f0a830be9ad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7z5y5Lq1rcty230F3DrE6e1WWcnL3iVw\"}', '2019-09-30 15:20:19'),
('61e58842cae71fdf5239cc9f2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 15:22:36'),
('622925edda42c69b37f45067d4', '{\"user_id\":\"1\",\"user_token\":\"GiIsQvSortA4eYlvajQ4Ki1iHV3XiBiH\"}', '2019-12-24 08:55:28'),
('6266ce5dde2acfeb56e4438d6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 14:50:02'),
('629376fd43197b1bb4e7b3e064', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"wzphQFl9f41gTVohAwUnDeLA2OxSeRve\",\"install\":\"Blk5CJBV0J\"}', '2019-06-16 04:35:07'),
('62e70c752c590f188164df4473', '{\"api_id\":\"4\"}', '2019-10-04 09:14:59'),
('632c4532adcfc4ea3e076e76ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-27 09:01:19'),
('6376dd1226635409913a56f4bc', '{\"user_id\":\"1\",\"user_token\":\"h8pUma5lCU1kSWNTMof37kfUgZcSboNz\"}', '2019-10-07 15:23:01'),
('639a905b41f9dada191d18c253', 'false', '2019-05-13 14:30:36'),
('63d260e548595876295a76318c', '{\"user_id\":\"1\",\"user_token\":\"4dfAJ9RKP2NpPL7jc3vnjMR00rhXo6lX\"}', '2019-12-25 08:13:31'),
('63fd77b293c070b578923f5c78', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-24 09:09:18'),
('6451a3281135eb61e34d27db55', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"p3RbTNK1hnyDyFSreZx8dEjhz3gAY7Ho\"}', '2019-06-16 14:02:57'),
('649653cbe23de517eb90ad758d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 02:50:20'),
('64d66e2ccbf82054e53cca429d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:44:27'),
('64f2574c4482474c130859c83c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 08:02:04'),
('657bb1c91751b8036a1040436f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-14 15:16:58'),
('65c3aeca573e2b48c59004f864', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 14:43:47'),
('6667722fcb56074c52aaec3bef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xgtRIIMtdF0pBaimYCGmtCZKVzZpTAAb\"}', '2020-04-17 15:14:49'),
('66917608036f162bf311c0194a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-20 14:35:39'),
('678d4b21e38a0fb9114f5b8843', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 10:06:58'),
('678d6f1f9458142f0d9ca61423', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 08:08:04'),
('681332ea9ea4f597eaa47fede0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-11 10:19:34'),
('68311732d2a487c421a13cd76a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 07:39:56'),
('684066f452129297d499aafeff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 09:12:42'),
('685d7ae3ba947e2f24b53eec10', '{\"user_id\":\"1\",\"user_token\":\"Sw0755GoQUz7waLxHHU22AdhbvahFHO5\"}', '2019-12-27 08:59:06'),
('68a00f69922c0457e7b24e0bd8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7VlbNs3VrUY77wncxiZbwfDwwbggjIAt\"}', '2019-06-26 09:37:15'),
('68bcefbf5640624f03987c7f3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 15:22:47'),
('692a4716275435037a0b1ed1ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 04:20:15'),
('693125f28cc25f4bc4aaf0ebb4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 09:18:06'),
('69f135a7151551a75907c91a87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 07:53:52'),
('6a368b074289b98ddb572a80ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 09:00:07'),
('6b152457ee92d3a7924f287d17', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 07:35:48'),
('6bac50fa72e28f697163f2e52a', '{\"user_id\":\"1\",\"user_token\":\"q9oPkD6hnG5kxRkntHGjLBDlrglSa1SV\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-16 10:18:40'),
('6bdcb3e4467ebc5c1d915a8ad9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 14:00:22'),
('6be3f7ef974b7c9bbf323dd09e', '{\"user_id\":\"1\",\"user_token\":\"BbHh6zhqzL6vtuqtJkHXO09NvxWsFr57\"}', '2019-11-11 10:13:08'),
('6c9425c03d745baf9014ee6469', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-21 16:02:29'),
('6d57fa9caddc0fe158cb4bb8bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-21 02:33:02'),
('6e1af3a273ce30cb3b7e4509c5', '{\"user_id\":\"1\",\"user_token\":\"Y1nA4CvmFwp6TiFmAZjnVSXXHnAoGnSS\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 02:27:22'),
('6f1972a8721b709bfa5419cdc1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 03:40:25'),
('701114db985a02b3a656a0c85b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uht6R4bjYcwI6iYRErW7b1EOvJOs66o5\"}', '2019-12-19 10:05:45'),
('702f25e9c5b72b6b28c1606f90', '{\"user_id\":\"1\",\"user_token\":\"77I1d1yRTrFNUeTWc4qSQECPEz0d3rUb\"}', '2019-12-11 08:26:46'),
('714bcc7aa98792d7bf45d1b773', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"y0RtWqRHowAsJ3VSBPMvy3Rdh1aozw90\"}', '2019-12-18 08:16:18'),
('719a7efe984e606c3ba11a9a1f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0FOydI9plJEnf99IBfTEhShB5hrid5sR\"}', '2019-10-21 15:23:23'),
('71c764b0d3a2aaf9f390a614b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-24 09:30:10'),
('71cf34fef035daed805f8343c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"SYci5bVzw3kQ5fny9DlPO74z1uf9hGrH\"}', '2020-04-11 15:45:20'),
('71f71b84979712cff0f7698713', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-01 02:14:36'),
('72db7dab718425ed32d5c39e6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 03:09:21'),
('7397edeb6c541207092acb1e2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 07:16:35'),
('73d9079c8a6002dc2fc94bcab1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 03:11:09'),
('7436f7597fc73d37ea0c3f0cd2', '{\"user_id\":\"1\",\"user_token\":\"QJmwfqK5wyJlgDT28UJA3LXug96Yj33O\"}', '2019-10-28 14:34:03'),
('745460b199d2f7aacd0d6d64b1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-15 13:52:05'),
('74d4ca56171b7b9ca18d705cd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 10:24:19'),
('74e0619f84f9944c2d70a5717b', 'false', '2020-04-11 15:23:35'),
('74f9e36c96aeaa1219a51a367e', '{\"user_id\":\"1\",\"user_token\":\"3RrPYrg0ngo3ZlalNLhknXsovTCzGV8g\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 09:48:13'),
('752000d3e6110af9570ebc1ec6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 03:25:40'),
('75ce84188fcb67e0011803c8b3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"B9MvaGris2fVH1HfESaLlvt5tBoKDsHR\"}', '2020-04-11 09:15:03'),
('760cdafb03fa181ed118c2064c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-20 15:29:46'),
('76188d6d10ef7c56730215a262', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"700eqeijUGktNb7TMHVCp8KT0cpSmoay\"}', '2020-04-09 10:25:04'),
('7649c3bf3a692ce0e09af27f8b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"NKaCxD7KHprRcLWKoWTxACRkK8QYw47u\"}', '2019-10-17 04:28:48'),
('767ecac2519a1e4927868437d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 10:18:31'),
('76c91f6cabe183e0d9f4ef1467', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"NtYPWxxh0w1UmExPuqYm4ejcCO2OIjAq\"}', '2019-07-01 09:20:03'),
('76cef73a73fb8346dfd4c3e5f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"vfj2EhFpBP84UNaNmZdUamk46JDJnYY4\"}', '2019-10-04 09:41:33'),
('7724f96f1d390899c22d671cd6', '{\"user_id\":\"1\",\"user_token\":\"tjd5S6EuWFRQ5U5eJFwz5gPc7YmEMwZK\"}', '2019-07-21 09:22:04'),
('7781e6b469ef249dac4dca7fa7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-27 05:21:56'),
('77b123159f764c4505258298ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 07:16:29'),
('78993dd0165639c836b7530b98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 14:14:47'),
('78c4e1cb3c4a629b2b3a3b95aa', 'false', '2019-12-18 02:45:41'),
('799b7fd408e88e755393fe2312', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 04:18:38'),
('79c0c08fa38ac55c0fce8de7ca', '{\"user_id\":\"1\",\"user_token\":\"iWJQHtsUnCyVA1UrQtyhJvtRN6xyoMqb\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-08 02:31:32'),
('7a6b6bed8a34d572a0afaeb614', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 10:07:02'),
('7a78938ae1519d9051c721f827', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 14:45:53'),
('7ad707e192d5c9789e7e42ceba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-27 08:37:43'),
('7adfc21e18f6fc1387222295ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 15:49:42'),
('7aeee578b21f8473a0436566f4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xmSodkXz3bqJEqFbph1nGS6MJz1hebxC\"}', '2019-06-28 09:50:17'),
('7b1c7e31d87742062a5f5574bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 03:01:33'),
('7b7e40cbcebeaf0aa0056e72c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 08:14:59'),
('7bb9931240a2c0dd89302c5e69', '{\"user_id\":\"1\",\"user_token\":\"HFxvYLUtnCohmZl07QG0S5h1Y1bMCYXC\"}', '2019-12-21 04:40:43'),
('7cbdc9b5078ba4f2cc874d1e86', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-21 15:32:26'),
('7d2d5e87b6e0ba49d8137d4e65', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-19 09:14:16'),
('7d55124e1ceea640d69b945bd0', 'false', '2019-12-20 07:33:04'),
('7d722cc16f9d44ec7ed897e23c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 07:35:18'),
('7d949a6186bfe615d352714f7f', '{\"user_id\":\"1\",\"user_token\":\"Cn9G7BfrchKy7Ma8l7XxgffR12R80Sfo\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-09 03:06:48'),
('7dbab3aa5234c17f582adfbe70', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 10:22:32'),
('7e56f6d8ed552ba2ad0d9cb518', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 07:39:11'),
('7e5d3f66fa5a078ca4e274ddaa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 09:45:02'),
('7e6c6e5064c056cd2cd0339846', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 07:17:03'),
('7eb6c4676fdad9d2ca26e65899', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-13 04:20:15'),
('7ee1da7e1c7247d03adf500a0a', 'false', '2019-09-30 13:47:20'),
('7f3492c79126e6ac2001695448', '{\"user_id\":\"1\",\"user_token\":\"mU7ysiu03YKhGjAdmFchbJ6Rx2wjlxTA\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 10:17:36'),
('807bb31556667360bb89a99d2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 09:38:09'),
('80800f33f9af80bb4a2a9bbfb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 02:23:04'),
('80ba05ffd951ca0a27d31cc83b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-28 02:53:56'),
('80fc9b39b1d938c6e23904feab', 'false', '2019-12-22 09:05:06'),
('81ee4233be0b50ee3a144ecf45', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-20 15:47:33'),
('8222398ac9fc124c4d76d916c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 09:52:02'),
('82316d6b0762e217e30d76f2b1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 04:36:41'),
('824fc00aef3b44985f73492fb7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uyDTLhI3IQeVslFZFsOdDIuUnbyEMrzK\"}', '2019-05-31 15:43:37'),
('825690b5d2cbac979ecaafbfaa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-17 03:43:45'),
('825c0bbb9a865160019603b50c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0BhsSojS4OGhYFIuRgBcJDgF2GHf03t5\"}', '2020-04-03 15:34:31'),
('828fb795f2fe5379bc539370ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-19 15:06:44'),
('82ce983cfc9ec561901003be7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-09 04:06:01'),
('833da8efd73d926f7f8b535058', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 04:20:14'),
('8404a5719de457f6056a7777ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 15:05:41'),
('84b7f492521a537edd079435df', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"1on6zQXtvhmQAcoQcR3zuHaf4aslfsdX\"}', '2020-04-18 10:13:53'),
('84b918a65d8d9da142aca0f1bc', '{\"user_id\":\"1\",\"user_token\":\"J2LLT34JIYNqhwcizRJN0HzO8ZKHcWI7\"}', '2019-10-27 14:55:25'),
('85be9f454d58c9c6ec876bb9a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 14:55:00'),
('865a8f82f7c1f0e481abc7d82b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-19 09:40:04'),
('86670284e7a831dd05dbf64b0c', '{\"user_id\":\"1\",\"user_token\":\"knFWJfFYyD8YfFpxA2WfODhIX13jg5TN\"}', '2019-12-30 02:28:55'),
('876736e75e3d4c6830079c2963', 'false', '2019-07-23 09:58:47'),
('87ba0540364fecb89d53180cb8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"vR9EJQBAPT7mvJxsFNa8sQLV0nT4vsap\"}', '2019-10-01 07:48:30'),
('87e119eb13b9810587bc776b64', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"HbiajjqDo1nxA6SG1BfUBzKz2Nc7BCWK\"}', '2019-06-29 04:52:43'),
('88dfccd344980802fa70028eb8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-27 09:01:30'),
('8905f7756a449e4321c23a2d47', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 15:40:26'),
('891499329f5dac1f97b8e9cec8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"DOFtyrqoZ8zaM2JMkyiCQevVqP841ead\"}', '2019-10-14 15:35:35'),
('89f45f4c4196ff920ba348a38d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 07:36:20'),
('8a6f44c2b5b8da2f01e2d6d2bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:40:26'),
('8afe91866ca9ba1cf6d994ad98', '{\"user_id\":\"1\",\"user_token\":\"pg5xTfndt9wycmUCWRbKukTZBsGhnsGl\"}', '2019-07-02 14:15:44'),
('8b0e369aa493cb2456b186fa98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-27 09:29:09'),
('8c78d0a24e90c38322d978cc6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-20 03:28:11'),
('8cc1a2b2fe90211ed4118c6723', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-09-28 14:51:20'),
('8cd42d645f8f5090c040ef91d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-24 13:47:43'),
('8cfa5d95bcdea47a62306da816', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-13 09:55:30'),
('8d5da55b34fd1d3644ab80eca0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"pgUxVu4XslseYGHitiUU45BbOFBBmiYH\"}', '2019-10-09 04:48:20'),
('8db13e92b36f1eef687d48accf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 08:44:01'),
('8e8ce51652aafcf095e4a5a753', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 14:56:15'),
('8fd6eba53e9c9f0173a0d34b2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 04:11:20'),
('9059a0444ff8afc4898809a56d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-24 15:23:06'),
('9062a3dee0aa8341ee33980d45', '{\"user_id\":\"1\",\"user_token\":\"DyVwZPuZLubSIeggluaj16TH3g3Nx1q2\"}', '2019-12-16 15:34:46'),
('90ae6b9f13ece3045ef79088b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oc2vF3ce27XH7bSl1Eldeq03MEW3G0oe\"}', '2019-12-20 08:14:03'),
('90e5299227dfd3856e4f8ca04d', '{\"user_id\":\"1\",\"user_token\":\"B78uCQfrsT42VMsbRF8OI0x1LX2qcf5d\"}', '2019-11-12 09:39:28'),
('923adb0cf693547ce92f06a876', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 09:00:08'),
('9245d1edbe03eb9b17480be80e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 14:52:18'),
('93bc80fec4242cfe9c61e49ace', '{\"user_id\":\"1\",\"user_token\":\"FrQMRuOKXi5OQBddRoOE5xhiPmF7Cc07\"}', '2019-07-02 07:50:58'),
('94a37363f146764502dfe93ebb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 09:22:34'),
('9533e40a49525beb32260f7c0c', '{\"api_id\":\"4\"}', '2019-10-04 09:15:01'),
('965f6c844204f551bcb1758767', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-02 15:28:56'),
('96f2fa1ee65707238e16a6ea30', '{\"user_id\":\"1\",\"user_token\":\"oE6D9LgPGYeXHmAqVnREoONUtmbClmwQ\"}', '2019-12-28 03:06:22'),
('98db1046270d6613ca0e8bbe37', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 08:43:01'),
('9a4276bc14e2fa1fcfac6b891b', '{\"api_id\":\"4\"}', '2019-10-04 09:15:28'),
('9a826b24f36d4c0c4f31f924ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-20 03:39:46'),
('9afb448b5272f7c4e8caacb380', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 07:13:38'),
('9b43b675cbd811d402c0669bed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 15:58:25'),
('9b6bf08c558aaaf740d2368a8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-21 03:01:50'),
('9b7d027394d9d0f0428402dc4d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oZTbXX0QyTKBuc6ogfPdkPJnNm2yEWaB\"}', '2020-04-01 13:23:26'),
('9c212f51525d87965037c7677d', 'false', '2019-10-30 14:43:05'),
('9ddcd04e63ead9dc4b8e1df1cf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hdzXI91KUv74ecSeJaGvu2eeKOjmLvli\"}', '2019-06-26 08:58:15'),
('9e0d65507c74602016c69c1b19', '{\"user_id\":\"1\",\"user_token\":\"E68v56V2soKV0SWhrfvtPz6ajR8knkze\"}', '2019-07-07 13:22:00'),
('9e388a8d4907ffda6fa3a9b398', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 10:22:24'),
('9f1f4fa70b7fb7fcec7ad7449a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 04:28:12'),
('9f573f77ef4fd866a2acec5688', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-12 14:50:58'),
('9fcd18ff2157583f5fb27b5575', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:39:57'),
('a05a4abc1790bacb125f72f96a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 04:46:49'),
('a062af59b2cec1aff40ca086ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 15:38:21'),
('a0f438939070460c6ed41d65a7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"xhBHhWpEkbX37cCAtWTI1YKzpnDuF6Tg\"}', '2019-05-14 09:48:42'),
('a10712d223ec91e9ffd33349d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 16:05:37'),
('a11dcf3488b1012724aec438d9', '{\"api_id\":\"4\"}', '2019-10-04 09:15:49'),
('a1467bda8f26bec17b80191772', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-07 10:16:38'),
('a14b85daa92072a29ce7147b67', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"LrO5PsrMLDayFNnVT3skHJUbVGLsAJwV\"}', '2020-04-13 10:25:12'),
('a2d11514281ca186cc3f7284c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 10:11:27'),
('a409e5c0bcc3c34d230d80dee4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PNY1OLkE03mCbc5QTyoZjyFT7Z6UAg0L\"}', '2020-04-15 10:26:29'),
('a427f821da01ff512636c1511e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 10:07:07'),
('a42a0f4acfa43997aba1058955', '{\"user_id\":\"1\",\"user_token\":\"68ZfOJDRzHMRmlHPSXjaJO7TJKYMcGLF\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 07:34:05'),
('a45989d687a4e6e5666646dc6e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oul9gAR0cvkFAbv7HsaRP4qPWSZYCyGO\"}', '2019-10-12 09:21:27'),
('a45b724b7d1db71fe22e2ea940', '{\"user_id\":\"1\",\"user_token\":\"1icHILA7TDP8GbxVDlIEq3iNpSc2BnFs\"}', '2019-10-13 01:44:21'),
('a4871a05196a1e47fa3f9c8dcb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 04:36:59'),
('a5183a9c2a40945e20ad7eba5e', 'false', '2019-12-18 07:37:38'),
('a52fe85be15a72d9e8fb2a91ae', '{\"user_id\":\"1\",\"user_token\":\"ZtLKNwpNOVlIVITOW9EPiSEgF6B6wtZO\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 03:30:07'),
('a586d36faece2a72e10b6d5e43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-09 08:23:21'),
('a627922475cd664bb19cae4868', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-17 09:22:56'),
('a68355092abadaa22df530add4', '{\"user_id\":\"1\",\"user_token\":\"ILHwWXac2FgYjsLJMpYQCJOKp9w0Rk0S\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 15:46:17'),
('a69f5b34881791378c5cb8e1ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-13 01:44:05'),
('a70184745b1ec59a0088d494a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-21 03:14:51'),
('a742ea7aa9374881ad93d3cdd4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 08:45:51'),
('a7b453869d485857d74e1a8987', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 07:16:30'),
('a7c26dc6498eb5808496469430', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-15 08:13:10'),
('a7d3cbb3a3d75d2201b4c6f3c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-09 03:17:26'),
('a808cf5ff19b24d9d5b7cac1e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 03:11:11'),
('a8da388caa32f3324ca37fc9c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 04:30:46'),
('a9c76452e97d50dff66a53f00c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 07:59:09'),
('a9d836699c2a1ebe9a06ffedad', '{\"user_id\":\"1\",\"user_token\":\"Qe51SrWjB8hNFrvQreAE4H4B77aUqR84\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-09 15:22:26'),
('aab6b90b67b0b9750531597df5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:34:05'),
('aaba9dcee4b77be50590972457', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-19 07:40:38'),
('ab0b897e422b7c9617cb6aa108', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-17 16:10:20'),
('ab73c100c1b11869ec87e5b921', '{\"user_id\":\"1\",\"user_token\":\"PAHV7flH2bX1HvHqTBSkRLB5IvMGxDLn\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-08 15:34:44'),
('abd57311f83120411209566d5c', 'false', '2019-11-11 10:15:31'),
('abea4a66bc0bf560bd35517873', '{\"api_id\":\"4\"}', '2019-10-04 09:16:02'),
('ac6174630bbf604b26b2100e8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-17 15:15:51'),
('ac69e603883b6d1012ae270ea7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 07:16:08'),
('ad4bb9caf3562dee7b2c4c64f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 14:07:49'),
('ae06af150e3fb75899a07487bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 02:46:24'),
('ae1509d3e31c86945354fe5f5b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 07:16:05'),
('aef213e2a7330438feff2a8d91', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-28 02:54:20'),
('af04cd3e5ddbf84885ba4dbea6', '{\"api_id\":\"4\"}', '2019-10-04 09:15:38'),
('af3caeaa8546b43810e277ace1', 'false', '2019-05-12 00:17:54'),
('b08d793e37e0b595890751400f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"payment_address\":{\"address_id\":\"2\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3514\",\"zone\":\"Aberdeenshire\",\"zone_code\":\"ABNS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3514\",\"zone\":\"Aberdeenshire\",\"zone_code\":\"ABNS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2019-10-08 09:57:33'),
('b0b97fb51ea368a20dedd8f2dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-16 15:51:19'),
('b13fee62b6f5a5173bac8cd84b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 10:07:02'),
('b1a62d807005cb08723ccd3e6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 16:07:28'),
('b1ddc0280bece04c7f216541c6', '{\"user_id\":\"1\",\"user_token\":\"ElvKuPNAh6uFEVSPY2Kd3z7dJ0yAwmXR\"}', '2019-07-05 15:08:53'),
('b223b8d811b468d58694bba0e0', '{\"user_id\":\"1\",\"user_token\":\"UNwg2MklYYLzFukGnGMDRQB2LMSZuXi5\"}', '2019-07-02 02:29:58'),
('b3e4d7652e4452a131acf89ad5', '{\"user_id\":\"1\",\"user_token\":\"hEFtX1FfCRs9KF0M1jtDzE9cCmmeoDgu\"}', '2019-12-18 15:32:09');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('b485725bbdd3677a685cc00187', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 02:23:03'),
('b5eb831b7339bd7f99a546536b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 09:30:52'),
('b7629272684479d8853dbb04e6', '{\"user_id\":\"1\",\"user_token\":\"uAZasg1hczTV4OroboPd8Dr60ZlhDNY5\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-19 10:14:23'),
('b7640125021027a15997f0aab1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-19 10:11:36'),
('b7def88f09da933f4597331c86', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 03:02:59'),
('b8778919ec1d1382289b21b612', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Kvh3jr72AOKw9g3YmoEyOyxHtr0QHSnu\"}', '2019-10-11 15:11:34'),
('b8dd83500903be89b38753fc10', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"3645nN3bFrT3cCuse3kJ81su9RT2Qs01\"}', '2019-05-15 09:18:25'),
('b966d8bafbb28b9b3b72048f8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 08:08:03'),
('ba21d4cb784705d7c16c45e3e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 13:43:05'),
('bb2af0575dd0476853617a35f9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"V1qrXiYG2yloqTOZjWAGusXnmzjlpCrd\"}', '2019-11-28 08:48:47'),
('bcc56944e4a502f5d51155bd3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-18 10:12:32'),
('bd4f32422f6f540295c59c1007', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:47:19'),
('bd572ca4b3eeebf3ebca55671f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"y3auiFZzRK8PdoGK37umkPqpoQZuu8SK\"}', '2019-09-19 15:39:45'),
('bd6d95152a6f2ee4344f9bacb3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0elU5Okq1wADRO0HishaUIxW5N6QV7ig\"}', '2019-06-27 04:46:55'),
('bdc2c5edf7c998c3e911af197a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 04:47:09'),
('bdcf8a2c74e8ce149a1cfa0e1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 08:42:26'),
('bf0315d7a6a99f60b30d8f7d04', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 09:24:47'),
('bfaa147d218361d79e0fab00db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-20 10:17:31'),
('c0118603795713968830024d3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-24 04:01:12'),
('c072e674e95b18a41251bad63f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-14 02:15:52'),
('c07b4bf01337c24520654ae4cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 15:45:10'),
('c0fa6b5e0fd7ab7c22b1faafe4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 15:40:26'),
('c142c024056127ab502df1b53f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-27 08:37:47'),
('c151898f83beee170a27d31083', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 09:18:05'),
('c21bfc3c24be34a1181405b9a3', 'false', '2019-09-30 02:01:45'),
('c255c6f602c2bfad10accf4323', '{\"api_id\":\"4\"}', '2019-10-04 09:14:08'),
('c349ad08b04401323fec310069', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 04:24:08'),
('c36a756f62cdb91c6e12cf75c8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"install\":\"25m2CcxT85\",\"user_id\":\"1\",\"user_token\":\"k2H410KHlINPsJHhjshPA0XSfDYVbz3j\"}', '2019-12-11 09:17:54'),
('c37b71538870c3ef3c20777deb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 09:56:56'),
('c3a1335000f7fecc822de37c10', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-27 09:01:06'),
('c3c2190b5b300b1a2b1ec7a05f', '{\"api_id\":\"4\"}', '2019-10-04 09:15:17'),
('c491e656de6cada6d2e8b529b0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0Q6jV4TPVusM2pOHF951Sb1KG7BfaFmx\"}', '2019-09-28 15:11:44'),
('c4b57cbc7d2c8b35a00575ef96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 09:37:06'),
('c4da3850b8fe21cdc26fca113a', '{\"user_id\":\"1\",\"user_token\":\"vxO2ROoY2VLs4lNqEHsfGBZj7CEillJm\"}', '2020-04-20 07:49:01'),
('c548d973db9de517a3ed10723d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 16:00:16'),
('c5adde5e94afe9adb73f978f4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-20 03:28:36'),
('c612d485924c75a05566168275', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4KWoGsMz69RO8HVG5rshEYz8r7ugd6wM\",\"wishlist\":[\"48\"]}', '2019-10-01 09:23:46'),
('c6a0380d565646314dfc0ad9db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:44:27'),
('c6b73a62f172d9cbe3587652f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"yo6FzCi6AunvTr9xOVYGnYbIlIe3GjAB\"}', '2019-06-30 15:19:03'),
('c781ce490767dbda1b3687b09c', '{\"user_id\":\"1\",\"user_token\":\"KQ3QU0qbEMpibiAaO0fgbIq8U8tUrTwP\"}', '2019-09-30 07:42:36'),
('c8008ca2791f68f1f70482fc65', 'false', '2020-04-12 13:35:16'),
('c841401d6d1c075e0225e37a62', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-22 04:49:54'),
('c8d5f683f06700eed979e5fc24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 09:49:25'),
('c8d9e0382b9f1ac969031050eb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"veLFaJjr6UV0Zp2uKERRZ7InHfcWUGcE\"}', '2019-06-16 10:03:30'),
('c91658c14d581f4bb5f18c7c5b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-15 10:10:54'),
('c9f946ba9faab07ea6434e542d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-28 14:33:21'),
('ca1ada26c4a7ec91b6c3306e86', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"rwEkbBvBpUUXZZwzkfx9fKHTAd3zsM2h\"}', '2020-04-14 09:41:48'),
('ca46c346450dcf36976a38a9be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 08:17:39'),
('ca80bf33d81db8e49a003ac580', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 15:30:22'),
('caa2851e24419f12a12a59c8be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 04:45:39'),
('cb0a2237fdbb2b022ba074d989', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"MVKtyuVQ3m4qtRZeRSHvuVfKouEMziQE\"}', '2019-10-01 14:31:02'),
('cb1d94673c498fae29f691161b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PcHuuyR96PzgVrjhDN2px2H7j0cPJUNm\"}', '2019-11-27 09:41:35'),
('cc00090320f95e1f8328d63c93', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-24 07:39:14'),
('cc25fc3ed0030623fe52057567', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"qCdg7xf1xmUeL1MUr1j8d2LHyhOnChXq\"}', '2019-05-27 09:36:47'),
('cc32b18df440906a4831713d3c', '{\"user_id\":\"1\",\"user_token\":\"npjAhjLtZOpnfrmRIBtyCKy0x5CEMqCh\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-10 08:47:02'),
('cc503a0e6c73fda5dbb8567f84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 04:16:35'),
('cc71b82df1b26b4d53d00cc962', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-19 09:40:12'),
('cca12cf52132fc3f021458429d', '{\"user_id\":\"1\",\"user_token\":\"owIbeW0a9O9hzsC2rK0xYUveKVyApOvn\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-03-30 15:15:26'),
('ccb34375c6f3f140bacf1c6a07', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-12 06:38:25'),
('cd021caaf12a1cd60ef2038ee8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 04:08:28'),
('cd1a9400366dc9a40e31c4b523', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-02 09:57:16'),
('cd6797266bd72865ae0f8ded14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 15:32:44'),
('cdbfa76df1fecf502fb47eec52', '{\"user_id\":\"1\",\"user_token\":\"ALGb9INZ7kBmtCUWggr4dOAS3o7eU36j\"}', '2019-12-11 09:53:48'),
('cea5b458ec4e841628353320f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-24 03:47:14'),
('cf1f8d0377144532b238f0f913', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 03:59:33'),
('cfcfc83b82922e8e5a865dc6ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 02:42:32'),
('d03a73721f4c916438eee9b3d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 15:36:29'),
('d0c89820bccea6adf1fcc5058e', '{\"user_id\":\"1\",\"user_token\":\"d7KZcjj05jATb936GvKYYov5rJ2SsjKc\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 03:46:38'),
('d0db124d0ed47510cc29ca989b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 02:42:38'),
('d1067c589787af2515e1bd3bee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 08:12:12'),
('d10710942b3a55b87c4f777bd1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"account\":\"register\",\"customer_id\":\"2\",\"payment_address\":{\"address_id\":\"3\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3520\",\"zone\":\"Blaenau Gwent\",\"zone_code\":\"BLA\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"3\",\"firstname\":\"Plaza\",\"lastname\":\"Themes\",\"company\":\"\",\"address_1\":\"NewYork\",\"address_2\":\"\",\"postcode\":\"123456789\",\"city\":\"NewYork\",\"zone_id\":\"3520\",\"zone\":\"Blaenau Gwent\",\"zone_code\":\"BLA\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2019-12-25 08:15:38'),
('d1fe2e642051bde4522fae902b', 'false', '2019-09-29 13:59:58'),
('d221b35334c85dfa2320543159', '{\"api_id\":\"4\"}', '2019-10-04 09:15:14'),
('d2b06e8d09ebcfa93c1c62d852', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"1sZASjnfgyUU9h6wXW71qa00YIGnOlne\"}', '2019-07-23 10:08:49'),
('d30d5f389b9c1ff9e8a7e6c3aa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"E7QLPB6W4e8od8M5yZHWcAs8sb5SbYpC\"}', '2019-10-02 15:20:07'),
('d43a525fc3e9480d5f5df5b40e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-24 09:25:33'),
('d447c3c6424c8da12f322d2ab1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-13 02:30:36'),
('d53e4a82b3c2c702b4a4e82263', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-07 02:33:33'),
('d53f3ac5b6878c244329df4e80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-13 06:38:32'),
('d5be8cddbb20e8520f80e47a5b', 'false', '2019-05-16 01:48:57'),
('d690e36d069c40403bd6bfa6b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 07:39:28'),
('d78862c9aef29a8bf4213788d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 08:18:10'),
('d7a6eb2b3069528b2c096c579f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-18 09:52:55'),
('d8a0f356d48fff1220f846eeee', '{\"user_id\":\"1\",\"user_token\":\"GouPNQYvPSFZUb9hhOUJI7Q0WQ7tZo1S\"}', '2019-10-27 04:17:42'),
('d9a3dfe9f843a36abe8feec761', 'false', '2019-06-27 02:09:51'),
('d9f1b1287b1abd75c774a66f42', 'false', '2019-09-18 14:27:08'),
('da251ea4e983a3c7c1de62ab56', '{\"user_id\":\"1\",\"user_token\":\"oeWabpxWicSu7dnmAie8A87CVCFjSWv7\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-13 04:20:07'),
('db22b79f21c2bae065024a9b88', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 10:17:42'),
('dc6cd0d03c5a2145b650254e30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 02:46:58'),
('dcf873a62f002486d96322c848', '{\"user_id\":\"1\",\"user_token\":\"GVLYx6rxFhktHdJxIYK69fmLQfVvTPlc\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 08:34:09'),
('dd6ca76ab20a581fc0811972ce', '{\"user_id\":\"1\",\"user_token\":\"a0YYA0y3SqKJIwL91xvKiJQntobCKvCV\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 04:48:45'),
('dd774fa0992bace5885e10ef61', '{\"user_id\":\"1\",\"user_token\":\"j4Q3ADh8p1OwPzILWsQsDBBQMYwt6JRk\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 04:54:47'),
('dd78e7cb630178416f7d741fd2', '{\"language\":\"de-de\",\"currency\":\"USD\"}', '2019-12-27 09:03:13'),
('dd7e4b4ed778ca360856199dbe', '{\"user_id\":\"1\",\"user_token\":\"rPWtHrm0bEyVHb5Kvg8fA1fhWvek52YX\"}', '2020-04-15 15:57:36'),
('df4612382796b24ed4febdfdbe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-13 10:21:55'),
('dfa43ffa1ab972ffcade545a8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-30 15:26:23'),
('dfc70577202718aa957ad8937d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 14:55:00'),
('e0644fcf7146181d97c209cebb', '{\"user_id\":\"1\",\"user_token\":\"2DRBwdpbjipY3B8TrxtpUgv7KwkWX9px\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 03:14:55'),
('e0b3d4e98db1e3a1518a8ec0bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 07:39:46'),
('e11f24a85436e0a37fbb0c1d5b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 15:40:25'),
('e1bd04529ceab6a8d5f80080eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 13:47:02'),
('e1eeec4f0e6c53c9134a0336dc', '{\"user_id\":\"1\",\"user_token\":\"vg66oCVx5ZQB5A16TNHhx7ZzryBrwEbb\"}', '2019-12-13 09:55:14'),
('e2150cc36baa19070c2b646797', '{\"user_id\":\"1\",\"user_token\":\"whMeW614BG6KcqUP6rSimXNhyP3KrgCq\",\"install\":\"QJ2IApsjLT\",\"success\":\"Success: You have modified blog page settings!\"}', '2019-11-13 09:44:55'),
('e3c534833f962fc2493f22f837', '{\"user_id\":\"1\",\"user_token\":\"Jw6Sf5vxAmd0ObWqVwTdl742OVe9lmEw\"}', '2019-09-15 15:18:23'),
('e4430b4a615237d22acf9ae2d1', '{\"user_id\":\"1\",\"user_token\":\"CVpQACiCg3NNyLFNMgfVCynXrIckUyui\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-05 14:01:32'),
('e58530f8fe4fd2b41c9370be32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-14 02:48:12'),
('e63ce5b75ef73dd98765a844ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 10:10:00'),
('e70113120f83ba6182fd1936b4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"RpOJ6GpPIBpPvId6IehXbS5msRBCna4h\"}', '2019-06-17 15:42:32'),
('e7d96691af83dc8668bf5f3e1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 08:58:59'),
('e83273c66534e5375bb3bdf773', '{\"user_id\":\"1\",\"user_token\":\"il2KFbxR6dQghIhwok6CcejCQEEvoef5\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-17 15:15:24'),
('e8b6cfc6151a9484e928922af5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 03:11:13'),
('e8d98aa4b6a01beacc7ba4aaba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 04:48:57'),
('e9dc3d5157e77d724505a31d71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-27 08:56:32'),
('ea2c4e50d97c8e5d0910395152', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 14:49:30'),
('eb4cc5a7a2e7e9ca6ec762760e', '{\"user_id\":\"1\",\"user_token\":\"iGVDSAJ9xUSjw0PDV4fNOWiXue9knu90\"}', '2019-12-14 05:06:49'),
('eb4db045a9e95d310c3633ebdc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-12 09:52:08'),
('eb95d92509151b8b7bd56a3f06', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"lgObAQj9dTJU4mUSYjYaKbeiHTUPeKEX\"}', '2019-09-29 10:13:51'),
('eca394034f7550490279ccdfc2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-13 15:12:13'),
('eccba69f266099df1caed7f0e6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Nv9nPXtDMG8oreNrWKBQdJHBv1OpP3Ni\"}', '2020-04-12 08:55:20'),
('ee04fc1771b1cc16cadab3681b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"jkf3CRdEQpU5GgkaS9b5DaQegA0EZZoz\"}', '2020-04-10 15:51:51'),
('ee54a2a647d1f1ff5fecd7f0ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 18:54:31'),
('ef2fa6f036ca02dd708e5c80d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-28 03:12:18'),
('efe70e73f75d27b384c5183bb1', '{\"user_id\":\"1\",\"user_token\":\"f51wcwKxnAHxoaxJ4rQgBEzUUEsLJazA\"}', '2019-05-23 15:08:30'),
('efeac11846ddda16d35944919c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-27 08:20:01'),
('eff95065e35aa372ef9386b2a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 15:41:43'),
('f013860114c14930e49ccd507a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 08:48:11'),
('f1097917d96be8b9aa87d276c7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ReFbvBIeWmgnPAwdFeucz9X3JxjV3iEq\",\"install\":\"ZdpCMmk9D1\",\"success\":\"Success: You have modified modifications!\"}', '2019-05-22 16:25:43'),
('f1399b529835e7d70f6e9a809c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 15:21:36'),
('f173a978493e40f4085d2d4767', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"LxyuNb3RP5inM5nwwQ0J0FWYkloRk3LL\"}', '2019-09-30 10:11:33'),
('f195e3f350e1c7ce09ab679a0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-08 08:15:00'),
('f1ca65b0a5374b811044dac1eb', '{\"user_id\":\"1\",\"user_token\":\"gH80HnBo2XeO5eKTiE7pTqoCJf1N2iKU\",\"install\":\"IP0qluPrrv\"}', '2019-05-24 14:55:43'),
('f236e98755bb270920c3fc4c29', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-27 15:15:24'),
('f25cb03c99a5963dde204dacc7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"3N2sdtdlucI0zcVA9c8CbCisW2KoDm8l\"}', '2019-05-11 15:49:08'),
('f3dbcb9b997bcf2ffafed6db76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-12 04:35:06'),
('f3f3c30190c813a09e52ae44aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-18 10:20:06'),
('f41a238fa55e3aa210c018a5ba', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ddWf4lQZCdcWdkyRBues7DyE6Ixsy4ER\"}', '2019-09-18 15:21:57'),
('f426a4fcb3356a8c25701c281f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 08:43:56'),
('f4d19c652cee01bad72622f653', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:48:33'),
('f4ddd6ee56a6008272fab4bd62', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-09 03:21:01'),
('f57cb8546acd7ded2961a0cb98', '{\"user_id\":\"1\",\"user_token\":\"4JDyrec5QuIXNGS35hnwhtjDzgg8W6rV\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-06 14:27:03'),
('f5a00d75db6074e558d865c558', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-16 03:21:47'),
('f5a87d9d0fd231c7f220e07bec', '{\"user_id\":\"1\",\"user_token\":\"WVFCqFF7iUTBumGBmDMDh4CY9uHCJ60O\"}', '2019-11-18 10:16:01'),
('f5c3958ae2be878a89c42c1882', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:44:28'),
('f63b42d844c72dd3154c61efa6', 'false', '2020-04-03 12:33:31'),
('f6525d4db79a0f1f356e551f97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 02:29:47'),
('f667fcf82684b5c0e584ffd4ef', '{\"api_id\":\"4\"}', '2019-10-04 09:15:31'),
('f7dc43adfa3db824e1f01a1170', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-07 13:18:49'),
('f7f5811fb35f2de22e7d662127', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-18 03:59:17'),
('f800d3f6e1e502ff7a1464539f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-28 02:26:59'),
('f81c7e2a9a81167596d9dcfc24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-18 10:07:04'),
('f8423d6964b35579676f138eef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-15 09:41:37'),
('f8ddb9647faf2b2aa7c032b02e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-10-09 04:26:05'),
('f92bcefa67dd627c5472e2672a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"jnxBrWQd3j2UiRmQj7rRvwbDJy8tTrXc\"}', '2020-04-10 10:30:26'),
('f9c6037bf170afa9fa90419f8d', '{\"user_id\":\"1\",\"user_token\":\"XvuitdLdTNL49vAeAIR9inVAprInUoJS\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-23 09:44:56'),
('fa440f7e94a3f3b9cbcd5bffad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 14:55:00'),
('faff1050d6bc9c53a9937e29cb', '{\"user_id\":\"1\",\"user_token\":\"iNAWcTvQ5VXguSCVt35ti6D2Jdwvmccu\"}', '2019-12-27 15:32:51'),
('fb0bbe37a466c13fc3235578ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-25 08:14:26'),
('fcc615c29e271bba1250de9b17', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 03:19:25'),
('fd3817be3881b0a979dc8d26ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-12-24 15:58:44'),
('fdba2f28c5ebebc6b70f6a9d83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 16:27:04'),
('fde989d19d1c51378169a17295', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-09 15:36:55'),
('fe714dd31e934cacc22c3dfffe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-04-12 03:17:51'),
('fea28d7775dfc4c340ddb90a5f', '{\"user_id\":\"1\",\"user_token\":\"WXMFkLk58JiRPnE6lDokMXVZFWx0UQ43\"}', '2019-12-20 14:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(207, 0, 'developer', 'developer_sass', '0', 0),
(206, 0, 'developer', 'developer_theme', '0', 0),
(16060, 0, 'module_ptajaxlogin', 'module_ptajaxlogin_redirect_status', '0', 0),
(16059, 0, 'module_ptajaxlogin', 'module_ptajaxlogin_status', '1', 0),
(215, 0, 'module_ptsearch', 'module_ptsearch_status', '1', 0),
(216, 0, 'module_ptsearch', 'module_ptsearch_ajax', '1', 0),
(217, 0, 'module_ptsearch', 'module_ptsearch_show_img', '1', 0),
(218, 0, 'module_ptsearch', 'module_ptsearch_show_price', '1', 0),
(29931, 2, 'theme_default', 'theme_default_image_location_height', '50', 0),
(29930, 2, 'theme_default', 'theme_default_image_location_width', '268', 0),
(29929, 2, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(1883, 4, 'theme_default', 'theme_default_directory', 'tt_ocframe5', 0),
(1884, 4, 'theme_default', 'theme_default_status', '1', 0),
(1885, 4, 'theme_default', 'theme_default_product_limit', '15', 0),
(1886, 4, 'theme_default', 'theme_default_product_description_length', '100', 0),
(1887, 4, 'theme_default', 'theme_default_image_category_width', '80', 0),
(1888, 4, 'theme_default', 'theme_default_image_category_height', '80', 0),
(1889, 4, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(1890, 4, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(1891, 4, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(1892, 4, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(1893, 4, 'theme_default', 'theme_default_image_product_width', '228', 0),
(1894, 4, 'theme_default', 'theme_default_image_product_height', '228', 0),
(1895, 4, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(1896, 4, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(1897, 4, 'theme_default', 'theme_default_image_related_width', '80', 0),
(1898, 4, 'theme_default', 'theme_default_image_related_height', '80', 0),
(1899, 4, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(1900, 4, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(1901, 4, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(1902, 4, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(1903, 4, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(1904, 4, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(1905, 4, 'theme_default', 'theme_default_image_location_width', '268', 0),
(1906, 4, 'theme_default', 'theme_default_image_location_height', '50', 0),
(1907, 5, 'theme_default', 'theme_default_directory', 'tt_ocframe6', 0),
(1908, 5, 'theme_default', 'theme_default_status', '1', 0),
(1909, 5, 'theme_default', 'theme_default_product_limit', '15', 0),
(1910, 5, 'theme_default', 'theme_default_product_description_length', '100', 0),
(1911, 5, 'theme_default', 'theme_default_image_category_width', '80', 0),
(1912, 5, 'theme_default', 'theme_default_image_category_height', '80', 0),
(1913, 5, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(1914, 5, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(1915, 5, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(1916, 5, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(1917, 5, 'theme_default', 'theme_default_image_product_width', '228', 0),
(1918, 5, 'theme_default', 'theme_default_image_product_height', '228', 0),
(1919, 5, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(1920, 5, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(1921, 5, 'theme_default', 'theme_default_image_related_width', '80', 0),
(1922, 5, 'theme_default', 'theme_default_image_related_height', '80', 0),
(1923, 5, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(1924, 5, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(1925, 5, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(1926, 5, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(1927, 5, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(1928, 5, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(1929, 5, 'theme_default', 'theme_default_image_location_width', '268', 0),
(1930, 5, 'theme_default', 'theme_default_image_location_height', '50', 0),
(30147, 3, 'config', 'config_logo', 'catalog/logo/ecolife.png', 0),
(30145, 3, 'config', 'config_stock_display', '0', 0),
(29928, 2, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(29953, 3, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(29952, 3, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(29365, 0, 'module_ptblog', 'module_ptblog_category_post_content', 'grid', 0),
(29364, 0, 'module_ptblog', 'module_ptblog_category_layout', 'right', 0),
(29363, 0, 'module_ptblog', 'module_ptblog_category_latest_post_limit', '5', 0),
(29362, 0, 'module_ptblog', 'module_ptblog_category_latest_post', '1', 0),
(29361, 0, 'module_ptblog', 'module_ptblog_category_post_limit', '10', 0),
(29360, 0, 'module_ptblog', 'module_ptblog_category_height', '277', 0),
(29927, 2, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(29926, 2, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(29951, 3, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(29950, 3, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(30144, 3, 'config', 'config_order_status_id', '7', 0),
(29359, 0, 'module_ptblog', 'module_ptblog_category_width', '450', 0),
(29358, 0, 'module_ptblog', 'module_ptblog_seo_url', '{\"1\":\"blog\",\"6\":\"\"}', 1),
(30141, 3, 'config', 'config_cart_weight', '0', 0),
(29948, 3, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(30142, 3, 'config', 'config_checkout_guest', '0', 0),
(30143, 3, 'config', 'config_checkout_id', '0', 0),
(30140, 3, 'config', 'config_account_id', '0', 0),
(30112, 2, 'config', 'config_icon', 'catalog/cart.png', 0),
(30113, 2, 'config', 'config_secure', '0', 0),
(29954, 3, 'theme_default', 'theme_default_image_location_width', '268', 0),
(29883, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(29882, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(29879, 0, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(29881, 0, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(29880, 0, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(29878, 0, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(29877, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(29925, 2, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(29949, 3, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(29924, 2, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(29947, 3, 'theme_default', 'theme_default_image_related_height', '370', 0),
(29946, 3, 'theme_default', 'theme_default_image_related_width', '370', 0),
(30110, 2, 'config', 'config_stock_checkout', '0', 0),
(30039, 0, 'config', 'config_error_display', '1', 0),
(30040, 0, 'config', 'config_error_log', '1', 0),
(30041, 0, 'config', 'config_error_filename', 'error.log', 0),
(30148, 3, 'config', 'config_icon', 'catalog/cart.png', 0),
(30149, 3, 'config', 'config_secure', '0', 0),
(30038, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(14709, 6, 'theme_default', 'theme_default_image_location_width', '268', 0),
(14707, 6, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(14708, 6, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(14706, 6, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(14704, 6, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(14705, 6, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(14702, 6, 'theme_default', 'theme_default_image_related_height', '370', 0),
(14703, 6, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(14701, 6, 'theme_default', 'theme_default_image_related_width', '370', 0),
(14700, 6, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(14699, 6, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(14698, 6, 'theme_default', 'theme_default_image_product_height', '600', 0),
(14697, 6, 'theme_default', 'theme_default_image_product_width', '600', 0),
(14696, 6, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(14695, 6, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(14694, 6, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(14693, 6, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(14692, 6, 'theme_default', 'theme_default_image_category_height', '250', 0),
(14691, 6, 'theme_default', 'theme_default_image_category_width', '840', 0),
(14827, 7, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(14828, 7, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(14826, 7, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(14824, 7, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(14825, 7, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(14822, 7, 'theme_default', 'theme_default_image_related_height', '370', 0),
(14823, 7, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(14821, 7, 'theme_default', 'theme_default_image_related_width', '370', 0),
(14820, 7, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(14819, 7, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(14818, 7, 'theme_default', 'theme_default_image_product_height', '600', 0),
(14817, 7, 'theme_default', 'theme_default_image_product_width', '600', 0),
(14816, 7, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(14815, 7, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(14814, 7, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(14813, 7, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(14812, 7, 'theme_default', 'theme_default_image_category_height', '250', 0),
(14811, 7, 'theme_default', 'theme_default_image_category_width', '840', 0),
(14689, 6, 'theme_default', 'theme_default_product_limit', '12', 0),
(14690, 6, 'theme_default', 'theme_default_product_description_length', '180', 0),
(14688, 6, 'theme_default', 'theme_default_status', '1', 0),
(14687, 6, 'theme_default', 'theme_default_directory', 'tt_ostromi5', 0),
(29875, 0, 'theme_default', 'theme_default_image_related_height', '370', 0),
(14710, 6, 'theme_default', 'theme_default_image_location_height', '50', 0),
(14810, 7, 'theme_default', 'theme_default_product_description_length', '180', 0),
(14809, 7, 'theme_default', 'theme_default_product_limit', '12', 0),
(14808, 7, 'theme_default', 'theme_default_status', '1', 0),
(14807, 7, 'theme_default', 'theme_default_directory', 'tt_ostromi6', 0),
(14829, 7, 'theme_default', 'theme_default_image_location_width', '268', 0),
(14830, 7, 'theme_default', 'theme_default_image_location_height', '50', 0),
(30111, 2, 'config', 'config_logo', 'catalog/logo/ecolife3.png', 0),
(30139, 3, 'config', 'config_customer_price', '0', 0),
(30109, 2, 'config', 'config_stock_display', '0', 0),
(30108, 2, 'config', 'config_order_status_id', '7', 0),
(30077, 1, 'config', 'config_secure', '0', 0),
(29876, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(29907, 1, 'theme_default', 'theme_default_image_location_height', '50', 0),
(29971, 0, 'config', 'config_country_id', '222', 0),
(29972, 0, 'config', 'config_zone_id', '3563', 0),
(29973, 0, 'config', 'config_language', 'en-gb', 0),
(29974, 0, 'config', 'config_admin_language', 'en-gb', 0),
(29975, 0, 'config', 'config_currency', 'USD', 0),
(29976, 0, 'config', 'config_currency_auto', '0', 0),
(29977, 0, 'config', 'config_length_class_id', '1', 0),
(29978, 0, 'config', 'config_weight_class_id', '1', 0),
(29979, 0, 'config', 'config_product_count', '1', 0),
(29980, 0, 'config', 'config_limit_admin', '20', 0),
(29981, 0, 'config', 'config_review_status', '1', 0),
(29982, 0, 'config', 'config_review_guest', '1', 0),
(29983, 0, 'config', 'config_voucher_min', '1', 0),
(29984, 0, 'config', 'config_voucher_max', '1000', 0),
(29985, 0, 'config', 'config_tax', '1', 0),
(29986, 0, 'config', 'config_tax_default', 'shipping', 0),
(29987, 0, 'config', 'config_tax_customer', 'shipping', 0),
(29988, 0, 'config', 'config_customer_online', '0', 0),
(29989, 0, 'config', 'config_customer_activity', '0', 0),
(29990, 0, 'config', 'config_customer_search', '0', 0),
(29991, 0, 'config', 'config_customer_group_id', '1', 0),
(29992, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(29993, 0, 'config', 'config_customer_price', '0', 0),
(29994, 0, 'config', 'config_login_attempts', '5', 0),
(29995, 0, 'config', 'config_account_id', '3', 0),
(29996, 0, 'config', 'config_invoice_prefix', 'INV-2021-00', 0),
(29997, 0, 'config', 'config_cart_weight', '1', 0),
(29998, 0, 'config', 'config_checkout_guest', '1', 0),
(29999, 0, 'config', 'config_checkout_id', '5', 0),
(30000, 0, 'config', 'config_order_status_id', '1', 0),
(30001, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(30002, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(30003, 0, 'config', 'config_fraud_status_id', '7', 0),
(30152, 0, 'config', 'config_api_id', '8', 0),
(30005, 0, 'config', 'config_stock_display', '0', 0),
(30006, 0, 'config', 'config_stock_warning', '0', 0),
(30007, 0, 'config', 'config_stock_checkout', '0', 0),
(30008, 0, 'config', 'config_affiliate_group_id', '1', 0),
(30009, 0, 'config', 'config_affiliate_approval', '0', 0),
(30010, 0, 'config', 'config_affiliate_auto', '0', 0),
(30011, 0, 'config', 'config_affiliate_commission', '5', 0),
(30012, 0, 'config', 'config_affiliate_id', '4', 0),
(30013, 0, 'config', 'config_return_id', '0', 0),
(30014, 0, 'config', 'config_return_status_id', '2', 0),
(30015, 0, 'config', 'config_captcha', '', 0),
(30016, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(30017, 0, 'config', 'config_logo', 'catalog/logo/ecolife.png', 0),
(30018, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(30019, 0, 'config', 'config_mail_engine', 'mail', 0),
(30020, 0, 'config', 'config_mail_parameter', '', 0),
(30021, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(30022, 0, 'config', 'config_mail_smtp_username', '', 0),
(30023, 0, 'config', 'config_mail_smtp_password', '', 0),
(30024, 0, 'config', 'config_mail_smtp_port', '25', 0),
(30025, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(30026, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(30027, 0, 'config', 'config_mail_alert_email', '', 0),
(30028, 0, 'config', 'config_maintenance', '0', 0),
(30029, 0, 'config', 'config_seo_url', '1', 0),
(30030, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(30138, 3, 'config', 'config_customer_group_id', '1', 0),
(29357, 0, 'module_ptblog', 'module_ptblog_meta_keyword', 'Blog Keyword', 0),
(29923, 2, 'theme_default', 'theme_default_image_related_height', '370', 0),
(29945, 3, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(29944, 3, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(29921, 2, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(30105, 2, 'config', 'config_cart_weight', '0', 0),
(30106, 2, 'config', 'config_checkout_guest', '0', 0),
(30107, 2, 'config', 'config_checkout_id', '0', 0),
(29872, 0, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(30075, 1, 'config', 'config_logo', 'catalog/logo/ecolife.png', 0),
(30076, 1, 'config', 'config_icon', 'catalog/cart.png', 0),
(30104, 2, 'config', 'config_account_id', '0', 0),
(30103, 2, 'config', 'config_customer_price', '0', 0),
(30134, 3, 'config', 'config_currency', 'USD', 0),
(30135, 3, 'config', 'config_tax', '0', 0),
(30136, 3, 'config', 'config_tax_default', '', 0),
(29874, 0, 'theme_default', 'theme_default_image_related_width', '370', 0),
(30098, 2, 'config', 'config_currency', 'USD', 0),
(30074, 1, 'config', 'config_stock_checkout', '0', 0),
(30073, 1, 'config', 'config_stock_display', '0', 0),
(29943, 3, 'theme_default', 'theme_default_image_product_height', '600', 0),
(29941, 3, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(29942, 3, 'theme_default', 'theme_default_image_product_width', '600', 0),
(29940, 3, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(29938, 3, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(29939, 3, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(29356, 0, 'module_ptblog', 'module_ptblog_meta_description', 'Blog Description', 0),
(29355, 0, 'module_ptblog', 'module_ptblog_meta_title', 'Blog', 0),
(29873, 0, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(30072, 1, 'config', 'config_order_status_id', '7', 0),
(30037, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(30071, 1, 'config', 'config_checkout_id', '0', 0),
(30070, 1, 'config', 'config_checkout_guest', '0', 0),
(30069, 1, 'config', 'config_cart_weight', '0', 0),
(30068, 1, 'config', 'config_account_id', '0', 0),
(30036, 0, 'config', 'config_file_max_size', '300000', 0),
(30067, 1, 'config', 'config_customer_price', '0', 0),
(30063, 1, 'config', 'config_tax', '0', 0),
(30064, 1, 'config', 'config_tax_default', '', 0),
(30065, 1, 'config', 'config_tax_customer', '', 0),
(30102, 2, 'config', 'config_customer_group_id', '1', 0),
(30101, 2, 'config', 'config_tax_customer', '', 0),
(30100, 2, 'config', 'config_tax_default', '', 0),
(22418, 8, 'theme_default', 'theme_default_directory', 'tt_pedona5', 0),
(22419, 8, 'theme_default', 'theme_default_status', '1', 0),
(22420, 8, 'theme_default', 'theme_default_product_limit', '12', 0),
(22421, 8, 'theme_default', 'theme_default_product_description_length', '180', 0),
(22422, 8, 'theme_default', 'theme_default_image_category_width', '80', 0),
(22423, 8, 'theme_default', 'theme_default_image_category_height', '80', 0),
(22424, 8, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(22425, 8, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(22426, 8, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(22427, 8, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(22428, 8, 'theme_default', 'theme_default_image_product_width', '600', 0),
(22429, 8, 'theme_default', 'theme_default_image_product_height', '600', 0),
(22430, 8, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(22431, 8, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(22432, 8, 'theme_default', 'theme_default_image_related_width', '370', 0),
(22433, 8, 'theme_default', 'theme_default_image_related_height', '370', 0),
(22434, 8, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(22435, 8, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(22436, 8, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(22437, 8, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(22438, 8, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(22439, 8, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(22440, 8, 'theme_default', 'theme_default_image_location_width', '268', 0),
(22441, 8, 'theme_default', 'theme_default_image_location_height', '50', 0),
(29354, 0, 'module_ptblog', 'module_ptblog_blog_post_content', 'grid', 0),
(30066, 1, 'config', 'config_customer_group_id', '1', 0),
(29353, 0, 'module_ptblog', 'module_ptblog_blog_layout', 'right', 0),
(29352, 0, 'module_ptblog', 'module_ptblog_blog_latest_post_limit', '5', 0),
(29351, 0, 'module_ptblog', 'module_ptblog_blog_latest_post', '1', 0),
(29350, 0, 'module_ptblog', 'module_ptblog_cates_list', '[\"1\",\"2\",\"3\",\"4\"]', 1),
(29922, 2, 'theme_default', 'theme_default_image_related_width', '370', 0),
(29920, 2, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(30099, 2, 'config', 'config_tax', '0', 0),
(29871, 0, 'theme_default', 'theme_default_image_product_height', '600', 0),
(29906, 1, 'theme_default', 'theme_default_image_location_width', '268', 0),
(29905, 1, 'theme_default', 'theme_default_image_cart_height', '90', 0),
(29902, 1, 'theme_default', 'theme_default_image_wishlist_width', '90', 0),
(29903, 1, 'theme_default', 'theme_default_image_wishlist_height', '90', 0),
(29904, 1, 'theme_default', 'theme_default_image_cart_width', '90', 0),
(29901, 1, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(29900, 1, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(29899, 1, 'theme_default', 'theme_default_image_related_height', '370', 0),
(29896, 1, 'theme_default', 'theme_default_image_additional_width', '125', 0),
(29898, 1, 'theme_default', 'theme_default_image_related_width', '370', 0),
(29897, 1, 'theme_default', 'theme_default_image_additional_height', '125', 0),
(29895, 1, 'theme_default', 'theme_default_image_product_height', '600', 0),
(29894, 1, 'theme_default', 'theme_default_image_product_width', '600', 0),
(29893, 1, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(29892, 1, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(29890, 1, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(29891, 1, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(29919, 2, 'theme_default', 'theme_default_image_product_height', '600', 0),
(29918, 2, 'theme_default', 'theme_default_image_product_width', '600', 0),
(29917, 2, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(29916, 2, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(29913, 2, 'theme_default', 'theme_default_image_category_height', '80', 0),
(29914, 2, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(29867, 0, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(30137, 3, 'config', 'config_tax_customer', '', 0),
(30132, 3, 'config', 'config_zone_id', '3563', 0),
(30133, 3, 'config', 'config_language', 'en-gb', 0),
(30130, 3, 'config', 'config_comment', 'Welcome to our online store!', 0),
(29566, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_prodes', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29567, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_label', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29568, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_custom_css', '[\"\",\"\",\"\",\"\"]', 1),
(29569, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_custom_js', '[\"\",\"\",\"\",\"\"]', 1),
(29565, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_compare', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29562, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_price', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29563, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_cart', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29564, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_wishlist', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29558, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_cart', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29561, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_options', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29560, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_compare', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29559, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_wishlist', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29555, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_header_cart', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29556, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_header_currency', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29557, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_price', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29554, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_product_row', '[\"4\",\"4\",\"4\",\"4\"]', 1),
(29552, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_advance_view', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29553, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_default_view', '[\"grid\",\"grid\",\"grid\",\"grid\"]', 1),
(29546, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_use_filter', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(30060, 1, 'config', 'config_zone_id', '3563', 0),
(30061, 1, 'config', 'config_language', 'en-gb', 0),
(30059, 1, 'config', 'config_country_id', '222', 0),
(30094, 2, 'config', 'config_comment', 'Welcome to our online store!', 0),
(30095, 2, 'config', 'config_country_id', '222', 0),
(30096, 2, 'config', 'config_zone_id', '3563', 0),
(30131, 3, 'config', 'config_country_id', '222', 0),
(30128, 3, 'config', 'config_image', 'catalog/opencart-logo.png', 0),
(30129, 3, 'config', 'config_open', '8:00 AM - 8:00 PM', 0),
(30151, 0, 'config', 'config_encryption', 'WcMfAcFMJA2I4ZUuNHocg0I8nfuktJFjKFvcFrH3L36GEeT86tAaTnD7m7LpdicmmQ35myp76uHzuA3SL0m87Ic7TaCm6J5GEdURyHuJcfclzWg0H5eCg7hpeZZhL280xQKGCoCQQBk18ciilvUIsYtFS3p7wzkRvgWaxMrVjaTlHLYFT5uvDn4X2zPu3Qn173f3uKNEGicrtf42aNDlKGXFG9eERkspsL5Ud2JN2EPdGS2kheKZVuanXVRg3SJf3srHSx9dXwQI5KTXCvU7PHtFfAhlv1KEDwtWGlPjDFyg61ccT0pVyRgJs2F2J58YbXQDxfYe2zaAw4I9xnc4CdvwEP2uNdrTffGiSlHygcPAencvruYDdHIpY7GgF3ALTFOSS3tdfPPG7ZowcPenPmAmgw1ZvYwJJ3v14o4sZIQBsecuwgrZ7jRqwXYBQUxLgdW5HN2zeDqvyxCWM4cFGQgQfnIndPsgTpzPCGOrBaHp0Cuc1qT6skej1nSJCwnAffZo0zzyLJqvqIiepnA0NpOGy2adsXTVBcFL44ocmWYGpJiJW6EMawtngkgIjd70fwVXk48AFSPaK2mndylam4rC525eMgi9IXzDR7tQy8hkDIS30hcylrW37ujsAhHhyVMSsmsojmVp6Cu3Nxqgbm1eMQLhfk5ij8TnySXH8o44bGVsZ521fU2F7zEYDYRUGbY0qJ0AVj80oRHZiOqw09wvfliqiOOCzoMbql8ZXtBJslNSigCjIXhgCPDPjuRQO3QYyhZ4nDlKHB244dj36Oqh5lHokd21laiI1H1IonjMQi2A1t9vZlmUQ57hN1UqIV5murak6kSHhHdYXZNiMJ3eH02uCNDxfHk0GXjp56UUB8dLnp9UQrHm4ovJi7UtZqE8UcaCVRcTa8fnblzooGSVHGV0x8BUzFC7IwY3YPo968VR2omdcsoVKePya0rk5F3HocJFUJxfhWvwDfSqstdPjEbQHIIhtECFRDmaUCzxeJ1GWP5o8RxtFfNOAU1M', 0),
(29870, 0, 'theme_default', 'theme_default_image_product_width', '600', 0),
(29869, 0, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(29887, 1, 'theme_default', 'theme_default_product_description_length', '180', 0),
(29888, 1, 'theme_default', 'theme_default_image_category_width', '80', 0),
(29915, 2, 'theme_default', 'theme_default_image_thumb_height', '800', 0),
(29912, 2, 'theme_default', 'theme_default_image_category_width', '80', 0),
(29551, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_cate_swatches_height', '[\"10\",\"10\",\"10\",\"10\"]', 1),
(29550, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_cate_swatches_width', '[\"10\",\"10\",\"10\",\"10\"]', 1),
(29549, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_img_effect', '[\"hover\",\"hover\",\"hover\",\"hover\"]', 1),
(29548, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_cate_quickview', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29547, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_filter_position', '[\"left\",\"left\",\"left\",\"left\"]', 1),
(29349, 0, 'module_ptblog', 'module_ptblog_cates_show', '1', 0),
(29348, 0, 'module_ptblog', 'module_ptblog_blog_post_limit', '6', 0),
(29347, 0, 'module_ptblog', 'module_ptblog_blog_height', '277', 0),
(29346, 0, 'module_ptblog', 'module_ptblog_blog_width', '450', 0),
(29868, 0, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(29866, 0, 'theme_default', 'theme_default_image_thumb_width', '800', 0),
(29889, 1, 'theme_default', 'theme_default_image_category_height', '80', 0),
(29911, 2, 'theme_default', 'theme_default_product_description_length', '180', 0),
(29937, 3, 'theme_default', 'theme_default_image_category_height', '80', 0),
(29936, 3, 'theme_default', 'theme_default_image_category_width', '80', 0),
(29545, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_sub_category', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29544, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_description', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29543, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_category_image', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29542, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_swatches_option', '[\"5\",\"5\",\"5\",\"5\"]', 1),
(29538, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_zoom_title', '[\"0\",\"0\",\"0\",\"0\"]', 1),
(29539, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_use_swatches', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29540, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_swatches_width', '[\"20\",\"20\",\"20\",\"20\"]', 1),
(29541, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_swatches_height', '[\"20\",\"20\",\"20\",\"20\"]', 1),
(29525, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_link_color', '[\"253237\",\"253237\",\"253237\",\"253237\"]', 1),
(29526, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_link_hover_color', '[\"4FB68D\",\"4FB68D\",\"4FB68D\",\"4FB68D\"]', 1),
(29527, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_button_color', '[\"FFFFFF\",\"FFFFFF\",\"FFFFFF\",\"FFFFFF\"]', 1),
(30033, 0, 'config', 'config_password', '1', 0),
(30034, 0, 'config', 'config_shared', '0', 0),
(30032, 0, 'config', 'config_secure', '0', 0),
(30031, 0, 'config', 'config_compression', '4', 0),
(30057, 1, 'config', 'config_open', '8:00 AM - 8:00 PM', 0),
(30058, 1, 'config', 'config_comment', 'Welcome to our online store!', 0),
(30056, 1, 'config', 'config_image', 'catalog/opencart-logo.png', 0),
(30055, 1, 'config', 'config_fax', '+1 (123) 888 9999', 0),
(30054, 1, 'config', 'config_telephone', '+1 (123) 888 9999', 0),
(30052, 1, 'config', 'config_geocode', '41.6078817,-93.6958388', 0),
(30050, 1, 'config', 'config_owner', 'Organic 2', 0),
(30097, 2, 'config', 'config_language', 'en-gb', 0),
(30093, 2, 'config', 'config_open', '8:00 AM - 8:00 PM', 0),
(30091, 2, 'config', 'config_fax', '+1 (123) 888 9999', 0),
(30092, 2, 'config', 'config_image', 'catalog/opencart-logo.png', 0),
(30090, 2, 'config', 'config_telephone', '+1 (123) 888 9999', 0),
(30088, 2, 'config', 'config_geocode', '41.6078817,-93.6958388', 0),
(30127, 3, 'config', 'config_fax', '+1 (123) 888 9999', 0),
(30126, 3, 'config', 'config_telephone', '+1 (123) 888 9999', 0),
(30124, 3, 'config', 'config_geocode', '41.6078817,-93.6958388', 0),
(29537, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_zoom_space', '[\"30\",\"30\",\"30\",\"30\"]', 1),
(29536, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_zoom_type', '[\"inner\",\"inner\",\"inner\",\"inner\"]', 1),
(29535, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_use_zoom', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29533, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_tax', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29534, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_tags', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29531, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_related', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29532, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_social', '[\"0\",\"0\",\"0\",\"0\"]', 1),
(29530, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_button_bg_hover_color', '[\"4FB68D\",\"4FB68D\",\"4FB68D\",\"4FB68D\"]', 1),
(29528, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_button_hover_color', '[\"FFFFFF\",\"FFFFFF\",\"FFFFFF\",\"FFFFFF\"]', 1),
(29529, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_button_bg_color', '[\"253237\",\"253237\",\"253237\",\"253237\"]', 1),
(29524, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_color', '[\"253237\",\"253237\",\"253237\",\"253237\"]', 1),
(29523, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_font_weight', '[\"600\",\"600\",\"600\",\"600\"]', 1),
(29521, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_font_family_cate', '[\"sans-serif\",\"sans-serif\",\"sans-serif\",\"sans-serif\"]', 1),
(29522, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_font_family_link', '[\"https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans:300,300italic,regular,italic,600,600italic,700,700italic,800,800italic&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans:300,300italic,regular,italic,600,600italic,700,700italic,800,800italic&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans:300,300italic,regular,italic,600,600italic,700,700italic,800,800italic&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans:300,300italic,regular,italic,600,600italic,700,700italic,800,800italic&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese\"]', 1),
(29970, 0, 'config', 'config_comment', 'Welcome to our online store!', 0),
(29969, 0, 'config', 'config_open', '8:00 AM - 8:00 PM', 0),
(29968, 0, 'config', 'config_image', 'catalog/opencart-logo.png', 0),
(29967, 0, 'config', 'config_fax', '+1 (123) 888 9999', 0),
(29966, 0, 'config', 'config_telephone', '+1 (123) 888 9999', 0),
(29964, 0, 'config', 'config_geocode', '41.6078817,-93.6958388', 0),
(30150, 0, 'config', 'config_email', 'chettri@live.com', 0),
(29963, 0, 'config', 'config_address', 'Address 1', 0),
(29962, 0, 'config', 'config_owner', 'Organic 1', 0),
(29961, 0, 'config', 'config_name', 'Organic 1', 0),
(29960, 0, 'config', 'config_layout_id', '4', 0),
(29959, 0, 'config', 'config_theme', 'default', 0),
(29958, 0, 'config', 'config_meta_keyword', '', 0),
(29957, 0, 'config', 'config_meta_description', 'My Store', 0),
(30051, 1, 'config', 'config_address', 'Address 2', 0),
(30049, 1, 'config', 'config_name', 'Organic 2', 0),
(30047, 1, 'config', 'config_theme', 'default', 0),
(30048, 1, 'config', 'config_layout_id', '22', 0),
(30046, 1, 'config', 'config_meta_keyword', 'My Store', 0),
(30045, 1, 'config', 'config_meta_description', 'My Store', 0),
(30087, 2, 'config', 'config_address', 'Address 3', 0),
(30086, 2, 'config', 'config_owner', 'Organic 3', 0),
(30084, 2, 'config', 'config_layout_id', '26', 0),
(30085, 2, 'config', 'config_name', 'Organic 3', 0),
(30083, 2, 'config', 'config_theme', 'default', 0),
(30081, 2, 'config', 'config_meta_description', 'My Store', 0),
(30123, 3, 'config', 'config_address', 'Address 4', 0),
(30122, 3, 'config', 'config_owner', 'Organic 4', 0),
(30120, 3, 'config', 'config_layout_id', '33', 0),
(30121, 3, 'config', 'config_name', 'Organic 4', 0),
(30118, 3, 'config', 'config_meta_keyword', 'My Store', 0),
(30119, 3, 'config', 'config_theme', 'default', 0),
(30117, 3, 'config', 'config_meta_description', 'My Store', 0),
(29865, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(29864, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(29516, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_size', '[\"1.4rem\",\"1.4rem\",\"1.4rem\",\"1.4rem\"]', 1),
(29517, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_weight', '[\"400\",\"400\",\"400\",\"400\"]', 1),
(29518, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_color', '[\"888888\",\"888888\",\"888888\",\"888888\"]', 1),
(29519, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_font_family_id', '[\"676\",\"676\",\"676\",\"676\"]', 1),
(29520, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_heading_font_family_name', '[\"Open Sans\",\"Open Sans\",\"Open Sans\",\"Open Sans\"]', 1),
(29508, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_sticky_header', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29509, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_scroll_top', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29510, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_lazy_load', '[\"1\",\"1\",\"1\",\"1\"]', 1),
(29511, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_loader_img', '[\"catalog\\/ajax-loader.gif\",\"catalog\\/ajax-loader.gif\",\"catalog\\/ajax-loader.gif\",\"catalog\\/ajax-loader.gif\"]', 1),
(29512, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_family_id', '[\"676\",\"676\",\"676\",\"676\"]', 1),
(29513, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_family_name', '[\"Open Sans\",\"Open Sans\",\"Open Sans\",\"Open Sans\"]', 1),
(29514, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_family_cate', '[\"sans-serif\",\"sans-serif\",\"sans-serif\",\"sans-serif\"]', 1),
(29515, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_body_font_family_link', '[\"https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans:300,300italic,regular,italic,600,600italic,700,700italic,800,800italic&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans:300,300italic,regular,italic,600,600italic,700,700italic,800,800italic&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans:300,300italic,regular,italic,600,600italic,700,700italic,800,800italic&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese\",\"https:\\/\\/fonts.googleapis.com\\/css?family=Open+Sans:300,300italic,regular,italic,600,600italic,700,700italic,800,800italic&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin,latin-ext,vietnamese\"]', 1),
(29506, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_header_layout', '[\"1\",\"2\",\"3\",\"4\"]', 1),
(29507, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_responsive_type', '[\"specified\",\"specified\",\"specified\",\"specified\"]', 1),
(29505, 0, 'module_ptcontrolpanel', 'module_ptcontrolpanel_status', '1', 0),
(29956, 0, 'config', 'config_meta_title', 'Ecolife Organic 1 - Responsive Opencart Theme', 0),
(29885, 1, 'theme_default', 'theme_default_status', '1', 0),
(29886, 1, 'theme_default', 'theme_default_product_limit', '12', 0),
(29366, 0, 'module_ptblog', 'module_ptblog_post_width', '1410', 0),
(29367, 0, 'module_ptblog', 'module_ptblog_post_height', '868', 0),
(29368, 0, 'module_ptblog', 'module_ptblog_post_related', '1', 0),
(29369, 0, 'module_ptblog', 'module_ptblog_post_related_limit', '5', 0),
(29370, 0, 'module_ptblog', 'module_ptblog_related_post_width', '450', 0),
(29371, 0, 'module_ptblog', 'module_ptblog_related_post_height', '277', 0),
(29372, 0, 'module_ptblog', 'module_ptblog_post_layout', 'full', 0),
(29910, 2, 'theme_default', 'theme_default_product_limit', '12', 0),
(29908, 2, 'theme_default', 'theme_default_directory', 'tt_ecolife_organic3', 0),
(29909, 2, 'theme_default', 'theme_default_status', '1', 0),
(30082, 2, 'config', 'config_meta_keyword', 'My Store', 0),
(30079, 2, 'config', 'config_ssl', '', 0),
(30080, 2, 'config', 'config_meta_title', 'Ecolife Organic 3 - Responsive Opencart Theme', 0),
(29863, 0, 'theme_default', 'theme_default_product_description_length', '180', 0),
(29861, 0, 'theme_default', 'theme_default_status', '1', 0),
(29862, 0, 'theme_default', 'theme_default_product_limit', '12', 0),
(30062, 1, 'config', 'config_currency', 'USD', 0),
(30044, 1, 'config', 'config_meta_title', 'Ecolife Organic 2 - Responsive Opencart Theme', 0),
(30043, 1, 'config', 'config_ssl', '', 0),
(30042, 1, 'config', 'config_url', 'http://ecolife2.com/', 0),
(30078, 2, 'config', 'config_url', 'http://ecolife3.com/', 0),
(30146, 3, 'config', 'config_stock_checkout', '0', 0),
(30116, 3, 'config', 'config_meta_title', 'Ecolife Organic 4 - Responsive Opencart Theme', 0),
(30115, 3, 'config', 'config_ssl', '', 0),
(30114, 3, 'config', 'config_url', 'http://ecolife4.com/', 0),
(29860, 0, 'theme_default', 'theme_default_directory', 'tt_ecolife_organic1', 0),
(29884, 1, 'theme_default', 'theme_default_directory', 'tt_ecolife_organic2', 0),
(29935, 3, 'theme_default', 'theme_default_product_description_length', '180', 0),
(29934, 3, 'theme_default', 'theme_default_product_limit', '12', 0),
(29933, 3, 'theme_default', 'theme_default_status', '1', 0),
(29932, 3, 'theme_default', 'theme_default_directory', 'tt_ecolife_organic4', 0),
(29955, 3, 'theme_default', 'theme_default_image_location_height', '50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '34172.8000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 4, 'In Stock'),
(8, 4, 'Pre-Order'),
(5, 4, 'Out Of Stock'),
(6, 4, '2-3 Days'),
(7, 5, 'In Stock'),
(8, 5, 'Pre-Order'),
(5, 5, 'Out Of Stock'),
(6, 5, '2-3 Days'),
(7, 6, 'In Stock'),
(8, 6, 'Pre-Order'),
(5, 6, 'Out Of Stock'),
(6, 6, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_store`
--

INSERT INTO `oc_store` (`store_id`, `name`, `url`, `ssl`) VALUES
(1, 'Organic 2', 'http://ecolife2.com/', ''),
(2, 'Organic 3', 'http://ecolife3.com/', ''),
(3, 'Organic 4', 'http://ecolife4.com/', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_upload`
--

INSERT INTO `oc_upload` (`upload_id`, `name`, `filename`, `code`, `date_added`) VALUES
(1, 'file-test-product.txt', 'file-test-product.txt.UbS2BwQLyOaHzVyixS1n2qaCLnlSaiFW', '23cd3e5a6b97db1ffea5a524629032ce4938cef4', '2019-10-04 15:41:53'),
(2, 'New Text Document 2.txt', 'New Text Document 2.txt.Cn1ULk1k9IwYrLg8024ewfWUqsr2Zwu2', 'ebdcd0a2ac8a0bc0cb6bd5af307f014d1726b1d0', '2019-12-25 09:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'ghardailo.shop', 'e983f7f54363c3c489a025ba01c20320290b7056', 'vKQsmnU5Y', 'John', 'Doe', 'chettri@live.com', '', '', '', 1, '2021-07-13 13:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":{\"0\":\"catalog\\/attribute\",\"1\":\"catalog\\/attribute_group\",\"2\":\"catalog\\/category\",\"3\":\"catalog\\/download\",\"4\":\"catalog\\/filter\",\"5\":\"catalog\\/information\",\"6\":\"catalog\\/manufacturer\",\"7\":\"catalog\\/option\",\"8\":\"catalog\\/product\",\"9\":\"catalog\\/recurring\",\"10\":\"catalog\\/review\",\"11\":\"common\\/column_left\",\"12\":\"common\\/developer\",\"13\":\"common\\/filemanager\",\"14\":\"common\\/profile\",\"15\":\"common\\/security\",\"16\":\"customer\\/custom_field\",\"17\":\"customer\\/customer\",\"18\":\"customer\\/customer_approval\",\"19\":\"customer\\/customer_group\",\"20\":\"design\\/banner\",\"21\":\"design\\/layout\",\"22\":\"design\\/theme\",\"23\":\"design\\/translation\",\"24\":\"design\\/seo_url\",\"25\":\"event\\/statistics\",\"26\":\"event\\/theme\",\"27\":\"extension\\/advertise\\/google\",\"28\":\"extension\\/analytics\\/google\",\"29\":\"extension\\/captcha\\/basic\",\"30\":\"extension\\/captcha\\/google\",\"31\":\"extension\\/dashboard\\/activity\",\"32\":\"extension\\/dashboard\\/chart\",\"33\":\"extension\\/dashboard\\/customer\",\"34\":\"extension\\/dashboard\\/map\",\"35\":\"extension\\/dashboard\\/online\",\"36\":\"extension\\/dashboard\\/order\",\"37\":\"extension\\/dashboard\\/recent\",\"38\":\"extension\\/dashboard\\/sale\",\"39\":\"extension\\/extension\\/advertise\",\"40\":\"extension\\/extension\\/analytics\",\"41\":\"extension\\/extension\\/captcha\",\"42\":\"extension\\/extension\\/dashboard\",\"43\":\"extension\\/extension\\/feed\",\"44\":\"extension\\/extension\\/fraud\",\"45\":\"extension\\/extension\\/menu\",\"46\":\"extension\\/extension\\/module\",\"47\":\"extension\\/extension\\/payment\",\"48\":\"extension\\/extension\\/report\",\"49\":\"extension\\/extension\\/shipping\",\"50\":\"extension\\/extension\\/theme\",\"51\":\"extension\\/extension\\/total\",\"52\":\"extension\\/feed\\/google_base\",\"53\":\"extension\\/feed\\/google_sitemap\",\"54\":\"extension\\/feed\\/openbaypro\",\"55\":\"extension\\/fraud\\/fraudlabspro\",\"56\":\"extension\\/fraud\\/ip\",\"57\":\"extension\\/fraud\\/maxmind\",\"58\":\"extension\\/marketing\\/remarketing\",\"59\":\"extension\\/module\\/account\",\"60\":\"extension\\/module\\/amazon_login\",\"61\":\"extension\\/module\\/amazon_pay\",\"62\":\"extension\\/module\\/banner\",\"63\":\"extension\\/module\\/bestseller\",\"64\":\"extension\\/module\\/carousel\",\"65\":\"extension\\/module\\/category\",\"66\":\"extension\\/module\\/divido_calculator\",\"67\":\"extension\\/module\\/ebay_listing\",\"68\":\"extension\\/module\\/featured\",\"69\":\"extension\\/module\\/filter\",\"70\":\"extension\\/module\\/google_hangouts\",\"71\":\"extension\\/module\\/html\",\"72\":\"extension\\/module\\/information\",\"73\":\"extension\\/module\\/klarna_checkout_module\",\"74\":\"extension\\/module\\/latest\",\"75\":\"extension\\/module\\/laybuy_layout\",\"76\":\"extension\\/module\\/pilibaba_button\",\"77\":\"extension\\/module\\/pp_button\",\"78\":\"extension\\/module\\/pp_login\",\"79\":\"extension\\/module\\/sagepay_direct_cards\",\"80\":\"extension\\/module\\/sagepay_server_cards\",\"81\":\"extension\\/module\\/slideshow\",\"82\":\"extension\\/module\\/special\",\"83\":\"extension\\/module\\/store\",\"84\":\"extension\\/openbay\\/amazon\",\"85\":\"extension\\/openbay\\/amazon_listing\",\"86\":\"extension\\/openbay\\/amazon_product\",\"87\":\"extension\\/openbay\\/amazonus\",\"88\":\"extension\\/openbay\\/amazonus_listing\",\"89\":\"extension\\/openbay\\/amazonus_product\",\"90\":\"extension\\/openbay\\/ebay\",\"91\":\"extension\\/openbay\\/ebay_profile\",\"92\":\"extension\\/openbay\\/ebay_template\",\"93\":\"extension\\/openbay\\/etsy\",\"94\":\"extension\\/openbay\\/etsy_product\",\"95\":\"extension\\/openbay\\/etsy_shipping\",\"96\":\"extension\\/openbay\\/etsy_shop\",\"97\":\"extension\\/openbay\\/fba\",\"98\":\"extension\\/payment\\/amazon_login_pay\",\"99\":\"extension\\/payment\\/authorizenet_aim\",\"100\":\"extension\\/payment\\/authorizenet_sim\",\"101\":\"extension\\/payment\\/bank_transfer\",\"102\":\"extension\\/payment\\/bluepay_hosted\",\"103\":\"extension\\/payment\\/bluepay_redirect\",\"104\":\"extension\\/payment\\/cardconnect\",\"105\":\"extension\\/payment\\/cardinity\",\"106\":\"extension\\/payment\\/cheque\",\"107\":\"extension\\/payment\\/cod\",\"108\":\"extension\\/payment\\/divido\",\"109\":\"extension\\/payment\\/eway\",\"110\":\"extension\\/payment\\/firstdata\",\"111\":\"extension\\/payment\\/firstdata_remote\",\"112\":\"extension\\/payment\\/free_checkout\",\"113\":\"extension\\/payment\\/g2apay\",\"114\":\"extension\\/payment\\/globalpay\",\"115\":\"extension\\/payment\\/globalpay_remote\",\"116\":\"extension\\/payment\\/klarna_account\",\"117\":\"extension\\/payment\\/klarna_checkout\",\"118\":\"extension\\/payment\\/klarna_invoice\",\"119\":\"extension\\/payment\\/laybuy\",\"120\":\"extension\\/payment\\/liqpay\",\"121\":\"extension\\/payment\\/nochex\",\"122\":\"extension\\/payment\\/paymate\",\"123\":\"extension\\/payment\\/paypoint\",\"124\":\"extension\\/payment\\/payza\",\"125\":\"extension\\/payment\\/perpetual_payments\",\"126\":\"extension\\/payment\\/pilibaba\",\"127\":\"extension\\/payment\\/pp_express\",\"128\":\"extension\\/payment\\/pp_payflow\",\"129\":\"extension\\/payment\\/pp_payflow_iframe\",\"130\":\"extension\\/payment\\/pp_pro\",\"131\":\"extension\\/payment\\/pp_pro_iframe\",\"132\":\"extension\\/payment\\/pp_standard\",\"133\":\"extension\\/payment\\/realex\",\"134\":\"extension\\/payment\\/realex_remote\",\"135\":\"extension\\/payment\\/sagepay_direct\",\"136\":\"extension\\/payment\\/sagepay_server\",\"137\":\"extension\\/payment\\/sagepay_us\",\"138\":\"extension\\/payment\\/securetrading_pp\",\"139\":\"extension\\/payment\\/securetrading_ws\",\"140\":\"extension\\/payment\\/skrill\",\"141\":\"extension\\/payment\\/twocheckout\",\"142\":\"extension\\/payment\\/web_payment_software\",\"143\":\"extension\\/payment\\/worldpay\",\"144\":\"extension\\/module\\/pp_braintree_button\",\"145\":\"extension\\/payment\\/pp_braintree\",\"146\":\"extension\\/report\\/customer_activity\",\"147\":\"extension\\/report\\/customer_order\",\"148\":\"extension\\/report\\/customer_reward\",\"149\":\"extension\\/report\\/customer_search\",\"150\":\"extension\\/report\\/customer_transaction\",\"151\":\"extension\\/report\\/marketing\",\"152\":\"extension\\/report\\/product_purchased\",\"153\":\"extension\\/report\\/product_viewed\",\"154\":\"extension\\/report\\/sale_coupon\",\"155\":\"extension\\/report\\/sale_order\",\"156\":\"extension\\/report\\/sale_return\",\"157\":\"extension\\/report\\/sale_shipping\",\"158\":\"extension\\/report\\/sale_tax\",\"159\":\"extension\\/shipping\\/auspost\",\"160\":\"extension\\/shipping\\/ec_ship\",\"161\":\"extension\\/shipping\\/fedex\",\"162\":\"extension\\/shipping\\/flat\",\"163\":\"extension\\/shipping\\/free\",\"164\":\"extension\\/shipping\\/item\",\"165\":\"extension\\/shipping\\/parcelforce_48\",\"166\":\"extension\\/shipping\\/pickup\",\"167\":\"extension\\/shipping\\/royal_mail\",\"168\":\"extension\\/shipping\\/ups\",\"169\":\"extension\\/shipping\\/usps\",\"170\":\"extension\\/shipping\\/weight\",\"171\":\"extension\\/theme\\/default\",\"172\":\"extension\\/total\\/coupon\",\"173\":\"extension\\/total\\/credit\",\"174\":\"extension\\/total\\/handling\",\"175\":\"extension\\/total\\/klarna_fee\",\"176\":\"extension\\/total\\/low_order_fee\",\"177\":\"extension\\/total\\/reward\",\"178\":\"extension\\/total\\/shipping\",\"179\":\"extension\\/total\\/sub_total\",\"180\":\"extension\\/total\\/tax\",\"181\":\"extension\\/total\\/total\",\"182\":\"extension\\/total\\/voucher\",\"183\":\"localisation\\/country\",\"184\":\"localisation\\/currency\",\"185\":\"localisation\\/geo_zone\",\"186\":\"localisation\\/language\",\"187\":\"localisation\\/length_class\",\"188\":\"localisation\\/location\",\"189\":\"localisation\\/order_status\",\"190\":\"localisation\\/return_action\",\"191\":\"localisation\\/return_reason\",\"192\":\"localisation\\/return_status\",\"193\":\"localisation\\/stock_status\",\"194\":\"localisation\\/tax_class\",\"195\":\"localisation\\/tax_rate\",\"196\":\"localisation\\/weight_class\",\"197\":\"localisation\\/zone\",\"198\":\"mail\\/affiliate\",\"199\":\"mail\\/customer\",\"200\":\"mail\\/forgotten\",\"201\":\"mail\\/return\",\"202\":\"mail\\/reward\",\"203\":\"mail\\/transaction\",\"204\":\"marketing\\/contact\",\"205\":\"marketing\\/coupon\",\"206\":\"marketing\\/marketing\",\"207\":\"marketplace\\/api\",\"208\":\"marketplace\\/event\",\"209\":\"marketplace\\/extension\",\"210\":\"marketplace\\/install\",\"211\":\"marketplace\\/installer\",\"212\":\"marketplace\\/marketplace\",\"213\":\"marketplace\\/modification\",\"214\":\"marketplace\\/openbay\",\"215\":\"report\\/online\",\"216\":\"report\\/report\",\"217\":\"report\\/statistics\",\"218\":\"sale\\/order\",\"219\":\"sale\\/recurring\",\"220\":\"sale\\/return\",\"221\":\"sale\\/voucher\",\"222\":\"sale\\/voucher_theme\",\"223\":\"setting\\/setting\",\"224\":\"setting\\/store\",\"225\":\"startup\\/error\",\"226\":\"startup\\/event\",\"227\":\"startup\\/login\",\"228\":\"startup\\/permission\",\"229\":\"startup\\/router\",\"230\":\"startup\\/sass\",\"231\":\"startup\\/startup\",\"232\":\"tool\\/backup\",\"233\":\"tool\\/log\",\"234\":\"tool\\/upload\",\"235\":\"user\\/api\",\"236\":\"user\\/user\",\"237\":\"user\\/user_permission\",\"238\":\"extension\\/module\\/ptcontrolpanel\",\"239\":\"plaza\\/blog\",\"240\":\"plaza\\/blog\\/post\",\"241\":\"plaza\\/blog\\/list\",\"242\":\"plaza\\/blog\\/setting\",\"243\":\"plaza\\/slider\",\"245\":\"plaza\\/ultimatemenu\",\"246\":\"plaza\\/featuredcate\",\"247\":\"plaza\\/newsletter\",\"248\":\"plaza\\/module\",\"249\":\"extension\\/module\\/ptlayoutbuilder\",\"250\":\"extension\\/module\\/ptmenu\",\"251\":\"plaza\\/ultimatemenu\",\"252\":\"extension\\/module\\/ptstaticblock\",\"253\":\"extension\\/module\\/ptslider\",\"254\":\"plaza\\/slider\",\"255\":\"extension\\/module\\/ptblog\",\"256\":\"plaza\\/blog\",\"257\":\"plaza\\/blog\\/post\",\"258\":\"plaza\\/blog\\/list\",\"259\":\"plaza\\/blog\\/setting\",\"260\":\"extension\\/module\\/pttestimonial\",\"262\":\"extension\\/module\\/ptnewsletter\",\"263\":\"plaza\\/newsletter\",\"264\":\"extension\\/module\\/ptajaxlogin\",\"265\":\"extension\\/module\\/ptsearch\",\"266\":\"extension\\/module\\/ptinstagram\",\"267\":\"extension\\/module\\/ptproducts\",\"268\":\"extension\\/module\\/ptfeaturedcate\",\"269\":\"extension\\/module\\/html\",\"270\":\"extension\\/module\\/pttweet\",\"271\":\"extension\\/module\\/ptfeaturedcate\",\"272\":\"extension\\/module\\/pttestimonial\",\"274\":\"extension\\/module\\/ptproducts\",\"275\":\"extension\\/module\\/ptproducts\",\"276\":\"extension\\/module\\/ptproducts\",\"277\":\"extension\\/module\\/ptproducts\",\"278\":\"extension\\/module\\/pttestimonial\",\"280\":\"extension\\/module\\/ptinstagram\",\"281\":\"extension\\/module\\/ptproducts\",\"282\":\"extension\\/module\\/pttweet\",\"283\":\"extension\\/module\\/ptfeaturedcate\",\"284\":\"extension\\/module\\/ptproducts\",\"285\":\"extension\\/module\\/ptproducts\",\"286\":\"extension\\/module\\/ptproducts\",\"287\":\"extension\\/module\\/pttestimonial\",\"288\":\"plaza\\/testimonial\"},\"modify\":{\"0\":\"catalog\\/attribute\",\"1\":\"catalog\\/attribute_group\",\"2\":\"catalog\\/category\",\"3\":\"catalog\\/download\",\"4\":\"catalog\\/filter\",\"5\":\"catalog\\/information\",\"6\":\"catalog\\/manufacturer\",\"7\":\"catalog\\/option\",\"8\":\"catalog\\/product\",\"9\":\"catalog\\/recurring\",\"10\":\"catalog\\/review\",\"11\":\"common\\/column_left\",\"12\":\"common\\/developer\",\"13\":\"common\\/filemanager\",\"14\":\"common\\/profile\",\"15\":\"common\\/security\",\"16\":\"customer\\/custom_field\",\"17\":\"customer\\/customer\",\"18\":\"customer\\/customer_approval\",\"19\":\"customer\\/customer_group\",\"20\":\"design\\/banner\",\"21\":\"design\\/layout\",\"22\":\"design\\/theme\",\"23\":\"design\\/translation\",\"24\":\"design\\/seo_url\",\"25\":\"event\\/statistics\",\"26\":\"event\\/theme\",\"27\":\"extension\\/advertise\\/google\",\"28\":\"extension\\/analytics\\/google\",\"29\":\"extension\\/captcha\\/basic\",\"30\":\"extension\\/captcha\\/google\",\"31\":\"extension\\/dashboard\\/activity\",\"32\":\"extension\\/dashboard\\/chart\",\"33\":\"extension\\/dashboard\\/customer\",\"34\":\"extension\\/dashboard\\/map\",\"35\":\"extension\\/dashboard\\/online\",\"36\":\"extension\\/dashboard\\/order\",\"37\":\"extension\\/dashboard\\/recent\",\"38\":\"extension\\/dashboard\\/sale\",\"39\":\"extension\\/extension\\/advertise\",\"40\":\"extension\\/extension\\/analytics\",\"41\":\"extension\\/extension\\/captcha\",\"42\":\"extension\\/extension\\/dashboard\",\"43\":\"extension\\/extension\\/feed\",\"44\":\"extension\\/extension\\/fraud\",\"45\":\"extension\\/extension\\/menu\",\"46\":\"extension\\/extension\\/module\",\"47\":\"extension\\/extension\\/payment\",\"48\":\"extension\\/extension\\/report\",\"49\":\"extension\\/extension\\/shipping\",\"50\":\"extension\\/extension\\/theme\",\"51\":\"extension\\/extension\\/total\",\"52\":\"extension\\/feed\\/google_base\",\"53\":\"extension\\/feed\\/google_sitemap\",\"54\":\"extension\\/feed\\/openbaypro\",\"55\":\"extension\\/fraud\\/fraudlabspro\",\"56\":\"extension\\/fraud\\/ip\",\"57\":\"extension\\/fraud\\/maxmind\",\"58\":\"extension\\/marketing\\/remarketing\",\"59\":\"extension\\/module\\/account\",\"60\":\"extension\\/module\\/amazon_login\",\"61\":\"extension\\/module\\/amazon_pay\",\"62\":\"extension\\/module\\/banner\",\"63\":\"extension\\/module\\/bestseller\",\"64\":\"extension\\/module\\/carousel\",\"65\":\"extension\\/module\\/category\",\"66\":\"extension\\/module\\/divido_calculator\",\"67\":\"extension\\/module\\/ebay_listing\",\"68\":\"extension\\/module\\/featured\",\"69\":\"extension\\/module\\/filter\",\"70\":\"extension\\/module\\/google_hangouts\",\"71\":\"extension\\/module\\/html\",\"72\":\"extension\\/module\\/information\",\"73\":\"extension\\/module\\/klarna_checkout_module\",\"74\":\"extension\\/module\\/latest\",\"75\":\"extension\\/module\\/laybuy_layout\",\"76\":\"extension\\/module\\/pilibaba_button\",\"77\":\"extension\\/module\\/pp_button\",\"78\":\"extension\\/module\\/pp_login\",\"79\":\"extension\\/module\\/sagepay_direct_cards\",\"80\":\"extension\\/module\\/sagepay_server_cards\",\"81\":\"extension\\/module\\/slideshow\",\"82\":\"extension\\/module\\/special\",\"83\":\"extension\\/module\\/store\",\"84\":\"extension\\/openbay\\/amazon\",\"85\":\"extension\\/openbay\\/amazon_listing\",\"86\":\"extension\\/openbay\\/amazon_product\",\"87\":\"extension\\/openbay\\/amazonus\",\"88\":\"extension\\/openbay\\/amazonus_listing\",\"89\":\"extension\\/openbay\\/amazonus_product\",\"90\":\"extension\\/openbay\\/ebay\",\"91\":\"extension\\/openbay\\/ebay_profile\",\"92\":\"extension\\/openbay\\/ebay_template\",\"93\":\"extension\\/openbay\\/etsy\",\"94\":\"extension\\/openbay\\/etsy_product\",\"95\":\"extension\\/openbay\\/etsy_shipping\",\"96\":\"extension\\/openbay\\/etsy_shop\",\"97\":\"extension\\/openbay\\/fba\",\"98\":\"extension\\/payment\\/amazon_login_pay\",\"99\":\"extension\\/payment\\/authorizenet_aim\",\"100\":\"extension\\/payment\\/authorizenet_sim\",\"101\":\"extension\\/payment\\/bank_transfer\",\"102\":\"extension\\/payment\\/bluepay_hosted\",\"103\":\"extension\\/payment\\/bluepay_redirect\",\"104\":\"extension\\/payment\\/cardconnect\",\"105\":\"extension\\/payment\\/cardinity\",\"106\":\"extension\\/payment\\/cheque\",\"107\":\"extension\\/payment\\/cod\",\"108\":\"extension\\/payment\\/divido\",\"109\":\"extension\\/payment\\/eway\",\"110\":\"extension\\/payment\\/firstdata\",\"111\":\"extension\\/payment\\/firstdata_remote\",\"112\":\"extension\\/payment\\/free_checkout\",\"113\":\"extension\\/payment\\/g2apay\",\"114\":\"extension\\/payment\\/globalpay\",\"115\":\"extension\\/payment\\/globalpay_remote\",\"116\":\"extension\\/payment\\/klarna_account\",\"117\":\"extension\\/payment\\/klarna_checkout\",\"118\":\"extension\\/payment\\/klarna_invoice\",\"119\":\"extension\\/payment\\/laybuy\",\"120\":\"extension\\/payment\\/liqpay\",\"121\":\"extension\\/payment\\/nochex\",\"122\":\"extension\\/payment\\/paymate\",\"123\":\"extension\\/payment\\/paypoint\",\"124\":\"extension\\/payment\\/payza\",\"125\":\"extension\\/payment\\/perpetual_payments\",\"126\":\"extension\\/payment\\/pilibaba\",\"127\":\"extension\\/payment\\/pp_express\",\"128\":\"extension\\/payment\\/pp_payflow\",\"129\":\"extension\\/payment\\/pp_payflow_iframe\",\"130\":\"extension\\/payment\\/pp_pro\",\"131\":\"extension\\/payment\\/pp_pro_iframe\",\"132\":\"extension\\/payment\\/pp_standard\",\"133\":\"extension\\/payment\\/realex\",\"134\":\"extension\\/payment\\/realex_remote\",\"135\":\"extension\\/payment\\/sagepay_direct\",\"136\":\"extension\\/payment\\/sagepay_server\",\"137\":\"extension\\/payment\\/sagepay_us\",\"138\":\"extension\\/payment\\/securetrading_pp\",\"139\":\"extension\\/payment\\/securetrading_ws\",\"140\":\"extension\\/payment\\/skrill\",\"141\":\"extension\\/payment\\/twocheckout\",\"142\":\"extension\\/payment\\/web_payment_software\",\"143\":\"extension\\/payment\\/worldpay\",\"144\":\"extension\\/module\\/pp_braintree_button\",\"145\":\"extension\\/payment\\/pp_braintree\",\"146\":\"extension\\/report\\/customer_activity\",\"147\":\"extension\\/report\\/customer_order\",\"148\":\"extension\\/report\\/customer_reward\",\"149\":\"extension\\/report\\/customer_search\",\"150\":\"extension\\/report\\/customer_transaction\",\"151\":\"extension\\/report\\/marketing\",\"152\":\"extension\\/report\\/product_purchased\",\"153\":\"extension\\/report\\/product_viewed\",\"154\":\"extension\\/report\\/sale_coupon\",\"155\":\"extension\\/report\\/sale_order\",\"156\":\"extension\\/report\\/sale_return\",\"157\":\"extension\\/report\\/sale_shipping\",\"158\":\"extension\\/report\\/sale_tax\",\"159\":\"extension\\/shipping\\/auspost\",\"160\":\"extension\\/shipping\\/ec_ship\",\"161\":\"extension\\/shipping\\/fedex\",\"162\":\"extension\\/shipping\\/flat\",\"163\":\"extension\\/shipping\\/free\",\"164\":\"extension\\/shipping\\/item\",\"165\":\"extension\\/shipping\\/parcelforce_48\",\"166\":\"extension\\/shipping\\/pickup\",\"167\":\"extension\\/shipping\\/royal_mail\",\"168\":\"extension\\/shipping\\/ups\",\"169\":\"extension\\/shipping\\/usps\",\"170\":\"extension\\/shipping\\/weight\",\"171\":\"extension\\/theme\\/default\",\"172\":\"extension\\/total\\/coupon\",\"173\":\"extension\\/total\\/credit\",\"174\":\"extension\\/total\\/handling\",\"175\":\"extension\\/total\\/klarna_fee\",\"176\":\"extension\\/total\\/low_order_fee\",\"177\":\"extension\\/total\\/reward\",\"178\":\"extension\\/total\\/shipping\",\"179\":\"extension\\/total\\/sub_total\",\"180\":\"extension\\/total\\/tax\",\"181\":\"extension\\/total\\/total\",\"182\":\"extension\\/total\\/voucher\",\"183\":\"localisation\\/country\",\"184\":\"localisation\\/currency\",\"185\":\"localisation\\/geo_zone\",\"186\":\"localisation\\/language\",\"187\":\"localisation\\/length_class\",\"188\":\"localisation\\/location\",\"189\":\"localisation\\/order_status\",\"190\":\"localisation\\/return_action\",\"191\":\"localisation\\/return_reason\",\"192\":\"localisation\\/return_status\",\"193\":\"localisation\\/stock_status\",\"194\":\"localisation\\/tax_class\",\"195\":\"localisation\\/tax_rate\",\"196\":\"localisation\\/weight_class\",\"197\":\"localisation\\/zone\",\"198\":\"mail\\/affiliate\",\"199\":\"mail\\/customer\",\"200\":\"mail\\/forgotten\",\"201\":\"mail\\/return\",\"202\":\"mail\\/reward\",\"203\":\"mail\\/transaction\",\"204\":\"marketing\\/contact\",\"205\":\"marketing\\/coupon\",\"206\":\"marketing\\/marketing\",\"207\":\"marketplace\\/event\",\"208\":\"marketplace\\/api\",\"209\":\"marketplace\\/extension\",\"210\":\"marketplace\\/install\",\"211\":\"marketplace\\/installer\",\"212\":\"marketplace\\/marketplace\",\"213\":\"marketplace\\/modification\",\"214\":\"marketplace\\/openbay\",\"215\":\"report\\/online\",\"216\":\"report\\/report\",\"217\":\"report\\/statistics\",\"218\":\"sale\\/order\",\"219\":\"sale\\/recurring\",\"220\":\"sale\\/return\",\"221\":\"sale\\/voucher\",\"222\":\"sale\\/voucher_theme\",\"223\":\"setting\\/setting\",\"224\":\"setting\\/store\",\"225\":\"startup\\/error\",\"226\":\"startup\\/event\",\"227\":\"startup\\/login\",\"228\":\"startup\\/permission\",\"229\":\"startup\\/router\",\"230\":\"startup\\/sass\",\"231\":\"startup\\/startup\",\"232\":\"tool\\/backup\",\"233\":\"tool\\/log\",\"234\":\"tool\\/upload\",\"235\":\"user\\/api\",\"236\":\"user\\/user\",\"237\":\"user\\/user_permission\",\"238\":\"extension\\/module\\/ptcontrolpanel\",\"239\":\"plaza\\/blog\",\"240\":\"plaza\\/blog\\/post\",\"241\":\"plaza\\/blog\\/list\",\"242\":\"plaza\\/blog\\/setting\",\"243\":\"plaza\\/slider\",\"245\":\"plaza\\/ultimatemenu\",\"246\":\"plaza\\/featuredcate\",\"247\":\"plaza\\/newsletter\",\"248\":\"plaza\\/module\",\"249\":\"extension\\/module\\/ptlayoutbuilder\",\"250\":\"extension\\/module\\/ptmenu\",\"251\":\"plaza\\/ultimatemenu\",\"252\":\"extension\\/module\\/ptstaticblock\",\"253\":\"extension\\/module\\/ptslider\",\"254\":\"plaza\\/slider\",\"255\":\"extension\\/module\\/ptblog\",\"256\":\"plaza\\/blog\",\"257\":\"plaza\\/blog\\/post\",\"258\":\"plaza\\/blog\\/list\",\"259\":\"plaza\\/blog\\/setting\",\"260\":\"extension\\/module\\/pttestimonial\",\"262\":\"extension\\/module\\/ptnewsletter\",\"263\":\"plaza\\/newsletter\",\"264\":\"extension\\/module\\/ptajaxlogin\",\"265\":\"extension\\/module\\/ptsearch\",\"266\":\"extension\\/module\\/ptinstagram\",\"267\":\"extension\\/module\\/ptproducts\",\"268\":\"extension\\/module\\/ptfeaturedcate\",\"269\":\"extension\\/module\\/html\",\"270\":\"extension\\/module\\/pttweet\",\"271\":\"extension\\/module\\/ptfeaturedcate\",\"272\":\"extension\\/module\\/pttestimonial\",\"274\":\"extension\\/module\\/ptproducts\",\"275\":\"extension\\/module\\/ptproducts\",\"276\":\"extension\\/module\\/ptproducts\",\"277\":\"extension\\/module\\/ptproducts\",\"278\":\"extension\\/module\\/pttestimonial\",\"280\":\"extension\\/module\\/ptinstagram\",\"281\":\"extension\\/module\\/ptproducts\",\"282\":\"extension\\/module\\/pttweet\",\"283\":\"extension\\/module\\/ptfeaturedcate\",\"284\":\"extension\\/module\\/ptproducts\",\"285\":\"extension\\/module\\/ptproducts\",\"286\":\"extension\\/module\\/ptproducts\",\"287\":\"extension\\/module\\/pttestimonial\",\"288\":\"plaza\\/testimonial\"}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(7, 6, 'Birthday'),
(6, 6, 'Christmas'),
(8, 6, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(5, 6, 'Pound ', 'lb'),
(2, 6, 'Gram', 'g'),
(1, 6, 'Kilogram', 'kg'),
(6, 6, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Indexes for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_googleshopping_category`
--
ALTER TABLE `oc_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Indexes for table `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Indexes for table `oc_googleshopping_product_status`
--
ALTER TABLE `oc_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Indexes for table `oc_googleshopping_product_target`
--
ALTER TABLE `oc_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Indexes for table `oc_googleshopping_target`
--
ALTER TABLE `oc_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_ptmegamenu`
--
ALTER TABLE `oc_ptmegamenu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `oc_ptmegamenu_sub_item`
--
ALTER TABLE `oc_ptmegamenu_sub_item`
  ADD PRIMARY KEY (`sub_menu_item_id`);

--
-- Indexes for table `oc_ptmegamenu_sub_item_description`
--
ALTER TABLE `oc_ptmegamenu_sub_item_description`
  ADD PRIMARY KEY (`sub_menu_item_id`,`language_id`);

--
-- Indexes for table `oc_ptmegamenu_top_item`
--
ALTER TABLE `oc_ptmegamenu_top_item`
  ADD PRIMARY KEY (`menu_item_id`);

--
-- Indexes for table `oc_ptmegamenu_top_item_description`
--
ALTER TABLE `oc_ptmegamenu_top_item_description`
  ADD PRIMARY KEY (`menu_item_id`,`language_id`);

--
-- Indexes for table `oc_ptnewsletter_email`
--
ALTER TABLE `oc_ptnewsletter_email`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `oc_ptpost`
--
ALTER TABLE `oc_ptpost`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `oc_ptpost_comment`
--
ALTER TABLE `oc_ptpost_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `oc_ptpost_description`
--
ALTER TABLE `oc_ptpost_description`
  ADD PRIMARY KEY (`post_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_ptpost_list`
--
ALTER TABLE `oc_ptpost_list`
  ADD PRIMARY KEY (`post_list_id`);

--
-- Indexes for table `oc_ptpost_list_description`
--
ALTER TABLE `oc_ptpost_list_description`
  ADD PRIMARY KEY (`post_list_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_ptslider`
--
ALTER TABLE `oc_ptslider`
  ADD PRIMARY KEY (`ptslider_id`);

--
-- Indexes for table `oc_ptslider_image`
--
ALTER TABLE `oc_ptslider_image`
  ADD PRIMARY KEY (`ptslider_image_id`);

--
-- Indexes for table `oc_ptslider_image_description`
--
ALTER TABLE `oc_ptslider_image_description`
  ADD PRIMARY KEY (`ptslider_image_id`,`language_id`);

--
-- Indexes for table `oc_pttestimonial`
--
ALTER TABLE `oc_pttestimonial`
  ADD PRIMARY KEY (`pttestimonial_id`);

--
-- Indexes for table `oc_pttestimonial_description`
--
ALTER TABLE `oc_pttestimonial_description`
  ADD PRIMARY KEY (`pttestimonial_id`,`language_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indexes for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3834;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=699;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1023;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11624;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1461;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1255;

--
-- AUTO_INCREMENT for table `oc_ptmegamenu`
--
ALTER TABLE `oc_ptmegamenu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_ptmegamenu_sub_item`
--
ALTER TABLE `oc_ptmegamenu_sub_item`
  MODIFY `sub_menu_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_ptmegamenu_top_item`
--
ALTER TABLE `oc_ptmegamenu_top_item`
  MODIFY `menu_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `oc_ptnewsletter_email`
--
ALTER TABLE `oc_ptnewsletter_email`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_ptpost`
--
ALTER TABLE `oc_ptpost`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_ptpost_comment`
--
ALTER TABLE `oc_ptpost_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_ptpost_list`
--
ALTER TABLE `oc_ptpost_list`
  MODIFY `post_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_ptslider`
--
ALTER TABLE `oc_ptslider`
  MODIFY `ptslider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_ptslider_image`
--
ALTER TABLE `oc_ptslider_image`
  MODIFY `ptslider_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=683;

--
-- AUTO_INCREMENT for table `oc_pttestimonial`
--
ALTER TABLE `oc_pttestimonial`
  MODIFY `pttestimonial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6040;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30153;

--
-- AUTO_INCREMENT for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
