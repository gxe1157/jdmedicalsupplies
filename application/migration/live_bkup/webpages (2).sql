-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2017 at 04:19 AM
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
-- Table structure for table `webpages`
--

CREATE TABLE `webpages` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keywords` text NOT NULL,
  `page_description` text NOT NULL,
  `page_content` text NOT NULL,
  `status` int(1) NOT NULL,
  `assign_items` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  `mod_dt` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webpages`
--

INSERT INTO `webpages` (`id`, `page_url`, `page_title`, `page_keywords`, `page_description`, `page_content`, `status`, `assign_items`, `create_date`, `mod_dt`, `userid`) VALUES
(1, '', 'The Home Page', '           ', '           ', '      Home content     ', 0, 0, 0, 0, 0),
(2, 'contactus', 'Contact Us', 'keywords here', 'Description Here', 'Page Content - Form', 0, 0, 0, 0, 0),
(3, 'faq', 'faq', '                      ', '                      ', '                      ', 0, 0, 0, 0, 0),
(4, 'About-Us', 'About Us', '                      ', '                      ', '                      ', 0, 0, 0, 0, 0),
(5, 'Client-Reviews', 'Client Reviews', '                      ', '                      ', '                      ', 0, 0, 0, 0, 0),
(15, 'News', 'News', '           ', '           ', '           ', 0, 0, 0, 0, 0),
(17, 'Privacy-Statement', 'Privacy Statement', '                      ', '                      ', '                      ', 0, 0, 0, 0, 0),
(18, 'legal', 'legal', '           ', '           ', '           ', 0, 0, 0, 0, 0),
(19, 'Application', 'Application', '           ', '           ', '           ', 0, 0, 0, 0, 0),
(20, 'About-Home-Health', 'About Home Health', '                                     ', '                                 ', '                                                                           ', 0, 0, 0, 0, 0),
(21, 'About-Physicians-Office', 'About Physicians Office', '           ', '           ', '           ', 0, 0, 0, 0, 0),
(22, 'About-Consumer-Hospice', 'About Consumer Hospice', '           ', '           ', '           ', 0, 0, 0, 0, 0),
(23, 'About-Assisted-Living', 'About Assisted Living', '           ', '           ', '           ', 0, 0, 0, 0, 0),
(24, 'Contactus-Confirmation', 'Contactus Confirmation', '           ', '           ', '           ', 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `webpages`
--
ALTER TABLE `webpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `webpages`
--
ALTER TABLE `webpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
