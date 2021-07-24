-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2019 at 09:42 AM
-- Server version: 5.7.11
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopnia`
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
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'demo', 'demo', '', 'surat', '', 'surat', '395006', 99, 1485, ''),
(2, 2, 'Demo', 'Demo', '', 'varachha', '', 'Surat', '395006', 99, 1485, '');

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
(1, 'Default', 'TkDTRwUO3AP9KBjwLbiZrCEKedHXckVSeYXIM3oNpvpX6BFGiZDiUDKlW2W5yJNg1Hqiw5w7ozf8AFTiUHM4bp93hPew7u0Cs2QmeIePkzJgd7JRlxfccH6WEvBn4AgJdixBiabDg1cTacU8yabCJgs96GLtCDjaWfl6J8tBueEFPvLD0Oqmkl7SH2CCpcdWpf8hFZTsiuT93YdSwNi59jYJDxizB7531rY5bgk4a6N3it1yjdhwwLtPIkl8Q37t', 1, '2019-07-23 15:14:20', '2019-07-23 15:14:20'),
(2, 'Default', 'inLhJYB5moyeSLcQhR0CK89SWsrJQbdfh1bqEeTjVlnETuXIZmAPvH6ohiIHCbhCjGHsLzszJJUehF2ZP0UOuAhn0wvNqvThsrHyxCeg0PpUJEr0hIr9t2ZfHnNvHD3J9ed0xfFT3zJdOWQWYFfW1HGLKX3FzLnHsrI0vHEihmVn6GR9RTE1Q0UnEJyO60UPzB8vzaKxXMntWP61NaJKjM1jNbRTqG7GdzDb9fPM3JIF0eEwMrtJZLBYXOIYghV1', 1, '2019-07-27 09:48:10', '2019-07-27 09:48:10'),
(3, 'Default', 'YMHL8hQYMeeGbYMKIAJIPX1FhdbhKGQkENuTOmu17crGRrzcWS4eZK1XiUYuMGaun4ZovU1uqjJeqWwTI3RE4HvT2MFnAS6LezRGNYxplEa5lhTU5ahe1qmweACmqCzNci5y7tfhAQNWZwP1VbkCgWNT87nr30aUnPKBr5bxyVLRx2YD4g9oGgBB9ALrImtnJ7bXe9v39m2OYO4hRWGLMkk62jFwIxjRhJgW4BI8nD9ftkQYlemX7ITfSXYLETpC', 1, '2019-07-30 05:53:03', '2019-07-30 05:53:03'),
(4, 'Default', 'otoKReU6LVezCmtd4Zq5LBQe71L1s1tU7dQPQSihqr6hkeAgVomA5eUg78nLr2bMVyBcPElKYXMmdK8Oiml9WudnbtKQrAcROmxMqufKjlgsl5sw48Qv013uBIo1RIP1450rzFLKgeUHG5SaNWvLK2Cu3T4nKyixSEUfiYsJUhKX1O3g8JX7VHZ4QxA1QBErswuLDOrXgTRWtuwfA02dUCqRRYwRjzjsydhKDYykGJhZNuTJBxJVwRGmv6Ss86vp', 1, '2019-08-03 12:28:20', '2019-08-03 12:28:20'),
(5, 'Default', 'n4lCl4VabemsnViMTVUqCmegIyRi7N64ir0KW438QTSF9CtRbKIN7lnaWnobkLn22cI84dTogwSonNnMLf28CxwS6ignnzj4Bg2DoRiN6YnxCC4d865D2qOi2K5qvFhWUis32IOFaBbLV59hhBmbityOaVaxRoaI40HrXEzmOvFOntUC0HFu9eNwki8S25cVauT4HTX5Mp1ASrMA5M2g2GOYkQv7nqqe4Sjbw91IYRS1Wnc77F3or4aHHdc5Nwtt', 1, '2019-08-16 12:36:14', '2019-08-16 12:36:14'),
(6, 'Default', '8CoRE5yVwdyH05uR54l2JIRD1B8gIkbFtAwwOd7W9CIBcofjVJy4VGcoB8aDpb4mlQTqZ8zYSYupIzu0mZYOXDgJEaX2NZczYznwpri5MZIvkfLciGtycX02EFX0y8sdzVYGFRpNzMHVlcOHI6R5br9MpmmcjHgXiPLct6iXJdMGVdrhuxAyd0ekuRaVjI9oIJiqGZVFtVwE8wK40prQrQjkZxJySfcHFYlCFnnF76DxtN1o1YvrkEaM8g3nc2IQ', 1, '2019-08-20 06:44:33', '2019-08-20 06:44:33'),
(7, 'Default', 'MVkoTYLhVHMf5BJIhZHvcjqWjTWwxu8bRWAS4Y1XF1ON6ZGquQw75URmnHrOZnijyTlPq8DTKT8D0DjXlVaGKmd5oLzmPv1Wq77atq9VRJp9dnTHKgtaqFFKFhj90ArGu4DTxkYs3beyg5TqUOib7FzDwfuY1VE8eI22jVubvBaKewvsx07WMl2K0QSfXylEIg7NcI3MlbNOlngg93wV01jpjIMir3SOCcYm9ADQabQ5EVGqKg4g9YUZaRw9gWt4', 1, '2019-08-31 06:01:02', '2019-08-31 06:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

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
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

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
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(10, 'Img Banner', 1),
(12, 'First left banner', 1),
(13, 'left Second banner', 1);

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
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `description`, `image`, `sort_order`) VALUES
(211, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', '', 'catalog/slider/slider-1.jpg', 0),
(268, 8, 2, 'brands', '#', '', 'catalog/logoslider/menufacture-4.png', 0),
(267, 8, 2, 'Nintendo', '#', '', 'catalog/logoslider/menufacture-9.png', 0),
(266, 8, 2, 'Dell', '#', '', 'catalog/logoslider/menufacture-8.png', 0),
(265, 8, 2, 'RedBull', '#', '', 'catalog/logoslider/menufacture-7.png', 0),
(264, 8, 2, 'NFL', '#', '', 'catalog/logoslider/menufacture-6.png', 0),
(263, 8, 2, 'Disney', '#', '', 'catalog/logoslider/menufacture-5.png', 0),
(259, 8, 2, 'Canon', '#', '', 'catalog/logoslider/menufacture-11.png', 0),
(260, 8, 2, 'Burger King', '#', '', 'catalog/logoslider/menufacture-12.png', 0),
(261, 8, 2, 'Sony', '#', '', 'catalog/logoslider/menufacture-2.png', 0),
(262, 8, 2, 'Coca Cola', '#', '', 'catalog/logoslider/menufacture-3.png', 0),
(258, 8, 2, 'Harley Davidson', '#', '', 'catalog/logoslider/menufacture-10.png', 0),
(257, 8, 2, 'Starbucks', '#', '', 'catalog/logoslider/menufacture-1.png', 0),
(256, 8, 1, 'NFL', '#', '', 'catalog/logoslider/menufacture-9.png', 0),
(255, 8, 1, 'Sony', '#', '', 'catalog/logoslider/menufacture-7.png', 0),
(254, 8, 1, 'RedBull', '#', '', 'catalog/logoslider/menufacture-3.png', 0),
(210, 7, 1, 'MacBookAir', '#', '', 'catalog/slider/slider-2.jpg', 1),
(253, 8, 1, 'Burger King', '#', '', 'catalog/logoslider/menufacture-6.png', 0),
(252, 8, 1, 'Coca Cola', '#', '', 'catalog/logoslider/menufacture-5.png', 0),
(209, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', '', 'catalog/slider/slider-1.jpg', 0),
(251, 8, 1, 'Canon', '#', '', 'catalog/logoslider/menufacture-4.png', 0),
(250, 8, 1, 'Dell', '#', '', 'catalog/logoslider/menufacture-3.png', 0),
(249, 8, 1, 'Harley Davidson', '#', '', 'catalog/logoslider/menufacture-2.png', 0),
(248, 8, 1, 'Disney', '#', '', 'catalog/logoslider/menufacture-12.png', 0),
(212, 7, 2, 'MacBookAir', '#', '', 'catalog/slider/slider-2.jpg', 1),
(245, 8, 1, 'brand', '#', '', 'catalog/logoslider/menufacture-1.png', 0),
(246, 8, 1, 'Nintendo', '#', '', 'catalog/logoslider/menufacture-10.png', 0),
(247, 8, 1, 'Starbucks', '#', '', 'catalog/logoslider/menufacture-11.png', 0),
(283, 10, 2, 'Sell Banner', '#', '', 'catalog/imgbanner/banner-1.jpg', 0),
(282, 10, 1, 'banner', '#', '', 'catalog/imgbanner/banner-3.jpg', 0),
(281, 10, 1, 'banner', '#', '', 'catalog/imgbanner/banner-2.jpg', 0),
(280, 10, 1, 'banner', '#', '', 'catalog/imgbanner/banner-1.jpg', 0),
(284, 10, 2, 'Img Banner', '#', '', 'catalog/imgbanner/banner-1.jpg', 0),
(285, 10, 2, 'banner', '#', '', 'catalog/imgbanner/banner-3.jpg', 0),
(299, 13, 2, 'banner', '#', '', 'catalog/Leftbanner/2.jpg', 0),
(298, 13, 1, 'banner', '#', '', 'catalog/Leftbanner/2.jpg', 0),
(295, 12, 2, 'banner', '#', '', 'catalog/Leftbanner/1.jpg', 0),
(294, 12, 1, 'banner', '#', '', 'catalog/Leftbanner/1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger`
--

