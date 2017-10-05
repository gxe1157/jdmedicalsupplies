-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2017 at 03:21 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ifbinsure`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_form`
--

CREATE TABLE `app_form` (
  `id` int(11) NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `liquor_License` varchar(200) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `contact_name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `current_company` varchar(200) NOT NULL,
  `current_agent` varchar(200) NOT NULL,
  `renewal_month` varchar(20) NOT NULL,
  `premium` int(11) NOT NULL,
  `type_operation` varchar(200) NOT NULL,
  `building_limit` int(11) NOT NULL,
  `contents_limit` int(11) NOT NULL,
  `building_age` int(11) NOT NULL,
  `construction` varchar(200) NOT NULL,
  `apartments` varchar(200) NOT NULL,
  `number_of_units` int(11) NOT NULL,
  `sprinkler_system` varchar(10) NOT NULL,
  `years_at_location` int(11) NOT NULL,
  `liability_limit` int(11) NOT NULL,
  `annual_food_sales` int(11) NOT NULL,
  `annual_liquor_sales` int(11) NOT NULL,
  `type_entertainment` varchar(200) NOT NULL,
  `payroll_restaurant` int(11) NOT NULL,
  `payroll_clerical` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_form`
--

INSERT INTO `app_form` (`id`, `business_name`, `liquor_License`, `address1`, `address2`, `city`, `state`, `zip`, `contact_name`, `email`, `phone`, `current_company`, `current_agent`, `renewal_month`, `premium`, `type_operation`, `building_limit`, `contents_limit`, `building_age`, `construction`, `apartments`, `number_of_units`, `sprinkler_system`, `years_at_location`, `liability_limit`, `annual_food_sales`, `annual_liquor_sales`, `type_entertainment`, `payroll_restaurant`, `payroll_clerical`, `create_date`, `userid`) VALUES
(1, 'abc', '', 'address 1', '', '', '', '', 'contact', 'evelio@mailers.com', '973-478-8813', '', '', '', 0, '', 0, 0, 0, '', '', 0, '', 0, 0, 0, 0, '', 0, 0, 2017, 0),
(2, 'abc', '', 'address', '', 'Hackensack', 'New Jersey', '07601', 'contact', 'evelio@mailers.com', '9734788813', '', '', '', 0, '', 0, 0, 0, '', '', 0, '', 0, 0, 0, 0, '', 0, 0, 2017, 0),
(3, 'abc', '', 'address', '', 'Hackensack', 'New Jersey', '07601', 'contact', 'evelio@mailers.com', '9734788813', '', '', '', 0, '', 0, 0, 0, '', '', 0, '', 0, 0, 0, 0, '', 0, 0, 2017, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_form`
--
ALTER TABLE `app_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_form`
--
ALTER TABLE `app_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
