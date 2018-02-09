-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2018 at 10:54 AM
-- Server version: 5.5.58-cll
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jdmedica_medicalsupplies`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_form`
--

CREATE TABLE `app_form` (
  `id` int(11) NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `medical_field` varchar(200) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `contact_name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `create_date` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app_form`
--

INSERT INTO `app_form` (`id`, `business_name`, `medical_field`, `address1`, `address2`, `city`, `state`, `zip`, `contact_name`, `email`, `phone`, `create_date`, `userid`) VALUES
(1, 'abc', '', 'address 1', '', '', '', '', 'contact', 'evelio@mailers.com', '973-478-8813', 2017, 0),
(2, 'abc', '', 'address', '', 'Hackensack', 'New Jersey', '07601', 'contact', 'evelio@mailers.com', '9734788813', 2017, 0),
(3, 'abc', '', 'address', '', 'Hackensack', 'New Jersey', '07601', 'contact', 'evelio@mailers.com', '9734788813', 2017, 0),
(4, 'aaaaaaaaaaaaaa', 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'aa', 'aaaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'evelio@mailers.com', '9734788813', 2017, 0),
(5, 'aaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'aa', 'aaaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'evelio@mailers.com', '9734788813', 2017, 0),
(6, 'aaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'aa', 'aaaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'evelio@mailers.com', '9734788813', 2017, 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keywords` text NOT NULL,
  `page_description` text NOT NULL,
  `page_content` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `date_published` int(11) NOT NULL,
  `author` varchar(65) NOT NULL,
  `picture` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) UNSIGNED NOT NULL,
  `captcha_time` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(233, 1517977423, '108.235.217.124', 'KPBA9d'),
(232, 1517922647, '176.9.58.227', '6i0Vtp'),
(231, 1517922645, '176.9.58.227', '8HcoP8'),
(230, 1517917211, '186.223.229.167', 'xDJtAX'),
(229, 1517760222, '220.181.108.175', 'DFVG6Z'),
(228, 1517666763, '188.166.73.187', 't0fCN4'),
(227, 1517648315, '45.55.251.118', 'lIYJa7'),
(226, 1517648300, '45.55.251.118', 'TVBIce'),
(225, 1517603499, '68.194.220.234', 'B5SZKf'),
(224, 1517603494, '68.194.220.234', 'aKmsUt');

-- --------------------------------------------------------

--
-- Table structure for table `quickquote`
--

CREATE TABLE `quickquote` (
  `id` int(11) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cell` varchar(14) NOT NULL,
  `create_date` date NOT NULL,
  `time_received` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quickquote`
--

INSERT INTO `quickquote` (`id`, `contact`, `address1`, `address2`, `city`, `state`, `phone`, `email`, `cell`, `create_date`, `time_received`) VALUES
(1, 'Evelio Velez', '123 So. Newman Street', '', 'Saddle Brook', 'NJ', '', 'evelio@mailers.com', '999-999-9999', '2017-10-01', '2017-10-01 23:00:50'),
(2, 'test name', 'test address 1', 'test address 2', 'test city', 'test state', '', 'webmaster@411mysite.com', '999-999-9999', '2017-10-08', '2017-10-08 00:57:43'),
(3, 'test name', 'test address 1', 'test address 2', 'test city', 'test state', '', 'webmaster@411mysite.com', '9734788813', '2017-10-08', '2017-10-08 01:00:54'),
(4, 'test name', 'test address 1', 'test address 2', 'test city', 'test state', '', 'webmaster@411mysite.com', '5515745755', '2017-10-08', '2017-10-08 01:02:53'),
(5, 'test name', 'test address 1', 'test address 2', 'test city', 'test state', '', 'webmaster@411mysite.com', '5515745755', '2017-10-08', '2017-10-08 01:04:19'),
(6, 'test name', 'test address 1', 'test address 2', 'test city', 'test state', '', 'webmaster@411mysite.com', '5515745755', '2017-10-08', '2017-10-08 01:05:50'),
(7, 'test name', 'test address 1', 'test address 2', 'test city', 'test state', '', 'webmaster@411mysite.com', '5515745755', '2017-10-08', '2017-10-08 01:10:37'),
(8, 'test name', 'test address 1', 'test address 2', 'test city', 'test state', '', 'webmaster@411mysite.com', '5515745755', '2017-10-08', '2017-10-08 01:18:16'),
(9, 'test name', 'test address 1', 'test address 2', 'test city', 'test state', '', 'webmaster@411mysite.com', '5515745755', '2017-10-08', '2017-10-08 01:21:13'),
(10, 'Evelio Velez', 'address1', 'apt 123', 'Hackensack', 'NJ', '', 'evelio@mailers.com', '5515745755', '2017-10-08', '2017-10-08 16:13:38'),
(11, 'Evelio', 'aaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaa', 'aaaaaaaaaaa', '', 'evelio@mailers.com', '5515745755', '2017-10-08', '2017-10-08 16:22:35'),
(12, 'Kamila', '97 Ferry st', '', 'Newark ', 'NJ', '', 'kamilabatistax@gmail.com', '2019767891', '2017-10-27', '2017-10-27 02:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `store_accounts`
--

CREATE TABLE `store_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `last_login` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_accounts`
--

INSERT INTO `store_accounts` (`id`, `username`, `first_name`, `last_name`, `company`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `phone`, `email`, `password`, `create_date`, `modified_date`, `status`, `is_deleted`, `last_login`, `admin_id`) VALUES
(1, 'EvelioVelez', '', '', '', '', '', '', '', '', '', '', 'evelio@mailers.com', '$2y$11$mjVD3yw/FBaI13tFVmh36.OflQqqml8tb5dTgloXEd03H28HchM8G', 0, 0, 0, 0, 1517881835, 0),
(2, 'smiley', '', '', '', '', '', '', '', '', '', '', 'smiley@mail.com', '$2y$11$L6JjhaUoSDy1a2K52G5L2uI/8zpbgodAo22vpeu3GAKtSnmvmGsTK', 0, 0, 0, 0, 1515542119, 0),
(3, 'customer', '', '', '', '', '', '', '', '', '', '', 'customer@mailers.com', '$2y$11$pKJQcaxYIpW9YOl41rl7..CHMF2lVEWUk5RGLoGmJvCoSMPZSI8mu', 0, 1516227607, 0, 0, 1516249603, 3);

-- --------------------------------------------------------

--
-- Table structure for table `store_basket`
--

CREATE TABLE `store_basket` (
  `id` int(11) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `item_title` varchar(255) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `tax` decimal(7,2) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_color` varchar(70) NOT NULL,
  `item_size` varchar(70) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `date_added` int(11) NOT NULL,
  `shopper_id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_basket`
--

INSERT INTO `store_basket` (`id`, `session_id`, `item_title`, `price`, `tax`, `item_id`, `item_qty`, `item_color`, `item_size`, `image_path`, `date_added`, `shopper_id`, `ip_address`) VALUES
(24, '5d7d47530560b7d30797286f1c054b26cc0a62b2', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 3, '0', '0', 'medical-supplies/misg273ki.jpg', 1515457083, 0, '::1'),
(25, '5d7d47530560b7d30797286f1c054b26cc0a62b2', 'Kole Soft Cloth Bath Pillow with Suction Cups', '9.99', '0.00', 82, 1, '0', '0', 'medical-supplies/os342.jpg', 1515450392, 0, '::1'),
(26, '5d7d47530560b7d30797286f1c054b26cc0a62b2', ' Perfit ACE Rigid Cervical Collar Adult Adjustable ', '13.45', '0.00', 45, 4, '0', '0', 'medical-supplies/pc10004bom.jpg', 1515457323, 0, '::1'),
(27, 'f03fe128a7cd9d32db8a79101e24115e4548fce0', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1515540227, 0, '::1'),
(28, '2c1c77102b22f105864b7b1df860ec7295fdd581', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1515596353, 1, '::1'),
(29, '354fd794c230c83e452df9e194db1e95b605cf88', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1515622430, 1, '::1'),
(32, '88e4e316429bf14ab69dee2c1f77fedb64ea9868', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1515710419, 3, '::1'),
(33, 'a5ab9d4699435acf3969e61453894d7c1f5348b9', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1515711455, 3, '::1'),
(34, '8dd8d400cc87ad435869d970a6791b4b737e6041', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1515797996, 3, '::1'),
(38, '0bfd38bfa442f229029a57203917ae6527e26d85', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1515871548, 3, '::1'),
(39, '0bfd38bfa442f229029a57203917ae6527e26d85', 'Invacare IClass All-In-One Commode (Single Pack) - 30\" H x 21\" W x 18\" D', '37.45', '0.00', 39, 2, '0', '0', 'medical-supplies/9630-1.jpg', 1515871559, 3, '::1'),
(40, '2e0f51e9776cea7f1d7f84fc4d174128449f884c', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1515885746, 3, '::1'),
(41, '2e0f51e9776cea7f1d7f84fc4d174128449f884c', 'Invacare IClass All-In-One Commode (Single Pack) - 30\" H x 21\" W x 18\" D', '37.45', '0.00', 41, 2, '0', '0', 'medical-supplies/9630-1.jpg', 1515885758, 3, '::1'),
(42, '3a1bf8c585c87122395c5bae1b51714e570269c9', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1515890293, 3, '::1'),
(62, '8ac6221968d020a8a377fdca147cb72da4f04b14', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 7, '0', '0', 'medical-supplies/misg273ki.jpg', 1515908994, 3, '::1'),
(69, 'c7fdb93cb0cc609c07aa76799eb0aac45abb0a9b', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 14, '0', '0', 'medical-supplies/misg273ki.jpg', 1515961509, 3, '::1'),
(70, 'c7fdb93cb0cc609c07aa76799eb0aac45abb0a9b', 'A Test product', '9.00', '0.00', 105, 5, '0', '0', 'medical-supplies/test123456.jpg', 1515962724, 3, '::1'),
(71, 'a77b4ddb6927c8b42c4cfae9b160aa67d0319bc4', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1516227006, 0, '::1'),
(72, 'de92a71c3590e43f70cb885cf49b9c555737248a', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1516242161, 0, '::1'),
(73, '2611a6db5744657805dadefc446ea8b1d8e51467', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1516249575, 3, '::1'),
(74, '2611a6db5744657805dadefc446ea8b1d8e51467', 'Amsino International Enema Bag - 1500 mL', '1.29', '0.00', 56, 1, '0', '0', 'medical-supplies/33332700.jpg', 1516249589, 3, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `store_categories`
--

CREATE TABLE `store_categories` (
  `id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `parent_cat_id` int(11) DEFAULT NULL,
  `category_url` varchar(255) NOT NULL,
  `order_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_categories`
--

INSERT INTO `store_categories` (`id`, `cat_title`, `parent_cat_id`, `category_url`, `order_by`) VALUES
(1, 'Medical Supplies', 0, 'Medical-Supplies', 0),
(2, 'Feminine Hygiene', 1, 'Feminine-Hygiene', 0),
(3, 'Grooming Supplies', 1, 'Grooming-Supplies', 0),
(4, 'Personal Care Wipes', 1, 'Personal-Care-Wipes', 0),
(5, 'Skin Care Products', 1, 'Skin-Care-Products', 0),
(6, 'Abdominal Binder', 1, 'Abdominal-Binder', 0),
(7, 'Bedpans and Commodes', 1, 'Bedpans-and-Commodes', 0),
(8, 'Cervical Collars', 1, 'Cervical-Collars', 0),
(9, 'Stethoscope', 1, 'Stethoscope', 0),
(10, 'Nutritionals & Supplements', 1, 'Nutritionals-Supplements', 0),
(11, 'Hazardous Waste Control', 1, 'Hazardous-Waste-Control', 0),
(12, 'Gauzes & Dressings', 1, 'Gauzes-Dressings', 0),
(13, 'Gloves', 1, 'Gloves', 0),
(14, 'Enema Supplies', 1, 'Enema-Supplies', 0),
(15, 'Medicine Cups', 1, 'Medicine-Cups', 0),
(16, 'Test Kits', 0, 'Test-Kits', 0),
(17, 'Blood Pressure Monitor', 16, 'Blood-Pressure-Monitor', 0),
(18, 'Blood Glucose Meter', 16, 'Blood-Glucose-Meter', 0),
(19, 'Drug Test Kit', 16, 'Drug-Test-Kit', 0),
(20, 'Pregnancy Test Kit', 16, 'Pregnancy-Test-Kit', 0),
(21, 'Hepatitis Test Kit', 16, 'Hepatitis-Test-Kit', 0),
(22, 'HIV Test Kit', 16, 'HIV-Test-Kit', 0),
(23, 'Malaria Test Kits', 16, 'Malaria-Test-Kits', 0),
(24, 'Syphilis Test Kits', 16, 'Syphilis-Test-Kits', 0),
(25, 'Tuberculosis Test Kits', 16, 'Tuberculosis-Test-Kits', 0),
(26, 'Urinalysis Test Strips', 16, 'Urinalysis-Test-Strips', 0),
(27, 'Rehabilitation', 0, 'Rehabilitation', 0),
(28, 'Wheelchairs', 27, 'Wheelchairs', 0),
(29, 'Walkers', 27, 'Walkers', 0),
(30, 'Crutches', 27, 'Crutches', 0),
(32, 'Scooters', 27, 'Scooters', 0),
(33, 'Medical Equipment', 0, 'Medical-Equipment', 0),
(34, 'Nebulizer', 33, 'Nebulizer', 0),
(35, 'Bath Accessories', 1, 'Bath-Accessories', 0),
(36, 'Therapeutic', 1, 'Therapeutic', 0),
(37, 'Rehabilitation', 1, 'Rehabilitation', 0),
(38, 'Needles', 1, 'Needles', 0),
(43, 'Eye, Ear, Nose & Throat ', 1, 'Eye-Ear-Nose-Throat', 0),
(44, 'Exam Table Paper', 1, 'Exam-Table-Paper', 0),
(45, 'Exam Gowns ', 1, 'Exam-Gowns', 0),
(46, 'First Aid Kit ', 16, 'First-Aid-Kit', 0),
(47, 'Speciment Containers Sterile', 1, 'Speciment-Containers-Sterile', 0),
(48, 'EXAM GOWNS', 0, 'EXAM-GOWNS', 0),
(51, 'Surgery Supplies', 1, 'Surgery-Supplies', 0),
(55, 'Carts', 33, 'Carts', 0);

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
(75, 2, 3),
(78, 6, 68),
(79, 12, 69),
(80, 28, 70),
(81, 28, 71),
(82, 28, 72),
(83, 28, 73),
(84, 29, 74),
(85, 29, 75),
(86, 30, 76),
(87, 30, 77),
(88, 17, 78),
(89, 32, 79),
(90, 28, 80),
(91, 34, 81),
(92, 35, 82),
(93, 36, 83),
(94, 36, 84),
(95, 36, 85),
(97, 2, 87),
(98, 34, 88),
(99, 8, 89),
(100, 38, 90),
(102, 38, 92),
(103, 18, 93),
(104, 18, 94),
(105, 4, 95),
(106, 12, 96),
(107, 12, 97),
(111, 12, 101),
(112, 35, 102),
(113, 35, 103),
(115, 34, 105),
(116, 37, 106),
(117, 34, 107),
(118, 36, 108),
(119, 36, 109),
(120, 36, 110),
(121, 36, 111),
(122, 37, 112),
(123, 3, 113),
(124, 4, 114),
(125, 36, 115),
(126, 3, 116),
(127, 4, 117),
(128, 37, 118),
(129, 37, 119),
(130, 37, 120),
(131, 37, 121),
(132, 37, 122),
(133, 18, 123),
(134, 18, 124),
(135, 8, 125),
(136, 12, 126),
(137, 12, 127),
(138, 38, 128),
(139, 34, 129),
(140, 37, 130),
(145, 38, 133),
(146, 3, 134),
(147, 35, 135),
(148, 4, 136),
(149, 13, 137),
(151, 34, 139),
(153, 12, 141),
(154, 36, 142),
(155, 12, 143),
(156, 12, 144),
(158, 4, 146),
(159, 13, 147),
(160, 35, 148),
(161, 13, 149),
(162, 9, 150),
(163, 19, 151),
(164, 43, 152),
(165, 36, 153),
(166, 36, 154),
(167, 36, 155),
(168, 36, 156),
(169, 36, 157),
(170, 36, 158),
(171, 36, 159),
(172, 44, 160),
(174, 36, 162),
(175, 46, 163),
(176, 47, 164),
(177, 4, 165),
(178, 4, 166),
(180, 34, 168),
(182, 20, 170),
(183, 9, 171),
(184, 28, 172),
(185, 35, 167),
(186, 12, 173),
(189, 45, 161),
(190, 12, 174),
(191, 12, 175),
(192, 12, 176),
(193, 36, 140),
(194, 36, 177),
(195, 36, 178),
(196, 36, 132),
(198, 36, 104),
(199, 36, 86),
(200, 36, 179),
(201, 36, 180),
(202, 36, 138),
(205, 43, 183),
(206, 43, 184),
(207, 43, 145),
(208, 13, 185),
(209, 13, 186),
(210, 17, 169),
(211, 34, 187),
(212, 34, 188),
(213, 34, 189),
(214, 34, 190),
(216, 38, 192),
(217, 15, 193),
(218, 38, 194),
(220, 11, 196),
(221, 11, 197),
(222, 34, 198),
(223, 47, 195),
(224, 38, 199),
(225, 18, 200),
(226, 2, 201),
(227, 2, 202),
(228, 4, 203),
(229, 4, 204),
(230, 3, 99),
(231, 15, 205),
(232, 51, 100),
(233, 3, 206),
(234, 15, 131),
(236, 15, 207),
(237, 15, 208),
(238, 5, 209),
(239, 5, 91),
(240, 5, 210),
(241, 29, 211),
(242, 54, 212),
(243, 7, 213),
(244, 4, 191),
(245, 3, 98),
(246, 38, 214),
(247, 38, 215),
(248, 4, 216),
(249, 4, 217),
(250, 4, 218),
(252, 4, 219),
(253, 4, 220),
(254, 4, 221),
(255, 4, 222),
(256, 4, 223),
(257, 36, 182),
(258, 36, 181),
(259, 55, 212),
(260, 13, 224),
(261, 13, 225),
(262, 13, 226),
(263, 13, 227),
(264, 13, 228);

-- --------------------------------------------------------

--
-- Table structure for table `store_items`
--

CREATE TABLE `store_items` (
  `id` int(11) NOT NULL,
  `parent_cat` varchar(100) CHARACTER SET latin1 NOT NULL,
  `parent_cat_id` int(11) NOT NULL,
  `sub_cat` varchar(100) CHARACTER SET latin1 NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `prd_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `prd_url` varchar(100) CHARACTER SET latin1 NOT NULL,
  `manufacturer` varchar(100) CHARACTER SET latin1 NOT NULL,
  `short_desc` varchar(250) CHARACTER SET latin1 NOT NULL,
  `part_num` varchar(50) CHARACTER SET latin1 NOT NULL,
  `upc` varchar(50) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `prd_width` float(7,4) NOT NULL,
  `prd_height` float(7,4) NOT NULL,
  `prd_depth` float(7,4) NOT NULL,
  `prd_weight` float(8,4) NOT NULL,
  `price` float(8,2) NOT NULL,
  `sale_price` float(8,2) NOT NULL,
  `active_image` varchar(100) NOT NULL,
  `prd_img_org_name` varchar(100) NOT NULL,
  `prd_status` int(11) NOT NULL,
  `prd_image_status` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `is_deleted`, `modified_date`) VALUES
(2, 'Medical Supply', 0, '', 2, '', '', '0', 'Medline Pad, Maternity, 11 in, with Tails, Non-Sterile', 'NON241280 ', '80196781488', ' ', '<br>\r\nMedline OB Pad with Tails, 11\" long Non-sterile 12 per bg, 24 in a case. There is no adhesive strip along the back of the pad.<br>\r\nQuantity : 288 per Case, 24 One-Dozen Bags<br>\r\nSterile :No<br>\r\nLatex-Free : Yes<br>\r\n', 0.0000, 0.0000, 0.0000, 0.0000, 74.52, 55.20, 'NON241280.jpg ', '', 1, 0, 0, 0, 0, 0),
(3, 'Medical Supply', 1, '', 2, '', '', '15', 'VendPink Dottie Vended Tampons', '80011', '   ', '   ', 'VendPink donates 20% of the profits from vended tampons to Y-ME National Breast Cancer Organization. Regular absorbency with pearlized plastic applicator. Packaged in uniquely designed vending tubes with mood-lifting messages on every wrapper.<br><br><br>\r\n<br><br><br>\r\nQuantity : 300 per Case', 0.0000, 0.0000, 0.0000, 0.0000, 114.24, 84.62, '80011.jpg', '', 1, 0, 0, 0, 0, 1517421128),
(4, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco Maxithins? Vended Sanitary Napkins - 250 per Case', 'MT-4 ', '75289000447', ' ', 'Thin full protection. Folded to fit into #4 box for vending from feminine hygiene dispensers. For use with Hospeco HSC MT 1 and HSC FOCJR-25 vendors both sold separately. Also fits any vendor/feminine hygeine dispenser that vends #4 boxes.<br>\r\n<br>\r\nGrade : #4 Box Size<br>\r\nQuantity : 250 per Case', 0.0000, 0.0000, 0.0000, 0.0000, 56.50, 41.85, 'MT-4.jpg  ', '', 1, 0, 0, 0, 0, 0),
(5, 'Medical Supply', 1, '', 2, '', '', '32', 'Tampax , Original, Regular Absorbency, 500 Tampons Per Box', 'PCH10004BOM', '10073010025001', '  ', 'Regular absorbency tampon individually wrapped and in vend-style tube. Tampax?, a name women trust.<br>\r\nQuantity : 500 Tampons/Carton<br>\r\nAbsorbency : Regular', 0.0000, 0.0000, 0.0000, 0.0000, 112.14, 89.99, 'pch10004bom.jpg', 'TAMPAX.jpg', 1, 1, 0, 0, 0, 1517517386),
(6, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco ComfortPlus Tampons, 100/Carton', 'HOSMT100FS', '75289068058', ' ', 'Regular absorbency tampon individually wrapped and in vend-style tube. Tampax?, a name women trust.<br>\r\n<br>\r\nQuantity : 100/Carton', 0.0000, 0.0000, 0.0000, 0.0000, 42.61, 31.56, 'HOSMT100FS.jpg ', '', 1, 0, 0, 0, 0, 0),
(7, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco 11\" Tabbed Maxi Non-Sterile - 12 per Pack', 'HS-74', ' ', ' ', '11\" tabbed non-sterile maternity pad.<br>\r\nSize: 11\"<br>\r\nQuantity : 12 per Pack<br>\r\nQuantity : 24 Packs per Case<br>\r\nPackaging : Bag Packed', 0.0000, 0.0000, 0.0000, 0.0000, 48.98, 36.28, 'HS-74.jpg ', '', 1, 0, 0, 0, 0, 0),
(9, 'Medical Supply', 1, '', 3, '', 'Colgate-Palmolive-Toothbrush', '37', 'Colgate Toothbrush Colgate Soft', 'HW20002', '035000550101         ', '          ', 'Individually Wrapped. <br>Application: Toothbrush<br>\r\nBristle Head Size: Full<br>\r\nBristle Type: Soft<br>User: Adult', 0.0000, 0.0000, 0.0000, 0.0000, 1.99, 0.99, 'hw20002.jpg', 'Colgate Toothbrush Colgate Soft.jpg', 1, 1, 0, 0, 0, 1517347656),
(11, 'Medical Supply', 1, '', 3, '', '', '64', 'GOODSENSE MINT FLOSSERS WITH PICK 90PCS.', 'PCH4020BOM', '846036004458    ', '      ', 'Easy, convenient, disposable, one-handed flossing. Comfort grip handle.<br>\r\nQuantity : 90 EA/PK<br>\r\nApplication: Dental Floss Picks<br>\r\nFlavor: Mint<br>\r\nUNSPSC Code: 53131504', 0.0000, 0.0000, 0.0000, 0.0000, 2.24, 1.99, '44501700.jpg', '', 1, 1, 0, 0, 0, 1517347129),
(12, 'Medical Supply', 1, '', 3, '', '', '8', 'McKesson Shower Cap Medi-Pak One Size Fits Most Clear', 'PCH16SC1BOM', '0110612479212685       ', '              ', 'Medi-Pak Shower Cap. Clear. One Size Fits All. Single Patient Use. Not Made With Natural Rubber Latex.<br>Quantity : 1 EA<br><div>\r\nApplication: Shower Cap<br>\r\nColor: Clear<br>\r\nSecuring Method: Elastic<br>\r\nSize: One Size Fits Most<br>\r\nUNSPSC Code: 53131601<br>\r\nUsage: Single Patient Use<br>\r\nLatex Free Indicator: Not Made with Natural Rubber Latex</div>', 0.0000, 0.0000, 0.0000, 0.0000, 0.99, 0.20, '10001700.jpg', '', 1, 1, 0, 0, 0, 1517527017),
(13, 'Medical Supply', 0, '', 3, '', '', '0', 'SECURE Comfort Strips - 15 Strips', '392860', '3.64E+11', ' ', '<br>\r\nExtra Firm Hold for Lower Dentures<br>\r\nThe patented waterproof adhesive that won\'t wash away while you\'re eating and drinking<br>\r\nZinc Free!<br>\r\nImproves Quality of Life<br>\r\nThe solution for denture wearers with flat/narrow lower jaws.<br>\r\nAssures a secure, strong bond between the lower denture and gum, even in the most difficult cases.<br>\r\n.<br>\r\n<br>\r\nDisclaimer : These statements have not been evaluated by the FDA. These products are not intended to diagnose, treat, cure, or prevent any disease.<br>\r\n<br>\r\nQuantity : 15/EA', 0.0000, 0.0000, 0.0000, 0.0000, 9.19, 6.81, '392860.jpg', 'HGR0392860.JPG', 1, 1, 0, 0, 0, 0),
(14, 'Medical Supply', 0, '', 3, '', '', '0', 'Procter & Gamble Denture Adhesive Fixodent? Extra Hold 1.6 oz. Powder\r\n', '13511700', '76660725362', ' ', 'Quantity : 1 Each<br>\r\nVolume : 1.6 oz.<br>\r\nApplication : Denture Adhesive<br>\r\nUNSPSC Code : 53131510', 0.0000, 0.0000, 0.0000, 0.0000, 6.90, 5.11, '13511700.jpg', '', 1, 0, 0, 0, 0, 0),
(15, 'Medical Supply', 0, '', 4, '', '', '0', 'McKesson StayDry? Disposable Washcloths w/Aloe, 100-Sheet Soft-Packs, 6PK/CS', '15653100', '1.06E+13', ' ', '12\" x 8\" (30.5 cm x 20.3 cm)<br>\r\nPre-Moistened<br>\r\nHypoallergenic<br>\r\nDermatologist Tested<br>\r\nNatural Aloe and Vitamin E<br>\r\nSoft and Strong<br>\r\nConvenient Dispensing Lid<br>\r\nAlcohol-Free<br>\r\nNot made with natural rubber latex.<br>\r\nPackaged : 100 Sheets per Pack, 6 Packs Per Case<br>\r\n<br>\r\nQuantity : 6 Packs per Case<br>\r\nWipes : 100 per Pack<br>\r\nSize : 12\" x 8\"<br>\r\nSterile : No<br>\r\nHCPCS : A4335', 0.0000, 0.0000, 0.0000, 0.0000, 25.03, 18.54, '15653100.jpg', '', 1, 0, 0, 0, 0, 0),
(16, 'Medical Supply', 0, '', 4, '', '', '0', 'Kimberly Clark Professional Fresh Care Flushable Cleansing Cloths, White, 3.75 x 5.5, 42/Pack', 'KCC36734', '36000724424', ' ', 'Fresh Care cleansing cloths leave you feeling cleaner and fresher than toilet paper alone. Cloths give you a shower-fresh feeling that leaves you confidently clean.<br>\r\n<br>\r\nFlushable wipes break up quickly and are sewer and septic safe. These soft wipes are gentle on skin, with just the right amount of moisture to provide the ultimate clean. Alcohol free.<br>\r\n<br>\r\nQuantity : 42 Wipes per Pack<br>\r\nSize : 5.5\" x 3.75\"<br>\r\nPlys : 1<br>\r\nColor : White<br>\r\nApplication : Personal Wipe<br>\r\nApplicable Material : Skin', 0.0000, 0.0000, 0.0000, 0.0000, 4.68, 3.47, 'KCC36734.jpg ', '', 1, 0, 0, 0, 0, 0),
(17, 'Medical Supply', 0, '', 4, '', '', '0', 'Professional Disposables Hygea? Sanitizing Skin Wipe', '31851201', ' ', ' ', 'Use wherever antiseptic cleansing/refreshing is needed<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nSize : 5\" x 7\"<br>\r\nScent : Scented<br>\r\nActive Ingredients : Benzalkonium Chloride<br>\r\nApplication : Sanitizing Skin Wipe<br>\r\nUNSPSC Code : 53131624', 0.0000, 0.0000, 0.0000, 0.0000, 0.07, 0.05, '31851201.jpg', '', 1, 0, 0, 0, 0, 0),
(18, 'Medical Supply', 0, '', 4, '', '', '0', 'Kimberly Clark Professional Fresh Care Flushable Cleansing Cloths, White, 5 x 7 1/4, 168/Pack', 'KCC10358EA', '36000103588', ' ', 'Fresh Care cleansing cloths leave you feeling cleaner and fresher than toilet paper alone. Cloths give you a shower-fresh feeling that leaves you confidently clean. Flushable wipes break up quickly and are sewer and septic safe. These soft wipes are gentle on skin, with just the right amount of moisture to provide the ultimate clean. Alcohol free.<br>\r\n<br>\r\nTowel/Wipe Type : Hand/Body Wet Wipe<br>\r\nApplication : Personal Wipe<br>\r\nApplicable Material : Skin<br>\r\nMaterial : Paper<br>\r\nNumber of Plies : 1<br>\r\nColor : White<br>\r\nLength : 7 1/4\"<br>\r\nWidth : 5\"<br>\r\nPackaging : Pack<br>\r\nNumber of Towels/Wipes Per Container : 168', 0.0000, 0.0000, 0.0000, 0.0000, 11.35, 8.41, 'KCC10358EA.jpg', '', 1, 0, 0, 0, 0, 0),
(19, 'Medical Supply', 1, '', 5, '', '', '6', 'Medline Remedy Olivamine Calazime Skin Protectant Paste - 4 oz', 'MSC094544H', '80196306155 ', '  ', 'Remedy Olivamine Calazime Skin Protectant Paste has a higher viscosity (thickness) than other skin pastesNourishes skin, helps treat and prevent diaper rash, wet and cracked skinCalazime dries light exudates from compromised skinMenthol cools irritated skin and calms inflamed tissueSemi-breathable, long-lasting barrier protects torn or exposed skin against harmful stimuliNourishes skin with amino acids, antioxidants and pain control ingredients<br>\r\nNon-allergenic<br>\r\nNon-sensitizing<br>\r\nQuantity : 1 Each<br>\r\nLatex-Free : Yes<br>\r\nSize : 4 oz<br>\r\nTop Selling Item!', 0.0000, 0.0000, 0.0000, 0.0000, 12.43, 7.99, 'msc094544h.jpg', 'Medline Remedy Olivamine Calazime Skin Protectant Paste - 4 oz.jpg', 1, 1, 0, 0, 0, 1517418288),
(20, 'Medical Supply', 0, '', 5, '', '', '0', 'McKesson No-Rinse Shampoo and Body Wash 8 oz. Squeeze Bottle Light Floral Scent', '27391800', '1.06E+13', ' ', 'McKesson Shampoo &amp; Body Wash No Rinse. 8 oz (237 mL). Formulated to thoroughly clean hear and skin without water. Ideal for use with residents who may be confined to a bed. Absence of artificial dyes helps reduce the risk of irritation and makes it perfect for fragile skin and everyday use. Light floral fragrance creates a relaxing experience. Not Made With Natural Rubber Latex.<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nApplication: No-Rinse Shampoo and Body Wash<br>\r\nContainer Type: Squeeze Bottle<br>\r\nHCPCS: A9270<br>\r\nScent: Light Floral Scent<br>\r\nSize: 8 oz.<br>\r\nUNSPSC Code: 53131628<br>\r\nLatex Free Indicator: Not Made with Natural Rubber Latex', 0.0000, 0.0000, 0.0000, 0.0000, 1.81, 1.34, '27391800.jpg', '', 1, 0, 0, 0, 0, 0),
(21, 'Medical Supply', 0, '', 5, 'McKesson Perineal & Skin Cleanser', 'McKesson-Perineal-Skin-Cleanser', '0', 'McKesson Perineal & Skin Cleanser - 1 Gallon', '83101800', '1.06E+13', '', 'Gentle fresh scent.<br><br>\r\nA single-step, no-rinse formula designed to clean, moisturize and deodorize the skin.<br><br>\r\nThe formula is pH balanced to be gentle and non-irritating on all body areas.<br><br>\r\nThe no-rinse perineal wash aids in emulsifying feces and cleansing urine while added Aloe Vera and Vitamins A, C, & E moisturizers help prevent dryness.<br><br>\r\nIntended for use in helping reduce perineal dermatitis.<br><br>\r\nNot made with natural rubber latex.<br><br>\r\n<br><br>\r\nQuantity : 1 Each<br><br>\r\nSize : 1 Gallon<br><br>\r\nScent : Fresh<br><br>\r\nPH Balance : 6.0 - 7.0', 0.0000, 0.0000, 0.0000, 0.0000, 16.01, 11.86, '83101800.jpg', '', 1, 0, 0, 0, 0, 0),
(22, 'Medical Supply', 1, '', 5, '', '', '25', 'Aloe Vesta Cleansing Foam , 8 oz.\r\n', 'HW20001BOM', '768455108411 ', '                ', '<span xss=\"removed\">The Aloe Vesta? perineal/skin cleanser is designed for incontinence cleansing. It contains a strong surfactant system to clean and emollients to moisturize.</span>Dispensed as a liquid spray. It is more convenient than soap and water cleansing from a basin.<br>Please note: This product does not contain latex.<br>Please see package insert for complete instructions for use.<br><ul><li>Size : 8 oz</li><li>Scent : Citrus</li><li>Type : Spray</li><li>Application : Perineal Wash</li><li>Container Type : Pump Bottle</li><li>HCPCS : A6250 (Disclaimer)</li><li>UNSPSC Code : 53131613</li></ul><br><br>\r\n<br><br>\r\n<br><br>\r\n', 0.0000, 0.0000, 0.0000, 0.0000, 9.75, 7.99, '18691801.jpg', 'ConvaTec Aloe Vesta.jpg', 1, 1, 0, 1, 0, 1517353592),
(23, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline 4-Panel Abdominal Binder 12\"- Large/XL', 'ORT21300LXL', '1.01E+13', ' ', '12\" abdominal binder is made with elastic and a soft material to provide comfort and flexibility. Measurement based upon circumference at the hips.<br>\r\n<br>\r\nFour-panel design helps reduce rolling. Not made with natural rubber latex.<br>\r\n<br>\r\nSize : Large/XL<br>\r\nGender : Unisex<br>\r\nLatex-Free : Yes<br>\r\nLength : 46\" - 62\"', 0.0000, 0.0000, 0.0000, 0.0000, 16.12, 11.94, 'ORT21300LXL.jpg', '', 1, 0, 0, 0, 0, 0),
(24, 'Medical Supply', 1, '', 6, '', '', '8', 'Mc Kesson 9\" Abdominal Binders-Universal', 'PC0001BOM', '79-89071-004  ', '        ', 'Abdominal Unisize Binder, 9\", Fits Sizes 45-62. Elastic. Hook and Loop closure for contoured fit.<br>\r\nSize : 46\"-62\"', 0.0000, 0.0000, 0.0000, 0.0000, 24.99, 22.99, 'pc0001bom.jpg', 'MCKESSON ABDOMINAL BINDER.jpg', 1, 1, 0, 0, 0, 1516650312),
(25, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Standard 9\" Abdominal Binders-Universal', 'MDS169022', '1.01E+13', ' ', 'Abdominal Unisize Binder, 9\", Fits Sizes 30-45 Elastic. Hook and Loop closure for contoured fit.<br>\r\n<br>\r\nSize : 30\"-45\"', 0.0000, 0.0000, 0.0000, 0.0000, 17.90, 13.26, 'MDS169022.jpg', '', 1, 0, 0, 0, 0, 0),
(26, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Universal Abdominal Binders-Universal', 'ORT21100', '3.01E+13', ' ', '9\" Abdominal Binders: Made with latex-free elastic for optimal support, contact closure for easy adjustment, premium styles are lined and have a tri-panel design to reduce rolling. 27\" - 48\", Universal.<br>\r\n<br>\r\nSize : 27\"-48\"<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 19.25, 14.26, 'ORT21100.jpg', '', 1, 0, 0, 0, 0, 0),
(27, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Universal Abdominal Binders-Universal', 'ORT21200', '1.01E+13', ' ', '10\" Abdominal Binders: Made with latex-free elastic, contact closure for easy adjustment, premium style is made with a higher quality elastic for longer wear. 27\" - 48\", Universal.<br>\r\n<br>\r\nSize : 27\"-48\"<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 15.00, 11.11, 'ORT21200.jpg', '', 1, 0, 0, 0, 0, 0),
(28, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Universal Abdominal Binders-Universal', 'ORT21300', '3.01E+13', ' ', '12\" Abdominal Binders: Made with latex-free elastic for optimal support, contact closure for easy adjustment, premium styles are lined and have a 4-panel design to reduce rolling. 27\" - 48\", Universal.<br>\r\n<br>\r\nSize : 27\"-48\"<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 17.33, 12.84, 'ORT21300.jpg', '', 1, 0, 0, 0, 0, 0),
(29, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical Abdominal Binder One Size Fits Most Hook and Loop Closure 30 to 45 Inch 12 Inch Unisex', '88803000', '88803000', ' ', 'The new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels, which may result in skin tears, burns or even scarring<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nHCPCS : A4466<br>\r\nGender : Unisex<br>\r\nWidth : 12 Inch<br>\r\nColor : White<br>\r\nSize : One Size Fits Most<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 30 to 45 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 27.70, 20.52, '88803000.jpg', '88803000.jpg', 1, 0, 0, 0, 0, 0),
(30, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical Abdominal Binder Universal Hook & Loop Closure 30-45\" 9\" Unisex', '44103000', ' ', ' ', '3 panel design<br>\r\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels<br>\r\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen<br>\r\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place<br>\r\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over<br>\r\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nHCPCS : A4466<br>\r\nGender : Unisex<br>\r\nWidth : 9 Inch<br>\r\nColor : White<br>\r\nSize : Universal<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 30 to 45 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 24.14, 17.88, '44103000.jpg', '', 1, 0, 0, 0, 0, 0),
(31, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical Abdominal Binder, Universal Hook & Loop Closure, 46-62\" x 12\", Unisex', '81103000', ' ', ' ', '4 panel design<br>\r\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels<br>\r\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen<br>\r\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place<br>\r\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over<br>\r\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nHCPCS : A4462<br>\r\nGender : Unisex<br>\r\nWidth : 12 Inch<br>\r\nColor : White<br>\r\nSize : Universal<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 46 to 62 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 33.21, 24.60, '81103000.jpg', '', 1, 0, 0, 0, 0, 0),
(32, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical 15\" Abdominal Binder with Easy Grip?', '92003000', ' ', ' ', '5 panel design<br>\r\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels<br>\r\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen<br>\r\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place<br>\r\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over<br>\r\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia<br>\r\n<br>\r\nWaist Measurement : 82 to 94 Inch<br>\r\nWidth : 15 Inch<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nColor : White<br>\r\nHCPCS : A4466<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 74.88, 55.47, '92003000.jpg', '92003000.jpg', 1, 0, 0, 0, 0, 0),
(33, 'Medical Supply', 1, '', 6, '', '', '21', 'Procare Abdominal Binder 3X-Large 9\" Panel Binder (82-100\") Inch Unisex', 'PC0002BOM', '79-89250   ', '      ', 'Designed for inconspicuous wear under clothing. Recommended for use with abdominal strains as well as post surgery applications<br>Gender : Unisex<br>\r\nSize :  3X-Large<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 82 to 100 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 79-89250<br>', 0.0000, 0.0000, 0.0000, 0.0000, 29.05, 18.99, 'pc0002bom.jpeg', 'Procare Panel Binder.jpeg', 1, 1, 0, 0, 0, 1516675972),
(34, 'Medical Supply', 0, '', 7, '', '', '0', 'Medline Padded Drop-Arm Commode', 'G98204', '4.01E+13', ' ', 'Arms swing out of the way for easier lateral transfers on and off the commode.<br>\r\nTransfers are easier for patients using a wheelchair.<br>\r\nPlace near the bed with near arm down for patients transferring during the night.<br>\r\nComes standard with pail, lids and splash guard.<br>\r\n350-lb. (159 kg) Weight capacity; Seat height range, 20\"-25\" (51 cm-64 cm); Seat depth, 18\"-20\" (46 cm-51 cm); Width between arms, 18.5\" (47 cm); Overall width, 22\" (56 cm).<br>\r\n<br>\r\nOverall Width : 22\"<br>\r\nWeight Capacity : 350 lbs.<br>\r\nSeat Height : 20\"-25\"<br>\r\nSeat Depth : 18\"-20\"<br>\r\nCasters : No<br>\r\nDrop Arm : Yes<br>\r\nLatex-Free : No<br>\r\nHCPCS : E0165', 0.0000, 0.0000, 0.0000, 0.0000, 114.20, 84.59, 'G98204.jpg', '', 1, 0, 0, 0, 0, 0),
(35, 'Medical Supply', 1, '', 7, '', '', '66', 'CVS Folding  Commode', 'MDS89664', '050428439555  ', '    ', 'Folding frame design assembles in seconds without tools.Commode folds down to reduce storage space by 35% and makes delivery easier.All models include pail, lid and splash guard. Clip-on seats can be removed for easy cleaning. Features deeper seat depth to allow more room for cleaning.<br>\r\nWeight Capacity : 400 lbs.<br>\r\nSeat Depth : 16.5\"<br>Seat Height : 17\"-23\"<br>Width Between Arms : 19\"<br>\r\nOverall Width : 22\"<br>\r\nCasters : No<br>\r\nDrop Arm : No<br>\r\nLatex-Free : No<br>\r\nHCPCS : E0163', 0.0000, 0.0000, 0.0000, 0.0000, 66.45, 49.99, 'mds89664elh.jpg', 'mds89664elh.jpg', 1, 1, 0, 0, 0, 1517524454),
(36, 'Medical Supply', 0, '', 0, '', '', '0', 'Medline Bedside Commode with Microban', 'MDS89664ELMB', '8.88E+11', ' ', 'Microban? antimicrobial product protection inhibits the growth of stains and odors from bacteria, mold and mildew.<br>\r\nThis product does not protect users or others against bacteria, viruses, germs or other disease organisms.<br>\r\nHeight adjustable seat and arm rests provide a customizable fit.<br>\r\nFlat-seat lid cover discretely conceals commode when not in use.<br>\r\nCan be used over toilet to raise seat, enhancing stability; Splash guard included for over-the-toilet use.<br>\r\nDark bronze finish and style suits most decors.<br>\r\n400 lb. weight capacity<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nDistance Between Arms : 19.6\"<br>\r\nSeat Size : 19.2\"W x 17.4\"D<br>\r\nWidth : 27.2\"<br>\r\nFloor To Seat Height : 19\" - 22.5\"<br>\r\nCapacity : 400 lbs', 0.0000, 0.0000, 0.0000, 0.0000, 182.25, 135.00, 'MDS89664ELMB.jpg', '', 1, 0, 0, 0, 0, 0),
(37, 'Medical Supply', 0, '', 7, '', '', '0', 'Invacare IClass All-In-One Commode (Single Pack) - 30\" H x 21\" W x 18\" D', '9630-1', '91536297729', ' ', 'Invacare Commodes offer consumers the comfort and stability they need. The frame is lightweight and consumers gain additional comfort and support from the 16\" wide seat. The Invacare All-in-One Commode can be used bedside or can act as a toilet safety frame or raised toilet seat.<br>\r\n<br>\r\nCan be used bedside or with backrest removed, can act as a toilet safety frame or raised toilet seat<br>\r\nLarge 16\" wide snap-on seat with lid for added comfort and support<br>\r\nComes complete with commode bucket, bucket cover and splash shield<br>\r\nWing nuts allow for removal of backrest when needed<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nSize : 30\" H x 21\" W x 18\" D<br>\r\nWeight Capacity : 350 lbs.', 0.0000, 0.0000, 0.0000, 0.0000, 50.56, 37.45, '9630-1.jpg', '', 1, 0, 0, 0, 0, 0),
(38, 'Medical Supply', 0, '', 7, '', '', '0', 'Medline Pontoon Bedpans', 'DYND80217H', '1.01E+13', ' ', 'Saddle-shaped with a high-rolled front. Graduated in both mL and ounces. Non-stick surface. Also available in pigment-free to support \"greener manufacturing\"<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nColor : Graphite<br>\r\nSize : 1200mL<br>\r\nLatex-Free : Yes<br>\r\nMaterial : Plastic', 0.0000, 0.0000, 0.0000, 0.0000, 3.06, 2.27, 'DYND80217H.jpg', '', 1, 0, 0, 0, 0, 0),
(39, 'Medical Supply', 1, '', 8, '', '', '6', 'Medline Cervical Collar - Small, 3 3/4\" SOFT', 'PC131001BOM', '0110080196918775170021709004010124002 ', '   ', 'This Curad Universal Cervical Collar provides necessary support and \r\nhelps you heal after a neck sprain or strain. The serpentine style \r\nallows the chin to rest comfortably, while bracing the head. This firm \r\nfoam neck support collar comes in a universal size. The device restricts neck motion so muscles can rest and healing \r\ncan begin. It is used in hospitals to help patients in their recovery.<b>Curad Universal Cervical Collar, Firm Foam:</b> <ul><li>For neck sprains, strains or mild muscle weakness</li><li>Used in hospitals</li><li>1 cervical support collar</li><li>Dimensions: 3\" 3/4 <br></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 6.99, 'pc131001bom.jpeg', 'CERVICAL COLLAR CURAD.jpeg', 1, 1, 0, 0, 0, 1516671061),
(40, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Serpentine Style Firm Cervical Collar - Medium, 3\" x 17\"', 'ORT13200M', '1.01E+13', ' ', 'Helps allows the chin to rest on the collar.<br>\r\nSynthetic stockinette cover with hook and loop closure.<br>\r\nIncludes 6\" extension piece to accommodate larger sizes.<br>\r\nIncludes an extra synthetic cover that can be washed.<br>\r\nFirm Foam<br>\r\n<br>\r\nSize : Medium, 3\" x 17\"<br>\r\nDensity: Firm<br>\r\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 4.47, 3.31, 'ORT13200M.jpg', '', 1, 0, 0, 0, 0, 0),
(41, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Serpentine Style Firm Cervical Collar - Large', 'ORT13200L', '1.01E+13', ' ', 'Helps allows the chin to rest on the collar.<br>\r\nSynthetic stockinette cover with hook and loop closure.<br>\r\nIncludes an extra synthetic cover that can be washed.<br>\r\nFirm Foam<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nSize : Large, 4\" x 22\"<br>\r\nDensity: Firm<br>\r\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 5.13, 3.80, 'ORT13200L.jpg', '', 1, 0, 0, 0, 0, 0),
(42, 'Medical Supply', 0, '', 8, '', '', '0', 'Laerdal Medical Cervical Collar Stifneck? Select? Adult', '98013000', '98013000', ' ', 'Locks ensure selected sizes stay in place<br>\r\nAdjustment tracks ensure symmetrical alignment of size<br>\r\nEasy access for pulse checks, advanced airway procedures, and visualization through oversized trachea hole<br>\r\nDirections molded into collar<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nX-Ray Compatibility : X-Ray Compatible<br>\r\nSize : Adult<br>\r\nApplication : Cervical Collar<br>\r\nColor Code : White<br>\r\nMaterial : Plastic<br>\r\nUNSPSC Code : 42171607', 0.0000, 0.0000, 0.0000, 0.0000, 11.70, 8.67, '98013000.jpg', '', 1, 0, 0, 0, 0, 0),
(43, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Philadelphia Patriot One-Piece Cervical Collars-Universal', 'ORT12000A', ' ', ' ', 'Item # MED ORT12000A by Medline (Mfg. Part # , UPC # )<br>\r\n<br>\r\nPhilly Patriot Cervical Collars: Made Of High Density Polyethylene Plastic With A Foam Lining For Comfort And Rigidity, Stacks Flat To Preserve Space, Adjusts To Different Heights With Locking Tabs, X-Ray Ct And Mri Lucent Adult Size, 11\" - 23\" Circumference.<br>\r\n<br>\r\nQuantity : Each<br>\r\nSize : 11\"-23\"', 0.0000, 0.0000, 0.0000, 0.0000, 14.09, 10.44, 'ORT12000A.jpg', '', 1, 0, 0, 0, 0, 0),
(44, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Philadelphia Patriot One-Piece Cervical Collars-Universal', 'ORT12000C', ' ', ' ', 'Philly Patriot Cervical Collars: Made Of High Density Polyethylene Plastic With A Foam Lining For Comfort And Rigidity, Stacks Flat To Preserve Space, Adjusts To Different Heights With Locking Tabs, X-Ray Ct And Mri Lucent Child Size, 8\" - 18\" Circumference.<br>\r\n<br>\r\nQuantity : Each<br>\r\nSize : 8\"-18\"', 0.0000, 0.0000, 0.0000, 0.0000, 12.35, 9.15, 'ORT12000C.jpg', '', 1, 0, 0, 0, 0, 0),
(45, 'Medical Supply', 1, '', 8, '', '', '23', ' Perfit ACE Rigid Cervical Collar Adult Adjustable ', 'PC10004BOM', '0105707480024636101891191  ', '          ', '<h4> Rigid Cervical Collar Perfit Ace Plastic Adult Adjustable One Piece 3 To 6 Inch Height</h4><h4>esigned with 16 different settings and can adjust from neckless to tall adult neck sizes</h4><h4>Stores completely flat</h4><ul><li>Incorporates the Perfect numbering and color sizing system</li><li>Horizontal sizing line</li><li>Flip chin piece for easy airway access</li><li>Nasal cannula holders located on collar body</li><li>ItemManufacturer: Ambu</li><li>ItemBrand: Perfit ACE</li><li>Application: Rigid Cervical Collar</li><li>Material: Polyethylene / Foam Padding</li><li>Type: Plastic</li><li>Size: Adult Adjustable</li><li>Style: One Piece</li><li>Color: White Plastic / Light Gray Padding</li><li>Fastening Type: Hook and Loop Closure</li><li>Height: 3 to 6 Inch Height</li><li>Color Code: Multi Color</li><li>X-Ray Compatibility: X-Ray, CT, MRI Lucent</li><li>Quantity : 1 Each</li><li>Size : Large</li></ul><br><br>', 0.0000, 0.0000, 0.0000, 0.0000, 19.14, 13.99, 'pc10004bom.jpg', 'Perfit ACE Rigid Cervical Collar Adult Adjustable.jpg', 1, 1, 0, 0, 0, 1516748350),
(46, 'Medical Supply', 0, '', 8, '', '', '0', 'Scott Specialties Cervical Collar Sport-Aid? Medium Density Universal 2-1/2 Inch Height 12 to 22 Inch Circumference', '45183000', '76318912667', ' ', 'Extra stockinette sleeve included<br>\r\n2-1/2 inch wide at chin cut-out<br>\r\nHook and Loop Closure<br>\r\n1inch thick medium-firm foam, fits 12 to 22 inch neck<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nColor : Natural Color<br>\r\nType : Medium Density<br>\r\nSize : Universal<br>\r\nApplication : Cervical Collar<br>\r\nHeight : 2-1/2 Inch Height<br>\r\nMaterial : Foam<br>\r\nNeck Circumference : 12 to 22 Inch Circumference<br>\r\nUNSPSC Code : 42241803', 0.0000, 0.0000, 0.0000, 0.0000, 9.61, 7.12, '45183000.jpg', '', 1, 0, 0, 0, 0, 0),
(47, 'Medical Supply', 1, '', 9, '', '', '25', 'EKO CORE Digital Stethoscope Bundle, Stethoscope + Digital Device', 'CORE-BUNDLE', '8.64E+11   ', '    ', 'The Eko Digital Stethoscope provides everything you need to experience the next big thing in modern diagnostic care. An attached analog stethoscope provides added convenience with an included mobile app to record, replay, and amplify heart and lung sounds. <br>\r\nEko Core digital device with attached single-head analog stethoscope <br>\r\nProvides seamless analog and digital sound Wirelessly transmits the stethoscope audio via Bluetooth LE? to a smartphone or tablet . Analog and digital modes . Audio amplification in digital mode 7 amplification levels .<br>\r\nRechargable battery . Mobile App compatible with smartphones and tablets with iOS 7 or Android 5.0 and up. Web app compatible with current versions of Chrome, Safari, Firefox and Edge. <br>\r\nIncludes mobile app .<br>\r\nUnless you are a licensed care provider or a similar qualified entity a prescription is required to purchase this item. <br>\r\nQuantity : 1 Each<br>\r\nMaterial : High-Impact ABS Plastic<br>\r\nConnection : Bluetooth 4.0<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 0.00, 299.99, 'CORE-BUNDLE.jpg ', '', 0, 0, 0, 0, 0, 1517673430),
(48, 'Medical Supply', 1, '', 10, '', '', '53', 'Simply Thick Food Thickener Gel - Bottle, 64 oz. with Recyclable Pump ', 'NU60001BOM', '820513050107    ', '      ', 'Simply Thick is the next-generation food and beverage thickener designed specifically for people who have difficulties swallowing.<br>\r\nSimply Thick gel thickener consists of four common food ingredients: water, xanthan gum, sodium acid sulphate and potassium sorbate (preservative) <br>\r\nFreshness Guarantee: Betty Mills guarantees the expiration date on our products will always meet or exceed your satisfaction or we will replace it at no cost.<br><br><ul><li>\r\nQuantity : 1 Bottle</li><li>\r\nSize : 64 oz.</li><li>\r\nFlavor : Gel (Nectar - Honey Consistency)</li><li>\r\nManuf P/N: Simply Thick 05005</li><li>\r\nContainer Type : Pump/Pour Bottle</li><li>\r\nApplication : Food Thickener</li><li>\r\nIncludes : 1 Recyclable Pump</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 47.99, 38.99, '50002601.jpg', '', 1, 1, 0, 0, 0, 1517851378),
(49, 'Medical Supply', 0, '', 11, '', '', '0', 'Medline Biohazard Patient Room Sharps Container - 5 Quarts', 'MDS705153H', '8.88E+11', '  ', 'The torturous lid design facilitates one-handed disposal.<br>\r\nHorizontal drop design for maximum capacity to fill line.<br>\r\nEach container locks for final disposal.<br>\r\nNestable containers save space and help reduce shipping costs.<br>\r\nEasy-to-see fill levels.<br><br>\r\nQuantity : 1 Each<br>\r\nVolume : 5 Quart<br>\r\nColor : Red<br>\r\nLatex Free : Yes<br>\r\nLid Compatibility : Yes<br>\r\nNested : Yes<br>\r\nContainer Type : Sharps/Biohazard Container<br>\r\nCounter Balanced Lid : No<br>\r\nLid Compatibility : Yes<br>\r\nTortuous Lid : Yes<br>\r\nFor Use With : MED MDS707953<br>\r\nUNSPSC : 42142531', 0.0000, 0.0000, 0.0000, 0.0000, 5.59, 4.14, 'MDS705153H.jpg ', '', 1, 0, 0, 0, 0, 0),
(50, 'Medical Supply', 0, '', 11, '', '', '0', 'Medline Biohazard Patient Room Sharps Containers - 5 Quarts', 'MDS705153', '8.88E+11', ' ', 'The torturous lid design facilitates one-handed disposal.<br>\r\nHorizontal drop design for maximum capacity to fill line.<br>\r\nEach container locks for final disposal.<br>\r\nNestable containers save space and help reduce shipping costs.<br>\r\nEasy-to-see fill levels.<br>\r\n<br>\r\nQuantity : 20 per Case<br>\r\nVolume : 5 Quart<br>\r\nColor : Red<br>\r\nLatex Free : Yes<br>\r\nLid Compatibility : Yes<br>\r\nNested : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 120.57, 89.31, 'MDS705153.jpg ', '', 1, 0, 0, 0, 0, 0),
(51, 'Medical Supply', 0, '', 12, '', '', '0', 'McKesson Clinging Roll Gauze Sterile Latex-Free 4in x 4.5 Yds', '66722000', '8.10E+11', ' ', 'Clinging Gauze Rolls. Sterile. 4 inch x 4.5 yds. 100% cotton, 2-ply woven bandage. Ideal as a secondary dressing for wrapping legs and arms and to hold dressings in place. Provides light stretch which enables it to conform to difficult body contours while also providing light compression. Easy to apply. Single Use. Compare to Kling?, Kerlix Lite?, and Bulkee Lite?. Latex-Free. Packaged: 12 Rolls Per Pack. Kling is a registered trademark of Johnson &amp; Johnson Medical Inc. Kerlix Lite is a registered trademark of Kendall Healthcare. Bulkee Lite is a registered trademark of Medline Industries, Inc.<br>\r\n<br>\r\nQuantity : 12 EA per PK<br>\r\nApplication : Conforming Dressing<br>\r\nDimensions : 4 Inch X 4.5 Yard<br>\r\nSterile : Yes<br>\r\nLatex-Free Indicator : Latex-Free<br>\r\nMaterial : Cotton<br>\r\nColor : White<br>\r\nShape : Roll', 0.0000, 0.0000, 0.0000, 0.0000, 8.01, 5.93, '66722000.jpg', '', 1, 0, 0, 0, 0, 0),
(52, 'Medical Supply', 0, '', 12, '', '', '0', 'McKesson Clinging Roll Gauze Sterile Latex-Free 4in x 4.5 Yds', '66722000-CS', ' ', ' ', 'Clinging Gauze Rolls. Sterile. 4 inch x 4.5 yds. 100% cotton, 2-ply woven bandage. Ideal as a secondary dressing for wrapping legs and arms and to hold dressings in place. Provides light stretch which enables it to conform to difficult body contours while also providing light compression. Easy to apply. Single Use. Compare to Kling?, Kerlix Lite?, and Bulkee Lite?. Latex-Free. Packaged: 12 Rolls Per Sleeve, 8 Sleeves Per Case. Kling is a registered trademark of Johnson &amp; Johnson Medical Inc. Kerlix Lite is a registered trademark of Kendall Healthcare. Bulkee Lite is a registered trademark of Medline Industries, Inc.<br>\r\n<br>\r\nQuantity : 12 EA per Pack 8 Packs per Case<br>\r\nApplication : Conforming Dressing<br>\r\nDimensions : 4 Inch X 4.5 Yard<br>\r\nSterile : Yes<br>\r\nLatex-Free Indicator : Latex-Free<br>\r\nMaterial : Cotton<br>\r\nColor : White<br>\r\nShape : Roll', 0.0000, 0.0000, 0.0000, 0.0000, 65.60, 48.59, '66722000-CS.jpg ', '', 1, 0, 0, 0, 0, 0),
(53, 'Medical Supply', 0, '', 13, '', '', '0', 'McKesson Trilon? Powder-Free Exam Vinyl Gloves - Large', '52961300', ' ', ' ', 'Trilon? Vinyl Powder-Free Exam Gloves - Large<br>\r\nOffers a soft and silky feel with a translucent look.<br>\r\nSmooth finish for excellent tactile sensitivity.<br>\r\nPowder-Free<br>\r\nBeaded Cuff<br>\r\nNon-Sterile<br>\r\nAmbidextrous<br>\r\nSingle use only<br>\r\nNot made with natural rubber latex.<br>\r\n<br>\r\nQuantity : 100 per Box<br>\r\nSize : Large<br>\r\nMaterial : Vinyl<br>\r\nColor : Clear<br>\r\nCuff Style : Beaded Cuff<br>\r\nFingertip Thickness : 0.10 mm (4 mil)<br>\r\nGlove Exterior : Smooth<br>\r\nHand Compatibility : Ambidextrous<br>\r\nLength in Inches : 9.6 Inch<br>\r\nPowder Content : Powder Free<br>\r\nSterility : NonSterile', 0.0000, 0.0000, 0.0000, 0.0000, 4.82, 3.57, '52961300.jpg', '', 1, 0, 0, 0, 0, 0),
(54, 'Medical Supply', 0, '', 14, '', '', '0', 'Medical Action Industries Enema Bucket Set w/Castile Soap Gentle-L-Care? 1500 ml', '25602700', ' ', ' ', 'Quantity : 1EA<br>\r\nVolume : 1500 mL<br>\r\nApplication : Enema Bucket Set w/Castile Soap<br>\r\nUNSPSC Code : 42141901', 0.0000, 0.0000, 0.0000, 0.0000, 3.97, 2.94, '25602700.jpg', '', 1, 0, 0, 0, 0, 0),
(55, 'Medical Supply', 0, '', 14, '', '', '0', 'Medline Enema Bag Set - 1500 cc', 'DYND70102H', '1.01E+13', ' ', 'Medline Enema Bag, with Slide Clamp, Polybag<br>\r\n<br>\r\nMedline Disposable Enema Bag Set: Designed with a spill proof valve on the 1500 cc enema bag and easy-use funnel top. 54\" soft vinyl tube has a pre-lubricated, smooth, non-traumatic tip with rounded eyes for safety and easy insertion. Set also contains a moisture-proof, castile soap packet and a plastic shut- off clamp. Economy Enema Bag, Same as Above, Individually Bagged.<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nDisposable : Yes<br>\r\nLatex-Free : Yes<br>\r\nSize : 1500cc', 0.0000, 0.0000, 0.0000, 0.0000, 2.48, 1.84, 'DYND70102H.jpg ', '', 1, 0, 0, 0, 0, 0),
(56, 'Medical Supply', 0, '', 14, 'Amsino International Enema Bag', 'Amsino-International-Enema-Bag', '0', 'Amsino International Enema Bag - 1500 mL', '33332700', '        ', ' ', 'Slide Clamp, Soap Packet, Waterproof Drape<br><br>\r\nQuantity : 1 Each<br><br>Volume : 1,500 mL Bag<br>\r\nApplication : Enema Bag and Bucket Set<br>\r\nTip Type : Pre-Lubricated Tip<br>\r\nTubing Type : 60 Inch Tubing<br><br>\r\nUNSPSC Code : 42141902', 0.0000, 0.0000, 0.0000, 0.0000, 1.74, 1.29, '33332700.jpg', '31851201.jpg', 1, 0, 0, 0, 0, 0),
(57, 'Medical Supply', 0, '', 14, '', '', '0', 'Medtronic Enema Bucket 1400cc', '63102700', '1.09E+12', ' ', 'Dover? Enema Bucket and Tube Pre-Lubricated Tip, 24 Fr/Ch (8.0 mm) x 60\" (1.5 m) 1400 mL<br>\r\n<br>\r\nQuantity : 1EA<br>\r\nVolume : 1400cc<br>\r\nApplication : Enema Bucket<br>\r\nTubing Type : 60 Inch Tube<br>\r\nProp 65 : Yes<br>\r\nMaterial : Plastic<br>\r\nUNSPSC Code : 42141903', 0.0000, 0.0000, 0.0000, 0.0000, 2.82, 2.09, '63102700.jpg', '', 1, 0, 0, 0, 0, 0),
(58, 'Medical Supply', 0, '', 14, '', '', '0', 'Medtronic Enema Bucket 1400cc, 50 EA/CS', '63102705', '2.09E+12', ' ', 'Quantity : 50 EA/CS<br>\r\nApplication: Enema Bucket<br>\r\nMaterial: Plastic<br>\r\nTubing Type: 60 Inch Tube<br>\r\nUNSPSC Code: 42141903<br>\r\nVolume: 1400cc<br>\r\nProp 65 : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 138.25, 102.41, '63102705.jpg', '', 1, 0, 0, 0, 0, 0),
(59, 'Medical Supply', 0, '', 14, '', '', '0', 'Dynarex Enema Kit', '11742700', '6.17E+11', ' ', 'Kit contains: (1) 1500mL enema bag, (1) inlet tubing (60 inch length), (1)tubing clamp, (1) protection clamp, (1) Castile soap concentrate, (1) moisture proof drape (45 x 42 cm).<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nApplication: Enema Kit<br>\r\nUNSPSC Code: 42141903<br>\r\nLatex Free Indicator: Not Made with Natural Rubber Latex', 0.0000, 0.0000, 0.0000, 0.0000, 2.28, 1.69, '11742700.jpg', '', 1, 0, 0, 0, 0, 0),
(60, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Non-Sterile Graduated Plastic Medicine Cups - 1 oz - 100/Pack', 'DYND80000H', '2.01E+13', ' ', 'Translucent cups suitable for dispensing both liquid and dry medications<br>\r\nCalibrated from 1-8 drams, 1/8-1 fluid ounce, 1-2 tablespoon and 2.5-30 mL and cc<br>\r\n<br>\r\nQuantity : 100 per Pack, 1 Tube<br>\r\nLatex-Free : Yes<br>\r\nMaterial : Plastic<br>\r\nSize : 1 oz', 0.0000, 0.0000, 0.0000, 0.0000, 1.94, 1.44, 'DYND80000H.jpg ', '', 1, 0, 0, 0, 0, 0),
(61, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Non-Sterile Graduated Plastic Medicine Cups', 'DYND90000', '4.09E+13', ' ', 'Translucent cups suitable for dispensing both liquid and dry medications<br>\r\nDYND80000 is calibrated from 1-8 drams, 1/8-1 fluid ounce, 1-2 tablespoon and 2.5-30 mL and cc<br>\r\nDYND90000 comes with mL and cc measurements only<br>\r\nPlastic<br>\r\n<br>\r\nQuantity : 5000 EA/CS<br>\r\nGraduated : Yes<br>\r\nMaterial : Plastic<br>\r\nProduct Type : Medicine Cup<br>\r\nOunces : 1<br>\r\nSterile : No<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 97.13, 44.49, 'DYND90000.jpg ', '', 1, 0, 0, 0, 0, 0),
(62, 'Medical Supply', 0, '', 15, '', '', '0', 'McKesson Medi-Pak? Medicine Cups, 1 oz. Clear Polypropylene, 100 EA/PK', '46941201', ' ', ' ', 'With Lip<br>\r\n1 oz.<br>\r\nClear<br>\r\nGraduated<br>\r\nNon-Sterile<br>\r\nPolypropylene<br>\r\nSingle patient use.<br>\r\nNot Made With Natural Rubber Latex.<br>\r\n<br>\r\nQuantity : 100 Cups<br>\r\nCapacity : 1 oz<br>\r\nLatex Free : Yes<br>\r\nMaterial : Polypropylene<br>\r\nColor : Clear', 0.0000, 0.0000, 0.0000, 0.0000, 1.15, 0.85, '46941201.jpg', '', 1, 0, 0, 0, 0, 0),
(63, 'Medical Supply', 0, '', 15, '', '', '0', 'McKesson Medi-Pak? 1 oz. Clear Polypropylene Medicine Cups, 5000/CS', '46941200', '4.06E+13', ' ', 'With Lip<br>\r\n1 oz.<br>\r\nClear<br>\r\nGraduated<br>\r\nNon-Sterile<br>\r\nPolypropylene<br>\r\nSingle patient use.<br>\r\nNot made with natural rubber latex.<br>\r\n<br>\r\nQuantity : 5000 Cups (100 Per Sleeve, 50 Sleeves Per Case)<br>\r\nMON46941200 - McKessonMedi-Pak? 1 oz. Clear Polypropylene Medicine Cups, 5000/CS<br>\r\n', 0.0000, 0.0000, 0.0000, 0.0000, 54.96, 40.71, '46941200.jpg', '', 1, 0, 0, 0, 0, 0),
(64, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Disposable Paper Souffle Cups .75 oz.- 250/Box', 'NON024215H', '3.01E+13', ' ', 'Feature tightly rolled edges and box pleats to ensure stability and rigidity. Work well in conjunction with pill crushers for clean and simple pill crushing. Ideal for medication distribution.<br>\r\n<br>\r\nQuantity : 250 per Box<br>\r\nSize : 0.75 oz<br>\r\nColor : White<br>\r\nLatex-Free : Yes<br>\r\nGraduated : No<br>\r\nLiquid Type : Cold<br>\r\nMaterial : Paper<br>\r\nUNSPSC : 42192603', 0.0000, 0.0000, 0.0000, 0.0000, 3.51, 2.60, 'NON024215H.jpg ', '', 1, 0, 0, 0, 0, 0),
(65, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Disposable Paper Souffle Cups - 250/Bag', 'NON024214Z', '2.01E+13', ' ', 'Feature tightly rolled edges and box pleats to ensure stability and rigidity.<br>\r\nWork well in conjunction with pill crushers for clean and simple pill crushing.<br>\r\nIdeal for medication distribution.<br>\r\n<br>\r\nQuantity : 250 per Bag<br>\r\nSize : 0.5 oz<br>\r\nMaterial : Paper<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 4.32, 3.20, 'NON024214Z.jpg ', '', 1, 0, 0, 0, 0, 0),
(66, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Disposable Paper Souffle Cups-White - 5000/Case', 'NON024215', '4.01E+13', ' ', 'Medline Cup, Paper, Souffle, .75 Oz<br>\r\n<br>\r\nMedline Souffle Cups: Pleated portions are made of one-piece, dry-waxed construction for durability. Rims are tightly rolled for rigidity, and the base is recessed to prevent tipping.<br>\r\n<br>\r\nQuantity : 5,000 per Case, 20 Boxes<br>\r\nLatex-Free : Yes<br>\r\nSize : 0.75 oz', 0.0000, 0.0000, 0.0000, 0.0000, 64.30, 47.63, 'NON024215.jpg ', '', 1, 0, 0, 0, 0, 0),
(67, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Disposable Paper Souffle Cups-White - 5000/Case', 'NON024220', '4.01E+13', ' ', 'Medline Cup, Paper, Souffle, 1 Oz<br>\r\n<br>\r\nMedline Souffle Cups: Pleated portions are made of one-piece, dry-waxed construction for durability. Rims are tightly rolled for rigidity, and the base is recessed to prevent tipping. 3-1/2 oz cup doubles as a drinking cup. 1 oz.<br>\r\n<br>\r\nQuantity : 5,000 per Case, 20 Boxes<br>\r\nLatex-Free : Yes<br>\r\nSize : 1 oz', 0.0000, 0.0000, 0.0000, 0.0000, 74.17, 54.95, 'NON024220.jpg ', '', 1, 0, 0, 0, 0, 0),
(70, '', 27, '', 28, '', '', '6', 'Medline K4 Basic 18\" Lightweight Wheelchair, Swing Back Desk Arm Style, Swing Away Footrests', 'MDS806500E', '1.01E+13 ', '     ', '<ul><li xss=\"removed\">Durable, tig-welded frame with gray powder coat finish.</li><li xss=\"removed\">Dual axle hemi-height adjustable.</li><li xss=\"removed\">Smooth-rolling solid flat-free latex tires.</li><li xss=\"removed\">Adjustable-height back; Comfortable nylon upholstery.</li><li xss=\"removed\">Swing back desk length arms.</li><li xss=\"removed\">Swing away footrest.</li><li xss=\"removed\">Seat size 16\" x 18\".</li><li xss=\"removed\">Optional accessories: O2 Holder (MDS85181U), Anti-Fold Device (MDS85196), I.V. Pole (MDS85183), Overhead Anti-Theft Device (MDS85197A), O2/I.V. Combo (MDS85190), Anti-Tip Device (MDS85189WK4), Tinnerman Legrest Locks (WCA806991).</li></ul><ul><li>Weight Capacity : 300</li><li>Seat to ground : 20-18\"</li><li>Rim to rim open : 26.5</li><li>Rim to rim closed : 12</li><li>Weight w/o legrest (lbs) : 34</li><li>Seat : 18 x 16</li><li>Back : 18 x 16</li><li>Highest point to ground : 36.5</li><li>Length front to back : 31.5</li><li>Height of arm pad from seat rail : 9.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 252.60, 187.11, 'mds806500e.jpg', 'MDS806500NE.jpg', 1, 1, 0, 0, 0, 1513967344),
(71, '', 27, '', 28, '', '', '6', 'Medline K4 Basic 16\" Lightweight Wheelchair, Swing Back Desk Arm Style, Swing Away Footrests', 'MDS806500NE', '1.01E+13   ', '     ', '<ul xss=\"removed\"><li xss=\"removed\">Durable, tig-welded frame with gray powder coat finish.</li><li xss=\"removed\">Dual axle hemi-height adjustable.</li><li xss=\"removed\">Smooth-rolling solid flat-free latex tires.</li><li xss=\"removed\">Adjustable-height back; Comfortable nylon upholstery.</li><li xss=\"removed\">Swing back desk length arms.</li><li xss=\"removed\">Swing away footrest.</li><li xss=\"removed\">Seat size 16\" x 16\".</li><li xss=\"removed\">Optional accessories: O2 Holder (item MDS85181U), Anti-Fold Device (item MDS85196), I.V. Pole (MDS85183), Overhead Anti-Theft Device (item MDS85197A), O2/I.V. Combo (item MDS85190), Anti-Tip Device (item MDS85189WK4), Tinnerman Legrest Locks (item WCA806991).</li></ul><ul xss=\"removed\"><li>Weight Capacity : 300</li><li>Seat to ground : 20-18\"</li><li>Rim to rim open : 24.5</li><li>Rim to rim closed : 12</li><li>Weight w/o legrest (lbs) : 33</li><li>Seat : 16 x 16</li><li>Back : 16 x 16</li><li>Highest point to ground : 36.5</li><li>Length front to back : 31.5</li><li>Height of arm pad from seat rail : 8.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 261.37, 193.61, 'mds806500ne.jpg', 'MDS806500NE.jpg', 1, 1, 0, 0, 0, 1513967306),
(72, '', 27, '', 28, '', '', '6', 'Medline K4 Basic 20\" Lightweight Wheelchair, Swing Back Desk Arm Style, Elevating Footrests', 'MDS806565E', '80196305691   ', '      ', '<ul><li xss=\"removed\">Durable, tig-welded frame with gray powder coat finish.</li><li xss=\"removed\">Dual axle hemi-height adjustable.</li><li xss=\"removed\">Smooth-rolling solid flat-free latex tires.</li><li xss=\"removed\">Adjustable-height back; Comfortable nylon upholstery.</li><li xss=\"removed\">Swing back desk length arms.</li><li xss=\"removed\">Detachable elevating footrest.</li><li xss=\"removed\">Seat size 20\" x 18\".</li><li xss=\"removed\">Optional accessories: O2 Holder (item MDS85181U), Anti-Fold Device (item MDS85196), I.V. Pole (MDS85183), Overhead Anti-Theft Device (item MDS85197A), O2/I.V. Combo (item MDS85190), Anti-Tip Device (item MDS85189WK4), Tinnerman Legrest Locks (item WCA806991).</li></ul><ul><li>Weight Capacity : 300</li><li>Seat to ground : 20-18\"</li><li>Rim to rim open : 28.5</li><li>Rim to rim closed : 12</li><li>Weight w/o legrest (lbs) : 34.5</li><li>Seat : 20 x 18</li><li>Back : 20 x 18</li><li>Highest point to ground : 36.5</li><li>Length front to back : 31.5</li><li>Height of arm pad from seat rail : 9.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><p xss=\"removed\"></p><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 286.82, 212.46, 'mds806565e.jpg', 'Medline_K420.jpg', 1, 1, 0, 0, 0, 1513967465);
INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `is_deleted`, `modified_date`) VALUES
(73, '', 27, '', 28, '', '', '7', 'Drive Medical Viper Plus GT Wheelchair with Flip Back Removable Adjustable Full Arms, Elevating Leg Rests, 16\" Seat', 'PLA416FBFAARAD-ELR', '8.22E+11 ', '     ', '<p xss=\"removed\">The Drive Medical Viper GT is the most versatile wheelchair right out of the box and is easier to propel and transport than an average weight chair. The Viper GT comes standard with adjustable padded arms, multiple seat to floor height positions, adjustable anti-tippers with flip-up wheels which never have to be removed and push to lock wheel locks. The back is both angle adjustable and height adjustable to provide added patient comfort. The 16\", 18\" and 20\" version of the Viper GT come standard with a seat rail extension kit. The all-aluminum frame is high strength while remaining lightweight. The wheelchair upholstery is made of durable nylon which is flame retardant and resists mildew and bacteria. Precision sealed wheel bearings in front and rear ensure long lasting performance and reliability. The quick release, 24\" composite Mag-style wheels are lightweight and maintenance free. Tool free adjustable swing away footrests also feature easy to access release handles. Urethane rear tires and casters offer superior performance, smoother ride and are lightweight.</p><br xss=\"removed\"><p xss=\"removed\"><strong xss=\"removed\">Features and Benefits</strong></p><ul xss=\"removed\"><li xss=\"removed\">Built-in seat rail extensions and extendable upholstery easily adjusts seat depth from 16\" to 18\"</li><li xss=\"removed\">All-Aluminum frame</li><li xss=\"removed\">Dual Axle allows for multiple seat-to-floor height positions</li><li xss=\"removed\">Adjustable height, flip-back, removable, padded arms</li><li xss=\"removed\">Weighs under 32 lbs (Excluding front rigging)</li><li xss=\"removed\">Over-center cross brace eliminates need for seat guides; Works with seating and positioning accessories</li><li xss=\"removed\">Adjustable angle back easily adjusts from 5-degrees to 20-degrees</li><li xss=\"removed\">Adjustable height back adjusts from 17\"-19\" in 1\" increments, adaptable for individual patient needs</li><li xss=\"removed\">Durable, heavy-gauge flame-retardant nylon upholstery with hook-and-loop fastener straps, resists mildew and bacteria</li><li xss=\"removed\">Quick release, 24\" composite Mag-style wheels are lightweight and maintenance free</li><li xss=\"removed\">Precision sealed wheel bearings in front and rear ensure long-lasting performance and reliability</li><li xss=\"removed\">Adjustable angle caster forks have three height adjustments and angle adjustability</li><li xss=\"removed\">Tool-free adjustable swing-away footrests also feature easy-to-access release handles</li><li xss=\"removed\">Urethane rear tires and casters offer superior performance, smoother ride, and are lightweight</li><li xss=\"removed\">Adjustable anti-tipper with flip-up wheels never needs to be removed</li><li xss=\"removed\">Comes with push-to-lock wheel locks</li></ul><h5 xss=\"removed\"></h5><ul><li>Dimensions : 42\"L x 24\"W x 36\"H</li><li>Armrest Length : 14\"</li><li>Armrest to Floor Height : 27.5\"</li><li>Back Height : 19\"</li><li>Brakes : Push-To-Lock Wheel Brakes</li><li>Casters : 8\"</li><li>Closed Width : 12.5\"</li><li>Folded Dimensions : 42\" x 12.5\" x 36\"</li><li>Number of Wheels : 4</li><li>Overall Length w/ Riggings : 42\"</li><li>Color : Black</li><li>Material : Aluminum</li><li>Weight Capacity : 300 lbs.</li><li>Rear Wheels : 24\" x 1\"</li><li>Seat Depth : 18\"</li><li>Seat Width : 16\"</li><li>Seat to Armrest Height : 8\"</li><li>Seat to Floor Height : 17.5\"-19.5\"</li><li>Seat to Foot Deck : 15.5\"-18.5\"</li><li>Warranty : Limited Lifetime</li><li><span xss=\"removed\">Prop 65: Yes</span></li><li>Assembly : Basic Assembly Required</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 610.66, 452.34, 'pla416fbfaarad-elr.jpg', 'pla416fbfaarad-elr.jpg', 1, 1, 0, 0, 0, 1513966704),
(74, '', 27, '', 29, '', '', '7', 'Drive Medical Two Wheeled Walker with Seat, Blue', '1239BL', '8.22E+11 ', '    ', '<ul><li xss=\"removed\">Features comfortable and convenient padded seat and backrest</li><li xss=\"removed\">Quickly folds when not in use</li><li xss=\"removed\">Rear leg tips act as brakes when pressed down</li><li xss=\"removed\">Height adjustable handles</li><li xss=\"removed\">Large swivel wheels added for maneuverability</li><li xss=\"removed\">Countoured handles for a comfortable grip</li></ul><ul><li>Dimensions : 23.25\"L x 22\"W x 29\"H</li><li>Handle Height (Max) : 38\"</li><li>FSA Eligible : Yes</li><li>Warranty : Limited Lifetime</li><li>User : Universal</li><li>Assembly : Basic Assembly Required</li><li>Installation : No Installation Required</li><li>Latex Free : Yes</li><li>HCPCS : E0143; E0156</li><li>Handle Height (Min) : 29\"</li><li>Color : Blue</li><li>Material : Aluminum</li><li>Weight Capacity : 300 lbs</li><li>Seat Depth : 8\"</li><li>Seat Width : 15.875\"</li><li>Seat to Floor Height : 20.5\"</li><li><span xss=\"removed\">Prop 65 : Yes</span></li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 73.36, 54.34, '1239bl.jpg', 'DriveMedical_1239BL.jpg', 1, 1, 0, 0, 0, 1513966485),
(75, '', 27, '', 29, '', '', '7', 'Drive Medical Portable Folding Travel Walker with 5\" Wheels and Fold up Legs', 'RTL10263KDR', '8.22E+11 ', '    ', '<p xss=\"removed\">The Drive Medical Portable Folding Walker in red easily folds, tool free, to half the size of a traditional walker and can be stored in a \"Ready Set Go\" pouch that is provided with each walker. The legs are attached with strong elastic cords making it easy to fold flat, for easy storage and transportation. When the walker is opened, two side pouches with large pockets for personal items are held in place by hook-and-loop fastener straps to both side frames. The 5\" front wheels and rear glide skis provide a smooth transportation over most surfaces.</p><br xss=\"removed\"><p xss=\"removed\"><strong xss=\"removed\">Features and Benefits</strong></p><ul xss=\"removed\"><li xss=\"removed\">Easily folds tool-free to 1/2 the size of a traditional walker and can be stored in a \"Ready Set Go\" pouch</li><li xss=\"removed\">Legs are attached with strong elastic cords so legs can be folded</li><li xss=\"removed\">Comes with 5\" front wheels and rear glide skis that are ideal for most surfaces</li><li xss=\"removed\">Two side-storage pouches with large pockets for personal items are held in place by hook-and-loop fastener straps to both side frames.</li></ul><ul xss=\"removed\"><li>Dimensions : 19.75\"L x 26.5\"W x 29.5\"H</li><li>Adjustable Height : 29.5\"-37\"</li><li>Base Depth : 19.75\"</li><li>Inside Hand Grip Width : 17\"</li><li>Color : Red</li><li>Material : Aluminum</li><li>Weight Capacity : 300 lbs</li><li>Width Inside Back Legs : 22\"</li><li>Warranty : Limited Lifetime</li><li>Prop 65 : Yes</li><li>Assembly : No Assembly Required</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 84.27, 62.42, 'rtl10263kdr.jpg', 'RTL10263KDR.jpg', 1, 1, 0, 0, 0, 1513965977),
(76, '', 0, '', 30, '', '', '5', 'Medline Standard Aluminum Crutches - 1 Pair', 'MDSV80535LFH', '80196293493', '  ', '<ul xss=\"removed\"><li xss=\"removed\">Standard aluminum push-button crutches feature a double extruded center tube that provides load-bearing strength where it\'s needed the most.</li><li xss=\"removed\">The special footpiece utilizes durable rivets to secure the aluminum tubing from the inside, providing more stability than plastic connectors.</li><li xss=\"removed\">Long, virtually unbreakable stair deflector helps protect against the crutch slipping on stairs and helps increase stress tolerance at all angles without cracking; non-skid rubber tips provide good traction.</li><li xss=\"removed\">Built-in metal ring helps prevent excessive wear and ensures maximum durability.</li><li xss=\"removed\">Crutches come packaged completely accessorized with no assembly required.</li></ul><h5 xss=\"removed\"></h5><ul><li>Quantity : 1 Pair</li><li>Patient Height Range : 5\'2\"-5\'10\"</li><li>Weight Capacity : 300 lb</li><li>User : Adult</li><li>Material : Aluminum</li><li>Crutch Style : Axillary</li><li>Latex-Free : Yes</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 23.64, 17.51, 'MDSV80535LFH.jpg', '', 1, 1, 0, 0, 0, 0),
(77, '', 0, '', 30, '', '', '5', 'McKesson Underarm Crutch SunMark® Performance Aluminum Adult 300 lbs.', '49503800', '2.06E+13', '  ', '<ul xss=\"removed\"><li xss=\"removed\">SunMark® Performance Push-Button Aluminum Crutches</li><li xss=\"removed\">Adult, fits 5\' 2\" to 5\' 10\"</li><li xss=\"removed\">Maximum Patient Weight: 300 lbs.</li><li xss=\"removed\">Patented design for greater strength and torsional rigidity.</li><li xss=\"removed\">Stair-Alert feature reduces risk of crutch end catching on stairs or curbs.</li><li xss=\"removed\">Completely assembled with accessories; saves labor and adds convenience to storage and issuance.</li><li xss=\"removed\">Fitting chart enclosed with each pair of crutches.</li><li xss=\"removed\">Height adjustment scale on center tube in 1 inch increments.</li><li xss=\"removed\">Double push-button adjustment with permanently attached springs for increased dependability.</li><li xss=\"removed\">Push-button locator ring prevents push-button from getting \"lost\" during adjustment.</li><li xss=\"removed\">Shrink-wrapped in pairs in heavy duty film to preserve product integrity in transit and storage.</li><li xss=\"removed\">Not made with natural rubber latex.</li></ul><ul xss=\"removed\"><li>Adjustment Device : Push-Button</li><li>HCPCS : E0114</li><li>Padding Material : Synthetic Rubber</li><li>Frame Material : Aluminum</li><li>User : Adult</li><li>Application : Underarm Crutch</li><li>Weight Capacity : 300 lbs.</li><li>Crutch Height : 45 to 53 Inch</li><li>User Height Range : 5 Foot 2 Inch to 5 Foot 10 Inch</li><li>Frame Diameter : 3/4 Inch</li><li>Latex Free Indicator : Not Made with Natural Rubber Latex</li><li>UNSPSC Code : 42211502</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 22.50, 16.67, '49503800.jpg', '', 1, 1, 0, 0, 0, 0),
(78, '', 16, '', 17, '', '', '8', 'Omron Healthcare Blood Pressure Monitor 3 Series® Wrist\r\n\r\n', '62992500', '73796266295 ', '   ', '<ul xss=\"removed\"><li xss=\"removed\">60 Memory storage with date and time</li><li xss=\"removed\">5 Year Warranty</li><li xss=\"removed\">Exclusive technology automatically displays the average of up to the last 3 readings taken within the last 10 minutes</li></ul><ul xss=\"removed\"><li>Application : Blood Pressure Monitor</li><li>Target Area : Wrist</li><li>UNSPSC Code : 42181609</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 74.21, 54.97, '62992500.jpg', 'OMRON.jpg', 1, 1, 0, 0, 0, 1517952920),
(79, '', 27, '', 32, '', '', '7', 'Drive Medical Spitfire Scout Compact Travel Power Scooter, 4 Wheel', 'SFSCOUT4', '8.22E+11  ', '     ', '<p xss=\"removed\">The Spitfire Scout transportable scooter combines easy and convenient mobility with superior value. The Spitfire Scout is compact, lightweight and easy to disassemble-perfect for taking wherever you want to go, either around the neighborhood or far from home. It can be disassembled quickly and easily into five easy-to-handle pieces for loading into a car, truck, or van and taking shopping or on vacation. The four-wheel version of the Spitfire Scout allows for enhanced stability on rougher outdoor terrain. The Scout also offers great features like a quick connect battery pack and a delta-style tiller to make operating the scooter easier for those with limited strength or dexterity. This model comes with color-through panels to hide scuffs and scratches and black wheel rims.</p><br xss=\"removed\"><p xss=\"removed\"><strong xss=\"removed\">Features and Benefits</strong></p><ul xss=\"removed\"><li xss=\"removed\">Quick and easy disassembly</li><li xss=\"removed\">Interchangeable color panels hide scuffs and scratches</li><li xss=\"removed\">Armrests are padded and adjustable</li><li xss=\"removed\">Quick connect batteries</li><li xss=\"removed\">Ergonomic throttle control</li><li xss=\"removed\">Height-adjustable swivel seat with fold-down backrest</li><li xss=\"removed\">Flat-free, non-marking tires</li><li xss=\"removed\">Large, plastic carry basket</li><li xss=\"removed\">Easy-to-adjust tiller</li><li xss=\"removed\">Anti-tip wheels</li><li xss=\"removed\">Delta tiller</li><li xss=\"removed\">Easy freewheel operation</li><li>User : Universal</li><li>Dimensions : 42.5\"L x 20.5\"W x 35\"H</li><li>Weight Capacity : 300 lbs.</li><li>Color : Black</li><li>Latex Free : Yes</li><li>Installation : No Installation Required</li><li>Assembly : Basic Assembly Required</li><li>FSA Eligible : Yes</li><li>Warranty : Limited Lifetime on Frame; 24 Month Limited on Electronics; 12 Month on Battery</li><li>Type : 4-Wheel Power Scooters</li><li>Prop 65  : Yes</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 1055.42, 699.00, 'sfscout4.jpg', 'spitfire-scout-4-wheel-compact.jpg', 1, 1, 0, 0, 0, 1513965681),
(80, '', 27, '', 28, '', '', '6', 'Medline K3 Basic Plus 16\" Standard Wheelchair, Swing Back Desk Arm Style, Swing Away Footrests', 'MDS806600NEPL', '888277362980      ', '      ', '<ul><li xss=\"removed\">300 lb. (136 kg) weight capacity</li><li xss=\"removed\">Comes in seat sizes 16 x 16\" (41 x 41 cm), 18 x 16\" (46 x 41 cm), and 20 x 18\" (51 x 46 cm)</li><li xss=\"removed\">Comfortable nylon upholstery</li><li xss=\"removed\">Height-adjustable, swing-back, desk-length arms</li><li xss=\"removed\">Other features include:</li><li xss=\"removed\">Hemi-height adjustable axles raise/lower seat 2\" (5 cm)</li><li xss=\"removed\">Heel loops included for maximum foot support (swing away footrest models only)</li><li xss=\"removed\">Adjustable anti-tippers with flip-up wheels</li><li xss=\"removed\">Options available: Detachable swing-away footrests or elevating legrests</li><li xss=\"removed\">Limited lifetime warranty on frame; 1 year warranty on parts</li><li xss=\"removed\">Optional accessories: O2 Holder (item MDS85181U), Anti-Fold Device (item MDS85196), IV Pole (MDS85183), O2/IV Combo (item MDS85190), 5-in-1 IV/O2/Anti-Theft combo (MDS85180), Tinnerman Legrest Locks (item WCA806991)</li></ul><ul><li>Weight Capacity : 300</li><li>Seat to ground : 20-18\"</li><li>Rim to rim open : 24.5</li><li>Rim to rim closed : 12.5</li><li>Weight w/o legrest (lbs) : 35.5</li><li>Seat : 18 x 16</li><li>Back : 18 x 16</li><li>Highest point to ground : 36.5</li><li>Length front to back : 30.25</li><li>Height of arm pad from seat rail : 9.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 215.73, 159.80, 'mds806600nepl.jpg', 'MEDMDS806600NEPL.JPG', 1, 1, 1512661345, 0, 0, 1513966914),
(81, '', 33, '', 34, '', '', '10', 'Allied Healthcare Schuco Panda Pediatric Nebulizer', 'ALH-S5200', ' ', '     ', '<span xss=\"removed\"><b>The Panda Bear Compressor Nebulizer System.</b> This adorable nebulizer system will make treatments less stressful for your child. Because of its playful design, operates with a low noise level, and is very easy to use, children will be willing to sit tight for their treatments. The panda style nebulizer is a durable, high powered system that delivers all types of medication quickly and effectively into your child.</span><div xss=\"removed\"><span xss=\"removed\"><br></span></div><div xss=\"removed\"><ul><li>Child-friendly design.</li><li>Lightweight yet quiet.</li><li>Easy to use and clean.</li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 60.00, 45.78, 'alh-s5200.jpg', 'alh-s5200.jpg', 1, 1, 1512662315, 0, 0, 1512663884),
(82, '', 1, '', 35, '', '', '22', 'Bath Pillow Soft Cloth with Suction Cups', 'MIS70005KI', '731015237593 ', '   ', '<div itemprop=\"description\" id=\"productShortDescription\" xss=\"removed\">Enhances relaxation <br></div><div id=\"productLongDescription\" xss=\"removed\">The ultimate bathing accessory, this Soft Cloth Bath Pillow features a cotton blend waffle texture fabric with two strong suction cups that attach to your bathtub to enhance relaxation. Cover is removable and washable.Measures approximately 13.7\" x 9.8\".</div>', 0.0000, 0.0000, 0.0000, 0.0000, 12.99, 10.99, 'mis70005ki.jpg', 'BATH.jpg', 1, 1, 1512663248, 0, 0, 1517523578),
(83, '', 1, '', 36, '', '', '22', 'Therapeutic Gel Beads Neck Wrap Hot/Cold ', 'HW70008KI', '  731015249473       ', '         ', '<div xss=\"removed\"><span xss=\"removed\">Relieve tension in shoulder and neck muscles with this Therapeutic Gel Beads Neck Wrap featuring a flexible, gel bead-filled design with an adjustable strap for a perfect fit. Wrap can be used for therapeutic hot or cold treatment</span><span class=\"a-list-item\" xss=\"removed\"> Gel Beads Work Great to Distribute Evenly to Stressed Areas.</span></div><ul class=\"a-unordered-list a-vertical a-spacing-none\" xss=\"removed\"><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Velcro Flex Band Helps to Adjust to the right fit.</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Use Hot or Cold Therapy to the Back of Your Neck.</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Also Works Well Around Your Knee.</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Relieves Tension in Shoulder and Neck Muscles</span></li></ul>', 0.0000, 2.5000, 6.6250, 0.0000, 13.50, 5.99, '731015249473.jpg', '51lbHML5IcL.jpg', 1, 1, 1512665751, 0, 0, 1517680833),
(84, '', 1, '', 36, '', '', '22', 'THERAPEUTIC GEL BEADS EYE MASK', 'HW70007K1', '731015249466  ', '     ', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" xss=\"removed\"><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Great for headaches, fever, reducing puffiness Relaxing Soothing & Revitalizing</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Flexible Gel Beads technology</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Gel beads keep heat and cold longer</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Form Fitting & Comfortable</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Straps with velcro Closure (1 RANDOM COLOR)</span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 4.99, 'hw70007k1.jpg', 'Therapeutic Gel Beads.jpg', 1, 1, 1512679168, 0, 0, 1517679899),
(85, '', 1, '', 36, '', '', '22', 'Therapeutic Gel Beads Back Wrap ', 'HW70006KI', ' 731015254309          ', '           ', 'Great for hot and cold therapy, this Therapeutic Gel Beads Back Wrap features a comfortable design with a soft plastic gel bead-filled section and adjustable straps for a perfect fit. Wrap can be beneficial for post workout relief to help relieve pain directly where it hurts. Simply heat in a microwave for hot usage or place in a refrigerator for cold usage. Directions for use are printed on back of package. Measures approximately 37.5\" long with a 12.5\" x 5.125\" gel bead section. Comes packaged in an individual box.', 0.0000, 0.0000, 0.0000, 0.0000, 14.99, 5.99, 'hw70006ki.jpg', 'Therapeutic Gel Beads Back Wrap.jpg', 1, 1, 1512679937, 0, 0, 1517680658),
(86, '', 1, '', 36, '', '', '51', 'Elastic Thigh Support Sports International', 'PC00017KI', '801822105474  ', '          ', 'Protect your leg during physical activities with this Sports Thigh  Support featuring a stretchy knit cuff with stitched edges and an  American flag at the top. One size fits all. Machine washable.  Comes packaged in a hanging box.<br><br><ul><li>One Size Fit All</li><li>Thigh Support <br></li><li>Superior Way Quality <br></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.36, 7.99, 'pc00017ki.jpeg', 'THING SUPPORT SPORTS.jpeg', 1, 1, 1512680590, 0, 0, 1516645165),
(87, '', 1, '', 2, '', '', '14', 'Covidien Curity Maternity Pad-14 count ', 'INS50001BOM', ' 0110884521157682       ', '        ', '<div class=\"about-desc\" data-tl-id=\"AboutThis-ShortDescription\"><p>All of our products comply with international quality standards and are greatly appreciated in a variety of different markets throughout the world.</p><p>2022A Curity Maternity Pad, 4-3/10\" x 12-1/4\" Size<br> </p>If you are interested in any of our products or would like to discuss a custom order, please feel free to contact us. <ul><li>Application OB / Maternity Pad</li><li>Dimensions 2.75 Inch</li><li>Length 11 Inch</li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 12.99, 11.99, '2022a.jpg', 'Covidien Curity Maternity Pad-14 count.jpg', 1, 1, 1512681122, 0, 0, 1517086419),
(88, '', 33, '', 34, '', '', '15', 'Merits Health Compressor-Type Nebulizer', 'ME3655MOB', 'DMU150902368', '             ', '<span>75 Watts. 115VAC / 60Hz 230VAC / 50Hz. 53dB(A). Particle Size Less then 5 microns.</span><b><br><br>Unless you are a licensed care provider or a similar qualified entity a prescription is required to purchase this item.</b><br>\r\n<ul><li>Quantity : 1 EA</li><li>Application: Compressor Nebulizer</li><li>Dimensions: 4.1 X 5.7 X 7.9 Inch</li><li>Flow Range: 4 to 8 LPM</li><li>Operating Pressure: 10 to 14 psi</li><li>UNSPSC Code: 42271802</li><li>Weight: 3.53 lbs.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 29.99, 26.99, 'mon22823900.jpg', 'Merits_nebulizer_N282.jpg', 1, 1, 1512681593, 0, 0, 1516922762),
(89, '', 1, '', 8, '', '', '16', 'Scott Cervical Collar with Sleeve', 'PC0011BOM', '763189015462  ', '        ', 'Cervical Collar with Sleeve has a contoured shape with chin cut-out designed with 1 inch thick medium-firm foam and covered with<br>\r\nstockinette. 2 inches wide at chin cut-out. Extra stockinette sleeve included. Universal size for neck 12\"-22\".<br><ul><li>Natural</li><li>Latex Free</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 6.50, 'pc0011bom.png', 'cervical.png', 1, 1, 1512743481, 0, 0, 1516670247),
(90, '', 1, '', 38, '', '', '35', 'BD Eclipse Needle 21Gx1.1 1/4 48/bx', 'EXD0001BOM', ' 0130382903686071           ', '            ', 'Comply with the Needle stick Safety and Prevention Act by using Safety Lock blood collection needles.BD Eclipse™ blood collection needles with <b>lure</b> adapter hub and thin wall needle. Safety shield locks in place with an audible click indicator. no change in technique with single-handed activation. 48 per box.<br><ul><li>single handed activation</li><li>mmediate protection</li><li>no change in technique</li><li>unique double locking system</li><li>audible click indicator <br></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 28.98, 27.99, 'exd0001bom.jpg', 'th.jpg', 1, 1, 1512744704, 0, 0, 1517587016),
(91, '', 1, '', 5, '', '', '18', 'PURELL® Advanced Hand Sanitizer Gel 8 fl oz\r\n ', 'PCH355208BOM', ' 073852096521         ', '         ', '<h4 class=\"wc-demoted\" xss=\"removed\">PURELL® Advanced Hand Sanitizer Gel <b xss=\"removed\">8 fl oz Table Top Pump Bottle </b> Refreshing GelKills more than 99.99% of most common germs that may cause illness.</h4><div align=\"left\"><span xss=\"removed\"><b xss=\"removed\"><ul xss=\"removed\"><li xss=\"removed\">Outperforms other hand sanitizers ounce-for-ounce</li><li xss=\"removed\">Clinically-proven to maintain skin health</li><li xss=\"removed\">America’s #1 Instant Hand Sanitizer</li><li xss=\"removed\">Kills the most germs</li><li xss=\"removed\">2X Sanitizing Strength – Just 1 squirt of PURELL Advanced Hand Sanitizer kills as many germs as 2 squirts of any other national brand</li></ul></b></span></div>', 0.0000, 0.0000, 0.0000, 0.0000, 4.50, 3.20, 'pch325208bom.jpg', 'PURELL® Advanced Hand Sanitizer Gel 8 fl oz.jpg', 1, 1, 1512745178, 0, 0, 1517609383),
(92, '', 1, '', 38, '', '', '35', 'BD Vacutainer Eclipse Blood Needle 22Gx1.1 1/4 48/bx', 'EXD0005BOM', '0130382903686071    ', '             ', '<div itemprop=\"description\" xss=\"removed\" align=\"left\"><p xss=\"removed\">BD Eclipse™ Vacutainer® Blood Collection Needle with Luer Adapter, 21G x 1-1/4\" (0.7-32 mm) Black, Sterile, Latex-Free Blood collection needles offer a simple, effective way to collect blood and help reduce the possibility of accidental needle sticks with one-handed activation technique. <br></p><ul><li xss=\"removed\">Single handed activation.</li><li xss=\"removed\">Immediate protection.</li><li xss=\"removed\">Unique double locking system.</li><li xss=\"removed\">Sold by box of 48 each.</li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 31.89, 23.99, 'exd0005bom.jpg', 'V.jpg', 1, 1, 1512745543, 0, 0, 1517586752),
(93, '', 16, '', 18, '', '', '20', 'QUINTET AC Blood Glucose Monitoring System ', 'DIA0003BM', ' 20612479197132      ', '       ', '<span xss=\"removed\">QUINTET AC Blood Glucose MeterFor use with #5055 McKesson</span><div xss=\"removed\"><font face=\"myriad-pro, BogleWeb, Helvetica Neue, Helvetica, Arial, sans-serif\" color=\"#444444\"><br></font><div xss=\"removed\"><span xss=\"removed\"> QUINTET AC Blood Glucose Test Strips and #5052 McKesson QUINTET AC Blood Glucose Control Solution.Includes Glucose Meter, Installed 3-Volt Battery, Instructions for Use, and Compact Carrying Case.Auto coding for quick and accurate testing.1,000 test battery life.Easy-to-read LCD screen with backlight.Minimal sample size of 1.0 uL.Large memory; capable of recording up to 500 tests.Ergonomic design and uses glove grip paddle strips.Not Made With Natural Rubber Latex. QUINTET AC Blood Glucose Monitoring System 5 Seconds Stores Up To 500 Results Automatic Coding, 1 Count</span></div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 16.50, 10.99, 'dia0003bm.jpg', 'mck5055.jpg', 1, 1, 1512745997, 0, 0, 1516915566),
(94, '', 16, '', 18, '', '', '20', 'QUINTER AC BLOOD GLUCOSE TEST STRIPS 2VIALS/25 TESTS', 'DIA0004BM', '+M34050593 ', '          ', '<div class=\"main-description ng-binding\" ng-bind-html=\"product.description\" xss=\"removed\">Quintet AC Test Strips are for use with the Quintet AC Blood Glucose Meter. They require small sample sizes to provide a high degree of accuracy while minimizing discomfort.</div><div class=\"product-features\" ng-show=\"product.features.length > 0\" xss=\"removed\"><ul xss=\"removed\"><li ng-repeat=\"feature in product.features\" class=\"ng-binding ng-scope\" xss=\"removed\">For self-testing and point-of-care testing of whole blood glucose.</li><li ng-repeat=\"feature in product.features\" class=\"ng-binding ng-scope\" xss=\"removed\">Unique \"glove grip\" paddle for caregiver\'s convenience.</li><li ng-repeat=\"feature in product.features\" class=\"ng-binding ng-scope\" xss=\"removed\">Not made with natural rubber latex.</li><li ng-repeat=\"feature in product.features\" class=\"ng-binding ng-scope\" xss=\"removed\">Packaged: 2 Vials of 25 Strips Per Box</li><li ng-repeat=\"feature in product.features\" class=\"ng-binding ng-scope\" xss=\"removed\">For use with #5055 McKesson QUINTET AC® Blood Glucose Monitoring System and #5052 McKesson QUINTET AC® Blood Glucose Control Solution.</li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 4.99, 'dia0004bm.jpg', 'QUINTET AC Blood Glucose Test Strips.jpg', 1, 1, 1512746791, 0, 0, 1516916253),
(95, '', 1, '', 4, '', '', '8', 'Mckesson rubbing alcohol 70%', 'WC230022BM', ' 0110612479166452  ', '      ', '<ul xss=\"removed\"><li xss=\"removed\">First Aid Antiseptic</li><li xss=\"removed\">Not Made With Natural Rubber Latex.</li><li xss=\"removed\">Packaged: 12 Per Case</li><li xss=\"removed\">Manufacturer: McKesson Brand</li><li xss=\"removed\">Brand: McKesson</li><li xss=\"removed\">Application: Isopropyl Alcohol</li><li xss=\"removed\">Container Type: Bottle</li><li xss=\"removed\">Latex Free Indicator: Not Made with Natural Rubber Latex</li><li xss=\"removed\">Active Ingredients: Isopropyl Alcohol</li><li xss=\"removed\">Dosage Form: Liquid</li><li xss=\"removed\">Strength: 0.7</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 2.41, 1.99, 'wc230022bm.jpg', 'alcohol 70%.jpg', 1, 1, 1512747792, 0, 0, 1517861999),
(96, '', 1, '', 12, '', '', '22', 'Self-Adhering Bandage 3\" x 2 yds.', 'WCBI113KI', '731015167708       ', '       ', '<ul xss=\"removed\"><li xss=\"removed\"><b>New, Unopened</b></li><li xss=\"removed\"><b>Bandage Wrap</b></li><li xss=\"removed\"><b>Self-Adhering Bandage</b></li><li xss=\"removed\"><b>Soft & Flexible</b></li><li xss=\"removed\"><b>Measures 2 Yds x 3 In</b></li><li xss=\"removed\"><b>Box Contains 1 Roll</b></li><li xss=\"removed\"><b>Ideal For Wrapping Injured Limbs & Helps Stop Bleeding</b></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 5.00, 3.60, 'wcbi113ki.jpg', 'BANDAGE1.jpg', 1, 1, 1512751145, 0, 0, 1517521883),
(97, '', 1, '', 12, '', '', '24', 'Band-Aid Comfort Sheer Adhesive Bandages-Sheer-80ct', 'WC10002BM', '381370046691    ', '        ', '<div class=\"h5 mb2\"><p class=\"h5\">Band-Aid Comfort Sheer Adhesive Bandages-Sheer-80ct, Assorted Sizes  (80ct Total)</p></div><ul class=\"h5\"><li>Plastic ( 100 %)</li><li>Protection for everyday cuts and scrapes</li><li>Won\'t stick to wound for gentle removal</li><li>Long-lastin, unique adhesive & material</li><li>Comfort-Flex Technology</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.53, 5.25, 'wc10002bm.png', '04669cf.png', 1, 1, 1512752265, 0, 0, 1516388414),
(98, '', 1, '', 3, '', '', '8', 'McKesson Shower Cap. Clear. One Size Fits All. Single Patient Use. Not Made With Natural Rubber Latex.', 'PCH16SC1BOM', ' 10612479212685   ', '    ', '<p xss=\"removed\" align=\"left\"><span xss=\"removed\">McKesson Shower Cap. Clear. One Size Fits All. Single Patient Use. Not Made With Natural Rubber Latex.</span></p><p xss=\"removed\">          Quantity : 1 EA <br></p><p xss=\"removed\">          Application: Shower Cap</p><ul xss=\"removed\"><li xss=\"removed\"><p xss=\"removed\">Color: Clear</p></li><li xss=\"removed\"><p xss=\"removed\">Securing Method: Elastic</p></li><li xss=\"removed\"><p xss=\"removed\">Size: One Size Fits Most</p></li><li xss=\"removed\"><p xss=\"removed\">UNSPSC Code: 53131601</p></li><li xss=\"removed\"><p xss=\"removed\">Usage: Single Patient Use</p></li><li xss=\"removed\"><p xss=\"removed\">Latex Free Indicator: Not Made with Natural Rubber Latex</p></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 0.99, 0.20, 'pch16sc1bom.jpg', 'SHOWER CAP.jpg', 1, 1, 1512752989, 0, 0, 1517527844),
(99, '', 1, '', 3, '', '', '8', 'Mckesson Terries Slipper Socks Adult', 'SO403828', '0110612479129938  ', '      ', '<ul xss=removed><li xss=removed>Premium-quality terry cloth. Constructed with loops on the inside, next to the wearer\'s skin, for comfort.</li><li xss=removed>Soft, breathable poly/nylon knit.</li><li xss=removed>Highly-elastic, comfortable cuff and body help provide a secure fit without being constrictive.</li><li xss=removed>Color coded for easy sizing.</li><li xss=removed>Machine washable.</li><li xss=removed>Not Made With Natural Rubber Latex.</li><li xss=removed>ItemManufacturer: McKesson Brand</li><li xss=removed>Application: Slipper Socks</li><li xss=removed>Material: Poly / Nylon Knit Outer, Terry Cloth Inner</li><li xss=removed>Usage: Single Patient Use</li><li xss=removed>Style: Above the Ankle</li><li xss=removed>User: Unisex</li><li xss=removed>Latex Free Indicator: Not Made with Natural Rubber Latex</li><li xss=removed>ItemResource: slipper_socks_tear_sheet_2016_04.pdf</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 5.15, 1.50, 'pc0003bom.jpg', 'Mckesson Terries slipper socks.jpg', 1, 1, 1512756626, 0, 0, 1517264581),
(100, '', 1, '', 51, '', '', '8', 'MCKESSON SHOE COVER FLUID RESISTANT 50 PARS', 'WW163550BOM', '0120612479173167  ', '      ', '<ul xss=\"removed\"><li>Color Blue.</li><li>Material Polypropylene.</li><li>Disposable and economic (Latex Free).</li><li>Elastic ankle band for snug fit around shoes.</li><li>It includes Low skid bottom.</li><br><br></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 12.99, 9.99, 'sho163550.jpg', 'MCKESSON MEDICAL SHOE COVER BOOTIES.jpg', 1, 1, 1512757169, 0, 0, 1517344291),
(101, '', 1, '', 12, '', '', '26', '3M Steri-Strip™ Skin Closure, Reinforced Adhesive, 1/4\" x 1 1/2\"', 'WC0001BOM', ' 0130707387062515   ', '    ', '<span xss=\"removed\">Breathable, microporous material. Hypoallergenic adhesive. Provides better cosmetic outcome than sutures or staples. Permits early staple/suture removal. Reduce</span><a href=\"https://www.sasrx.com/Steri-Strip-Skin-Closure-Reinforced-Adhesive-1-4-x-3-/2209086#ctl00_CustomerMainContent_TabContainer1\" xss=\"removed\"> </a><div><br></div><div><li xss=\"removed\">Breathable, microporous material</li><li xss=\"removed\">Hypoallergenic adhesive</li><li xss=\"removed\">Provides better cosmetic outcome than sutures or staples</li><li xss=\"removed\">Permits early staple/suture removal</li><li xss=\"removed\">Reduces the risk of infection</li><li xss=\"removed\">Non-woven, rayon-backed material reinforced with filaments for strength</li><li xss=\"removed\">Provides wound support and assists in increasing the tensile strength of the wound</li><li><br></li></div>', 0.0000, 0.0000, 0.0000, 0.0000, 4.50, 2.50, 'wc0001bom.jpg', 'steri-strip-adhesive.jpg', 1, 1, 1512761546, 0, 0, 1517078884),
(102, '', 1, '', 35, '', '', '22', 'Super Grip Bath Handle', 'MEOB647KI', '731015162680 ', '    ', '<span xss=\"removed\">Providing a helping hand, this Super Grip Bath Handle is ideal for the shower or bath. Convenient design features a durable plastic contoured handle with large suction cups that secure easily with push levers. Release with a flip of the lever. Color change indicators show if handle is secure or not secure. Mounts on any non-porous surface. Customized angle support swivels 180 degrees. No holes, screws or tools required. Measures approximately 19.25\" long. Comes packaged in an individual box. Box measures approximately 4.75\" x 3.5\" x 20\".</span>', 0.0000, 0.0000, 0.0000, 0.0000, 15.00, 9.99, 'meob647ki.jpg', 'GRIP.jpg', 1, 1, 1512762517, 0, 0, 1517522715),
(103, '', 1, '', 35, '', '', '22', ' Suction Mount Super Grip Bath Handle', 'MEOC145KI', '731015189236  ', '          ', '<span class=\"h--normal small\" xss=\"removed\">Stay safe while bathing with this suction mount super grip bath handle featuring a durable plastic grip with suction cups, push levers and a contoured handle. </span><span xss=\"removed\"></span><span class=\"h--normal small\" xss=\"removed\">Fits any shower or bath and mounts to any non-porous surface. </span><span xss=\"removed\"></span><span class=\"h--normal small\" xss=\"removed\">No need for holes, screws or tools!</span><span xss=\"removed\"></span><p xss=\"removed\"></p><p xss=\"removed\"><span class=\"h--normal small\" xss=\"removed\">It can be placed in horizontal or vertical positions. </span><span class=\"h--normal small\" xss=\"removed\">Handle is white with dark green levers. </span><span class=\"h--normal small\" xss=\"removed\">Measures approximately 11.5 x 4 x 3.5.</span></p>', 0.0000, 0.0000, 0.0000, 0.0000, 24.99, 19.99, 'misg273ki.jpg', 'SUPER GRIP BATH HANDLE 2.jpg', 1, 1, 1512765881, 0, 0, 1517522983),
(104, '', 1, '', 36, '', '', '27', 'Magnetic Unisex Posture Support Brace', 'PCS0012GS', ' 731015215669       ', '        ', '<span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">For those suffering from back stress and pain due to poor posture - this lightweight - breathable Magnetic Unisex Posture Support Brace keeps the spinal column erect.<br></span></span><ul><li><span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Unisex</span></span></li><li><span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Positions and aligns the spine correctly.</span></span></li><li><span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Contains 12 Magnet Discs Targeting Spinal And Lumbar Regions.<br></span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 8.50, 4.99, 'of429-18.jpg', 'download.jpg', 1, 1, 1513101295, 0, 0, 1516643972),
(105, '', 33, '', 34, '', '', '28', 'Hudson RCI AirLife™ Misty Max 10™ Disposable Nebulizer without Mask\r\n', 'ME002433BOM', '0104026704595457  ', '        ', '<p>AirLife™ Misty Max 10™ disposable nebulizers deliver fast and effective treatment to a wide range of patients. They feature a one-piece, jet design that delivers high output rates resulting in faster treatment times and consistent medication delivery. A full, 10 cc capacity provides medication dosing flexibility. The anti-spill design helps prevent medication waste and allows the unit to be used at an angle to accommodate various patient positions.<br></p><br>\r\n', 0.0000, 0.0000, 0.0000, 0.0000, 5.65, 3.50, 'me002433bom.jpg', 'nebulizer-airlife-misty-max-10-disposable-nebulizer-214.jpg', 1, 1, 1513101890, 0, 0, 1517685157),
(106, '', 1, '', 37, '', '', '54', 'LIFE TIME STANDARD ALUMINUM CANES', 'MOB86415BM', '080196133416      ', '             ', '<ul xss=\"removed\"><li xss=\"removed\">Designed for patients who need additional assistance with balance.</li><li xss=\"removed\">Standard handle lets users hook the cane over their arm while opening doors or performing other tasks.</li><li xss=\"removed\">The foam grip provides a comfortable secure grip.</li><li xss=\"removed\">250-lb. (113 kg) weight capacity.</li><li xss=\"removed\">Cane weighs between .75 and .8 lbs. and adjusts between approx. 30-38\" (76-96.5 cm).</li></ul><p xss=\"removed\"></p>', 0.0000, 0.0000, 0.0000, 0.0000, 14.99, 10.99, 'mob86415bm.jpg', 'Canula.jpg', 1, 1, 1513102386, 0, 0, 1517852233),
(107, '', 33, '', 34, '', '', '29', 'AirLife Volumetric Incentive Spirometer with One-Way Valve \'\'4000 mL, 1 Count\'\'', 'PC001902BOM', '0110885403169069          ', '              ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Dual Sided Calibrations - Flexible Tubing - Mouthpiece Holder.</span></span><span xss=\"removed\">Our AirLife(TM) volumetric incentive spirometers simplify deep breathing therapy with an intuitive design that prompts patients to correctly perform and monitor their own breathing exercises, even without direct supervision. A patient goal indicator can be adjusted and allows patients to monitor their own progress. Dual-sided calibrations clearly identify achieved volumes of up to 4000mL capacity. The flexible tubing lets the patient adjust the mouthpiece for use in various positions, and a mouthpiece holder provides storage when not in use.</span><div xss=\"removed\"><div xss=\"removed\"><div xss=\"removed\"><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Packaging: 4000 mL</span></span></div></div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 8.99, 7.99, 'pc001902bom.jpg', 'airlife-incentive-spirometer-03c.jpg', 1, 1, 1513102867, 0, 0, 1517684771),
(108, '', 1, '', 36, '', '', '14', 'ALBA HEALTH CARE ANTI-EMBOLISM COMPRESSION STOCKING THIGH MEDIUM REGULAR WHITE Ref 468-02', 'PC46802BOM', '011088452102446517211009101633400164   ', '        ', '<span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">\"The unique two-way stretch fabric makes the C.A.R.E. stocking easy to put on and provides greater patient comfort - Slip-resistant knit-in sole to help prevent falls - Alignment indicator to assure proper positioning Knit-in reciprocated heel pocket for greater patient comfort and to assure proper placement - No-bind, stay-up top to keep stocking in place without a tourniquet effect - Color coded for easy size identification Inspection port on top for convenience while checking the foot and greater comfort for ambulatory patients\".</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 15.99, 14.99, 'pc46802bom.jpg', 'Stockings.jpg', 1, 1, 1513103543, 0, 0, 1517678005),
(109, '', 1, '', 36, '', '', '14', 'ALBA HEALTH CARE ANTI-EMBOLISM COMPRESSION STOCKING THIGH SMALL REGULAR WHITE Ref 463-02', 'PC46302BOM', ' 011088452100273917210830101628100002    ', '         ', '<span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">The unique two-way stretch fabric makes the C.A.R.E. stocking easy to put on and provides greater patient comfort - Slip-resistant knit-in sole to help prevent falls - Alignment indicator to assure proper positioning Knit in reciprocated heel pocket for greater patient comfort and to assure proper placement - No-bind, stay-up top to keep stocking in place without a tourniquet effect - Color coded for easy size identification Inspection port on top for convenience while checking the foot and greater comfort for ambulatory patients\".</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 15.99, 14.99, 'pc46302bom.png', 'Stockings beige.png', 1, 1, 1513104052, 0, 0, 1517678210),
(110, '', 1, '', 36, '', '', '14', 'ALBA HEALTH CARE ANTI-EMBOLISM COMPRESSION STOCKING THIGH X-LARGE LONG BLUE Ref 473-05', 'PC47305BOM', '0110073614708089102173177     ', '          ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\"></span></span><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">\"The unique two-way stretch fabric makes the C.A.R.E. stocking easy to put on and provides greater patient comfort - Slip-resistant knit-in sole to help prevent falls - Alignment indicator to assure proper positioning Knit-in reciprocated heel pocket for greater patient comfort and to assure proper placement - No-bind, stay-up top to keep stocking in place without a tourniquet effect - Color coded for easy size identification - Inspection port on top for convenience while checking the foot and greater comfort for ambulatory patients\"</span></span><br><strong></strong>', 0.0000, 0.0000, 0.0000, 0.0000, 19.99, 14.99, 'pc47305bom.jpg', 'Stockings Black.jpg', 1, 1, 1513105054, 0, 0, 1517677479),
(111, '', 1, '', 36, '', '', '14', 'ALBA HEALTH CARE ANTI-EMBOLISM THIGH HIGH LARGE REGULAR WHITE COMPRESSION STOCKING ref 47303', 'PC47303BOM', ' 012088452102455417210827101627800172   ', '         ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">\"The unique two-way stretch fabric makes the C.A.R.E. stocking easy to put on and provides greater patient comfort - Slip-resistant knit-in sole to help prevent falls - Alignment indicator to assure proper positioning Knit-in reciprocated heel pocket for greater patient comfort and to assure proper placement - No-bind, stay-up top to keep stocking in place without a tourniquet effect - Color coded for easy size identification Inspection port on top for convenience while checking the foot and greater comfort for ambulatory patients\".</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 15.99, 14.99, 'pc47303bom.png', 'Stockings beige.png', 1, 1, 1513105442, 0, 0, 1517677799),
(112, '', 1, '', 37, '', '', '7', 'Drive Medical Deluxe Digital Electronic Muscle Stimulator. Tens Unit AGF-6X2 Digital EMS ', '0100822383935355', '  0100822383935355      ', '        ', '<span xss=\"removed\"></span><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">The Deluxe Digital Electronic Muscle Stimulator can be used by anyone that has chronic muscle or joint pain who is looking for a non-invasive solution. Electrical Muscle Stimulation (EMS) is a proven, efficient way of treating muscle injuries by the transmission of electronic pulses that causes passive exercise. The stimulation, contraction and relaxation cycle of EMS loosens muscle fibers, increases blood flow and stimulates muscle growth. Muscle stimulation can be used to treat swelling, inflammation, muscle spasms, and edema, which are leading causes of muscle pain, discomfort, and loss of muscular function.</span></span><br><span xss=\"removed\"></span>', 0.0000, 0.0000, 0.0000, 0.0000, 81.97, 63.05, 'ten-agf6x2.jpg', 'tens unit.jpg', 1, 1, 1513106809, 0, 0, 1516987691),
(113, '', 1, '', 3, '', '', '22', 'Tissues Extra Soft& Strong 6 packs x 10 each', 'PCH0009KI', '731015189410 ', '      ', '<span xss=\"removed\">Set of 24. Includes six pack of ten piece tissue set. 2-ply tissues. Extra soft and strong. Packaged in poly bag. Made from paper. White color. Weight: 0.4 lbs..</span><ul xss=\"removed\"><li xss=\"removed\">Set of 24</li><li xss=\"removed\">Includes six pack of ten piece tissue set</li><li xss=\"removed\">2-ply tissues</li><li xss=\"removed\">Extra soft and strong</li><li xss=\"removed\">Packaged in poly bag</li><li xss=\"removed\">Made from paper</li><li xss=\"removed\">White color</li><li xss=\"removed\">Weight: 0.4 lbs.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 1.99, 0.99, 'pch0009ki.jpg', 'tissues.jpg', 1, 1, 1513107493, 0, 0, 1517260481),
(114, '', 1, '', 4, '', '', '14', 'Covidien Webcol Alcohol Prep 2Ply, Medium Saturated with 70% Isopropyl Alcohol', 'WC40001BOM', ' 0110884527020645         ', '          ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Covidien Alcohol Prep Pads Large Sterile Saturated with 70% v/v Isopropyl Alcohol. For topical cleansing prior to injection prep or venipuncture. Single Use Not made with natural rubber latex.</span></span><ul><li>Packaged:100EA/BX.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 3.73, 2.99, 'wc40001bbom.jpg', 'MON18182700.JPG', 1, 1, 1513109853, 0, 0, 1517593842),
(115, '', 1, '', 36, '', '', '31', 'Anti-snoring Nose Clip', 'RES0015KI', ' 6949196553119      ', '       ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">The anti-snoring clip opens nose passages to promote better air flow. Breathing becomes easier providing a restful sleep. The U-shaped clip works by applying gentle pressure to your septum nerve. It is simple to use and comfortable to wear. Clip comes in a small carrying case for convenient bedside storage. Comes packaged in a clam shell package with hanging hole.</span></span><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\"><br></span></span><ul><li><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Stops or reduces your snoring.</span></span></li><li><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">No more restless nights.</span></span></li><li><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Drug free device.</span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 6.79, 2.99, 'res0015ki.jpg', 'Anti Snoring.jpg', 1, 1, 1513110790, 0, 0, 1517676008),
(116, '', 1, '', 3, '', '', '32', 'Fixodent Denture Adhesive Powder', 'PCH40016BOM', ' 076660725362    ', '     ', '<div xss=\"removed\"><div class=\"wag-list-show ml15 mb20\" xss=\"removed\"><ul start=\"1\" xss=\"removed\"><li value=\"1\" xss=\"removed\"><div class=\"h5 mb2\" xss=\"removed\"><p class=\"h5\" xss=\"removed\">Fixodent\'s easy-to-use Extra Hold Power denture adhesive provides a hold that lasts all day. Use it just once a day for strong hold that lets you laugh, talk, eat, and drink with confidence! From denture adhesives to denture cleansers, Fixodent gives you denture care confidence. If you\'re one of the 33 million people of all ages and walks of life who have dentures, Fixodent can help you to face each day with confidence. Fixodent gives you the power of the #1 dentist recommended denture adhesive brand (data on file). It helps prevent slipping and helps to keep food from getting in between dentures and gums. It\'s great for both full plate and partial dentures. *among those who recommend brands of adhesive</p></div><ul class=\"h5\" xss=\"removed\"><li xss=\"removed\">Strong, all-day hold.</li><li xss=\"removed\">Provides a great fit and a strong, thin, airtight seal.</li><li xss=\"removed\">Easy to apply powder formula.</li><li xss=\"removed\">#1 Dentist Recommended Denture Adhesive Brand.* *among those who recommend brands of adhesive</li><li xss=\"removed\">Great for full and partial plate denture wearers.</li></ul></li></ul></div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 6.50, 4.99, 'pch40016bom.jpg', '900.jpg', 1, 1, 1513111780, 0, 0, 1517348348),
(117, '', 1, '', 4, '', '', '8', 'HYGEA (Benzalkonium Chloride) Antiseptic Towelette, Clean, Box of 100', 'PCH40002BOM', '0120310819000400 ', '     ', 'Use wherever antiseptic cleansing/refreshing is needed. Contains 0.13% <br>\r\nBenzalkonium Chloride, Alcohol free., Benzalkonium Chloride Antiseptic <br>\r\nTowelettes, .40% BZK, Alcohol Free, 3s, 7\" x 5½\", 100/bx <br><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\"></span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 5.99, 'pch40002bom.jpg', 'MCK776775_854452.JPG', 1, 1, 1513113884, 0, 0, 1517080385),
(118, '', 1, '', 37, '', '', '21', 'Procare Deep Pocket, Economy, Armsling Small', 'PC0007BOM', '79-99153 ', '      ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Deep Pocket Arm Sling: Large pocket made of durable poly/cotton easily accommodates bandages and casts. Wide shoulder strap with shoulder pad reduces neck and shoulder strain. Thumb loop and adjustable shoulder strap inhibits sling migration. Double D-ring with hook and loop closure make application quick and easy.</span></span><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\"><br><br>           Size: Small</span></span><ul><li><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Color: Blue</span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 7.99, 'pc0007bom.jpg', '41q09SfInfL.jpg', 1, 1, 1513114652, 0, 0, 1516673710);
INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `is_deleted`, `modified_date`) VALUES
(119, '', 1, '', 37, '', '', '21', 'Procare Deep Pocket, Economy, Armsling.medium', 'PC0006BOM', '79-99155  ', '      ', '<span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Deep Pocket Arm Sling: Large pocket made of durable poly/cotton easily accommodates bandages and casts. Wide shoulder strap with shoulder pad reduces neck and shoulder strain. Thumb loop and adjustable shoulder strap inhibits sling migration. Double D-ring with hook and loop closure make application quick and easy.<br></span></span><ul><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Size: Medium<br></span></span></li><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Color: Blue</span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 7.99, 'pc0006bom.jpg', '41q09SfInfL.jpg', 1, 1, 1513114928, 0, 0, 1516673900),
(120, '', 1, '', 37, '', '', '21', 'Procare Deep Pocket, Economy, Armsling, Large', 'PC0005BOM', '79-99157 ', '    ', '<span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Deep Pocket Arm Sling: Large pocket made of durable poly/cotton easily accommodates bandages and casts. Wide shoulder strap with shoulder pad reduces neck and shoulder strain. Thumb loop and adjustable shoulder strap inhibits sling migration. Double D-ring with hook and loop closure make application quick and easy.<br></span></span><ul><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Size: Large<br></span></span></li><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Color: Blue</span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 7.99, 'pc0005bom.jpg', '41q09SfInfL.jpg', 1, 1, 1513115075, 0, 0, 1516674314),
(121, '', 1, '', 37, '', '', '21', 'Procare Deluxe Arm Sling.', 'PC0009BOM', '0100888912032070     ', '      ', '<span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Deluxe Arm Sling: Large pocket made of durable poly/cotton easily accommodates bandages and casts. Wide shoulder strap with shoulder pad reduces neck and shoulder strain. Thumb loop and adjustable shoulder strap inhibits sling migration. Double D-ring with hook and loop closure make application quick and easy.<br></span></span><ul><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Size: Small<br></span></span></li><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Color: Black<br></span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 7.99, 'pc0009bom.jpg', 's-l225.jpg', 1, 1, 1513115321, 0, 0, 1517609012),
(122, '', 1, '', 37, '', '', '21', 'Procare Deep Pocket, Economy, Armsling , Extra Large', 'PC0008BOM', '79-99158 ', '     ', '<span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Deep Pocket Arm Sling: Large pocket made of durable poly/cotton easily accommodates bandages and casts. Wide shoulder strap with shoulder pad reduces neck and shoulder strain. Thumb loop and adjustable shoulder strap inhibits sling migration. Double D-ring with hook and loop closure make application quick and easy.<br></span></span><ul><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Size: XL<br></span></span></li><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Color: Blue</span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 7.99, 'pc0008bom.jpg', '41q09SfInfL.jpg', 1, 1, 1513116486, 0, 0, 1516674426),
(123, '', 16, '', 18, '', '', '33', 'Assure Platinum Blood Glucose Meter', 'DIA0001BM', ' 015482500016      ', '       ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Designed for the LTC healthcare professional, the Assure Platinum Blood Glucose Meter is designed specifically for a multi-patient setting. ProGrip design Auto coding qcProGuard Strip release button Back light display Hypo warning 7 second test time.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 14.99, 12.99, 'dia0001bm.jpg', '5136.jpg', 1, 1, 1513117164, 0, 0, 1516918410),
(124, '', 16, '', 18, '', '', '33', 'Assure Platinum Blood Glucose Test Strips', 'DIA0002BM', ' 15482500504    ', '     ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Blood Glucose Test Strips Assure Platinum Blood Glucose Test Strips Assure Platinum are small 0.5 L sample size and 7 second test time. Assure Platinum Strips wick blood using capillary action.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 14.15, 12.99, 'dia0002bm.jpg', 'assure-platinum-glucose-test-strip.jpg', 1, 1, 1513117528, 0, 0, 1516914447),
(125, '', 1, '', 8, '', '', '34', 'Atlas Adult Regular Collar PHP-A330', 'PC0010BOM', 'PHP-A330 ', '     ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">An innovative cervical collar made with high-quality materials that provides an unparalleled combination of immobilization and patient <br><br>\r\ncomfort. Measurement: sizing is achieved by the combination of a standard off-the-shelf product with an individualized custom fit. All <br><br>\r\ncircumferences are color-coded to assist in proper usage and storage.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 50.00, 39.99, 'pc0010bom.jpg', 'Atlas Adult Collar.jpg', 1, 1, 1513117929, 0, 0, 1516747589),
(126, '', 1, '', 12, '', '', '6', 'Avant Non-Sterile Non-Woven Gauze Sponge 4\" x 4\" 4-Ply    200 Pieces', 'WC0002BM', '20080196692221    ', '     ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Medline NON25444 Avant Gauze is Medline\'s standard non-woven dressing. Compared to traditional cotton gauze, Avant Gauze helps to reduce the amount of lint that is produced and is less traumatic to fragile granulating wound tissue because it\'s virtually non-adherent. It also has significantly faster wicking ability which promotes a healthier healing environment. Discover the perfect balance between strength and absorbency in this rayon/polyester blend gauze. Non-sterile. - Medical Supplies</span></span><br><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\"></span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 8.59, 5.99, 'wc0002bm.jpg', 'MedlineGauze.jpg', 1, 1, 1513118315, 0, 0, 1516382683),
(127, '', 1, '', 12, '', '', '11', 'Bandages with Kids Designs 50 Assorted', 'WC10003KI', '731015142910   ', '        ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Great for helping wounds heal faster Will not stick to wounds Comes in fun assorted designs to fit your mood Designs include: pink bandages with black kitties - balloons and music notes</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 6.99, 2.99, 'wc10003ki.jpg', '51hih8ko68L.jpg', 1, 1, 1513118929, 0, 0, 1517519054),
(128, '', 1, '', 38, '', '', '35', 'BD Needle Holder One Use Clear', 'EXD0002', ' 1117100110725482630250     ', '      ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">The BD Vacutainer One Use Holders are compatible with the entire BD Vacutainer Blood Collection System: BD Vacutainer Eclipse Blood Collection Needles, BD Vacutainer Safety-Lok Blood Collection Sets, BD Vacutainer Push Button Blood Collection Sets and BD Vacutainer Luer Adapters. For Use With: 13 mm and 16 Diameter Tubes.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 18.27, 17.95, 'exd0002.jpg', 'needle-holder-one-use-clear--be4.jpg', 1, 1, 1513119430, 0, 0, 1513233945),
(129, '', 33, '', 34, '', '', '36', 'Respironics SuperSoft Tubing Cannulas', 'ME1616BOM', '+H90610146530/$20150724L', '         ', 'Respironics SuperSoft nasal cannulas provide a gentle solution. Made of an advanced material that is soft, flexible and non-sticky.<br> Helps reduce pressure and friction on delicate ear and face tissue New patients are less apprehensive of wearing a cannula<br> Existing patients can\'t believe how comfortable and gentle they are Treat fewer cannula-related sores Bulky foam ear cushions are not needed Crush-resistant tubing.<br><ul><li>Latex-free.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 7.00, 3.75, 'me1616bom.jpg', 'Respironics SuperSoft Tubing Cannulas.jpg', 1, 1, 1513120367, 0, 0, 1516984081),
(130, '', 1, '', 37, '', '', '38', 'Concave Eye Patch', 'PC0018BOM', '023185145052 ', '     ', '<div xss=\"removed\"><span xss=\"removed\">Product Features</span><ul xss=\"removed\"><li xss=\"removed\">Concave shape minimizes pressure</li><li xss=\"removed\">Made of soft, smooth material</li><li xss=\"removed\">New look, same great product!</li><li xss=\"removed\">One size fits all</li><li xss=\"removed\">Elastic headband holds patch securely</li><li xss=\"removed\">Shaped for comfort and protection</li><li></li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 3.25, 3.00, 'pc0018bom.jpeg', 'Concave  Eye patch.jpeg', 1, 1, 1513184699, 0, 0, 1516648560),
(131, '', 1, '', 15, '', '', '22', 'Pill Tote Key Ring', 'MISGR042KI', ' 731015171248  ', '   ', '<p class=\"h5\" xss=\"removed\">Being in the dollar merchandise business since its beginning, we know what sells, and we are always adding new and different items to our inventory. We are always looking for new items, and we have recently added pet items and craft supplies to our catalog. We design all of the packaging for our items to ensure that categories of merchandise have cohesive matching packaging, and that they are appealing to the eye. <b xss=\"removed\">Features</b></p><ul xss=\"removed\"><li xss=\"removed\">The pill tote key ring is the perfect way to carry both keys and medication</li><li xss=\"removed\">The pill storage area is waterproof, compact and ready for people on the go</li><li xss=\"removed\">Use for medication, aspirin and vitamins</li><li xss=\"removed\">Comes packaged on a blister card with hanging hole.</li><li xss=\"removed\">Case Of 36</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 2.99, 1.99, 'misgr042ki.jpg', 'Pill Tote Key Ring.jpg', 1, 1, 1513186090, 0, 0, 1517349435),
(132, '', 1, '', 36, '', '', '22', 'Gel Shoe Cushions', 'MIS0017KI', ' 7310015162499    ', '     ', '<span xss=\"removed\">1 Pair Of Clear Shoe Gel Cushions Washable & Reusable One Size Fits All!</span><br xss=\"removed\"><span xss=\"removed\">Brand new seen on tv gel shoe cushions.</span><br xss=\"removed\"><span xss=\"removed\">Designed for high heeled shoes or no heels.</span><br xss=\"removed\"><span xss=\"removed\">Made out of silicone gel, soft and comfortable.</span><br xss=\"removed\"><span xss=\"removed\">Cushions are 2 3/4\" x 3 1/4\". </span><br xss=\"removed\"><span xss=\"removed\">Prevents foot from sliding forward while walking and standing.</span><br xss=\"removed\"><span xss=\"removed\">Stay in place, self adhesive, not easy to fall off, no tape or glue needed. </span><br xss=\"removed\"><span xss=\"removed\">Enhance blood circulation, shock-absorbing, non-slip. </span><br xss=\"removed\"><span xss=\"removed\">Relieve pain and pressure of the feet caused by wearing high heel shoes. </span><br xss=\"removed\"><span xss=\"removed\">In stock ready to ship out same day.</span>', 0.0000, 0.0000, 0.0000, 0.0000, 0.99, 0.65, 'mis0017ki.jpg', 'Gel Shoe Cushions.jpg', 1, 1, 1513186751, 0, 0, 1516639395),
(133, '', 1, '', 38, '', '', '35', 'Bd vacutainer eclipse blood collection needles 48 pieces 22g 1-1/4 ref.368608', 'NE368608', '0130382903686088 ', '        ', '<p xss=\"removed\"><b>Description</b>:• Exp. 2021</p><p xss=\"removed\">• Size 22G x 1-1/4</p><p xss=\"removed\">• Box of 48</p><p>Comes as shown. No other accessories included.</p><p>Photos may be of similar items from the same bulk lot.</p><p>DISCLAIMER:</p><p>Regardless of the origin of the equipment, documentation provided or identification appearing upon the equipment, the equipment described and offered here is in no way certified for, recommended for, or offered for any specific use. The purchaser agrees that the seller shall not be held responsible or liable for any injuries or damages, whether incidental or consequential, associated in any way with the equipment. The purchaser, by bidding on this equipment, indicates their acknowledgment of, and agreement to the terms of this disclaimer.</p>', 0.0000, 0.0000, 0.0000, 0.0000, 30.99, 23.99, '7055680.jpg', 'BD Vacutainer.jpg', 1, 1, 1513270389, 0, 0, 1516997770),
(134, '', 1, '', 3, '', '', '37', 'COLGATE TOOTHPASTE CAVITY PROTECTION 2.5 OZ.', 'HW20003', '035000511058 ', '    ', '<div class=\"\">Colgate Cavity Protection provides trusted cavity protection for the entire family.  Formulated with active fluoride, it is clinically proven to <br>\r\nhelp strengthen teeth and leave your mouth feeling fresh and clean. This Colgate toothpaste is ADA (American Dental Association) accepted. It has been trusted by dentists and parents globally for over 45 years.</div>             <ul class=\" h-standardSpacing override-highlights\"><li>  <span class=\"h-text-grayDarker\"><b>Package Quantity:</b> 1</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Health Concern:</b> Bad Breath, Cavity Prevention, Plaque</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Flavor:</b> mint</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Product Form:</b> Paste</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Capacity (volume):</b> 2.5 ounces</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Travel Size:</b> Yes</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Suggested Age:</b> 5 Years and Up</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Product Warning:</b> no warning applicable</span> </li></ul>         ', 0.0000, 0.0000, 0.0000, 0.0000, 1.99, 1.20, 'hw20003.jpg', 'paste.jpg', 1, 1, 1513270810, 0, 0, 1517348059),
(135, '', 1, '', 35, '', '', '22', 'Drive Medical Plastic Transfer Bench with Commode Opening', 'PHH0001', '050428823088 ', '  ', '<div class=\"_-dX f\"><div class=\" _-bo\"><span class=\" _-bm\">Drive Medical</span><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\"> Tool free, removable back and arm. Height adjusts in .5\" increments with unique \"Dual Column\" extension legs. Aluminum frame is lightweight, sturdy and corrosion resistant. Sold by each.</span></span></div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 104.95, 90.40, 'phh0001.jpg', 'bath chair.jpg', 1, 1, 1513274215, 0, 0, 1513274234),
(136, '', 1, '', 4, '', '', '8', 'McKesson Hydrogen Peroxide 16 oz', 'WC40003BM', ' 0110612479166438     ', '      ', '<div class=\"_-dX f\" xss=\"removed\"><div class=\" _-bo\" xss=\"removed\"><span class=\" _-bm\" xss=\"removed\">McKesson</span> · <span class=\" _-bm\" xss=\"removed\">Antiseptic</span></div></div><div class=\"_-bq\" xss=\"removed\"><p class=\"sh-ds__desc\" xss=\"removed\"><span class=\"sh-ds__full\">Image shown is for reference purposes only. The actual product appearance may vary. Hydrogen Peroxide is used as a first aid antiseptic and cleansing agent. At full strength, it can also be used to clean minor cuts and abrasions</span></p></div>', 0.0000, 0.0000, 0.0000, 0.0000, 1.49, 1.20, 'wc40003bm.jpg', 'McKesson Hydrogen Peroxide 16 oz.jpg', 1, 1, 1513287959, 0, 0, 1517593872),
(137, '', 1, '', 13, '', '', '8', 'McKesson Stretch Vinyl Exam Gloves (X Small)100XBox\r\nMFR #14-812', 'EXD1411132MCK', ' 0120612479150625        ', '         ', '<p xss=\"removed\"><strong xss=\"removed\">McKesson Stretch Vinyl Exam Gloves</strong> are an economical choice when you are in need of powder-free, non-sterile vinyl gloves. Superb quality and extremely comfortable even if worn for extended periods of time. These vinyl exam gloves offer great strength and are made to accommodate those with latex allergies.These McKesson <a href=\"https://www.vitalitymedical.com/vinyl-gloves.html\" xss=\"removed\"><strong xss=\"removed\">vinyl exam gloves</strong> </a>are perfect for many applications and uses, including home use, food preparation and handling, as well as laboratory work.</p><p xss=\"removed\"><strong xss=\"removed\">Powder Free Vinyl Exam Gloves Features</strong></p><ul xss=\"removed\"><li xss=\"removed\">Latex Free</li><li xss=\"removed\">Powder Free</li><li xss=\"removed\">Ambitextrous Fitting</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 6.99, 4.99, 'exd1411132mck.jpeg', 'McKesson Stretch Vinyl Exam Gloves XS.jpeg', 1, 1, 1513610584, 0, 0, 1517955924),
(138, '', 1, '', 36, '', '', '40', 'Rapid Care Instant Cold Pack', 'WC80012BOM', '891191000128 ', '       ', '<span xss=\"removed\">Instant Cold Pack 5\" x 6\"Rapid Care first aid Single use cold packs Ideal for minor sports injuries and strains No refrigeration needed - 24 Units</span>', 0.0000, 0.0000, 0.0000, 0.0000, 1.20, 0.90, 'wc80012bom.jpg', 'Rapid Care Instant Cold Pack.jpg', 1, 1, 1513611637, 0, 0, 1516649142),
(139, '', 33, '', 34, '', '', '9', 'Omron CompAir Nebulizer System NE-C801', 'ME801BOM', '073796458010 ', '    ', '<div class=\"short-description info-list\"><ul><li>Fits easily on any surface 3.5 times smaller and 75% lighter than most other compressor nebulizers</li><li>CompAir is easy and fast to set up and use</li><li>CompAir produces a fine mist</li><li>Runs quietly - comparable to a refrigerator</li><li>This new model replaces Omron NE-C25</li><li>Lightweight</li><li>Fast Treatment <br></li></ul>                        </div>', 0.0000, 0.0000, 0.0000, 0.0000, 39.99, 32.99, 'me801bom.jpg', 'NE-C801.jpg', 1, 1, 1513612532, 0, 0, 1516916611),
(140, '', 1, '', 36, '', '', '22', 'Therapeutic Gel Eye Mask SPA ESSENTIALS', 'HW70001KI', '731015199440           ', '                          ', 'The Therapeutic gel beads eye mask helps to tighten skin to help you look younger, reduces eye puffiness and dark circles, and helps to<br><br><br>\r\nrelieve headaches and sinus pressure. This can be used for therapeutic heat or cold treatments. And has an adjustable straps for a perfect fit', 0.0000, 0.0000, 0.0000, 0.0000, 6.99, 4.99, 'hw70001ki.jpg', 'GEL EYE MASK.jpg', 1, 1, 1513613096, 0, 0, 1516639745),
(141, '', 1, '', 12, '', '', '14', 'COVIDIEN Kerlix Bandage Roll 2.25 x 3 yd 6 PCS', 'WC21801BOM', '10884521058422   ', '           ', '<div class=\"h5 mb2\" xss=\"removed\"><div class=\"h5 mb2\" xss=\"removed\"><p class=\"h5\" xss=\"removed\">Kerlix Rolls are made of pre-washed, fluff dried, 100% woven gauze with unique, crinkle-weave pattern for loft and bulk. Kerlix Rolls provide fast wicking action, superior aeration, and excellent absorbency. Finished edges on the product reduce loose ends and lint. This product is available in 6- and 8-ply.Prewashed, fluff-dried, 100% woven gauze with unique, crinkle-weave pattern.6-ply construction with finished edges reduces loose ends and lint.As primary dressing, open-weave design provides fast wicking action, superior aeration and excellent absorbency.As secondary dressing it provides bulk, cushioning and ultimate conformability.Available in a variety of sizes and packaging.</p></div><ul class=\"h5\" xss=\"removed\"><li xss=\"removed\">100% Cotton pre-washed woven gauze</li><li xss=\"removed\">6 Ply</li><li xss=\"removed\">Large 4.5\" x 4 1/8 Yard</li><li xss=\"removed\">Soft & fluffy</li><li xss=\"removed\">Made in USA</li></ul><h2 class=\"secHd\"><br></h2></div>', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 6.99, 'wc21801bom.jpg', 'Kerlix Bandage Roll.jpg', 1, 1, 1513614118, 0, 0, 1517528042),
(142, '', 1, '', 36, '', '', '11', 'COOLING GEL PILLOW HOME ESSENTIALS', 'HW70002KI', '731015190720  ', '     ', '<ul><li><span class=\"a-list-item\"> Ideal for flu and fever, this cooling gel pillow absorbs and dissipates heat through the night while helping maintain an optimal sleep temperature. No refrigeration required, just place under the pillow and it will help you sleep cooler and better. Measures approximately 16x 12. Comes packaged in a Hanging box. Measures approximately 12.25x 1x 9.25.</span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 24.95, 13.99, 'hw70002ki.jpg', 'cooling gel pillow.jpg', 1, 1, 1513614382, 0, 0, 1517679331),
(143, '', 1, '', 12, '', '', '14', 'COVIDIEN KERLIX Bandage Roll\r\n4-1/2 x 4-1/8 yd  PACK OF 12', 'WC23324BOM', ' 10884521058446             ', '              ', '<h2 class=\"secHd\"><span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Kerlix Bandage\r\n Rolls are used as a primary dressing - the open weave design provides \r\nfast-wicking action - superior aeration and excellent absorbency.</span></span><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td class=\"attrLabels\"><br></td><td width=\"50%\"><br></td><td class=\"attrLabels\"><br></td><td width=\"50%\"><br></td></tr><tr><td class=\"attrLabels\" xss=\"removed\"><br></td><td xss=\"removed\" width=\"50%\"><br></td></tr></tbody></table></h2>', 0.0000, 0.0000, 0.0000, 0.0000, 23.99, 16.99, 'wc23324bom.jpg', 'COVIDIEN KERLIX Bandage 2.jpg', 1, 1, 1513616438, 0, 0, 1516380900),
(144, '', 1, '', 12, '', '', '8', 'Mckesson Cotton Gauze Bandage Roll\r\n', 'WC20002BOM', ' 30642000 ', '  ', '<ul><li>Application  Conforming Dressing</li><li>Color  White</li><li>Dimensions 4.5 Inch X 4.1 Yard</li><li>Material  Cotton Gauze</li><li>Ply  1-Ply</li><li>Shape  Roll</li><li>Sterility  Sterile</li><li>Latex Free Indicator  Not Made with Natural Rubber Latex</li><li>Features</li><li>Medi-Pak™ Performance Gauze Bandage Rolls</li><li>3.6  to 4.1 yds., Stretched</li><li>Sterile or Non-Sterile</li><li>Pre-washed 100% woven gauze.</li><li>Lofty and bulky for added cushioning and wound protection.</li><li>Fast-wicking and absorbent.</li><li>Conformable.</li><li>Use as a primary or secondary dressing.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 5.07, 1.25, 'wc20002bom.jpg', 'mckesson-cotton-gauze-bandage-roll-76a.jpg', 1, 1, 1513618094, 0, 0, 1513618127),
(145, '', 1, '', 43, '', '', '6', 'Medline Tongue Depressors 6\"', 'EXD2420MCK', ' 0130080196158762      ', '       ', '<div class=\"row\" xss=\"removed\"><div class=\"col-lg-12 col-sm-12 cols-md-12 col-xs-12\" xss=\"removed\"><div class=\"wag-accordion-tab\" xss=\"removed\"><div class=\"wag-accordion-tab-content\" id=\"Description-0\" name=\"description-Details\" xss=\"removed\"><div xss=\"removed\"><div xss=\"removed\"><span xss=\"removed\">High quality wood • Useful for spreading ointments and for stirring and mixing medications</span><br xss=\"removed\"><br xss=\"removed\"><p class=\"mb0\" xss=\"removed\"><br></p></div></div></div></div></div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 13.85, 9.99, 'exd2420mck.jpg', 'Medline Tongue Depressors.jpg', 1, 1, 1513619873, 0, 0, 1516751723),
(146, '', 1, '', 4, '', '', '41', 'Cottonelle Flushable Cleansing Cloths Fresh Care Refill', 'PHC40001BOM', '036000724448 ', '     ', '<br><ul><li><span class=\"a-list-item\">Flushable<br>\r\n                    Sewer & Septic Safe<br>\r\n                    Breaks Up After Flushing<br>\r\n                    Alcohol-Free</span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 6.48, 2.99, 'phc40001bom.jpg', 'Cottonelle.jpg', 1, 1, 1513631103, 0, 0, 1517092433),
(147, '', 1, '', 13, '', '', '42', 'Tronex Power Free latex Textured Examination Gloves(Small)100XBox\r\nCode: 3110-10', 'EXDIS90001', ' 0100097604311014         ', '          ', '<div id=\"ctl00_ctl00_ctl00_BodyContent_BodyContent_BodyContent_ctl00_wlProductDetailBlock_rptrPackageProducts_ctl02_pnlMfrNo\">M<abbr title=\"Manufacturer Number\">fr. No.</abbr>3110-10<br>Advanced natural rubber latex material formulation features improved tactile sensitivity, superior elasticity, and excellent barrier protection. Double-chlorination process ensures added strength.<br><div id=\"ctl00_ctl00_ctl00_BodyContent_BodyContent_BodyContent_ctl00_hgcLongDescriptionTabBody\" data-search-term-container=\"\" class=\"responsive-tabs__panel responsive-tabs__active\" xss=\"removed\"><strong>Features & Benefits: </strong><br>\r\n<ul><li>100% powder-free; non-sterile</li><li>Fully textured for a sustained grip during use</li><li>Manufactured for exceptionally low protein content</li><li>Ambidextrous with beaded cuffs</li><li>Meets FDA CFR Title 21 Part 177 for Safe Contact with Food Surfaces</li><li>FDA 510(k) Approved for Medical Use</li><li>Meets and exceeds ASTM D3578 Specification for Latex Examination Gloves for Medical Application</li><li>Meets and exceeds ASTM F1671 Test Method for Resistance of Materials by Blood-Borne Pathogens (Viral Penetration)</li><li>Manufacturing certified ISO 9001 for Quality Management Systems<br></li></ul><br></div><br></div><br><span xss=\"removed\"></span>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 6.99, 'exdis90001.jpg', 'Tronix Power Free Glove.jpg', 1, 1, 1513632757, 0, 0, 1517584125),
(148, '', 1, '', 35, '', '', '22', ' Toilet Seat Cover  Paper 10/PCs', 'MIS0008KI', '731015188413  ', '     ', '<span class=\"_Tgc\">A <b>toilet seat cover</b> or <b>toilet</b> sheet is a disposable piece of paper shaped like the <b>toilet seat</b> itself that can be placed on the <b>seat</b> by its user. Its purpose is to protect the <b>toilet\'s</b> user from germs that may be resting on the <b>seat</b> by creating a protective barrier.</span>', 0.0000, 0.0000, 0.0000, 0.0000, 3.99, 2.99, 'mis0008ki.jpeg', 'Toilet Seat Cover  Paper 10 PCs.jpeg', 1, 1, 1513632822, 0, 0, 1517083263),
(149, '', 1, '', 13, '', '', '42', 'Tronex Power Free latex Textured Examination Gloves(Medium)100XBox\r\nCode:3110-20\r\n', 'EXDISO90002', ' 0100097604311021   ', '    ', '<div xss=\"removed\"><abbr title=\"Manufacturer Number\">Mfr. No.</abbr>3110-20<span xss=\"removed\"></span></div><div xss=\"removed\"><span xss=\"removed\"><font face=\"proxima-nova, sans-serif\" color=\"#747474\">Power Free latex Textured Examination Gloves</font></span></div><span xss=\"removed\">Advanced natural rubber latex material formulation features improved tactile sensitivity, superior elasticity for reduced hand fatigue, and excellent barrier protection. Double-chlorination process ensures added strength. </span><br xss=\"removed\"><span xss=\"removed\">* FDA 510(k) Approved as a Medical Device. </span><br xss=\"removed\"><span xss=\"removed\">* Meets and Exceeds ASTM D3578 Specification for Latex Examination Gloves for Medical Application. </span><br xss=\"removed\"><span xss=\"removed\">* Meets and Exceeds ASTM F1671 Test Method for Resistance of Materials by Blood-Borne Pathogens (Viral Penetration). </span><br xss=\"removed\"><span xss=\"removed\">* Manufacturing certified ISO 9001 for Quality Management Systems. </span><br xss=\"removed\"><span xss=\"removed\">* Manufacturing certified ISO 13485 for Quality Management Systems for Medical Devices.</span>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 6.99, 'exdiso90002.jpg', 'TRONEX Power Free latex Textured Examination Gloves.jpg', 1, 1, 1513633231, 0, 0, 1517583813),
(150, '', 1, '', 9, '', '', '43', 'MABIS Dispos-A-Scope Single-Patient Stethoscope, Blue', 'EXD0004BM', '767056448018  ', '      ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Designed for single-patient use to prevent cross contamination in infectious situations. Single Head Stethoscope Remarkable acoustic performance. Features a plastic binaural and ultra sensitive plastic chestpiece. Plastic binaural and ultra sensitive plastic chestpiece 30\" Y-tubing Latex-free.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 4.99, 2.99, 'exd0004bm.jpg', 'stethoscope.jpg', 1, 1, 1513633265, 0, 0, 1516911902),
(151, '', 16, '', 19, '', '', '44', 'DRUGS OF ABUSE TEST 1CUP DX 12 DRUG-PANEL W/ADULTERANTS URINE SAMPLE CLIA WAIVED 25 TESTS', 'IDUA167012', ' 817405020232    ', '     ', '<div class=\"txtBold marginLeft SB_s BLOCK\" xss=\"removed\"><br><ul><li><span>All inclusive 12-panel drug test is CLIA Waived with integrated test strip.Tamper resistant and results within 5 minutes.<br>\r\n                                    Tests for: COC, THC, OPI, AMP, MAMP, PCP, BZO, BAR, OXY, MTD, TCA and MDMA+ Adulterants<br>\r\n                                    25 per case</span></li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 299.99, 233.00, 'exd0004bm.jpg', 'Alere.jpg', 1, 1, 1513634222, 0, 0, 1517683592),
(152, '', 1, '', 43, '', '', '45', 'Welch-Allyn Ear Speculum KleenSpec® 521 Series Plastic Black 4 mm Disposable 500 PIECES', 'EXD0006BM', '0100732094230512 ', '     ', '<ul><li><p>Color : Black</p></li><li><p>Application : Ear Speculum</p></li><li><br></li><li><p>Usage : Disposable</p></li><li><p>Dimensions : 4 mm</p></li><li><p>Material : Plastic</p></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 50.68, 42.99, 'exd0006bm.jpg', 'ear spectrum.jpg', 1, 1, 1513699111, 0, 0, 1516752073),
(153, '', 1, '', 36, '', '', '22', 'New Brand Extra Long Arm Extension Reacher Grabber Easy Reach Pick Up', 'MOB0001KI', ' 015964782456 ', '  ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">The Easy Grip Reacher is an essential independent-living tool. Specially designed squeeze grip allows you to use your full hand strength to pick up items. Reaching tool extends your reach by 31 for safe and convenience without bending or straining. Padded grabbers open to 3W and hold up to 5 lbs. Grabber tool measures 70L x 60W. Durable, lightweight aluminum weighs just 400g. No assembly required.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 1.90, 1.81, 'mob0001ki.jpg', 'easy reach.jpg', 1, 1, 1513700142, 0, 0, 1513700192),
(154, '', 1, '', 36, '', '', '46', 'LIFEWEARTECH  Elastic Ankle Support 2 PACK', 'PC0014KI', ' 14007155229    ', '     ', '<span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Two ankle supports. Comfortable to wear, Suitable for common sports activities, Use everyday or as needed. Fits male or female ankles.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 8.99, 3.99, 'pc0014ki.jpg', 'ankle support.jpg', 1, 1, 1513701409, 0, 0, 1517674559),
(155, '', 1, '', 36, '', '', '22', 'Elastic Bandage 5.4 Yd. Long x 2 Inch Wide', 'PC0015KI', ' 31015115846  ', '   ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Swift First Aid Elastic Bandage Wrap measuring 2\'\' X 5.4 yd is suitable for applications that need higher compressions. Cost-effective wrap offering consistent pressure comes with clips.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 5.20, 2.99, 'pc0015ki.jpg', 'elastic bandage.jpg', 1, 1, 1513703716, 0, 0, 1517675766),
(156, '', 1, '', 36, '', '', '46', 'Lifeweartech Elastic Knee Support Brace', 'PC0016KI', ' 14007154222      ', '       ', '<span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Pull-over design - Soft fabric - Ensures proper range of motion - Helps speed recovery from minor aches and pain</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 3.99, 'pc0016ki.jpg', 'knee support.jpg', 1, 1, 1513703945, 0, 0, 1517674705),
(157, '', 1, '', 36, '', '', '46', 'Lifeweartech Elastic Wrist Support 2 PACK', 'PC0017KI', ' 14007153225     ', '      ', '<span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\"> Wrist Supports Brand: Lifeweartech Elastic support for weak wrists Pull-over design Soft fabric Breathable Won\'t roll or lose elasticity with washing Light support ...</span></span><span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\"> One Size Fits All</span></span><em></em>', 0.0000, 0.0000, 0.0000, 0.0000, 5.95, 2.99, 'pc0017ki.jpg', 'wrist.jpg', 1, 1, 1513704233, 0, 0, 1517675181),
(158, '', 1, '', 36, '', '', '22', 'Emoticon Face Squeeze Ball', 'PC0017KI', '   31015248858 ', '    ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Emoticon Face Squeeze Balls will get your celebration bouncing! These silly stress balls are the perfect favor bag stuffers for birthday parties, classroom celebrations, and everyday fun. Stress balls are approximately 3. Please every guest at your gathering with fun favors, toys, and gifts!...</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 1.95, 0.83, 'pc0017ki.jpg', 'wrist.jpg', 1, 1, 1513704514, 0, 0, 1513704582),
(159, '', 1, '', 36, '', '', '22', 'Emoticon Face Squeeze Ball 24 PCS.', 'HW70003KI', '731015248858 ', '     ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Emoticon Face Squeeze Balls will get your celebration bouncing! These silly stress balls are the perfect favor bag stuffers for birthday parties, classroom celebrations, and everyday fun. Stress balls are approximately 3. Please every guest at your gathering with fun favors, toys, and gifts.....</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 30.98, 21.99, 'hw70003ki.jpg', 'EMOTICON.jpg', 1, 1, 1513704758, 0, 0, 1517344757),
(160, '', 1, '', 44, '', '', '6', 'Exam Table Paper Crepe 18in x 125ft White 12/box', 'EXD0008BOM', '00618128104994', '          ', '<div align=\"justify\"><span>Exam Table, Standard, Crepe, 18\"x125\'ft</span><br><span></span></div><span>Exam Table Paper: strong, absorbent table paper protects exam tables from dirt and moisture while offering comfort and protection for patients. Choose from smooth or crepe finish (crepe is softer, quieter and more absorbent). Crepe is also more textured which will help prevent it from sliding on surfaces. Available in standard and deluxe grades. Deluxe grade features a heavier basis weight paper. All rolls are mechanically metered for exact length, and individually poly bagged for cleanliness during shipment and storage. White. Standard Crepe, 18\" x 125 ft.</span>', 0.0000, 0.0000, 0.0000, 0.0000, 38.84, 29.99, 'exd0008bom.jpg', 'Table Paper.JPG', 1, 1, 1513705683, 0, 0, 1517593154),
(161, '', 1, '', 45, '', '', '8', 'Exam Gown Large Tissue / Poly / Tissue White Adult, 50EA/CS', 'EXD0007BOM', '014061247919         ', '                 ', '<ul><li>McKesson Exam Gowns</li><li>Deluxe Tissue/Poly/Tissue</li><li>30 X 42 Inch, White</li><li>Waist Belt</li><li>Provides knee-length privacy and helps protect against fluid strike-through</li><li>Front/back opening</li><li>Not made with natural rubber latex.</li><li>Packaged: 50 Per Case  Fastening Type : Waist Tie</li></ul><ul><li>Sterility : Non Sterile</li><li>User : Adult</li><li>Color : White</li><li>Size : Large</li><li>Application : Exam Gown</li><li>Usage : Disposable</li><li>Dimensions : 30 X 42 Inch</li><li>Latex Free Indicator : Not Made with Natural Rubber Latex</li><li>Material : Tissue / Poly / Tissue</li><li>Sleeve Style : Short Sleeve</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 32.00, 28.00, 'exd0007bom.jpg', 'exam gowns.jpg', 1, 1, 1513706387, 0, 0, 1517525880),
(162, '', 1, '', 36, '', '', '47', 'FAB LIFE STANDARD HIP KIT 26\" REACHER FORMED WITH 2 HANDLE SOCK AID 18\"PLASTIC SHOEHORN', 'PC860070BOM', '714905039521 ', '     ', 'This FabLife Hip Kit includes a collection of Aids-To-Daily Living (ADL) products in one convenient package. Minimize the dependence on others by using these essential items to assist with bathing, dressing and other daily living activities. This kit is ideal for people recovering from hip, knee or back surgeries, easing the recovery process. All items included help people avoid the need to need to bend at the hip, giving freedom to people with a limited range of motion. <b>Hip Kit with 26\" Reacher, Contoured Sponge, Sock Aid, 18\" Plastic Shoehorn and Dressing Stick:</b> <br><ul><li>FabLife</li><li><br><br>\r\n Hip Kits include a carefully picked collection of essential items to assist with bathing, dressing and other daily living activities</li><li>Includes 26\" reacher, contoured sponge, formed sock aid, 18\" plastic shoehorn and 24\" dressing stick</li><li>Grab items in hard to reach places, put on and take off socks and shoes with ease, wash hard to reach areas and make getting dressed in the morning easy</li><li>Perfect for people recovering from hip replacement, knee or back surgeries</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 39.75, 19.99, 'pc860070bom.jpeg', 'fab life.jpeg', 1, 1, 1513707218, 0, 0, 1516913098),
(163, '', 16, '', 46, '', '', '22', 'First Aid Kit Ideal for home, car or office ', 'WC10005KI', '731015228751', '   ', '<span id=\"Skin_ctl06_WB_POTID842_ProductDescription\" class=\"productDetail\">A comprehensive first aid kit for the home, car or small office.  The First Aid Kit PLUS includes all the essential first aid items for <br><br>\r\ntreating cuts, scrapes, burns and other emergencies that may arise. Items are arranged in labeled pockets to make it easy to find exactly <br><br>\r\nwhat you need.  A removal inside pouch allows you to gather essential first aid items for a smaller more portable kit on the run.<br></span><ul><li><span id=\"Skin_ctl06_WB_POTID842_ProductDescription\" class=\"productDetail\">Easy Access Pocket Kit.</span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 20.95, 15.99, 'wc10005ki.jpg', 'fistr aid kit.jpg', 1, 1, 1513707872, 0, 0, 1516383245),
(164, '', 1, '', 47, '', '', '8', 'McKesson Specimen Container Polypropylene / Polyethylene Screw Cap 100 mL (4 oz.) Sterile', 'WC10006KI', ' 0140612479188806  ', '   ', '<span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Specimen Container McKesson Polypropylene Screw Cap 120 mL (4 oz.)</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 1.99, 0.99, 'wc10006ki.jpg', 'speciment container.jpg', 1, 1, 1513708785, 0, 0, 1517672943),
(165, '', 1, '', 4, '', '', '48', 'Cavi Wipes Multi Purpose Disinfectant ', 'WC10194100', ' 0100615375005040      ', '       ', '<ul xss=\"removed\"><li xss=\"removed\">1-minute contact time for virucidal, bactericidal (including TB), fungicidal activity</li><li xss=\"removed\">1-step cleaner and disinfectant</li><li xss=\"removed\">Bleach-free</li><li xss=\"removed\">Fragrance Free</li><li xss=\"removed\">Manufacturer: Metrex Research</li><li xss=\"removed\">Brand: CaviWipes1</li><li xss=\"removed\">Application: Surface Disinfectant</li><li xss=\"removed\">Type: Premoistened</li><li xss=\"removed\">Usage: Disposable</li><li xss=\"removed\">Container Type: Canister</li><li xss=\"removed\">Storage Requirements: USP Controlled Room Temperature</li><li xss=\"removed\">Scent: Alcohol Scent</li><li xss=\"removed\">Dispensing Method: Manual Pull</li><li xss=\"removed\">Form: Wipe</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 13.45, 12.50, 'wc10194100.jpeg', 'cavi wipes.jpeg', 1, 1, 1513868289, 0, 0, 1516983292),
(166, '', 1, '', 4, '', '', '8', 'McKesson Obstetrical Antiseptic Towelettes 100/BOX', 'EXD62881810', ' 0120612479208852    ', '     ', '<p xss=\"removed\"><strong xss=\"removed\">McKesson Obstetrical Antiseptic Towelettes</strong> from HealthyKin.com help prevent the risk of skin infection. They are are ideal for obstetrical and perineal use and maternity care.<br xss=\"removed\"><br xss=\"removed\"><strong xss=\"removed\">McKesson Obstetrical Antiseptic Towelettes Features:</strong></p><ul xss=\"removed\"><li xss=\"removed\">Disposable towelettes are a convenient cleansing solution</li><li xss=\"removed\">Ideal for obstetrical and perineal use and maternity care</li><li xss=\"removed\">Individually wrapped</li><li xss=\"removed\">Sterile</li><li xss=\"removed\">5\" x 7\" towelettes</li><li xss=\"removed\">Lightly scented</li><li xss=\"removed\">Sting-free</li><li xss=\"removed\">Latex free</li><li xss=\"removed\">Active ingredient: benzalkonium chloride 0.13% w/v</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 2.99, 2.50, 'exd62881810.jpg', 'Mckesson Obstetrical Antiseptc Towelettes.jpg', 1, 1, 1513872754, 0, 0, 1517079335),
(167, '', 1, '', 35, '', '', '22', 'Shower Mat with suction cups 20 X 20\"', 'MISOF440KI', ' 731015215836    ', '      ', '<span xss=removed><span> </span>New 20\" X 20\" Non Slip Shower Bath Tub Safety Step Durable Material Pad Rug With Suction Cups !<span> </span></span><br xss=removed><span xss=removed>Suction cups for fixing, protect your family and your security.<span> </span></span><br xss=removed><span xss=removed>Its innovative design will keep you safe while complementing your bathroom decor.<span> </span></span><br xss=removed><span xss=removed>The mat is suitable for bathroom, bathtub, kitchen, hotels, restaurants, hospitals, balcony, etc.<span> </span></span><br xss=removed><span xss=removed>Great for walk-in showers, this Non-Slip Shower Mat features durable, soft material and built-in suction cups.<span> </span></span><br xss=removed><span xss=removed>Measures approximately 20\" x 20\".<span> </span></span><br xss=removed><span xss=removed>Comes packaged with a wrap around. 1 New 20\" X 20\" Non Slip Shower Bath Tub Safety Step Durable Material Pad Rug With Suction Cups !<span> </span></span><br xss=removed><span xss=removed>Suction cups for fixing, protect your family and your security.<span> </span></span><br xss=removed><span xss=removed>Its innovative design will keep you safe while complementing your bathroom decor.<span> </span></span><br xss=removed><span xss=removed>The mat is suitable for bathroom, bathtub, kitchen, hotels, restaurants, hospitals, balcony, etc.<span> <br></span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 13.25, 10.99, 'wc10194100.jpg', 'SHOWER MAT.jpg', 1, 1, 1513966717, 0, 0, 1517340837),
(168, '', 33, '', 34, '', '', '10', 'SCHUCO Child Compressor Nebulizer Model S5200', 'MES5200BOM', 'S5200  ', '      ', '<p xss=removed>The Allied Healthcare Schuco Nebulizer includes a compressor, nebulizer cup, angled mouthpiece, mask, 6 feet of oxygen tubing, and five extra compressor filters.</p><p xss=removed><b xss=removed>Warranty:</b><span> </span>5 Years - Limited.</p><p xss=removed>The Schuco Nebulizer is completely self enclosed for ease of cleaning. Its new lightweight, compact design and damage-resistant plastic makes it easy to transport.</p><p xss=removed>The Nebulizer administers medication in the form of a mist inhaled by the patient, in order to treat illnesses such as asthma, cystic fibrosis, and more. The Schuco 5000 Nebulizer contains a compartment to store the cord. The Schuco 5200 Pediatric Nebulizer takes the shape of an adorable panda as to appear friendly for children.</p><h3 class=\"ghost\" xss=removed>Accessories</h3><h4 xss=removed>Allied Healthcare Schuco Nebulizer Accessories</h4><p xss=removed>The Schuco Nebulilzer is commonly purchased with:</p><ul xss=removed><li xss=removed>Replacement Nebulizer Kit - Nebulizer Cup, 7\' Clear Tubing, Mouthpiece, Tee, (50x) 6\" Flex Tubes (#61399).</li><li xss=removed>Replacement Nebulizer Kit - Nebulizer Cup, 7\' Clear Tubing, Mouthpiece, (50x) Tees (#61400).</li><li xss=removed>Aerosol Mask - Adult with Nebulizer and (50x) 7\' Clear Tubing (#64085).</li><li xss=removed>Aerosol Mask - Pediatric with Nebulizer and (50x) 7\' Clear Tubing (#64095).</li><li xss=removed>AC to DC Power Converter for use in car (#88100).</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 50.77, 45.99, 'mes5200bom.jpg', 'CHILD COMPRESSOR NEBULIZER MODEL S5200.jpg', 1, 1, 1513967439, 0, 0, 1516921217),
(169, '', 16, '', 17, '', '', '9', 'OMRON BLOOD PRESSURE MONITOR HEM 7200', 'EXDHEM7200', ' 4975479494420     ', '      ', '<p xss=\"removed\"><span xss=\"removed\">This fully automatic upper arm monitor is designed with both comfort and accuracy in mind. The Intellisense ™ Technology ensures that cuff inflates neither too tightly or too loosely. Our unique cuff wrapping guide icon shows when the cuff is wrapped correctly<br></span></p><p xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Technical data</span></span></span></p><table class=\"aliDataTable\" xss=\"removed\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody xss=\"removed\"><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">product description</span></td><td xss=\"removed\"><span xss=\"removed\">automatic wrist blood pressure monitor</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">model</span></td><td xss=\"removed\"><span xss=\"removed\">HEM-7200</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">display</span></td><td xss=\"removed\"><span xss=\"removed\">LCD digital display</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">measurement method</span></td><td xss=\"removed\"><span xss=\"removed\">oscillometric method</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">measurement range</span></td><td xss=\"removed\"><p xss=\"removed\"><span xss=\"removed\">pressure:0mmHg to 299mmHg</span></p><p xss=\"removed\"><span xss=\"removed\">pulse:40 to 180 beats/min</span></p></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">accuracy</span></td><td xss=\"removed\"><p xss=\"removed\"><span xss=\"removed\">pressure:±3mmHg</span></p><p xss=\"removed\"><span xss=\"removed\">pulse:±5% of reading</span></p></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">inflation</span></td><td xss=\"removed\"><span xss=\"removed\">automatic inflation by pump</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">deflation</span></td><td xss=\"removed\"><span xss=\"removed\">automatic rapid deflation</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">memory</span></td><td xss=\"removed\"><span xss=\"removed\">60 measurements</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">measurable wrist circumference</span></td><td xss=\"removed\"><span xss=\"removed\">13.5 to 21.5 cm</span></td></tr></tbody></table>', 0.0000, 0.0000, 0.0000, 0.0000, 65.00, 39.99, 'exdhem7200.jpg', 'OMRON Automatic Blood Pressure Monitor.jpg', 1, 1, 1514565034, 0, 0, 1517852778),
(170, '', 16, '', 20, '', '', '8', 'McKesson CONSULT® Urine Control Solution Positive and Negative Pregnancy (hCG) Testing Levels 1 and 2, 2 X 4 mL hCG', '5011', '    ', '59112400   ', '<div xss=\"removed\"><ul><li>CONSULT® hCG Pregnancy Test Control Kit</li><li>Contents: hCG Positive Control (4 mL), hCG Negative Control (4 mL), Instructional Insert</li><li>Designed to ensure accurate results while testing for pregnancy hormone, hCG, in urine.</li><li>Not made with natural rubber latex.</li><li>Packaged: 1 Set Per Box</li><li>Container Type : Dropper Bottle</li><li>Volume : 2 X 4 mL</li><li>Test Name : Pregnancy (hCG) Testing</li><li>Format : Liquid</li><li>Application : hCG Urine Control Solution, Positive and Negative</li><li>Levels : Levels 1 and 2</li><li>Latex Free Indicator : Not Made with Natural Rubber Latex</li><li>For Use With : CONSULT® Pregnancy hCG Test</li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 29.40, 22.35, '5011.jpg', '951315_MCK.JPG', 1, 1, 1514948345, 0, 0, 1514948566),
(171, '', 1, '', 9, '', '', '26', '3M Littmann® Lightweight II S.E. Stethoscope - Black', '2450', ' 0707387562410  ', ' 37292500  ', '<p align=\"left\" xss=\"removed\"></p><div xss=\"removed\">The 3M™ Littmann® Lightweight II S.E. Stethoscope is an ideal entry-level instrument, with a tunable diaphragm, dual-sided chestpiece, and reliable acoustic performance. Its teardrop shape makes auscultation around blood pressure cuffs easier.</div><span xss=\"removed\"><br xss=\"removed\">Benefits</span><p></p><ul xss=\"removed\"><li xss=\"removed\">Lightest weight of all Littmann adult stethoscopes at just 118 grams.</li><li xss=\"removed\">Dual-sided chestpiece provides versatility of both a tunable diaphragm and open bell.</li><li xss=\"removed\">Teardrop-shaped chestpiece for easier positioning under blood pressure cuffs and around bandages.</li><li xss=\"removed\">Tunable diaphragm: Hear high or low frequency sounds by slightly adjusting pressure on the chestpiece.</li><li>Soft-sealing eartips provide an excellent acoustic seal and comfortable fit.</li><li>Tube Type : Single Lumen</li><li>User : Adult</li><li>Color : Black</li><li>Diaphragm Diameter : 2.15 X 1.9 Inch, Teardrop</li><li>Ear Pieces Type : Soft Sealing Ear Tips</li><li>Application : Binaural Stethoscope</li><li>Number of Tubes : 1-Tube</li><li>Chestpiece Material : Resin Composite</li><li>Latex Free Indicator : Not Made with Natural Rubber Latex</li><li>Tube Length : 28 Inch</li><li>Head Type : Dual head</li><li>UNSPSC Code : 42182103</li><li>Binaurals Material : Aerospace Alloy</li><li>Bell Size : 1.34 X 1.30 Inch, Teardrop</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 77.84, 59.22, '2450.jpg', 'MON37292500.JPG', 1, 1, 1514948742, 0, 0, 1514948806);
INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `is_deleted`, `modified_date`) VALUES
(172, '', 27, '', 28, '', '', '7', 'Drive Medical Silver Sport 2 Wheelchair with Detachable Full Arms and Swing Away Footrest - 16\" Seat', 'SSP216DFA-SF,', ' 822383268866  ', ' SSP216DFA-SF  ', '<ul xss=\"removed\" xss=removed><li xss=\"removed\">Powder-coated silver vein steel frame.</li><li xss=\"removed\">Embossed vinyl upholstery is durable, lightweight, attractive and easy-to-clean.</li><li xss=\"removed\">Urethane tires mounted on composite wheels provide durability and low maintenance.</li><li xss=\"removed\">8\" front casters, adjustable in three positions.</li><li xss=\"removed\">Padded armrests provide additional comfort.</li><li xss=\"removed\">Carry pocket on backrest provides additional convenience.</li><li xss=\"removed\">Comes with swing-away footrests or elevating leg rests with tool-free adjustable length riggings.</li><li xss=\"removed\">Plastic foot plates with heel loops on footrests.</li><li xss=\"removed\">Comes with push-to-lock wheel locks.</li></ul><h5 xss=\"removed\" xss=removed></h5><p xss=\"removed\"><ul><li>Dimensions : 42\"L x 24\"W x 36\"H</li><li>Armrest Length : 14\"</li><li>Armrest to Floor Height : 27.5\"</li><li>Back Height : 16\"</li><li>Brakes : Push-To-Lock Wheel Brakes</li><li>Casters : 8\"</li><li>Closed Width : 12.5\"</li><li>Folded Dimensions : 42\" x 12.5\" x 36\"</li><li>Number of Wheels : 4</li><li>Overall Length w/ Riggings : 42\"</li><li>Color : Black</li><li>Material : Steel</li><li>Weight Capacity : 250 lbs.</li><li>Rear Wheels : 24\" x 1\"</li><li>Seat Depth : 16\"</li><li>Seat Width : 16\"</li><li>Seat to Armrest Height : 8\"</li><li>Seat to Floor Height : 17.5\"-19.5\"</li><li>Assembly : Basic Assembly Required</li><li>Prop 65: Yes</li></ul></p>', 0.0000, 0.0000, 0.0000, 0.0000, 228.31, 173.53, 'ssp216dfa-sf,.jpg', 'SSP216DFA-SF.JPG', 1, 1, 1514950857, 0, 0, 1516328835),
(173, '', 1, '', 12, '', '', '49', 'Leukotape P   Sports Tape1\" x 15 yds ', 'WC30001BOM', '  4042809042191   ', '    ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Leukotape P Sports Tape1\" x 15 yds Leukotape P Sports Tape is a rayon-backed tape with an aggressive zinc oxide adhesive. Leukotape P Sports Tape is recommended for patellofemoral taping and shoulder taping techniques. Specified for use with Cover-Roll Stretch Bandage.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 11.95, 9.99, '4042809042191.jpg', 'LEUKOTAPE L.jpg', 1, 1, 1516385217, 0, 0, 1517528633),
(174, '', 1, '', 12, '', '', '50', 'ELASTIC BANDAGE FIRST AID 2 IN.x 5.4YARDS', 'ELAS-BAND 2', ' 731015115846           ', '            ', 'BANDAGE RETAINS ELASTICITY AFTER REPEATED USE AND WASHING EASY TO FOLLOW WRAPPING COTTON HELPS VENTILATION FIRM SUPPORT AND COMPRESSION FOR STRAINS AND SPRAINS.', 0.0000, 0.0000, 0.0000, 0.0000, 2.00, 1.50, 'elas-band 2.jpg', 'ban.jpg', 1, 1, 1516393873, 0, 0, 1517683172),
(175, '', 1, '', 12, '', '', '50', 'ELASTIC BANDAGE FIRST AID 3 IN. X 3.5 YARDS', 'ELAS-BAN3', ' 01731015115846             ', '              ', 'BANDAGE RETAINS ELASTICITY AFTER REPEATED USE AND WASHING                                                                                                        <br><div class=\"description\">EASY TO FOLLOW WRAPPING                                                                                                                                                                             <br>COTTON HELPS VENTILATION                                                                                                                                                                               <br>FIRM SUPPORT AND COMPRESSION FOR STRAINS AND SPRAINS <br></div>', 0.0000, 0.0000, 0.0000, 0.0000, 2.50, 2.00, '', '', 1, 0, 1516394733, 0, 0, 1516395908),
(176, '', 0, '', 12, '', '', '50', 'ELASTIC BANDAGE FIRST AID 4 IN. x 3.5 YARDS', 'ELAS-BAN4', ' 02731015115846 ', '  ', 'BANDAGE RETAINS ELASTICITY AFTER REPEATED USE AND WASHING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>EASY TO FOLLOW WRAPPING                                                                                                                                                                             <br>COTTON HELPS VENTILATION                                                                                                                                                                               <br>FIRM SUPPORT AND COMPRESSION FOR STRAINS AND SPRAINS ', 0.0000, 0.0000, 0.0000, 0.0000, 3.00, 2.50, '', '', 1, 1, 1516395650, 0, 0, 0),
(177, '', 1, '', 36, '', '', '22', 'COLD THERAPY ICE BAG SMALL', 'WCOF001KI', '731015212194      ', '      ', 'Quickly reduce pain and swelling with this convenient, reusable Small Cold Therapy Ice Bag featuring a durable pink star print cloth bag with plastic lining that molds to fit body contours. Simply unscrew the bottom cap, fill with ice and the ice bag is ready to use. Measures approximately 6\" x 3\". Comes packaged in an individual box.', 0.0000, 0.0000, 0.0000, 0.0000, 5.64, 2.99, 'wcof001ki.jpg', 'COLD THERAPY ICE BAG.jpg', 1, 1, 1516636860, 0, 0, 1517676574),
(178, '', 1, '', 36, '', '', '22', 'COLD THERAPY ICE BAG LARGE', 'WCOF002KI', ' 731015212200  ', '   ', 'Quickly reduce pain and swelling with this convenient, reusable Large Cold Therapy Ice Bag featuring a durable star print cloth bag with plastic lining that molds to fit body contours. Simply unscrew the bottom cap, fill with ice and the ice bag is ready to use. Measures approximately 8.5\" x 3\". Comes packaged in an individual box.', 0.0000, 0.0000, 0.0000, 0.0000, 5.47, 3.99, 'wcof002ki.jpg', 'COLD THERAPY ICE BAG LARGE.jpg', 1, 1, 1516637200, 0, 0, 1517676837),
(179, '', 1, '', 36, '', '', '22', 'SUEDE HEEL GRIPS ', 'MISGM273KI', ' 731015160617 ', '  ', 'Help prevent rubbing at the heel and makes loose fitting shoes fit more <br>\r\ncomfortably with this convenient 2-piece Suede Heel Grips Set featuring <br>\r\nself-adhesive pads that stay firmly in place for long lasting comfort. <br>\r\nGrips measure approximately 4\" x 1 ', 0.0000, 0.0000, 0.0000, 0.0000, 2.50, 1.99, 'misgm273ki.jpg', 'SUEDE HEEL.jpg', 1, 1, 1516646746, 0, 0, 1516646797),
(180, '', 1, '', 36, '', '', '22', 'MEMORY FOAM INSOLES', 'WWHR111KI', ' 731015140831  ', '   ', 'Reducing foot pain. <br> Pacing on top of heel lifts / height insoles. <br> Reduction of spinal shrinkage during movement. <br> Molds to Your Feet for unbelievable Comfort. <br> Fits most shoe size cut to adjust. <br> Gives you custom comfort from Your heel to toes <br> Provides much needed rest for your tired archy feet, discover heel Comfort Instantly!. <br><br><br>\r\n The Memory Foam Heel Support Insoles give you custom comfort while <br><br>\r\nhelping to relieve pressure and reduce heel shock by cushioning your <br><br>\r\nevery step. <br> Pair Memory Foam Insoles Shoe Unisex 1 Size Fit Most Cushion Foot Pad Heel Shock', 0.0000, 0.0000, 0.0000, 0.0000, 2.50, 1.99, 'wwhr111ki.jpeg', 'MEMORY FOAM INSOLES.jpeg', 1, 1, 1516648007, 0, 0, 1516648042),
(181, '', 1, '', 36, '', '', '52', 'GRADUATED COMPRESSION ANTI-EMBOLISM STOCKINGS SMALL REGULAR KNEE', 'PC46302BOM', ' 0110073614706993102172752   ', '    ', 'Graduated compression speeds blood flow by providing the most <br><br>\r\ncompression at the ankle and gradually diminishing pressure up the calf.<br> Helps reduce the formation of blood clots. <br> Soft, durable materials for outstanding comfort and fit. <br> ', 0.0000, 0.0000, 0.0000, 0.0000, 16.40, 14.99, 'pc46302bom.jpg', 'ALBAHEALTH COMPRESSION ANTI EMBOLISM.jpg', 1, 1, 1516677127, 0, 0, 1517852030),
(182, '', 1, '', 36, '', '', '52', 'GRADUATED COMPRESSION ANTI-EMBOLISM STOCKINGS   MEDIUM REGULAR THIGH', 'PC46802BOM', ' 0110073614707723102170286   ', '    ', '<ul><li>Alignment indicator to assure proper positioning</li><li>Knit-in reciprocated heel pocket for greater patient comfort and to assure proper placement</li><li>Inspection port on top for convenience while checking the foot and greater comfort for ambulatory patients</li><li>Size: Medium, Regular</li><li>Length: 29 to 33 Inch</li><li>Style: Thigh-high</li><li>Circumference: Calf between 12 and 15 Inch</li><li>Color Codes: Toe Neutral, Top Neutral</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 17.84, 14.99, 'pc46802bom.jpg', 'ALBAHEALTH COMPRESSION ANTI EMBOLISM.jpg', 1, 1, 1516678522, 0, 0, 1517851948),
(183, '', 1, '', 43, '', '', '6', 'MEDLINE DISPONSABLE DIGITAL ORAL THERMOMETHER SHEATHS 100 PIECES', 'EXD09607BOM', '767056156913 ', '      ', 'Oral sheaths are designed for use with pocket-style, digital <br>\r\nthermometers. These latex-free oral sheaths allow sanitary oral use and easy disposal.', 0.0000, 0.0000, 0.0000, 0.0000, 3.32, 5.99, 'exd09607bom.jpeg', 'MEDLINE DISPONSABLE DIGITAL ORAL THERMOMETHER SHEATHS.jpeg', 1, 1, 1516749600, 0, 0, 1516750357),
(184, '', 1, '', 43, '', '', '43', 'MABIS DIGITAL THERMOMETHER', 'EXD15691000', ' 767056156913  ', '   ', '<ul><li>Fast 60-second readout.</li><li>Peak temperature tone.</li><li>Memory recall of last reading.</li><li>Automatic shut-off.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 3.99, 2.99, 'exd15691000.jpg', 'MABIS DIGITAL THERMOMETHER.jpg', 1, 1, 1516750875, 0, 0, 1516751312),
(185, '', 1, '', 13, '', '', '42', 'Tronex Power Free latex Textured Examination Gloves (Large)100XBox\r\nCode:3110-30', 'EXDISO90003', ' 0100097604311038        ', '         ', '<div id=\"ctl00_ctl00_ctl00_BodyContent_BodyContent_BodyContent_ctl00_hgcLongDescriptionTabBody\" data-search-term-container=\"\" class=\"responsive-tabs__panel responsive-tabs__active\" xss=\"removed\"><div id=\"ctl00_ctl00_ctl00_BodyContent_BodyContent_BodyContent_ctl00_wlProductDetailBlock_rptrPackageProducts_ctl04_pnlMfrNo\"><abbr title=\"Manufacturer Number\">No.</abbr><span class=\"highlight\"><span class=\"highlight__text\">3110-30</span></span><br>\r\n</div></div><div data-search-term-container=\"\" class=\"responsive-tabs__panel responsive-tabs__active\" xss=\"removed\">Advanced natural rubber latex material formulation features improved tactile sensitivity, superior elasticity, and excellent barrier protection. Double-chlorination process ensures added strength.<strong><br>        Features & Benefits:</strong><br><br></div><div data-search-term-container=\"\" class=\"responsive-tabs__panel responsive-tabs__active\" xss=\"removed\"><div align=\"justify\"><ul><li>         100% powder-free; non-sterile</li></ul></div><ul><li>Fully textured for a sustained grip during use</li><li>Manufactured for exceptionally low protein content</li><li>Ambidextrous with beaded cuffs</li><li>Meets FDA CFR Title 21 Part 177 for Safe Contact with Food Surfaces</li><li>FDA 510(k) Approved for Medical Use</li><li>Meets and exceeds ASTM D3578 Specification for Latex Examination Gloves for Medical Application</li><li>Meets and exceeds ASTM F1671 Test Method for Resistance of Materials by Blood-Borne Pathogens (Viral Penetration)</li><li>Manufacturing certified ISO 9001 for Quality Management Systems<br></li></ul><br>\r\n            </div>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 6.99, 'exdiso90003.jpg', 'TRONEX Power Free latex Textured Examination Gloves.jpg', 1, 1, 1516908288, 0, 0, 1517584068),
(186, '', 1, '', 13, '', '', '42', 'Tronex Power Free latex Textured Examination Gloves(Extra Large)100XBox\r\nCode: 3110-35\r\n', 'EXDISO90004', ' 0100097604311045     ', '      ', '<div data-search-term-container=\"\" class=\"responsive-tabs__panel responsive-tabs__active\" xss=\"removed\">Advanced natural rubber latex material formulation features improved tactile sensitivity, superior elasticity, andexcellent barrier protection. Double-chlorination process ensures added strength.<br><strong>Features & Benefits: </strong><br><br>\r\n<ul><li>100% powder-free; non-sterile</li><li>Fully textured for a sustained grip during use</li><li>Manufactured for exceptionally low protein content</li><li>Ambidextrous with beaded cuffs</li><li>Meets FDA CFR Title 21 Part 177 for Safe Contact with Food Surfaces</li><li>FDA 510(k) Approved for Medical Use</li><li>Meets and exceeds ASTM D3578 Specification for Latex Examination Gloves for Medical Application</li><li>Meets and exceeds ASTM F1671 Test Method for Resistance of Materials by Blood-Borne Pathogens (Viral Penetration)</li><li>Manufacturing certified ISO 9001 for Quality Management Systems<br></li></ul><br><br><br><br>\r\n            </div>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 6.99, 'exdiso90004.jpg', 'TRONEX Power Free latex Textured Examination Gloves.jpg', 1, 1, 1516909425, 0, 0, 1517584004),
(187, '', 33, '', 34, '', '', '55', 'Devilbiss PulmoNeb LT Compressor Nebulizer System 3655LT', 'ME30BOM', ' 0100885304001782    ', '     ', '<p>Devilbiss PulmoNeb LT Compressor Nebulizer System 3655LTWhen it comes to low cost, high performance compressor nebulizer systems, the remarkable PulmoNeb LT Compressor Nebulizer System fits the bill. This advanced yet affordable unit was developed to compete with other low-cost systems. However, it not only competes, it exceeds expectations by delivering superior performance that makes the PulmoNeb <br>\r\nLT one of the best, low cost, compressor nebulizer systems on the market. </p><p><strong>Features:</strong><br></p>           Maximum compressor pressure — 35 psig <br>           Compressor free air flow — 12.7 lpm<ul><li>ETL listed as compliant to UL 60601-1 Medical Electrical Equipment Standard</li><li>One-piece MicroPore® Filter is readily accessible and has six-month life</li><li>Small footprint and lightweight design make it easy to store and take along</li><li>Darker body color maintains its appearance after a prolonged period of use</li><li>Ball bearing connecting rod design equips the unit for years of dependable performance</li><li>Internal wire guides eliminate interference with moving parts for increasing reliability</li><li>Top-of unit connector facilitates easy attachment/removal of tubing</li><li>Tested to at least 1,000 hours of life</li><li>Five-year limited warranty</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 89.99, 81.99, 'me30bom.jpg', 'NEBULIZER.jpg', 1, 1, 1516920437, 0, 0, 1517685073),
(188, '', 33, '', 34, '', '', '29', 'CareFusion AirLife Aerosol Mask Under-the-Chin Adult', 'NE002433', ' 0110885403006548100001080324 ', '  ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">CareFusion AirLife Aerosol Adult Mask with Elastic Band Under-the-Chin Style, Made from High-grade Resins, Disposable These soft, high-quality AirLife disposable aerosol masks are made from high-grade resins. The smooth, feathered edges are designed for p Packaging: 1 Count Brand: MPN: 1206</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 7.50, 4.99, 'ne002433.jpeg', 'CAREFUSION AIR LIFE.jpeg', 1, 1, 1516986051, 0, 0, 1516986112),
(189, '', 33, '', 34, '', '', '29', 'CareFusion AirLife Pediatric Nic the Dragon Aerosol Mask 1 Count', 'NE001266', ' 380470047324  ', '   ', '<mark>CareFusion</mark> Pediatric <mark>AirLife</mark> Nic <mark>the</mark> Dragon <mark>Aerosol</mark><mark>Mask</mark> Plastic Construction, Latex-Free, Disposable, 1 Each.Designed to reduce fear and encourage compliance during asthma <mark>the</mark>rapy <br>', 0.0000, 0.0000, 0.0000, 0.0000, 9.23, 5.99, 'ne001266.jpeg', 'DRAGON CAREFISION AIRLIFE.jpeg', 1, 1, 1516986424, 0, 0, 1516986440),
(190, '', 33, '', 34, '', '', '56', 'Salter Labs Nasale Cannula 7inch , Smooth, Clear, 1 Count', 'NC16167', ' 0100607411100710  ', '   ', 'Salter Labs Concentrator Humidifier Adapter Tubing 7\'\', Three Channel Safety Oxygen Supply Tube, with One Molded Ribbed Connector End and One Male Thread Grip End.Superior safety due to crush-resistant internal wall design...a Salter innovation Special design features three inside channels that help prevent accidental occlusion. A unique \'\'ribbed body\'\' end fitting allows easy connections. Available in lengths from 4 ft to 100 ft. Thread grip, male or female ends are Special or custom  lengths available with minimum one case order. A selection of smooth bore tubing is also available.Crush resistant, three-channel safety design.Green or clear no memory tubing.Innovative connector design has ribbed end piece with rounded, tapered edgesAttaches easily to fittings.Salter Labs Concentrator Humidifier Adapter Tubing 15inch , Smooth, Clear, 1 Count.', 0.0000, 0.0000, 0.0000, 0.0000, 4.66, 2.99, 'nc16167.jpeg', 'Salter Labs.jpeg', 1, 1, 1516986913, 0, 0, 1516986960),
(191, '', 1, '', 4, '', '', '68', 'POVIDONE IODINE SWAB-STICK 25 PACKETS (3 SWAB STICKS PER PACKET)', 'WCS41325BOM', '0120310819000189      ', '              ', '<b>Features</b> <ul><li>Provides longer germicidal activity than ordinary Iodine Solution.</li><li>Non-irritating and non-stinging for better patient comfort.</li><li>Cleansing scrub swab sticks are saturated with a 7.5% Iodine-Iodine cleansing solution to scrub away dead skin, dirt and oil can be more effective.</li><li>Prep Pads and Swab sticks saturated with a 10% USP Povidone-Iodine prep solution provide proven antisepsis.</li><li>Duo-Swab contains one cleansing scrub swab stick and one antiseptic swab stick in a convenient 2-step package.</li><li>Saturated with 7.5 percentage USP Povidone-Iodine.</li><li>Pack of 3.</li><li>Box of 25 pack.</li></ul>- SKU: CRXP1002', 0.0000, 0.0000, 0.0000, 0.0000, 17.99, 14.99, 'wcs41325bom.jpg', 'I.jpg', 1, 1, 1516989078, 0, 0, 1517673117),
(192, '', 1, '', 38, '', '', '35', 'BD Vacutainer One Use Needle Holder 250/bg', 'NE364815', ' 0130382903648154    ', '     ', 'The BD Vacutainer™ Single-use Needle/Tube Holder is a quality, low-cost single use holder. This holder is compatible with BD Vacutainer™<br>\r\nEclipse™ Blood Collection Needles, BD Vacutainer™ Safety-Lok™ Blood Collection Sets, BD Vacutainer™ Tubes, and the BD Vacutainer™ Multiple Sample Luer Adapters. Clear; Standard size; Nonsterile. 250/bg', 0.0000, 0.0000, 0.0000, 0.0000, 18.50, 12.99, 'va364815.jpg', 'BD Vacutainer One Use Needle Holder 250 bg.jpg', 1, 1, 1516990946, 0, 0, 1516993880),
(193, '', 1, '', 15, '', '', '57', 'Narrow Graduated Medication Cup, Clear, 400 Pk', 'CUP5165', ' 170510-400    ', '     ', '<span id=\"product_description\" itemprop=\"description\"><span xss=removed>Cups are graduated each mL with numbers at every 5 mL. Cups have a 30 mL capacity.<br><br><br><br><br>\r\n  </span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 23.52, 15.99, 'cup5165.jpg', 'Cups.jpg', 1, 1, 1516991993, 0, 0, 1516992252),
(194, '', 1, '', 38, '', '', '58', 'BRAUN FILTER NEEDLE (3.8cm)', 'NE415025', ' 0061566310  ', '   ', '<ul><li>Application: Medication Transfer Needle</li><li>Usage: Disposable</li><li>Sterility: Sterile</li><li>Style: Thin Wall</li><li>Length: 1-1/2 Inch</li><li>Type: Filter</li><li>Connecting Type: Female Luer Lock</li><li>Filter Type: 5 Micron</li><li>Gauge: 20 Gauge</li><li>Needle Material: Stainless Steel</li><li>Point Style: Beveled Point</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 0.49, 0.35, 'ne415025.jpg', 'BRAUN FILTER NEEDLE.jpg', 1, 1, 1516995060, 0, 0, 1516995224),
(195, '', 1, '', 47, '', '', '6', 'Medline Biohazard Sharps Container, Freestanding/Wall Mountable, 1qt, 4 1/4 x 4 x 6, Red - Sharps Container. ', 'MDS705110', ' 0110080196282647    ', '     ', 'Designed for maximum capacity to fill line and large opening accommodates larger syringes.  Translucent lid provides easy-to-see fill <br>\r\n levels.  Container easily locks for final disposal and safe transport.<ul class=\"pagination\"><li class=\"paginate_button next\" id=\"example_next\"><a href=\"http://www.jdmedicalsupplies.org/store_items/manage#\" aria-controls=\"example\" data-dt-idx=\"8\" tabindex=\"0\">Next</a></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 0.69, 0.99, 'mds705110.jpg', 'MEDLINE CONTAINER.jpg', 1, 1, 1516996101, 0, 0, 1517004481),
(196, '', 1, '', 11, '', '', '35', 'BD VACUTAINER BLOOD COLLECTION TUBE YELLOW TOP SST 3.5ml. 13X75mm 100pieces', 'TUB367983', ' 0130382903679837  ', '   ', '<span id=\"Anthem_ctl00_MainContentHolder_lblDescription__\"><span id=\"ctl00_MainContentHolder_lblDescription\" itemprop=\"description\"><p>The<br>\r\n Vacutainer® SST™ Tubes contain spray coated silica to aid in clotting <br>\r\nand a polymer gel for serum separation. The Tubes are used for serum <br>\r\ndeterminations in chemistry, infectious disease testing and blood donor <br>\r\nscreening. Using the Vacutainer® SST™ Tubes helps lab stuff work more <br>\r\nefficiently with improved serum sample preparation process and clotting <br>\r\ntime of 30 minutes.</p><p>The Tubes are made from plastic, which reduces<br>\r\n breakage and specimen spillage. The disposal is easy and complies with <br>\r\nEPA guidelines. They come with a choice of either <span lang=\"EN-US\">Gold Hemogard™ Closure or <span lang=\"EN-US\">Red/ Gray Conventional Stopper, color coded for the ease of visual assesment. <br></span></span></p></span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 89.99, 84.99, 'tub367983.jpg', 'TUB YELLOW.JPG', 1, 1, 1516999210, 0, 0, 1516999240),
(197, '', 1, '', 11, '', '', '35', 'BD VACUTAINER BLOOD COLLECTION TUBE 4.0ml. 13X75mm, K2EDTA 7.2 mg, 100/Box', 'TUB367844', ' 0130382903678441     ', '      ', '<span id=\"Anthem_ctl00_MainContentHolder_lblDescription__\"><span id=\"ctl00_MainContentHolder_lblDescription\" itemprop=\"description\"><p>TheVacutainer® EDTA Tubes with Hemogard™ Closure are used for whole blood hematology determinations, blood donor screening and immunohematology. Tube inversions help the blood mix with the anticoagulant (EDTA) and prevents clotting.The Hemogard™ Closure prevents health care workers from coming in contact with blood. The closure features a rubber stopper that is recessed inside the plastic shield. This prevents any blood drops from coming in contact with personnel. The tube is made from plastic, which reduces breakage and specimen spillage. The disposal is easy and complies with EPA<br>\r\nguidelines.</p></span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 59.99, 47.99, 'tub367844.jpg', 'TUB PURPURE.jpg', 1, 1, 1517000088, 0, 0, 1517000177),
(198, '', 33, '', 34, '', '', '59', 'Air Life Volumetric Incentive Spirometer with One-Way Valve \'\'2500 mL, 1 Count\'\' ', 'SPI0019044', '0110885403131417  ', '       ', 'Manual single-patient use.CareFusion AirLife Volumetric Incentive Spirometer with One-Way Valve, Dual Sided Calibrations, Flexible Tubing,Mouthpiece Holder AirLife volumetric incentive spirometer simplify deep breathing therapy with an intuitive design that prompts patients to correctly perform and monitor their own breathing exercises,even without direct supervision. A patient goal indicator can be adjusted and allows patients to monitor their own progress. The flexible tubing lets the patient adjust the mouthpiece for use in various&nbsp;&nbsp; <span itemprop=\"description\"><p>positions, and a mouthpiece holder provides storage when not in use.</p></span><span itemprop=\"description\"><ul><li>For pediatric use.</li><li>Dual sided calibrations.</li><li>Flexible tubing.</li><li>Mouthpiece holder.</li><li>Patient goal indicator can be adjusted and allows patients to monitor their own progress.</li></ul></span>', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 7.99, 'spi0019044.jpg', '2500-ml-1-count.jpg', 1, 1, 1517002365, 0, 0, 1517684482),
(199, '', 1, '', 38, '', '', '6', 'Medline My-Cath Touch-Free Self Catheter System, 14.0', 'ME1044BOM', ' 10080196509607  ', '   ', '<ul><li>Special closed system design helps reduce mess, eases disposal <br>\r\nand reduces contamination risk by allowing a touch-free catheterization<br>\r\n</li><li>The catheter and introducer are coated with a water soluble lubricant for ease of insertion<br>\r\n</li><li>Catheter guide allows for simple, protected control of catheter during insertion<br>\r\n</li><li>1500 ml collection bag eliminates the need for separate container, reducing the chance of spillage<br>\r\n</li><li>Kit includes: collection bag, catheter, moisture-proof underpad, wrapped gloves and PVP swabsticks (3/pk)<br>\r\n</li><li>Sterile</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 4.99, 3.50, 'me1044bom.jpg', 'MY CATH.jpg', 1, 1, 1517005569, 0, 0, 1517005745),
(200, '', 16, '', 18, '', '', '60', 'ADVOCATE 30G LANCETS 100PIECES', 'DIA307BM', ' 894046001066   ', '    ', '<p>ADVOCATE offers a complete range of quality lancets to ensure that accurate blood samples can be obtained with any skin type, quickly, easily and consistently.<br>\r\n</p><strong>Compatible:</strong><br><p>• Advocate Lancing Device<br>\r\n• almost all other lancing devices</p><p><strong>Package Contents:</strong> You will receive <br>\r\n•1 box of 100 Advocate Pull Lancets<br>\r\n</p><strong>Product Details:</strong><br>• Expiration Date: 6+ months from Purchase Date<br><p> Gauge: 30 Gauge<br></p>', 0.0000, 0.0000, 0.0000, 0.0000, 3.99, 2.99, 'dia307bm.png', 'advocate-pull-top-lancets-100-ct-per-box-1.png', 1, 1, 1517007126, 0, 0, 1517852665),
(201, '', 1, '', 2, '', '', '14', 'COVIDEN SURE CARE UNDERPAD 30X36\" 10 COUNT HEAVY', 'IN50001BM', ' 0120884527001511  ', '   ', '<div class=\"about-desc\" data-tl-id=\"AboutThis-ShortDescription\"><span xss=removed>SureCare<br>\r\n Disposable Underpads are manufactured with an extra soft, strong, white<br>\r\n facing to reduce the possibility of skin irritation and a waterproof, <br>\r\nplastic backing to protect your bed linens.</span> <div>  Manufacturer # 1552MD </div> <div>  Brand  <span class=\"Apple-tab-span\" xss=removed></span>SureCare </div> <div>  Manufacturer  <span class=\"Apple-tab-span\" xss=removed></span>Covidien </div> <div>  Absorbent Capacity  <span class=\"Apple-tab-span\" xss=removed></span>Heavy Absorbency </div> <div>  Absorbent Core Material  <span class=\"Apple-tab-span\" xss=removed></span>Fluff </div> <div>  Application  <span class=\"Apple-tab-span\" xss=removed></span>Underpad </div> <div>  Backsheet Color  <span class=\"Apple-tab-span\" xss=removed></span>Light Blue </div> <div>  Backsheet Material  <span class=\"Apple-tab-span\" xss=removed></span>Polypropylene </div> <div>  Dimensions  <span class=\"Apple-tab-span\" xss=removed></span>30 X 36 Inch </div> <div>  HCPCS  <span class=\"Apple-tab-span\" xss=removed></span>T4541 (Disclaimer) </div> <div>  Topsheet Material  <span class=\"Apple-tab-span\" xss=removed></span>Spunbond Nonwoven </div> <div>  Usage  <span class=\"Apple-tab-span\" xss=removed></span>Disposable </div> <div><br>\r\n  SureCare Disposable Underpads are manufactured with an extra soft, <br>\r\nstrong, white facing to reduce the possibility of skin irritation and a <br>\r\nwaterproof, plastic backing to protect your bed linens. The SureCare <br>\r\nUnderpads are super soft with a white, non-woven facing and are highly <br>\r\nabsorbent. </div> <div>  Spunbond non-woven top sheet allows fluid to pass quickly into the absorbent core. </div> <div>  Polypropylene backsheet protects against leakage and resists melting. </div> <div>  Heavy absorbency. </div> <div>  10 Underpads Per Pack, 3 Packs Per Case  </div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 22.99, 14.99, 'in50001bm.jpeg', 'COVIDEN SURE CARE UNDERPAD 30X36 10 COUNT HEAVY.jpeg', 1, 1, 1517088076, 0, 0, 1517088094),
(202, '', 1, '', 2, '', '', '6', 'MED-LINE MAXI PADS W/WINGS 11\"', 'PCH241289BM', ' 0120080196313331    ', '     ', '<ul><li>Maximum absorbency for increased confidence</li><li>Adhesive runs entire length of pad and on wings</li><li>Wings wrap around panty</li><li>Individually wrapped</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 13.99, 9.99, 'pch241289bm.jpg', 'MAXI WITH WINGS.jpg', 1, 1, 1517089092, 0, 0, 1517089193),
(203, '', 1, '', 4, '', '', '8', 'MCKESSON STAY DRAY DISPOSABLE WASHCLOTHS WITH ALOE/SOFT 50 PACKS', 'PCHWPW50BOM', ' 0110612479192116  ', '   ', '<p><strong>McKesson StayDry Disposable Washcloths</strong> from HealthyKin.com are pre-moistened and feature a single hand dispensing system to help reduce cross contamination.<br>\r\n<strong>McKesson StayDry Disposable Washcloths Features:</strong><br>\r\n</p><ul><li>Contains natural Aloe and Vitamin E</li><li>Pre-moistened</li><li>Single hand dispensing helps to reduce cross contamination</li><li>Clinically tested to be mild on your skin</li><li>Soft-pack with convenient dispensing lid</li><li>Hypoallergenic</li><li>Alcohol free</li><li>Rinse free</li><li>Latex free</li><li>Lightly scented</li><li>Non-sterile</li><li>12\" x 8\" wipes</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 4.99, 3.99, 'pchwpw50bom.jpg', 'MCKESSON STAY DRAY DISPOSABLE WASHCLOTHS WITH ALOE SOFT 50 PACKS.jpg', 1, 1, 1517090036, 0, 0, 1517090149),
(204, '', 1, '', 4, '', '', '62', 'Dynarex Premoistened Washcloths 8 X 12\"   50 EACH', 'WA1320', ' 616784132020      ', '       ', '<p><strong>Dynarex Premoistened Washcloths</strong> from HealthyKin.com feature a soft, yet durable spunlace material for a soothing gentle <br>\r\ntouch. These wet wipes contain lanolin and aloe vera skin conditioners.<br>\r\n<strong>Dynarex Premoistened Washcloths Features:</strong><br><br><br>\r\n</p><ul><li>Alcohol Free</li><li>Economical and environmentally friendly</li><li>Latex Free</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 3.99, 2.99, 'wa1320.jpeg', 'Dynarex Premoistened Washcloths.jpeg', 1, 1, 1517091831, 0, 0, 1517092124),
(205, '', 1, '', 15, '', '', '63', 'KENDALL SOLUTION BOWL 16 OZ', 'BO61000', ' 01200884527005557   ', '    ', 'Medical Grade Polypropylene Solution Bowls are ideal for operating/emergency rooms and general use.<br><ul><li>Ideal for operating/emergency rooms and general use.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 2.99, 1.99, 'bo61000.jpg', 'KENDALL SOLUTION BOWL.jpg', 1, 1, 1517265866, 0, 0, 1517266097),
(206, '', 1, '', 3, '', '', '22', 'FRESH MINT DENTAL FLOSS', 'PCH40017KI', ' 731015162390  ', '   ', 'Help keep cavities and gingivitis at bay with this Fresh mint Dental <br>\r\nFloss. Comes in a compact carrying case making it ideal for purses, <br>\r\nbriefcases, office drawers and more. Case measures approximately 1 3/4\" x<br>\r\n 3\" and contains approximately 120\' of floss. ', 0.0000, 0.0000, 0.0000, 0.0000, 1.99, 1.50, 'pch40017ki.jpg', '060322-00.jpg', 1, 1, 1517346105, 0, 0, 1517346123),
(207, '', 1, '', 15, '', '', '22', 'MEDICINE CASE 7-DAYS PILL BOX SPANISH', 'MISSP002KI', ' 731015155637  ', '   ', 'There will be no problems making sure that elderly parents or grandparents get their recommended medication with this set. Package <br><br>\r\nincludes 2 divided and labeled pill cases. Each section is designed to hold pills for one day. Sections are marked for each day of the week. <br><br>\r\nPackage includes 2 6\" x 1 1/2\" plastic cases.  Comes packaged in a blister pack.                        ', 0.0000, 0.0000, 0.0000, 0.0000, 2.99, 1.99, 'missp002ki.jpg', 'MEDICINE CASE 7-DAYS PILL BOX SPANISH.jpg', 1, 1, 1517350633, 0, 0, 1517351134),
(208, '', 1, '', 15, '', '', '22', 'MEDICINE PILL BOX SET 7-DAY', 'MIS0223KI', ' 731015089178   ', '    ', 'Perfect for traveling. Keep one box at home and one for the road. Each compartment is labeled with a day of the week and the first letter of each day is in a large, bold black font. Easily snaps open and close. Comes in blister card.', 0.0000, 0.0000, 0.0000, 0.0000, 2.99, 1.99, 'mis0223ki.jpg', 'MEDICINE PILL BOX SET 7-DAY.jpg', 1, 1, 1517351249, 0, 0, 1517351308),
(209, '', 1, '', 5, '', '', '65', 'HAND SANITIZER SPRAY 8 OZ.', 'PCH40018KI', ' 674986501686       ', '        ', 'Remove 99.999% of most common germs that may make you sick with this 8-ounce Hand Sanitizer Spray featuring a safe and effective natural antiseptic. The active ingredient is citrus extract and this formula leaves hands feeling soft and smooth without sticky residue. Unscented and alcohol free. Keep a bottle at work, in the classroom and at home. Use anytime, any place without water or a towel. Comes loose.           <br><br><br><br><br><br>\r\n             ', 0.0000, 0.0000, 0.0000, 0.0000, 2.99, 1.50, 'pch40018ki.jpg', 'th.jpg', 1, 1, 1517352564, 0, 0, 1517609211),
(210, '', 1, '', 5, '', '', '19', 'Purell Advanced Hand Sanitizer Pump Bottle 12oz.', 'PCH365912BOM', ' 073852021912        ', '         ', 'Purell Hand Sanitizer Purell 12 oz. Hand Sanitizer Advanced  Ethyl Alcohol Gel Pump Bottle', 0.0000, 0.0000, 0.0000, 0.0000, 7.49, 4.99, 'pch365912bom.jpg', 'PURELL® Advanced Hand Sanitizer Gel 8 fl oz.jpg', 1, 1, 1517416856, 0, 0, 1517417904),
(211, '', 27, '', 29, '', '', '66', 'ROLLATOR', '050428439890', '050428439890     ', '     ', 'The Rollator with Folding Removable Back Support in red by Drive Medicalcomes standard with 7.5\" caster wheels, loop locks and created brakes to ensure safety. The seamless padded seat opens to a roomy, convenient,zippered storage pouch to easily and securely transport personal items.The ergonomic handles are easy to grip, relieve hand pressure, and are height adjustable to accommodate users height. Large 7.5\" casters are ideal for indoor and outdoor use. Removable, hinged, padded backrest can be folded up or down as necessary. Handles are adjustable in height.<br><br>\r\nEasy to use loop locks. Comes with padded seat with zippered pouch under seat. Comes standard with pouch', 0.0000, 0.0000, 0.0000, 0.0000, 106.99, 89.99, '050428439890.jpeg', 'ROLLATOR.jpeg', 1, 1, 1517431699, 0, 0, 1517431732),
(212, '', 33, '', 55, '', '', '67', '5 Drawer Medical Bedside Cart', 'CAR670147', '       ', '       ', '<b>5-Drawer Medical Bedside Cart, Key Lock, Beige</b><br><br>Economical steel bedside/nurse server cart is ideal for use in hospitals, private medical practices, nursing homes, school infirmaries and more. Constructed of heavy gauge steel for long lasting durability and easy to clean. Includes one ABS plastic top allows for thorough cleaning. Central key lock secures all the drawers at the same time. Four 2.5\" swivel casters make for easy maneuverability. Easy assembly. <br>', 0.0000, 0.0000, 0.0000, 0.0000, 999.00, 850.00, 'car670147.jpg', 'car670147.jpg', 1, 1, 1517432878, 0, 0, 1517949458),
(213, '', 1, '', 7, '', '', '66', 'Drive Medical Bathroom Safety Shower Tub Bench Chair ', 'CHA741738', ' 050428823088   ', '    ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">The Ultimate in Safety, Security and Stability The Drive Medical Grey Bathroom Safety Shower Tub Bench Chair with Back guarantees your bathing experience can be a safe and pleasant one, minus the worry and unease that arises from fear of falling while in the tub or showering.Designed for maximum comfort, efficiency, safety, and ease of use, the Drive Safety Shower Chair is strong, durable and dependable. It\'s everything you need in a shower safety bench seat.So, if you experience dizziness,or you\'re unsure of your footing due to mobility issues when it comes time to bathe...You can now rid yourself of the stress and worry as bathing once again becomes relaxing and pleasurable, thanks to Drive Medical\'s Grey Bathroom Safety Shower Tub Bench Chair with Back. Go ahead...Experience the Drive Difference Now!</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 31.99, 29.99, 'cha741738.jpg', 'bath chair.jpg', 1, 1, 1517525084, 0, 0, 1517525236),
(214, '', 1, '', 38, '', '', '35', 'BD 1ml TB Syringe Slip Tip With Bd Precision Glide Needle\r\n21g X 1 (0.8mm X 25mm) Ref 309624 100/box', 'NE309624', ' 0100382903096244 ', '  ', 'BD Tuberculin Syringe with Needle - 1 mL - 21 gauge - 1 inch from <br>\r\nFirstOptionMedical.com provides a syringe with needle combination <br>\r\nwithout a safety device.', 0.0000, 0.0000, 0.0000, 0.0000, 29.99, 23.99, 'ne309624.jpg', '30503-1.jpg', 1, 1, 1517590819, 0, 0, 1517590833),
(215, '', 1, '', 38, '', '', '14', 'Covidien Monoject 1ml Tuberculin Syringe 25g x 5/8 100/box', 'NE1180125058', ' 0110884521013452  ', '   ', 'SoftPack tuberculin syringes are sterile, single-use, individually packaged syringes with an attached needle.-Ultra comfort, anti-coring needle produces a consistently sharp needle for more comfortable injections.Dual scale graduations (syringe only) satisfies any dosage requirements, easy to read; fewer errors-Low dead space on permanent needle syringe minimizes waste of medication Improved silicone needle lubricant reduces needle shaft drag providing virtually pain-free injections Epoxy bonded attachment of cannula to hub assures greater compatibility with chemotherapeutic drugs and other specialized drugs-Laser-welded cannula and “hubless” needle design (permanent only) assures cannula integrity-Convenient, individually packed inner cartons are ready to ship for distributors and makes it easy for clinicians to dispense contents -Polypropylene barrel and plunger rod -Latex-free plunger tip <br>', 0.0000, 0.0000, 0.0000, 0.0000, 20.99, 17.99, 'ne1180125058.jpg', 'covidien-syringe-tb-1cc-25-x-5-8-100-box-494.jpg', 1, 1, 1517592085, 0, 0, 1517592242),
(216, '', 1, '', 4, '', '', '68', 'POVIDONE IODINE SWAB-STICK 50 PACKETS (1 SWAB STICKS PER PACKET)', 'WCS41350BOM', '0110310819000175    ', '         ', '<p>PDI Iodine Prep Swabsticks are ideal for venipuncture, I.V. starts, renal dialysis, preop prep and other minor, invasive procedures.Provides longer germicidal activity than ordinary iodine solutions.<br>They are nonirritating and virtually nonstinging for better patient comfort.Antiseptic Swabsticks saturated with a 10% povidone-iodine solution (equivalent to 1% available Iodine).Withone of the largest catalogs of medical, surgical and diagnostic supplies available online, Medex Supply can accommodate your facility\'s <br><br><br><br><br><br>\r\nneeds for Wound Care.Swabsticks can be found in our extensive onlinecollection of products from globally recognized and trusted brands, including PDI. An excellent option to consider is the Iodine Prep <br><br><br><br><br><br>\r\nSwabstick, 1\'S, 4\\\", Antiseptic.<br></p>', 0.0000, 0.0000, 0.0000, 0.0000, 6.99, 12.99, 'wcs41350bom.jpg', 'I 1.jpg', 1, 1, 1517601810, 0, 0, 1517608386),
(217, '', 0, '', 4, '', '', '69', 'TENA Classic Briefs Diapers Size Small 12 Count  22\" To 36\"', '66100', ' 768702661003  ', '   ', '<div id=\"tab2\" class=\"tab-content ui-tabs-panel ui-widget-content ui-corner-bottom\" itemprop=\"description\" role=\"tabpanel\"><br>\r\n     <ul><li>Comfortable core technology and super absorbent technology</li><li>Soft, nonwoven backsheet is gentle and discreet</li><li>Moisture-proof lining protects clothing and linen and is color coded for product selection</li><li>Curved leg elastics for better fit, more protection and comfort</li><li>Wetness indicator to alert caregivers</li><li>Hook fasteners for easy and unlimited refastenability</li></ul><br>\r\n    </div>', 0.0000, 0.0000, 0.0000, 0.0000, 10.99, 8.99, '66100.jpg', '66100.jpg', 1, 1, 1517605177, 0, 0, 0),
(218, '', 1, '', 4, '', '', '69', 'TENA Classic Briefs Diapers Size Small 12 Count  22\" To 36\"', '66100', ' 768702661003  ', '   ', '<div id=\"tab2\" class=\"tab-content ui-tabs-panel ui-widget-content ui-corner-bottom\" itemprop=\"description\" role=\"tabpanel\"><br>\r\n     <ul><li>Comfortable core technology and super absorbent technology</li><li>Soft, nonwoven backsheet is gentle and discreet</li><li>Moisture-proof lining protects clothing and linen and is color coded for product selection</li><li>Curved leg elastics for better fit, more protection and comfort</li><li>Wetness indicator to alert caregivers</li><li>Hook fasteners for easy and unlimited refastenability</li></ul><br>\r\n    </div>', 0.0000, 0.0000, 0.0000, 0.0000, 10.99, 8.99, '66100.jpg', '66100.jpg', 1, 1, 1517605277, 0, 0, 1517605289),
(219, '', 1, '', 4, '', '', '69', 'TENA Classic Briefs Diapers Size Medium\r\n25 Count 34\" to 47\"', 'DA67720', ' 768702677202   ', '    ', '<div id=\"tab2\" class=\"tab-content ui-tabs-panel ui-widget-content ui-corner-bottom\" itemprop=\"description\" role=\"tabpanel\"><br>\r\n     <ul><li>Comfortable core technology and super absorbent technology</li><li>Soft, nonwoven backsheet is gentle and discreet</li><li>Moisture-proof lining protects clothing and linen and is color coded for product selection</li><li>Curved leg elastics for better fit, more protection and comfort</li><li>Wetness indicator to alert caregivers</li><li>Hook fasteners for easy and unlimited refastenability</li></ul><br><br><br>\r\n    </div>', 0.0000, 0.0000, 0.0000, 0.0000, 15.99, 12.99, 'da67720.png', '67720.png', 1, 1, 1517606080, 0, 0, 1517606378),
(220, '', 1, '', 4, '', '', '69', 'TENA Classic Briefs Diapers Size Regular\r\n25 Count  40\" to 50\"', 'DA67730', ' 768702677301     ', '      ', '<div id=\"tab2\" class=\"tab-content ui-tabs-panel ui-widget-content ui-corner-bottom\" itemprop=\"description\" role=\"tabpanel\"><div id=\"tab2\" class=\"tab-content ui-tabs-panel ui-widget-content ui-corner-bottom\" itemprop=\"description\" role=\"tabpanel\"><br>\r\n     <ul><li>Comfortable core technology and super absorbent technology</li><li>Soft, nonwoven backsheet is gentle and discreet</li><li>Moisture-proof lining protects clothing and linen and is color coded for product selection</li><li>Curved leg elastics for better fit, more protection and comfort</li><li>Wetness indicator to alert caregivers</li><li>Hook fasteners for easy and unlimited refastenability</li></ul><br><br><br><br>\r\n    </div><br><br><br><br>\r\n    </div>', 0.0000, 0.0000, 0.0000, 0.0000, 16.99, 13.99, 'da67730.png', '67720.png', 1, 1, 1517606554, 0, 0, 1517606623),
(221, '', 1, '', 4, '', '', '69', 'TENA Classic Briefs Daipers Size Large\r\n25 Count  48\" to 59\"', 'DA67740', ' 768702677400 ', '  ', '<div id=\"tab2\" class=\"tab-content ui-tabs-panel ui-widget-content ui-corner-bottom\" itemprop=\"description\" role=\"tabpanel\"><br>\r\n     <ul><li>Comfortable core technology and super absorbent technology</li><li>Soft, nonwoven backsheet is gentle and discreet</li><li>Moisture-proof lining protects clothing and linen and is color coded for product selection</li><li>Curved leg elastics for better fit, more protection and comfort</li><li>Wetness indicator to alert caregivers</li><li>Hook fasteners for easy and unlimited refastenability</li></ul><br>\r\n    </div>', 0.0000, 0.0000, 0.0000, 0.0000, 21.99, 16.99, 'da67740.png', '67720.png', 1, 1, 1517606954, 0, 0, 1517606966),
(222, '', 1, '', 4, '', '', '69', 'TENA Classic Briefs Daipers Size X-Large\r\n25 Count  60\" to 64\"', 'DA67750', '768702677509   ', '   ', '<div id=\"tab2\" class=\"tab-content ui-tabs-panel ui-widget-content ui-corner-bottom\" itemprop=\"description\" role=\"tabpanel\"><br>\r\n     <ul><li>Comfortable core technology and super absorbent technology</li><li>Soft, nonwoven backsheet is gentle and discreet</li><li>Moisture-proof lining protects clothing and linen and is color coded for product selection</li><li>Curved leg elastics for better fit, more protection and comfort</li><li>Wetness indicator to alert caregivers</li><li>Hook fasteners for easy and unlimited refastenability</li></ul><br><br>\r\n    </div>', 0.0000, 0.0000, 0.0000, 0.0000, 24.99, 19.99, 'da67750.png', '67720.png', 1, 1, 1517607325, 0, 0, 1517607344),
(223, '', 1, '', 4, '', '', '69', 'TENA Classic Briefs Diapers Size 2X-Large\r\n12 Count 68\" to 80\"', 'DA72517', '768702725170 ', '  ', '<div id=\"tab2\" class=\"tab-content ui-tabs-panel ui-widget-content ui-corner-bottom\" itemprop=\"description\" role=\"tabpanel\"><br>\r\n     <ul><li>Comfortable core technology and super absorbent technology</li><li>Soft, nonwoven backsheet is gentle and discreet</li><li>Moisture-proof lining protects clothing and linen and is color coded for product selection</li><li>Curved leg elastics for better fit, more protection and comfort</li><li>Wetness indicator to alert caregivers</li><li>Hook fasteners for easy and unlimited refastenability</li></ul><br>\r\n    </div>', 0.0000, 0.0000, 0.0000, 0.0000, 17.99, 14.99, 'da72517.png', '67720.png', 1, 1, 1517607734, 0, 0, 1517607746),
(224, '', 1, '', 13, '', '', '8', 'Mckesson Powder Free Vinyl Exam Gloves X-Small 150/Box MFR14-132', 'GLO14132', ' 0120612479185610    ', '     ', '<p><strong>McKesson Stretch Vinyl Exam Gloves</strong> are an economical choice when you are in need of powder-free, non-sterile vinyl gloves. Superb quality and extremely comfortable even if worn for extended periods of tme. These vinyl exam gloves offer great strength and are made to accommodate those with latex allergies.These McKesson <a href=\"https://www.vitalitymedical.com/vinyl-gloves.html\"><strong>vinyl exam gloves</strong> </a>are perfect for many applications and uses, including home use, food preparation and handling, as well as laboratory work.</p><p><strong>Powder Free Vinyl Exam Gloves Features</strong></p><ul><li>Latex Free</li><li>Powder Free</li><li>Ambitextrous Fitting</li></ul><p><strong>Non Sterile Vinyl Exam Glove Specifications</strong></p><ul><li>Fingertip Thickness: 0.11mm</li><li>Length: 9.4 Inches</li><li>Sizes: Small, Medium, Large, Extra Large</li><li>Beaded Cuff</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 5.99, 'glo14132.png', 'GLO.png', 1, 1, 1517955192, 0, 0, 1517955849),
(225, '', 1, '', 13, '', '', '8', 'Mckesson Powder Free Vinyl Exam Gloves Small 150/Box MFR14-134', 'GLO14134', ' 0120612479185634   ', '    ', '<p><strong>McKesson Stretch Vinyl Exam Gloves</strong> are an economical choice when you are in need of powder-free, non-sterile vinyl gloves. Superb quality and extremely comfortable even if worn for extended periods of tme. These vinyl exam gloves offer great strength and are made to accommodate those with latex llergies.These McKesson <a href=\"https://www.vitalitymedical.com/vinyl-gloves.html\"><strong>vinyl exam gloves</strong> </a>are perfect for many applications and uses, including home use, food preparation and handling, as well as laboratory work.</p><p><strong>Powder Free Vinyl Exam Gloves Features</strong></p><ul><li>Latex Free</li><li>Powder Free</li><li>Ambitextrous Fitting</li></ul><p><strong>Non Sterile Vinyl Exam Glove Specifications</strong></p><ul><li>Fingertip Thickness: 0.11mm</li><li>Length: 9.4 Inches</li><li>Sizes: Small, Medium, Large, Extra Large</li><li>Beaded Cuff</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 5.99, 'glo14134.png', 'GLO.png', 1, 1, 1517956257, 0, 0, 1517957660),
(226, '', 1, '', 13, '', '', '8', 'Mckesson Powder Free Vinyl Exam Gloves Medium 150/Box MFR14-136', 'GLO14136', ' 0120612479185658  ', '   ', '<p><strong>McKesson Stretch Vinyl Exam Gloves</strong> are an economical choice when you are in need of powder-free, non-sterile vinyl gloves. Superb quality and extremely comfortable even if worn for extended periods of tme. These vinyl exam gloves offer great strength and are made to accommodate those with latex llergies.These McKesson <a href=\"https://www.vitalitymedical.com/vinyl-gloves.html\"><strong>vinyl exam gloves</strong> </a>are perfect for many applications and uses, including home use, food preparation and handling, as well as laboratory work.</p><p><strong>Powder Free Vinyl Exam Gloves Features</strong></p><ul><li>Latex Free</li><li>Powder Free</li><li>Ambitextrous Fitting</li></ul><p><strong>Non Sterile Vinyl Exam Glove Specifications</strong></p><ul><li>Fingertip Thickness: 0.11mm</li><li>Length: 9.4 Inches</li><li>Sizes: Small, Medium, Large, Extra Large</li><li>Beaded Cuff</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 5.99, 'glo14136.png', 'GLO.png', 1, 1, 1517956673, 0, 0, 1517956795),
(227, '', 1, '', 13, '', '', '8', 'Mckesson Powder Free Vinyl Exam Gloves Large 150/Box MFR14-138', 'GLO14138', ' 0120612479185672  ', '   ', '<p><strong>McKesson Stretch Vinyl Exam Gloves</strong> are an economical choice when you are in need of powder-free, non-sterile vinyl gloves. Superb quality and extremely comfortable even if worn for extended periods of tme. These vinyl exam gloves offer great strength and are made to accommodate those with latex llergies.These McKesson <a href=\"https://www.vitalitymedical.com/vinyl-gloves.html\"><strong>vinyl exam gloves</strong> </a>are perfect for many applications and uses, including home use, food preparation and handling, as well as laboratory work.</p><p><strong>Powder Free Vinyl Exam Gloves Features</strong></p><ul><li>Latex Free</li><li>Powder Free</li><li>Ambitextrous Fitting</li></ul><p><strong>Non Sterile Vinyl Exam Glove Specifications</strong></p><ul><li>Fingertip Thickness: 0.11mm</li><li>Length: 9.4 Inches</li><li>Sizes: Small, Medium, Large, Extra Large</li><li>Beaded Cuff</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 5.99, 'glo14138.png', 'GLO.png', 1, 1, 1517957036, 0, 0, 1517957073);
INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `is_deleted`, `modified_date`) VALUES
(228, '', 1, '', 13, '', '', '8', 'Mckesson Powder Free Vinyl Exam Gloves X-Large 150/Box MFR14-140', 'GLO14140', ' 0120612479185696   ', '    ', '<p><strong>McKesson Stretch Vinyl Exam Gloves</strong> are an economical choice when you are in need of powder-free, non-sterile vinyl gloves. Superb quality and extremely comfortable even if worn for extended periods of tme. These vinyl exam gloves offer great strength and are made to accommodate those with latex llergies.These McKesson <a href=\"https://www.vitalitymedical.com/vinyl-gloves.html\"><strong>vinyl exam gloves</strong> </a>are perfect for many applications and uses, including home use, food preparation and handling, as well as laboratory work.</p><p><strong>Powder Free Vinyl Exam Gloves Features</strong></p><ul><li>Latex Free</li><li>Powder Free</li><li>Ambitextrous Fitting</li></ul><p><strong>Non Sterile Vinyl Exam Glove Specifications</strong></p><ul><li>Fingertip Thickness: 0.11mm</li><li>Length: 9.4 Inches</li><li>Sizes: Small, Medium, Large, Extra Large</li><li>Beaded Cuff</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 7.99, 5.99, 'glo14140.png', 'GLO.png', 1, 1, 1517957284, 0, 0, 1517957347);

-- --------------------------------------------------------

--
-- Table structure for table `store_item_assign`
--

CREATE TABLE `store_item_assign` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `webpage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_item_assign`
--

INSERT INTO `store_item_assign` (`id`, `item_id`, `webpage_id`) VALUES
(15, 103, 20),
(16, 37, 20),
(17, 97, 21),
(18, 90, 21),
(19, 128, 21),
(20, 72, 22),
(21, 75, 22),
(22, 38, 23),
(23, 4, 23),
(24, 123, 23);

-- --------------------------------------------------------

--
-- Table structure for table `store_item_colors`
--

CREATE TABLE `store_item_colors` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_color` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_item_colors`
--

INSERT INTO `store_item_colors` (`id`, `item_id`, `item_color`) VALUES
(1, 1, 'Black'),
(2, 1, 'Red');

-- --------------------------------------------------------

--
-- Table structure for table `store_item_sizes`
--

CREATE TABLE `store_item_sizes` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_size` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store_manufacturer`
--

CREATE TABLE `store_manufacturer` (
  `id` int(11) NOT NULL,
  `company` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `create_date` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_manufacturer`
--

INSERT INTO `store_manufacturer` (`id`, `company`, `contact`, `address1`, `city`, `state`, `zip`, `phone`, `email`, `create_date`, `userid`) VALUES
(5, 'NBC Corp', '', '', '', '', '', '', '', 0, 0),
(6, 'Medline', '', '', '', '', '', '', '', 0, 0),
(7, 'Drive Medical', '', '', '', '', '', '', '', 0, 0),
(8, 'McKesson', '', '', '', '', '', '', '', 0, 0),
(9, 'Omron Healthcare', '', '', '', '', '', '', '', 0, 0),
(10, 'Allied Healthcare', '', '', '', '', '', '', '', 0, 0),
(11, 'Kole', '', '', '', '', '', '', '', 0, 0),
(12, 'Perfect Life Ideas', '', '', '', '', '', '', '', 0, 0),
(13, 'Coidien', '', '', '', '', '', '', '', 0, 0),
(14, 'Covidien', '', '', '', '', '', '', '', 0, 0),
(15, 'Merits', '', '', '', '', '', '', '', 0, 0),
(16, 'Scott', '', '', '', '', '', '', '', 0, 0),
(17, 'Eclipse', '', '', '', '', '', '', '', 0, 0),
(18, 'Purell', '', '', '', '', '', '', '', 0, 0),
(19, 'Purell', '', '', '', '', '', '', '', 0, 0),
(20, 'Quintet AC', '', '', '', '', '', '', '', 0, 0),
(21, 'Procare', '', '', '', '', '', '', '', 0, 0),
(22, 'AN American Company', '', '', '', '', '', '', '', 0, 0),
(23, 'Ambu Perfit ACE Adult', '', '', '', '', '', '', '', 0, 0),
(24, 'Johnson&Johnson', '', '', '', '', '', '', '', 0, 0),
(25, 'ConvaTec Inc', '', '', '', '', '', '', '', 0, 0),
(26, '3M Health Care', '', '', '', '', '', '', '', 0, 0),
(27, 'Magnetic', '', '', '', '', '', '', '', 0, 0),
(28, 'Hudson RCI Air Life ', '', '', '', '', '', '', '', 0, 0),
(29, 'Air Life', '', '', '', '', '', '', '', 0, 0),
(30, 'Beautimate', '', '', '', '', '', '', '', 0, 0),
(31, 'Premium Quality', '', '', '', '', '', '', '', 0, 0),
(32, 'PROCTER &GAMBLE', '', '', '', '', '', '', '', 0, 0),
(33, 'Assure Platinum', '', '', '', '', '', '', '', 0, 0),
(34, 'OSSUR', '', '', '', '', '', '', '', 0, 0),
(35, 'BD', '', '', '', '', '', '', '', 0, 0),
(36, 'Respironics', '', '', '', '', '', '', '', 0, 0),
(37, 'Colgate', '', '', '', '', '', '', '', 0, 0),
(38, 'FLENTS', '', '', '', '', '', '', '', 0, 0),
(39, 'BAND AID', '', '', '', '', '', '', '', 0, 0),
(40, 'MCL Enterprises', '', '', '', '', '', '', '', 0, 0),
(41, 'Cottonelle', '', '', '', '', '', '', '', 0, 0),
(42, 'TRONEX Healthcare', '', '', '', '', '', '', '', 0, 0),
(43, 'MABIS', '', '', '', '', '', '', '', 0, 0),
(44, 'Alere', '', '', '', '', '', '', '', 0, 0),
(45, 'WelchAllyn', '', '', '', '', '', '', '', 0, 0),
(46, 'Lifeweartech', '', '', '', '', '', '', '', 0, 0),
(47, 'Fab Life', '', '', '', '', '', '', '', 0, 0),
(48, 'Metrex', '', '', '', '', '', '', '', 0, 0),
(49, 'BSN MEDICAL', '', '', '', '', '', '', '', 0, 0),
(50, 'FIRST AID', '', '', '', '', '', '', '', 0, 0),
(51, 'SPORTS', '', '', '', '', '', '', '', 0, 0),
(52, 'ALBAHEALTH', '', '', '', '', '', '', '', 0, 0),
(53, 'SIMPLYTHICK', '', '', '', '', '', '', '', 0, 0),
(54, 'LIFE TIME', '', '', '', '', '', '', '', 0, 0),
(55, 'DeVilbiss HEALTHCARE', '', '', '', '', '', '', '', 0, 0),
(56, 'Salter Labs', '', '', '', '', '', '', '', 0, 0),
(57, 'HEALTH CARE LOGISTIC', '', '', '', '', '', '', '', 0, 0),
(58, 'BRAUN', '', '', '', '', '', '', '', 0, 0),
(59, 'CARE FUSION', '', '', '', '', '', '', '', 0, 0),
(60, 'ADVOCATE', '', '', '', '', '', '', '', 0, 0),
(61, 'HYGEA', '', '', '', '', '', '', '', 0, 0),
(62, 'DYNAREX', '', '', '', '', '', '', '', 0, 0),
(63, 'KENDALL', '', '', '', '', '', '', '', 0, 0),
(64, 'GOODSENSE', '', '', '', '', '', '', '', 0, 0),
(65, 'HANDY TRENDS', '', '', '', '', '', '', '', 0, 0),
(66, 'CVS', '', '', '', '', '', '', '', 0, 0),
(67, 'GLOBAL ', '', '', '', '', '', '', '', 0, 0),
(68, 'PDI', '', '', '', '', '', '', '', 0, 0),
(69, 'TENA', '', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `security_code` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_access` int(11) NOT NULL,
  `user_priv` int(11) NOT NULL DEFAULT '0',
  `app_completed_date` int(11) NOT NULL,
  `avatar_name` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `last_login` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `username`, `email`, `password`, `security_code`, `status`, `user_access`, `user_priv`, `app_completed_date`, `avatar_name`, `admin_id`, `is_admin`, `last_login`, `modified_date`, `create_date`, `is_delete`) VALUES
(1, 'Evelio ', 'evelio@mailers.com', '$2y$11$jekUbWMbzfOQw5ihj6skfetb994DKRT6j6hbby3Qi8QbFa5.mFYHG', '1505509944RyR6mBU57HUrvAp685NZ', 1, 0, 0, 1503167117, 'annon_user.png', 1, 1, 1518006652, 1507431706, 1502490142, 0),
(10, 'JKingsley', 'joe@mailers.com', '$2y$11$yn/iXTQuR/FTIhw/8/MMIeMuDuw8l8pwrD9DZDy/jLdJqDWZSS3EK', '', 1, 0, 0, 0, '', 10, 1, 1517949384, 1507863315, 0, 0),
(11, 'SOwner-U67M', 'owner@jdmedicalsupplies.org', '$2y$11$/NzhnywTDHLngZUg3412.Ox1M6UpM89PJHSn/rPEwuYKEKe2cnE9a', '', 1, 0, 0, 0, '', 0, 0, 1517952677, 0, 1512678189, 0);

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
  `admin_id` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_main`
--

INSERT INTO `user_main` (`id`, `user_id`, `email`, `first_name`, `last_name`, `middle_name`, `phone`, `cell_phone`, `admin_id`, `create_date`, `modified_date`, `is_delete`) VALUES
(1, 1, 'evelio@mailers.com', 'Evelio', 'Velez', '', '9734788813', '9734788813', 1, 1502490142, 1507430786, 0),
(10, 10, 'joe@mailers.com', 'Joe', 'Kingsley', '', '9999999999', '9999999999', 10, 0, 1507431381, 0),
(11, 11, 'owner@jdmedicalsupplies.org', 'Site', 'Owner', '', '', '', 0, 0, 0, 0);

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
-- Indexes for table `app_form`
--
ALTER TABLE `app_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`),
  ADD KEY `word` (`word`);

--
-- Indexes for table `quickquote`
--
ALTER TABLE `quickquote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_accounts`
--
ALTER TABLE `store_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_basket`
--
ALTER TABLE `store_basket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_categories`
--
ALTER TABLE `store_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_items`
--
ALTER TABLE `store_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_assign`
--
ALTER TABLE `store_item_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_colors`
--
ALTER TABLE `store_item_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_sizes`
--
ALTER TABLE `store_item_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_manufacturer`
--
ALTER TABLE `store_manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_main`
--
ALTER TABLE `user_main`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webpages`
--
ALTER TABLE `webpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_form`
--
ALTER TABLE `app_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `quickquote`
--
ALTER TABLE `quickquote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `store_accounts`
--
ALTER TABLE `store_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `store_basket`
--
ALTER TABLE `store_basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `store_categories`
--
ALTER TABLE `store_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;
--
-- AUTO_INCREMENT for table `store_items`
--
ALTER TABLE `store_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `store_item_assign`
--
ALTER TABLE `store_item_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `store_item_colors`
--
ALTER TABLE `store_item_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `store_item_sizes`
--
ALTER TABLE `store_item_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `store_manufacturer`
--
ALTER TABLE `store_manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user_main`
--
ALTER TABLE `user_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `webpages`
--
ALTER TABLE `webpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
