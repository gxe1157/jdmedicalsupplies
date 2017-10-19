-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2017 at 02:21 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicalsupplies`
--

-- --------------------------------------------------------

--
-- Table structure for table `store_cat_assign`
--

CREATE TABLE `store_cat_assign` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_cat_assign`
--

INSERT INTO `store_cat_assign` (`id`, `cat_id`, `item_id`) VALUES
(1, 14, 56),
(9, 5, 21),
(10, 3, 10),
(11, 3, 8),
(12, 3, 9),
(13, 6, 9),
(14, 5, 22),
(15, 6, 32),
(16, 6, 29),
(17, 6, 30),
(19, 6, 31),
(20, 6, 33),
(21, 14, 59),
(22, 9, 47),
(23, 3, 11),
(24, 8, 45),
(25, 2, 7),
(26, 2, 6),
(27, 2, 4),
(28, 2, 5),
(29, 7, 37),
(30, 4, 16),
(31, 4, 18),
(32, 8, 42),
(33, 12, 51),
(34, 12, 52),
(35, 15, 63),
(36, 15, 62),
(37, 5, 20),
(38, 3, 12),
(39, 4, 15),
(40, 13, 53),
(41, 14, 54),
(42, 6, 23),
(43, 11, 49),
(44, 11, 50),
(45, 15, 65),
(46, 15, 64),
(47, 15, 66),
(48, 15, 67),
(49, 14, 55),
(50, 7, 35),
(51, 15, 61),
(52, 15, 60),
(53, 2, 2),
(54, 7, 34),
(55, 8, 43),
(56, 8, 44),
(57, 7, 38),
(58, 5, 19),
(59, 8, 41),
(60, 8, 40),
(61, 8, 39),
(62, 6, 24),
(63, 6, 25),
(64, 6, 26),
(65, 7, 26),
(66, 6, 27),
(67, 6, 28),
(68, 14, 57),
(69, 14, 58),
(70, 3, 14),
(71, 4, 17),
(72, 8, 46),
(73, 3, 13),
(74, 10, 48),
(75, 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
