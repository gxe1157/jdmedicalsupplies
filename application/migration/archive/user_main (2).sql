-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2017 at 12:26 PM
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
-- Table structure for table `user_main`
--

CREATE TABLE `user_main` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `middle_name` varchar(30) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `cell_phone` varchar(14) NOT NULL,
  `create_date` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_main`
--

INSERT INTO `user_main` (`id`, `user_id`, `email`, `first_name`, `last_name`, `middle_name`, `phone`, `cell_phone`, `create_date`, `modified_date`, `admin_id`, `is_delete`) VALUES
(1, 1, 'evelio@mailers.com', 'Evelio', 'Velez', '', '', '', 0, 0, 0, 0),
(2, 2, 'Joe@mailers.com', 'Joe', 'Kingsley', '', '5555555555', '5555555555', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_main`
--
ALTER TABLE `user_main`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_main`
--
ALTER TABLE `user_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
