-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 21, 2022 at 08:37 PM
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
-- Database: `patel`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `gender` enum('m','f','o') DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `blood_group` varchar(30) DEFAULT NULL,
  `height` varchar(30) DEFAULT NULL,
  `weight` varchar(30) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `picture`, `name`, `phone`, `gender`, `age`, `email`, `address`, `blood_group`, `height`, `weight`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'patient01 (doc1)\'', '0000000001', 'm', 10, '\'', '\'', '\'', '\'', '\'', '1', '2022-12-20 10:37:40', '2022-12-21 19:31:27'),
(2, NULL, 'patient02 (doc1)', '0000000002', 'm', 30, '', '-', '', '', '', '1', '2022-12-20 12:08:02', '2022-12-20 17:38:02'),
(3, NULL, 'patient3 (doc34)', '0000000003', 'f', 23, '', '-', '', '', '', '1', '2022-12-20 12:23:05', '2022-12-20 17:53:05'),
(4, NULL, 'patient x3 (patient01)', '0000000010', 'm', 10, '', '-', '', '', '', '1', '2022-12-21 14:40:00', '2022-12-21 20:10:00'),
(5, NULL, 'patient x4 (patient01)', '0000000011', 'm', 30, '', '-', '', '', '', '1', '2022-12-21 14:40:38', '2022-12-21 20:10:38'),
(6, NULL, 'patientxx (docxx)', '0000000111', 'f', 10, '', '-', '', '', '', '1', '2022-12-21 18:41:43', '2022-12-22 00:11:43'),
(7, NULL, 'XXX (DOC00)', '6767676787', 'f', 10, '', '-', '', '', '', '1', '2022-12-21 18:46:36', '2022-12-22 00:16:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