CREATE TABLE `oc_blogger` (
  `blogger_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_blogger`
--

INSERT INTO `oc_blogger` (`blogger_id`, `module_id`, `status`, `image`, `date_added`, `date_modified`) VALUES
(1, 37, 1, 'catalog/blog/1.jpg', '2019-07-25 17:45:16', '2019-09-05 18:55:48'),
(2, 37, 1, 'catalog/blog/1.jpg', '2019-07-25 17:46:29', '2019-09-06 15:06:53'),
(3, 37, 1, 'catalog/blog/5.jpg', '2019-07-25 17:46:54', '2019-09-05 18:56:07'),
(4, 37, 1, 'catalog/blog/1.jpg', '2019-07-25 17:47:43', '2019-09-06 15:06:58'),
(5, 37, 1, 'catalog/blog/1.jpg', '2019-07-25 17:48:11', '2019-09-06 15:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger_comment`
--

CREATE TABLE `oc_blogger_comment` (
  `blogger_comment_id` int(11) NOT NULL,
  `blogger_id` int(11) NOT NULL,
  `approved` int(1) NOT NULL DEFAULT '0',
  `author` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_blogger_comment`
--

INSERT INTO `oc_blogger_comment` (`blogger_comment_id`, `blogger_id`, `approved`, `author`, `email`, `date_added`) VALUES
(1, 5, 1, 'demo', 'demo@gmail.com', '2019-07-27 11:07:39'),
(2, 5, 1, 'winter', 'demo1@gmail.com', '2019-07-27 11:08:14'),
(3, 5, 1, 'winter', 'demo1@gmail.com', '2019-07-27 11:08:52'),
(4, 5, 1, 'demo', 'demo@gmail.com', '2019-07-27 12:25:50'),
(5, 5, 1, 'demo', 'demo@gmail.com', '2019-07-27 12:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger_comment_description`
--

CREATE TABLE `oc_blogger_comment_description` (
  `blogger_comment_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_blogger_comment_description`
--

INSERT INTO `oc_blogger_comment_description` (`blogger_comment_id`, `language_id`, `comment`) VALUES
(1, 1, ' Duis orci sapien, consequat ac mauris vitae, placerat pellentesque enim. Integer sollicitudin molestie urna ut facilisis. Mauris porttitor mauris consequat cursus scelerisque. Nunc placerat nulla a justo iaculis vestibulum. Etiam sed semper nisi. Vestibulum consectetur, massa in porttitor dignissim, mauris tortor sollicitudin lorem, sit amet pharetra neque nulla non nisi. Proin nec sapien sapien. Sed mattis erat ipsum'),
(2, 1, '                         &lt;p&gt;ed mattis erat ipsum      &lt;/p&gt;         '),
(3, 1, '                         &lt;p&gt;ed mattis erat ipsum      &lt;/p&gt;         '),
(4, 2, '                                        metus nunc gravida mauris, sed aliquam leo eros a ex. Duis orci sapien, consequat ac mauris vitae, placerat pellentesque enim. Integer sollicitudin molestie urna ut facilisis. Mauris porttitor mauris consequat cursus scelerisque. Nunc placerat nulla a justo iaculis vestibulum. Etiam sed semper nis'),
(5, 2, '                                        metus nunc gravida mauris, sed aliquam leo eros a ex. Duis orci sapien, consequat ac mauris vitae, placerat pellentesque enim. Integer sollicitudin molestie urna ut facilisis. Mauris porttitor mauris consequat cursus scelerisque. Nunc placerat nulla a justo iaculis vestibulum. Etiam sed semper nis');

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger_description`
--

CREATE TABLE `oc_blogger_description` (
  `blogger_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(64) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_blogger_description`
--

INSERT INTO `oc_blogger_description` (`blogger_id`, `language_id`, `title`, `description`) VALUES
(1, 2, 'Mauris tempus tellus ac dui sagittis, sit amet dapibus', '&lt;p&gt; Cras orci orci, scelerisque vitae volutpat congue, hendrerit vitae \r\nmagna. Duis in semper turpis. Donec molestie lectus et sapien eleifend \r\nluctus. Ut quis urna non nulla aliquam tempus. Donec aliquet, lacus \r\nultrices posuere maximus, urna nunc lobortis lectus, in dictum elit \r\nmagna quis eros. Mauris semper facilisis odio. Mauris bibendum nunc eu \r\naugue scelerisque posuere. Integer efficitur, tortor quis tempus \r\neuismod, dui lacus scelerisque justo, ac varius arcu est at odio. \r\nCurabitur pharetra dolor eget augue ullamcorper commodo. Nulla vitae \r\nlorem est. Nulla tellus lacus, sodales eu sollicitudin sed, viverra vel \r\nquam. Suspendisse felis nibh, vehicula a lectus eu, fringilla gravida \r\nturpi&lt;br&gt;&lt;/p&gt;'),
(1, 1, 'Mauris tempus tellus ac dui sagittis, sit amet dapibus', '&lt;p&gt; Cras orci orci, scelerisque vitae volutpat congue, hendrerit vitae \r\nmagna. Duis in semper turpis. Donec molestie lectus et sapien eleifend \r\nluctus. Ut quis urna non nulla aliquam tempus. Donec aliquet, lacus \r\nultrices posuere maximus, urna nunc lobortis lectus, in dictum elit \r\nmagna quis eros. Mauris semper facilisis odio. Mauris bibendum nunc eu \r\naugue scelerisque posuere. Integer efficitur, tortor quis tempus \r\neuismod, dui lacus scelerisque justo, ac varius arcu est at odio. \r\nCurabitur pharetra dolor eget augue ullamcorper commodo. Nulla vitae \r\nlorem est. Nulla tellus lacus, sodales eu sollicitudin sed, viverra vel \r\nquam. Suspendisse felis nibh, vehicula a lectus eu, fringilla gravida \r\nturpi&lt;br&gt;&lt;/p&gt;'),
(2, 2, 'Morbi vel risus eu ligula malesuada dapibus', '&lt;p&gt;Nulla at purus et risus vehicula tempor. Aliquam erat volutpat. Nunc \r\naccumsan ipsum fermentum rhoncus pellentesque. Nullam sodales suscipit \r\nante ac gravida. Sed luctus sagittis placerat. Ut consectetur lacus non \r\nest auctor, pretium sodales mauris hendrerit. Nunc et turpis eget justo \r\ncursus imperdiet sed vel lacus. In ac tortor a sem malesuada efficitur \r\net quis risus.\r\n&lt;/p&gt;'),
(3, 2, 'Sed viverra hendrerit nisl, at facilisis sapien malesuada id', '&lt;p&gt;porttitor suscipit justo. Morbi quis ex non dui gravida luctus. Sed \r\nconsectetur, magna eget placerat dapibus, diam mauris congue ante, \r\npharetra cursus neque magna at mi. Maecenas tincidunt, lorem sit amet \r\ninterdum posuere, arcu quam hendrerit odio, ut luctus est nisl sit amet \r\nnisl. Fusce efficitur id ipsum sit amet aliquet. Duis non sodales purus.\r\n Pellentesque tempus lectus diam, sollicitudin luctus mi elementum \r\nullamcorper. Praesent rutrum, urna sed venenatis imperdiet, odio elit \r\nmaximus ante, quis malesuada ligula quam eget est. Class aptent taciti \r\nsociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. \r\nQuisque dapibus lectus at purus sollicitudin, a semper erat mollis.\r\n&lt;br&gt;&lt;/p&gt;'),
(3, 1, 'Sed viverra hendrerit nisl, at facilisis sapien malesuada id', '&lt;p&gt;porttitor suscipit justo. Morbi quis ex non dui gravida luctus. Sed \r\nconsectetur, magna eget placerat dapibus, diam mauris congue ante, \r\npharetra cursus neque magna at mi. Maecenas tincidunt, lorem sit amet \r\ninterdum posuere, arcu quam hendrerit odio, ut luctus est nisl sit amet \r\nnisl. Fusce efficitur id ipsum sit amet aliquet. Duis non sodales purus.\r\n Pellentesque tempus lectus diam, sollicitudin luctus mi elementum \r\nullamcorper. Praesent rutrum, urna sed venenatis imperdiet, odio elit \r\nmaximus ante, quis malesuada ligula quam eget est. Class aptent taciti \r\nsociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. \r\nQuisque dapibus lectus at purus sollicitudin, a semper erat mollis.\r\n&lt;br&gt;&lt;/p&gt;'),
(4, 1, 'Morbi sodales tellus elit, in blandit risus suscipit a', '&lt;p&gt;Nunc et mollis mauris. Duis sit amet cursus ante, vitae imperdiet urna. \r\nEtiam condimentum tincidunt leo, non dapibus nisi aliquam id. Nam \r\nconvallis nulla scelerisque, scelerisque nulla nec, cursus risus. Morbi a\r\n imperdiet mi. In scelerisque viverra ipsum sed tempor. Nunc blandit \r\nlorem eu tortor aliquam, et congue leo ultricies.\r\n&lt;br&gt;&lt;/p&gt;'),
(4, 2, 'Morbi sodales tellus elit, in blandit risus suscipit a', '&lt;p&gt;Nunc et mollis mauris. Duis sit amet cursus ante, vitae imperdiet urna. \r\nEtiam condimentum tincidunt leo, non dapibus nisi aliquam id. Nam \r\nconvallis nulla scelerisque, scelerisque nulla nec, cursus risus. Morbi a\r\n imperdiet mi. In scelerisque viverra ipsum sed tempor. Nunc blandit \r\nlorem eu tortor aliquam, et congue leo ultricies.\r\n&lt;br&gt;&lt;/p&gt;'),
(5, 2, 'Pellentesque non efficitur mi Aliquam convallis mi quis', '&lt;p&gt;metus nunc gravida mauris, sed aliquam leo eros a ex. Duis orci sapien, \r\nconsequat ac mauris vitae, placerat pellentesque enim. Integer \r\nsollicitudin molestie urna ut facilisis. Mauris porttitor mauris \r\nconsequat cursus scelerisque. Nunc placerat nulla a justo iaculis \r\nvestibulum. Etiam sed semper nisi. Vestibulum consectetur, massa in \r\nporttitor dignissim, mauris tortor sollicitudin lorem, sit amet pharetra\r\n neque nulla non nisi. Proin nec sapien sapien. Sed mattis erat ipsum, \r\nid pulvinar arcu tristique quis. Interdum et malesuada fames ac ante \r\nipsum primis in faucibus&lt;br&gt;&lt;/p&gt;'),
(5, 1, 'Pellentesque non efficitur mi Aliquam convallis mi quis', '&lt;p&gt;metus nunc gravida mauris, sed aliquam leo eros a ex. Duis orci sapien, \r\nconsequat ac mauris vitae, placerat pellentesque enim. Integer \r\nsollicitudin molestie urna ut facilisis. Mauris porttitor mauris \r\nconsequat cursus scelerisque. Nunc placerat nulla a justo iaculis \r\nvestibulum. Etiam sed semper nisi. Vestibulum consectetur, massa in \r\nporttitor dignissim, mauris tortor sollicitudin lorem, sit amet pharetra\r\n neque nulla non nisi. Proin nec sapien sapien. Sed mattis erat ipsum, \r\nid pulvinar arcu tristique quis. Interdum et malesuada fames ac ante \r\nipsum primis in faucibus&lt;br&gt;&lt;/p&gt;'),
(2, 1, 'Morbi vel risus eu ligula malesuada dapibus', '&lt;p&gt;Nulla at purus et risus vehicula tempor. Aliquam erat volutpat. Nunc \r\naccumsan ipsum fermentum rhoncus pellentesque. Nullam sodales suscipit \r\nante ac gravida. Sed luctus sagittis placerat. Ut consectetur lacus non \r\nest auctor, pretium sodales mauris hendrerit. Nunc et turpis eget justo \r\ncursus imperdiet sed vel lacus. In ac tortor a sem malesuada efficitur \r\net quis risus.\r\n&lt;br&gt;&lt;/p&gt;');

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
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/category/1.png', 0, 1, 4, 3, 1, '2009-01-31 01:04:25', '2019-09-06 15:08:49'),
(27, 'catalog/category/5.png', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2019-07-26 15:54:41'),
(20, 'catalog/category/1.png', 0, 1, 2, 1, 1, '2009-01-05 21:49:43', '2019-09-06 15:09:06'),
(24, 'catalog/category/1.png', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2019-09-06 15:10:06'),
(18, 'catalog/category/1.png', 0, 1, 2, 2, 1, '2009-01-05 21:49:15', '2019-08-05 14:59:36'),
(17, 'catalog/category/1.png', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2019-09-06 15:10:33'),
(28, '', 29, 0, 0, 1, 1, '2009-02-02 13:11:12', '2019-07-24 11:25:15'),
(26, 'catalog/category/1.png', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2019-09-06 15:09:31'),
(29, 'catalog/category/3.png', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2019-07-26 15:53:31'),
(30, 'catalog/category/1.png', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2019-09-06 15:08:58'),
(31, 'catalog/category/5.png', 32, 0, 0, 1, 1, '2009-02-03 14:17:24', '2019-07-26 15:54:22'),
(32, 'catalog/category/1.png', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2019-07-26 15:53:58'),
(33, 'catalog/category/1.png', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2019-09-06 15:08:35'),
(34, 'catalog/category/1.png', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2019-09-06 15:09:58'),
(35, '', 29, 0, 0, 0, 1, '2010-09-17 10:06:48', '2019-07-26 17:02:10'),
(36, '', 29, 0, 0, 0, 1, '2010-09-17 10:07:13', '2019-07-24 11:46:44'),
(64, '', 27, 0, 1, 0, 1, '2019-07-24 11:39:41', '2019-07-24 11:39:41'),
(63, 'catalog/category/1.png', 27, 0, 1, 0, 1, '2019-07-24 11:39:23', '2019-09-06 15:09:13'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(62, '', 26, 0, 1, 0, 1, '2019-07-24 11:38:43', '2019-07-24 11:38:43'),
(61, 'catalog/category/4.png', 26, 0, 1, 0, 1, '2019-07-24 11:38:27', '2019-07-26 15:54:58'),
(68, '', 45, 0, 1, 0, 1, '2019-07-24 11:41:20', '2019-07-24 11:41:20'),
(67, '', 45, 0, 1, 0, 1, '2019-07-24 11:41:01', '2019-07-24 11:41:01'),
(66, '', 46, 0, 1, 0, 1, '2019-07-24 11:40:43', '2019-07-24 11:40:43'),
(65, '', 46, 0, 1, 0, 1, '2019-07-24 11:40:23', '2019-07-24 11:40:23'),
(57, 'catalog/category/1.png', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2019-09-06 15:10:42'),
(59, 'catalog/category/2.png', 29, 0, 1, 0, 1, '2019-07-24 11:26:52', '2019-07-26 15:53:40'),
(60, '', 29, 0, 1, 0, 1, '2019-07-24 11:27:10', '2019-07-24 11:27:10'),
(69, '', 30, 0, 1, 0, 1, '2019-07-24 11:41:57', '2019-07-24 11:41:57'),
(70, '', 30, 0, 1, 0, 1, '2019-07-24 11:42:21', '2019-07-24 11:42:21'),
(71, '', 30, 0, 1, 0, 1, '2019-07-24 11:42:57', '2019-07-24 11:42:57'),
(72, '', 30, 0, 1, 0, 1, '2019-07-24 11:43:16', '2019-07-24 11:43:16'),
(73, '', 30, 0, 1, 0, 1, '2019-07-24 11:43:45', '2019-07-24 11:43:45'),
(74, '', 32, 0, 1, 0, 1, '2019-07-24 11:44:32', '2019-07-24 11:44:32'),
(75, '', 32, 0, 1, 0, 1, '2019-07-24 11:44:54', '2019-07-24 11:44:54'),
(76, 'catalog/category/4.png', 32, 0, 1, 0, 1, '2019-07-24 11:45:33', '2019-07-26 15:54:13'),
(77, 'catalog/category/5.png', 32, 0, 1, 0, 1, '2019-07-24 11:46:01', '2019-07-26 15:54:05'),
(78, 'catalog/category/1.png', 0, 1, 1, 0, 1, '2019-08-02 11:37:29', '2019-09-06 15:09:38'),
(79, 'catalog/category/1.png', 0, 1, 1, 0, 1, '2019-08-02 11:38:44', '2019-09-06 15:10:20'),
(80, 'catalog/category/1.png', 0, 1, 1, 0, 1, '2019-08-02 11:39:08', '2019-09-06 15:10:27'),
(81, 'catalog/category/1.png', 0, 1, 1, 0, 1, '2019-08-02 11:39:51', '2019-09-06 15:10:13'),
(82, 'catalog/category/1.png', 0, 1, 1, 0, 1, '2019-08-02 11:40:21', '2019-09-06 15:09:45'),
(83, 'catalog/category/1.png', 0, 1, 1, 0, 1, '2019-09-02 16:59:54', '2019-09-06 15:10:50');

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
(28, 2, 'Monitors', '', 'Monitors', '', ''),
(33, 1, 'Cameras', '', 'Cameras', '', ''),
(32, 2, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 1, 'Scanners', '', 'Scanners', '', ''),
(30, 1, 'Printers', '', 'Printers', '', ''),
(29, 2, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(27, 2, 'Mac', '', 'Mac', '', ''),
(26, 1, 'PC', '', 'PC', '', ''),
(17, 1, 'Software', '', 'Software', '', ''),
(25, 2, 'Components', '', 'Components', '', ''),
(24, 1, 'Phones &amp; PDAs', '', 'Phones &amp; PDAs', '', ''),
(36, 1, 'finibus sit', '', 'finibus sit', '', ''),
(65, 1, 'Nunc id turpis', '', 'Nunc id turpis', '', ''),
(64, 1, 'Mauris molestie', '', 'Mauris molestie', '', ''),
(63, 2, 'Morbi sed diam', '', 'Morbi sed diam', '', ''),
(34, 2, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', ''),
(18, 1, 'Laptops', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(45, 1, 'Windows', '', 'Windows', '', ''),
(46, 1, 'Macs', '', 'Macs', '', ''),
(61, 1, 'vitae neque', '', 'vitae neque', '', ''),
(67, 2, 'Praesent tristique', '', 'Praesent tristique', '', ''),
(57, 2, 'Tablets', '', 'Tablets', '', ''),
(28, 1, 'Monitors', '', 'Monitors', '', ''),
(33, 2, 'Cameras', '', 'Cameras', '', ''),
(32, 1, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 2, 'Scanners', '', 'Scanners', '', ''),
(30, 2, 'Printers', '', 'Printers', '', ''),
(29, 1, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(27, 1, 'Mac', '', 'Mac', '', ''),
(26, 2, 'PC', '', 'PC', '', ''),
(17, 2, 'Software', '', 'Software', '', ''),
(25, 1, 'Components', '', 'Components', '', ''),
(24, 2, 'Phones &amp; PDAs', '', 'Phones &amp; PDAs', '', ''),
(64, 2, 'Mauris molestie', '', 'Mauris molestie', '', ''),
(63, 1, 'Morbi sed diam', '', 'Morbi sed diam', '', ''),
(62, 2, 'blandit venenatis', '', 'blandit venenatis', '', ''),
(34, 1, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', ''),
(18, 2, 'Laptops', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(45, 2, 'Windows', '', 'Windows', '', ''),
(46, 2, 'Macs', '', 'Macs', '', ''),
(62, 1, 'blandit venenatis', '', 'blandit venenatis', '', ''),
(61, 2, 'vitae neque', '', 'vitae neque', '', ''),
(68, 2, 'dignissim tempus', '', 'dignissim tempus', '', ''),
(68, 1, 'dignissim tempus', '', 'dignissim tempus', '', ''),
(67, 1, 'Praesent tristique', '', 'Praesent tristique', '', ''),
(66, 2, 'Donec dapibus', '', 'Donec dapibus', '', ''),
(66, 1, 'Donec dapibus', '', 'Donec dapibus', '', ''),
(65, 2, 'Nunc id turpis', '', 'Nunc id turpis', '', ''),
(57, 1, 'Tablets', '', 'Tablets', '', ''),
(59, 2, 'accumsan iaculis', '', 'accumsan iaculis', '', ''),
(59, 1, 'accumsan iaculis', '', 'accumsan iaculis', '', ''),
(60, 1, 'Nunc semper', '', 'Nunc semper', '', ''),
(60, 2, 'Nunc semper', '', 'Nunc semper', '', ''),
(69, 1, 'felis pretium', '', 'felis pretium', '', ''),
(69, 2, 'felis pretium', '', 'felis pretium', '', ''),
(70, 1, 'Vestibulum mollis', '', 'Vestibulum mollis', '', ''),
(70, 2, 'Vestibulum mollis', '', 'Vestibulum mollis', '', ''),
(71, 1, 'natoque penatibus', '', 'natoque penatibus', '', ''),
(71, 2, 'natoque penatibus', '', 'natoque penatibus', '', ''),
(72, 1, 'Phasellus ege', '', 'Phasellus ege', '', ''),
(72, 2, 'Phasellus ege', '', 'Phasellus ege', '', ''),
(73, 1, 'bibendum massa', '', 'bibendum massa', '', ''),
(73, 2, 'bibendum massa', '', 'bibendum massa', '', ''),
(74, 1, 'urna accumsan', '', 'urna accumsan', '', ''),
(74, 2, 'urna accumsan', '', 'urna accumsan', '', ''),
(75, 1, 'dapibus hendr', '', 'dapibus hendr', '', ''),
(75, 2, 'dapibus hendr', '', 'dapibus hendr', '', ''),
(76, 2, 'lacinia ut hend', '', 'lacinia ut hend', '', ''),
(76, 1, 'lacinia ut hend', '', 'lacinia ut hend', '', ''),
(77, 2, 'gravida orci', '', 'gravida orci', '', ''),
(77, 1, 'gravida orci', '', 'gravida orci', '', ''),
(35, 2, ' mattis gravida', '', ' mattis gravida', '', ''),
(35, 1, ' mattis gravida', '', ' mattis gravida', '', ''),
(36, 2, 'finibus sit', '', 'finibus sit', '', ''),
(20, 1, 'Desktops', '&lt;p&gt;Curabitur scelerisque, eros ac elementum dictum, metus nunc gravida mauris, sed aliquam leo eros a ex. Duis orci sapien, consequat ac mauris vitae, placerat pellentesque enim. Integer sollicitudin molestie urna ut facilisis. Mauris porttitor mauris consequat cursus scelerisque. Nunc placerat nulla a justo iaculis vestibulum. Etiam sed semper nisi. Vestibulum consectetur, massa in porttitor dignissim, mauris tortor sollicitudin lorem, sit amet pharetra neque nulla non nisi. Proin nec sapien sapien. Sed mattis erat ipsum, id pulvinar arcu tristique quis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus id rhoncus risus, aliquam dignissim mauris. Curabitur sit amet consectetur nunc&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', ''),
(20, 2, 'Desktops', '&lt;p&gt;Curabitur scelerisque, eros ac elementum dictum, metus nunc gravida mauris, sed aliquam leo eros a ex. Duis orci sapien, consequat ac mauris vitae, placerat pellentesque enim. Integer sollicitudin molestie urna ut facilisis. Mauris porttitor mauris consequat cursus scelerisque. Nunc placerat nulla a justo iaculis vestibulum. Etiam sed semper nisi. Vestibulum consectetur, massa in porttitor dignissim, mauris tortor sollicitudin lorem, sit amet pharetra neque nulla non nisi. Proin nec sapien sapien. Sed mattis erat ipsum, id pulvinar arcu tristique quis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus id rhoncus risus, aliquam dignissim mauris. Curabitur sit amet consectetur nunc&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', ''),
(78, 2, 'head Phone', '', 'head Phone', '', ''),
(78, 1, 'head Phone', '', 'head Phone', '', ''),
(79, 1, 'smart phone', '', 'smart phone', '', ''),
(80, 1, 'smart watch', '', 'smart watch', '', ''),
(81, 1, 'shoes', '', 'shoes', '', ''),
(82, 1, 'jewellary', '', 'jewellary', '', ''),
(83, 1, 'Trackballs', '', 'Trackballs', '', ''),
(82, 2, 'jewellary', '', 'jewellary', '', ''),
(81, 2, 'shoes', '', 'shoes', '', ''),
(79, 2, 'smart phone', '', 'smart phone', '', ''),
(80, 2, 'smart watch', '', 'smart watch', '', ''),
(83, 2, 'Trackballs', '', 'Trackballs', '', '');

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
(17, 2),
(17, 4),
(17, 5),
(17, 6),
(20, 1),
(20, 2),
(20, 4),
(20, 5),
(20, 6),
(24, 1),
(24, 2),
(24, 5),
(24, 6),
(25, 1),
(25, 2),
(25, 4),
(25, 5),
(33, 2),
(33, 4),
(33, 5),
(33, 6),
(34, 1),
(34, 4),
(34, 6),
(35, 1),
(35, 4),
(35, 6);

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
(28, 25, 0),
(28, 28, 2),
(59, 29, 1),
(35, 25, 0),
(35, 35, 2),
(31, 25, 0),
(36, 25, 0),
(36, 36, 2),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 32, 1),
(31, 31, 2),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(17, 17, 0),
(33, 33, 0),
(34, 34, 0),
(65, 46, 1),
(65, 18, 0),
(66, 18, 0),
(65, 65, 2),
(64, 64, 2),
(64, 27, 1),
(64, 20, 0),
(63, 63, 2),
(63, 20, 0),
(63, 27, 1),
(62, 62, 2),
(62, 26, 1),
(73, 73, 2),
(73, 30, 1),
(73, 25, 0),
(72, 72, 2),
(62, 20, 0),
(61, 61, 2),
(61, 20, 0),
(61, 26, 1),
(72, 30, 1),
(72, 25, 0),
(71, 71, 2),
(71, 30, 1),
(71, 25, 0),
(70, 70, 2),
(70, 30, 1),
(70, 25, 0),
(69, 69, 2),
(69, 30, 1),
(69, 25, 0),
(68, 68, 2),
(68, 45, 1),
(68, 18, 0),
(67, 67, 2),
(67, 45, 1),
(67, 18, 0),
(66, 66, 2),
(66, 46, 1),
(57, 57, 0),
(28, 29, 1),
(35, 29, 1),
(36, 29, 1),
(59, 25, 0),
(59, 59, 2),
(60, 25, 0),
(60, 29, 1),
(60, 60, 2),
(74, 25, 0),
(74, 32, 1),
(74, 74, 2),
(75, 25, 0),
(75, 32, 1),
(75, 75, 2),
(76, 32, 1),
(76, 25, 0),
(76, 76, 2),
(77, 32, 1),
(77, 25, 0),
(77, 77, 2),
(78, 78, 0),
(79, 79, 0),
(80, 80, 0),
(81, 81, 0),
(82, 82, 0),
(83, 83, 0);

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
(25, 0, 0),
(28, 0, 0),
(35, 0, 0),
(36, 0, 0),
(31, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(20, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(18, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(57, 0, 0),
(33, 0, 0),
(29, 0, 0),
(30, 0, 0),
(32, 0, 0),
(27, 0, 0),
(26, 0, 0),
(34, 0, 0),
(24, 0, 0),
(17, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0);

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
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(45, 0),
(46, 0),
(57, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0);

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
  `status` tinyint(1) NOT NULL DEFAULT '1'
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
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2019-09-03 09:24:14'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
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
(1, 1, 0, 1, 'demo', 'demo', 'demo@gmail.com', '123456789', '', 'c1003d1530dfe583d53155115a0abeb9ea084e40', 'boPcJExrC', NULL, NULL, 0, 1, '', '::1', 1, 0, '', '', '2019-07-25 12:31:30'),
(2, 1, 0, 1, 'demo', 'demo', 'demo@demo.com', '1234567890', '', '0a4d9afad208f56fa38a802a67aac329adb97202', 'aTluxD7gW', NULL, NULL, 0, 0, '', '127.0.0.1', 1, 0, '', '', '2019-08-03 16:30:51'),
(3, 1, 0, 1, 'tet', 'test', 'admin@gmail.com', '121225123', '', '0641f55e502edc8d06254e8e66e733af7020fbe7', 'gBNDIGS3T', NULL, NULL, 0, 0, '', '::1', 1, 0, '', '', '2019-08-22 11:27:46');

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
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
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
(1, 2, 'Default', 'test');

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
(1, 1, '::1', '2019-07-25 12:32:29'),
(2, 2, '::1', '2019-08-03 16:30:53'),
(3, 3, '::1', '2019-08-22 11:27:47'),
(4, 2, '127.0.0.1', '2019-09-05 15:04:33');

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
(2, '', '::1', 3, '2019-08-22 05:49:56', '2019-09-06 06:13:13');

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
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
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

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(1, 40, '2019-07-26 18:55:46'),
(1, 41, '2019-07-26 18:56:06'),
(1, 42, '2019-07-27 12:51:40'),
(1, 29, '2019-07-27 14:26:41'),
(2, 41, '2019-08-19 14:36:06'),
(2, 40, '2019-08-03 16:34:20'),
(2, 34, '2019-08-22 11:47:05'),
(2, 32, '2019-08-22 11:47:48');

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
(43, 'module', 'latest'),
(44, 'module', 'bestseller'),
(45, 'module', 'categorynew'),
(47, 'module', 'html'),
(48, 'module', 'special'),
(49, 'module', 'blogger'),
(54, 'module', 'webinewsletter'),
(51, 'module', 'filter'),
(55, 'module', 'imgbanner'),
(56, 'module', 'offerbanner'),
(57, 'module', 'ocproduct'),
(58, 'module', 'onsaleproduct');

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
(1, 0, 'webiquickview.ocmod.zip', '2019-07-25 14:14:17');

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

--
-- Dumping data for table `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 1, 'admin/controller/extension/module/webiquickview.php', '2019-07-25 14:14:17'),
(2, 1, 'catalog/controller/extension/module/webiquickview.php', '2019-07-25 14:14:17'),
(3, 1, 'catalog/view/javascript/jquery/webiquickview.js', '2019-07-25 14:14:17'),
(4, 1, 'admin/language/en-gb/extension/module/webiquickview.php', '2019-07-25 14:14:17'),
(5, 1, 'admin/view/template/extension/module/webiquickview.twig', '2019-07-25 14:14:17'),
(6, 1, 'catalog/language/en-gb/extension/module/webiquickview.php', '2019-07-25 14:14:17'),
(7, 1, 'catalog/view/theme/default/template/extension/module/webiquickview.twig', '2019-07-25 14:14:17');

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
(2, 1, 1),
(3, 1, 2),
(4, 2, 0),
(5, 2, 1),
(6, 2, 2);

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
(1, 1, 1, 'Blue'),
(1, 2, 1, 'Blue'),
(2, 1, 1, 'Red'),
(2, 2, 1, 'Red'),
(3, 1, 1, 'Pink'),
(3, 2, 1, 'Pink'),
(4, 1, 2, 'Small'),
(4, 2, 2, 'Small'),
(5, 1, 2, 'Medium'),
(5, 2, 2, 'Medium'),
(6, 1, 2, 'Large'),
(6, 2, 2, 'Large');

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
(2, 1);

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
(1, 1, 'Color'),
(1, 2, 'Color'),
(2, 1, 'Size'),
(2, 2, 'Size');

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
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
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
  `is_modified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_status`
--

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_target`
--

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_target`
--

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
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
(4, 1, 'About Us', '&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;br&gt;\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;br&gt;\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;br&gt;\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;br&gt;\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;br&gt;\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;', 'About Us', '', ''),
(6, 2, 'Delivery Information', '&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;br&gt;\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;', 'Delivery Information', '', ''),
(3, 2, 'Privacy Policy', '&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;br&gt;\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;', 'Privacy Policy', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi\r\n&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;br&gt;\r\n    &lt;/p&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n        &lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2&quot;&gt;\r\n    &lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot;&gt;\r\n    &lt;/div&gt;\r\n    &lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n    &lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n    &lt;/div&gt;\r\n&lt;/div&gt;', 'Terms &amp; Conditions', '', '');

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
(6, 0, 0),
(3, 0, 0),
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
(4, 0),
(5, 0),
(6, 0);

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
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Arabic', 'ar', 'ar_ua-arabic', '', '', 2, 1);

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
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

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
(1541, 6, 'offerbanner.50', 'column_left', 2),
(1526, 2, 'webinewsletter.45', 'column_left', 6),
(1532, 3, 'offerbanner.50', 'column_left', 3),
(1525, 2, 'onsaleproduct.55', 'column_left', 5),
(1531, 3, 'special.36', 'column_left', 2),
(1540, 6, 'special.36', 'column_left', 1),
(1551, 10, 'offerbanner.50', 'column_left', 2),
(1530, 3, 'filter', 'column_left', 1),
(1214, 8, 'webinewsletter.45', 'ftop_full', 0),
(1588, 5, 'offerbanner.50', 'column_left', 2),
(1523, 2, 'html.35', 'column_left', 3),
(1522, 2, 'offerbanner.50', 'column_left', 2),
(1519, 1, 'html.40', 'fbottom_full', 0),
(1518, 1, 'html.39', 'footer_left', 0),
(1517, 1, 'blogger.37', 'content_bottom', 1),
(1516, 1, 'carousel.29', 'content_bottom', 0),
(1539, 6, 'category', 'column_left', 0),
(1550, 10, 'special.36', 'column_left', 1),
(1628, 7, 'webinewsletter.45', 'column_left', 6),
(1614, 12, 'special.36', 'column_left', 1),
(1213, 8, 'html.39', 'footer_left', 1),
(1605, 4, 'special.36', 'column_left', 1),
(1596, 11, 'special.36', 'column_left', 1),
(1587, 5, 'special.36', 'column_left', 1),
(1521, 2, 'special.36', 'column_left', 1),
(1578, 13, 'special.36', 'column_left', 1),
(1569, 9, 'special.36', 'column_left', 1),
(1515, 1, 'webinewsletter.46', 'content_top', 15),
(1514, 1, 'latest.32', 'content_top', 8),
(1513, 1, 'imgbanner.48', 'content_top', 6),
(1512, 1, 'ocproduct.53', 'content_top', 5),
(1511, 1, 'categorynew', 'content_top', 4),
(1549, 10, 'category', 'column_left', 0),
(1529, 3, 'category', 'column_left', 0),
(1627, 7, 'onsaleproduct.55', 'column_left', 5),
(1524, 2, 'banner.54', 'column_left', 4),
(1613, 12, 'category', 'column_left', 0),
(1216, 8, 'html.40', 'fbottom_full', 0),
(1508, 1, 'html.49', 'content_top', 1),
(1604, 4, 'category', 'column_left', 0),
(1510, 1, 'bestseller.33', 'content_top', 3),
(1595, 11, 'category', 'column_left', 0),
(1509, 1, 'featured.28', 'content_top', 2),
(1586, 5, 'category', 'column_left', 0),
(1507, 1, 'slideshow.27', 'content_top', 0),
(1520, 2, 'category', 'column_left', 0),
(1577, 13, 'category', 'column_left', 0),
(1568, 9, 'category', 'column_left', 0),
(1506, 1, 'webinewsletter.45', 'column_left', 6),
(1505, 1, 'onsaleproduct.55', 'column_left', 5),
(1504, 1, 'banner.54', 'column_left', 4),
(1503, 1, 'html.35', 'column_left', 3),
(1502, 1, 'offerbanner.50', 'column_left', 2),
(1501, 1, 'special.36', 'column_left', 1),
(1500, 1, 'category', 'column_left', 0),
(1527, 2, 'html.39', 'footer_left', 1),
(1528, 2, 'html.40', 'fbottom_full', 0),
(1533, 3, 'html.35', 'column_left', 4),
(1534, 3, 'banner.54', 'column_left', 5),
(1535, 3, 'onsaleproduct.55', 'column_left', 6),
(1536, 3, 'webinewsletter.45', 'column_left', 7),
(1537, 3, 'html.39', 'footer_left', 1),
(1538, 3, 'html.40', 'fbottom_full', 0),
(1542, 6, 'html.35', 'column_left', 3),
(1543, 6, 'banner.54', 'column_left', 4),
(1544, 6, 'onsaleproduct.55', 'column_left', 5),
(1545, 6, 'webinewsletter.45', 'column_left', 6),
(1546, 6, 'account', 'column_right', 1),
(1547, 6, 'html.39', 'footer_left', 1),
(1548, 6, 'html.40', 'fbottom_full', 0),
(1552, 10, 'html.35', 'column_left', 3),
(1553, 10, 'banner.54', 'column_left', 4),
(1554, 10, 'onsaleproduct.55', 'column_left', 5),
(1555, 10, 'webinewsletter.45', 'column_left', 6),
(1556, 10, 'account', 'column_right', 1),
(1557, 10, 'html.39', 'footer_left', 0),
(1558, 10, 'html.40', 'fbottom_full', 0),
(1626, 7, 'banner.54', 'column_left', 4),
(1625, 7, 'html.35', 'column_left', 3),
(1624, 7, 'offerbanner.50', 'column_left', 2),
(1623, 7, 'special.36', 'column_left', 1),
(1622, 7, 'category', 'column_left', 0),
(1570, 9, 'offerbanner.50', 'column_left', 2),
(1571, 9, 'html.35', 'column_left', 3),
(1572, 9, 'banner.54', 'column_left', 4),
(1573, 9, 'onsaleproduct.55', 'column_left', 5),
(1574, 9, 'webinewsletter.45', 'column_left', 6),
(1575, 9, 'html.39', 'footer_left', 1),
(1576, 9, 'html.40', 'fbottom_full', 0),
(1579, 13, 'offerbanner.50', 'column_left', 2),
(1580, 13, 'html.35', 'column_left', 3),
(1581, 13, 'banner.54', 'column_left', 4),
(1582, 13, 'onsaleproduct.55', 'column_left', 5),
(1583, 13, 'webinewsletter.45', 'column_left', 6),
(1584, 13, 'html.39', 'footer_left', 1),
(1585, 13, 'html.40', 'fbottom_full', 0),
(1589, 5, 'html.35', 'column_left', 3),
(1590, 5, 'banner.54', 'column_left', 4),
(1591, 5, 'onsaleproduct.55', 'column_left', 5),
(1592, 5, 'webinewsletter.45', 'column_left', 6),
(1593, 5, 'html.39', 'footer_left', 1),
(1594, 5, 'html.40', 'fbottom_full', 0),
(1597, 11, 'offerbanner.50', 'column_left', 2),
(1598, 11, 'html.35', 'column_left', 3),
(1599, 11, 'banner.54', 'column_left', 4),
(1600, 11, 'onsaleproduct.55', 'column_left', 5),
(1601, 11, 'webinewsletter.45', 'column_left', 6),
(1602, 11, 'html.39', 'footer_left', 1),
(1603, 11, 'html.40', 'fbottom_full', 0),
(1606, 4, 'offerbanner.50', 'column_left', 2),
(1607, 4, 'html.35', 'column_left', 3),
(1608, 4, 'banner.54', 'column_left', 4),
(1609, 4, 'onsaleproduct.55', 'column_left', 5),
(1610, 4, 'webinewsletter.45', 'column_left', 6),
(1611, 4, 'html.39', 'footer_left', 1),
(1612, 4, 'html.40', 'fbottom_full', 0),
(1615, 12, 'offerbanner.50', 'column_left', 2),
(1616, 12, 'html.35', 'column_left', 3),
(1617, 12, 'banner.54', 'column_left', 4),
(1618, 12, 'onsaleproduct.55', 'column_left', 5),
(1619, 12, 'webinewsletter.45', 'column_left', 6),
(1620, 12, 'html.39', 'footer_left', 1),
(1621, 12, 'html.40', 'fbottom_full', 0),
(1629, 7, 'html.39', 'footer_left', 1),
(1630, 7, 'html.40', 'fbottom_full', 0);

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
(205, 6, 0, 'account/%'),
(206, 10, 0, 'affiliate/%'),
(204, 3, 0, 'product/category'),
(202, 1, 0, 'common/home'),
(203, 2, 0, 'product/product'),
(211, 11, 0, 'information/information'),
(214, 7, 0, 'checkout/%'),
(181, 8, 0, 'information/contact'),
(208, 9, 0, 'information/sitemap'),
(212, 4, 0, ''),
(210, 5, 0, 'product/manufacturer'),
(213, 12, 0, 'product/compare'),
(209, 13, 0, 'product/search');

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
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

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
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
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
(1, 1, 'Webi QuickView', 'webiquickview', 'webithemes', '1.0.0', 'http://www.webiarch.com', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n	<name>Webi QuickView</name>\n	<code>webiquickview</code>\n	<version>1.0.0</version>\n	<author>webithemes</author>\n	<link>http://www.webiarch.com</link>\n	<file path="catalog/controller/common/header.php">\n        <operation>\n            <search><![CDATA[$data[\'title\'] = $this->document->getTitle();]]></search>\n            <add position="before">\n                <![CDATA[\n               $data[\'quickview\'] = $this->load->controller(\'extension/module/webiquickview\');\n            ]]>\n            </add>\n        </operation>     \n    </file>\n</modification>', 1, '2019-07-25 14:14:17');

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
(29, 'Home Page Manufactures', 'carousel', '{"name":"Home Page Manufactures","banner_id":"8","width":"225","height":"150","status":"1"}'),
(28, 'Home Page Featured', 'featured', '{"name":"Home Page Featured","product_name":"","product":["43","40","42","30","41","48","36","31","44","45","28"],"limit":"12","width":"280","height":"310","status":"1"}'),
(27, 'Home Page Slideshow', 'slideshow', '{"name":"Home Page Slideshow","banner_id":"7","width":"1470","height":"700","status":"1"}'),
(32, 'Home Page Latest', 'latest', '{"name":"Home Page Latest","limit":"12","width":"282","height":"310","status":"1"}'),
(33, 'Home Page Bestseller', 'bestseller', '{"name":"Home Page Bestseller","limit":"12","width":"280","height":"310","status":"1"}'),
(35, 'HTML Page Testimonial', 'html', '{"name":"HTML Page Testimonial","module_description":{"1":{"title":"testimonial","description":"&lt;div class=&quot;test-t next-prevb&quot;&gt;\\r\\n  &lt;div class=&quot;test-bg text-center fproduct row&quot;&gt;\\r\\n    &lt;div id=&quot;testi&quot; class=&quot;owl-carousel owl-theme&quot;&gt;\\r\\n      &lt;div class=&quot;item col-xs-12&quot;&gt;\\r\\n        &lt;div class=&quot;content_test&quot;&gt;\\r\\n          &lt;div class=&quot;testi-d&quot;&gt;\\r\\n            &lt;div class=&quot;text-p&quot;&gt;\\r\\n             &lt;p&gt;Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium...&lt;\\/p&gt;\\r\\n             &lt;img src=&quot;image\\/catalog\\/testimonial\\/1.png&quot; class=&quot;img-responsive center-block testi1&quot;&gt;\\r\\n             &lt;svg width=&quot;60px&quot; height=&quot;60px&quot;&gt;&lt;use xlink:href=&quot;#quotebt&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;\\r\\n             &lt;h3&gt;Jesica Wilson&lt;\\/h3&gt;\\r\\n             &lt;span class=&quot;first-t1&quot;&gt;developer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;item col-xs-12&quot;&gt;\\r\\n        &lt;div class=&quot;content_test&quot;&gt;\\r\\n          &lt;div class=&quot;testi-d&quot;&gt;\\r\\n            &lt;div class=&quot;text-p&quot;&gt;\\r\\n             &lt;p&gt;Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium...&lt;\\/p&gt;\\r\\n             &lt;img src=&quot;image\\/catalog\\/testimonial\\/2.png&quot; class=&quot;img-responsive center-block testi1&quot;&gt;\\r\\n             &lt;svg width=&quot;60px&quot; height=&quot;60px&quot;&gt;&lt;use xlink:href=&quot;#quotebt&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;\\r\\n             &lt;h3&gt;Jesica Wilson&lt;\\/h3&gt;\\r\\n             &lt;span class=&quot;first-t1&quot;&gt;developer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;item col-xs-12&quot;&gt;\\r\\n        &lt;div class=&quot;content_test&quot;&gt;\\r\\n          &lt;div class=&quot;testi-d&quot;&gt;\\r\\n            &lt;div class=&quot;text-p&quot;&gt;\\r\\n             &lt;p&gt;Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium...&lt;\\/p&gt;\\r\\n             &lt;img src=&quot;image\\/catalog\\/testimonial\\/2.png&quot; class=&quot;img-responsive center-block testi1&quot;&gt;\\r\\n             &lt;svg width=&quot;60px&quot; height=&quot;60px&quot;&gt;&lt;use xlink:href=&quot;#quotebt&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;\\r\\n             &lt;h3&gt;Jesica Wilson&lt;\\/h3&gt;\\r\\n             &lt;span class=&quot;first-t1&quot;&gt;developer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;"},"2":{"title":"testimonial","description":"&lt;div class=&quot;test-t next-prevb&quot;&gt;\\r\\n  &lt;div class=&quot;test-bg text-center fproduct row&quot;&gt;\\r\\n    &lt;div id=&quot;testi&quot; class=&quot;owl-carousel owl-theme&quot;&gt;\\r\\n      &lt;div class=&quot;item col-xs-12&quot;&gt;\\r\\n        &lt;div class=&quot;content_test&quot;&gt;\\r\\n          &lt;div class=&quot;testi-d&quot;&gt;\\r\\n            &lt;div class=&quot;text-p&quot;&gt;\\r\\n             &lt;p&gt;Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium...&lt;\\/p&gt;\\r\\n             &lt;img src=&quot;image\\/catalog\\/testimonial\\/1.png&quot; class=&quot;img-responsive center-block testi1&quot;&gt;\\r\\n             &lt;svg width=&quot;60px&quot; height=&quot;60px&quot;&gt;&lt;use xlink:href=&quot;#quotebt&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;\\r\\n             &lt;h3&gt;Jesica Wilson&lt;\\/h3&gt;\\r\\n             &lt;span class=&quot;first-t1&quot;&gt;developer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;item col-xs-12&quot;&gt;\\r\\n        &lt;div class=&quot;content_test&quot;&gt;\\r\\n          &lt;div class=&quot;testi-d&quot;&gt;\\r\\n            &lt;div class=&quot;text-p&quot;&gt;\\r\\n             &lt;p&gt;Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium...&lt;\\/p&gt;\\r\\n             &lt;img src=&quot;image\\/catalog\\/testimonial\\/2.png&quot; class=&quot;img-responsive center-block testi1&quot;&gt;\\r\\n             &lt;svg width=&quot;60px&quot; height=&quot;60px&quot;&gt;&lt;use xlink:href=&quot;#quotebt&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;\\r\\n             &lt;h3&gt;Jesica Wilson&lt;\\/h3&gt;\\r\\n             &lt;span class=&quot;first-t1&quot;&gt;developer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;item col-xs-12&quot;&gt;\\r\\n        &lt;div class=&quot;content_test&quot;&gt;\\r\\n          &lt;div class=&quot;testi-d&quot;&gt;\\r\\n            &lt;div class=&quot;text-p&quot;&gt;\\r\\n             &lt;p&gt;Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium...&lt;\\/p&gt;\\r\\n             &lt;img src=&quot;image\\/catalog\\/testimonial\\/2.png&quot; class=&quot;img-responsive center-block testi1&quot;&gt;\\r\\n             &lt;svg width=&quot;60px&quot; height=&quot;60px&quot;&gt;&lt;use xlink:href=&quot;#quotebt&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;\\r\\n             &lt;h3&gt;Jesica Wilson&lt;\\/h3&gt;\\r\\n             &lt;span class=&quot;first-t1&quot;&gt;developer&lt;\\/span&gt;\\r\\n            &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;"}},"status":"1"}'),
(36, 'Home Page Specials', 'special', '{"name":"Home Page Specials","limit":"7","width":"282","height":"310","status":"1"}'),
(37, 'Webi Blog', 'blogger', '{"module_id":"37","name":"Webi Blog","status":"1","width":"1170","height":"648","limit":"5","char_limit":"90","comments":"1","login":"0","auto_approve":"1"}'),
(46, 'Newsletter Popup', 'webinewsletter', '{"displaymode":"popup","name":"Newsletter Popup","banner":"","status":"1","description":{"1":"&lt;h1&gt;sign up our newsletter&lt;\\/h1&gt;\\r\\n&lt;p&gt;Subscribe our newsletters now and stay up-to-date with new collections&lt;\\/p&gt;","2":"&lt;h1&gt;sign up our newsletter&lt;\\/h1&gt;\\r\\n&lt;p&gt;Subscribe our newsletters now and stay up-to-date with new collections&lt;\\/p&gt;"},"social":{"1":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","2":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t"}}'),
(39, 'HTML Footer About', 'html', '{"name":"HTML Footer About","module_description":{"1":{"title":"","description":"&lt;div class=&quot;fot-pay&quot;&gt;\\r\\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Loreadable content of a page when looking at its layout rem&lt;\\/p&gt;\\r\\n&lt;div class=&quot;pay-connect&quot;&gt;\\r\\n&lt;h5 class=&quot;pay&quot;&gt;download this app&lt;\\/h5&gt;\\r\\n&lt;ul class=&quot;list-inline list-unstyled&quot;&gt;\\r\\n&lt;li class=&quot;d-inline-block&quot;&gt;\\r\\n&lt;img class=&quot;img-responsive&quot; src=&quot;image\\/catalog\\/app1.png&quot;&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li class=&quot;d-inline-block&quot;&gt;\\r\\n&lt;img class=&quot;img-responsive&quot; src=&quot;image\\/catalog\\/app2.png&quot;&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;"},"2":{"title":"","description":"&lt;div class=&quot;fot-pay&quot;&gt;\\r\\n&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Loreadable content of a page when looking at its layout rem&lt;\\/p&gt;\\r\\n&lt;div class=&quot;pay-connect&quot;&gt;\\r\\n&lt;h5 class=&quot;pay&quot;&gt;download this app&lt;\\/h5&gt;\\r\\n&lt;ul class=&quot;list-inline list-unstyled&quot;&gt;\\r\\n&lt;li class=&quot;d-inline-block&quot;&gt;\\r\\n&lt;img class=&quot;img-responsive&quot; src=&quot;image\\/catalog\\/app1.png&quot;&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li class=&quot;d-inline-block&quot;&gt;\\r\\n&lt;img class=&quot;img-responsive&quot; src=&quot;image\\/catalog\\/app2.png&quot;&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;"}},"status":"1"}'),
(40, 'HTML Footer Social', 'html', '{"name":"HTML Footer Social","module_description":{"1":{"title":"","description":"&lt;div class=&quot;footer-down&quot;&gt;\\r\\n  &lt;div class=&quot;container&quot;&gt;\\r\\n    &lt;div class=&quot;row&quot;&gt;\\r\\n      &lt;div class=&quot;block-social col-lg-6 col-md-6 col-sm-6 col-xs-12&quot;&gt;\\r\\n        &lt;div class=&quot;social&quot;&gt;\\r\\n          &lt;h6&gt;Follow US&lt;\\/h6&gt;\\r\\n          &lt;ul class=&quot;list-unstyled fsocial list-inline&quot;&gt;\\r\\n           &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-instagram&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-pinterest&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-vimeo&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n          &lt;\\/ul&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n\\r\\n      &lt;div class=&quot;col-lg-6 col-md-6 col-sm-6 col-xs-12 pay-connect1 text-right&quot;&gt;\\r\\n        &lt;h6&gt;Payment&lt;\\/h6&gt;\\r\\n        &lt;ul class=&quot;list-inline list-unstyled footpay&quot;&gt;\\r\\n          &lt;li&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#ae&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n          &lt;li&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#mc&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n          &lt;li&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#dis&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n          &lt;li&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#visa&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n        &lt;\\/ul&gt;\\r\\n       &lt;\\/div&gt;\\r\\n      \\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;"},"2":{"title":"","description":"&lt;div class=&quot;footer-down&quot;&gt;\\r\\n  &lt;div class=&quot;container&quot;&gt;\\r\\n    &lt;div class=&quot;row&quot;&gt;\\r\\n      &lt;div class=&quot;block-social col-lg-6 col-md-6 col-sm-6 col-xs-12&quot;&gt;\\r\\n        &lt;div class=&quot;social&quot;&gt;\\r\\n          &lt;h6&gt;Follow US&lt;\\/h6&gt;\\r\\n          &lt;ul class=&quot;list-unstyled fsocial list-inline&quot;&gt;\\r\\n           &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-facebook&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-twitter&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-instagram&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n              &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-pinterest&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;fa fa-vimeo&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n          &lt;\\/ul&gt;\\r\\n        &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n\\r\\n      &lt;div class=&quot;col-lg-6 col-md-6 col-sm-6 col-xs-12 pay-connect1 text-right&quot;&gt;\\r\\n        &lt;h6&gt;Payment&lt;\\/h6&gt;\\r\\n        &lt;ul class=&quot;list-inline list-unstyled footpay&quot;&gt;\\r\\n          &lt;li&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#ae&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n          &lt;li&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#mc&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n          &lt;li&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#dis&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n          &lt;li&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#visa&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n        &lt;\\/ul&gt;\\r\\n       &lt;\\/div&gt;\\r\\n      \\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;"}},"status":"1"}'),
(45, 'Newsletter', 'webinewsletter', '{"displaymode":"default","name":"Newsletter","banner":"","status":"1","description":{"1":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;get started with store wants to get latest updates! sign up for free.&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","2":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t&lt;p&gt;Get 40%off on Selected items!&lt;\\/p&gt;\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t"},"social":{"1":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","2":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t"}}'),
(48, 'Img Banner', 'imgbanner', '{"name":"Img Banner","banner_id":"10","width":"470","height":"300","status":"1"}'),
(49, 'Services', 'html', '{"name":"Services","module_description":{"1":{"title":"","description":"&lt;div class=&quot;row ser-mbt deliveryinfo mb-2&quot;&gt;\\r\\n    &lt;div class=&quot;col-lg-3 col-md-6 col-sm-6 col-xs-12 ser-s ses&quot;&gt;\\r\\n        &lt;ul&gt;\\r\\n            &lt;li class=&quot;ser-svg&quot;&gt;&lt;svg width=&quot;40px&quot; height=&quot;40px&quot;&gt;&lt;use xlink:href=&quot;#support&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n            &lt;li class=&quot;ser-t&quot;&gt;\\r\\n            &lt;h4&gt;special gift&lt;\\/h4&gt;\\r\\n            &lt;p&gt;give the perfect gift&lt;\\/p&gt;\\r\\n            &lt;\\/li&gt;\\r\\n        &lt;\\/ul&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col-lg-3 col-md-6 col-sm-6 col-xs-12 ses&quot;&gt;\\r\\n        &lt;ul&gt;\\r\\n            &lt;li class=&quot;ser-svg&quot;&gt;&lt;svg width=&quot;32px&quot; height=&quot;32px&quot;&gt;&lt;use xlink:href=&quot;#shipping&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n            &lt;li class=&quot;ser-t&quot;&gt;\\r\\n            &lt;h4&gt;24\\/7 support&lt;\\/h4&gt;\\r\\n            &lt;p&gt;online support 24\\/7&lt;\\/p&gt;\\r\\n            &lt;\\/li&gt;\\r\\n        &lt;\\/ul&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col-lg-3 col-md-6 col-sm-6 col-xs-12 ser-ss ses&quot;&gt;\\r\\n        &lt;ul&gt;\\r\\n            &lt;li class=&quot;ser-svg&quot;&gt;&lt;svg width=&quot;32px&quot; height=&quot;32px&quot;&gt;&lt;use xlink:href=&quot;#return&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n            &lt;li class=&quot;ser-t&quot;&gt;\\r\\n                &lt;h4&gt;Safe Shopping&lt;\\/h4&gt;\\r\\n                &lt;p&gt;Safe Shopping guarantee&lt;\\/p&gt;\\r\\n            &lt;\\/li&gt;\\r\\n        &lt;\\/ul&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col-lg-3 col-md-6 col-sm-6 col-xs-12 ser-ss ses&quot;&gt;\\r\\n        &lt;ul&gt;\\r\\n            &lt;li class=&quot;ser-svg&quot;&gt;&lt;svg width=&quot;32px&quot; height=&quot;32px&quot;&gt;&lt;use xlink:href=&quot;#secure&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n            &lt;li class=&quot;ser-t&quot;&gt;\\r\\n            &lt;h4&gt;freeShopping&lt;\\/h4&gt;\\r\\n            &lt;p&gt;Safe Shopping guarantee&lt;\\/p&gt;\\r\\n            &lt;\\/li&gt;\\r\\n        &lt;\\/ul&gt;\\r\\n    &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;"},"2":{"title":"","description":"&lt;div class=&quot;row ser-mbt deliveryinfo mb-2&quot;&gt;\\r\\n    &lt;div class=&quot;col-lg-3 col-md-6 col-sm-6 col-xs-12 ser-s ses&quot;&gt;\\r\\n        &lt;ul&gt;\\r\\n            &lt;li class=&quot;ser-svg&quot;&gt;&lt;svg width=&quot;40px&quot; height=&quot;40px&quot;&gt;&lt;use xlink:href=&quot;#support&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n            &lt;li class=&quot;ser-t&quot;&gt;\\r\\n            &lt;h4&gt;special gift&lt;\\/h4&gt;\\r\\n            &lt;p&gt;give the perfect gift&lt;\\/p&gt;\\r\\n            &lt;\\/li&gt;\\r\\n        &lt;\\/ul&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col-lg-3 col-md-6 col-sm-6 col-xs-12 ses&quot;&gt;\\r\\n        &lt;ul&gt;\\r\\n            &lt;li class=&quot;ser-svg&quot;&gt;&lt;svg width=&quot;32px&quot; height=&quot;32px&quot;&gt;&lt;use xlink:href=&quot;#shipping&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n            &lt;li class=&quot;ser-t&quot;&gt;\\r\\n            &lt;h4&gt;24\\/7 support&lt;\\/h4&gt;\\r\\n            &lt;p&gt;online support 24\\/7&lt;\\/p&gt;\\r\\n            &lt;\\/li&gt;\\r\\n        &lt;\\/ul&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col-lg-3 col-md-6 col-sm-6 col-xs-12 ser-ss ses&quot;&gt;\\r\\n        &lt;ul&gt;\\r\\n            &lt;li class=&quot;ser-svg&quot;&gt;&lt;svg width=&quot;32px&quot; height=&quot;32px&quot;&gt;&lt;use xlink:href=&quot;#return&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n            &lt;li class=&quot;ser-t&quot;&gt;\\r\\n                &lt;h4&gt;Safe Shopping&lt;\\/h4&gt;\\r\\n                &lt;p&gt;Safe Shopping guarantee&lt;\\/p&gt;\\r\\n            &lt;\\/li&gt;\\r\\n        &lt;\\/ul&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;col-lg-3 col-md-6 col-sm-6 col-xs-12 ser-ss ses&quot;&gt;\\r\\n        &lt;ul&gt;\\r\\n            &lt;li class=&quot;ser-svg&quot;&gt;&lt;svg width=&quot;32px&quot; height=&quot;32px&quot;&gt;&lt;use xlink:href=&quot;#secure&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n            &lt;li class=&quot;ser-t&quot;&gt;\\r\\n            &lt;h4&gt;freeShopping&lt;\\/h4&gt;\\r\\n            &lt;p&gt;Safe Shopping guarantee&lt;\\/p&gt;\\r\\n            &lt;\\/li&gt;\\r\\n        &lt;\\/ul&gt;\\r\\n    &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;"}},"status":"1"}'),
(53, 'WB Count Down', 'ocproduct', '{"name":"WB Count Down","status":"1","option":"0","product":["42","30","47"],"cate_name":"Desktops","cate_id":"20","productfrom":"0","productcate":"","input_specific_product":"0","autoproduct":"0","countdown":"1","limit":"12","width":"300","height":"330"}'),
(50, 'First left banner', 'offerbanner', '{"name":"First left banner","banner_id":"12","width":"270","height":"400","status":"1"}'),
(54, 'left Second banner', 'banner', '{"name":"left Second banner","banner_id":"13","width":"270","height":"400","status":"1"}'),
(55, 'Left Best Product', 'onsaleproduct', '{"name":"Left Best Product","product_name":"","product":["29","35","47","28","30","34"],"limit":"5","width":"280","height":"310","status":"1"}');

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
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
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
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

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
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

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
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
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
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
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
(1, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/minva-op/', 1, 1, 'demo', 'demo', 'demo@gmail.com', '123456789', '', '', 'demo', 'demo', '', 'surat', '', 'surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', '', 'surat', '', 'surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1996.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'en-US,en;q=0.5', '2019-07-25 12:32:42', '2019-07-25 12:32:50'),
(2, 0, 'INV-2019-00', 0, 'Your Store', 'http://localhost/minva-op/', 1, 1, 'demo', 'demo', 'demo@gmail.com', '123456789', '', '', 'demo', 'demo', '', 'surat', '', 'surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', '', 'surat', '', 'surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '206.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'en-US,en;q=0.5', '2019-07-27 10:21:47', '2019-07-27 10:21:54'),
(3, 0, 'INV-2019-00', 0, 'Minva', 'http://localhost/minva-op/', 1, 1, 'demo', 'demo', 'demo@gmail.com', '123456789', '', '', 'demo', 'demo', '', 'surat', '', 'surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', '', 'surat', '', 'surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1385.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'en-US,en;q=0.5', '2019-07-27 12:51:49', '2019-07-27 12:51:55'),
(4, 0, 'INV-2019-00', 0, 'Minva', 'http://localhost/minva-op/', 1, 1, 'demo', 'demo', 'demo@gmail.com', '123456789', '', '', 'demo', 'demo', '', 'surat', '', 'surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'الدفع عند التسليم', 'cod', 'demo', 'demo', '', 'surat', '', 'surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '205.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 'en-US,en;q=0.9', '2019-07-27 14:25:08', '2019-07-27 14:25:16'),
(5, 0, 'INV-2019-00', 0, 'Minva', 'http://localhost/minva-3/', 1, 1, 'demo', 'demo', 'demo@gmail.com', '123456789', '', '', 'demo', 'demo', '', 'surat', '', 'surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', '', 'surat', '', 'surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '106.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'en-US,en;q=0.5', '2019-07-29 15:58:01', '2019-07-29 15:58:12'),
(6, 0, 'INV-2019-00', 0, 'Minva', 'http://localhost/primeshop/', 2, 1, 'demo', 'demo', 'demo@demo.com', '1234567890', '', '', 'Demo', 'Demo', '', 'varachha', '', 'Surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Cash On Delivery', 'cod', 'Demo', 'Demo', '', 'varachha', '', 'Surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '106.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'en-US,en;q=0.5', '2019-08-03 16:35:47', '2019-08-03 16:35:54'),
(7, 0, 'INV-2019-00', 0, 'Shopnia Multistore', 'http://localhost/shopnia/', 2, 1, 'demo', 'demo', 'demo@demo.com', '1234567890', '', '', 'Demo', 'Demo', '', 'varachha', '', 'Surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Cash On Delivery', 'cod', 'Demo', 'Demo', '', 'varachha', '', 'Surat', '395006', 'India', 99, 'Gujarat', 1485, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '1346.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0', 'en-US,en;q=0.5', '2019-09-05 17:18:03', '2019-09-05 17:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2019-07-25 12:32:47'),
(2, 1, 1, 0, '', '2019-07-25 12:32:50'),
(3, 2, 1, 0, '', '2019-07-27 10:21:52'),
(4, 2, 1, 0, '', '2019-07-27 10:21:54'),
(5, 3, 1, 0, '', '2019-07-27 12:51:53'),
(6, 3, 1, 0, '', '2019-07-27 12:51:55'),
(7, 4, 1, 0, '', '2019-07-27 14:25:12'),
(8, 4, 1, 0, '', '2019-07-27 14:25:16'),
(9, 4, 1, 0, '', '2019-07-27 14:25:16'),
(10, 5, 1, 0, '', '2019-07-29 15:58:05'),
(11, 5, 1, 0, '', '2019-07-29 15:58:12'),
(12, 6, 1, 0, '', '2019-08-03 16:35:51'),
(13, 6, 1, 0, '', '2019-08-03 16:35:54'),
(14, 7, 1, 0, '', '2019-09-05 17:18:34'),
(15, 7, 1, 0, '', '2019-09-05 17:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 7, 224, 13, 'Size', 'Medium', 'select'),
(2, 3, 13, 226, 15, 'Select', 'Red', 'select');

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
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '0.0000', 600),
(2, 1, 34, 'iPod Shuffle', 'Product 7', 1, '100.0000', '100.0000', '0.0000', 0),
(3, 1, 48, 'iPod Classic', 'product 20', 1, '100.0000', '100.0000', '0.0000', 0),
(4, 1, 31, 'Nikon D300', 'Product 4', 1, '80.0000', '80.0000', '0.0000', 0),
(5, 1, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(6, 1, 46, 'Sony VAIO', 'Product 19', 1, '1000.0000', '1000.0000', '0.0000', 0),
(7, 1, 35, 'Product 8', 'Product 8', 1, '110.0000', '110.0000', '0.0000', 0),
(8, 2, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(9, 2, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(10, 3, 36, 'iPod Nano', 'Product 9', 2, '100.0000', '200.0000', '0.0000', 0),
(11, 3, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(12, 3, 44, 'MacBook Air', 'Product 17', 1, '1000.0000', '1000.0000', '0.0000', 700),
(13, 3, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(14, 4, 48, 'iPod Classic', 'product 20', 2, '100.0000', '200.0000', '0.0000', 0),
(15, 5, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(16, 6, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(17, 7, 36, 'iPod Nano', 'Product 9', 2, '100.0000', '200.0000', '0.0000', 0),
(18, 7, 44, 'MacBook Air', 'Product 17', 2, '50.0000', '100.0000', '0.0000', 1400),
(19, 7, 43, 'MacBook', 'Product 16', 2, '500.0000', '1000.0000', '0.0000', 1200),
(20, 7, 32, 'iPod Touch', 'Product 5', 1, '41.0000', '41.0000', '0.0000', 0);

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
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '1991.0000', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'total', 'Total', '1996.0000', 9),
(4, 2, 'sub_total', 'Sub-Total', '201.0000', 1),
(5, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(6, 2, 'total', 'Total', '206.0000', 9),
(7, 3, 'sub_total', 'Sub-Total', '1380.0000', 1),
(8, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(9, 3, 'total', 'Total', '1385.0000', 9),
(10, 4, 'sub_total', 'الاجمالي', '200.0000', 1),
(11, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(12, 4, 'total', 'الاجمالي النهائي', '205.0000', 9),
(13, 5, 'sub_total', 'Sub-Total', '101.0000', 1),
(14, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(15, 5, 'total', 'Total', '106.0000', 9),
(16, 6, 'sub_total', 'Sub-Total', '101.0000', 1),
(17, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(18, 6, 'total', 'Total', '106.0000', 9),
(19, 7, 'sub_total', 'Sub-Total', '1341.0000', 1),
(20, 7, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(21, 7, 'total', 'Total', '1346.0000', 9);

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
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/product/1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2019-09-06 15:02:41'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/product/1.jpg', 6, 1, '90.0000', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2019-09-06 15:07:46'),
(30, 'Product 3', '', '', '', '', '', '', '', 6, 6, 'catalog/product/1.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2009-02-03 16:59:00', '2019-09-06 15:02:09'),
(31, 'Product 4', '', '', '', '', '', '', '', 999, 6, 'catalog/product/1.jpg', 9, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2019-09-06 15:07:33'),
(32, 'Product 5', '', '', '', '', '', '', '', 998, 6, 'catalog/product/1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2019-09-06 15:04:35'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/product/1.jpg', 6, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2019-09-06 15:06:12'),
(34, 'Product 7', '', '', '', '', '', '', '', 999, 6, 'catalog/product/1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 18:07:54', '2019-09-06 15:04:20'),
(35, 'Product 8', '', '', '', '', '', '', '', 999, 5, 'catalog/product/1.jpg', 9, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2019-09-06 15:05:44'),
(36, 'Product 9', '', '', '', '', '', '', '', 990, 6, 'catalog/product/1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 18:09:19', '2019-09-06 15:04:04'),
(40, 'product 11', '', '', '', '', '', '', '', 966, 5, 'catalog/product/1.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2019-09-06 15:03:18'),
(41, 'Product 14', '', '', '', '', '', '', '', 975, 5, 'catalog/product/1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2019-09-06 15:03:00'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/product/1.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 10, '2009-02-03 21:07:37', '2019-09-06 15:01:52'),
(43, 'Product 16', '', '', '', '', '', '', '', 926, 5, 'catalog/product/1.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 36, '2009-02-03 21:07:49', '2019-09-06 15:04:52'),
(44, 'Product 17', '', '', '', '', '', '', '', 997, 5, 'catalog/product/1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2019-09-06 15:05:10'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/product/1.jpg', 8, 1, '2000.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2019-09-06 15:05:26'),
(46, 'Product 19', '', '', '', '', '', '', '', 999, 5, 'catalog/product/1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2019-09-06 15:06:26'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/product/1.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, '2009-02-03 21:08:40', '2019-09-06 15:02:24'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 992, 5, 'catalog/product/1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2019-09-06 15:03:34'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/product/1.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2011-04-26 08:57:34', '2019-09-06 15:05:57');

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
(42, 3, 2, '100mhz'),
(47, 4, 1, '16GB'),
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(47, 4, 2, '16GB'),
(43, 4, 2, '8gb'),
(47, 2, 2, '4'),
(43, 2, 2, '1'),
(47, 2, 1, '4'),
(43, 2, 1, '1');

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
(48, 2, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(41, 2, 'iMac', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iMac', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iMac', '', ''),
(40, 2, 'iPhone', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iPhone', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Palm Treo Pro', '', ''),
(35, 1, 'Product 8', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Product 8', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Samsung SyncMaster 941BW', '', ''),
(46, 2, 'Sony VAIO', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Sony VAIO', '', ''),
(36, 2, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(33, 2, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 2, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 2, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 2, 'Samsung Galaxy Tab 10.1', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Samsung Galaxy Tab 10.1', '', ''),
(30, 2, 'Canon EOS 5D', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'sdf', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(28, 2, 'HTC Touch HD', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', '	 HTC Touch HD', '', ''),
(28, 1, 'HTC Touch HD', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', '	 HTC Touch HD', '', ''),
(45, 2, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 2, 'Palm Treo Pro', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Palm Treo Pro', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(32, 2, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(34, 2, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Samsung Galaxy Tab 10.1', '', ''),
(42, 1, 'Apple Cinema 30&quot;', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Apple Cinema 30', '', ''),
(30, 1, 'Canon EOS 5D', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'sdf', '', ''),
(47, 2, 'HP LP3065', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'HP LP3065', '', ''),
(42, 2, 'Apple Cinema 30&quot;', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Apple Cinema 30', '', ''),
(35, 2, 'Product 8', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Product 8', '', ''),
(47, 1, 'HP LP3065', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'HP LP3065', '', ''),
(40, 1, 'iPhone', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iPhone', '', ''),
(44, 2, 'MacBook Air', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'MacBook Air', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'MacBook Air', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Sony VAIO', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(491, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(490, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(489, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

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
(28, 1),
(28, 2),
(28, 4),
(28, 5),
(28, 6),
(31, 2),
(31, 4),
(31, 5),
(31, 6),
(42, 1),
(42, 2),
(42, 4),
(42, 5),
(42, 6),
(47, 1),
(47, 5);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2993, 42, 'catalog/product/1.jpg', 1),
(2992, 42, 'catalog/product/1.jpg', 0),
(3012, 34, 'catalog/product/1.jpg', 1),
(3011, 34, 'catalog/product/1.jpg', 0),
(2995, 30, 'catalog/product/1.jpg', 1),
(2997, 47, 'catalog/product/1.jpg', 1),
(3000, 28, 'catalog/product/1.jpg', 1),
(2999, 28, 'catalog/product/1.jpg', 1),
(3003, 41, 'catalog/product/1.jpg', 1),
(3002, 41, 'catalog/product/1.jpg', 1),
(3005, 40, 'catalog/product/1.jpg', 1),
(3007, 48, 'catalog/product/1.jpg', 1),
(3006, 48, 'catalog/product/1.jpg', 0),
(3010, 36, 'catalog/product/1.jpg', 1),
(3009, 36, 'catalog/product/1.jpg', 1),
(3008, 36, 'catalog/product/1.jpg', 0),
(3014, 32, 'catalog/product/1.jpg', 1),
(3016, 43, 'catalog/product/1.jpg', 1),
(3015, 43, 'catalog/product/1.jpg', 0),
(3019, 44, 'catalog/product/1.jpg', 1),
(3018, 44, 'catalog/product/1.jpg', 1),
(3021, 45, 'catalog/product/1.jpg', 1),
(3020, 45, 'catalog/product/1.jpg', 0),
(3030, 31, 'catalog/product/1.jpg', 0),
(3024, 35, 'catalog/product/1.jpg', 1),
(3023, 35, 'catalog/product/1.jpg', 1),
(3027, 33, 'catalog/product/1.jpg', 1),
(3029, 46, 'catalog/product/1.jpg', 1),
(3001, 41, 'catalog/product/1.jpg', 0),
(3013, 32, 'catalog/product/1.jpg', 0),
(3031, 29, 'catalog/product/1.jpg', 0),
(2994, 30, 'catalog/product/1.jpg', 0),
(2996, 47, 'catalog/product/1.jpg', 0),
(2998, 28, 'catalog/product/1.jpg', 0),
(3004, 40, 'catalog/product/1.jpg', 0),
(3017, 44, 'catalog/product/1.jpg', 0),
(3022, 35, 'catalog/product/1.jpg', 0),
(3025, 49, 'catalog/product/1.jpg', 0),
(3026, 33, 'catalog/product/1.jpg', 0),
(3028, 46, 'catalog/product/1.jpg', 0);

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
(225, 47, 12, '2011-04-22', 1),
(226, 30, 5, '', 1),
(221, 42, 9, '22:25', 1),
(208, 42, 4, 'test', 1),
(222, 42, 7, '', 1),
(217, 42, 5, '', 1),
(218, 42, 1, '', 1),
(223, 42, 2, '', 1),
(209, 42, 6, '', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(219, 42, 8, '2011-02-20', 1);

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
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 9, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+');

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
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(614, 42, 1, 100),
(616, 47, 1, 300),
(617, 28, 1, 400),
(618, 43, 1, 600),
(615, 30, 1, 200),
(619, 44, 1, 700),
(620, 45, 1, 800),
(621, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(519, 42, 1, 1, '90.0000', '2019-07-28', '2021-07-29'),
(520, 30, 1, 1, '80.0000', '2019-07-28', '2021-07-07'),
(522, 34, 1, 0, '89.0000', '2019-07-28', '2021-05-10'),
(524, 44, 1, 0, '50.0000', '0000-00-00', '0000-00-00'),
(525, 33, 1, 0, '42.0000', '2019-07-28', '2020-12-27'),
(523, 32, 1, 0, '41.0000', '2019-07-28', '2022-02-16'),
(526, 29, 1, 0, '35.0000', '0000-00-00', '0000-00-00'),
(521, 47, 1, 0, '70.0000', '2019-09-01', '2020-12-25');

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
(28, 20),
(28, 24),
(28, 26),
(28, 29),
(28, 35),
(28, 62),
(28, 63),
(28, 64),
(28, 71),
(28, 72),
(28, 76),
(29, 20),
(29, 24),
(30, 20),
(30, 33),
(31, 20),
(31, 29),
(31, 33),
(32, 20),
(32, 34),
(33, 20),
(33, 28),
(34, 20),
(34, 34),
(35, 20),
(36, 34),
(40, 20),
(40, 24),
(40, 26),
(40, 31),
(40, 35),
(40, 63),
(40, 64),
(40, 74),
(41, 20),
(41, 26),
(41, 27),
(41, 33),
(41, 35),
(41, 61),
(41, 63),
(41, 64),
(41, 65),
(41, 67),
(41, 70),
(41, 73),
(41, 76),
(41, 77),
(42, 20),
(42, 28),
(43, 18),
(43, 20),
(44, 18),
(44, 20),
(45, 18),
(46, 18),
(46, 20),
(47, 18),
(47, 20),
(48, 20),
(48, 25),
(48, 29),
(48, 33),
(48, 34),
(48, 35),
(48, 59),
(49, 57);

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
(43, 0, 0),
(40, 0, 0),
(42, 0, 0),
(34, 0, 0),
(31, 0, 0),
(33, 0, 0),
(32, 0, 0),
(29, 0, 0),
(30, 0, 0),
(47, 0, 0),
(28, 0, 0),
(41, 0, 0),
(48, 0, 0),
(36, 0, 0),
(44, 0, 0),
(45, 0, 0),
(35, 0, 0),
(49, 0, 0),
(46, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

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
  `comment` text,
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
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

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
  `language_id` int(11) NOT NULL DEFAULT '0',
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
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

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
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 42, 1, 'demo demo', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean leo nulla, viverra at felis at, tincidunt lacinia leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque non efficitur mi. Aliquam convallis mi quis nisl tristique tristique. Nunc aliquam non ex in mollis. Suspendisse in turpis venenatis, faucibus orci non, porttitor felis. Ut at convallis ex, sed imperdiet diam. Fusce vitae diam pretium, imperdiet nulla nec, ornare felis. Nullam egestas ligula in felis facilisis mollis nec vitae tortor. Phasellus rutrum urna ipsum, sed vehicula lorem scelerisque eget. Aliquam erat volutpat. Vestibulum id varius mauris, non imperdiet tortor. ', 3, 1, '2019-07-26 18:43:16', '2019-07-26 18:44:05'),
(2, 48, 0, 'winter', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean leo nulla, viverra at felis at, tincidunt lacinia leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque non efficitur mi. Aliquam convallis mi quis nisl tristique tristique. Nunc aliquam non ex in mollis. Suspendisse in turpis venenatis, faucibus orci non, porttitor felis. Ut at convallis ex, sed imperdiet diam. Fusce vitae diam pretium, imperdiet nulla nec, ornare felis. Nullam egestas ligula in felis facilisis mollis nec vitae tortor. Phasellus rutrum urna ipsum', 4, 1, '2019-07-27 12:47:15', '2019-07-27 12:49:24'),
(3, 36, 0, 'webiarch', 'metus nunc gravida mauris, sed aliquam leo eros a ex. Duis orci sapien, consequat ac mauris vitae, placerat pellentesque enim. Integer sollicitudin molestie urna ut facilisis. Mauris porttitor mauris consequat cursus scelerisque. Nunc placerat nulla a justo iaculis vestibulum. Etiam sed semper nisi. Vestibulum consectetur, massa in porttitor dignissim, mauris tortor sollicitudin lorem, sit amet pharetra neque nulla non nisi. Proin nec sapien sapien. Sed mattis erat ipsum, id pulvinar arcu tristique quis. Interdum et malesuada fames ac ante ipsum primis', 2, 1, '2019-07-27 12:47:35', '2019-07-27 12:49:19'),
(4, 44, 0, 'scelerisque eget', 'Etiam sed semper nisi. Vestibulum consectetur, massa in porttitor dignissim, mauris tortor sollicitudin lorem, sit amet pharetra neque nulla non nisi. Proin nec sapien sapien. Sed mattis erat ipsum, id pulvinar arcu tristique quis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus id rhoncus risus, aliquam dignissim mauris. Curabitur sit amet consectetur nunc. ', 3, 1, '2019-07-27 12:48:17', '2019-07-27 12:49:13'),
(5, 43, 0, 'Nunc varius sed', 'dapibus nisi sed, efficitur mauris. Donec laoreet eleifend semper. Proin non ex metus. Aenean faucibus mi quis ipsum vulputate, eu hendrerit magna egestas. In rhoncus turpis non erat malesuada interdum. Vivamus nec sem accumsan, efficitur erat non, commodo arcu. Quisque pretium tellus eget lobortis malesuada. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed aliquam enim in orci aliquet, a viverra nisi finibus. ', 5, 1, '2019-07-27 12:48:41', '2019-07-27 12:49:08'),
(6, 36, 0, 'textbanner', 'Proin vel tellus varius velit vestibulum porta ut at purus. Nullam facilisis, est vel auctor molestie, orci magna lobortis arcu, ut tempus ligula risus at ante. Ut sagittis, justo et viverra porta, magna nulla cursus quam, ut venenatis arcu risus vel orci. Nunc commodo dictum semper. Duis ultricies, diam et mollis mattis, diam nibh pellentesque turpis, sed bibendum odio diam et magna. Maecenas feugiat nec ex quis hendrerit. Proin ut aliquet justo. ', 3, 1, '2019-07-27 12:49:59', '2019-07-27 12:50:07');

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
(1053, 0, 1, 'product_id=48', 'ipod-classic'),
(1069, 0, 1, 'category_id=20', 'desktops'),
(1070, 0, 1, 'category_id=26', 'pc'),
(872, 0, 1, 'category_id=27', 'mac'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(911, 0, 1, 'information_id=4', 'about_us'),
(1047, 0, 1, 'product_id=42', 'test'),
(1071, 0, 1, 'category_id=34', 'mp3-players'),
(853, 0, 1, 'category_id=36', 'test2'),
(936, 0, 1, 'category_id=18', 'laptop-notebook'),
(775, 0, 1, 'category_id=46', 'macs'),
(776, 0, 1, 'category_id=45', 'windows'),
(1067, 0, 1, 'category_id=25', 'component'),
(867, 0, 1, 'category_id=29', 'mouse'),
(845, 0, 1, 'category_id=28', 'monitor'),
(899, 0, 1, 'category_id=35', 'test1'),
(1068, 0, 1, 'category_id=30', 'printer'),
(870, 0, 1, 'category_id=31', 'scanner'),
(869, 0, 1, 'category_id=32', 'web-camera'),
(1074, 0, 1, 'category_id=57', 'tablet'),
(1073, 0, 1, 'category_id=17', 'software'),
(1072, 0, 1, 'category_id=24', 'smartphone'),
(1066, 0, 1, 'category_id=33', 'camera'),
(1048, 0, 1, 'product_id=30', 'canon-eos-5d'),
(1049, 0, 1, 'product_id=47', 'hp-lp3065'),
(1050, 0, 1, 'product_id=28', 'htc-touch-hd'),
(1057, 0, 1, 'product_id=43', 'macbook'),
(1058, 0, 1, 'product_id=44', 'macbook-air'),
(1059, 0, 1, 'product_id=45', 'macbook-pro'),
(1064, 0, 1, 'product_id=31', 'nikon-d300'),
(1065, 0, 1, 'product_id=29', 'palm-treo-pro'),
(1060, 0, 1, 'product_id=35', 'product-8'),
(1061, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(1062, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(1063, 0, 1, 'product_id=46', 'sony-vaio'),
(1051, 0, 1, 'product_id=41', 'imac'),
(1052, 0, 1, 'product_id=40', 'iphone'),
(1054, 0, 1, 'product_id=36', 'ipod-nano'),
(1055, 0, 1, 'product_id=34', 'ipod-shuffle'),
(1056, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(912, 0, 1, 'information_id=6', 'delivery'),
(913, 0, 1, 'information_id=3', 'privacy'),
(914, 0, 1, 'information_id=5', 'terms');

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
('027f50fe79cb30992f8317ef10', '{"language":"en-gb","currency":"USD"}', '2019-08-12 07:36:01'),
('03d0ab14ccd659c977a9869099', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"P7HSHFa5RtHV5crVFPt2eoMFgojIZO80","customer_id":"2","shipping_address":{"address_id":"2","firstname":"Demo","lastname":"Demo","company":"","address_1":"varachha","address_2":"","postcode":"395006","city":"Surat","zone_id":"1485","zone":"Gujarat","zone_code":"GU","country_id":"99","country":"India","iso_code_2":"IN","iso_code_3":"IND","address_format":"","custom_field":null},"payment_address":{"address_id":"2","firstname":"Demo","lastname":"Demo","company":"","address_1":"varachha","address_2":"","postcode":"395006","city":"Surat","zone_id":"1485","zone":"Gujarat","zone_code":"GU","country_id":"99","country":"India","iso_code_2":"IN","iso_code_3":"IND","address_format":"","custom_field":null},"compare":["41"]}', '2019-08-03 12:31:43'),
('10f46108dac6754d788cbd689b', '{"user_id":"1","user_token":"K3phHftPWY4o4dotbrhGygAtcfChmgAZ","language":"en-gb","currency":"USD","redirect":"http:\\/\\/localhost\\/shopnia\\/index.php?route=information\\/blogger&amp;blogger_id=4","compare":[]}', '2019-09-06 10:05:57'),
('139e943fc0ca26faa02c48dc74', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"PEYZbVknlBfMO0hCgXbQDyYZSpzuHzFE","compare":["41"]}', '2019-07-30 07:54:07'),
('167ed0c2cf1131f9328364c1aa', '{"language":"en-gb","currency":"USD"}', '2019-08-14 06:20:28'),
('1cc56859dab8ea1eda46f6bd79', '{"language":"en-gb","currency":"USD"}', '2019-07-29 07:50:41'),
('33ae4d7a1eacd57ee08cd5f097', '{"user_id":"1","user_token":"ogpMLEDzJlSo9xlMtyN7QyFz7SYvr60i","language":"en-gb","currency":"USD"}', '2019-09-03 12:42:07'),
('40a91cae0c1956741f57fc1475', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"2CB9jID6etv4xs2uwy1b3ltVoocfroEN"}', '2019-08-05 12:43:17'),
('47c8ef0346d64e7a3464eedb29', '{"user_id":"1","user_token":"y3AR8xoZ5MNthdvAQbdwyd7hyiiulmgU","language":"en-gb","currency":"USD"}', '2019-07-30 12:57:26'),
('4a28cacad140075b0b526a4a98', '{"language":"ar","currency":"USD"}', '2019-08-07 09:32:03'),
('5356246228f1ccd22385a5e5c4', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"MAye4GEh6j9QdTLyp7yqGSlLLtlXATVH"}', '2019-08-05 11:06:13'),
('544e7f1a7788e7024ce67864a5', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"V6zECkdi3jD2X5c5m3gwa3Dm13v0rnEc"}', '2019-08-07 13:36:48'),
('54a840c8bd6e3e98f835cffca0', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"CYf414kPq1Vl9zvyMIMHGoAmMR1atZOk"}', '2019-07-31 07:56:57'),
('583c832eb16d1ca06cd383e987', '{"language":"en-gb","currency":"USD"}', '2019-07-26 09:42:50'),
('6a5ac6ccaa4f67a319dcef3d08', '{"language":"en-gb","currency":"USD"}', '2019-09-03 13:54:06'),
('778011cb5850a24ea86e9dcabf', '{"language":"en-gb","currency":"USD"}', '2019-08-10 07:31:25'),
('779f8cd240e621a906d0ef413a', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"3gohImD2d96hJLyP5CCXl99gnHLrtYYj"}', '2019-07-31 10:41:44'),
('7ae11e5f9e54a46a38520fe00d', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"A0ITrjM7OFPyagCzjncsW6GDrQmYgugp"}', '2019-08-07 07:57:18'),
('7d1fd28960ff5d452c2af501ab', 'false', '2019-09-04 11:52:41'),
('814b58d0590bcd5b8227445428', '{"language":"en-gb","currency":"USD"}', '2019-09-06 06:38:45'),
('832df597622b729b2336d6dd35', 'false', '2019-09-02 12:39:16'),
('8634bd96b45dd52cd6aceccd9e', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"tMEH0kxkVoaaTgTacYEj3C67tr5xOjsu","customer_id":"2","shipping_address":false,"compare":["41","36","30"]}', '2019-08-19 10:28:38'),
('865ce5f537a9efc141e1657a82', '{"language":"en-gb","currency":"USD"}', '2019-07-29 07:54:49'),
('899e62f37ad62d9c76087a611f', '{"user_id":"1","user_token":"KBpx6DgsAxnofFbmgnXGUI9UHRZF0J9k","language":"en-gb","currency":"USD"}', '2019-08-31 12:59:26'),
('89b8931392a7b3812dc08462df', '{"language":"ar","currency":"USD","wishlist":["42"],"compare":["30"],"redirect":"http:\\/\\/localhost\\/primeshop-1\\/index.php?route=information\\/blogger&amp;blogger_id=4"}', '2019-08-07 06:33:11'),
('8d27a89e902fd3a799994c0a18', '{"language":"en-gb","currency":"USD"}', '2019-07-27 09:27:26'),
('8e1ed1ed9005c43e3c925801cf', '{"language":"en-gb","currency":"USD"}', '2019-08-08 10:06:50'),
('8ed1ea5ba38fd1a3f321721dc3', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"CdSKeqc4mHf2r49nGPa255VGWIRqNrTN","customer_id":"2","shipping_address":false}', '2019-08-23 05:39:37'),
('8f54d2904d4bf079257aeccedc', 'false', '2019-09-03 13:06:26'),
('96b4131d2ae7a2cb2ddc616a59', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"v3se2tPFWtXO9xQMuKPMcf2psO4nup5C"}', '2019-07-31 06:32:56'),
('97c048b891282995da7058c782', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"VXnbgBwJZ85S5V0Wtlfjj9WObQBGNlsI"}', '2019-08-31 14:04:10'),
('980f1ae6a490d14ba8e641500e', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"yTzNcm3rbgFxWDwnwmhnXpzBmMlkLr5p"}', '2019-09-04 13:38:22'),
('9af5709e2a7ced4a060a92d489', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"uRyDUdhKygArQfcdA00pjvM3cb3u1gdm"}', '2019-09-02 12:14:52'),
('9b6647ac70a960d11d319c47a9', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"27GhvIOICNX9ycJWE5X8I62fEIPKoKDq"}', '2019-08-17 13:49:43'),
('9f4de206a2ad92a99e7f8d2b54', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"BtlAg6Uwtg3l7Y8ZHPrO2mJ3De5d64zy"}', '2019-07-30 10:49:52'),
('a4f89d3e6b661930dee6b4d90e', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"2aRoGERkxlYJBkAQUGVF5iuu4Z4bjsVn"}', '2019-09-04 07:17:12'),
('ac18677e9c0fcefce9bc3f67c2', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"dhGucNT3BnvF4mKEXeCVQnnXlZZpjLqt"}', '2019-08-03 13:56:50'),
('af21c2035268c86fd09fb5cbda', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"7delN3aN61t06XhCET1QfkaMWsPGvff5","success":"Success: You have modified HTML Content module!"}', '2019-08-03 07:54:43'),
('b071bdc1a7aeb83dedb513ef1e', '{"language":"en-gb","currency":"USD","compare":["44","29","28"],"wishlist":["28"],"customer_id":"3"}', '2019-08-22 06:58:56'),
('b3e282d2ee7677fec9ba383e2d', '{"language":"en-gb","currency":"USD"}', '2019-08-12 10:38:07'),
('b5a25bd8e0d0d5e0ced7183ea8', '{"language":"en-gb","currency":"USD"}', '2019-08-08 13:08:58'),
('b924b425ca157079ec75d407e1', '{"language":"en-gb","currency":"USD"}', '2019-07-31 11:45:00'),
('be048892319f95904a46a39362', '{"language":"ar","currency":"USD","user_id":"1","user_token":"BdgyelIfmVznelzoMX9lOeyuPjryYDcR"}', '2019-09-04 11:39:21'),
('c3223fd3163f8ec76f2c1a225b', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"da50zEPHfrqFD5PAaOugzZ3YCSkvB6hW","redirect":"http:\\/\\/localhost\\/primeshop\\/index.php?route=information\\/blogger&amp;blogger_id=5"}', '2019-08-02 07:53:30'),
('c3a29077a6abe6b6de1023fbae', '{"language":"en-gb","currency":"USD"}', '2019-08-09 05:46:11'),
('c93c8992cd709166030b26b515', '{"language":"en-gb","currency":"USD"}', '2019-08-08 07:36:23'),
('cbc36ec3e40a5697253b48b374', '{"user_id":"1","user_token":"tXnjeK38W2FbbQevsEb3taJV0nnNaHnT","language":"en-gb","currency":"USD"}', '2019-08-20 13:45:14'),
('d4762c5e3d9e081d41c16b2134', '{"language":"en-gb","currency":"USD"}', '2019-07-27 07:38:48'),
('d72851b00bf5348fd6d7d0fd2b', 'false', '2019-07-30 12:44:29'),
('d84c16c0db95c41ab818d2ddfb', 'false', '2019-07-30 13:10:48'),
('de1a0b16cab768856b0504b641', 'false', '2019-07-30 12:44:29'),
('e84646cb08a61e3a5edea98809', '{"language":"ar","currency":"USD","compare":["49"]}', '2019-08-03 12:30:29'),
('e9f22204d5df86f7265a070ac5', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"LZKZB1Xqd4Y4bE2uTuQShf25QaXmIh4T","customer_id":"2","shipping_address":false}', '2019-08-22 13:58:29'),
('eb491ec6f0c78af9d40ec77c5e', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"TmLhcVri7KDq6ayJoJ8iTaggOYOBbrt1"}', '2019-08-05 07:56:07'),
('eb8190d7f2ef235743047c8f59', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"fSLxX0tmH9rhjg44K4mt79MJUPjxxAnP","account":"register","install":"KzRRVSIGf2","compare":["33","42","41","34"],"wishlist":[],"customer_id":"1","shipping_address":{"address_id":"1","firstname":"demo","lastname":"demo","company":"","address_1":"surat","address_2":"","postcode":"395006","city":"surat","zone_id":"1485","zone":"Gujarat","zone_code":"GU","country_id":"99","country":"India","iso_code_2":"IN","iso_code_3":"IND","address_format":"","custom_field":null},"payment_address":{"address_id":"1","firstname":"demo","lastname":"demo","company":"","address_1":"surat","address_2":"","postcode":"395006","city":"surat","zone_id":"1485","zone":"Gujarat","zone_code":"GU","country_id":"99","country":"India","iso_code_2":"IN","iso_code_3":"IND","address_format":"","custom_field":null},"vouchers":[]}', '2019-07-29 12:43:56'),
('ebf26312335bf74318958cc30a', 'false', '2019-07-30 13:10:48'),
('ec02b0b692dc71111c6db3cae6', '{"user_id":"1","user_token":"IU3xbwDGQqFH4lTIuy99JZyeRRCsw8qd","language":"en-gb","currency":"USD"}', '2019-08-16 13:49:44'),
('ecadccf3e782bd8c5e5a26df10', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"PqRvYpcufCwdxeMC9v1zbzjGN7WEZdKe","customer_id":"2","shipping_address":{"address_id":"2","firstname":"Demo","lastname":"Demo","company":"","address_1":"varachha","address_2":"","postcode":"395006","city":"Surat","zone_id":"1485","zone":"Gujarat","zone_code":"GU","country_id":"99","country":"India","iso_code_2":"IN","iso_code_3":"IND","address_format":"","custom_field":null},"payment_address":{"address_id":"2","firstname":"Demo","lastname":"Demo","company":"","address_1":"varachha","address_2":"","postcode":"395006","city":"Surat","zone_id":"1485","zone":"Gujarat","zone_code":"GU","country_id":"99","country":"India","iso_code_2":"IN","iso_code_3":"IND","address_format":"","custom_field":null}}', '2019-09-05 14:09:37'),
('ee0728666b63212592210c1e18', '{"language":"en-gb","currency":"USD"}', '2019-08-06 11:01:57'),
('f3538dff071db500dc59ca2aff', 'false', '2019-09-03 13:06:26'),
('f622decf613ec410b7537328b6', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"bkj2e4OyDMwgOBt4bN2NsJjWoUN56fAK","compare":["42"]}', '2019-08-21 14:12:36'),
('fbc4ff100f42ba785cd147d1bd', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"Bg3ckNxG8mS3e3UN5R8P6AJfx8j4aLhB"}', '2019-09-02 13:01:34'),
('fc085eeb094234efa006d18339', '{"language":"en-gb","currency":"USD","compare":["41","29"],"redirect":"http:\\/\\/localhost\\/minva-op\\/index.php?route=information\\/blogger&amp;blogger_id=2"}', '2019-07-27 09:22:19'),
('fc976e2e6ff623e8df7c097bf0', '{"language":"en-gb","currency":"USD","user_id":"1","user_token":"DmOUFJoZlx7ymoSeNjoOWFwUhzi2tIiF","customer_id":"2","shipping_address":false}', '2019-09-02 11:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
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
(1778, 0, 'config', 'config_file_max_size', '300000', 0),
(1779, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1780, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1777, 0, 'config', 'config_encryption', 'aSawUxBhhtUt4MQoI4AqbZdXT8rBPZ6xfODK1VPL9LfD5fgiDVf9Ox5BfX5k9djIYDdGw2ZcfD3LQqao1v5b28J7OWnYyIFM8kUkxEkL7jihtnTXHUiVro8vcxAkL1O9DCqqNt5GKPKwjcmMeSUb2rE4Y5cYSW0MObT03pJljRPkEWRzJV0dqdvmLTb2lQ2TUOb7B4MgEP4eZW7t77axTiIRGSBi8KxYDUKeVoKWwQL7m5aWhyyFcsO0AKtOXnkxuqBjETTPj01fOX8hj3bgrhcUmY0evU88gF2X7C1kuzF3qIhYaWgfzVtwuRkhpflgqpy2LP5ie8qI5P11Ae9dOasX6R9lJvbDLB6heJ9nHuidanLPciD4ejC9tBBynzDaTCKKCWY7WAVMJXKUTkKaE4aQbqYEG6uTHOCFFkcj4Im87N88D5E0lAkmsIIatakahiX2od3pvO6mLeCQaGvYWR7exXfgOAYEmghQ0YVLyBkagCXyJR5CVlJOUiDozf440CNlytxa8lxL4Q6zCfkwz5ZpzNZZoWdbez15eCctc2XzZS5wMFCUrR8fmlPaikdNJSIrnEs2ETlaMTvDOR1AiOV0AIiEchd4fHhIrCav88RniMJ6qKslVtxdvOCqRHIj3HEpFYZ6oM7aq2N0yQsXQtEP84LSf3aPdT9BWhxaIoGD3cVy2FRjDzTF4v5rRDl9UgiAic1gliIPlKQjn4FHqCS29NlAMuGw3A4L1nOWULaWNY2XEc8qFZJfOyIM9e02CBcQ2elh1Ua6RUhaywD2bJivlNO8L5ItAZxCbhuiFfLydwwog8PTkQgQsqG0ZmRCt71lpR4y3Jrz5zfRydzTZv2T5qeXjcA32RXpRoQd1L8jnzGO1NPSneLADQVRZ2Sfeq4Oj7etScmV99uCZNjS4iSXRH8coXWQ42khvklvnVijkX6TYKNqydcFhLVPIgGoYuAjXIq9BtiN0JhGD3Nr0IsbZ8urSOETSl9DZtijxrvOQM04DLnGSgBmENjxWfN9', 0),
(1773, 0, 'config', 'config_compression', '0', 0),
(1774, 0, 'config', 'config_secure', '0', 0),
(1775, 0, 'config', 'config_password', '1', 0),
(1776, 0, 'config', 'config_shared', '0', 0),
(1771, 0, 'config', 'config_seo_url', '0', 0),
(1772, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1770, 0, 'config', 'config_maintenance', '0', 0),
(1769, 0, 'config', 'config_mail_alert_email', '', 0),
(1768, 0, 'config', 'config_mail_alert', '["order"]', 1),
(1767, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
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
(1765, 0, 'config', 'config_mail_smtp_password', '', 0),
(1829, 0, 'theme_default', 'theme_default_image_cart_height', '110', 0),
(1830, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(1831, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(1828, 0, 'theme_default', 'theme_default_image_cart_width', '100', 0),
(1827, 0, 'theme_default', 'theme_default_image_wishlist_height', '110', 0),
(1826, 0, 'theme_default', 'theme_default_image_wishlist_width', '100', 0),
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
(1766, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1763, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(206, 0, 'developer', 'developer_theme', '0', 0),
(1764, 0, 'config', 'config_mail_smtp_username', '', 0),
(1762, 0, 'config', 'config_mail_parameter', '', 0),
(1761, 0, 'config', 'config_mail_engine', 'mail', 0),
(294, 0, 'module_categorynew', 'module_categorynew_status', '1', 0),
(1825, 0, 'theme_default', 'theme_default_image_compare_height', '110', 0),
(463, 0, 'module_filter', 'module_filter_status', '1', 0),
(1760, 0, 'config', 'config_icon', 'catalog/favicon.png', 0),
(1824, 0, 'theme_default', 'theme_default_image_compare_width', '100', 0),
(1823, 0, 'theme_default', 'theme_default_image_related_height', '310', 0),
(1822, 0, 'theme_default', 'theme_default_image_related_width', '282', 0),
(1759, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(1758, 0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
(1757, 0, 'config', 'config_captcha', '', 0),
(1756, 0, 'config', 'config_return_status_id', '2', 0),
(1755, 0, 'config', 'config_return_id', '0', 0),
(1754, 0, 'config', 'config_affiliate_id', '4', 0),
(1752, 0, 'config', 'config_affiliate_auto', '0', 0),
(1753, 0, 'config', 'config_affiliate_commission', '5', 0),
(1751, 0, 'config', 'config_affiliate_approval', '0', 0),
(1750, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1749, 0, 'config', 'config_stock_checkout', '0', 0),
(1748, 0, 'config', 'config_stock_warning', '0', 0),
(1747, 0, 'config', 'config_stock_display', '0', 0),
(1746, 0, 'config', 'config_api_id', '7', 0),
(1745, 0, 'config', 'config_fraud_status_id', '7', 0),
(1820, 0, 'theme_default', 'theme_default_image_additional_width', '100', 0),
(1744, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(1821, 0, 'theme_default', 'theme_default_image_additional_height', '110', 0),
(1819, 0, 'theme_default', 'theme_default_image_product_height', '310', 0),
(1817, 0, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(1818, 0, 'theme_default', 'theme_default_image_product_width', '282', 0),
(1816, 0, 'theme_default', 'theme_default_image_popup_width', '728', 0),
(1743, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(1742, 0, 'config', 'config_order_status_id', '1', 0),
(1741, 0, 'config', 'config_checkout_id', '5', 0),
(1740, 0, 'config', 'config_checkout_guest', '1', 0),
(1739, 0, 'config', 'config_cart_weight', '1', 0),
(1738, 0, 'config', 'config_invoice_prefix', 'INV-2019-00', 0),
(1737, 0, 'config', 'config_account_id', '3', 0),
(1736, 0, 'config', 'config_login_attempts', '5', 0),
(1735, 0, 'config', 'config_customer_price', '0', 0),
(1815, 0, 'theme_default', 'theme_default_image_thumb_height', '581', 0),
(1814, 0, 'theme_default', 'theme_default_image_thumb_width', '531', 0),
(1813, 0, 'theme_default', 'theme_default_image_category_height', '250', 0),
(1734, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(1733, 0, 'config', 'config_customer_group_id', '1', 0),
(1732, 0, 'config', 'config_customer_search', '0', 0),
(1731, 0, 'config', 'config_customer_activity', '0', 0),
(1730, 0, 'config', 'config_customer_online', '0', 0),
(1729, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1728, 0, 'config', 'config_tax_default', 'shipping', 0),
(1727, 0, 'config', 'config_tax', '1', 0),
(1726, 0, 'config', 'config_voucher_max', '1000', 0),
(1725, 0, 'config', 'config_voucher_min', '1', 0),
(1724, 0, 'config', 'config_review_guest', '1', 0),
(1722, 0, 'config', 'config_limit_admin', '20', 0),
(1723, 0, 'config', 'config_review_status', '1', 0),
(1719, 0, 'config', 'config_length_class_id', '1', 0),
(1720, 0, 'config', 'config_weight_class_id', '1', 0),
(1721, 0, 'config', 'config_product_count', '1', 0),
(1718, 0, 'config', 'config_currency_auto', '1', 0),
(1717, 0, 'config', 'config_currency', 'USD', 0),
(1715, 0, 'config', 'config_language', 'en-gb', 0),
(1716, 0, 'config', 'config_admin_language', 'en-gb', 0),
(1714, 0, 'config', 'config_zone_id', '3563', 0),
(1713, 0, 'config', 'config_country_id', '222', 0),
(1712, 0, 'config', 'config_comment', '', 0),
(1812, 0, 'theme_default', 'theme_default_image_category_width', '200', 0),
(1811, 0, 'theme_default', 'theme_default_product_description_length', '230', 0),
(1810, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(1809, 0, 'theme_default', 'theme_default_status', '1', 0),
(1711, 0, 'config', 'config_open', ' 9:00 AM To 6:00 PM', 0),
(1708, 0, 'config', 'config_telephone', '(+800) 856 800 604 ', 0),
(1709, 0, 'config', 'config_fax', '2306 2560 58', 0),
(1710, 0, 'config', 'config_image', 'catalog/logo.png', 0),
(1700, 0, 'config', 'config_meta_keyword', '', 0),
(1701, 0, 'config', 'config_theme', 'default', 0),
(1702, 0, 'config', 'config_layout_id', '4', 0),
(1703, 0, 'config', 'config_name', 'Shopnia Multistore', 0),
(1704, 0, 'config', 'config_owner', 'Shopnia Multistore', 0),
(1705, 0, 'config', 'config_address', '403, Amora Arcade,\r\nNear Mauni International School, Uttran\r\nSurat - 394105', 0),
(1706, 0, 'config', 'config_geocode', '', 0),
(1707, 0, 'config', 'config_email', 'demo@gmail.com', 0),
(1699, 0, 'config', 'config_meta_description', 'Shopnia Multistore', 0),
(1698, 0, 'config', 'config_meta_title', 'Shopnia Multistore', 0),
(1781, 0, 'config', 'config_error_display', '1', 0),
(1782, 0, 'config', 'config_error_log', '1', 0),
(1783, 0, 'config', 'config_error_filename', 'error.log', 0),
(1808, 0, 'theme_default', 'theme_default_directory', 'default', 0);

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
(1, 'order_sale', '10905.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '6.0000');

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
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

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

-- --------------------------------------------------------

--
-- Table structure for table `oc_subscribe`
--

CREATE TABLE `oc_subscribe` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_id` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `date` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_subscribe`
--

INSERT INTO `oc_subscribe` (`id`, `email_id`, `name`, `date`) VALUES
(1, 'demo@gmail.com', 'demo@gmail.com', '2019-07-27'),
(2, 'demo1@gmail.com', 'demo1@gmail.com', '2019-07-27');

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
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
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
  `priority` int(5) NOT NULL DEFAULT '1'
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

--
-- Dumping data for table `oc_theme`
--

INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(162, 0, 'default', 'common/header', '&lt;!DOCTYPE html&gt;\n&lt;!--[if IE]&gt;&lt;![endif]--&gt;\n&lt;!--[if IE 8 ]&gt;&lt;html dir=&quot;{{ direction }}&quot; lang=&quot;{{ lang }}&quot; class=&quot;ie8&quot;&gt;&lt;![endif]--&gt;\n&lt;!--[if IE 9 ]&gt;&lt;html dir=&quot;{{ direction }}&quot; lang=&quot;{{ lang }}&quot; class=&quot;ie9&quot;&gt;&lt;![endif]--&gt;\n&lt;!--[if (gt IE 9)|!(IE)]&gt;&lt;!--&gt;\n&lt;html dir=&quot;{{ direction }}&quot; lang=&quot;{{ lang }}&quot;&gt;\n&lt;!--&lt;![endif]--&gt;\n&lt;head&gt;\n&lt;meta charset=&quot;UTF-8&quot; /&gt;\n&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1&quot;&gt;\n&lt;meta http-equiv=&quot;X-UA-Compatible&quot; content=&quot;IE=edge&quot;&gt;\n&lt;title&gt;{{ title }}&lt;/title&gt;\n&lt;base href=&quot;{{ base }}&quot; /&gt;\n{% if description %}\n&lt;meta name=&quot;description&quot; content=&quot;{{ description }}&quot; /&gt;\n{% endif %}\n{% if keywords %}\n&lt;meta name=&quot;keywords&quot; content=&quot;{{ keywords }}&quot; /&gt;\n{% endif %}\n&lt;script src=&quot;catalog/view/javascript/jquery/jquery-2.1.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n&lt;link href=&quot;catalog/view/javascript/bootstrap/css/bootstrap.min.css&quot; rel=&quot;stylesheet&quot; media=&quot;screen&quot; /&gt;\n&lt;script src=&quot;catalog/view/javascript/bootstrap/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n\n&lt;script src=&quot;catalog/view/javascript/webiarch/product-slider-zoom/jquery.elevatezoom.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n\n&lt;script src=&quot;catalog/view/javascript/jquery/swiper/js/owl.carousel.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n\n&lt;link href=&quot;catalog/view/javascript/jquery/swiper/css/owl.carousel.css&quot; rel=&quot;stylesheet&quot;&gt;\n&lt;link href=&quot;catalog/view/javascript/jquery/swiper/css/owl.theme.css&quot; rel=&quot;stylesheet&quot;&gt;\n\n&lt;script src=&quot;catalog/view/javascript/jquery/swiper/js/slick.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n&lt;link href=&quot;catalog/view/javascript/jquery/swiper/css/slick.css&quot; rel=&quot;stylesheet&quot;&gt;\n&lt;link href=&quot;catalog/view/javascript/jquery/swiper/css/slick-theme.css&quot; rel=&quot;stylesheet&quot;&gt;\n\n&lt;link href=&quot;catalog/view/javascript/font-awesome/css/font-awesome.min.css&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot; /&gt;\n&lt;link href=&quot;https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&amp;display=swap&quot; rel=&quot;stylesheet&quot;&gt; \n&lt;link href=&quot;catalog/view/theme/default/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\n\n\n\n {# anmated #}\n       &lt;script src=&quot;catalog/view/javascript/webiarch/animate.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n       &lt;link href=&quot;catalog/view/javascript/webiarch/animate.css&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot; /&gt;\n\n &lt;!-- blog image zoom --&gt;\n       &lt;script src=&quot;catalog/view/javascript/webiarch/blog/lightbox-2.6.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n       &lt;link href=&quot;catalog/view/javascript/webiarch/blog/lightbox.css&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot; /&gt;\n &lt;!-- blog image zoom --&gt;\n   &lt;!--right to left (RTL)--&gt;\n        {% if direction==\'rtl\' %} &lt;link href=&quot;catalog/view/theme/default/stylesheet/rtl.css&quot; rel=&quot;stylesheet&quot;&gt; {% endif %}\n &lt;!--over RTL--&gt;\n &lt;script src=&quot;catalog/view/javascript/webiarch/countdown/jquery.plugin.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n    &lt;script src=&quot;catalog/view/javascript/webiarch/countdown/jquery.countdown.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n    \n  &lt;script src=&quot;catalog/view/javascript/webiarch/custom.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n{% for style in styles %}\n&lt;link href=&quot;{{ style.href }}&quot; type=&quot;text/css&quot; rel=&quot;{{ style.rel }}&quot; media=&quot;{{ style.media }}&quot; /&gt;\n{% endfor %}\n{% for script in scripts %}\n&lt;script src=&quot;{{ script }}&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n{% endfor %}\n&lt;script src=&quot;catalog/view/javascript/common.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n{% for link in links %}\n&lt;link href=&quot;{{ link.href }}&quot; rel=&quot;{{ link.rel }}&quot; /&gt;\n{% endfor %}\n{% for analytic in analytics %}\n{{ analytic }}\n{% endfor %}\n&lt;/head&gt;\n&lt;svg style=&quot;display: none;&quot;&gt;\n  &lt;symbol id=&quot;hsearch&quot; viewBox=&quot;0 0 512 512&quot;&gt;\n      &lt;path d=&quot;M495,466.2L377.2,348.4c29.2-35.6,46.8-81.2,46.8-130.9C424,103.5,331.5,11,217.5,11C103.4,11,11,103.5,11,217.5   S103.4,424,217.5,424c49.7,0,95.2-17.5,130.8-46.7L466.1,495c8,8,20.9,8,28.9,0C503,487.1,503,474.1,495,466.2z M217.5,382.9   C126.2,382.9,52,308.7,52,217.5S126.2,52,217.5,52C308.7,52,383,126.3,383,217.5S308.7,382.9,217.5,382.9z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n\n   &lt;symbol viewBox=&quot;0 0 32.667 32.667&quot; id=&quot;hcall&quot;&gt;\n    &lt;path d=&quot;M16.333,0C7.327,0,0,7.327,0,16.334c0,9.006,7.326,16.333,16.333,16.333c0.557,0,1.007-0.451,1.007-1.006\n    c0-0.556-0.45-1.007-1.007-1.007c-7.896,0-14.318-6.424-14.318-14.319c0-7.896,6.422-14.32,14.318-14.32\n    c7.896,0,14.317,6.424,14.317,14.32c0,3.299-1.756,6.571-4.269,7.955c-0.913,0.502-1.903,0.751-2.959,0.761\n    c0.634-0.378,1.183-0.887,1.591-1.531c0.08-0.121,0.186-0.226,0.238-0.359c0.328-0.789,0.357-1.684,0.555-2.516\n    c0.243-1.066-4.658-3.143-5.084-1.815c-0.154,0.493-0.39,2.048-0.699,2.458c-0.275,0.365-0.953,0.193-1.377-0.168\n    c-1.117-0.952-2.364-2.352-3.458-3.457l0.002-0.001c-0.028-0.029-0.062-0.062-0.092-0.091c-0.031-0.03-0.062-0.062-0.093-0.092l0,0\n    c-1.106-1.093-2.506-2.338-3.457-3.458c-0.36-0.424-0.534-1.1-0.168-1.376c0.41-0.31,1.966-0.543,2.458-0.698\n    c1.326-0.425-0.75-5.329-1.816-5.084c-0.832,0.195-1.727,0.225-2.516,0.552c-0.134,0.056-0.238,0.16-0.359,0.24\n    c-2.799,1.775-3.16,6.083-0.428,9.292c1.041,1.228,2.127,2.416,3.245,3.576l-0.006,0.004c0.031,0.031,0.063,0.06,0.095,0.09\n    c0.03,0.031,0.059,0.062,0.088,0.095l0.006-0.006c1.16,1.118,2.535,2.764,4.769,4.255c4.703,3.141,8.312,2.264,10.438,1.098\n    c3.67-2.021,5.312-6.338,5.312-9.719C32.667,7.327,25.339,0,16.333,0z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 483.3 483.3&quot; id=&quot;hmail&quot;&gt;\n    &lt;path d=&quot;M424.3,57.75H59.1c-32.6,0-59.1,26.5-59.1,59.1v249.6c0,32.6,26.5,59.1,59.1,59.1h365.1c32.6,0,59.1-26.5,59.1-59.1\n      v-249.5C483.4,84.35,456.9,57.75,424.3,57.75z M456.4,366.45c0,17.7-14.4,32.1-32.1,32.1H59.1c-17.7,0-32.1-14.4-32.1-32.1v-249.5\n      c0-17.7,14.4-32.1,32.1-32.1h365.1c17.7,0,32.1,14.4,32.1,32.1v249.5H456.4z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M304.8,238.55l118.2-106c5.5-5,6-13.5,1-19.1c-5-5.5-13.5-6-19.1-1l-163,146.3l-31.8-28.4c-0.1-0.1-0.2-0.2-0.2-0.3\n      c-0.7-0.7-1.4-1.3-2.2-1.9L78.3,112.35c-5.6-5-14.1-4.5-19.1,1.1c-5,5.6-4.5,14.1,1.1,19.1l119.6,106.9L60.8,350.95\n      c-5.4,5.1-5.7,13.6-0.6,19.1c2.7,2.8,6.3,4.3,9.9,4.3c3.3,0,6.6-1.2,9.2-3.6l120.9-113.1l32.8,29.3c2.6,2.3,5.8,3.4,9,3.4\n      c3.2,0,6.5-1.2,9-3.5l33.7-30.2l120.2,114.2c2.6,2.5,6,3.7,9.3,3.7c3.6,0,7.1-1.4,9.8-4.2c5.1-5.4,4.9-14-0.5-19.1L304.8,238.55z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n\n &lt;symbol viewBox=&quot;-42 0 512 512.001&quot; id=&quot;huser&quot;&gt;\n    &lt;path d=&quot;m210.351562 246.632812c33.882813 0 63.21875-12.152343 87.195313-36.128906 23.96875-23.972656 36.125-53.304687 36.125-87.191406 0-33.875-12.152344-63.210938-36.128906-87.191406-23.976563-23.96875-53.3125-36.121094-87.191407-36.121094-33.886718 0-63.21875 12.152344-87.191406 36.125s-36.128906 53.308594-36.128906 87.1875c0 33.886719 12.15625 63.222656 36.128906 87.195312 23.980469 23.96875 53.316406 36.125 87.191406 36.125zm-65.972656-189.292968c18.394532-18.394532 39.972656-27.335938 65.972656-27.335938 25.996094 0 47.578126 8.941406 65.976563 27.335938 18.394531 18.398437 27.339844 39.980468 27.339844 65.972656 0 26-8.945313 47.578125-27.339844 65.976562-18.398437 18.398438-39.980469 27.339844-65.976563 27.339844-25.992187 0-47.570312-8.945312-65.972656-27.339844-18.398437-18.394531-27.34375-39.976562-27.34375-65.976562 0-25.992188 8.945313-47.574219 27.34375-65.972656zm0 0&quot;&gt;&lt;/path&gt;&lt;path d=&quot;m426.128906 393.703125c-.691406-9.976563-2.089844-20.859375-4.148437-32.351563-2.078125-11.578124-4.753907-22.523437-7.957031-32.527343-3.3125-10.339844-7.808594-20.550781-13.375-30.335938-5.769532-10.15625-12.550782-19-20.160157-26.277343-7.957031-7.613282-17.699219-13.734376-28.964843-18.199219-11.226563-4.441407-23.667969-6.691407-36.976563-6.691407-5.226563 0-10.28125 2.144532-20.042969 8.5-6.007812 3.917969-13.035156 8.449219-20.878906 13.460938-6.707031 4.273438-15.792969 8.277344-27.015625 11.902344-10.949219 3.542968-22.066406 5.339844-33.042969 5.339844-10.96875 0-22.085937-1.796876-33.042968-5.339844-11.210938-3.621094-20.300782-7.625-26.996094-11.898438-7.769532-4.964844-14.800782-9.496094-20.898438-13.46875-9.753906-6.355468-14.808594-8.5-20.035156-8.5-13.3125 0-25.75 2.253906-36.972656 6.699219-11.257813 4.457031-21.003906 10.578125-28.96875 18.199219-7.609375 7.28125-14.390625 16.121094-20.15625 26.273437-5.558594 9.785157-10.058594 19.992188-13.371094 30.339844-3.199219 10.003906-5.875 20.945313-7.953125 32.523437-2.0625 11.476563-3.457031 22.363282-4.148437 32.363282-.679688 9.777344-1.023438 19.953125-1.023438 30.234375 0 26.726562 8.496094 48.363281 25.25 64.320312 16.546875 15.746094 38.4375 23.730469 65.066406 23.730469h246.53125c26.621094 0 48.511719-7.984375 65.0625-23.730469 16.757813-15.945312 25.253906-37.589843 25.253906-64.324219-.003906-10.316406-.351562-20.492187-1.035156-30.242187zm-44.90625 72.828125c-10.933594 10.40625-25.449218 15.464844-44.378906 15.464844h-246.527344c-18.933594 0-33.449218-5.058594-44.378906-15.460938-10.722656-10.207031-15.933594-24.140625-15.933594-42.585937 0-9.59375.316406-19.066407.949219-28.160157.617187-8.921874 1.878906-18.722656 3.75-29.136718 1.847656-10.285156 4.199219-19.9375 6.996094-28.675782 2.683593-8.378906 6.34375-16.675781 10.882812-24.667968 4.332031-7.617188 9.316407-14.152344 14.816407-19.417969 5.144531-4.925781 11.628906-8.957031 19.269531-11.980469 7.066406-2.796875 15.007812-4.328125 23.628906-4.558594 1.050781.558594 2.921875 1.625 5.953125 3.601563 6.167969 4.019531 13.277344 8.605469 21.136719 13.625 8.859375 5.648437 20.273437 10.75 33.910156 15.152344 13.941406 4.507812 28.160156 6.796875 42.273437 6.796875 14.113282 0 28.335938-2.289063 42.269532-6.792969 13.648437-4.410156 25.058594-9.507813 33.929687-15.164063 8.042969-5.140624 14.953125-9.59375 21.121094-13.617187 3.03125-1.972656 4.902344-3.042969 5.953125-3.601563 8.625.230469 16.566406 1.761719 23.636719 4.558594 7.636719 3.023438 14.121093 7.058594 19.265625 11.980469 5.5 5.261719 10.484375 11.796875 14.816406 19.421875 4.542969 7.988281 8.207031 16.289062 10.886719 24.660156 2.800781 8.75 5.15625 18.398438 7 28.675782 1.867187 10.433593 3.132812 20.238281 3.75 29.144531v.007812c.636719 9.058594.957031 18.527344.960937 28.148438-.003906 18.449219-5.214844 32.378906-15.9375 42.582031zm0 0&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 511.626 511.626&quot; id=&quot;hwish&quot;&gt;\n    &lt;path d=&quot;M475.366,71.949c-24.175-23.606-57.575-35.404-100.215-35.404c-11.8,0-23.843,2.046-36.117,6.136\n    c-12.279,4.093-23.702,9.615-34.256,16.562c-10.568,6.945-19.65,13.467-27.269,19.556c-7.61,6.091-14.845,12.564-21.696,19.414\n    c-6.854-6.85-14.087-13.323-21.698-19.414c-7.616-6.089-16.702-12.607-27.268-19.556c-10.564-6.95-21.985-12.468-34.261-16.562\n    c-12.275-4.089-24.316-6.136-36.116-6.136c-42.637,0-76.039,11.801-100.211,35.404C12.087,95.55,0,128.286,0,170.16\n    c0,12.753,2.24,25.891,6.711,39.398c4.471,13.514,9.566,25.031,15.275,34.546c5.708,9.514,12.181,18.792,19.414,27.834\n    c7.233,9.041,12.519,15.272,15.846,18.698c3.33,3.426,5.948,5.903,7.851,7.427L243.25,469.938\n    c3.427,3.426,7.614,5.144,12.562,5.144s9.138-1.718,12.563-5.144l177.87-171.31c43.588-43.58,65.38-86.406,65.38-128.472\n    C511.626,128.279,499.54,95.546,475.366,71.949z M421.405,271.795L255.813,431.391L89.938,271.507\n    C54.344,235.922,36.55,202.133,36.55,170.156c0-15.415,2.046-29.026,6.136-40.824c4.093-11.8,9.327-21.177,15.703-28.124\n    c6.377-6.949,14.132-12.607,23.268-16.988c9.141-4.377,18.086-7.328,26.84-8.85c8.754-1.52,18.079-2.281,27.978-2.281\n    c9.896,0,20.557,2.424,31.977,7.279c11.418,4.853,21.934,10.944,31.545,18.271c9.613,7.332,17.845,14.183,24.7,20.557\n    c6.851,6.38,12.559,12.229,17.128,17.559c3.424,4.189,8.091,6.283,13.989,6.283c5.9,0,10.562-2.094,13.99-6.283\n    c4.568-5.33,10.28-11.182,17.131-17.559c6.852-6.374,15.085-13.222,24.694-20.557c9.613-7.327,20.129-13.418,31.553-18.271\n    c11.416-4.854,22.08-7.279,31.977-7.279s19.219,0.761,27.977,2.281c8.757,1.521,17.702,4.473,26.84,8.85\n    c9.137,4.38,16.892,10.042,23.267,16.988c6.376,6.947,11.612,16.324,15.705,28.124c4.086,11.798,6.132,25.409,6.132,40.824\n    C475.078,202.133,457.19,236.016,421.405,271.795z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 490 490&quot; id=&quot;hcom&quot;&gt;\n       &lt;path d=&quot;M215.746,324.797L109.763,98.724l127.557-23.822v288.682c-137.303,6.625-190.134,99.45-192.383,103.566l-12.408,22.659\n    h444.023l-17.213-24.174c-2.876-4.024-69.217-94.753-191.419-101.975V69.195l113.894-21.267l-107.56,229.424H490L382.395,47.82\n    l93.958-17.534l-5.615-30.095L28.886,82.689l5.615,30.095l71.115-13.281L0,324.797H215.746z M88.939,459.209\n    c24.021-26.209,74.909-65.653,163.68-65.653c76.791,0,131.336,39.046,159.61,65.653H88.939z M322.403,246.752l59.731-127.419\n    l59.716,127.419H322.403z M48.149,294.197l59.716-127.419l59.731,127.419H48.149z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n\n  &lt;symbol id=&quot;hcart&quot; viewBox=&quot;0 0 511.999 511.999&quot;&gt;\n    &lt;path d=&quot;M214.685,402.828c-24.829,0-45.029,20.2-45.029,45.029c0,24.829,20.2,45.029,45.029,45.029s45.029-20.2,45.029-45.029\n      C259.713,423.028,239.513,402.828,214.685,402.828z M214.685,467.742c-10.966,0-19.887-8.922-19.887-19.887\n      c0-10.966,8.922-19.887,19.887-19.887s19.887,8.922,19.887,19.887C234.572,458.822,225.65,467.742,214.685,467.742z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M372.63,402.828c-24.829,0-45.029,20.2-45.029,45.029c0,24.829,20.2,45.029,45.029,45.029s45.029-20.2,45.029-45.029\n      C417.658,423.028,397.458,402.828,372.63,402.828z M372.63,467.742c-10.966,0-19.887-8.922-19.887-19.887\n      c0-10.966,8.922-19.887,19.887-19.887c10.966,0,19.887,8.922,19.887,19.887C392.517,458.822,383.595,467.742,372.63,467.742z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M383.716,165.755H203.567c-6.943,0-12.571,5.628-12.571,12.571c0,6.943,5.629,12.571,12.571,12.571h180.149\n      c6.943,0,12.571-5.628,12.571-12.571C396.287,171.382,390.659,165.755,383.716,165.755z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M373.911,231.035H213.373c-6.943,0-12.571,5.628-12.571,12.571s5.628,12.571,12.571,12.571h160.537\n      c6.943,0,12.571-5.628,12.571-12.571C386.481,236.664,380.853,231.035,373.911,231.035z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M506.341,109.744c-4.794-5.884-11.898-9.258-19.489-9.258H95.278L87.37,62.097c-1.651-8.008-7.113-14.732-14.614-17.989\n      l-55.177-23.95c-6.37-2.767-13.773,0.156-16.536,6.524c-2.766,6.37,0.157,13.774,6.524,16.537L62.745,67.17l60.826,295.261\n      c2.396,11.628,12.752,20.068,24.625,20.068h301.166c6.943,0,12.571-5.628,12.571-12.571c0-6.943-5.628-12.571-12.571-12.571\n      H148.197l-7.399-35.916H451.69c11.872,0,22.229-8.44,24.624-20.068l35.163-170.675\n      C513.008,123.266,511.136,115.627,506.341,109.744z M451.69,296.301H135.619l-35.161-170.674l386.393,0.001L451.69,296.301z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n\n   &lt;symbol id=&quot;bquick&quot; viewBox=&quot;0 0 459.529 459.529&quot;&gt;\n      &lt;path d=&quot;M448.947,218.475c-0.922-1.168-23.055-28.933-61-56.81c-50.705-37.253-105.877-56.944-159.551-56.944\n      c-53.672,0-108.844,19.691-159.551,56.944c-37.944,27.876-60.077,55.642-61,56.81L0,228.397l7.846,9.923\n      c0.923,1.168,23.056,28.934,61,56.811c50.707,37.252,105.879,56.943,159.551,56.943c53.673,0,108.845-19.691,159.55-56.943\n      c37.945-27.877,60.078-55.643,61-56.811l7.848-9.923L448.947,218.475z M228.396,315.039c-47.774,0-86.642-38.867-86.642-86.642\n      c0-7.485,0.954-14.751,2.747-21.684l-19.781-3.329c-1.938,8.025-2.966,16.401-2.966,25.013c0,30.86,13.182,58.696,34.204,78.187\n      c-27.061-9.996-50.072-24.023-67.439-36.709c-21.516-15.715-37.641-31.609-46.834-41.478c9.197-9.872,25.32-25.764,46.834-41.478\n      c17.367-12.686,40.379-26.713,67.439-36.71l13.27,14.958c15.498-14.512,36.312-23.412,59.168-23.412\n      c47.774,0,86.641,38.867,86.641,86.642C315.037,276.172,276.17,315.039,228.396,315.039z M368.273,269.875\n      c-17.369,12.686-40.379,26.713-67.439,36.709c21.021-19.49,34.203-47.326,34.203-78.188s-13.182-58.697-34.203-78.188\n      c27.061,9.997,50.07,24.024,67.439,36.71c21.516,15.715,37.641,31.609,46.834,41.477\n      C405.91,238.269,389.787,254.162,368.273,269.875z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M173.261,211.555c-1.626,5.329-2.507,10.982-2.507,16.843c0,31.834,25.807,57.642,57.642,57.642\n      c31.834,0,57.641-25.807,57.641-57.642s-25.807-57.642-57.641-57.642c-15.506,0-29.571,6.134-39.932,16.094l28.432,32.048\n      L173.261,211.555z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 129 129&quot; id=&quot;heart&quot;&gt;\n     &lt;path d=&quot;m121.6,40.1c-3.3-16.6-15.1-27.3-30.3-27.3-8.5,0-17.7,3.5-26.7,10.1-9.1-6.8-18.3-10.3-26.9-10.3-15.2,0-27.1,10.8-30.3,27.6-4.8,24.9 10.6,58 55.7,76 0.5,0.2 1,0.3 1.5,0.3 0.5,0 1-0.1 1.5-0.3 45-18.4 60.3-51.4 55.5-76.1zm-57,67.9c-39.6-16.4-53.3-45-49.2-66.3 2.4-12.7 11.2-21 22.3-21 7.5,0 15.9,3.6 24.3,10.5 1.5,1.2 3.6,1.2 5.1,0 8.4-6.7 16.7-10.2 24.2-10.2 11.1,0 19.8,8.1 22.3,20.7 4.1,21.1-9.5,49.6-49,66.3z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n\n  &lt;symbol id=&quot;pcart&quot; viewBox=&quot;0 0 511.997 511.997&quot;&gt;   \n    &lt;path d=&quot;M405.387,362.612c-35.202,0-63.84,28.639-63.84,63.84s28.639,63.84,63.84,63.84s63.84-28.639,63.84-63.84\n      S440.588,362.612,405.387,362.612z M405.387,451.988c-14.083,0-25.536-11.453-25.536-25.536s11.453-25.536,25.536-25.536\n      c14.083,0,25.536,11.453,25.536,25.536S419.47,451.988,405.387,451.988z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M507.927,115.875c-3.626-4.641-9.187-7.348-15.079-7.348H118.22l-17.237-72.12c-2.062-8.618-9.768-14.702-18.629-14.702\n      H19.152C8.574,21.704,0,30.278,0,40.856s8.574,19.152,19.152,19.152h48.085l62.244,260.443\n      c2.062,8.625,9.768,14.702,18.629,14.702h298.135c8.804,0,16.477-6.001,18.59-14.543l46.604-188.329\n      C512.849,126.562,511.553,120.516,507.927,115.875z M431.261,296.85H163.227l-35.853-150.019h341.003L431.261,296.85z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M173.646,362.612c-35.202,0-63.84,28.639-63.84,63.84s28.639,63.84,63.84,63.84s63.84-28.639,63.84-63.84\n      S208.847,362.612,173.646,362.612z M173.646,451.988c-14.083,0-25.536-11.453-25.536-25.536s11.453-25.536,25.536-25.536\n      s25.536,11.453,25.536,25.536S187.729,451.988,173.646,451.988z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 490 490&quot; id=&quot;compare&quot;&gt;\n       &lt;path d=&quot;M215.746,324.797L109.763,98.724l127.557-23.822v288.682c-137.303,6.625-190.134,99.45-192.383,103.566l-12.408,22.659\n    h444.023l-17.213-24.174c-2.876-4.024-69.217-94.753-191.419-101.975V69.195l113.894-21.267l-107.56,229.424H490L382.395,47.82\n    l93.958-17.534l-5.615-30.095L28.886,82.689l5.615,30.095l71.115-13.281L0,324.797H215.746z M88.939,459.209\n    c24.021-26.209,74.909-65.653,163.68-65.653c76.791,0,131.336,39.046,159.61,65.653H88.939z M322.403,246.752l59.731-127.419\n    l59.716,127.419H322.403z M48.149,294.197l59.716-127.419l59.731,127.419H48.149z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n\n  &lt;symbol id=&quot;add&quot; viewBox=&quot;0 0 512 512&quot;&gt;   \n      &lt;path d=&quot;M506.555,208.064L263.859,30.367c-4.68-3.426-11.038-3.426-15.716,0L5.445,208.064\n      c-5.928,4.341-7.216,12.665-2.875,18.593s12.666,7.214,18.593,2.875L256,57.588l234.837,171.943c2.368,1.735,5.12,2.57,7.848,2.57\n      c4.096,0,8.138-1.885,10.744-5.445C513.771,220.729,512.483,212.405,506.555,208.064z&quot;&gt;&lt;/path&gt;\n      &lt;path d=&quot;M442.246,232.543c-7.346,0-13.303,5.956-13.303,13.303v211.749H322.521V342.009c0-36.68-29.842-66.52-66.52-66.52\n        s-66.52,29.842-66.52,66.52v115.587H83.058V245.847c0-7.347-5.957-13.303-13.303-13.303s-13.303,5.956-13.303,13.303v225.053\n        c0,7.347,5.957,13.303,13.303,13.303h133.029c6.996,0,12.721-5.405,13.251-12.267c0.032-0.311,0.052-0.651,0.052-1.036v-128.89\n        c0-22.009,17.905-39.914,39.914-39.914s39.914,17.906,39.914,39.914v128.89c0,0.383,0.02,0.717,0.052,1.024\n        c0.524,6.867,6.251,12.279,13.251,12.279h133.029c7.347,0,13.303-5.956,13.303-13.303V245.847\n        C455.549,238.499,449.593,232.543,442.246,232.543z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n\n    &lt;symbol id=&quot;left&quot; viewBox=&quot;0 0 492 492&quot;&gt;   \n     &lt;path d=&quot;M464.344,207.418l0.768,0.168H135.888l103.496-103.724c5.068-5.064,7.848-11.924,7.848-19.124\n      c0-7.2-2.78-14.012-7.848-19.088L223.28,49.538c-5.064-5.064-11.812-7.864-19.008-7.864c-7.2,0-13.952,2.78-19.016,7.844\n      L7.844,226.914C2.76,231.998-0.02,238.77,0,245.974c-0.02,7.244,2.76,14.02,7.844,19.096l177.412,177.412\n      c5.064,5.06,11.812,7.844,19.016,7.844c7.196,0,13.944-2.788,19.008-7.844l16.104-16.112c5.068-5.056,7.848-11.808,7.848-19.008\n      c0-7.196-2.78-13.592-7.848-18.652L134.72,284.406h329.992c14.828,0,27.288-12.78,27.288-27.6v-22.788\n      C492,219.198,479.172,207.418,464.344,207.418z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol id=&quot;right&quot; viewBox=&quot;0 0 492.004 492.004&quot;&gt;   \n      &lt;path d=&quot;M484.14,226.886L306.46,49.202c-5.072-5.072-11.832-7.856-19.04-7.856c-7.216,0-13.972,2.788-19.044,7.856l-16.132,16.136\n      c-5.068,5.064-7.86,11.828-7.86,19.04c0,7.208,2.792,14.2,7.86,19.264L355.9,207.526H26.58C11.732,207.526,0,219.15,0,234.002\n      v22.812c0,14.852,11.732,27.648,26.58,27.648h330.496L252.248,388.926c-5.068,5.072-7.86,11.652-7.86,18.864\n      c0,7.204,2.792,13.88,7.86,18.948l16.132,16.084c5.072,5.072,11.828,7.836,19.044,7.836c7.208,0,13.968-2.8,19.04-7.872\n      l177.68-177.68c5.084-5.088,7.88-11.88,7.86-19.1C492.02,238.762,489.228,231.966,484.14,226.886z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n    &lt;symbol viewBox=&quot;0 0 480 480&quot; id=&quot;support&quot;&gt;\n    &lt;path d=&quot;M472,146.626h-68.72v-24c0-9.146-7.414-16.56-16.56-16.56H148c-9.146,0-16.56,7.414-16.56,16.56v49.92H66.96\n      c-2.87-0.011-5.525,1.515-6.96,4l-32.48,56.72H8c-4.418,0-8,3.582-8,8v89.6c0,4.418,3.582,8,8,8h23.36\n      c4.451,23.395,27.025,38.751,50.42,34.3c17.39-3.309,30.991-16.91,34.3-34.3h23.36c1.198-0.032,2.374-0.333,3.44-0.88\n      c1.622,0.562,3.324,0.859,5.04,0.88h104.64c4.451,23.395,27.025,38.751,50.42,34.3c17.39-3.309,30.991-16.91,34.3-34.3h49.44\n      c9.146,0,16.56-7.414,16.56-16.56v-73.04h51.68c4.418,0,8-3.582,8-8s-3.582-8-8-8h-51.68v-27.36h9.04c4.418,0,8-3.582,8-8\n      s-3.582-8-8-8h-9.04v-27.28H472c4.418,0,8-3.582,8-8S476.418,146.626,472,146.626z M71.6,188.866h59.84v44.4H46L71.6,188.866z\n       M73.76,357.986c-0.027,0-0.053,0-0.08,0L73.76,357.986c-15.022,0-27.2-12.178-27.2-27.2s12.178-27.2,27.2-27.2\n      s27.2,12.178,27.2,27.2C100.96,345.808,88.782,357.986,73.76,357.986z M116.08,322.786c-4.451-23.395-27.025-38.751-50.42-34.3\n      c-17.39,3.309-30.991,16.91-34.3,34.3H16v-73.52h115.44v73.52H116.08z M295.04,357.986c-0.027,0-0.053,0-0.08,0L295.04,357.986\n      c-15.022,0-27.2-12.178-27.2-27.2s12.178-27.2,27.2-27.2s27.2,12.178,27.2,27.2C322.24,345.808,310.062,357.986,295.04,357.986z\n       M387.36,146.946h-38.24c-4.418,0-8,3.582-8,8s3.582,8,8,8h38.08v27.04h-97.84c-4.418,0-8,3.582-8,8s3.582,8,8,8h97.68v27.36H332\n      c-4.418,0.006-7.995,3.593-7.989,8.011c0.006,4.41,3.579,7.983,7.989,7.989h54.88v73.52h-49.52\n      c-4.451-23.395-27.025-38.751-50.42-34.3c-17.39,3.309-30.991,16.91-34.3,34.3l-105.12-0.48l0.56-200l239.28,0.56V146.946z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 476 476&quot; id=&quot;shipping&quot;&gt;\n    &lt;path d=&quot;M400.85,181v-18.3c0-43.8-15.5-84.5-43.6-114.7c-28.8-31-68.4-48-111.6-48h-15.1c-43.2,0-82.8,17-111.6,48\n    c-28.1,30.2-43.6,70.9-43.6,114.7V181c-34.1,2.3-61.2,30.7-61.2,65.4V275c0,36.1,29.4,65.5,65.5,65.5h36.9c6.6,0,12-5.4,12-12\n    V192.8c0-6.6-5.4-12-12-12h-17.2v-18.1c0-79.1,56.4-138.7,131.1-138.7h15.1c74.8,0,131.1,59.6,131.1,138.7v18.1h-17.2\n    c-6.6,0-12,5.4-12,12v135.6c0,6.6,5.4,12,12,12h16.8c-4.9,62.6-48,77.1-68,80.4c-5.5-16.9-21.4-29.1-40.1-29.1h-30\n    c-23.2,0-42.1,18.9-42.1,42.1s18.9,42.2,42.1,42.2h30.1c19.4,0,35.7-13.2,40.6-31c9.8-1.4,25.3-4.9,40.7-13.9\n    c21.7-12.7,47.4-38.6,50.8-90.8c34.3-2.1,61.5-30.6,61.5-65.4v-28.6C461.95,211.7,434.95,183.2,400.85,181z M104.75,316.4h-24.9\n    c-22.9,0-41.5-18.6-41.5-41.5v-28.6c0-22.9,18.6-41.5,41.5-41.5h24.9V316.4z M268.25,452h-30.1c-10,0-18.1-8.1-18.1-18.1\n    s8.1-18.1,18.1-18.1h30.1c10,0,18.1,8.1,18.1,18.1S278.25,452,268.25,452z M437.95,274.9c0,22.9-18.6,41.5-41.5,41.5h-24.9V204.8\n    h24.9c22.9,0,41.5,18.6,41.5,41.5V274.9z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 214.27 214.27&quot; id=&quot;return&quot;&gt;\n  &lt;path d=&quot;M196.926,55.171c-0.11-5.785-0.215-11.25-0.215-16.537c0-4.142-3.357-7.5-7.5-7.5c-32.075,0-56.496-9.218-76.852-29.01\n    c-2.912-2.832-7.546-2.831-10.457,0c-20.354,19.792-44.771,29.01-76.844,29.01c-4.142,0-7.5,3.358-7.5,7.5\n    c0,5.288-0.104,10.755-0.215,16.541c-1.028,53.836-2.436,127.567,87.331,158.682c0.796,0.276,1.626,0.414,2.456,0.414\n    c0.83,0,1.661-0.138,2.456-0.414C199.36,182.741,197.954,109.008,196.926,55.171z M107.131,198.812\n    c-76.987-27.967-75.823-89.232-74.79-143.351c0.062-3.248,0.122-6.396,0.164-9.482c30.04-1.268,54.062-10.371,74.626-28.285\n    c20.566,17.914,44.592,27.018,74.634,28.285c0.042,3.085,0.102,6.231,0.164,9.477C182.961,109.577,184.124,170.844,107.131,198.812\n    z&quot;&gt;&lt;/path&gt;\n  &lt;path d=&quot;M132.958,81.082l-36.199,36.197l-15.447-15.447c-2.929-2.928-7.678-2.928-10.606,0c-2.929,2.93-2.929,7.678,0,10.607\n    l20.75,20.75c1.464,1.464,3.384,2.196,5.303,2.196c1.919,0,3.839-0.732,5.303-2.196l41.501-41.5\n    c2.93-2.929,2.93-7.678,0.001-10.606C140.636,78.154,135.887,78.153,132.958,81.082z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 481 481&quot; id=&quot;secure&quot;&gt;\n  &lt;path d=&quot;M256.7,301.9h-27.5c-10,0-18.1-8.1-18.1-18.1s8.1-18.1,18.1-18.1h48.4c6.6,0,12-5.4,12-12c0-6.6-5.4-12-12-12h-22.7V225\n      c0-6.6-5.4-12-12-12s-12,5.4-12,12v16.7h-1.7c-23.2,0-42.1,18.9-42.1,42.1s18.9,42.1,42.1,42.1h27.5c10,0,18.1,8.1,18.1,18.1\n      s-8.1,18.1-18.1,18.1h-49.3c-6.6,0-12,5.4-12,12c0,6.6,5.4,12,12,12H231v17.1c0,6.6,5.4,12,12,12c6.6,0,12-5.4,12-12v-17.1h2\n      c0.1,0,0.2,0,0.3,0c23-0.3,41.5-19.1,41.5-42.1C298.8,320.8,279.9,301.9,256.7,301.9z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M423.3,274.7c-12.6-29-30-57.1-52-83.4c-26.6-32-53.1-53.4-66.6-63.3l51-94.6c2.5-4.7,1.7-10.5-2.2-14.2\n      C340.3,6.3,326.3,0,310.7,0c-14.3,0-27.4,5.4-38.8,10.2c-9,3.7-17.5,7.3-24.4,7.3c-2.1,0-3.9-0.3-5.7-1C218,7.8,199.7,2.4,182,2.4\n      c-22.4,0-41.5,9-60.2,28.2c-3.9,4-4.5,10.3-1.4,15l55,83.1c-13.6,10.1-39.6,31.3-65.7,62.6c-21.9,26.3-39.4,54.4-52,83.4\n      c-15.8,36.5-23.8,74.6-23.8,113.2c0,51.3,41.8,93.1,93.1,93.1h227c51.3,0,93.1-41.8,93.1-93.1\n      C447.1,349.3,439.1,311.2,423.3,274.7z M146,40.6c11.6-10,22.7-14.4,36-14.4c14.2,0,30.2,4.8,51.5,12.7c4.4,1.6,9.1,2.4,13.9,2.4\n      c11.7,0,22.9-4.6,33.6-9.1c10.3-4.3,20.1-8.4,29.6-8.4c4.6,0,11.1,0.8,19.3,6.6l-48,89.2h-83.6L146,40.6z M354,457H127\n      c-38.1,0-69.1-31-69.1-69.1c0-64.1,23.5-124.9,69.7-180.7c29.2-35.3,58.9-57.2,67.9-63.6h89.8c9.1,6.3,38.7,28.3,67.9,63.6\n      c46.3,55.8,69.7,116.5,69.7,180.7C423.1,426,392.1,457,354,457z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n    &lt;symbol id=&quot;phone&quot; viewBox=&quot;0 0 211.621 211.621&quot;&gt;   \n      &lt;path d=&quot;M180.948,27.722C163.07,9.844,139.299-0.001,114.017,0c-4.143,0-7.5,3.358-7.5,7.5c0,4.142,3.358,7.5,7.5,7.5\n        c21.276-0.001,41.279,8.284,56.324,23.329c15.046,15.045,23.331,35.049,23.33,56.326c0,4.142,3.357,7.5,7.5,7.5\n        c4.142,0,7.5-3.358,7.5-7.499C208.672,69.371,198.827,45.6,180.948,27.722z&quot;&gt;&lt;/path&gt;\n      &lt;path d=&quot;M150.096,94.656c0,4.142,3.358,7.5,7.501,7.499c4.142,0,7.499-3.358,7.499-7.5c-0.002-28.16-22.916-51.073-51.078-51.077\n        c-0.001,0,0,0-0.001,0c-4.142,0-7.499,3.357-7.5,7.499c0,4.142,3.357,7.5,7.499,7.501\n        C133.909,58.581,150.094,74.765,150.096,94.656z&quot;&gt;&lt;/path&gt;\n      &lt;path d=&quot;M133.5,132.896c-11.432-0.592-17.256,7.91-20.049,11.994c-2.339,3.419-1.463,8.086,1.956,10.425\n        c3.419,2.339,8.086,1.463,10.425-1.956c3.3-4.825,4.795-5.584,6.823-5.488c6.491,0.763,32.056,19.497,34.616,25.355\n        c0.642,1.725,0.618,3.416-0.071,5.473c-2.684,7.966-7.127,13.564-12.851,16.188c-5.438,2.493-12.105,2.267-19.276-0.651\n        c-26.777-10.914-50.171-26.145-69.531-45.271c-0.008-0.008-0.016-0.015-0.023-0.023c-19.086-19.341-34.289-42.705-45.185-69.441\n        c-2.919-7.177-3.145-13.845-0.652-19.282c2.624-5.724,8.222-10.167,16.181-12.848c2.064-0.692,3.752-0.714,5.461-0.078\n        c5.879,2.569,24.612,28.133,25.368,34.551c0.108,2.104-0.657,3.598-5.478,6.892c-3.42,2.336-4.299,7.003-1.962,10.423\n        c2.336,3.42,7.002,4.298,10.423,1.962c4.086-2.79,12.586-8.598,11.996-20.069C81.021,69.07,57.713,37.339,46.576,33.244\n        c-4.953-1.846-10.163-1.878-15.491-0.09C19.097,37.191,10.439,44.389,6.047,53.969c-4.26,9.294-4.125,20.077,0.395,31.189\n        c11.661,28.612,27.976,53.647,48.491,74.412c0.05,0.051,0.101,0.101,0.153,0.15c20.75,20.477,45.756,36.762,74.33,48.409\n        c5.722,2.327,11.357,3.492,16.746,3.492c5.074,0,9.932-1.032,14.438-3.098c9.581-4.391,16.778-13.048,20.818-25.044\n        c1.784-5.318,1.755-10.526-0.077-15.456C177.232,156.856,145.501,133.548,133.5,132.896z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n\n    &lt;symbol id=&quot;mail&quot; viewBox=&quot;0 0 512.001 512.001&quot;&gt;   \n      &lt;path d=&quot;M511.646,126.634c-0.021-14.449-11.782-26.189-26.227-26.189c-0.012,0-0.024,0-0.034,0L26.19,101.076\n      c-7.005,0.009-13.588,2.746-18.535,7.706C2.709,113.743-0.009,120.334,0,127.337l0.355,258.029\n      c0.009,7.005,2.746,13.588,7.706,18.535c4.951,4.938,11.526,7.655,18.519,7.655c0.012,0,0.025,0,0.035,0l459.194-0.631\n      c14.458-0.02,26.207-11.799,26.19-26.261L511.646,126.634z M456.611,126.71L256.02,266.154L55.04,127.262L456.611,126.71z\n       M340.846,292.471l118.971,92.265l-407.972,0.56l119.696-92.825c5.722-4.439,6.764-12.675,2.326-18.399\n      c-4.439-5.722-12.675-6.764-18.399-2.326L26.561,371.715l-0.32-232.475l222.344,153.657c2.244,1.551,4.849,2.325,7.455,2.325\n      c2.617,0,5.236-0.783,7.485-2.346l221.912-154.264l0.336,233.066l-128.856-99.931c-5.719-4.437-13.959-3.396-18.397,2.326\n      C334.081,279.795,335.122,288.033,340.846,292.471z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n    \n    &lt;symbol viewBox=&quot;0 0 341.333 341.333&quot; id=&quot;cgrid&quot;&gt;\n      &lt;rect x=&quot;128&quot; y=&quot;128&quot; width=&quot;85.333&quot; height=&quot;85.333&quot;&gt;&lt;/rect&gt;\n      &lt;rect x=&quot;0&quot; y=&quot;0&quot; width=&quot;85.333&quot; height=&quot;85.333&quot;&gt;&lt;/rect&gt;\n      &lt;rect x=&quot;128&quot; y=&quot;256&quot; width=&quot;85.333&quot; height=&quot;85.333&quot;&gt;&lt;/rect&gt;\n      &lt;rect x=&quot;0&quot; y=&quot;128&quot; width=&quot;85.333&quot; height=&quot;85.333&quot;&gt;&lt;/rect&gt;\n      &lt;rect x=&quot;0&quot; y=&quot;256&quot; width=&quot;85.333&quot; height=&quot;85.333&quot;&gt;&lt;/rect&gt;\n      &lt;rect x=&quot;256&quot; y=&quot;0&quot; width=&quot;85.333&quot; height=&quot;85.333&quot;&gt;&lt;/rect&gt;\n      &lt;rect x=&quot;128&quot; y=&quot;0&quot; width=&quot;85.333&quot; height=&quot;85.333&quot;&gt;&lt;/rect&gt;\n      &lt;rect x=&quot;256&quot; y=&quot;128&quot; width=&quot;85.333&quot; height=&quot;85.333&quot;&gt;&lt;/rect&gt;\n      &lt;rect x=&quot;256&quot; y=&quot;256&quot; width=&quot;85.333&quot; height=&quot;85.333&quot;&gt;&lt;/rect&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 95.494 95.494&quot; id=&quot;clist&quot;&gt;\n      &lt;circle cx=&quot;10.906&quot; cy=&quot;17.294&quot; r=&quot;10.906&quot;&gt;&lt;/circle&gt;\n      &lt;circle cx=&quot;10.906&quot; cy=&quot;47.294&quot; r=&quot;10.906&quot;&gt;&lt;/circle&gt;\n      &lt;circle cx=&quot;10.906&quot; cy=&quot;78.2&quot; r=&quot;10.906&quot;&gt;&lt;/circle&gt;\n      &lt;path d=&quot;M34.258,24.43h59.236c0.529,0,1.039-0.211,1.414-0.586s0.586-0.884,0.586-1.414l-0.002-10.271c0-1.104-0.896-2-2-2\n        H34.258c-1.104,0-2,0.896-2,2V22.43C32.258,23.534,33.153,24.43,34.258,24.43z&quot;&gt;&lt;/path&gt;\n      &lt;path d=&quot;M93.492,40.158H34.258c-1.104,0-2,0.896-2,2v10.271c0,1.104,0.896,2,2,2h59.236c0.529,0,1.039-0.211,1.414-0.586\n        s0.586-0.885,0.586-1.414l-0.002-10.271C95.492,41.054,94.598,40.158,93.492,40.158z&quot;&gt;&lt;/path&gt;\n      &lt;path d=&quot;M93.492,71.064H34.258c-1.104,0-2,0.896-2,2v10.271c0,1.104,0.896,2,2,2h59.236c0.529,0,1.039-0.211,1.414-0.586\n        s0.586-0.885,0.586-1.414l-0.002-10.271C95.492,71.96,94.598,71.064,93.492,71.064z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n&lt;symbol viewBox=&quot;0 0 75.999 75.999&quot; id=&quot;quotebt&quot;&gt;\n    &lt;path d=&quot;M14.579,5C6.527,5,0,11.716,0,20c0,8.285,6.527,15,14.579,15C29.157,35,19.438,64,0,64v7\n      C34.69,71,48.286,5,14.579,5z M56.579,5C48.527,5,42,11.716,42,20c0,8.285,6.527,15,14.579,15C71.157,35,61.438,64,42,64v7\n      C76.69,71,90.286,5,56.579,5z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n    &lt;symbol viewBox=&quot;0 0 492.719 492.719&quot; id=&quot;acwishlist&quot;&gt;\n     &lt;path d=&quot;M492.719,166.008c0-73.486-59.573-133.056-133.059-133.056c-47.985,0-89.891,25.484-113.302,63.569\n      c-23.408-38.085-65.332-63.569-113.316-63.569C59.556,32.952,0,92.522,0,166.008c0,40.009,17.729,75.803,45.671,100.178\n      l188.545,188.553c3.22,3.22,7.587,5.029,12.142,5.029c4.555,0,8.922-1.809,12.142-5.029l188.545-188.553\n      C474.988,241.811,492.719,206.017,492.719,166.008z&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 511.523 511.523&quot; id=&quot;acpoder&quot;&gt;\n    &lt;path d=&quot;M509.091,296.489l-58.182-93.091c-1.164-3.491-5.818-5.818-9.309-5.818H69.236c-3.491,0-8.145,2.327-9.309,5.818\n      L1.745,296.489c-2.327,3.491-2.327,8.145,0,11.636c1.164,3.491,4.655,5.818,9.309,5.818H57.6v151.273\n      c0,19.782,15.127,34.909,34.909,34.909h186.182h139.636c19.782,0,34.909-15.127,34.909-34.909V348.853\n      c0-6.982-4.655-11.636-11.636-11.636s-11.636,4.655-11.636,11.636v116.364c0,6.982-4.655,11.636-11.636,11.636h-128V279.034\n      c0-6.982-4.655-11.636-11.636-11.636c-6.982,0-11.636,4.655-11.636,11.636v197.818H92.509c-6.982,0-11.636-4.655-11.636-11.636\n      V302.307c0-6.982-4.655-11.636-11.636-11.636H32l44.218-69.818h181.527l-40.727,64c-2.327,3.491-5.818,5.818-9.309,5.818h-91.927\n      c-6.982,0-11.636,4.655-11.636,11.636s4.655,11.636,11.636,11.636h91.927c11.636,0,23.273-5.818,29.091-16.291l41.891-66.327\n      l41.891,66.327c6.982,10.473,17.455,16.291,29.091,16.291h150.109c4.655,0,8.145-2.327,10.473-5.818\n      C512.582,304.634,511.418,299.98,509.091,296.489z M349.673,290.671c-3.491,0-8.146-2.327-9.309-5.818l-40.727-64h134.982\n      l44.218,69.818H349.673z&quot;/&gt;\n    &lt;path d=&quot;M185.6,395.398h-69.818c-6.982,0-11.636,4.655-11.636,11.636c0,6.982,4.655,11.636,11.636,11.636H185.6\n      c6.982,0,11.636-4.655,11.636-11.636C197.236,400.053,192.582,395.398,185.6,395.398z&quot;/&gt;\n    &lt;path d=&quot;M150.691,430.307h-34.909c-6.982,0-11.636,4.655-11.636,11.636s4.655,11.636,11.636,11.636h34.909\n      c6.982,0,11.636-4.655,11.636-11.636S157.673,430.307,150.691,430.307z&quot;/&gt;\n    &lt;path d=&quot;M377.6,100.998c-2.327-5.818-8.145-9.309-15.127-8.146c-5.818,2.327-9.309,9.309-6.982,15.127\n      c3.491,10.473,4.655,20.945,4.655,31.418c0,6.982-1.164,13.964-2.327,20.945c-1.164,5.818,2.327,12.8,9.309,13.964\n      c1.164,0,1.164,0,2.327,0c5.818,0,10.473-3.491,11.636-9.309c1.164-8.145,2.327-17.455,2.327-25.6\n      C383.418,126.598,381.091,113.798,377.6,100.998z&quot;/&gt;\n    &lt;path d=&quot;M310.109,24.198c-16.291-8.145-34.909-12.8-54.691-12.8c-70.982,0-128,57.018-128,128c0,8.145,1.164,17.455,2.327,25.6\n      c1.164,5.818,5.818,9.309,11.636,9.309c1.164,0,1.164,0,2.327,0c5.818-1.164,10.473-6.982,9.309-13.964\n      c-1.164-6.982-2.327-13.964-2.327-20.945c0-58.182,46.545-104.727,104.727-104.727c16.291,0,31.418,3.491,45.382,10.473\n      c5.818,2.327,12.8,0,15.127-5.818S315.927,26.525,310.109,24.198z&quot;/&gt;\n    &lt;path d=&quot;M356.655,49.798c-4.655-4.655-11.636-4.655-16.291,0l-84.945,84.945l-26.764-26.764c-4.655-4.655-11.636-4.655-16.291,0\n      s-4.655,11.636,0,16.291l34.909,34.909c2.327,2.327,5.818,3.491,8.145,3.491c2.327,0,5.818-1.164,8.146-3.491l93.091-93.091\n      C361.309,61.434,361.309,54.452,356.655,49.798z&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;-66 0 512 512&quot; id=&quot;acppass&quot;&gt;\n    &lt;path d=&quot;M 340 197.007812 L 340 150 C 340 67.289062 272.710938 0 190 0 C 107.289062 0 40 67.289062 40 150 L 40 197.007812 C 17.203125 201.652344 0 221.855469 0 246 L 0 302.769531 C 0 308.292969 4.476562 312.769531 10 312.769531 C 15.523438 312.769531 20 308.292969 20 302.769531 L 20 246 C 20 229.457031 33.457031 216 50 216 L 330 216 C 346.542969 216 360 229.457031 360 246 L 360 462 C 360 475.035156 351.640625 486.152344 340 490.28125 L 340 430 C 340 424.476562 335.523438 420 330 420 C 324.476562 420 320 424.476562 320 430 L 320 492 L 50 492 C 33.457031 492 20 478.542969 20 462 L 20 383 C 20 377.476562 15.523438 373 10 373 C 4.476562 373 0 377.476562 0 383 L 0 462 C 0 489.570312 22.429688 512 50 512 L 330 512 C 357.570312 512 380 489.570312 380 462 L 380 246 C 380 221.855469 362.796875 201.652344 340 197.007812 Z M 114 196 L 114 150 C 114 108.09375 148.09375 74 190 74 C 231.90625 74 266 108.09375 266 150 L 266 196 Z M 286 196 L 286 150 C 286 97.066406 242.933594 54 190 54 C 137.066406 54 94 97.066406 94 150 L 94 196 L 60 196 L 60 150 C 60 78.316406 118.316406 20 190 20 C 261.683594 20 320 78.316406 320 150 L 320 196 Z M 286 196 &quot; style=&quot; stroke:none;fill-rule:nonzero;fill-opacity:1;&quot; /&gt;\n    &lt;path d=&quot;M 10 352.488281 C 12.628906 352.488281 15.210938 351.421875 17.070312 349.558594 C 18.929688 347.699219 20 345.121094 20 342.488281 C 20 339.859375 18.929688 337.277344 17.070312 335.421875 C 15.210938 333.558594 12.628906 332.488281 10 332.488281 C 7.371094 332.488281 4.789062 333.558594 2.929688 335.421875 C 1.070312 337.277344 0 339.859375 0 342.488281 C 0 345.121094 1.070312 347.699219 2.929688 349.558594 C 4.789062 351.421875 7.371094 352.488281 10 352.488281 Z M 10 352.488281 &quot; style=&quot; stroke:none;fill-rule:nonzero;fill-opacity:1;&quot; /&gt;\n    &lt;path d=&quot;M 190 458 C 206.542969 458 220 444.542969 220 428 L 220 374.898438 C 235.023438 364.953125 244.128906 348.234375 244.128906 329.914062 C 244.128906 300.140625 219.902344 275.914062 190.128906 275.914062 C 160.351562 275.914062 136.128906 300.140625 136.128906 329.914062 C 136.128906 348.101562 145.132812 364.757812 160 374.726562 L 160 428 C 160 444.542969 173.457031 458 190 458 Z M 156.128906 329.914062 C 156.128906 311.164062 171.378906 295.914062 190.128906 295.914062 C 208.875 295.914062 224.128906 311.164062 224.128906 329.914062 C 224.128906 342.789062 216.980469 354.410156 205.476562 360.25 C 202.117188 361.953125 200 365.398438 200 369.167969 L 200 428 C 200 433.515625 195.515625 438 190 438 C 184.484375 438 180 433.515625 180 428 L 180 369.035156 C 180 365.292969 177.910156 361.863281 174.582031 360.148438 C 163.199219 354.28125 156.128906 342.695312 156.128906 329.914062 Z M 156.128906 329.914062 &quot; style=&quot; stroke:none;fill-rule:nonzero;&quot; /&gt;\n    &lt;path d=&quot;M 330 399 C 332.640625 399 335.210938 397.929688 337.070312 396.070312 C 338.929688 394.210938 340 391.640625 340 389 C 340 386.359375 338.929688 383.789062 337.070312 381.929688 C 335.210938 380.070312 332.640625 379 330 379 C 327.371094 379 324.789062 380.070312 322.929688 381.929688 C 321.070312 383.789062 320 386.371094 320 389 C 320 391.628906 321.070312 394.210938 322.929688 396.070312 C 324.789062 397.929688 327.371094 399 330 399 Z M 330 399 &quot; style=&quot; stroke:none;fill-rule:nonzero;&quot; /&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 512.00069 512&quot; id=&quot;acppadd&quot;&gt;\n    &lt;path d=&quot;m102.167969 369.785156-100 126c-2.386719 3.003906-2.839844 7.109375-1.171875 10.5625 1.667968 3.457032 5.167968 5.652344 9.003906 5.652344h492c3.835938 0 7.335938-2.195312 9.003906-5.652344 1.671875-3.453125 1.214844-7.558594-1.171875-10.5625l-100-126c-1.894531-2.390625-4.78125-3.785156-7.832031-3.785156h-87.597656l74.785156-117.296875c17.542969-26.300781 26.8125-56.972656 26.8125-88.703125 0-88.222656-71.773438-160-160-160s-160 71.777344-160 160c0 31.730469 9.269531 62.398438 26.8125 88.703125l74.785156 117.296875h-87.597656c-3.050781 0-5.933594 1.394531-7.832031 3.785156zm-37.335938 79.214844h60.464844l-34.125 43h-60.46875zm145.519531-63 27.414063 43h-71.0625l34.128906-43zm91.300782 0h9.519531l34.125 43h-71.058594zm59.519531 63 34.125 43h-278.59375l34.128906-43zm59.660156 43-34.128906-43h60.46875l34.125 43zm10.464844-63h-60.464844l-34.128906-43h60.46875zm-291.789063-191.3125c-15.378906-23.023438-23.507812-49.886719-23.507812-77.6875 0-77.195312 62.804688-140 140-140s140 62.804688 140 140c0 27.800781-8.128906 54.664062-23.503906 77.6875-.042969.058594-.078125.117188-.117188.175781-6.566406 10.300781-111.320312 174.605469-116.378906 182.535157-12.722656-19.957032-103.421875-162.214844-116.378906-182.535157-.035156-.058593-.074219-.117187-.113282-.175781zm35.789063 148.3125-34.125 43h-60.46875l34.128906-43zm0 0&quot;/&gt;&lt;path d=&quot;m256 260c54.898438 0 100-44.457031 100-100 0-55.140625-44.859375-100-100-100s-100 44.859375-100 100c0 55.558594 45.117188 100 100 100zm0-180c44.113281 0 80 35.886719 80 80 0 44.523438-36.175781 80-80 80-43.835938 0-80-35.476562-80-80 0-44.113281 35.886719-80 80-80zm0 0&quot;/&gt;&lt;path d=&quot;m298.121094 294.125c-4.726563-2.851562-10.875-1.328125-13.726563 3.402344l-36.960937 61.320312c-2.851563 4.730469-1.328125 10.875 3.402344 13.726563 4.75 2.863281 10.886718 1.308593 13.726562-3.402344l36.960938-61.320313c2.851562-4.730468 1.328124-10.875-3.402344-13.726562zm0 0&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;-17 0 512 512.00429&quot; id=&quot;acporderh&quot;&gt;\n    &lt;path d=&quot;m153.601562 119.46875h8.535157v8.535156c0 14.136719 11.460937 25.597656 25.597656 25.597656 14.140625 0 25.601563-11.460937 25.601563-25.597656v-8.535156h8.53125c14.140624 0 25.601562-11.460938 25.601562-25.601562 0-14.136719-11.460938-25.597657-25.601562-25.597657h-8.53125v-8.535156c0-14.136719-11.460938-25.597656-25.601563-25.597656-14.136719 0-25.597656 11.460937-25.597656 25.597656v8.535156h-8.535157c-14.136718 0-25.597656 11.460938-25.597656 25.597657 0 14.140624 11.460938 25.601562 25.597656 25.601562zm0-34.132812h17.066407c4.714843 0 8.535156-3.820313 8.535156-8.535157v-17.066406c0-4.710937 3.820313-8.53125 8.53125-8.53125 4.714844 0 8.535156 3.820313 8.535156 8.53125v17.066406c0 4.714844 3.820313 8.535157 8.53125 8.535157h17.066407c4.714843 0 8.535156 3.820312 8.535156 8.53125 0 4.714843-3.820313 8.535156-8.535156 8.535156h-17.066407c-4.710937 0-8.53125 3.820312-8.53125 8.53125v17.070312c0 4.710938-3.820312 8.53125-8.535156 8.53125-4.710937 0-8.53125-3.820312-8.53125-8.53125v-17.070312c0-4.710938-3.820313-8.53125-8.535156-8.53125h-17.066407c-4.710937 0-8.53125-3.820313-8.53125-8.535156 0-4.710938 3.820313-8.53125 8.53125-8.53125zm0 0&quot;/&gt;&lt;path d=&quot;m332.800781 68.269531h-54.832031c-11.414062-40.386719-48.269531-68.269531-90.234375-68.269531s-78.820313 27.882812-90.230469 68.269531h-54.835937c-23.550781.027344-42.636719 19.113281-42.66406275 42.664063v358.402344c.02734375 23.550781 19.11328175 42.636718 42.66406275 42.667968h290.132812c23.554688-.03125 42.640625-19.117187 42.667969-42.667968v-358.402344c-.027344-23.550782-19.113281-42.636719-42.667969-42.664063zm-145.066406 119.464844c41.941406-.070313 78.757813-27.925781 90.234375-68.265625h46.300781v341.332031h-273.066406v-341.332031h46.300781c11.472656 40.339844 48.289063 68.195312 90.230469 68.265625zm0-170.664063c42.417969 0 76.800781 34.382813 76.800781 76.796876 0 42.417968-34.382812 76.800781-76.800781 76.800781-42.414063 0-76.800781-34.382813-76.800781-76.800781.050781-42.394532 34.40625-76.75 76.800781-76.796876zm170.667969 452.265626c0 14.136718-11.460938 25.597656-25.601563 25.597656h-290.132812c-14.136719 0-25.597657-11.460938-25.597657-25.597656v-358.402344c0-14.136719 11.460938-25.597656 25.597657-25.597656h51.636719c-.257813 2.816406-.4375 5.648437-.4375 8.53125 0 2.886718.179687 5.71875.4375 8.535156h-43.101563c-9.425781 0-17.066406 7.640625-17.066406 17.066406v341.332031c0 9.425781 7.640625 17.066407 17.066406 17.066407h273.066406c9.425781 0 17.066407-7.640626 17.066407-17.066407v-341.332031c0-9.425781-7.640626-17.066406-17.066407-17.066406h-43.101562c.253906-2.816406.433593-5.648438.433593-8.535156 0-2.882813-.179687-5.714844-.433593-8.53125h51.632812c14.140625 0 25.601563 11.460937 25.601563 25.597656zm0 0&quot;/&gt;&lt;path d=&quot;m85.335938 273.070312c4.710937 0 8.53125-3.820312 8.53125-8.535156 0-4.710937-3.820313-8.53125-8.53125-8.53125v-34.136718h42.667968c4.710938 0 8.53125-3.820313 8.53125-8.53125 0-4.714844-3.820312-8.535157-8.53125-8.535157h-42.667968c-9.425782 0-17.066407 7.640625-17.066407 17.066407v34.136718c0 9.425782 7.640625 17.066406 17.066407 17.066406zm0 0&quot;/&gt;&lt;path d=&quot;m116.96875 241.4375c-3.347656-3.234375-8.671875-3.1875-11.960938.101562-3.292968 3.292969-3.339843 8.613282-.105468 11.960938l17.066406 17.070312c3.332031 3.328126 8.734375 3.328126 12.066406 0l42.667969-42.667968c3.234375-3.347656 3.1875-8.671875-.105469-11.960938-3.292968-3.292968-8.613281-3.339844-11.960937-.105468l-36.632813 36.632812zm0 0&quot;/&gt;&lt;path d=&quot;m290.136719 230.402344h8.53125c4.714843 0 8.535156-3.820313 8.535156-8.535156 0-4.710938-3.820313-8.53125-8.535156-8.53125h-8.53125c-4.714844 0-8.535157 3.820312-8.535157 8.53125 0 4.714843 3.820313 8.535156 8.535157 8.535156zm0 0&quot;/&gt;&lt;path d=&quot;m213.335938 230.402344h42.667968c4.710938 0 8.53125-3.820313 8.53125-8.535156 0-4.710938-3.820312-8.53125-8.53125-8.53125h-42.667968c-4.714844 0-8.535157 3.820312-8.535157 8.53125 0 4.714843 3.820313 8.535156 8.535157 8.535156zm0 0&quot;/&gt;&lt;path d=&quot;m213.335938 264.535156h68.265624c4.714844 0 8.535157-3.820312 8.535157-8.53125 0-4.714844-3.820313-8.535156-8.535157-8.535156h-68.265624c-4.714844 0-8.535157 3.820312-8.535157 8.535156 0 4.710938 3.820313 8.53125 8.535157 8.53125zm0 0&quot;/&gt;&lt;path d=&quot;m85.335938 358.402344c4.710937 0 8.53125-3.820313 8.53125-8.535156 0-4.710938-3.820313-8.53125-8.53125-8.53125v-34.132813h42.667968c4.710938 0 8.53125-3.820313 8.53125-8.535156 0-4.710938-3.820312-8.53125-8.53125-8.53125h-42.667968c-9.425782 0-17.066407 7.640625-17.066407 17.066406v34.132813c0 9.425781 7.640625 17.066406 17.066407 17.066406zm0 0&quot;/&gt;&lt;path d=&quot;m164.636719 301.167969-36.632813 36.632812-11.035156-11.03125c-3.347656-3.234375-8.671875-3.1875-11.960938.101563-3.292968 3.292968-3.339843 8.617187-.105468 11.964844l17.066406 17.066406c3.332031 3.332031 8.734375 3.332031 12.066406 0l42.667969-42.667969c3.234375-3.347656 3.1875-8.667969-.105469-11.960937-3.292968-3.292969-8.613281-3.339844-11.960937-.105469zm0 0&quot;/&gt;&lt;path d=&quot;m298.667969 298.667969h-8.53125c-4.714844 0-8.535157 3.820312-8.535157 8.535156 0 4.710937 3.820313 8.53125 8.535157 8.53125h8.53125c4.714843 0 8.535156-3.820313 8.535156-8.53125 0-4.714844-3.820313-8.535156-8.535156-8.535156zm0 0&quot;/&gt;&lt;path d=&quot;m213.335938 315.734375h42.667968c4.710938 0 8.53125-3.820313 8.53125-8.53125 0-4.714844-3.820312-8.535156-8.53125-8.535156h-42.667968c-4.714844 0-8.535157 3.820312-8.535157 8.535156 0 4.710937 3.820313 8.53125 8.535157 8.53125zm0 0&quot;/&gt;&lt;path d=&quot;m213.335938 349.867188h68.265624c4.714844 0 8.535157-3.820313 8.535157-8.53125 0-4.714844-3.820313-8.535157-8.535157-8.535157h-68.265624c-4.714844 0-8.535157 3.820313-8.535157 8.535157 0 4.710937 3.820313 8.53125 8.535157 8.53125zm0 0&quot;/&gt;&lt;path d=&quot;m85.335938 443.734375c4.710937 0 8.53125-3.820313 8.53125-8.53125 0-4.714844-3.820313-8.535156-8.53125-8.535156v-34.132813h42.667968c4.710938 0 8.53125-3.820312 8.53125-8.53125 0-4.714844-3.820312-8.535156-8.53125-8.535156h-42.667968c-9.425782 0-17.066407 7.640625-17.066407 17.066406v34.132813c0 9.425781 7.640625 17.066406 17.066407 17.066406zm0 0&quot;/&gt;&lt;path d=&quot;m164.636719 386.503906-36.632813 36.632813-11.035156-11.035157c-3.347656-3.234374-8.671875-3.1875-11.960938.105469-3.292968 3.289063-3.339843 8.613281-.105468 11.960938l17.066406 17.066406c3.332031 3.332031 8.734375 3.332031 12.066406 0l42.667969-42.664063c3.234375-3.351562 3.1875-8.671874-.105469-11.964843-3.292968-3.289063-8.613281-3.335938-11.960937-.101563zm0 0&quot;/&gt;&lt;path d=&quot;m298.667969 384.003906h-8.53125c-4.714844 0-8.535157 3.820313-8.535157 8.53125 0 4.714844 3.820313 8.535156 8.535157 8.535156h8.53125c4.714843 0 8.535156-3.820312 8.535156-8.535156 0-4.710937-3.820313-8.53125-8.535156-8.53125zm0 0&quot;/&gt;&lt;path d=&quot;m213.335938 401.070312h42.667968c4.710938 0 8.53125-3.820312 8.53125-8.535156 0-4.710937-3.820312-8.53125-8.53125-8.53125h-42.667968c-4.714844 0-8.535157 3.820313-8.535157 8.53125 0 4.714844 3.820313 8.535156 8.535157 8.535156zm0 0&quot;/&gt;&lt;path d=&quot;m213.335938 435.203125h68.265624c4.714844 0 8.535157-3.820313 8.535157-8.535156 0-4.710938-3.820313-8.53125-8.535157-8.53125h-68.265624c-4.714844 0-8.535157 3.820312-8.535157 8.53125 0 4.714843 3.820313 8.535156 8.535157 8.535156zm0 0&quot;/&gt;&lt;path d=&quot;m455.683594 110.933594h-40.960938c-13.15625 1.023437-23.042968 12.433594-22.1875 25.601562v281.601563c0 .953125.160156 1.898437.476563 2.796875l27.792969 79.976562c1.71875 6.519532 7.601562 11.070313 14.339843 11.09375 6.742188.023438 12.65625-4.484375 14.417969-10.992187l27.828125-80.085938c.316406-.894531.476563-1.839843.476563-2.789062v-281.601563c.859374-13.167968-9.03125-24.578125-22.183594-25.601562zm-4.976563 334.789062c-10.167969-2.648437-20.847656-2.648437-31.019531 0l-6.621094-19.054687h44.269532zm-41.105469-232.386718v-25.601563h51.199219v25.601563zm34.132813 196.265624v-110.933593c0-4.710938-3.820313-8.53125-8.53125-8.53125-4.714844 0-8.535156 3.820312-8.535156 8.53125v110.933593h-17.066407v-179.199218h17.066407v34.132812c0 4.714844 3.820312 8.535156 8.535156 8.535156 4.710937 0 8.53125-3.820312 8.53125-8.535156v-34.132812h17.066406v179.199218zm-29.011719-281.597656h40.960938c2.421875 0 5.117187 3.652344 5.117187 8.53125v34.132813h-51.199219v-34.132813c0-4.878906 2.695313-8.53125 5.121094-8.53125zm20.480469 362.332032-9.898437-28.484376c6.527343-1.394531 13.277343-1.394531 19.804687 0zm0 0&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 449.306 449.306&quot; id=&quot;acpdown&quot;&gt;\n    &lt;path d=&quot;M447.739,251.298l-59.037-126.433c-1.731-3.54-5.484-5.625-9.404-5.224h-50.155c-5.771,0-10.449,4.678-10.449,10.449\n        c0,5.771,4.678,10.449,10.449,10.449h43.363l48.588,104.49h-59.559c-27.004-0.133-51.563,15.625-62.694,40.229\n        c-8.062,16.923-25.141,27.698-43.886,27.69h-60.604c-18.745,0.008-35.823-10.767-43.886-27.69\n        c-11.131-24.604-35.69-40.362-62.694-40.229H29.257l57.469-104.49h33.437c5.771,0,10.449-4.678,10.449-10.449\n        c0-5.771-4.678-10.449-10.449-10.449H80.457c-3.776-0.358-7.425,1.467-9.404,4.702L2.09,250.776\n        c-1.209,1.072-1.958,2.569-2.09,4.18v130.09c0.832,29.282,24.524,52.744,53.812,53.29h341.682\n        c29.289-0.546,52.98-24.008,53.812-53.29v-130.09C449.107,253.622,448.567,252.362,447.739,251.298z M428.408,385.045\n        c-0.812,17.743-15.16,31.864-32.914,32.392H53.812c-17.754-0.528-32.102-14.648-32.914-32.392V265.927h66.873\n        c18.745-0.008,35.823,10.767,43.886,27.69c11.131,24.604,35.69,40.362,62.694,40.229h60.604\n        c27.004,0.133,51.563-15.625,62.694-40.229c8.062-16.923,25.141-27.698,43.886-27.69h66.873V385.045z&quot;/&gt;\n      &lt;path d=&quot;M217.339,252.865c3.706,4.04,9.986,4.31,14.025,0.603c0.21-0.192,0.411-0.394,0.603-0.603l71.053-71.576\n        c3.462-4.617,2.527-11.166-2.09-14.629c-3.715-2.786-8.824-2.786-12.539,0l-53.29,53.29V21.42\n        c0-5.771-4.678-10.449-10.449-10.449s-10.449,4.678-10.449,10.449v198.531l-53.29-53.29c-4.617-3.462-11.166-2.527-14.629,2.09\n        c-2.786,3.715-2.786,8.824,0,12.539L217.339,252.865z&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 511.997 511.997&quot; id=&quot;acpreward&quot;&gt;\n    &lt;path d=&quot;M335.99,160.828c-1.177-3.62-4.308-6.257-8.074-6.804l-43.503-6.31L264.948,108.3c-1.686-3.412-5.161-5.572-8.966-5.572\n      h-0.002c-3.807,0.001-7.282,2.163-8.966,5.577l-19.443,39.424l-43.5,6.333c-3.767,0.548-6.895,3.188-8.07,6.808\n      s-0.193,7.594,2.533,10.25l31.486,30.675l-7.419,43.327c-0.643,3.752,0.901,7.543,3.981,9.78c1.742,1.265,3.804,1.908,5.876,1.908\n      c1.592,0,3.191-0.38,4.655-1.15l38.903-20.466l38.914,20.445c3.369,1.771,7.452,1.475,10.531-0.764\n      c3.079-2.238,4.62-6.03,3.976-9.781l-7.442-43.323l31.47-30.691C336.188,168.422,337.167,164.448,335.99,160.828z\n       M284.266,191.124c-2.356,2.298-3.431,5.608-2.874,8.852l4.902,28.535l-25.631-13.466c-2.913-1.531-6.394-1.53-9.307,0.002\n      l-25.624,13.48l4.887-28.538c0.556-3.244-0.521-6.554-2.878-8.851l-20.738-20.204l28.651-4.171\n      c3.257-0.474,6.072-2.521,7.528-5.472l12.806-25.966l12.821,25.96c1.458,2.951,4.274,4.996,7.531,5.468l28.653,4.156\n      L284.266,191.124z&quot;/&gt;\n    &lt;path d=&quot;M480.738,439.367l-82.656-143.77c24.961-31.158,39.916-70.661,39.916-113.597c0-100.355-81.645-182-182-182\n      s-182,81.645-182,182c0,42.936,14.954,82.439,39.916,113.597l-82.656,143.77c-1.898,3.302-1.756,7.396,0.367,10.559\n      c2.123,3.162,5.862,4.844,9.633,4.337l64.513-8.663l24.754,60.201c1.45,3.525,4.778,5.92,8.582,6.174\n      c0.224,0.015,0.447,0.022,0.669,0.022c3.555,0,6.864-1.893,8.658-5l83.443-144.527c0.013-0.022,0.022-0.045,0.035-0.068\n      c7.884,1.047,15.922,1.597,24.088,1.597s16.204-0.55,24.088-1.597c0.013,0.022,0.022,0.045,0.035,0.068l83.443,144.527\n      c1.794,3.107,5.104,5,8.658,5c0.222,0,0.445-0.007,0.669-0.022c3.804-0.254,7.132-2.649,8.582-6.174L406.23,445.6l64.513,8.663\n      c3.779,0.507,7.51-1.175,9.633-4.337C482.493,446.763,482.636,442.669,480.738,439.367z M141.284,479.379l-18.02-43.822\n      l16.171-26.389c2.886-4.709,1.408-10.866-3.301-13.751s-10.866-1.408-13.751,3.301l-16.341,26.666l-47.33,6.355l69.276-120.496\n      c22.692,22.477,51.248,39.04,83.144,47.156L141.284,479.379z M255.997,344c-89.327,0-162-72.673-162-162s72.673-162,162-162\n      s162,72.673,162,162S345.324,344,255.997,344z M405.953,425.384l-16.341-26.666c-2.885-4.709-9.042-6.188-13.751-3.301\n      c-4.709,2.886-6.187,9.042-3.301,13.751l16.171,26.389l-18.02,43.822l-69.848-120.98c31.896-8.116,60.453-24.679,83.144-47.156\n      l69.276,120.496L405.953,425.384z&quot;/&gt;\n    &lt;path d=&quot;M255.997,52c-22.316,0-44.333,5.752-63.672,16.636c-4.813,2.708-6.519,8.806-3.811,13.619s8.806,6.521,13.619,3.811\n      C218.484,76.864,237.11,72,255.997,72c60.654,0,110,49.346,110,110c0,16.574-3.591,32.499-10.673,47.332\n      c-2.379,4.984-0.268,10.953,4.716,13.333c1.391,0.664,2.857,0.978,4.302,0.978c3.732,0,7.315-2.101,9.031-5.694\n      c8.376-17.545,12.624-36.369,12.624-55.949C385.997,110.318,327.68,52,255.997,52z&quot;/&gt;\n    &lt;path d=&quot;M349.05,258.422c-3.963-3.846-10.294-3.751-14.14,0.212l-0.222,0.228c-3.858,3.951-3.783,10.283,0.168,14.141\n      c1.945,1.899,4.466,2.845,6.985,2.845c2.599,0,5.197-1.007,7.156-3.014l0.264-0.271C353.108,268.6,353.013,262.269,349.05,258.422\n      z&quot;/&gt;\n    &lt;path d=&quot;M322.586,282.345c-2.665-4.837-8.747-6.598-13.584-3.932C292.871,287.302,274.542,292,255.997,292\n      c-60.654,0-110-49.346-110-110c0-15.889,3.311-31.213,9.84-45.546c2.29-5.026,0.071-10.956-4.955-13.246\n      c-5.026-2.289-10.956-0.071-13.246,4.955c-7.724,16.954-11.64,35.067-11.64,53.837c0,71.682,58.318,130,130,130\n      c21.911,0,43.578-5.557,62.658-16.071C323.491,293.263,325.252,287.182,322.586,282.345z&quot;/&gt;\n    &lt;path d=&quot;M174.999,92.899c-4.041-3.765-10.369-3.539-14.133,0.501l-0.222,0.239c-3.75,4.054-3.505,10.381,0.549,14.131\n      c1.923,1.78,4.358,2.66,6.788,2.66c2.69,0,5.372-1.079,7.343-3.209l0.176-0.189C179.264,102.991,179.04,96.663,174.999,92.899z&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 511.999 511.999&quot; id=&quot;acpreturn&quot;&gt;\n    &lt;path d=&quot;M210.188,91.3c0-10.221-8.286-18.507-18.507-18.507h-60.633c-10.221,0-18.507,8.286-18.507,18.507\n        s8.286,18.507,18.507,18.507h60.633C201.902,109.807,210.188,101.521,210.188,91.3z&quot;/&gt;\n      &lt;path d=&quot;M93.923,298.809L12.359,345.9c-16.493,9.522-16.463,33.364,0,42.869l81.565,47.091\n        c16.492,9.522,37.125-2.423,37.125-21.434v-94.183C131.049,301.2,110.388,289.302,93.923,298.809z&quot;/&gt;\n      &lt;path d=&quot;M353.754,72.795h-79.701c-10.518,0-18.987,8.773-18.486,19.401c0.469,9.954,9.044,17.612,19.009,17.612h80.9\n        c66.292,0,120.149,54.253,119.505,120.689c-0.638,65.792-55.232,118.331-121.028,118.331h-185.89\n        c-6.814,0-12.338,5.524-12.338,12.339v12.338c0,6.814,5.524,12.338,12.338,12.338h187.414\n        c86.612,0,157.019-70.713,156.52-157.438C511.5,142.034,440.125,72.795,353.754,72.795z&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;-26 -26 852.49964 852&quot; id=&quot;acptran&quot;&gt;\n    &lt;path d=&quot;m-1.683594 411.3125c0 166.96875 61.769532 240.753906 79.910156 258.824219v87.449219c0 22.066406 17.886719 39.953124 39.953126 39.953124h213.09375c22.066406 0 39.953124-17.886718 39.953124-39.953124v-426.183594c0-22.070313-17.886718-39.957032-39.953124-39.957032h-66.765626c-1.265624-32.511718-4.492187-64.917968-9.667968-97.035156-1.628906-11.589844-3.371094-24.121094-5.195313-38.0625 16.785157-5.066406 28.292969-20.507812 28.359375-38.039062v-106.546875c0-7.355469-5.972656-13.316407-13.324218-13.316407h-253.042969c-7.359375 0-13.320313 5.960938-13.320313 13.316407v106.546875c0 21.957031 17.710938 39.792968 39.660156 39.957031-1.832031 28.003906-7.078124 55.671875-15.601562 82.414063-16.8125 55.285156-24.929688 112.847656-24.058594 170.632812zm159.816406 106.542969c-.496093-13.527344-2.5-26.960938-5.980468-40.046875-4.515625-17.378906-6.980469-35.226563-7.335938-53.183594.039063-8.910156.722656-17.8125 2.035156-26.632812h197.734376v293h-239.71875v-93.230469c36.339843 0 53.265624-47.671875 53.265624-79.90625zm173.140626 253.042969h-213.09375c-7.351563 0-13.3125-5.960938-13.3125-13.3125v-39.953126h239.71875v39.953126c0 7.351562-5.960938 13.3125-13.3125 13.3125zm13.3125-439.496094v39.949218h-193.21875c.53125-2.910156 1.054687-5.84375 1.585937-8.90625.269531-1.585937.507813-3.257812.757813-4.886718.558593-3.449219 1.078124-6.960938 1.574218-10.660156.269532-1.980469.476563-3.988282.71875-6.105469.414063-3.585938.757813-7.296875 1.066406-11.152344.1875-2.28125.347657-4.589844.476563-6.976563.09375-1.558593.242187-2.96875.308594-4.578124h173.417969c7.351562 0 13.3125 5.960937 13.3125 13.316406zm-93.226563-306.320313v26.632813h-226.410156v-26.632813zm-226.410156 93.226563v-39.949219h226.410156v39.949219c0 7.363281-5.960937 13.324218-13.3125 13.324218h-199.777344c-7.355469 0-13.320312-5.960937-13.320312-13.324218zm23.074219 129.492187c9.214843-29.042969 14.796874-59.121093 16.613281-89.535156h158.398437c1.902344 14.652344 3.726563 27.742187 5.40625 39.820313 4.996094 30.90625 8.140625 62.078124 9.433594 93.359374h-80.714844c-2.253906-15.890624-6.863281-31.363281-13.675781-45.90625-2.125-4.257812-6.363281-7.0625-11.113281-7.351562-4.753906-.292969-9.296875 1.976562-11.925782 5.941406-2.628906 3.972656-2.9375 9.042969-.8125 13.308594 7.03125 14.839844 11.066407 30.925781 11.867188 47.332031-.195312 22.324219-2.589844 44.582031-7.152344 66.4375-3.753906 17.570313-5.824218 35.457031-6.167968 53.417969.339843 19.921875 3.023437 39.734375 7.992187 59.03125 2.992187 11.175781 4.78125 22.636719 5.328125 34.199219 0 24.136719-11.894531 53.273437-26.632812 53.273437-.34375-.042968-.667969-.152344-.96875-.316406-.65625-.488281-1.238282-1.078125-1.695313-1.761719-.375-.410156-.773437-.789062-1.191406-1.140625-6.65625-10.804687-11.414063-46.617187-13.652344-63.511718-2.152344-18.953126-5.332031-37.757813-9.53125-56.351563-1.917969-6.980469-9.050781-11.152344-16.074219-9.40625-7.015625 1.75-11.355468 8.785156-9.765625 15.847656 3.929688 17.628907 6.910157 35.464844 8.925781 53.417969 3.789063 28.582031 7.46875 56.148438 17.3125 73.050781v46.617188c-22.164062-33.175781-53.277343-100.273438-53.277343-216.261719-.816407-55.367188 6.964843-110.53125 23.074219-163.511719zm0 0&quot;/&gt;&lt;path d=&quot;m238.046875 744.265625c0 7.359375-5.964844 13.320313-13.324219 13.320313-7.351562 0-13.316406-5.960938-13.316406-13.320313 0-7.351563 5.964844-13.316406 13.316406-13.316406 7.359375 0 13.324219 5.964843 13.324219 13.316406zm0 0&quot;/&gt;&lt;path d=&quot;m78.226562 104.992188c0 7.355468-5.964843 13.316406-13.320312 13.316406-7.351562 0-13.320312-5.960938-13.320312-13.316406 0-7.355469 5.96875-13.316407 13.320312-13.316407 7.355469 0 13.320312 5.960938 13.320312 13.316407zm0 0&quot;/&gt;&lt;path d=&quot;m570.996094 198.21875c24.324218 0 26.464844 11.242188 26.636718 13.636719.089844 7.363281 6.128907 13.25 13.480469 13.160156 7.355469-.085937 13.25-6.125 13.15625-13.476563 0-12.230468-8.804687-34-39.949219-38.886718v-14.386719c0-7.355469-5.960937-13.320313-13.324218-13.320313-7.351563 0-13.3125 5.964844-13.3125 13.320313v14.449219c-26.253906 4.417968-39.960938 21.667968-39.960938 38.824218 0 36.585938 31.96875 45.144532 53.171875 50.792969 21.746094 5.820313 26.738281 8.777344 26.738281 15.800781 0 6.445313-9.320312 13.3125-26.636718 13.3125-11.941406-1.382812-22.414063-8.609374-27.964844-19.265624-3.292969-6.585938-11.289062-9.261719-17.875-5.972657-6.582031 3.292969-9.25 11.292969-5.96875 17.875 8.171875 15.382813 22.035156 26.949219 38.628906 32.230469v15.089844c0 7.355468 5.960938 13.316406 13.316406 13.316406 7.355469 0 13.316407-5.960938 13.316407-13.316406v-14.453125c26.25-4.421875 39.953125-21.667969 39.953125-38.816407 0-29.105468-26.875-36.28125-46.492188-41.519531-23.878906-6.351562-33.546875-10.425781-33.546875-25.074219 0-6.445312 9.320313-13.320312 26.632813-13.320312zm0 0&quot;/&gt;&lt;path d=&quot;m198.085938 331.402344c-7.351563 0-13.3125 5.964844-13.3125 13.316406 0 7.355469 5.960937 13.324219 13.3125 13.324219h53.273437c7.359375 0 13.320313-5.96875 13.320313-13.324219 0-7.351562-5.960938-13.316406-13.320313-13.316406zm0 0&quot;/&gt;&lt;path d=&quot;m797.40625 384.675781c0-166.972656-61.769531-240.757812-79.90625-258.824219v-87.449218c0-22.066406-17.886719-39.957032-39.953125-39.957032h-213.089844c-22.066406 0-39.960937 17.890626-39.960937 39.957032v426.179687c0 22.0625 17.894531 39.960938 39.960937 39.960938h66.757813c1.265625 32.503906 4.496094 64.90625 9.671875 97.03125 1.628906 11.589843 3.367187 24.121093 5.191406 38.066406-16.785156 5.0625-28.289063 20.496094-28.355469 38.039063v106.542968c0 7.355469 5.96875 13.316406 13.324219 13.316406h253.042969c7.355468 0 13.316406-5.960937 13.316406-13.316406v-106.542968c0-21.957032-17.710938-39.800782-39.660156-39.960938 1.835937-28 7.078125-55.679688 15.613281-82.410156 16.804687-55.292969 24.921875-112.851563 24.046875-170.632813zm-159.8125-106.542969c.496094 13.527344 2.5 26.957032 5.980469 40.039063 4.515625 17.386719 6.980469 35.234375 7.328125 53.179687-.039063 8.921876-.714844 17.828126-2.03125 26.640626h-197.738282v-293h239.726563v93.226562c-36.34375 0-53.265625 47.679688-53.265625 79.914062zm-173.136719-253.050781h213.089844c7.351563 0 13.3125 5.960938 13.3125 13.320313v39.957031h-239.726563v-39.957031c0-7.359375 5.964844-13.320313 13.324219-13.320313zm-13.324219 439.5v-39.957031h193.226563c-.539063 2.933594-1.070313 5.878906-1.585937 8.953125-.269532 1.5625-.492188 3.199219-.753907 4.785156-.550781 3.472657-1.085937 7.015625-1.582031 10.648438-.261719 1.992187-.476562 4-.71875 6.101562-.410156 3.601563-.757812 7.324219-1.0625 11.191407-.1875 2.257812-.347656 4.566406-.480469 6.9375-.089843 1.558593-.238281 2.980468-.304687 4.59375h-173.414063c-7.332031 0-13.289062-5.921876-13.324219-13.253907zm93.230469 306.316407v-26.632813h226.410157v26.632813zm226.410157-93.21875v39.953124h-226.410157v-39.953124c0-7.359376 5.960938-13.320313 13.320313-13.320313h199.773437c7.347657 0 13.316407 5.960937 13.316407 13.320313zm-23.066407-129.496094c-9.21875 29.042968-14.804687 59.121094-16.628906 89.535156h-158.382813c-1.914062-14.648438-3.734374-27.738281-5.410156-39.820312-4.996094-30.902344-8.148437-62.082032-9.429687-93.355469h80.703125c2.28125 15.898437 6.917968 31.367187 13.75 45.90625 3.285156 6.582031 11.285156 9.261719 17.867187 5.980469 6.589844-3.285157 9.269531-11.292969 5.980469-17.875-7.058594-14.839844-11.109375-30.921876-11.929688-47.332032.191407-22.332031 2.585938-44.585937 7.152344-66.449218 3.753906-17.566407 5.824219-35.449219 6.167969-53.421876-.34375-19.914062-3.027344-39.730468-7.992187-59.023437-2.996094-11.175781-4.785157-22.644531-5.328126-34.195313 0-24.136718 11.890626-53.277343 26.632813-53.277343.335937.050781.667969.152343.960937.324219.664063.484374 1.246094 1.078124 1.707032 1.753906.371094.410156.765625.785156 1.183594 1.148437 6.660156 10.789063 11.417968 46.613281 13.65625 63.511719 2.148437 18.941406 5.328124 37.753906 9.53125 56.351562 1.917968 6.972657 9.050781 11.148438 16.070312 9.398438 7.019531-1.757812 11.355469-8.789062 9.769531-15.84375-3.953125-17.640625-6.945312-35.46875-8.964843-53.425781-3.796876-28.578125-7.46875-56.148438-17.3125-73.046875v-46.613282c22.160156 33.199219 53.273437 100.300782 53.273437 216.285157.828125 55.355469-6.9375 110.507812-23.027344 163.484375zm0 0&quot;/&gt;&lt;path d=&quot;m584.320312 51.714844c0 7.359375-5.960937 13.320312-13.324218 13.320312-7.351563 0-13.3125-5.960937-13.3125-13.320312 0-7.351563 5.960937-13.3125 13.3125-13.3125 7.363281 0 13.324218 5.960937 13.324218 13.3125zm0 0&quot;/&gt;&lt;path d=&quot;m744.132812 690.992188c0 7.359374-5.960937 13.320312-13.3125 13.320312-7.359374 0-13.320312-5.960938-13.320312-13.320312 0-7.351563 5.960938-13.3125 13.320312-13.3125 7.351563 0 13.3125 5.960937 13.3125 13.3125zm0 0&quot;/&gt;&lt;path d=&quot;m597.632812 464.582031c7.359376 0 13.320313-5.960937 13.320313-13.316406s-5.960937-13.316406-13.320313-13.316406h-53.269531c-7.355469 0-13.316406 5.960937-13.316406 13.316406s5.960937 13.316406 13.316406 13.316406zm0 0&quot;/&gt;&lt;path d=&quot;m158.132812 664.359375c7.355469 0 13.316407-5.960937 13.316407-13.324219v-31.957031c.007812-8.90625 4.460937-17.222656 11.871093-22.160156l1.453126-.910157v1.753907c0 22.074219 17.886718 39.957031 39.949218 39.957031 22.070313 0 39.957032-17.882812 39.957032-39.957031v-1.753907l1.449218.96875c7.414063 4.949219 11.867188 13.257813 11.875 22.167969v31.890625c0 7.363282 5.960938 13.324219 13.308594 13.324219 7.363281 0 13.324219-5.960937 13.324219-13.324219v-31.957031c.015625-17.8125-8.886719-34.457031-23.722657-44.328125l-5.574218-3.621094h29.296875c7.351562 0 13.316406-5.960937 13.316406-13.316406s-5.964844-13.324219-13.316406-13.324219h-29.296875l5.53125-3.6875c14.828125-9.84375 23.746094-26.457031 23.765625-44.253906v-31.964844c0-7.351562-5.960938-13.316406-13.324219-13.316406-7.347656 0-13.308594 5.964844-13.308594 13.316406v31.964844c-.007812 8.910156-4.460937 17.226563-11.875 22.164063l-1.449218.902343v-15.070312c0-22.074219-17.886719-39.960938-39.957032-39.960938-22.0625 0-39.949218 17.886719-39.949218 39.960938v59.464843l-16.234376 10.808594c-14.835937 9.867188-23.738281 26.507813-23.722656 44.328125v31.890625c0 7.363282 5.960938 13.324219 13.316406 13.324219zm79.914063-66.597656c0 7.363281-5.964844 13.324219-13.324219 13.324219-7.351562 0-13.316406-5.960938-13.316406-13.324219v-26.632813h26.640625zm-26.640625-93.21875c0-7.359375 5.964844-13.320313 13.316406-13.320313 7.359375 0 13.324219 5.960938 13.324219 13.320313v39.945312h-26.640625zm0 0&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 512 512&quot; id=&quot;acppay&quot;&gt;\n    &lt;path d=&quot;M469.256,175.503h-52.1v-73.542c0-23.569-19.175-42.744-42.744-42.744H42.744C19.175,59.218,0,78.393,0,101.962v191.786\n      c0,23.569,19.175,42.744,42.744,42.744h52.102v73.546c0,23.569,19.175,42.744,42.744,42.744h331.666\n      c23.569,0,42.744-19.175,42.744-42.744V218.247C512,194.678,492.825,175.503,469.256,175.503z M24.425,101.962\n      c0-10.101,8.218-18.319,18.319-18.319h331.668c10.101,0,18.319,8.218,18.319,18.319v17.051H24.425V101.962z M94.846,218.247\n      v93.819H42.744c-10.101,0-18.319-8.218-18.319-18.319v-93.743h74.52C96.32,205.54,94.846,211.725,94.846,218.247z M24.425,175.579\n      v-32.14h368.306v32.064H137.59c-0.826,0-1.644,0.029-2.458,0.076H24.425z M469.256,428.357H137.59\n      c-10.101,0-18.319-8.218-18.319-18.319V218.247c0-9.597,7.422-17.479,16.824-18.243H404.94c0.451,0,0.894-0.028,1.331-0.076\n      h62.984c10.101,0,18.319,8.218,18.319,18.319v191.791h0.001C487.575,420.139,479.357,428.357,469.256,428.357z&quot;/&gt;\n    &lt;path d=&quot;M340.211,255.272c-13.892,0-26.666,4.847-36.745,12.924c-10.333-8.324-23.209-12.931-36.829-12.931\n      c-32.465,0-58.877,26.412-58.877,58.877c0,32.465,26.412,58.877,58.877,58.877c13.621,0,26.496-4.607,36.829-12.929\n      c10.079,8.077,22.853,12.925,36.745,12.925c32.462,0,58.871-26.41,58.871-58.872C399.082,281.681,372.673,255.272,340.211,255.272\n      z M287.953,341.201c-6.009,4.758-13.451,7.392-21.317,7.392c-18.997,0.001-34.452-15.454-34.452-34.45\n      c0-18.997,15.455-34.452,34.452-34.452c7.866,0,15.307,2.635,21.317,7.392c-4.216,8.108-6.613,17.306-6.613,27.058\n      C281.34,323.894,283.738,333.092,287.953,341.201z M340.211,348.589c-18.993,0-34.445-15.453-34.445-34.447\n      c0-18.993,15.453-34.445,34.445-34.445c18.993,0,34.445,15.453,34.445,34.445C374.656,333.137,359.204,348.589,340.211,348.589z&quot;\n      /&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 409.165 409.164&quot; id=&quot;acluser&quot;&gt;\n    &lt;path d=&quot;M204.583,216.671c50.664,0,91.74-48.075,91.74-107.378c0-82.237-41.074-107.377-91.74-107.377\n      c-50.668,0-91.74,25.14-91.74,107.377C112.844,168.596,153.916,216.671,204.583,216.671z&quot;/&gt;\n    &lt;path d=&quot;M407.164,374.717L360.88,270.454c-2.117-4.771-5.836-8.728-10.465-11.138l-71.83-37.392\n      c-1.584-0.823-3.502-0.663-4.926,0.415c-20.316,15.366-44.203,23.488-69.076,23.488c-24.877,0-48.762-8.122-69.078-23.488\n      c-1.428-1.078-3.346-1.238-4.93-0.415L58.75,259.316c-4.631,2.41-8.346,6.365-10.465,11.138L2.001,374.717\n      c-3.191,7.188-2.537,15.412,1.75,22.005c4.285,6.592,11.537,10.526,19.4,10.526h362.861c7.863,0,15.117-3.936,19.402-10.527\n      C409.699,390.129,410.355,381.902,407.164,374.717z&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 512 512&quot; id=&quot;aclorder&quot;&gt;\n    &lt;path d=&quot;M448,177.14V448c0,35.344-28.656,64-64,64H64c-35.344,0-64-28.656-64-64V128c0-35.344,28.656-64,64-64h270.844l-63.969,64\n    H64v320h320V241.156L448,177.14z M398.875,45.25L376.25,67.875l67.875,67.891l22.625-22.625L398.875,45.25z M444.125,0\n    L421.5,22.625l67.875,67.891L512,67.875L444.125,0z M150,294.188l67.875,67.875L421.5,158.406l-67.875-67.891L150,294.188z\n     M128,384h64l-64-64V384z&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 510 510&quot; id=&quot;aclufolder&quot;&gt;\n    &lt;path d=&quot;M459,102H255l-51-51H51C22.95,51,0,73.95,0,102v306c0,28.05,22.95,51,51,51h408c28.05,0,51-22.95,51-51V153\n      C510,124.95,487.05,102,459,102z M331.5,178.5c28.05,0,51,22.95,51,51s-22.95,51-51,51s-51-22.95-51-51S303.45,178.5,331.5,178.5z\n       M433.5,382.5h-204V357c0-33.15,68.85-51,102-51s102,17.85,102,51V382.5z&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 925.551 925.552&quot; id=&quot;return&quot;&gt;\n    &lt;path d=&quot;M768.051,127.108H142.044c-28.995,0-52.5,23.505-52.5,52.5s23.505,52.5,52.5,52.5h626.008c28.947,0,52.5,23.552,52.5,52.5\n    v224.743c0,28.947-23.553,52.5-52.5,52.5H179.838l41.689-42.192c20.38-20.625,20.18-53.865-0.445-74.244\n    c-20.624-20.38-53.866-20.181-74.244,0.445L15.155,579.132c-20.38,20.625-20.18,53.865,0.445,74.244L147.08,783.288\n    c10.231,10.11,23.566,15.155,36.897,15.155c13.541-0.001,27.078-5.207,37.347-15.601c20.38-20.625,20.181-53.865-0.445-74.244\n    l-42.25-41.747h589.423c86.846,0,157.5-70.654,157.5-157.5V284.608C925.551,197.762,854.897,127.108,768.051,127.108z&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 459.529 459.529&quot; id=&quot;carto&quot;&gt;\n    &lt;path d=&quot;M17,55.231h48.733l69.417,251.033c1.983,7.367,8.783,12.467,16.433,12.467h213.35c6.8,0,12.75-3.967,15.583-10.2\n      l77.633-178.5c2.267-5.383,1.7-11.333-1.417-16.15c-3.117-4.817-8.5-7.65-14.167-7.65H206.833c-9.35,0-17,7.65-17,17\n      s7.65,17,17,17H416.5l-62.9,144.5H164.333L94.917,33.698c-1.983-7.367-8.783-12.467-16.433-12.467H17c-9.35,0-17,7.65-17,17\n      S7.65,55.231,17,55.231z&quot;/&gt;\n    &lt;path d=&quot;M135.433,438.298c21.25,0,38.533-17.283,38.533-38.533s-17.283-38.533-38.533-38.533S96.9,378.514,96.9,399.764\n      S114.183,438.298,135.433,438.298z&quot;/&gt;\n    &lt;path d=&quot;M376.267,438.298c0.85,0,1.983,0,2.833,0c10.2-0.85,19.55-5.383,26.35-13.317c6.8-7.65,9.917-17.567,9.35-28.05\n      c-1.417-20.967-19.833-37.117-41.083-35.7c-21.25,1.417-37.117,20.117-35.7,41.083\n      C339.433,422.431,356.15,438.298,376.267,438.298z&quot;/&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 480 480&quot; id=&quot;acnewsl&quot;&gt;\n    &lt;path d=&quot;m440 144h-8v-72c0-.175781-.089844-.320312-.097656-.496094-.046875-.71875-.191406-1.429687-.429688-2.113281-.089844-.253906-.152344-.503906-.265625-.75-.375-.84375-.898437-1.617187-1.542969-2.28125l-64-64c-.667968-.644531-1.445312-1.167969-2.296874-1.542969-.230469-.113281-.480469-.175781-.71875-.265625-.699219-.246093-1.429688-.390625-2.167969-.429687-.175781-.0312502-.3125-.121094-.480469-.121094h-280c-17.671875 0-32 14.328125-32 32v112h-8c-22.082031.027344-39.9726562 17.917969-40 40v256c.0273438 22.082031 17.917969 39.972656 40 40h400c22.082031-.027344 39.972656-17.917969 40-40v-256c-.027344-22.082031-17.917969-39.972656-40-40zm-244.558594 176h89.117188l136.800781 144h-362.71875zm244.558594-160c11.714844-.003906 21.71875 8.449219 23.671875 20l-31.671875 22.054688v-42.054688zm-35.3125-96h-28.6875c-4.417969 0-8-3.582031-8-8v-28.6875zm-340.6875-32c0-8.835938 7.164062-16 16-16h272v40c0 13.253906 10.746094 24 24 24h40v133.175781l-130.511719 90.824219h-90.976562l-130.511719-90.824219zm-24 128h8v42.054688l-31.671875-22.015626c1.933594-11.566406 11.945313-20.039062 23.671875-20.039062zm-24 280v-240.695312l163.785156 113.941406-142.984375 150.539062c-11.910156-1.601562-20.800781-11.769531-20.800781-23.785156zm427.199219 23.785156-142.984375-150.539062 163.785156-113.941406v240.695312c0 12.015625-8.890625 22.183594-20.800781 23.785156zm0 0&quot;/&gt;&lt;path d=&quot;m168 64h144c4.417969 0 8-3.582031 8-8s-3.582031-8-8-8h-144c-4.417969 0-8 3.582031-8 8s3.582031 8 8 8zm0 0&quot;/&gt;&lt;path d=&quot;m96 104c0 4.417969 3.582031 8 8 8h272c4.417969 0 8-3.582031 8-8s-3.582031-8-8-8h-272c-4.417969 0-8 3.582031-8 8zm0 0&quot;/&gt;&lt;path d=&quot;m376 144h-272c-4.417969 0-8 3.582031-8 8s3.582031 8 8 8h272c4.417969 0 8-3.582031 8-8s-3.582031-8-8-8zm0 0&quot;/&gt;&lt;path d=&quot;m376 192h-272c-4.417969 0-8 3.582031-8 8s3.582031 8 8 8h272c4.417969 0 8-3.582031 8-8s-3.582031-8-8-8zm0 0&quot;/&gt;&lt;path d=&quot;m328 240h-176c-4.417969 0-8 3.582031-8 8s3.582031 8 8 8h176c4.417969 0 8-3.582031 8-8s-3.582031-8-8-8zm0 0&quot;/&gt;&lt;path d=&quot;m88 80c4.417969 0 8-3.582031 8-8v-16c0-4.417969 3.582031-8 8-8h16c4.417969 0 8-3.582031 8-8s-3.582031-8-8-8h-16c-13.253906 0-24 10.746094-24 24v16c0 4.417969 3.582031 8 8 8zm0 0&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 348.458 348.458&quot; id=&quot;aclogout&quot;&gt;\n      &lt;path d=&quot;M204.661,55.646V79.08c55.185,13.862,94.864,64.183,94.864,121.343c0,69.084-56.218,125.289-125.297,125.289\n          c-69.082,0-125.29-56.205-125.29-125.289c0-56.974,39.469-107.108,94.857-121.201V55.704\n          c-68.19,14.319-117.61,75.054-117.61,144.725c0,81.629,66.416,148.029,148.042,148.029c81.63,0,148.043-66.4,148.043-148.029\n          C322.271,130.658,272.863,69.968,204.661,55.646z&quot;/&gt;\n          &lt;rect x=&quot;162.859&quot; width=&quot;22.731&quot; height=&quot;123.12&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 510 510&quot; id=&quot;acprofile&quot;&gt;\n      &lt;path d=&quot;M255,0C114.75,0,0,114.75,0,255s114.75,255,255,255s255-114.75,255-255S395.25,0,255,0z M255,76.5\n      c43.35,0,76.5,33.15,76.5,76.5s-33.15,76.5-76.5,76.5c-43.35,0-76.5-33.15-76.5-76.5S211.65,76.5,255,76.5z M255,438.6\n      c-63.75,0-119.85-33.149-153-81.6c0-51,102-79.05,153-79.05S408,306,408,357C374.85,405.45,318.75,438.6,255,438.6z&quot;/&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 26 26&quot; id=&quot;acdownload&quot;&gt;\n      &lt;path d=&quot;m25,17h-2c-0.6,0-1,0.4-1,1v2.5c0,0.3-0.2,0.5-0.5,0.5h-17c-0.3,0-0.5-0.2-0.5-0.5v-2.5c0-0.6-0.4-1-1-1h-2c-0.6,0-1,0.4-1,1v6c0,0.6 0.4,1 1,1h24c0.6,0 1-0.4 1-1v-6c0-0.6-0.4-1-1-1z&quot;/&gt;\n    &lt;path d=&quot;m12.3,16.7c0.2,0.2 0.5,0.3 0.7,0.3s0.5-0.1 0.7-0.3l6-6c0.2-0.2 0.3-0.4 0.3-0.7s-0.1-0.5-0.3-0.7l-1.4-1.4c-0.2-0.2-0.4-0.3-0.7-0.3-0.3,0-0.5,0.1-0.7,0.3l-1,1c-0.3,0.3-0.9,0.1-0.9-0.4v-6.5c0-0.6-0.4-1-1-1h-2c-0.6,0-1,0.4-1,1v6.6c0,0.4-0.5,0.7-0.9,0.4l-1-1c-0.2-0.2-0.4-0.3-0.7-0.3-0.3,0-0.5,0.1-0.7,0.3l-1.4,1.4c-0.2,0.2-0.3,0.4-0.3,0.7s0.1,0.5 0.3,0.7l6,5.9z&quot;/&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 510 510&quot; id=&quot;acorder&quot;&gt;\n      &lt;path style=&quot;opacity:0.9;enable-background:new    ;&quot; d=&quot;M267.75,12.75c-89.25,0-168.3,48.45-209.1,122.4L0,76.5v165.75h165.75\n      l-71.4-71.4c33.15-63.75,96.9-107.1,173.4-107.1C372.3,63.75,459,150.45,459,255s-86.7,191.25-191.25,191.25\n      c-84.15,0-153-53.55-181.05-127.5H33.15c28.05,102,122.4,178.5,234.6,178.5C402.9,497.25,510,387.6,510,255\n      C510,122.4,400.35,12.75,267.75,12.75z M229.5,140.25V270.3l119.85,71.4l20.4-33.15l-102-61.2v-107.1H229.5z&quot;/&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 -20 512 512&quot; id=&quot;actranse&quot;&gt;\n     &lt;path d=&quot;m452 0h-392c-33.085938 0-60 26.914062-60 60v352c0 33.085938 26.914062 60 60 60h392c33.085938 0 60-26.914062 60-60v-352c0-33.085938-26.914062-60-60-60zm-392 40h392c11.027344 0 20 8.972656 20 20v60h-432v-60c0-11.027344 8.972656-20 20-20zm392 392h-392c-11.027344 0-20-8.972656-20-20v-252h432v252c0 11.027344-8.972656 20-20 20zm-382-352c0-11.046875 8.953125-20 20-20s20 8.953125 20 20-8.953125 20-20 20-20-8.953125-20-20zm70 0c0-11.046875 8.953125-20 20-20s20 8.953125 20 20-8.953125 20-20 20-20-8.953125-20-20zm206.640625 105.859375 70.144531 70.140625-70.144531 70.140625-28.28125-28.28125 21.855469-21.859375h-105.214844v-40h105.214844l-21.855469-21.859375zm-174.855469 130.140625h103.214844v40h-103.214844l21.855469 21.859375-28.28125 28.28125-70.144531-70.140625 70.144531-70.140625 28.28125 28.28125zm0 0&quot;/&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 348.458 348.458&quot; id=&quot;aclogout&quot;&gt;\n      &lt;path d=&quot;M204.661,55.646V79.08c55.185,13.862,94.864,64.183,94.864,121.343c0,69.084-56.218,125.289-125.297,125.289\n          c-69.082,0-125.29-56.205-125.29-125.289c0-56.974,39.469-107.108,94.857-121.201V55.704\n          c-68.19,14.319-117.61,75.054-117.61,144.725c0,81.629,66.416,148.029,148.042,148.029c81.63,0,148.043-66.4,148.043-148.029\n          C322.271,130.658,272.863,69.968,204.661,55.646z&quot;/&gt;\n          &lt;rect x=&quot;162.859&quot; width=&quot;22.731&quot; height=&quot;123.12&quot;/&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 52 52&quot; id=&quot;successi&quot;&gt;\n   &lt;path d=&quot;M26,0C11.664,0,0,11.663,0,26s11.664,26,26,26s26-11.663,26-26S40.336,0,26,0z M26,50C12.767,50,2,39.233,2,26\n    S12.767,2,26,2s24,10.767,24,24S39.233,50,26,50z&quot;&gt;&lt;/path&gt;\n  &lt;path d=&quot;M38.252,15.336l-15.369,17.29l-9.259-7.407c-0.43-0.345-1.061-0.274-1.405,0.156c-0.345,0.432-0.275,1.061,0.156,1.406\n    l10,8C22.559,34.928,22.78,35,23,35c0.276,0,0.551-0.114,0.748-0.336l16-18c0.367-0.412,0.33-1.045-0.083-1.411\n    C39.251,14.885,38.62,14.922,38.252,15.336z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 512 512&quot; id=&quot;warnningi&quot;&gt;\n   &lt;path d=&quot;M256,0C114.497,0,0,114.507,0,256c0,141.503,114.507,256,256,256c141.503,0,256-114.507,256-256\n      C512,114.497,397.493,0,256,0z M256,472c-119.393,0-216-96.615-216-216c0-119.393,96.615-216,216-216\n      c119.393,0,216,96.615,216,216C472,375.393,375.385,472,256,472z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M256,128.877c-11.046,0-20,8.954-20,20V277.67c0,11.046,8.954,20,20,20s20-8.954,20-20V148.877\n      C276,137.831,267.046,128.877,256,128.877z&quot;&gt;&lt;/path&gt;\n    &lt;circle cx=&quot;256&quot; cy=&quot;349.16&quot; r=&quot;27&quot;&gt;&lt;/circle&gt;\n  &lt;/symbol&gt;\n\n  &lt;symbol viewBox=&quot;0 0 65 65&quot; id=&quot;infoi&quot;&gt;\n   &lt;path d=&quot;M32.5,0C14.58,0,0,14.579,0,32.5S14.58,65,32.5,65S65,50.421,65,32.5S50.42,0,32.5,0z M32.5,61C16.785,61,4,48.215,4,32.5\n      S16.785,4,32.5,4S61,16.785,61,32.5S48.215,61,32.5,61z&quot;&gt;&lt;/path&gt;\n    &lt;circle cx=&quot;33.018&quot; cy=&quot;19.541&quot; r=&quot;3.345&quot;&gt;&lt;/circle&gt;\n    &lt;path d=&quot;M32.137,28.342c-1.104,0-2,0.896-2,2v17c0,1.104,0.896,2,2,2s2-0.896,2-2v-17C34.137,29.237,33.241,28.342,32.137,28.342z\n      &quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n  &lt;symbol viewBox=&quot;0 0 512 512&quot; id=&quot;ae&quot;&gt;\n      &lt;path style=&quot;fill:#306FC5;&quot; d=&quot;M512,402.281c0,16.716-13.55,30.267-30.265,30.267H30.265C13.55,432.549,0,418.997,0,402.281V109.717\n  c0-16.715,13.55-30.266,30.265-30.266h451.47c16.716,0,30.265,13.551,30.265,30.266V402.281L512,402.281z&quot;&gt;&lt;/path&gt;\n&lt;path style=&quot;opacity:0.15;fill:#202121;enable-background:new    ;&quot; d=&quot;M21.517,402.281V109.717\n  c0-16.715,13.552-30.266,30.267-30.266h-21.52C13.55,79.451,0,93.001,0,109.717v292.565c0,16.716,13.55,30.267,30.265,30.267h21.52\n  C35.07,432.549,21.517,418.997,21.517,402.281z&quot;&gt;&lt;/path&gt;\n  &lt;polygon style=&quot;fill:#FFFFFF;&quot; points=&quot;74.59,220.748 89.888,220.748 82.241,201.278  &quot;&gt;&lt;/polygon&gt;\n  &lt;polygon style=&quot;fill:#FFFFFF;&quot; points=&quot;155.946,286.107 155.946,295.148 181.675,295.148 181.675,304.885 155.946,304.885\n    155.946,315.318 184.455,315.318 197.666,300.712 185.151,286.107   &quot;&gt;&lt;/polygon&gt;\n  &lt;polygon style=&quot;fill:#FFFFFF;&quot; points=&quot;356.898,201.278 348.553,220.748 364.548,220.748  &quot;&gt;&lt;/polygon&gt;\n  &lt;polygon style=&quot;fill:#FFFFFF;&quot; points=&quot;230.348,320.875 230.348,281.241 212.268,300.712  &quot;&gt;&lt;/polygon&gt;\n  &lt;path style=&quot;fill:#FFFFFF;&quot; d=&quot;M264.42,292.368c-0.696-4.172-3.48-6.261-7.654-6.261h-14.599v12.516h15.299\n    C261.637,298.624,264.42,296.539,264.42,292.368z&quot;&gt;&lt;/path&gt;\n  &lt;path style=&quot;fill:#FFFFFF;&quot; d=&quot;M313.09,297.236c1.391-0.697,2.089-2.785,2.089-4.867c0.696-2.779-0.698-4.172-2.089-4.868\n    c-1.387-0.696-3.476-0.696-5.559-0.696h-13.91v11.127h13.909C309.613,297.932,311.702,297.932,313.09,297.236z&quot;&gt;&lt;/path&gt;\n  &lt;path style=&quot;fill:#FFFFFF;&quot; d=&quot;M413.217,183.198v8.344l-4.169-8.344H376.37v8.344l-4.174-8.344h-44.502\n    c-7.648,0-13.909,1.392-19.469,4.173v-4.173h-31.289v0.696v3.477c-3.476-2.78-7.648-4.173-13.211-4.173h-111.95l-7.652,17.384\n    l-7.647-17.384h-25.031h-10.431v8.344l-3.477-8.344h-0.696H66.942l-13.909,32.68L37.042,251.34l-0.294,0.697h0.294h35.463h0.444\n    l0.252-0.697l4.174-10.428h9.039l4.172,11.125h40.326v-0.697v-7.647l3.479,8.343h20.163l3.475-8.343v7.647v0.697h15.993h79.965\n    h0.696v-18.08h1.394c1.389,0,1.389,0,1.389,2.087v15.297h50.065v-4.172c4.172,2.089,10.426,4.172,18.771,4.172h20.863l4.172-11.123\n    h9.732l4.172,11.123h40.328v-6.952v-3.476l6.261,10.428h1.387h0.698h30.595v-68.143h-31.291l0,0H413.217z M177.501,241.609h-6.955\n    h-4.171v-4.169v-34.076l-0.696,1.595v-0.019l-16.176,36.669h-0.512h-3.719h-6.017l-16.687-38.245v38.245h-23.64l-4.867-10.43\n    H70.417l-4.868,10.43H53.326l20.57-48.675h17.382l19.469,46.587v-46.587h4.171h14.251l0.328,0.697h0.024l8.773,19.094l6.3,14.306\n    l0.223-0.721l13.906-33.375H177.5v48.674H177.501L177.501,241.609z M225.481,203.364h-27.119v9.039h26.423v9.734h-26.423v9.738\n    h27.119v10.427h-38.939v-49.367h38.939V203.364L225.481,203.364z M275.076,221.294c0.018,0.016,0.041,0.027,0.063,0.042\n    c0.263,0.278,0.488,0.557,0.68,0.824c1.332,1.746,2.409,4.343,2.463,8.151c0.004,0.066,0.007,0.131,0.011,0.197\n    c0,0.038,0.007,0.071,0.007,0.11c0,0.022-0.002,0.039-0.002,0.06c0.016,0.383,0.026,0.774,0.026,1.197v9.735h-10.428v-5.565\n    c0-2.781,0-6.954-2.089-9.735c-0.657-0.657-1.322-1.09-2.046-1.398c-1.042-0.675-3.017-0.686-6.295-0.686h-12.52v17.384h-11.818\n    v-48.675h26.425c6.254,0,10.428,0,13.906,2.086c3.407,2.046,5.465,5.439,5.543,10.812c-0.161,7.4-4.911,11.46-8.326,12.829\n    C270.676,218.662,272.996,219.129,275.076,221.294z M298.491,241.609h-11.822v-48.675h11.822V241.609z M434.083,241.609h-15.3\n    l-22.25-36.855v30.595l-0.073-0.072v6.362h-11.747v-0.029h-11.822l-4.172-10.43H344.38l-4.172,11.123h-13.211\n    c-5.559,0-12.517-1.389-16.687-5.561c-4.172-4.172-6.256-9.735-6.256-18.773c0-6.953,1.389-13.911,6.256-19.472\n    c3.474-4.175,9.735-5.562,17.382-5.562h11.128v10.429h-11.128c-4.172,0-6.254,0.693-9.041,2.783\n    c-2.082,2.085-3.474,6.256-3.474,11.123c0,5.564,0.696,9.04,3.474,11.821c2.091,2.089,4.87,2.785,8.346,2.785h4.867l15.991-38.243\n    h6.957h10.428l19.472,46.587v-2.376v-15.705v-1.389v-27.116h17.382l20.161,34.07v-34.07h11.826v47.977h0.002L434.083,241.609\n    L434.083,241.609z&quot;&gt;&lt;/path&gt;\n  &lt;path style=&quot;fill:#FFFFFF;&quot; d=&quot;M265.161,213.207c0.203-0.217,0.387-0.463,0.543-0.745c0.63-0.997,1.352-2.793,0.963-5.244\n    c-0.016-0.225-0.057-0.433-0.105-0.634c-0.013-0.056-0.011-0.105-0.026-0.161l-0.007,0.001c-0.346-1.191-1.229-1.923-2.11-2.367\n    c-1.394-0.693-3.48-0.693-5.565-0.693h-13.909v11.127h13.909c2.085,0,4.172,0,5.565-0.697c0.209-0.106,0.395-0.25,0.574-0.413\n    l0.002,0.009C264.996,213.389,265.067,213.315,265.161,213.207z&quot;&gt;&lt;/path&gt;\n  &lt;path style=&quot;fill:#FFFFFF;&quot; d=&quot;M475.105,311.144c0-4.867-1.389-9.736-3.474-13.212v-31.289h-0.032v-2.089c0,0-29.145,0-33.483,0\n    c-4.336,0-9.598,4.171-9.598,4.171v-4.171h-31.984c-4.87,0-11.124,1.392-13.909,4.171v-4.171h-57.016v2.089v2.081\n    c-4.169-3.474-11.824-4.171-15.298-4.171h-37.549v2.089v2.081c-3.476-3.474-11.824-4.171-15.998-4.171H215.05l-9.737,10.431\n    l-9.04-10.431h-2.911h-4.737h-54.93v2.089v5.493v62.651h61.19l10.054-10.057l8.715,10.057h0.698h35.258h1.598h0.696h0.692v-6.953\n    v-9.039h3.479c4.863,0,11.124,0,15.991-2.089v17.382v1.394h31.291v-1.394V317.4h1.387c2.089,0,2.089,0,2.089,2.086v14.6v1.394\n    h94.563c6.263,0,12.517-1.394,15.993-4.175v2.781v1.394h29.902c6.254,0,12.517-0.695,16.689-3.478\n    c6.402-3.841,10.437-10.64,11.037-18.749c0.028-0.24,0.063-0.48,0.085-0.721l-0.041-0.039\n    C475.087,312.043,475.105,311.598,475.105,311.144z M256.076,306.973h-13.91v2.081v4.174v4.173v7.649h-22.855l-13.302-15.299\n    l-0.046,0.051l-0.65-0.748l-15.297,15.996h-44.501v-48.673h45.197l12.348,13.525l2.596,2.832l0.352-0.365l14.604-15.991h36.852\n    c7.152,0,15.161,1.765,18.196,9.042c0.365,1.441,0.577,3.043,0.577,4.863C276.237,304.189,266.502,306.973,256.076,306.973z\n     M325.609,306.276c1.389,2.081,2.085,4.867,2.085,9.041v9.732h-11.819v-6.256c0-2.786,0-7.65-2.089-9.739\n    c-1.387-2.081-4.172-2.081-8.341-2.081H292.93v18.077h-11.82v-49.369h26.421c5.559,0,10.426,0,13.909,2.084\n    c3.474,2.088,6.254,5.565,6.254,11.128c0,7.647-4.865,11.819-8.343,13.212C322.829,303.49,324.914,304.885,325.609,306.276z\n     M373.589,286.107h-27.122v9.04h26.424v9.737h-26.424v9.736h27.122v10.429H334.65V275.68h38.939V286.107z M402.791,325.05h-22.252\n    v-10.429h22.252c2.082,0,3.476,0,4.87-1.392c0.696-0.697,1.387-2.085,1.387-3.477c0-1.394-0.691-2.778-1.387-3.475\n    c-0.698-0.695-2.091-1.391-4.176-1.391c-11.126-0.696-24.337,0-24.337-15.296c0-6.954,4.172-14.604,16.689-14.604h22.945v11.819\n    h-21.554c-2.085,0-3.478,0-4.87,0.696c-1.387,0.697-1.387,2.089-1.387,3.478c0,2.087,1.387,2.783,2.778,3.473\n    c1.394,0.697,2.783,0.697,4.172,0.697h6.259c6.259,0,10.43,1.391,13.211,4.173c2.087,2.087,3.478,5.564,3.478,10.43\n    C420.869,320.179,414.611,325.05,402.791,325.05z M462.59,320.179c-2.778,2.785-7.648,4.871-14.604,4.871H425.74v-10.429h22.245\n    c2.087,0,3.481,0,4.87-1.392c0.693-0.697,1.391-2.085,1.391-3.477c0-1.394-0.698-2.778-1.391-3.475\n    c-0.696-0.695-2.085-1.391-4.172-1.391c-11.122-0.696-24.337,0-24.337-15.295c0-6.609,3.781-12.579,13.106-14.352\n    c1.115-0.154,2.293-0.253,3.583-0.253h22.948v11.819h-15.3h-5.561h-0.696c-2.087,0-3.476,0-4.865,0.696\n    c-0.7,0.697-1.396,2.089-1.396,3.478c0,2.087,0.696,2.783,2.785,3.473c1.389,0.697,2.78,0.697,4.172,0.697h0.691h5.565\n    c3.039,0,5.337,0.375,7.44,1.114c1.926,0.697,8.302,3.549,9.728,10.994c0.124,0.78,0.215,1.594,0.215,2.495\n    C466.761,313.925,465.37,317.401,462.59,320.179z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n    &lt;symbol viewBox=&quot;0 0 512 512&quot; id=&quot;mc&quot;&gt;\n      &lt;path style=&quot;fill:#5286F9;&quot; d=&quot;M488.727,66.494H256H23.273C10.42,66.494,0,76.914,0,89.767v332.466\n  c0,12.853,10.42,23.273,23.273,23.273H256h232.727c12.853,0,23.273-10.42,23.273-23.273V89.767\n  C512,76.914,501.58,66.494,488.727,66.494z&quot;&gt;&lt;/path&gt;\n&lt;path style=&quot;fill:#FFB655;&quot; d=&quot;M273.776,189.773c5.115,5.86,9.57,12.31,13.236,19.242c7.427,14.041,11.655,30.026,11.655,46.986\n  s-4.228,32.943-11.655,46.986c-3.666,6.932-8.121,13.38-13.236,19.24c-5.264,6.031-11.23,11.427-17.776,16.069\n  c16.454,11.664,36.523,18.553,58.182,18.553c55.608,0,100.849-45.241,100.849-100.848S369.79,155.152,314.182,155.152\n  c-21.659,0-41.728,6.886-58.182,18.553C262.544,178.347,268.51,183.744,273.776,189.773z&quot;&gt;&lt;/path&gt;\n&lt;path style=&quot;fill:#D8143A;&quot; d=&quot;M287.012,209.016c-3.666-6.934-8.121-13.382-13.236-19.242c-5.267-6.031-11.231-11.425-17.776-16.066\n  c-16.452-11.667-36.523-18.553-58.182-18.553c-55.608,0-100.848,45.241-100.848,100.848s45.241,100.848,100.848,100.848\n  c21.659,0,41.73-6.887,58.182-18.553c6.546-4.641,12.51-10.038,17.776-16.067c5.115-5.86,9.57-12.31,13.236-19.24\n  c7.427-14.043,11.655-30.028,11.655-46.986C298.667,239.041,294.439,223.057,287.012,209.016z&quot;&gt;&lt;/path&gt;\n&lt;path style=&quot;fill:#3D6DEB;&quot; d=&quot;M197.818,356.851c-55.608,0-100.848-45.241-100.848-100.848s45.241-100.848,100.848-100.848\n  c21.659,0,41.728,6.886,58.182,18.553V66.494H23.273C10.42,66.494,0,76.914,0,89.767v332.466c0,12.853,10.42,23.273,23.273,23.273\n  H256v-107.21C239.546,349.962,219.477,356.851,197.818,356.851z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n    &lt;symbol viewBox=&quot;0 0 512 512&quot; id=&quot;dis&quot;&gt;\n      &lt;path style=&quot;fill:#34495E;&quot; d=&quot;M512,402.282c0,16.716-13.55,30.267-30.265,30.267H30.265C13.55,432.549,0,418.996,0,402.282V109.717\n  c0-16.716,13.55-30.266,30.265-30.266h451.469c16.716,0,30.265,13.551,30.265,30.266L512,402.282L512,402.282z&quot;&gt;&lt;/path&gt;\n&lt;path style=&quot;opacity:0.15;fill:#202121;enable-background:new    ;&quot; d=&quot;M21.517,402.282V109.717\n  c0-16.716,13.552-30.266,30.267-30.266h-21.52C13.55,79.451,0,93.003,0,109.717v292.565c0,16.716,13.55,30.267,30.265,30.267h21.52\n  C35.07,432.549,21.517,418.996,21.517,402.282z&quot;&gt;&lt;/path&gt;\n&lt;path style=&quot;fill:#F26E21;&quot; d=&quot;M309.389,255.801c0.041-9.636-3.572-19.286-10.843-26.558c-7.287-7.287-16.961-10.897-26.617-10.839\n  c-0.046,0-0.091-0.003-0.139-0.003c-20.968,0-37.6,16.628-37.6,37.602c0,20.767,16.837,37.599,37.6,37.599\n  c20.974,0,37.604-16.631,37.604-37.599C309.394,255.934,309.389,255.869,309.389,255.801z&quot;&gt;&lt;/path&gt;\n  &lt;path style=&quot;fill:#E7E8E3;&quot; d=&quot;M227.198,271.909c-5.62,5.626-10.807,7.824-16.394,7.943c-13.611-0.122-23.618-10.202-23.618-24.573\n    c0-7.234,2.739-13.163,7.078-18.228l0,0c4.069-3.863,9.311-6.359,15.339-6.359c6.507,0,11.571,2.169,17.352,7.954v-16.631\n    c-5.78-2.891-10.846-4.338-17.352-4.338c-9.192,0.657-17.859,4.371-24.507,10.203l0,0c-1.916,1.724-3.752,3.627-5.309,5.805\n    c-4.856,6.294-7.791,14.001-7.791,22.32c0,20.967,16.637,36.875,37.606,36.875c0.102,0,0.203-0.009,0.302-0.01\n    c0.141,0.002,0.28,0.01,0.42,0.01c5.784,0,10.85-1.443,17.357-4.336L227.198,271.909c-0.244,0.244,0.242,0.471,0,0.702V271.909z&quot;&gt;&lt;/path&gt;\n  &lt;polygon style=&quot;fill:#E7E8E3;&quot; points=&quot;356.863,228.033 356.863,228.033 340.487,268.295 321.685,220.566 306.502,220.566\n    336.148,293.601 344.102,293.601 375.196,220.566 360.013,220.566   &quot;&gt;&lt;/polygon&gt;\n  &lt;polygon style=&quot;fill:#E7E8E3;&quot; points=&quot;380.983,252.384 380.983,291.435 420.033,291.435 420.753,291.435 420.753,279.861\n    408.461,279.861 395.445,279.861 395.445,266.848 395.445,260.342 420.033,260.342 420.033,248.045 395.445,248.045 \n    395.445,232.861 420.753,232.861 420.753,220.566 380.983,220.566   &quot;&gt;&lt;/polygon&gt;\n  &lt;path style=&quot;fill:#E7E8E3;&quot; d=&quot;M54.135,220.566H33.884v70.869h20.25c10.845,0,18.798-2.895,25.306-7.957\n    c7.953-6.508,13.017-16.629,13.017-27.474C92.458,235.028,77.27,220.566,54.135,220.566z M70.765,274.08\n    c-4.339,3.614-10.124,5.781-18.802,5.781h-4.339V232.86h3.615c8.678,0,14.463,1.446,18.803,5.783\n    c5.061,4.336,7.955,10.848,7.955,17.358C78.72,262.509,75.828,269.737,70.765,274.08z&quot;&gt;&lt;/path&gt;\n  &lt;rect x=&quot;98.97&quot; y=&quot;220.56&quot; style=&quot;fill:#E7E8E3;&quot; width=&quot;13.739&quot; height=&quot;70.867&quot;&gt;&lt;/rect&gt;\n  &lt;path style=&quot;fill:#E7E8E3;&quot; d=&quot;M147.415,248.045c-8.676-2.892-10.848-5.063-10.848-8.677c0-4.339,4.339-7.954,10.124-7.954\n    c4.339,0,7.954,1.447,11.57,5.786l7.233-9.4c-5.787-5.064-13.015-7.953-20.97-7.953c-12.296,0-22.42,8.678-22.42,20.244\n    c0,10.126,4.343,14.464,17.357,19.526c5.785,2.166,7.955,2.892,9.404,4.338c2.887,1.444,4.336,4.339,4.336,7.228\n    c0,5.786-4.336,10.126-10.848,10.126c-6.514,0-12.294-3.615-15.187-9.401l-8.678,8.678c6.511,9.4,14.465,13.738,24.589,13.738\n    c14.461,0,24.58-9.4,24.58-23.141C167.659,258.893,163.324,253.831,147.415,248.045z&quot;&gt;&lt;/path&gt;\n  &lt;path style=&quot;fill:#E7E8E3;&quot; d=&quot;M459.804,261.783c10.843-2.166,16.63-9.4,16.63-20.244c0-13.014-9.402-20.973-25.308-20.973h-20.972\n    v70.869h13.739V263.23h2.172l19.519,28.205h16.634L459.804,261.783z M448.23,253.105h-4.336v-21.691h4.336\n    c8.678,0,13.742,3.614,13.742,10.85C461.972,249.492,456.909,253.105,448.23,253.105z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n    &lt;symbol viewBox=&quot;0 0 512 512&quot; id=&quot;visa&quot;&gt;\n      &lt;path style=&quot;fill:#FFFFFF;&quot; d=&quot;M512,402.281c0,16.716-13.55,30.267-30.265,30.267H30.265C13.55,432.549,0,418.997,0,402.281V109.717\n  c0-16.716,13.55-30.266,30.265-30.266h451.47c16.716,0,30.265,13.551,30.265,30.266V402.281L512,402.281z&quot;&gt;&lt;/path&gt;\n&lt;path style=&quot;fill:#F79F1A;&quot; d=&quot;M113.64,258.035l-12.022-57.671c-2.055-7.953-8.035-10.319-15.507-10.632H30.993l-0.491,2.635\n  C73.431,202.774,101.836,227.88,113.64,258.035z&quot;&gt;&lt;/path&gt;\n  &lt;polygon style=&quot;fill:#059BBF;&quot; points=&quot;241.354,190.892 205.741,190.892 183.499,321.419 219.053,321.419  &quot;&gt;&lt;/polygon&gt;\n  &lt;path style=&quot;fill:#059BBF;&quot; d=&quot;M135.345,321.288l56.01-130.307h-37.691l-34.843,89.028l-3.719-13.442\n    c-6.83-16.171-26.35-39.446-49.266-54.098l31.85,108.863L135.345,321.288z&quot;&gt;&lt;/path&gt;\n  &lt;path style=&quot;fill:#059BBF;&quot; d=&quot;M342.931,278.75c0.132-14.819-9.383-26.122-29.887-35.458c-12.461-6.03-20.056-10.051-19.965-16.17\n    c0-5.406,6.432-11.213,20.368-11.213c11.661-0.179,20.057,2.367,26.624,5.003l3.218,1.475l4.826-28.277\n    c-7.059-2.637-18.094-5.451-31.895-5.451c-35.157,0-59.904,17.691-60.128,43.064c-0.224,18.763,17.692,29.216,31.181,35.469\n    c13.847,6.374,18.493,10.453,18.404,16.171c-0.089,8.743-11.035,12.73-21.264,12.73c-14.25,0-21.8-1.965-33.509-6.843l-4.55-2.09\n    l-4.998,29.249c8.303,3.629,23.668,6.801,39.618,6.933C318.361,323.342,342.663,305.876,342.931,278.75z&quot;&gt;&lt;/path&gt;\n  &lt;path style=&quot;fill:#059BBF;&quot; d=&quot;M385.233,301.855c4.065,0,40.382,0.045,45.566,0.045c1.072,4.545,4.333,19.565,4.333,19.565h33.011\n    L439.33,191.027h-27.472c-8.533,0-14.874,2.323-18.628,10.809l-52.845,119.629h37.392\n    C377.774,321.465,383.848,305.386,385.233,301.855z M409.622,238.645c-0.176,0.357,2.95-7.549,4.737-12.463l2.411,11.256\n    c0,0,6.792,31.182,8.22,37.704h-29.528C398.411,267.638,409.622,238.645,409.622,238.645z&quot;&gt;&lt;/path&gt;\n  &lt;path style=&quot;fill:#059BBF;&quot; d=&quot;M481.735,79.451H30.265C13.55,79.451,0,93.001,0,109.717v31.412h512v-31.412\n    C512,93.001,498.451,79.451,481.735,79.451z&quot;&gt;&lt;/path&gt;\n&lt;path style=&quot;fill:#F79F1A;&quot; d=&quot;M481.735,432.549H30.265C13.55,432.549,0,418.998,0,402.283v-31.412h512v31.412\n  C512,418.998,498.451,432.549,481.735,432.549z&quot;&gt;&lt;/path&gt;\n&lt;path style=&quot;opacity:0.15;fill:#202121;enable-background:new    ;&quot; d=&quot;M21.517,402.281V109.717\n  c0-16.716,13.551-30.266,30.267-30.266h-21.52C13.55,79.451,0,93.001,0,109.717v292.565c0,16.716,13.55,30.267,30.265,30.267h21.52\n  C35.069,432.549,21.517,418.997,21.517,402.281z&quot;&gt;&lt;/path&gt;\n    &lt;/symbol&gt;\n    &lt;symbol id=&quot;location&quot; viewBox=&quot;0 0 512 512&quot;&gt;\n    &lt;path d=&quot;M256,0C161.896,0,85.333,76.563,85.333,170.667c0,28.25,7.063,56.26,20.49,81.104L246.667,506.5\n      c1.875,3.396,5.448,5.5,9.333,5.5s7.458-2.104,9.333-5.5l140.896-254.813c13.375-24.76,20.438-52.771,20.438-81.021\n      C426.667,76.563,350.104,0,256,0z M256,256c-47.052,0-85.333-38.281-85.333-85.333c0-47.052,38.281-85.333,85.333-85.333\n      s85.333,38.281,85.333,85.333C341.333,217.719,303.052,256,256,256z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n  &lt;symbol id=&quot;phonef&quot; viewBox=&quot;0 0 365.449 365.449&quot;&gt;\n    &lt;path d=&quot;M281.507,10.85C274.279,3.614,265.71,0,255.813,0H109.637c-9.9,0-18.464,3.617-25.697,10.85\n    c-7.233,7.229-10.85,15.796-10.85,25.693v292.361c0,9.896,3.617,18.462,10.85,25.693c7.233,7.234,15.797,10.852,25.697,10.852\n    h146.176c9.896,0,18.466-3.621,25.693-10.852c7.234-7.231,10.852-15.797,10.852-25.693V36.543\n    C292.358,26.646,288.745,18.083,281.507,10.85z M159.885,36.543h45.685c3.046,0,4.565,1.523,4.565,4.569\n    c0,3.045-1.52,4.57-4.565,4.57h-45.685c-3.045,0-4.568-1.525-4.568-4.57C155.316,38.066,156.839,36.543,159.885,36.543z\n     M198.861,345.036c-4.476,4.469-9.852,6.707-16.135,6.707c-6.28,0-11.656-2.238-16.13-6.707c-4.474-4.477-6.711-9.856-6.711-16.132\n    c0-6.283,2.24-11.66,6.711-16.133c4.471-4.469,9.851-6.714,16.13-6.714c6.284,0,11.66,2.245,16.135,6.714\n    c4.473,4.473,6.708,9.85,6.708,16.133S203.331,340.56,198.861,345.036z M264.954,283.225c0,2.471-0.903,4.62-2.714,6.424\n    c-1.813,1.807-3.949,2.707-6.42,2.707H109.637c-2.474,0-4.615-0.903-6.423-2.707s-2.712-3.953-2.712-6.424V82.229\n    c0-2.474,0.903-4.617,2.712-6.423c1.809-1.805,3.949-2.714,6.423-2.714h146.176c2.478,0,4.616,0.905,6.427,2.714\n    c1.811,1.807,2.71,3.949,2.71,6.423v200.995H264.954z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n  &lt;symbol id=&quot;time&quot; viewBox=&quot;0 0 611.999 611.999&quot;&gt;\n   &lt;path id=&quot;Fax_1_&quot; d=&quot;M587.02,125.52c-24.98,0-49.959,0-74.939,0c0-22.482,0-44.963,0-67.445c0-13.796-11.183-24.98-24.98-24.98\n    c-120.735,0-241.469,0-362.204,0c-13.796,0-24.98,11.183-24.98,24.98c0,22.482,0,44.963,0,67.445c-24.98,0-49.959,0-74.939,0\n    C11.183,125.52,0,136.704,0,150.5c0,81.6,0,163.2,0,244.8c0,13.796,11.183,24.98,24.98,24.98c24.98,0,49.959,0,74.939,0\n    c0,29.496,0,58.992,0,88.489c0,14.386,0,28.771,0,43.157c0,8.328,1.684,14.541,8.121,20.428c2.998,2.742,6.199,4.52,10.109,5.618\n    c3.621,1.015,7.2,0.929,10.86,0.929c58.997,0,117.994,0,176.99,0s117.994,0,176.99,0c3.662,0,7.244,0.086,10.867-0.93\n    c3.913-1.099,7.117-2.881,10.114-5.627c6.438-5.895,8.11-12.118,8.11-20.447c0-14.393,0-28.788,0-43.181\n    c0-29.478,0-58.957,0-88.435c24.98,0,49.959,0,74.939,0c13.796,0,24.98-11.183,24.98-24.98c0-81.6,0-163.2,0-244.8\n    C612,136.705,600.817,125.52,587.02,125.52z M62.449,213.573c-12.071,0-21.857-9.786-21.857-21.857s9.786-21.857,21.857-21.857\n    s21.857,9.786,21.857,21.857S74.52,213.573,62.449,213.573z M487.102,553.92H124.898V356.582h362.204V553.92z M487.102,125.52\n    c-120.735,0-241.469,0-362.204,0c0-14.155,0-28.311,0-42.465c0-13.796,11.183-24.98,24.98-24.98c104.081,0,208.164,0,312.245,0\n    c13.796,0,24.98,11.183,24.98,24.98C487.102,97.211,487.102,111.366,487.102,125.52z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n  &lt;symbol id=&quot;femail&quot; viewBox=&quot;0 0 511.626 511.626&quot;&gt;\n    &lt;path d=&quot;M49.106,178.729c6.472,4.567,25.981,18.131,58.528,40.685c32.548,22.554,57.482,39.92,74.803,52.099\n      c1.903,1.335,5.946,4.237,12.131,8.71c6.186,4.476,11.326,8.093,15.416,10.852c4.093,2.758,9.041,5.852,14.849,9.277\n      c5.806,3.422,11.279,5.996,16.418,7.7c5.14,1.718,9.898,2.569,14.275,2.569h0.287h0.288c4.377,0,9.137-0.852,14.277-2.569\n      c5.137-1.704,10.615-4.281,16.416-7.7c5.804-3.429,10.752-6.52,14.845-9.277c4.093-2.759,9.229-6.376,15.417-10.852\n      c6.184-4.477,10.232-7.375,12.135-8.71c17.508-12.179,62.051-43.11,133.615-92.79c13.894-9.703,25.502-21.411,34.827-35.116\n      c9.332-13.699,13.993-28.07,13.993-43.105c0-12.564-4.523-23.319-13.565-32.264c-9.041-8.947-19.749-13.418-32.117-13.418H45.679\n      c-14.655,0-25.933,4.948-33.832,14.844C3.949,79.562,0,91.934,0,106.779c0,11.991,5.236,24.985,15.703,38.974\n      C26.169,159.743,37.307,170.736,49.106,178.729z&quot;&gt;&lt;/path&gt;\n    &lt;path d=&quot;M483.072,209.275c-62.424,42.251-109.824,75.087-142.177,98.501c-10.849,7.991-19.65,14.229-26.409,18.699\n      c-6.759,4.473-15.748,9.041-26.98,13.702c-11.228,4.668-21.692,6.995-31.401,6.995h-0.291h-0.287\n      c-9.707,0-20.177-2.327-31.405-6.995c-11.228-4.661-20.223-9.229-26.98-13.702c-6.755-4.47-15.559-10.708-26.407-18.699\n      c-25.697-18.842-72.995-51.68-141.896-98.501C17.987,202.047,8.375,193.762,0,184.437v226.685c0,12.57,4.471,23.319,13.418,32.265\n      c8.945,8.949,19.701,13.422,32.264,13.422h420.266c12.56,0,23.315-4.473,32.261-13.422c8.949-8.949,13.418-19.694,13.418-32.265\n      V184.437C503.441,193.569,493.927,201.854,483.072,209.275z&quot;&gt;&lt;/path&gt;\n  &lt;/symbol&gt;\n  &lt;/svg&gt;\n&lt;body&gt;\n  &lt;header&gt;\n&lt;div class=&quot;toppati hidden-xs&quot;&gt;\n  &lt;div class=&quot;container&quot;&gt;\n    &lt;div class=&quot;row&quot;&gt;\n      &lt;div class=&quot;col-sm-5 col-xs-12&quot;&gt;\n          &lt;li class=&quot;xsla d-inline-block&quot;&gt;{{ currency }}&lt;/li&gt;&lt;li class=&quot;xscu d-inline-block&quot;&gt;{{ language }}&lt;/li&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;col-sm-7 col-xs-12 text-right&quot;&gt;\n        &lt;ul class=&quot;toppatiu&quot;&gt;\n            &lt;li class=&quot;dropdown inuser d-inline-block&quot;&gt;\n              &lt;a href=&quot;{{ account }}&quot; title=&quot;{{ text_account }}&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;\n                &lt;div class=&quot;usvg d-inline-block&quot;&gt;\n                    &lt;svg class=&quot;d-inline-block&quot; width=&quot;20px&quot; height=&quot;20px&quot;&gt;&lt;use xlink:href=&quot;#huser&quot;&gt;&lt;/use&gt;&lt;/svg&gt;\n                    &lt;span class=&quot;hidden-xs userdess&quot;&gt;{{ text_account }} &lt;i class=&quot;fa fa-angle-down hidden-xs&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                   {# &lt;div class=&quot;hdis text-left nav-link hidden-xs d-inline-block&quot;&gt;\n                    &lt;span class=&quot;hidden-sm-down userdess&quot;&gt;{{ text_account }}&lt;/span&gt;&lt;br class=&quot;hidden-md-down&quot;&gt;\n                    &lt;span&gt;{% if logged %}&lt;span id=&quot;cartme&quot;&gt;{{ text_logout }}&lt;/span&gt;{% else %}&lt;span id=&quot;cartme&quot;&gt;{{ text_register }}&lt;/span&gt;{% endif %}&lt;/span&gt;\n                &lt;/div&gt; #}\n              &lt;/div&gt;{# &lt;i class=&quot;fa fa-angle-down hidden-xs&quot;&gt;&lt;/i&gt; #}\n            &lt;/a&gt;\n              &lt;ul class=&quot;dropdown-menu dropdown-menu-right user-down haccount {% if logged %} alogin {% else %} hlogout {% endif %}&quot;&gt;\n                {% if logged %}\n                &lt;li&gt;&lt;a href=&quot;{{ account }}&quot;&gt;&lt;svg class=&quot;&quot; width=&quot;16px&quot; height=&quot;16px&quot;&gt; &lt;use xlink:href=&quot;#acprofile&quot;&gt;&lt;/use&gt; &lt;/svg&gt;{{ text_account }}&lt;/a&gt;&lt;/li&gt;\n                &lt;li&gt;&lt;a href=&quot;{{ order }}&quot;&gt;&lt;svg class=&quot;&quot; width=&quot;16px&quot; height=&quot;16px&quot;&gt; &lt;use xlink:href=&quot;#acorder&quot;&gt;&lt;/use&gt; &lt;/svg&gt;{{ text_order }}&lt;/a&gt;&lt;/li&gt;\n                &lt;li&gt;&lt;a href=&quot;{{ transaction }}&quot;&gt;&lt;svg class=&quot;&quot; width=&quot;16px&quot; height=&quot;16px&quot;&gt; &lt;use xlink:href=&quot;#actranse&quot;&gt;&lt;/use&gt; &lt;/svg&gt;{{ text_transaction }}&lt;/a&gt;&lt;/li&gt;\n                &lt;li&gt;&lt;a href=&quot;{{ download }}&quot;&gt;&lt;svg class=&quot;&quot; width=&quot;16px&quot; height=&quot;16px&quot;&gt; &lt;use xlink:href=&quot;#acdownload&quot;&gt;&lt;/use&gt; &lt;/svg&gt;{{ text_download }}&lt;/a&gt;&lt;/li&gt;\n                &lt;li class=&quot;hidden-sm hidden-lg hidden-md wishcom&quot;&gt;&lt;a href=&quot;{{ compare }}&quot;&gt;&lt;svg class=&quot;&quot; width=&quot;16px&quot; height=&quot;16px&quot;&gt; &lt;use xlink:href=&quot;#compare&quot;&gt;&lt;/use&gt; &lt;/svg&gt;{{ text_comparepro }}&lt;/a&gt;&lt;/li&gt;\n              &lt;li class=&quot;hidden-sm hidden-lg hidden-md wishcom&quot;&gt;&lt;a href=&quot;{{ wishlist }}&quot; id=&quot;wishlist-total&quot; title=&quot;{{ text_wishlist }}&quot;&gt;&lt;svg class=&quot;&quot; width=&quot;16px&quot; height=&quot;16px&quot;&gt; &lt;use xlink:href=&quot;#heart&quot;&gt;&lt;/use&gt; &lt;/svg&gt;{{ text_wishlist }}&lt;/a&gt;&lt;/li&gt;\n                &lt;li&gt;&lt;a href=&quot;{{ logout }}&quot;&gt;&lt;svg class=&quot;&quot; width=&quot;16px&quot; height=&quot;16px&quot;&gt; &lt;use xlink:href=&quot;#aclogout&quot;&gt;&lt;/use&gt; &lt;/svg&gt;{{ text_logout }}&lt;/a&gt;&lt;/li&gt;\n                {% else %}\n                &lt;h5 class=&quot;text-left&quot;&gt;Your Account&lt;/h5&gt;\n                &lt;h6 class=&quot;text-left&quot;&gt;Access account and manage orders&lt;/h6&gt;\n                &lt;li class=&quot;hidden-sm hidden-lg hidden-md wishcom&quot;&gt;&lt;a href=&quot;{{ wishlist }}&quot; id=&quot;wishlist-total&quot; title=&quot;{{ text_wishlist }}&quot;&gt;&lt;svg class=&quot;&quot; width=&quot;16px&quot; height=&quot;16px&quot;&gt; &lt;use xlink:href=&quot;#heart&quot;&gt;&lt;/use&gt; &lt;/svg&gt;{{ text_wishlist }}&lt;/a&gt;&lt;/li&gt;&lt;li class=&quot;hidden-sm hidden-lg hidden-md wishcom&quot;&gt;&lt;a href=&quot;{{ compare }}&quot;&gt;&lt;svg class=&quot;&quot; width=&quot;16px&quot; height=&quot;16px&quot;&gt; &lt;use xlink:href=&quot;#compare&quot;&gt;&lt;/use&gt; &lt;/svg&gt;{{ text_comparepro }}&lt;/a&gt;&lt;/li&gt;\n                &lt;li class=&quot;acd&quot;&gt;&lt;a href=&quot;{{ register }}&quot;&gt;&lt;i class=&quot;fa fa-user-plus&quot;&gt;&lt;/i&gt; {{ text_register }}&lt;/a&gt;&lt;/li&gt;&lt;li class=&quot;acd&quot;&gt;&lt;a href=&quot;{{ login }}&quot;&gt;&lt;i class=&quot;fa fa-lock&quot;&gt;&lt;/i&gt; {{ text_login }}&lt;/a&gt;&lt;/li&gt;\n                {% endif %}\n                \n            &lt;/ul&gt;\n            &lt;/li&gt;\n             &lt;li class=&quot;xsw&quot;&gt;&lt;a class=&quot;topbe&quot; href=&quot;{{ wishlist }}&quot; id=&quot;wishlist-total&quot; title=&quot;{{ text_wishlist }}&quot;&gt;&lt;svg width=&quot;17px&quot; height=&quot;17px&quot;&gt; &lt;use xlink:href=&quot;#hwish&quot;&gt;&lt;/use&gt; &lt;/svg&gt; &lt;span&gt;{{ text_wishlist }}&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\n            &lt;li class=&quot;xsc&quot;&gt;&lt;a class=&quot;topbe&quot; href=&quot;{{ compare }}&quot;&gt;&lt;svg width=&quot;15px&quot; height=&quot;14px&quot;&gt; &lt;use xlink:href=&quot;#hcom&quot;&gt;&lt;/use&gt;&lt;/svg&gt; {{ text_comparepro }}&lt;/a&gt;&lt;/li&gt;\n          &lt;/ul&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;hsticky&quot;&gt;\n  &lt;div class=&quot;container&quot;&gt;\n    &lt;div class=&quot;row hbottom&quot;&gt;\n      &lt;div class=&quot;hidden-sm hidden-md hidden-lg hidden-xl appmenu&quot;&gt;&lt;/div&gt;\n        &lt;div id=&quot;logo&quot; class=&quot;col-lg-2 col-md-2 col-sm-4 col-xs-7&quot;&gt;{% if logo %}&lt;a href=&quot;{{ home }}&quot;&gt;&lt;img src=&quot;{{ logo }}&quot; title=&quot;{{ name }}&quot; alt=&quot;{{ name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;{% else %}\n          &lt;h1&gt;&lt;a href=&quot;{{ home }}&quot;&gt;{{ name }}&lt;/a&gt;&lt;/h1&gt;\n          {% endif %}\n        &lt;/div&gt;\n        &lt;div class=&quot;col-xs-5 col-sm-1 hidden-sm hidden-md hidden-lg hidden-xl appcart text-right&quot;&gt;&lt;/div&gt;\n        &lt;div class=&quot;col-lg-7 col-md-7 col-sm-8 col-xs-12 headsearch&quot;&gt;{{ search }}&lt;/div&gt;\n        &lt;div class=&quot;col-lg-3 col-md-3 col-sm-2 hidden-sm hidden-xs xscartp text-right&quot;&gt;\n          &lt;div class=&quot;top-ri&quot;&gt;\n            &lt;div id=&quot;top-links&quot; class=&quot;nav d-inline-block hidden-xs&quot;&gt;&lt;svg width=&quot;34px&quot; height=&quot;34px&quot;&gt; &lt;use xlink:href=&quot;#hcall&quot;&gt;&lt;/use&gt;&lt;/svg&gt;\n              &lt;div class=&quot;hdis text-left nav-link&quot;&gt;\n                &lt;ul&gt;\n                  &lt;li class=&quot;get&quot;&gt;call us now :&lt;/li&gt;\n                  &lt;li class=&quot;callno&quot;&gt;+91(0123-456-789)&lt;/li&gt;\n                &lt;/ul&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n            &lt;div id=&quot;top-links1&quot; class=&quot;nav d-inline-block hidden-xs&quot;&gt;&lt;svg width=&quot;34px&quot; height=&quot;34px&quot;&gt; &lt;use xlink:href=&quot;#hmail&quot;&gt;&lt;/use&gt;&lt;/svg&gt;\n              &lt;div class=&quot;hdis text-left nav-link&quot;&gt;\n                &lt;ul&gt;\n                  &lt;li class=&quot;get1&quot;&gt;email :&lt;/li&gt;\n                  &lt;li class=&quot;callno1&quot;&gt;info@company.com&lt;/li&gt;\n                &lt;/ul&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt; \n          \n      &lt;/div&gt;\n        &lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  &lt;div class=&quot;linkback&quot;&gt;\n    &lt;div class=&quot;container&quot;&gt;\n        &lt;div class=&quot;row linkmenu&quot;&gt;\n            &lt;div class=&quot;hidden-lg hidden-md hidden-sm&quot;&gt;{{ menu }}&lt;/div&gt;\n            &lt;div class=&quot;col-xs-12 col-sm-4 col-md-3 col-lg-2 menuwidth hidden-xs&quot;&gt;&lt;/div&gt;\n            &lt;div class=&quot;col-xs-12 col-sm-8 col-md-9 col-lg-10 full-con manun&quot;&gt;\n            &lt;ul class=&quot;list-inline d-inline-block hidden-xs&quot;&gt;\n                &lt;li&gt;&lt;a href=&quot;{{ special }}&quot;&gt;specials&lt;/a&gt;&lt;/li&gt;                 \n                &lt;li&gt;&lt;a href=&quot;{{ contact }}&quot;&gt;contact&lt;/a&gt;&lt;/li&gt;\n                &lt;li&gt;&lt;a href=&quot;{{ sitemap }}&quot;&gt;sitemap&lt;/a&gt;&lt;/li&gt;\n                &lt;li&gt;&lt;a href=&quot;{{ brand }}&quot;&gt;Brand&lt;/a&gt;&lt;/li&gt;\n                &lt;li&gt;&lt;a href=&quot;{{ return }}&quot;&gt;returns&lt;/a&gt;&lt;/li&gt;\n            &lt;/ul&gt;\n            {{ cart }}\n            &lt;/div&gt;\n        &lt;/div&gt;\n\n    &lt;/div&gt;\n  &lt;/div&gt;\n&lt;/header&gt;', '2019-09-04 11:46:14');
INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(148, 0, 'default', 'common/cart', '&lt;div id=&quot;cart&quot; class=&quot;btn-group text-left pull-right d-inline-block&quot;&gt;\n  &lt;button type=&quot;button&quot; data-toggle=&quot;dropdown&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;dropdown-toggle&quot;&gt;\n    &lt;svg width=&quot;32px&quot; height=&quot;32px&quot;&gt;&lt;use xlink:href=&quot;#hcart&quot;&gt;&lt;/use&gt;&lt;/svg&gt; &lt;span id=&quot;cart-total&quot;&gt;{{ text_items }}&lt;/span&gt;&lt;/button&gt;\n  &lt;ul class=&quot;dropdown-menu pull-right&quot;&gt;\n    {% if products or vouchers %}\n    &lt;li&gt;\n      &lt;div&gt;\n        {% for product in products %}\n        &lt;div class=&quot; col-xs-12 cartdrop&quot;&gt;\n          &lt;div class=&quot;pull-left&quot;&gt;{% if product.thumb %} &lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-thumbnail&quot; /&gt;&lt;/a&gt; {% endif %}&lt;/div&gt;\n          &lt;div class=&quot;pull-left cartname&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt; {% if product.option %}\n           \n            {% endif %}\n            {% if product.recurring %} &lt;br /&gt;\n            - &lt;small&gt;{{ text_recurring }} {{ product.recurring }}&lt;/small&gt; {% endif %}\n          &lt;/div&gt;\n           &lt;div class=&quot;pull-right&quot;&gt;&lt;button type=&quot;button&quot; onclick=&quot;cart.remove(\'{{ product.cart_id }}\');&quot; title=&quot;{{ button_remove }}&quot; class=&quot;btn btn-danger btn-xs&quot;&gt;&lt;i class=&quot;fa fa-times&quot;&gt;&lt;/i&gt;&lt;/button&gt;&lt;/div&gt;\n\n          &lt;div class=&quot;cartprice&quot;&gt;\n            &lt;span&gt;{{ product.quantity }} x&lt;/span&gt;\n            &lt;span&gt;{{ product.total }}&lt;/span&gt;\n          &lt;/div&gt;\n         \n        &lt;/div&gt;\n\n\n        {% endfor %}\n        {% for voucher in vouchers %}\n        &lt;tr&gt;\n          &lt;td class=&quot;text-center&quot;&gt;&lt;/td&gt;\n          &lt;td class=&quot;text-left&quot;&gt;{{ voucher.description }}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;x&amp;nbsp;1&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ voucher.amount }}&lt;/td&gt;\n          &lt;td class=&quot;text-center text-danger&quot;&gt;&lt;button type=&quot;button&quot; onclick=&quot;voucher.remove(\'{{ voucher.key }}\');&quot; title=&quot;{{ button_remove }}&quot; class=&quot;btn btn-danger btn-xs&quot;&gt;&lt;i class=&quot;fa fa-times&quot;&gt;&lt;/i&gt;&lt;/button&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n        {% endfor %}\n      &lt;/div&gt;\n    &lt;/li&gt;\n    &lt;li&gt;\n      &lt;div&gt;\n        &lt;table class=&quot;table table-bordered&quot;&gt;\n          {% for total in totals %}\n          &lt;tr&gt;\n            &lt;td class=&quot;text-right&quot;&gt;&lt;strong&gt;{{ total.title }}&lt;/strong&gt;&lt;/td&gt;\n            &lt;td class=&quot;text-right&quot;&gt;{{ total.text }}&lt;/td&gt;\n          &lt;/tr&gt;\n          {% endfor %}\n        &lt;/table&gt;\n        &lt;p class=&quot;text-center cartbt&quot;&gt;&lt;a href=&quot;{{ cart }}&quot; class=&quot;btn btn-primary&quot;&gt;{{ text_cart }}&lt;/a&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;{{ checkout }}&quot; class=&quot;btn btn-primary&quot;&gt;{{ text_checkout }}&lt;/a&gt;&lt;/p&gt;\n      &lt;/div&gt;\n    &lt;/li&gt;\n    {% else %}\n    &lt;li&gt;\n      &lt;p class=&quot;text-center&quot;&gt;{{ text_empty }}&lt;/p&gt;\n    &lt;/li&gt;\n    {% endif %}\n  &lt;/ul&gt;\n&lt;/div&gt;\n', '2019-08-31 16:16:27');

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
(1, 1, 'admin', 'f5fab119b0e0fbccac7aec9421efb5fc087e0c48', 'U1mXSwg2Z', 'John', 'Doe', 'my.try172@gmail.com', '', '', '::1', 1, '2019-08-31 06:01:02');

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
(1, 'Administrator', '{"access":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/developer","common\\/filemanager","common\\/profile","common\\/security","customer\\/custom_field","customer\\/customer","customer\\/customer_approval","customer\\/customer_group","design\\/banner","design\\/layout","design\\/theme","design\\/translation","design\\/seo_url","event\\/statistics","event\\/theme","extension\\/advertise\\/google","extension\\/analytics\\/google","extension\\/captcha\\/basic","extension\\/captcha\\/google","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/extension\\/advertise","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/menu","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/report","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/marketing\\/remarketing","extension\\/module\\/account","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/module\\/pp_braintree_button","extension\\/payment\\/pp_braintree","extension\\/report\\/customer_activity","extension\\/report\\/customer_order","extension\\/report\\/customer_reward","extension\\/report\\/customer_search","extension\\/report\\/customer_transaction","extension\\/report\\/marketing","extension\\/report\\/product_purchased","extension\\/report\\/product_viewed","extension\\/report\\/sale_coupon","extension\\/report\\/sale_order","extension\\/report\\/sale_return","extension\\/report\\/sale_shipping","extension\\/report\\/sale_tax","extension\\/shipping\\/auspost","extension\\/shipping\\/ec_ship","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/theme\\/default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","mail\\/affiliate","mail\\/customer","mail\\/forgotten","mail\\/return","mail\\/reward","mail\\/transaction","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","marketplace\\/api","marketplace\\/event","marketplace\\/extension","marketplace\\/install","marketplace\\/installer","marketplace\\/marketplace","marketplace\\/modification","marketplace\\/openbay","report\\/online","report\\/report","report\\/statistics","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/latest","extension\\/module\\/bestseller","extension\\/module\\/categorynew","extension\\/module\\/bannerservice","extension\\/module\\/html","extension\\/module\\/special","extension\\/module\\/blogger","extension\\/module\\/newslettersubscribe","extension\\/module\\/filter","extension\\/module\\/ocproduct","extension\\/module\\/onsaleproduct","extension\\/module\\/webinewsletter","extension\\/module\\/imgbanner","extension\\/module\\/offerbanner","extension\\/module\\/ocproduct","extension\\/module\\/onsaleproduct"],"modify":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/developer","common\\/filemanager","common\\/profile","common\\/security","customer\\/custom_field","customer\\/customer","customer\\/customer_approval","customer\\/customer_group","design\\/banner","design\\/layout","design\\/theme","design\\/translation","design\\/seo_url","event\\/statistics","event\\/theme","extension\\/advertise\\/google","extension\\/analytics\\/google","extension\\/captcha\\/basic","extension\\/captcha\\/google","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/extension\\/advertise","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/menu","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/report","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/marketing\\/remarketing","extension\\/module\\/account","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/module\\/pp_braintree_button","extension\\/payment\\/pp_braintree","extension\\/report\\/customer_activity","extension\\/report\\/customer_order","extension\\/report\\/customer_reward","extension\\/report\\/customer_search","extension\\/report\\/customer_transaction","extension\\/report\\/marketing","extension\\/report\\/product_purchased","extension\\/report\\/product_viewed","extension\\/report\\/sale_coupon","extension\\/report\\/sale_order","extension\\/report\\/sale_return","extension\\/report\\/sale_shipping","extension\\/report\\/sale_tax","extension\\/shipping\\/auspost","extension\\/shipping\\/ec_ship","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/theme\\/default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","mail\\/affiliate","mail\\/customer","mail\\/forgotten","mail\\/return","mail\\/reward","mail\\/transaction","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","marketplace\\/event","marketplace\\/api","marketplace\\/extension","marketplace\\/install","marketplace\\/installer","marketplace\\/marketplace","marketplace\\/modification","marketplace\\/openbay","report\\/online","report\\/report","report\\/statistics","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/latest","extension\\/module\\/bestseller","extension\\/module\\/categorynew","extension\\/module\\/bannerservice","extension\\/module\\/html","extension\\/module\\/special","extension\\/module\\/blogger","extension\\/module\\/newslettersubscribe","extension\\/module\\/filter","extension\\/module\\/ocproduct","extension\\/module\\/onsaleproduct","extension\\/module\\/webinewsletter","extension\\/module\\/imgbanner","extension\\/module\\/offerbanner","extension\\/module\\/ocproduct","extension\\/module\\/onsaleproduct"]}'),
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
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_webinewsletter_draft`
--

CREATE TABLE `oc_webinewsletter_draft` (
  `draft_id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT '0',
  `to` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_webinewsletter_email`
--

CREATE TABLE `oc_webinewsletter_email` (
  `email_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `attach` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `defined` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `latest` varchar(255) DEFAULT NULL,
  `popular` varchar(255) DEFAULT NULL,
  `defined_categories` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `defined_products` varchar(255) DEFAULT NULL,
  `defined_products_more` varchar(255) DEFAULT NULL,
  `only_selected_language` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `to` varchar(200) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_webinewsletter_history`
--

CREATE TABLE `oc_webinewsletter_history` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `public_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `subject` text,
  `message` text,
  `date_added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_webinewsletter_subscribe`
--

CREATE TABLE `oc_webinewsletter_subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `action` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_webinewsletter_subscribe`
--

INSERT INTO `oc_webinewsletter_subscribe` (`subscribe_id`, `customer_id`, `store_id`, `email`, `action`) VALUES
(1, 1, 0, 'demo@gmail.com', 1),
(2, 2, 0, 'demo@demo.com', 1),
(3, 0, 0, 'biuro@trend-zone.pl', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_webinewsletter_template`
--

CREATE TABLE `oc_webinewsletter_template` (
  `template_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `hits` tinyint(4) DEFAULT '0',
  `template_file` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_webinewsletter_template_description`
--

CREATE TABLE `oc_webinewsletter_template_description` (
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `template_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
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
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
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
  `zone_id` int(11) NOT NULL DEFAULT '0',
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
-- Indexes for table `oc_blogger`
--
ALTER TABLE `oc_blogger`
  ADD PRIMARY KEY (`blogger_id`);

--
-- Indexes for table `oc_blogger_comment`
--
ALTER TABLE `oc_blogger_comment`
  ADD PRIMARY KEY (`blogger_comment_id`,`blogger_id`);

--
-- Indexes for table `oc_blogger_comment_description`
--
ALTER TABLE `oc_blogger_comment_description`
  ADD PRIMARY KEY (`blogger_comment_id`,`language_id`);

--
-- Indexes for table `oc_blogger_description`
--
ALTER TABLE `oc_blogger_description`
  ADD PRIMARY KEY (`blogger_id`,`language_id`);

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
-- Indexes for table `oc_subscribe`
--
ALTER TABLE `oc_subscribe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Index_2` (`email_id`);

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
-- Indexes for table `oc_webinewsletter_draft`
--
ALTER TABLE `oc_webinewsletter_draft`
  ADD PRIMARY KEY (`draft_id`);

--
-- Indexes for table `oc_webinewsletter_email`
--
ALTER TABLE `oc_webinewsletter_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `oc_webinewsletter_history`
--
ALTER TABLE `oc_webinewsletter_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_webinewsletter_subscribe`
--
ALTER TABLE `oc_webinewsletter_subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `oc_webinewsletter_template`
--
ALTER TABLE `oc_webinewsletter_template`
  ADD PRIMARY KEY (`template_id`);

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
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;
--
-- AUTO_INCREMENT for table `oc_blogger`
--
ALTER TABLE `oc_blogger`
  MODIFY `blogger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_blogger_comment`
--
ALTER TABLE `oc_blogger_comment`
  MODIFY `blogger_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
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
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1631;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
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
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
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
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3032;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527;
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
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1075;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1832;
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
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_subscribe`
--
ALTER TABLE `oc_subscribe`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `oc_webinewsletter_draft`
--
ALTER TABLE `oc_webinewsletter_draft`
  MODIFY `draft_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_webinewsletter_email`
--
ALTER TABLE `oc_webinewsletter_email`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_webinewsletter_history`
--
ALTER TABLE `oc_webinewsletter_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_webinewsletter_subscribe`
--
ALTER TABLE `oc_webinewsletter_subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_webinewsletter_template`
--
ALTER TABLE `oc_webinewsletter_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
