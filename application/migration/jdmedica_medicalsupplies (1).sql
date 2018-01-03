-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2018 at 08:03 PM
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
(171, 1510599449, '100.1.124.118', 'SUOVxL'),
(170, 1510278854, '193.9.158.133', 'Q14GWF'),
(169, 1510178914, '180.76.15.24', 'wEhZ7j'),
(168, 1510004239, '66.249.64.77', 'ZEWBU7'),
(167, 1509975678, '51.255.65.90', 'smZZvk'),
(166, 1509948938, '217.182.132.241', 'LoCtFS'),
(165, 1509893273, '40.77.167.63', 'ROLHVX'),
(164, 1509845718, '180.76.15.157', 'PdR9i6'),
(163, 1509796408, '77.75.77.72', '14yT2O'),
(162, 1509782115, '84.201.133.62', 'GB0Nuu'),
(161, 1509689866, '180.76.15.141', 'HkrrE9'),
(160, 1509672574, '66.249.64.77', 'Xptkrh'),
(159, 1509672573, '66.249.64.73', 'EnGJDA'),
(158, 1509668913, '66.249.64.77', '1vtCqi'),
(157, 1509663892, '5.189.204.124', 'ap8ofk'),
(156, 1509644835, '77.75.76.165', 'q5fDhp'),
(155, 1509626142, '77.75.76.169', 'yx6KLj'),
(154, 1509521596, '217.182.92.172', 'hElXTB'),
(153, 1509521584, '217.182.92.172', 'wkRPlK'),
(152, 1509507274, '77.75.77.36', 'ru9I0y'),
(151, 1509485049, '77.75.78.166', 'nC9m7q'),
(150, 1509317937, '180.76.15.136', 'ATVbNi'),
(149, 1509256469, '51.255.65.82', 'oCloSh'),
(148, 1509219777, '51.255.65.27', '2QOvy0'),
(147, 1509071975, '63.119.119.162', 'q0pqdN'),
(172, 1512136764, '71.125.62.98', 'ECoJI2'),
(173, 1512141415, '40.77.167.37', 'I0KPbL'),
(174, 1512164993, '74.102.22.113', 'x4Qzkp'),
(175, 1512169469, '189.60.40.182', 'Pc9DfE'),
(176, 1512302108, '157.55.39.9', 'mDBWjk'),
(177, 1512389771, '157.55.39.9', 'e0pUoN'),
(178, 1512391336, '77.75.77.109', 'BmJWqM'),
(179, 1512409739, '77.75.79.11', 'pJYDMq'),
(180, 1512470956, '207.46.13.3', 'B5FtdG'),
(181, 1512508710, '77.75.79.11', 'NTkDrk'),
(182, 1512514552, '77.75.77.101', 'hOaxua'),
(183, 1512821943, '45.55.225.14', 'pVJW6m'),
(184, 1512821952, '45.55.225.14', 'M6PO2r'),
(185, 1512861956, '100.1.124.118', 'MmLcMV'),
(186, 1512872122, '92.114.83.22', 'iNYjzQ'),
(187, 1512962028, '173.63.137.230', '74V3OF'),
(188, 1513122208, '68.194.208.52', '9uFnIX'),
(189, 1513122212, '68.194.208.52', 'bc9hHA'),
(190, 1513159617, '100.43.85.168', 'Pt7vCN'),
(191, 1513287875, '72.164.66.124', 'bYCBuV'),
(192, 1513287914, '72.164.66.124', 'oVw7rZ'),
(193, 1513416944, '207.46.13.89', 'wVkLUi'),
(194, 1513573816, '157.55.39.244', 'pPIo4e'),
(195, 1513658457, '158.69.229.6', 'RcasQk'),
(196, 1513658457, '158.69.229.6', 'i1EuQu'),
(197, 1513769552, '68.194.208.52', 'Qi7Nmh'),
(198, 1513769576, '68.194.208.52', 'KJDjkw'),
(199, 1513769586, '68.194.208.52', '0gsKDO'),
(200, 1514129562, '89.234.68.78', 'iY7lpg'),
(201, 1514163629, '207.46.13.8', 'u3DLRq'),
(202, 1514427334, '104.131.48.31', 'M5McUL'),
(203, 1514427348, '104.131.48.31', 'YvQm3U'),
(204, 1514705991, '77.75.78.166', 'CrLhWu'),
(205, 1514801531, '77.75.77.119', 'nZ6Af5');

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
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
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
  `mod_dt` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(47, 'Speciment Containers Sterile', 1, 'Speciment-Containers-Sterile', 0);

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
(96, 37, 86),
(97, 2, 87),
(98, 34, 88),
(99, 8, 89),
(100, 38, 90),
(101, 4, 91),
(102, 38, 92),
(103, 18, 93),
(104, 18, 94),
(105, 4, 95),
(106, 12, 96),
(107, 12, 97),
(108, 2, 98),
(109, 2, 99),
(110, 3, 100),
(111, 12, 101),
(112, 35, 102),
(113, 35, 103),
(114, 6, 104),
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
(141, 10, 131),
(142, 6, 131),
(143, 35, 131),
(144, 37, 132),
(145, 38, 133),
(146, 3, 134),
(147, 35, 135),
(148, 4, 136),
(149, 13, 137),
(150, 37, 138),
(151, 34, 139),
(152, 34, 140),
(153, 12, 141),
(154, 36, 142),
(155, 12, 143),
(156, 12, 144),
(157, 14, 145),
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
(173, 45, 161),
(174, 36, 162),
(175, 46, 163),
(176, 47, 164),
(177, 4, 165),
(178, 4, 166),
(179, 12, 167),
(180, 34, 168),
(181, 17, 169);

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
  `modified_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `modified_date`) VALUES
(2, 'Medical Supply', 0, '', 2, '', '', '0', 'Medline Pad, Maternity, 11 in, with Tails, Non-Sterile', 'NON241280 ', '80196781488', ' ', '<br>\r\nMedline OB Pad with Tails, 11\" long Non-sterile 12 per bg, 24 in a case. There is no adhesive strip along the back of the pad.<br>\r\nQuantity : 288 per Case, 24 One-Dozen Bags<br>\r\nSterile :No<br>\r\nLatex-Free : Yes<br>\r\n', 0.0000, 0.0000, 0.0000, 0.0000, 74.52, 55.20, 'NON241280.jpg ', '', 1, 0, 0, 0, 0),
(3, 'Medical Supply', 0, '', 2, '', '', '0', 'VendPink dittie? Vended Tampons', '80011', ' ', ' ', 'VendPink donates 20% of the profits from vended tampons to Y-ME National Breast Cancer Organization. Regular absorbency with pearlized plastic applicator. Packaged in uniquely designed vending tubes with mood-lifting messages on every wrapper.<br>\r\n<br>\r\nQuantity : 300 per Case', 0.0000, 0.0000, 0.0000, 0.0000, 114.24, 84.62, '80011.jpg', '', 1, 0, 0, 0, 0),
(4, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco Maxithins? Vended Sanitary Napkins - 250 per Case', 'MT-4 ', '75289000447', ' ', 'Thin full protection. Folded to fit into #4 box for vending from feminine hygiene dispensers. For use with Hospeco HSC MT 1 and HSC FOCJR-25 vendors both sold separately. Also fits any vendor/feminine hygeine dispenser that vends #4 boxes.<br>\r\n<br>\r\nGrade : #4 Box Size<br>\r\nQuantity : 250 per Case', 0.0000, 0.0000, 0.0000, 0.0000, 56.50, 41.85, 'MT-4.jpg  ', '', 1, 0, 0, 0, 0),
(5, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco Tampons, Original, Regular Absorbency, 500 Tampons/Carton', ' PGC025001', '73010025004', ' ', 'Regular absorbency tampon individually wrapped and in vend-style tube. Tampax?, a name women trust.<br>\r\n<br>\r\nQuantity : 500 Tampons/Carton<br>\r\nAbsorbency : Regular', 0.0000, 0.0000, 0.0000, 0.0000, 112.14, 83.07, ' PGC025001.jpg ', '', 1, 0, 0, 0, 0),
(6, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco ComfortPlus Tampons, 100/Carton', 'HOSMT100FS', '75289068058', ' ', 'Regular absorbency tampon individually wrapped and in vend-style tube. Tampax?, a name women trust.<br>\r\n<br>\r\nQuantity : 100/Carton', 0.0000, 0.0000, 0.0000, 0.0000, 42.61, 31.56, 'HOSMT100FS.jpg ', '', 1, 0, 0, 0, 0),
(7, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco 11\" Tabbed Maxi Non-Sterile - 12 per Pack', 'HS-74', ' ', ' ', '11\" tabbed non-sterile maternity pad.<br>\r\nSize: 11\"<br>\r\nQuantity : 12 per Pack<br>\r\nQuantity : 24 Packs per Case<br>\r\nPackaging : Bag Packed', 0.0000, 0.0000, 0.0000, 0.0000, 48.98, 36.28, 'HS-74.jpg ', '', 1, 0, 0, 0, 0),
(9, 'Medical Supply', 1, '', 3, '', 'Colgate-Palmolive-Toothbrush', '37', 'Colgate Toothbrush Colgate Soft', '55511704', '3500055501        ', '        ', 'Individually Wrapped. <br>Application: Toothbrush<br>\r\nBristle Head Size: Full<br>\r\nBristle Type: Soft<br>User: Adult', 0.0000, 0.0000, 0.0000, 0.0000, 4.52, 1.00, '55511704.jpg', '', 1, 1, 0, 0, 1513121823),
(11, 'Medical Supply', 0, '', 3, '', '', '0', 'Geiss, Destin & Dunn Dental Floss Picks GoodSense Mint, 90 EA/PK', '44501700', '8.46E+11', ' ', 'Easy, convenient, disposable, one-handed flossing. Comfort grip handle.<br>\r\n<br>\r\nQuantity : 90 EA/PK<br>\r\nApplication: Dental Floss Picks<br>\r\nFlavor: Mint<br>\r\nUNSPSC Code: 53131504', 0.0000, 0.0000, 0.0000, 0.0000, 2.24, 1.66, '44501700.jpg', '', 1, 0, 0, 0, 0),
(12, 'Medical Supply', 1, '', 3, '', '', '8', 'McKesson Shower Cap Medi-Pak One Size Fits Most Clear', '10001700', '       ', '       ', 'Medi-Pak Shower Cap. Clear. One Size Fits All. Single Patient Use. Not Made With Natural Rubber Latex.<div><br>\r\nQuantity : 1 EA<br>\r\nApplication: Shower Cap<br>\r\nColor: Clear<br>\r\nSecuring Method: Elastic<br>\r\nSize: One Size Fits Most<br>\r\nUNSPSC Code: 53131601<br>\r\nUsage: Single Patient Use<br><br>\r\nLatex Free Indicator: Not Made with Natural Rubber Latex</div>', 0.0000, 0.0000, 0.0000, 0.0000, 0.09, 0.07, '10001700.jpg', '', 1, 1, 0, 0, 1512760060),
(13, 'Medical Supply', 0, '', 3, '', '', '0', 'SECURE Comfort Strips - 15 Strips', '392860', '3.64E+11', ' ', '<br>\r\nExtra Firm Hold for Lower Dentures<br>\r\nThe patented waterproof adhesive that won\'t wash away while you\'re eating and drinking<br>\r\nZinc Free!<br>\r\nImproves Quality of Life<br>\r\nThe solution for denture wearers with flat/narrow lower jaws.<br>\r\nAssures a secure, strong bond between the lower denture and gum, even in the most difficult cases.<br>\r\n.<br>\r\n<br>\r\nDisclaimer : These statements have not been evaluated by the FDA. These products are not intended to diagnose, treat, cure, or prevent any disease.<br>\r\n<br>\r\nQuantity : 15/EA', 0.0000, 0.0000, 0.0000, 0.0000, 9.19, 6.81, '392860.jpg', 'HGR0392860.JPG', 1, 1, 0, 0, 0),
(14, 'Medical Supply', 0, '', 3, '', '', '0', 'Procter & Gamble Denture Adhesive Fixodent? Extra Hold 1.6 oz. Powder\r\n', '13511700', '76660725362', ' ', 'Quantity : 1 Each<br>\r\nVolume : 1.6 oz.<br>\r\nApplication : Denture Adhesive<br>\r\nUNSPSC Code : 53131510', 0.0000, 0.0000, 0.0000, 0.0000, 6.90, 5.11, '13511700.jpg', '', 1, 0, 0, 0, 0),
(15, 'Medical Supply', 0, '', 4, '', '', '0', 'McKesson StayDry? Disposable Washcloths w/Aloe, 100-Sheet Soft-Packs, 6PK/CS', '15653100', '1.06E+13', ' ', '12\" x 8\" (30.5 cm x 20.3 cm)<br>\r\nPre-Moistened<br>\r\nHypoallergenic<br>\r\nDermatologist Tested<br>\r\nNatural Aloe and Vitamin E<br>\r\nSoft and Strong<br>\r\nConvenient Dispensing Lid<br>\r\nAlcohol-Free<br>\r\nNot made with natural rubber latex.<br>\r\nPackaged : 100 Sheets per Pack, 6 Packs Per Case<br>\r\n<br>\r\nQuantity : 6 Packs per Case<br>\r\nWipes : 100 per Pack<br>\r\nSize : 12\" x 8\"<br>\r\nSterile : No<br>\r\nHCPCS : A4335', 0.0000, 0.0000, 0.0000, 0.0000, 25.03, 18.54, '15653100.jpg', '', 1, 0, 0, 0, 0),
(16, 'Medical Supply', 0, '', 4, '', '', '0', 'Kimberly Clark Professional Fresh Care Flushable Cleansing Cloths, White, 3.75 x 5.5, 42/Pack', 'KCC36734', '36000724424', ' ', 'Fresh Care cleansing cloths leave you feeling cleaner and fresher than toilet paper alone. Cloths give you a shower-fresh feeling that leaves you confidently clean.<br>\r\n<br>\r\nFlushable wipes break up quickly and are sewer and septic safe. These soft wipes are gentle on skin, with just the right amount of moisture to provide the ultimate clean. Alcohol free.<br>\r\n<br>\r\nQuantity : 42 Wipes per Pack<br>\r\nSize : 5.5\" x 3.75\"<br>\r\nPlys : 1<br>\r\nColor : White<br>\r\nApplication : Personal Wipe<br>\r\nApplicable Material : Skin', 0.0000, 0.0000, 0.0000, 0.0000, 4.68, 3.47, 'KCC36734.jpg ', '', 1, 0, 0, 0, 0),
(17, 'Medical Supply', 0, '', 4, '', '', '0', 'Professional Disposables Hygea? Sanitizing Skin Wipe', '31851201', ' ', ' ', 'Use wherever antiseptic cleansing/refreshing is needed<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nSize : 5\" x 7\"<br>\r\nScent : Scented<br>\r\nActive Ingredients : Benzalkonium Chloride<br>\r\nApplication : Sanitizing Skin Wipe<br>\r\nUNSPSC Code : 53131624', 0.0000, 0.0000, 0.0000, 0.0000, 0.07, 0.05, '31851201.jpg', '', 1, 0, 0, 0, 0),
(18, 'Medical Supply', 0, '', 4, '', '', '0', 'Kimberly Clark Professional Fresh Care Flushable Cleansing Cloths, White, 5 x 7 1/4, 168/Pack', 'KCC10358EA', '36000103588', ' ', 'Fresh Care cleansing cloths leave you feeling cleaner and fresher than toilet paper alone. Cloths give you a shower-fresh feeling that leaves you confidently clean. Flushable wipes break up quickly and are sewer and septic safe. These soft wipes are gentle on skin, with just the right amount of moisture to provide the ultimate clean. Alcohol free.<br>\r\n<br>\r\nTowel/Wipe Type : Hand/Body Wet Wipe<br>\r\nApplication : Personal Wipe<br>\r\nApplicable Material : Skin<br>\r\nMaterial : Paper<br>\r\nNumber of Plies : 1<br>\r\nColor : White<br>\r\nLength : 7 1/4\"<br>\r\nWidth : 5\"<br>\r\nPackaging : Pack<br>\r\nNumber of Towels/Wipes Per Container : 168', 0.0000, 0.0000, 0.0000, 0.0000, 11.35, 8.41, 'KCC10358EA.jpg', '', 1, 0, 0, 0, 0),
(19, 'Medical Supply', 0, '', 5, '', '', '0', 'Medline Remedy Olivamine Calazime Skin Protectant Paste - 4 oz', 'MSC094544H', '80196306155', ' ', 'Remedy Olivamine Calazime Skin Protectant Paste has a higher viscosity (thickness) than other skin pastes<br>\r\nNourishes skin, helps treat and prevent diaper rash, wet and cracked skin<br>\r\nCalazime dries light exudates from compromised skin<br>\r\nMenthol cools irritated skin and calms inflamed tissue<br>\r\nSemi-breathable, long-lasting barrier protects torn or exposed skin against harmful stimuli<br>\r\nNourishes skin with amino acids, antioxidants and pain control ingredients<br>\r\nNon-allergenic<br>\r\nNon-sensitizing<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nLatex-Free : Yes<br>\r\nSize : 4 oz<br>\r\nTop Selling Item!', 0.0000, 0.0000, 0.0000, 0.0000, 12.43, 9.21, 'msc094544h.jpg', '41V01mm70ZL.jpg', 1, 1, 0, 0, 0),
(20, 'Medical Supply', 0, '', 5, '', '', '0', 'McKesson No-Rinse Shampoo and Body Wash 8 oz. Squeeze Bottle Light Floral Scent', '27391800', '1.06E+13', ' ', 'McKesson Shampoo &amp; Body Wash No Rinse. 8 oz (237 mL). Formulated to thoroughly clean hear and skin without water. Ideal for use with residents who may be confined to a bed. Absence of artificial dyes helps reduce the risk of irritation and makes it perfect for fragile skin and everyday use. Light floral fragrance creates a relaxing experience. Not Made With Natural Rubber Latex.<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nApplication: No-Rinse Shampoo and Body Wash<br>\r\nContainer Type: Squeeze Bottle<br>\r\nHCPCS: A9270<br>\r\nScent: Light Floral Scent<br>\r\nSize: 8 oz.<br>\r\nUNSPSC Code: 53131628<br>\r\nLatex Free Indicator: Not Made with Natural Rubber Latex', 0.0000, 0.0000, 0.0000, 0.0000, 1.81, 1.34, '27391800.jpg', '', 1, 0, 0, 0, 0),
(21, 'Medical Supply', 0, '', 5, 'McKesson Perineal & Skin Cleanser', 'McKesson-Perineal-Skin-Cleanser', '0', 'McKesson Perineal & Skin Cleanser - 1 Gallon', '83101800', '1.06E+13', '', 'Gentle fresh scent.<br><br>\r\nA single-step, no-rinse formula designed to clean, moisturize and deodorize the skin.<br><br>\r\nThe formula is pH balanced to be gentle and non-irritating on all body areas.<br><br>\r\nThe no-rinse perineal wash aids in emulsifying feces and cleansing urine while added Aloe Vera and Vitamins A, C, & E moisturizers help prevent dryness.<br><br>\r\nIntended for use in helping reduce perineal dermatitis.<br><br>\r\nNot made with natural rubber latex.<br><br>\r\n<br><br>\r\nQuantity : 1 Each<br><br>\r\nSize : 1 Gallon<br><br>\r\nScent : Fresh<br><br>\r\nPH Balance : 6.0 - 7.0', 0.0000, 0.0000, 0.0000, 0.0000, 16.01, 11.86, '83101800.jpg', '', 1, 0, 0, 0, 0),
(22, 'Medical Supply', 1, '', 5, '', '', '25', 'ConvaTec Aloe Vesta? Perineal Wash Spray, 8 oz., Citrus Scent\r\n', '18691801', '1.08E+13     ', '              ', '<span xss=removed>The Aloe Vesta? perineal/skin cleanser is designed for incontinence cleansing. It contains a strong surfactant system to clean and emollients to moisturize.</span><br><br>Dispensed as a liquid spray. It is more convenient than soap and water cleansing from a basin.<br>Please note: This product does not contain latex.<br>Please see package insert for complete instructions for use.<br><br><ul><li>Size : 8 oz</li><li>Scent : Citrus</li><li>Type : Spray</li><li>Application : Perineal Wash</li><li>Container Type : Pump Bottle</li><li>HCPCS : A6250 (Disclaimer)</li><li>UNSPSC Code : 53131613</li></ul>\r\n\r\n\r\n', 0.0000, 0.0000, 0.0000, 0.0000, 9.75, 7.85, '18691801.jpg', 'ConvaTec Aloe Vesta.jpg', 1, 1, 0, 1, 1513235613),
(23, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline 4-Panel Abdominal Binder 12\"- Large/XL', 'ORT21300LXL', '1.01E+13', ' ', '12\" abdominal binder is made with elastic and a soft material to provide comfort and flexibility. Measurement based upon circumference at the hips.<br>\r\n<br>\r\nFour-panel design helps reduce rolling. Not made with natural rubber latex.<br>\r\n<br>\r\nSize : Large/XL<br>\r\nGender : Unisex<br>\r\nLatex-Free : Yes<br>\r\nLength : 46\" - 62\"', 0.0000, 0.0000, 0.0000, 0.0000, 16.12, 11.94, 'ORT21300LXL.jpg', '', 1, 0, 0, 0, 0),
(24, 'Medical Supply', 1, '', 6, '', '', '8', 'Mc Kesson 9\" Abdominal Binders-Universal', 'PC0001BOM', '7989071004  ', '    ', 'Abdominal Unisize Binder, 9\", Fits Sizes 46-62. Elastic. Hook and Loop closure for contoured fit.<br><br><br>\r\nSize : 46\"-62\"', 0.0000, 0.0000, 0.0000, 0.0000, 20.74, 10.31, 'MDS169024.jpg ', '', 1, 1, 0, 0, 1512746260),
(25, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Standard 9\" Abdominal Binders-Universal', 'MDS169022', '1.01E+13', ' ', 'Abdominal Unisize Binder, 9\", Fits Sizes 30-45 Elastic. Hook and Loop closure for contoured fit.<br>\r\n<br>\r\nSize : 30\"-45\"', 0.0000, 0.0000, 0.0000, 0.0000, 17.90, 13.26, 'MDS169022.jpg', '', 1, 0, 0, 0, 0),
(26, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Universal Abdominal Binders-Universal', 'ORT21100', '3.01E+13', ' ', '9\" Abdominal Binders: Made with latex-free elastic for optimal support, contact closure for easy adjustment, premium styles are lined and have a tri-panel design to reduce rolling. 27\" - 48\", Universal.<br>\r\n<br>\r\nSize : 27\"-48\"<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 19.25, 14.26, 'ORT21100.jpg', '', 1, 0, 0, 0, 0),
(27, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Universal Abdominal Binders-Universal', 'ORT21200', '1.01E+13', ' ', '10\" Abdominal Binders: Made with latex-free elastic, contact closure for easy adjustment, premium style is made with a higher quality elastic for longer wear. 27\" - 48\", Universal.<br>\r\n<br>\r\nSize : 27\"-48\"<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 15.00, 11.11, 'ORT21200.jpg', '', 1, 0, 0, 0, 0),
(28, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Universal Abdominal Binders-Universal', 'ORT21300', '3.01E+13', ' ', '12\" Abdominal Binders: Made with latex-free elastic for optimal support, contact closure for easy adjustment, premium styles are lined and have a 4-panel design to reduce rolling. 27\" - 48\", Universal.<br>\r\n<br>\r\nSize : 27\"-48\"<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 17.33, 12.84, 'ORT21300.jpg', '', 1, 0, 0, 0, 0),
(29, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical Abdominal Binder One Size Fits Most Hook and Loop Closure 30 to 45 Inch 12 Inch Unisex', '88803000', '88803000', ' ', 'The new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels, which may result in skin tears, burns or even scarring<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nHCPCS : A4466<br>\r\nGender : Unisex<br>\r\nWidth : 12 Inch<br>\r\nColor : White<br>\r\nSize : One Size Fits Most<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 30 to 45 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 27.70, 20.52, '88803000.jpg', '88803000.jpg', 1, 0, 0, 0, 0),
(30, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical Abdominal Binder Universal Hook & Loop Closure 30-45\" 9\" Unisex', '44103000', ' ', ' ', '3 panel design<br>\r\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels<br>\r\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen<br>\r\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place<br>\r\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over<br>\r\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nHCPCS : A4466<br>\r\nGender : Unisex<br>\r\nWidth : 9 Inch<br>\r\nColor : White<br>\r\nSize : Universal<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 30 to 45 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 24.14, 17.88, '44103000.jpg', '', 1, 0, 0, 0, 0),
(31, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical Abdominal Binder, Universal Hook & Loop Closure, 46-62\" x 12\", Unisex', '81103000', ' ', ' ', '4 panel design<br>\r\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels<br>\r\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen<br>\r\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place<br>\r\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over<br>\r\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nHCPCS : A4462<br>\r\nGender : Unisex<br>\r\nWidth : 12 Inch<br>\r\nColor : White<br>\r\nSize : Universal<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 46 to 62 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 33.21, 24.60, '81103000.jpg', '', 1, 0, 0, 0, 0),
(32, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical 15\" Abdominal Binder with Easy Grip?', '92003000', ' ', ' ', '5 panel design<br>\r\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels<br>\r\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen<br>\r\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place<br>\r\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over<br>\r\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia<br>\r\n<br>\r\nWaist Measurement : 82 to 94 Inch<br>\r\nWidth : 15 Inch<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nColor : White<br>\r\nHCPCS : A4466<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 74.88, 55.47, '92003000.jpg', '92003000.jpg', 1, 0, 0, 0, 0),
(33, 'Medical Supply', 1, '', 6, '', '', '21', 'Procare Abdominal Binder 3X-Large 9\" Panel Binder (82-100\") Inch Unisex', 'PC0002BOM', '80579892500P  ', '    ', 'Designed for inconspicuous wear under clothing. Recommended for use with abdominal strains as well as post surgery applications<br><br>Gender : Unisex<br><br>\r\nSize :  3X-Large<br><br>\r\nApplication : Abdominal Binder<br><br>\r\nWaist Measurement : 82 to 100 Inch<br><br>\r\nMaterial : Elastic<br><br><br>\r\nUNSPSC Code : 79-89250<br>', 0.0000, 0.0000, 0.0000, 0.0000, 29.05, 19.38, '16903000.jpg', '', 1, 1, 0, 0, 1512746900),
(34, 'Medical Supply', 0, '', 7, '', '', '0', 'Medline Padded Drop-Arm Commode', 'G98204', '4.01E+13', ' ', 'Arms swing out of the way for easier lateral transfers on and off the commode.<br>\r\nTransfers are easier for patients using a wheelchair.<br>\r\nPlace near the bed with near arm down for patients transferring during the night.<br>\r\nComes standard with pail, lids and splash guard.<br>\r\n350-lb. (159 kg) Weight capacity; Seat height range, 20\"-25\" (51 cm-64 cm); Seat depth, 18\"-20\" (46 cm-51 cm); Width between arms, 18.5\" (47 cm); Overall width, 22\" (56 cm).<br>\r\n<br>\r\nOverall Width : 22\"<br>\r\nWeight Capacity : 350 lbs.<br>\r\nSeat Height : 20\"-25\"<br>\r\nSeat Depth : 18\"-20\"<br>\r\nCasters : No<br>\r\nDrop Arm : Yes<br>\r\nLatex-Free : No<br>\r\nHCPCS : E0165', 0.0000, 0.0000, 0.0000, 0.0000, 114.20, 84.59, 'G98204.jpg', '', 1, 0, 0, 0, 0),
(35, 'Medical Supply', 0, '', 7, '', '', '0', 'Medline Guardian Steel Elongated Bedside Commode', 'MDS89664ELH', '80196356921', ' ', 'Folding frame design assembles in seconds without tools.<br>\r\nCommode folds down to reduce storage space by 35% and makes delivery easier.<br>\r\nAll models include pail, lid and splash guard.<br>\r\nClip-on seats can be removed for easy cleaning.<br>\r\nFeatures deeper seat depth to allow more room for cleaning.<br>\r\n<br>\r\nWeight Capacity : 400 lbs.<br>\r\nSeat Depth : 16.5\"<br>\r\nSeat Height : 17\"-23\"<br>\r\nWidth Between Arms : 19\"<br>\r\nOverall Width : 22\"<br>\r\nCasters : No<br>\r\nDrop Arm : No<br>\r\nLatex-Free : No<br>\r\nHCPCS : E0163', 0.0000, 0.0000, 0.0000, 0.0000, 66.45, 49.22, 'MDS89664ELH.jpg', '', 1, 0, 0, 0, 0),
(36, 'Medical Supply', 0, '', 0, '', '', '0', 'Medline Bedside Commode with Microban', 'MDS89664ELMB', '8.88E+11', ' ', 'Microban? antimicrobial product protection inhibits the growth of stains and odors from bacteria, mold and mildew.<br>\r\nThis product does not protect users or others against bacteria, viruses, germs or other disease organisms.<br>\r\nHeight adjustable seat and arm rests provide a customizable fit.<br>\r\nFlat-seat lid cover discretely conceals commode when not in use.<br>\r\nCan be used over toilet to raise seat, enhancing stability; Splash guard included for over-the-toilet use.<br>\r\nDark bronze finish and style suits most decors.<br>\r\n400 lb. weight capacity<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nDistance Between Arms : 19.6\"<br>\r\nSeat Size : 19.2\"W x 17.4\"D<br>\r\nWidth : 27.2\"<br>\r\nFloor To Seat Height : 19\" - 22.5\"<br>\r\nCapacity : 400 lbs', 0.0000, 0.0000, 0.0000, 0.0000, 182.25, 135.00, 'MDS89664ELMB.jpg', '', 1, 0, 0, 0, 0),
(37, 'Medical Supply', 0, '', 7, '', '', '0', 'Invacare IClass All-In-One Commode (Single Pack) - 30\" H x 21\" W x 18\" D', '9630-1', '91536297729', ' ', 'Invacare Commodes offer consumers the comfort and stability they need. The frame is lightweight and consumers gain additional comfort and support from the 16\" wide seat. The Invacare All-in-One Commode can be used bedside or can act as a toilet safety frame or raised toilet seat.<br>\r\n<br>\r\nCan be used bedside or with backrest removed, can act as a toilet safety frame or raised toilet seat<br>\r\nLarge 16\" wide snap-on seat with lid for added comfort and support<br>\r\nComes complete with commode bucket, bucket cover and splash shield<br>\r\nWing nuts allow for removal of backrest when needed<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nSize : 30\" H x 21\" W x 18\" D<br>\r\nWeight Capacity : 350 lbs.', 0.0000, 0.0000, 0.0000, 0.0000, 50.56, 37.45, '9630-1.jpg', '', 1, 0, 0, 0, 0),
(38, 'Medical Supply', 0, '', 7, '', '', '0', 'Medline Pontoon Bedpans', 'DYND80217H', '1.01E+13', ' ', 'Saddle-shaped with a high-rolled front. Graduated in both mL and ounces. Non-stick surface. Also available in pigment-free to support \"greener manufacturing\"<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nColor : Graphite<br>\r\nSize : 1200mL<br>\r\nLatex-Free : Yes<br>\r\nMaterial : Plastic', 0.0000, 0.0000, 0.0000, 0.0000, 3.06, 2.27, 'DYND80217H.jpg', '', 1, 0, 0, 0, 0),
(39, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Serpentine Style Firm Cervical Collar - Small, 3\" x 15\"', 'ORT13200S', '1.01E+13', ' ', 'Helps allows the chin to rest on the collar.<br>\r\nSynthetic stockinette cover with hook and loop closure.<br>\r\nIncludes 6\" extension piece to accommodate larger sizes.<br>\r\nIncludes an extra synthetic cover that can be washed.<br>\r\nFirm Foam<br>\r\n<br>\r\nSize : Small, 3\" x 15\"<br>\r\nDensity: Firm<br>\r\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 4.83, 3.58, 'ORT13200S.jpg', '', 1, 0, 0, 0, 0),
(40, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Serpentine Style Firm Cervical Collar - Medium, 3\" x 17\"', 'ORT13200M', '1.01E+13', ' ', 'Helps allows the chin to rest on the collar.<br>\r\nSynthetic stockinette cover with hook and loop closure.<br>\r\nIncludes 6\" extension piece to accommodate larger sizes.<br>\r\nIncludes an extra synthetic cover that can be washed.<br>\r\nFirm Foam<br>\r\n<br>\r\nSize : Medium, 3\" x 17\"<br>\r\nDensity: Firm<br>\r\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 4.47, 3.31, 'ORT13200M.jpg', '', 1, 0, 0, 0, 0),
(41, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Serpentine Style Firm Cervical Collar - Large', 'ORT13200L', '1.01E+13', ' ', 'Helps allows the chin to rest on the collar.<br>\r\nSynthetic stockinette cover with hook and loop closure.<br>\r\nIncludes an extra synthetic cover that can be washed.<br>\r\nFirm Foam<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nSize : Large, 4\" x 22\"<br>\r\nDensity: Firm<br>\r\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 5.13, 3.80, 'ORT13200L.jpg', '', 1, 0, 0, 0, 0),
(42, 'Medical Supply', 0, '', 8, '', '', '0', 'Laerdal Medical Cervical Collar Stifneck? Select? Adult', '98013000', '98013000', ' ', 'Locks ensure selected sizes stay in place<br>\r\nAdjustment tracks ensure symmetrical alignment of size<br>\r\nEasy access for pulse checks, advanced airway procedures, and visualization through oversized trachea hole<br>\r\nDirections molded into collar<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nX-Ray Compatibility : X-Ray Compatible<br>\r\nSize : Adult<br>\r\nApplication : Cervical Collar<br>\r\nColor Code : White<br>\r\nMaterial : Plastic<br>\r\nUNSPSC Code : 42171607', 0.0000, 0.0000, 0.0000, 0.0000, 11.70, 8.67, '98013000.jpg', '', 1, 0, 0, 0, 0),
(43, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Philadelphia Patriot One-Piece Cervical Collars-Universal', 'ORT12000A', ' ', ' ', 'Item # MED ORT12000A by Medline (Mfg. Part # , UPC # )<br>\r\n<br>\r\nPhilly Patriot Cervical Collars: Made Of High Density Polyethylene Plastic With A Foam Lining For Comfort And Rigidity, Stacks Flat To Preserve Space, Adjusts To Different Heights With Locking Tabs, X-Ray Ct And Mri Lucent Adult Size, 11\" - 23\" Circumference.<br>\r\n<br>\r\nQuantity : Each<br>\r\nSize : 11\"-23\"', 0.0000, 0.0000, 0.0000, 0.0000, 14.09, 10.44, 'ORT12000A.jpg', '', 1, 0, 0, 0, 0),
(44, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Philadelphia Patriot One-Piece Cervical Collars-Universal', 'ORT12000C', ' ', ' ', 'Philly Patriot Cervical Collars: Made Of High Density Polyethylene Plastic With A Foam Lining For Comfort And Rigidity, Stacks Flat To Preserve Space, Adjusts To Different Heights With Locking Tabs, X-Ray Ct And Mri Lucent Child Size, 8\" - 18\" Circumference.<br>\r\n<br>\r\nQuantity : Each<br>\r\nSize : 8\"-18\"', 0.0000, 0.0000, 0.0000, 0.0000, 12.35, 9.15, 'ORT12000C.jpg', '', 1, 0, 0, 0, 0),
(45, 'Medical Supply', 1, '', 8, '', '', '23', ' Perfit ACE Rigid Cervical Collar Adult Adjustable ', 'PC10004BOM', '0105707480024636    ', '      ', '<h4> Rigid Cervical Collar Perfit Ace Plastic Adult Adjustable One Piece 3 To 6 Inch Height</h4><ul><li>Designed with 16 different settings and can adjust from neckless to tall adult neck sizes</li><li>Stores completely flat</li><li>Incorporates the Perfect numbering and color sizing system</li><li>Horizontal sizing line</li><li>Flip chin piece for easy airway access</li><li>Nasal cannula holders located on collar body</li><li>ItemManufacturer: Ambu</li><li>ItemBrand: Perfit ACE</li><li>Application: Rigid Cervical Collar</li><li>Material: Polyethylene / Foam Padding</li><li>Type: Plastic</li><li>Size: Adult Adjustable</li><li>Style: One Piece</li><li>Color: White Plastic / Light Gray Padding</li><li>Fastening Type: Hook and Loop Closure</li><li>Height: 3 to 6 Inch Height</li><li>Color Code: Multi Color</li><li>X-Ray Compatibility: X-Ray, CT, MRI Lucent</li></ul><ul><li>Quantity : 1 Each</li><li>\r\nSize : Large</li></ul><br><br>', 0.0000, 0.0000, 0.0000, 0.0000, 19.14, 13.45, 'PC10004BOM.jpg', 'shopping.jpg', 1, 1, 0, 0, 1512751641),
(46, 'Medical Supply', 0, '', 8, '', '', '0', 'Scott Specialties Cervical Collar Sport-Aid? Medium Density Universal 2-1/2 Inch Height 12 to 22 Inch Circumference', '45183000', '76318912667', ' ', 'Extra stockinette sleeve included<br>\r\n2-1/2 inch wide at chin cut-out<br>\r\nHook and Loop Closure<br>\r\n1inch thick medium-firm foam, fits 12 to 22 inch neck<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nColor : Natural Color<br>\r\nType : Medium Density<br>\r\nSize : Universal<br>\r\nApplication : Cervical Collar<br>\r\nHeight : 2-1/2 Inch Height<br>\r\nMaterial : Foam<br>\r\nNeck Circumference : 12 to 22 Inch Circumference<br>\r\nUNSPSC Code : 42241803', 0.0000, 0.0000, 0.0000, 0.0000, 9.61, 7.12, '45183000.jpg', '', 1, 0, 0, 0, 0),
(47, 'Medical Supply', 1, '', 9, '', '', '25', 'EKO CORE Digital Stethoscope Bundle, Stethoscope + Digital Device', 'CORE-BUNDLE', '8.64E+11  ', '   ', 'The Eko Digital Stethoscope provides everything you need to experience the next big thing in modern diagnostic care. An attached analog stethoscope provides added convenience with an included mobile app to record, replay, and amplify heart and lung sounds.<br><br><br>\r\n<br><br><br>\r\nEko Core digital device with attached single-head analog stethoscope<br><br><br>\r\nProvides seamless analog and digital sound<br><br><br>\r\nWirelessly transmits the stethoscope audio via Bluetooth LE? to a smartphone or tablet<br><br><br>\r\nAnalog and digital modes<br><br><br>\r\nAudio amplification in digital mode<br><br><br>\r\n7 amplification levels<br><br><br>\r\nRechargable battery<br><br><br>\r\nMobile App compatible with smartphones and tablets with iOS 7 or Android 5.0 and up<br><br><br>\r\nWeb app compatible with current versions of Chrome, Safari, Firefox and Edge<br><br><br>\r\nIncludes mobile app<br><br><br>\r\n<br><br><br>\r\nUnless you are a licensed care provider or a similar qualified entity a prescription is required to purchase this item.<br><br><br>\r\nPrescriptions may be sent via:<br><br><br>\r\nFax to: 650-443-5201<br><br><br>\r\nEmail to RX@bettymills.com<br><br><br>\r\nMail to: 161 West 25th Avenue, Suite 203, San Mateo, CA 94403<br><br><br>\r\nYou are entitled to a free consultation following the purchase of this item.<br><br><br>\r\nQuantity : 1 Each<br><br><br>\r\nMaterial : High-Impact ABS Plastic<br><br><br>\r\nConnection : Bluetooth 4.0<br><br><br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 0.00, 299.99, 'CORE-BUNDLE.jpg ', '', 0, 0, 0, 0, 1513633582),
(48, 'Medical Supply', 0, '', 10, '', '', '0', 'Simply Thick Food Thickener Gel - Bottle, 64 oz. with Recyclable Pump', '50002601', '8.21E+11', ' ', 'SimplyThick? is the next-generation food and beverage thickener designed specifically for people who have difficulties swallowing.<br>\r\n<br>\r\nSimplyThick? gel thickener consists of four common food ingredients: water, xanthan gum, sodium acid sulphate and potassium sorbate (preservative) <br>\r\n<br>\r\nFreshness Guarantee: Betty Mills guarantees the expiration date on our products will always meet or exceed your satisfaction or we will replace it at no cost.<br>\r\n<br>\r\nQuantity : 1 Bottle<br>\r\nSize : 64 oz.<br>\r\nFlavor : Gel (Nectar - Honey Consistency)<br>\r\nManuf P/N: Simply Thick 05005<br>\r\nContainer Type : Pump/Pour Bottle<br>\r\nApplication : Food Thickener<br>\r\nIncludes : 1 Recyclable Pump<br>\r\nUNSPSC Code : 42231806', 0.0000, 0.0000, 0.0000, 0.0000, 47.99, 38.99, '50002601.jpg', '', 1, 0, 0, 0, 0),
(49, 'Medical Supply', 0, '', 11, '', '', '0', 'Medline Biohazard Patient Room Sharps Container - 5 Quarts', 'MDS705153H', '8.88E+11', '  ', 'The torturous lid design facilitates one-handed disposal.<br>\r\nHorizontal drop design for maximum capacity to fill line.<br>\r\nEach container locks for final disposal.<br>\r\nNestable containers save space and help reduce shipping costs.<br>\r\nEasy-to-see fill levels.<br><br>\r\nQuantity : 1 Each<br>\r\nVolume : 5 Quart<br>\r\nColor : Red<br>\r\nLatex Free : Yes<br>\r\nLid Compatibility : Yes<br>\r\nNested : Yes<br>\r\nContainer Type : Sharps/Biohazard Container<br>\r\nCounter Balanced Lid : No<br>\r\nLid Compatibility : Yes<br>\r\nTortuous Lid : Yes<br>\r\nFor Use With : MED MDS707953<br>\r\nUNSPSC : 42142531', 0.0000, 0.0000, 0.0000, 0.0000, 5.59, 4.14, 'MDS705153H.jpg ', '', 1, 0, 0, 0, 0),
(50, 'Medical Supply', 0, '', 11, '', '', '0', 'Medline Biohazard Patient Room Sharps Containers - 5 Quarts', 'MDS705153', '8.88E+11', ' ', 'The torturous lid design facilitates one-handed disposal.<br>\r\nHorizontal drop design for maximum capacity to fill line.<br>\r\nEach container locks for final disposal.<br>\r\nNestable containers save space and help reduce shipping costs.<br>\r\nEasy-to-see fill levels.<br>\r\n<br>\r\nQuantity : 20 per Case<br>\r\nVolume : 5 Quart<br>\r\nColor : Red<br>\r\nLatex Free : Yes<br>\r\nLid Compatibility : Yes<br>\r\nNested : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 120.57, 89.31, 'MDS705153.jpg ', '', 1, 0, 0, 0, 0),
(51, 'Medical Supply', 0, '', 12, '', '', '0', 'McKesson Clinging Roll Gauze Sterile Latex-Free 4in x 4.5 Yds', '66722000', '8.10E+11', ' ', 'Clinging Gauze Rolls. Sterile. 4 inch x 4.5 yds. 100% cotton, 2-ply woven bandage. Ideal as a secondary dressing for wrapping legs and arms and to hold dressings in place. Provides light stretch which enables it to conform to difficult body contours while also providing light compression. Easy to apply. Single Use. Compare to Kling?, Kerlix Lite?, and Bulkee Lite?. Latex-Free. Packaged: 12 Rolls Per Pack. Kling is a registered trademark of Johnson &amp; Johnson Medical Inc. Kerlix Lite is a registered trademark of Kendall Healthcare. Bulkee Lite is a registered trademark of Medline Industries, Inc.<br>\r\n<br>\r\nQuantity : 12 EA per PK<br>\r\nApplication : Conforming Dressing<br>\r\nDimensions : 4 Inch X 4.5 Yard<br>\r\nSterile : Yes<br>\r\nLatex-Free Indicator : Latex-Free<br>\r\nMaterial : Cotton<br>\r\nColor : White<br>\r\nShape : Roll', 0.0000, 0.0000, 0.0000, 0.0000, 8.01, 5.93, '66722000.jpg', '', 1, 0, 0, 0, 0),
(52, 'Medical Supply', 0, '', 12, '', '', '0', 'McKesson Clinging Roll Gauze Sterile Latex-Free 4in x 4.5 Yds', '66722000-CS', ' ', ' ', 'Clinging Gauze Rolls. Sterile. 4 inch x 4.5 yds. 100% cotton, 2-ply woven bandage. Ideal as a secondary dressing for wrapping legs and arms and to hold dressings in place. Provides light stretch which enables it to conform to difficult body contours while also providing light compression. Easy to apply. Single Use. Compare to Kling?, Kerlix Lite?, and Bulkee Lite?. Latex-Free. Packaged: 12 Rolls Per Sleeve, 8 Sleeves Per Case. Kling is a registered trademark of Johnson &amp; Johnson Medical Inc. Kerlix Lite is a registered trademark of Kendall Healthcare. Bulkee Lite is a registered trademark of Medline Industries, Inc.<br>\r\n<br>\r\nQuantity : 12 EA per Pack 8 Packs per Case<br>\r\nApplication : Conforming Dressing<br>\r\nDimensions : 4 Inch X 4.5 Yard<br>\r\nSterile : Yes<br>\r\nLatex-Free Indicator : Latex-Free<br>\r\nMaterial : Cotton<br>\r\nColor : White<br>\r\nShape : Roll', 0.0000, 0.0000, 0.0000, 0.0000, 65.60, 48.59, '66722000-CS.jpg ', '', 1, 0, 0, 0, 0),
(53, 'Medical Supply', 0, '', 13, '', '', '0', 'McKesson Trilon? Powder-Free Exam Vinyl Gloves - Large', '52961300', ' ', ' ', 'Trilon? Vinyl Powder-Free Exam Gloves - Large<br>\r\nOffers a soft and silky feel with a translucent look.<br>\r\nSmooth finish for excellent tactile sensitivity.<br>\r\nPowder-Free<br>\r\nBeaded Cuff<br>\r\nNon-Sterile<br>\r\nAmbidextrous<br>\r\nSingle use only<br>\r\nNot made with natural rubber latex.<br>\r\n<br>\r\nQuantity : 100 per Box<br>\r\nSize : Large<br>\r\nMaterial : Vinyl<br>\r\nColor : Clear<br>\r\nCuff Style : Beaded Cuff<br>\r\nFingertip Thickness : 0.10 mm (4 mil)<br>\r\nGlove Exterior : Smooth<br>\r\nHand Compatibility : Ambidextrous<br>\r\nLength in Inches : 9.6 Inch<br>\r\nPowder Content : Powder Free<br>\r\nSterility : NonSterile', 0.0000, 0.0000, 0.0000, 0.0000, 4.82, 3.57, '52961300.jpg', '', 1, 0, 0, 0, 0),
(54, 'Medical Supply', 0, '', 14, '', '', '0', 'Medical Action Industries Enema Bucket Set w/Castile Soap Gentle-L-Care? 1500 ml', '25602700', ' ', ' ', 'Quantity : 1EA<br>\r\nVolume : 1500 mL<br>\r\nApplication : Enema Bucket Set w/Castile Soap<br>\r\nUNSPSC Code : 42141901', 0.0000, 0.0000, 0.0000, 0.0000, 3.97, 2.94, '25602700.jpg', '', 1, 0, 0, 0, 0),
(55, 'Medical Supply', 0, '', 14, '', '', '0', 'Medline Enema Bag Set - 1500 cc', 'DYND70102H', '1.01E+13', ' ', 'Medline Enema Bag, with Slide Clamp, Polybag<br>\r\n<br>\r\nMedline Disposable Enema Bag Set: Designed with a spill proof valve on the 1500 cc enema bag and easy-use funnel top. 54\" soft vinyl tube has a pre-lubricated, smooth, non-traumatic tip with rounded eyes for safety and easy insertion. Set also contains a moisture-proof, castile soap packet and a plastic shut- off clamp. Economy Enema Bag, Same as Above, Individually Bagged.<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nDisposable : Yes<br>\r\nLatex-Free : Yes<br>\r\nSize : 1500cc', 0.0000, 0.0000, 0.0000, 0.0000, 2.48, 1.84, 'DYND70102H.jpg ', '', 1, 0, 0, 0, 0),
(56, 'Medical Supply', 0, '', 14, 'Amsino International Enema Bag', 'Amsino-International-Enema-Bag', '0', 'Amsino International Enema Bag - 1500 mL', '33332700', '        ', ' ', 'Slide Clamp, Soap Packet, Waterproof Drape<br><br>\r\nQuantity : 1 Each<br><br>Volume : 1,500 mL Bag<br>\r\nApplication : Enema Bag and Bucket Set<br>\r\nTip Type : Pre-Lubricated Tip<br>\r\nTubing Type : 60 Inch Tubing<br><br>\r\nUNSPSC Code : 42141902', 0.0000, 0.0000, 0.0000, 0.0000, 1.74, 1.29, '33332700.jpg', '31851201.jpg', 1, 0, 0, 0, 0),
(57, 'Medical Supply', 0, '', 14, '', '', '0', 'Medtronic Enema Bucket 1400cc', '63102700', '1.09E+12', ' ', 'Dover? Enema Bucket and Tube Pre-Lubricated Tip, 24 Fr/Ch (8.0 mm) x 60\" (1.5 m) 1400 mL<br>\r\n<br>\r\nQuantity : 1EA<br>\r\nVolume : 1400cc<br>\r\nApplication : Enema Bucket<br>\r\nTubing Type : 60 Inch Tube<br>\r\nProp 65 : Yes<br>\r\nMaterial : Plastic<br>\r\nUNSPSC Code : 42141903', 0.0000, 0.0000, 0.0000, 0.0000, 2.82, 2.09, '63102700.jpg', '', 1, 0, 0, 0, 0),
(58, 'Medical Supply', 0, '', 14, '', '', '0', 'Medtronic Enema Bucket 1400cc, 50 EA/CS', '63102705', '2.09E+12', ' ', 'Quantity : 50 EA/CS<br>\r\nApplication: Enema Bucket<br>\r\nMaterial: Plastic<br>\r\nTubing Type: 60 Inch Tube<br>\r\nUNSPSC Code: 42141903<br>\r\nVolume: 1400cc<br>\r\nProp 65 : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 138.25, 102.41, '63102705.jpg', '', 1, 0, 0, 0, 0),
(59, 'Medical Supply', 0, '', 14, '', '', '0', 'Dynarex Enema Kit', '11742700', '6.17E+11', ' ', 'Kit contains: (1) 1500mL enema bag, (1) inlet tubing (60 inch length), (1)tubing clamp, (1) protection clamp, (1) Castile soap concentrate, (1) moisture proof drape (45 x 42 cm).<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nApplication: Enema Kit<br>\r\nUNSPSC Code: 42141903<br>\r\nLatex Free Indicator: Not Made with Natural Rubber Latex', 0.0000, 0.0000, 0.0000, 0.0000, 2.28, 1.69, '11742700.jpg', '', 1, 0, 0, 0, 0),
(60, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Non-Sterile Graduated Plastic Medicine Cups - 1 oz - 100/Pack', 'DYND80000H', '2.01E+13', ' ', 'Translucent cups suitable for dispensing both liquid and dry medications<br>\r\nCalibrated from 1-8 drams, 1/8-1 fluid ounce, 1-2 tablespoon and 2.5-30 mL and cc<br>\r\n<br>\r\nQuantity : 100 per Pack, 1 Tube<br>\r\nLatex-Free : Yes<br>\r\nMaterial : Plastic<br>\r\nSize : 1 oz', 0.0000, 0.0000, 0.0000, 0.0000, 1.94, 1.44, 'DYND80000H.jpg ', '', 1, 0, 0, 0, 0),
(61, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Non-Sterile Graduated Plastic Medicine Cups', 'DYND90000', '4.09E+13', ' ', 'Translucent cups suitable for dispensing both liquid and dry medications<br>\r\nDYND80000 is calibrated from 1-8 drams, 1/8-1 fluid ounce, 1-2 tablespoon and 2.5-30 mL and cc<br>\r\nDYND90000 comes with mL and cc measurements only<br>\r\nPlastic<br>\r\n<br>\r\nQuantity : 5000 EA/CS<br>\r\nGraduated : Yes<br>\r\nMaterial : Plastic<br>\r\nProduct Type : Medicine Cup<br>\r\nOunces : 1<br>\r\nSterile : No<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 97.13, 44.49, 'DYND90000.jpg ', '', 1, 0, 0, 0, 0),
(62, 'Medical Supply', 0, '', 15, '', '', '0', 'McKesson Medi-Pak? Medicine Cups, 1 oz. Clear Polypropylene, 100 EA/PK', '46941201', ' ', ' ', 'With Lip<br>\r\n1 oz.<br>\r\nClear<br>\r\nGraduated<br>\r\nNon-Sterile<br>\r\nPolypropylene<br>\r\nSingle patient use.<br>\r\nNot Made With Natural Rubber Latex.<br>\r\n<br>\r\nQuantity : 100 Cups<br>\r\nCapacity : 1 oz<br>\r\nLatex Free : Yes<br>\r\nMaterial : Polypropylene<br>\r\nColor : Clear', 0.0000, 0.0000, 0.0000, 0.0000, 1.15, 0.85, '46941201.jpg', '', 1, 0, 0, 0, 0),
(63, 'Medical Supply', 0, '', 15, '', '', '0', 'McKesson Medi-Pak? 1 oz. Clear Polypropylene Medicine Cups, 5000/CS', '46941200', '4.06E+13', ' ', 'With Lip<br>\r\n1 oz.<br>\r\nClear<br>\r\nGraduated<br>\r\nNon-Sterile<br>\r\nPolypropylene<br>\r\nSingle patient use.<br>\r\nNot made with natural rubber latex.<br>\r\n<br>\r\nQuantity : 5000 Cups (100 Per Sleeve, 50 Sleeves Per Case)<br>\r\nMON46941200 - McKessonMedi-Pak? 1 oz. Clear Polypropylene Medicine Cups, 5000/CS<br>\r\n', 0.0000, 0.0000, 0.0000, 0.0000, 54.96, 40.71, '46941200.jpg', '', 1, 0, 0, 0, 0),
(64, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Disposable Paper Souffle Cups .75 oz.- 250/Box', 'NON024215H', '3.01E+13', ' ', 'Feature tightly rolled edges and box pleats to ensure stability and rigidity. Work well in conjunction with pill crushers for clean and simple pill crushing. Ideal for medication distribution.<br>\r\n<br>\r\nQuantity : 250 per Box<br>\r\nSize : 0.75 oz<br>\r\nColor : White<br>\r\nLatex-Free : Yes<br>\r\nGraduated : No<br>\r\nLiquid Type : Cold<br>\r\nMaterial : Paper<br>\r\nUNSPSC : 42192603', 0.0000, 0.0000, 0.0000, 0.0000, 3.51, 2.60, 'NON024215H.jpg ', '', 1, 0, 0, 0, 0),
(65, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Disposable Paper Souffle Cups - 250/Bag', 'NON024214Z', '2.01E+13', ' ', 'Feature tightly rolled edges and box pleats to ensure stability and rigidity.<br>\r\nWork well in conjunction with pill crushers for clean and simple pill crushing.<br>\r\nIdeal for medication distribution.<br>\r\n<br>\r\nQuantity : 250 per Bag<br>\r\nSize : 0.5 oz<br>\r\nMaterial : Paper<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 4.32, 3.20, 'NON024214Z.jpg ', '', 1, 0, 0, 0, 0),
(66, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Disposable Paper Souffle Cups-White - 5000/Case', 'NON024215', '4.01E+13', ' ', 'Medline Cup, Paper, Souffle, .75 Oz<br>\r\n<br>\r\nMedline Souffle Cups: Pleated portions are made of one-piece, dry-waxed construction for durability. Rims are tightly rolled for rigidity, and the base is recessed to prevent tipping.<br>\r\n<br>\r\nQuantity : 5,000 per Case, 20 Boxes<br>\r\nLatex-Free : Yes<br>\r\nSize : 0.75 oz', 0.0000, 0.0000, 0.0000, 0.0000, 64.30, 47.63, 'NON024215.jpg ', '', 1, 0, 0, 0, 0),
(67, 'Medical Supply', 0, '', 15, '', '', '0', 'Medline Disposable Paper Souffle Cups-White - 5000/Case', 'NON024220', '4.01E+13', ' ', 'Medline Cup, Paper, Souffle, 1 Oz<br>\r\n<br>\r\nMedline Souffle Cups: Pleated portions are made of one-piece, dry-waxed construction for durability. Rims are tightly rolled for rigidity, and the base is recessed to prevent tipping. 3-1/2 oz cup doubles as a drinking cup. 1 oz.<br>\r\n<br>\r\nQuantity : 5,000 per Case, 20 Boxes<br>\r\nLatex-Free : Yes<br>\r\nSize : 1 oz', 0.0000, 0.0000, 0.0000, 0.0000, 74.17, 54.95, 'NON024220.jpg ', '', 1, 0, 0, 0, 0),
(70, '', 27, '', 28, '', '', '6', 'Medline K4 Basic 18\" Lightweight Wheelchair, Swing Back Desk Arm Style, Swing Away Footrests', 'MDS806500E', '1.01E+13 ', '     ', '<ul><li xss=\"removed\">Durable, tig-welded frame with gray powder coat finish.</li><li xss=\"removed\">Dual axle hemi-height adjustable.</li><li xss=\"removed\">Smooth-rolling solid flat-free latex tires.</li><li xss=\"removed\">Adjustable-height back; Comfortable nylon upholstery.</li><li xss=\"removed\">Swing back desk length arms.</li><li xss=\"removed\">Swing away footrest.</li><li xss=\"removed\">Seat size 16\" x 18\".</li><li xss=\"removed\">Optional accessories: O2 Holder (MDS85181U), Anti-Fold Device (MDS85196), I.V. Pole (MDS85183), Overhead Anti-Theft Device (MDS85197A), O2/I.V. Combo (MDS85190), Anti-Tip Device (MDS85189WK4), Tinnerman Legrest Locks (WCA806991).</li></ul><ul><li>Weight Capacity : 300</li><li>Seat to ground : 20-18\"</li><li>Rim to rim open : 26.5</li><li>Rim to rim closed : 12</li><li>Weight w/o legrest (lbs) : 34</li><li>Seat : 18 x 16</li><li>Back : 18 x 16</li><li>Highest point to ground : 36.5</li><li>Length front to back : 31.5</li><li>Height of arm pad from seat rail : 9.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 252.60, 187.11, 'mds806500e.jpg', 'MDS806500NE.jpg', 1, 1, 0, 0, 1513967344),
(71, '', 27, '', 28, '', '', '6', 'Medline K4 Basic 16\" Lightweight Wheelchair, Swing Back Desk Arm Style, Swing Away Footrests', 'MDS806500NE', '1.01E+13   ', '     ', '<ul xss=\"removed\"><li xss=\"removed\">Durable, tig-welded frame with gray powder coat finish.</li><li xss=\"removed\">Dual axle hemi-height adjustable.</li><li xss=\"removed\">Smooth-rolling solid flat-free latex tires.</li><li xss=\"removed\">Adjustable-height back; Comfortable nylon upholstery.</li><li xss=\"removed\">Swing back desk length arms.</li><li xss=\"removed\">Swing away footrest.</li><li xss=\"removed\">Seat size 16\" x 16\".</li><li xss=\"removed\">Optional accessories: O2 Holder (item MDS85181U), Anti-Fold Device (item MDS85196), I.V. Pole (MDS85183), Overhead Anti-Theft Device (item MDS85197A), O2/I.V. Combo (item MDS85190), Anti-Tip Device (item MDS85189WK4), Tinnerman Legrest Locks (item WCA806991).</li></ul><ul xss=\"removed\"><li>Weight Capacity : 300</li><li>Seat to ground : 20-18\"</li><li>Rim to rim open : 24.5</li><li>Rim to rim closed : 12</li><li>Weight w/o legrest (lbs) : 33</li><li>Seat : 16 x 16</li><li>Back : 16 x 16</li><li>Highest point to ground : 36.5</li><li>Length front to back : 31.5</li><li>Height of arm pad from seat rail : 8.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 261.37, 193.61, 'mds806500ne.jpg', 'MDS806500NE.jpg', 1, 1, 0, 0, 1513967306),
(72, '', 27, '', 28, '', '', '6', 'Medline K4 Basic 20\" Lightweight Wheelchair, Swing Back Desk Arm Style, Elevating Footrests', 'MDS806565E', '80196305691   ', '      ', '<ul><li xss=\"removed\">Durable, tig-welded frame with gray powder coat finish.</li><li xss=\"removed\">Dual axle hemi-height adjustable.</li><li xss=\"removed\">Smooth-rolling solid flat-free latex tires.</li><li xss=\"removed\">Adjustable-height back; Comfortable nylon upholstery.</li><li xss=\"removed\">Swing back desk length arms.</li><li xss=\"removed\">Detachable elevating footrest.</li><li xss=\"removed\">Seat size 20\" x 18\".</li><li xss=\"removed\">Optional accessories: O2 Holder (item MDS85181U), Anti-Fold Device (item MDS85196), I.V. Pole (MDS85183), Overhead Anti-Theft Device (item MDS85197A), O2/I.V. Combo (item MDS85190), Anti-Tip Device (item MDS85189WK4), Tinnerman Legrest Locks (item WCA806991).</li></ul><ul><li>Weight Capacity : 300</li><li>Seat to ground : 20-18\"</li><li>Rim to rim open : 28.5</li><li>Rim to rim closed : 12</li><li>Weight w/o legrest (lbs) : 34.5</li><li>Seat : 20 x 18</li><li>Back : 20 x 18</li><li>Highest point to ground : 36.5</li><li>Length front to back : 31.5</li><li>Height of arm pad from seat rail : 9.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><p xss=\"removed\"></p><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 286.82, 212.46, 'mds806565e.jpg', 'Medline_K420.jpg', 1, 1, 0, 0, 1513967465);
INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `modified_date`) VALUES
(73, '', 27, '', 28, '', '', '7', 'Drive Medical Viper Plus GT Wheelchair with Flip Back Removable Adjustable Full Arms, Elevating Leg Rests, 16\" Seat', 'PLA416FBFAARAD-ELR', '8.22E+11 ', '     ', '<p xss=\"removed\">The Drive Medical Viper GT is the most versatile wheelchair right out of the box and is easier to propel and transport than an average weight chair. The Viper GT comes standard with adjustable padded arms, multiple seat to floor height positions, adjustable anti-tippers with flip-up wheels which never have to be removed and push to lock wheel locks. The back is both angle adjustable and height adjustable to provide added patient comfort. The 16\", 18\" and 20\" version of the Viper GT come standard with a seat rail extension kit. The all-aluminum frame is high strength while remaining lightweight. The wheelchair upholstery is made of durable nylon which is flame retardant and resists mildew and bacteria. Precision sealed wheel bearings in front and rear ensure long lasting performance and reliability. The quick release, 24\" composite Mag-style wheels are lightweight and maintenance free. Tool free adjustable swing away footrests also feature easy to access release handles. Urethane rear tires and casters offer superior performance, smoother ride and are lightweight.</p><br xss=\"removed\"><p xss=\"removed\"><strong xss=\"removed\">Features and Benefits</strong></p><ul xss=\"removed\"><li xss=\"removed\">Built-in seat rail extensions and extendable upholstery easily adjusts seat depth from 16\" to 18\"</li><li xss=\"removed\">All-Aluminum frame</li><li xss=\"removed\">Dual Axle allows for multiple seat-to-floor height positions</li><li xss=\"removed\">Adjustable height, flip-back, removable, padded arms</li><li xss=\"removed\">Weighs under 32 lbs (Excluding front rigging)</li><li xss=\"removed\">Over-center cross brace eliminates need for seat guides; Works with seating and positioning accessories</li><li xss=\"removed\">Adjustable angle back easily adjusts from 5-degrees to 20-degrees</li><li xss=\"removed\">Adjustable height back adjusts from 17\"-19\" in 1\" increments, adaptable for individual patient needs</li><li xss=\"removed\">Durable, heavy-gauge flame-retardant nylon upholstery with hook-and-loop fastener straps, resists mildew and bacteria</li><li xss=\"removed\">Quick release, 24\" composite Mag-style wheels are lightweight and maintenance free</li><li xss=\"removed\">Precision sealed wheel bearings in front and rear ensure long-lasting performance and reliability</li><li xss=\"removed\">Adjustable angle caster forks have three height adjustments and angle adjustability</li><li xss=\"removed\">Tool-free adjustable swing-away footrests also feature easy-to-access release handles</li><li xss=\"removed\">Urethane rear tires and casters offer superior performance, smoother ride, and are lightweight</li><li xss=\"removed\">Adjustable anti-tipper with flip-up wheels never needs to be removed</li><li xss=\"removed\">Comes with push-to-lock wheel locks</li></ul><h5 xss=\"removed\"></h5><ul><li>Dimensions : 42\"L x 24\"W x 36\"H</li><li>Armrest Length : 14\"</li><li>Armrest to Floor Height : 27.5\"</li><li>Back Height : 19\"</li><li>Brakes : Push-To-Lock Wheel Brakes</li><li>Casters : 8\"</li><li>Closed Width : 12.5\"</li><li>Folded Dimensions : 42\" x 12.5\" x 36\"</li><li>Number of Wheels : 4</li><li>Overall Length w/ Riggings : 42\"</li><li>Color : Black</li><li>Material : Aluminum</li><li>Weight Capacity : 300 lbs.</li><li>Rear Wheels : 24\" x 1\"</li><li>Seat Depth : 18\"</li><li>Seat Width : 16\"</li><li>Seat to Armrest Height : 8\"</li><li>Seat to Floor Height : 17.5\"-19.5\"</li><li>Seat to Foot Deck : 15.5\"-18.5\"</li><li>Warranty : Limited Lifetime</li><li><span xss=\"removed\">Prop 65: Yes</span></li><li>Assembly : Basic Assembly Required</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 610.66, 452.34, 'pla416fbfaarad-elr.jpg', 'pla416fbfaarad-elr.jpg', 1, 1, 0, 0, 1513966704),
(74, '', 27, '', 29, '', '', '7', 'Drive Medical Two Wheeled Walker with Seat, Blue', '1239BL', '8.22E+11 ', '    ', '<ul><li xss=\"removed\">Features comfortable and convenient padded seat and backrest</li><li xss=\"removed\">Quickly folds when not in use</li><li xss=\"removed\">Rear leg tips act as brakes when pressed down</li><li xss=\"removed\">Height adjustable handles</li><li xss=\"removed\">Large swivel wheels added for maneuverability</li><li xss=\"removed\">Countoured handles for a comfortable grip</li></ul><ul><li>Dimensions : 23.25\"L x 22\"W x 29\"H</li><li>Handle Height (Max) : 38\"</li><li>FSA Eligible : Yes</li><li>Warranty : Limited Lifetime</li><li>User : Universal</li><li>Assembly : Basic Assembly Required</li><li>Installation : No Installation Required</li><li>Latex Free : Yes</li><li>HCPCS : E0143; E0156</li><li>Handle Height (Min) : 29\"</li><li>Color : Blue</li><li>Material : Aluminum</li><li>Weight Capacity : 300 lbs</li><li>Seat Depth : 8\"</li><li>Seat Width : 15.875\"</li><li>Seat to Floor Height : 20.5\"</li><li><span xss=\"removed\">Prop 65 : Yes</span></li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 73.36, 54.34, '1239bl.jpg', 'DriveMedical_1239BL.jpg', 1, 1, 0, 0, 1513966485),
(75, '', 27, '', 29, '', '', '7', 'Drive Medical Portable Folding Travel Walker with 5\" Wheels and Fold up Legs', 'RTL10263KDR', '8.22E+11 ', '    ', '<p xss=\"removed\">The Drive Medical Portable Folding Walker in red easily folds, tool free, to half the size of a traditional walker and can be stored in a \"Ready Set Go\" pouch that is provided with each walker. The legs are attached with strong elastic cords making it easy to fold flat, for easy storage and transportation. When the walker is opened, two side pouches with large pockets for personal items are held in place by hook-and-loop fastener straps to both side frames. The 5\" front wheels and rear glide skis provide a smooth transportation over most surfaces.</p><br xss=\"removed\"><p xss=\"removed\"><strong xss=\"removed\">Features and Benefits</strong></p><ul xss=\"removed\"><li xss=\"removed\">Easily folds tool-free to 1/2 the size of a traditional walker and can be stored in a \"Ready Set Go\" pouch</li><li xss=\"removed\">Legs are attached with strong elastic cords so legs can be folded</li><li xss=\"removed\">Comes with 5\" front wheels and rear glide skis that are ideal for most surfaces</li><li xss=\"removed\">Two side-storage pouches with large pockets for personal items are held in place by hook-and-loop fastener straps to both side frames.</li></ul><ul xss=\"removed\"><li>Dimensions : 19.75\"L x 26.5\"W x 29.5\"H</li><li>Adjustable Height : 29.5\"-37\"</li><li>Base Depth : 19.75\"</li><li>Inside Hand Grip Width : 17\"</li><li>Color : Red</li><li>Material : Aluminum</li><li>Weight Capacity : 300 lbs</li><li>Width Inside Back Legs : 22\"</li><li>Warranty : Limited Lifetime</li><li>Prop 65 : Yes</li><li>Assembly : No Assembly Required</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 84.27, 62.42, 'rtl10263kdr.jpg', 'RTL10263KDR.jpg', 1, 1, 0, 0, 1513965977),
(76, '', 0, '', 30, '', '', '5', 'Medline Standard Aluminum Crutches - 1 Pair', 'MDSV80535LFH', '80196293493', '  ', '<ul xss=\"removed\"><li xss=\"removed\">Standard aluminum push-button crutches feature a double extruded center tube that provides load-bearing strength where it\'s needed the most.</li><li xss=\"removed\">The special footpiece utilizes durable rivets to secure the aluminum tubing from the inside, providing more stability than plastic connectors.</li><li xss=\"removed\">Long, virtually unbreakable stair deflector helps protect against the crutch slipping on stairs and helps increase stress tolerance at all angles without cracking; non-skid rubber tips provide good traction.</li><li xss=\"removed\">Built-in metal ring helps prevent excessive wear and ensures maximum durability.</li><li xss=\"removed\">Crutches come packaged completely accessorized with no assembly required.</li></ul><h5 xss=\"removed\"></h5><ul><li>Quantity : 1 Pair</li><li>Patient Height Range : 5\'2\"-5\'10\"</li><li>Weight Capacity : 300 lb</li><li>User : Adult</li><li>Material : Aluminum</li><li>Crutch Style : Axillary</li><li>Latex-Free : Yes</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 23.64, 17.51, 'MDSV80535LFH.jpg', '', 1, 1, 0, 0, 0),
(77, '', 0, '', 30, '', '', '5', 'McKesson Underarm Crutch SunMark® Performance Aluminum Adult 300 lbs.', '49503800', '2.06E+13', '  ', '<ul xss=\"removed\"><li xss=\"removed\">SunMark® Performance Push-Button Aluminum Crutches</li><li xss=\"removed\">Adult, fits 5\' 2\" to 5\' 10\"</li><li xss=\"removed\">Maximum Patient Weight: 300 lbs.</li><li xss=\"removed\">Patented design for greater strength and torsional rigidity.</li><li xss=\"removed\">Stair-Alert feature reduces risk of crutch end catching on stairs or curbs.</li><li xss=\"removed\">Completely assembled with accessories; saves labor and adds convenience to storage and issuance.</li><li xss=\"removed\">Fitting chart enclosed with each pair of crutches.</li><li xss=\"removed\">Height adjustment scale on center tube in 1 inch increments.</li><li xss=\"removed\">Double push-button adjustment with permanently attached springs for increased dependability.</li><li xss=\"removed\">Push-button locator ring prevents push-button from getting \"lost\" during adjustment.</li><li xss=\"removed\">Shrink-wrapped in pairs in heavy duty film to preserve product integrity in transit and storage.</li><li xss=\"removed\">Not made with natural rubber latex.</li></ul><ul xss=\"removed\"><li>Adjustment Device : Push-Button</li><li>HCPCS : E0114</li><li>Padding Material : Synthetic Rubber</li><li>Frame Material : Aluminum</li><li>User : Adult</li><li>Application : Underarm Crutch</li><li>Weight Capacity : 300 lbs.</li><li>Crutch Height : 45 to 53 Inch</li><li>User Height Range : 5 Foot 2 Inch to 5 Foot 10 Inch</li><li>Frame Diameter : 3/4 Inch</li><li>Latex Free Indicator : Not Made with Natural Rubber Latex</li><li>UNSPSC Code : 42211502</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 22.50, 16.67, '49503800.jpg', '', 1, 1, 0, 0, 0),
(78, '', 0, '', 17, '', '', '8', 'Omron Healthcare Blood Pressure Monitor 3 Series® Wrist\r\n\r\n', '62992500', '73796266295', '  ', '<ul xss=\"removed\"><li xss=\"removed\">60 Memory storage with date and time</li><li xss=\"removed\">5 Year Warranty</li><li xss=\"removed\">Exclusive technology automatically displays the average of up to the last 3 readings taken within the last 10 minutes</li></ul><ul xss=\"removed\"><li>Application : Blood Pressure Monitor</li><li>Target Area : Wrist</li><li>UNSPSC Code : 42181609</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 74.21, 54.97, '62992500.jpg', '', 1, 1, 0, 0, 0),
(79, '', 27, '', 32, '', '', '7', 'Drive Medical Spitfire Scout Compact Travel Power Scooter, 4 Wheel', 'SFSCOUT4', '8.22E+11  ', '     ', '<p xss=\"removed\">The Spitfire Scout transportable scooter combines easy and convenient mobility with superior value. The Spitfire Scout is compact, lightweight and easy to disassemble-perfect for taking wherever you want to go, either around the neighborhood or far from home. It can be disassembled quickly and easily into five easy-to-handle pieces for loading into a car, truck, or van and taking shopping or on vacation. The four-wheel version of the Spitfire Scout allows for enhanced stability on rougher outdoor terrain. The Scout also offers great features like a quick connect battery pack and a delta-style tiller to make operating the scooter easier for those with limited strength or dexterity. This model comes with color-through panels to hide scuffs and scratches and black wheel rims.</p><br xss=\"removed\"><p xss=\"removed\"><strong xss=\"removed\">Features and Benefits</strong></p><ul xss=\"removed\"><li xss=\"removed\">Quick and easy disassembly</li><li xss=\"removed\">Interchangeable color panels hide scuffs and scratches</li><li xss=\"removed\">Armrests are padded and adjustable</li><li xss=\"removed\">Quick connect batteries</li><li xss=\"removed\">Ergonomic throttle control</li><li xss=\"removed\">Height-adjustable swivel seat with fold-down backrest</li><li xss=\"removed\">Flat-free, non-marking tires</li><li xss=\"removed\">Large, plastic carry basket</li><li xss=\"removed\">Easy-to-adjust tiller</li><li xss=\"removed\">Anti-tip wheels</li><li xss=\"removed\">Delta tiller</li><li xss=\"removed\">Easy freewheel operation</li><li>User : Universal</li><li>Dimensions : 42.5\"L x 20.5\"W x 35\"H</li><li>Weight Capacity : 300 lbs.</li><li>Color : Black</li><li>Latex Free : Yes</li><li>Installation : No Installation Required</li><li>Assembly : Basic Assembly Required</li><li>FSA Eligible : Yes</li><li>Warranty : Limited Lifetime on Frame; 24 Month Limited on Electronics; 12 Month on Battery</li><li>Type : 4-Wheel Power Scooters</li><li>Prop 65  : Yes</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 1055.42, 699.00, 'sfscout4.jpg', 'spitfire-scout-4-wheel-compact.jpg', 1, 1, 0, 0, 1513965681),
(80, '', 27, '', 28, '', '', '6', 'Medline K3 Basic Plus 16\" Standard Wheelchair, Swing Back Desk Arm Style, Swing Away Footrests', 'MDS806600NEPL', '888277362980      ', '      ', '<ul><li xss=\"removed\">300 lb. (136 kg) weight capacity</li><li xss=\"removed\">Comes in seat sizes 16 x 16\" (41 x 41 cm), 18 x 16\" (46 x 41 cm), and 20 x 18\" (51 x 46 cm)</li><li xss=\"removed\">Comfortable nylon upholstery</li><li xss=\"removed\">Height-adjustable, swing-back, desk-length arms</li><li xss=\"removed\">Other features include:</li><li xss=\"removed\">Hemi-height adjustable axles raise/lower seat 2\" (5 cm)</li><li xss=\"removed\">Heel loops included for maximum foot support (swing away footrest models only)</li><li xss=\"removed\">Adjustable anti-tippers with flip-up wheels</li><li xss=\"removed\">Options available: Detachable swing-away footrests or elevating legrests</li><li xss=\"removed\">Limited lifetime warranty on frame; 1 year warranty on parts</li><li xss=\"removed\">Optional accessories: O2 Holder (item MDS85181U), Anti-Fold Device (item MDS85196), IV Pole (MDS85183), O2/IV Combo (item MDS85190), 5-in-1 IV/O2/Anti-Theft combo (MDS85180), Tinnerman Legrest Locks (item WCA806991)</li></ul><ul><li>Weight Capacity : 300</li><li>Seat to ground : 20-18\"</li><li>Rim to rim open : 24.5</li><li>Rim to rim closed : 12.5</li><li>Weight w/o legrest (lbs) : 35.5</li><li>Seat : 18 x 16</li><li>Back : 18 x 16</li><li>Highest point to ground : 36.5</li><li>Length front to back : 30.25</li><li>Height of arm pad from seat rail : 9.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><h5 xss=\"removed\"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 215.73, 159.80, 'mds806600nepl.jpg', 'MEDMDS806600NEPL.JPG', 1, 1, 1512661345, 0, 1513966914),
(81, '', 33, '', 34, '', '', '10', 'Allied Healthcare Schuco Panda Pediatric Nebulizer', 'ALH-S5200', ' ', '     ', '<span xss=\"removed\"><b>The Panda Bear Compressor Nebulizer System.</b> This adorable nebulizer system will make treatments less stressful for your child. Because of its playful design, operates with a low noise level, and is very easy to use, children will be willing to sit tight for their treatments. The panda style nebulizer is a durable, high powered system that delivers all types of medication quickly and effectively into your child.</span><div xss=\"removed\"><span xss=\"removed\"><br></span></div><div xss=\"removed\"><ul><li>Child-friendly design.</li><li>Lightweight yet quiet.</li><li>Easy to use and clean.</li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 60.00, 45.78, 'alh-s5200.jpg', 'alh-s5200.jpg', 1, 1, 1512662315, 0, 1512663884),
(82, '', 1, '', 35, '', '', '11', 'Kole Soft Cloth Bath Pillow with Suction Cups', 'OS342', '     ', ' SPM9772571622    ', '<div itemprop=\"description\" id=\"productShortDescription\" xss=\"removed\">Enhances relaxation</div><div itemprop=\"description\" id=\"productShortDescription\" xss=\"removed\"><br></div><div id=\"productLongDescription\" xss=\"removed\">The ultimate bathing accessory, this Soft Cloth Bath Pillow features a cotton blend waffle texture fabric with two strong suction cups that attach to your bathtub to enhance relaxation. Cover is removable and washable.</div><div id=\"productLongDescription\" xss=\"removed\"><br><p xss=\"removed\">Measures approximately 13.7\" x 9.8\".</p></div>', 0.0000, 0.0000, 0.0000, 0.0000, 12.99, 9.99, 'OS342.jpg', 'kolebathpillow_jpg.jpg', 1, 1, 1512663248, 0, 1512663514),
(83, '', 1, '', 36, '', '', '11', 'Therapeutic Gel Beads Neck Wrap Hot/Cold Therapy', '731015249473', '  731015249473     ', '       ', '<div xss=\"removed\"><span xss=\"removed\">Relieve tension in shoulder and neck muscles with this Therapeutic Gel Beads Neck Wrap featuring a flexible, gel bead-filled design with an adjustable strap for a perfect fit. Wrap can be used for therapeutic hot or cold treatment</span></div><div xss=\"removed\"><span xss=\"removed\"><br></span></div><ul class=\"a-unordered-list a-vertical a-spacing-none\" xss=\"removed\"><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Gel Beads Work Great to Distribute Evenly to Stressed Areas.</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Velcro Flex Band Helps to Adjust to the right fit.</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Use Hot or Cold Therapy to the Back of Your Neck.</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Also Works Well Around Your Knee.</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Relieves Tension in Shoulder and Neck Muscles</span></li></ul>', 6.2500, 2.5000, 6.6250, 0.0000, 13.50, 12.50, '731015249473.jpg', '51lbHML5IcL.jpg', 1, 1, 1512665751, 0, 1513177696),
(84, '', 1, '', 36, '', '', '11', 'Kote Cooling Gel Eye Mask', 'HW70001K1', ' 73101524946 ', '  ', '<ul class=\"a-unordered-list a-vertical a-spacing-none\" xss=\"removed\"><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Great for headaches, fever, reducing puffiness Relaxing Soothing & Revitalizing</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Flexible Gel Beads technology</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Gel beads keep heat and cold longer</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Form Fitting & Comfortable</span></li><li class=\"showHiddenFeatureBullets\" xss=\"removed\"><span class=\"a-list-item\" xss=\"removed\">Straps with velcro Closure (1 RANDOM COLOR)</span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 6.99, 'HW70001K1.jpg', '647726681hb197.jpg', 1, 1, 1512679168, 0, 1512679202),
(85, '', 1, '', 36, '', '', '11', 'Kote Therapeutic Gel Beads Back Wrap ', 'HW70006KI', ' 731015254309 ', '  ', 'Great for hot and cold therapy, this Therapeutic Gel Beads Back Wrap <br>\r\nfeatures a comfortable design with a soft plastic gel bead-filled <br>\r\nsection and adjustable straps for a perfect fit. Wrap can be beneficial <br>\r\nfor post workout relief to help relieve pain directly where it hurts. <br>\r\nSimply heat in a microwave for hot usage or place in a refrigerator for <br>\r\ncold usage. Directions for use are printed on back of package. Measures <br>\r\napproximately 37.5\" long with a 12.5\" x 5.125\" gel bead section. Comes <br>\r\npackaged in an individual box. Box measures approximately 13.5\" x 1.5\" x<br>\r\n 5.5\".<br><br><ul><li>Use for therapeutic heat or cold treatment </li><li>Adjustable straps for a perfect fit</li><li>Relieves pain directly where it hurts</li><li>Great for post workout relief</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 20.56, 12.55, 'HW70006KI.jpg', 'gel back wrap.jpg', 1, 1, 1512679937, 0, 1512679956),
(86, '', 1, '', 37, '', '', '11', 'Sports International Thigh Support ', 'PC00017KI', ' 0182210547      ', '       ', 'Protect your leg during physical activities with this Sports Thigh&nbsp; Support featuring a stretchy knit cuff with stitched edges and an&nbsp; American flag at the top. One size fits all. Machine washable.  Comes packaged in a hanging box.<br><br><ul><li>One Size Fit All</li><li>Thigh Support <br></li><li>Superior Way Quality <br></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.36, 8.75, 'PC00017KI.jpg', 'knee.jpg', 1, 1, 1512680590, 0, 1512680744),
(87, '', 1, '', 2, '', '', '14', 'Covidien Curity Maternity Pad-14 count ', '2022A', ' 0110884521157682   ', '    ', '<div class=\"about-desc\" data-tl-id=\"AboutThis-ShortDescription\"><p>All of our products comply with international quality standards and are greatly appreciated in a variety of different markets throughout the world.</p>  <p> 2022A Curity Maternity Pad, 4-3/10\" x 12-1/4\" Size<br> </p>If you are interested in any of our products or would like to discuss a custom order, please feel free to contact us. <ul><li>Application OB / Maternity Pad</li><li>Dimensions 2.75 Inch</li><li>Length 11 Inch</li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 13.09, 11.50, '2022A.jpeg', 'Maternity pad.jpeg', 1, 1, 1512681122, 0, 1512681153),
(88, '', 33, '', 34, '', '', '15', 'Merits Health Compressor Nebulizer', 'MON22823900', '            ', '            ', '<span>75 Watts. 115VAC / 60Hz 230VAC / 50Hz. 53dB(A). Particle Size Less then 5 microns.</span><b><br><br>Unless you are a licensed care provider or a similar qualified entity a prescription is required to purchase this item.</b><br><br><br><br>\r\n<ul><li>Quantity : 1 EA</li><li>Application: Compressor Nebulizer</li><li>Dimensions: 4.1 X 5.7 X 7.9 Inch</li><li>Flow Range: 4 to 8 LPM</li><li>Operating Pressure: 10 to 14 psi</li><li>UNSPSC Code: 42271802</li><li>Weight: 3.53 lbs.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 34.71, 25.71, 'mon22823900.jpg', 'Merits_nebulizer_N282.jpg', 1, 1, 1512681593, 0, 1513232416),
(89, '', 1, '', 8, '', '', '16', 'Scott Cervical Collar with Sleeve', 'PC0011BOM', ' 6318901546    ', '     ', 'Cervical Collar with Sleeve has a contoured shape with chin cut-out designed with 1 inch thick medium-firm foam and covered with <br>\r\nstockinette. 2 inches wide at chin cut-out. Extra stockinette sleeve included. Universal size for neck 12\"-22\".<br><ul><li>Natural</li><li>Latex Free</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 6.55, 6.27, 'PC0011BOM.png', 'cervical.png', 1, 1, 1512743481, 0, 1512743536),
(90, '', 1, '', 38, '', '', '17', 'BD Eclipse Needle 21Gx1.1 1/4 48/bx', 'EXD0001BOM', ' 0130382903686071    ', '     ', 'Comply with the Needle stick Safety and Prevention Act by using Safety Lock blood collection needles.BD Eclipse™ blood collection needles with <b>lure</b> adapter hub and thin wall needle. Safety shield locks in place with an audible click indicator. no change in technique with single-handed activation. 48 per box.<br><p><br></p><ul><li>\r\nsingle handed activation</li><li>\r\nimmediate protection</li><li>\r\nno change in technique</li><li>\r\nunique double locking system</li><li>\r\naudible click indicator</li></ul><p><br>\r\n</p><h2><b><mark>Please Note: BLOOD COLLECTION NEEDLES WILL SHIP TO HEALTHCARE,  TRAINING FACILITIES OR HEALTHCARE PROFESSIONALS ONLY.</mark></b></h2>', 0.0000, 0.0000, 0.0000, 0.0000, 28.98, 23.32, 'EXD0001BOM.jpg', '8607.jpg', 1, 1, 1512744704, 0, 1513119848),
(91, '', 1, '', 4, '', '', '18', 'PURELL® Advanced Hand Sanitizer Gel\r\n8 fl oz Table Top Pump Bottle', 'PCH325208BOM', ' 07385209652   ', '   ', '<h4 class=\"wc-demoted\" xss=\"removed\">PURELL® Advanced Hand Sanitizer Gel</h4><div class=\"wc-rich-content-description\" xss=\"removed\"><i xss=\"removed\"><b xss=\"removed\">8 fl oz Table Top Pump Bottle<br xss=\"removed\"><ul><li>Refreshing Gel</li><li>Kills more than 99.99% of most common germs that may cause illness</li><li>Outperforms other hand sanitizers ounce-for-ounce</li><li>Clinically-proven to maintain skin health</li><li>America’s #1 Instant Hand Sanitizer</li><li>Kills the most germs</li><li>2X Sanitizing Strength – Just 1 squirt of PURELL Advanced Hand Sanitizer kills as many germs as 2 squirts of any other national brand</li></ul></b></i></div>', 0.0000, 0.0000, 0.0000, 0.0000, 4.50, 3.15, 'PCH325208BOM.jpg', 'Purell.jpg', 1, 0, 1512745178, 0, 1512750086),
(92, '', 1, '', 38, '', '', '17', 'BD ECLIPSE BLOOD NEEDLE 22G X 1 1/4\" (0.7-32mm) (48 COUNT) ', 'EXD0005BOM', ' 0130382903686088    ', '     ', '<div itemprop=\"description\" xss=\"removed\" align=\"left\" xss=removed><p xss=removed>BD Eclipse™ Vacutainer® Blood Collection Needle with Luer Adapter, 22G x 1-1/4\" (0.7-32 mm) Black, Sterile, Latex-Free Blood collection needles offer a simple, effective way to collect blood and help reduce the possibility of accidental needle sticks with one-handed activation technique. <br></p><ul><li xss=removed>Single handed activation.</li><li xss=removed>Immediate protection.</li><li xss=removed>Unique double locking system.</li><li xss=removed>Sold by box of 48 each.</li></ul></div><div itemprop=\"description\" xss=\"removed\" align=\"left\" xss=removed><h2><b>Please Note: BLOOD COLLECTION NEEDLES WILL SHIP TO HEALTHCARE,  TRAINING FACILITIES OR HEALTHCARE PROFESSIONALS ONLY.</b></h2></div>', 0.0000, 0.0000, 0.0000, 0.0000, 31.89, 21.88, 'exd0005bom.jpeg', '1367252164426-1428074611.jpeg', 1, 1, 1512745543, 0, 1513233827),
(93, '', 16, '', 18, '', '', '20', 'QUINTET AC Blood Glucose Monitoring System ', 'DIA0003BM', ' 20612479197132    ', '     ', '<span xss=\"removed\">QUINTET AC Blood Glucose MeterFor use with #5059 McKesson</span><div xss=\"removed\"><font color=\"#444444\" face=\"myriad-pro, BogleWeb, Helvetica Neue, Helvetica, Arial, sans-serif\"><br></font><div xss=\"removed\"><span xss=\"removed\"> QUINTET AC Blood Glucose Test Strips and #5052 McKesson QUINTET AC Blood Glucose Control Solution.Includes Glucose Meter, Installed 3-Volt Battery, Instructions for Use, and Compact Carrying Case.Auto coding for quick and accurate testing.1,000 test battery life.Easy-to-read LCD screen with backlight.Minimal sample size of 1.0 uL.Large memory; capable of recording up to 500 tests.Ergonomic design and uses glove grip paddle strips.Not Made With Natural Rubber Latex. QUINTET AC Blood Glucose Monitoring System 5 Seconds Stores Up To 500 Results Automatic Coding, 1 Count</span></div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 16.50, 11.00, 'DIA0003BM.jpeg', 'Quintet AC BGMS.jpeg', 1, 1, 1512745997, 0, 1512746960),
(94, '', 16, '', 18, '', '', '20', 'QUINTET AC Blood Glucose Test Strips', 'DIA0004BM', ' NDC 89115005902       ', '        ', '<div class=\"main-description ng-binding\" ng-bind-html=\"product.description\" xss=\"removed\">Quintet AC Test Strips are for use with the Quintet AC Blood Glucose Meter. They require small sample sizes to provide a high degree of accuracy while minimizing discomfort.</div><div class=\"product-features\" ng-show=\"product.features.length > 0\" xss=\"removed\"><ul xss=\"removed\"><li ng-repeat=\"feature in product.features\" class=\"ng-binding ng-scope\" xss=\"removed\">For self-testing and point-of-care testing of whole blood glucose.</li><li ng-repeat=\"feature in product.features\" class=\"ng-binding ng-scope\" xss=\"removed\">Unique \"glove grip\" paddle for caregiver\'s convenience.</li><li ng-repeat=\"feature in product.features\" class=\"ng-binding ng-scope\" xss=\"removed\">Not made with natural rubber latex.</li><li ng-repeat=\"feature in product.features\" class=\"ng-binding ng-scope\" xss=\"removed\">Packaged: 2 Vials of 25 Strips Per Box</li><li ng-repeat=\"feature in product.features\" class=\"ng-binding ng-scope\" xss=\"removed\">For use with #5055 McKesson QUINTET AC® Blood Glucose Monitoring System and #5052 McKesson QUINTET AC® Blood Glucose Control Solution.</li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 15.95, 11.00, 'DIA0004BM.jpg', 'Quintet AC Test Strips.jpg', 1, 1, 1512746791, 0, 1512758988),
(95, '', 1, '', 4, '', '', '8', 'Mckesson rubbing alcohol 70%', 'WC230022BM', ' 10612479166452  ', '   ', '<ul xss=\"removed\"><li xss=\"removed\">First Aid Antiseptic</li><li xss=\"removed\">Not Made With Natural Rubber Latex.</li><li xss=\"removed\">Packaged: 12 Per Case</li><li xss=\"removed\">Manufacturer: McKesson Brand</li><li xss=\"removed\">Brand: McKesson</li><li xss=\"removed\">Application: Isopropyl Alcohol</li><li xss=\"removed\">Container Type: Bottle</li><li xss=\"removed\">Latex Free Indicator: Not Made with Natural Rubber Latex</li><li xss=\"removed\">Active Ingredients: Isopropyl Alcohol</li><li xss=\"removed\">Dosage Form: Liquid</li><li xss=\"removed\">Strength: 0.7</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 2.50, 1.45, 'WC230022BM.jpg', 'mck23d0022(1).jpg', 1, 1, 1512747792, 0, 1512748669),
(96, '', 1, '', 12, '', '', '22', 'self adhering bandage', 'WCBI113KI', '731015167708   ', '   ', '<ul xss=\"removed\"><li xss=\"removed\"><b>New, Unopened</b></li><li xss=\"removed\"><b>Bandage Wrap</b></li><li xss=\"removed\"><b>Self-Adhering Bandage</b></li><li xss=\"removed\"><b>Soft & Flexible</b></li><li xss=\"removed\"><b>Measures 2 Yds x 3 In</b></li><li xss=\"removed\"><b>Box Contains 1 Roll</b></li><li xss=\"removed\"><b>Ideal For Wrapping Injured Limbs & Helps Stop Bleeding</b></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 5.00, 4.27, '', '', 1, 1, 1512751145, 0, 1512751290),
(97, '', 1, '', 12, '', '', '24', 'Band-Aid Comfort Sheer Adhesive Bandages-Sheer-80ct', 'WC10002BM', ' 8137004669      ', '       ', '<div class=\"h5 mb2\"><p class=\"h5\">Band-Aid Comfort Sheer Adhesive Bandages-Sheer-80ct, Assorted Sizes  (80ct Total)</p></div><ul class=\"h5\"><li>Plastic ( 100 %)</li><li>Protection for everyday cuts and scrapes</li><li>Won\'t stick to wound for gentle removal</li><li>Long-lastin, unique adhesive & material</li><li>Comfort-Flex Technology</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.53, 5.62, 'wc10002bm.png', '04669cf.png', 1, 1, 1512752265, 0, 1513234757),
(98, '', 1, '', 2, '', '', '8', 'McKesson Shower Cap. Clear. One Size Fits All. Single Patient Use. Not Made With Natural Rubber Latex.', 'PCH16SC1BOM', ' 10612479212685 ', '  ', '<p align=\"left\" xss=\"removed\"><span xss=\"removed\">McKesson Shower Cap. Clear. One Size Fits All. Single Patient Use. Not Made With Natural Rubber Latex.</span></p><br xss=\"removed\"><h5 xss=\"removed\"></h5><ul xss=\"removed\"><li xss=\"removed\"><p xss=\"removed\">Quantity : 1 EA</p></li><li xss=\"removed\"><p xss=\"removed\">Application: Shower Cap</p></li><li xss=\"removed\"><p xss=\"removed\">Color: Clear</p></li><li xss=\"removed\"><p xss=\"removed\">Securing Method: Elastic</p></li><li xss=\"removed\"><p xss=\"removed\">Size: One Size Fits Most</p></li><li xss=\"removed\"><p xss=\"removed\">UNSPSC Code: 53131601</p></li><li xss=\"removed\"><p xss=\"removed\">Usage: Single Patient Use</p></li><li xss=\"removed\"><p xss=\"removed\">Latex Free Indicator: Not Made with Natural Rubber Latex</p></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 0.50, 0.08, 'PCH16SC1BOM.jpg', 'MCKESSON SHOWER CAP.JPG', 1, 1, 1512752989, 0, 1512753131),
(99, '', 0, '', 2, '', '', '8', 'Skid resistant slipper socks', 'PC0003BOM', ' 10612479129938', ' ', '<ul xss=removed><li xss=removed>Premium-quality terry cloth. Constructed with loops on the inside, next to the wearer\'s skin, for comfort.</li><li xss=removed>Soft, breathable poly/nylon knit.</li><li xss=removed>Highly-elastic, comfortable cuff and body help provide a secure fit without being constrictive.</li><li xss=removed>Color coded for easy sizing.</li><li xss=removed>Machine washable.</li><li xss=removed>Not Made With Natural Rubber Latex.</li><li xss=removed>ItemManufacturer: McKesson Brand</li><li xss=removed>Application: Slipper Socks</li><li xss=removed>Material: Poly / Nylon Knit Outer, Terry Cloth Inner</li><li xss=removed>Usage: Single Patient Use</li><li xss=removed>Style: Above the Ankle</li><li xss=removed>User: Unisex</li><li xss=removed>Latex Free Indicator: Not Made with Natural Rubber Latex</li><li xss=removed>ItemResource: slipper_socks_tear_sheet_2016_04.pdf</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 1.50, 0.82, '', '', 1, 1, 1512756626, 0, 0),
(100, '', 1, '', 3, '', '', '8', 'skid resistant slipper socks', 'PC0003BOM', ' 10612479129938  ', '   ', '<ul xss=\"removed\"><li xss=\"removed\">Premium-quality terry cloth. Constructed with loops on the inside, next to the wearer\'s skin, for comfort.</li><li xss=\"removed\">Soft, breathable poly/nylon knit.</li><li xss=\"removed\">Highly-elastic, comfortable cuff and body help provide a secure fit without being constrictive.</li><li xss=\"removed\">Color coded for easy sizing.</li><li xss=\"removed\">Machine washable.</li><li xss=\"removed\">Not Made With Natural Rubber Latex.</li><li xss=\"removed\">ItemManufacturer: McKesson Brand</li><li xss=\"removed\">Application: Slipper Socks</li><li xss=\"removed\">Material: Poly / Nylon Knit Outer, Terry Cloth Inner</li><li xss=\"removed\">Usage: Single Patient Use</li><li xss=\"removed\">Style: Above the Ankle</li><li xss=\"removed\">User: Unisex</li><li xss=\"removed\">Latex Free Indicator: Not Made with Natural Rubber Latex</li><li xss=\"removed\">ItemResource: slipper_socks_tear_sheet_2016_04.pdf</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 1.50, 0.82, 'PC0003BOM.jpg', 'mck40-1099.jpg', 1, 1, 1512757169, 0, 1512757191),
(101, '', 1, '', 12, '', '', '26', 'Steri-Strip™ Skin Closure, Reinforced Adhesive, 1/4\" x 3\"', 'WC0001BOM', ' 30707387062515  ', '   ', '<span xss=\"removed\">Breathable, microporous material. Hypoallergenic adhesive. Provides better cosmetic outcome than sutures or staples. Permits early staple/suture removal. Reduce</span><a href=\"https://www.sasrx.com/Steri-Strip-Skin-Closure-Reinforced-Adhesive-1-4-x-3-/2209086#ctl00_CustomerMainContent_TabContainer1\" xss=\"removed\"> </a><div><br></div><div><li xss=\"removed\">Breathable, microporous material</li><li xss=\"removed\">Hypoallergenic adhesive</li><li xss=\"removed\">Provides better cosmetic outcome than sutures or staples</li><li xss=\"removed\">Permits early staple/suture removal</li><li xss=\"removed\">Reduces the risk of infection</li><li xss=\"removed\">Non-woven, rayon-backed material reinforced with filaments for strength</li><li xss=\"removed\">Provides wound support and assists in increasing the tensile strength of the wound</li><li></li></div>', 0.0000, 0.0000, 0.0000, 0.0000, 4.50, 2.58, 'WC0001BOM.jpg', 'STERI-STRIP Skin Closure, Reinforced Adhesive,.jpg', 1, 1, 1512761546, 0, 1512761699),
(102, '', 1, '', 35, '', '', '22', 'Super Grip Bath Handle', 'MEOB647KI', ' 731015189236 ', '  ', '<span xss=\"removed\">Providing a helping hand, this Super Grip Bath Handle is ideal for the shower or bath. Convenient design features a durable plastic contoured handle with large suction cups that secure easily with push levers. Release with a flip of the lever. Color change indicators show if handle is secure or not secure. Mounts on any non-porous surface. Customized angle support swivels 180 degrees. No holes, screws or tools required. Measures approximately 19.25\" long. Comes packaged in an individual box. Box measures approximately 4.75\" x 3.5\" x 20\".</span>', 0.0000, 0.0000, 0.0000, 0.0000, 15.00, 9.99, 'MEOB647KI.jpg', 'SUPER GRIP BATH HANDLE.jpg', 1, 1, 1512762517, 0, 1512762596),
(103, '', 1, '', 35, '', '', '22', ' Suction Mount Super Grip Bath Handle', 'MISG273KI', '        ', '        ', '<span class=\"h--normal small\" xss=\"removed\">Stay safe while bathing with this suction mount super grip bath handle featuring a durable plastic grip with suction cups, push levers and a contoured handle. </span><span xss=\"removed\"></span><span class=\"h--normal small\" xss=\"removed\">Fits any shower or bath and mounts to any non-porous surface. </span><span xss=\"removed\"></span><span class=\"h--normal small\" xss=\"removed\">No need for holes, screws or tools!</span><span xss=\"removed\"></span><p xss=\"removed\"></p><p xss=\"removed\"><span class=\"h--normal small\" xss=\"removed\">It can be placed in horizontal or vertical positions. </span><span class=\"h--normal small\" xss=\"removed\">Handle is white with dark green levers. </span><span class=\"h--normal small\" xss=\"removed\">Measures approximately 11.5 x 4 x 3.5.</span></p>', 0.0000, 0.0000, 0.0000, 0.0000, 12.45, 9.99, 'misg273ki.jpg', 'SUPER GRIP BATH HANDLE 2.jpg', 1, 1, 1512765881, 0, 1513177631),
(104, '', 1, '', 6, '', '', '27', 'Magnetic Unisex Posture Support Brace', 'OF429-18', ' 731015215669     ', '      ', '<span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">For those suffering from back stress and pain due to poor posture - this lightweight - breathable Magnetic Unisex Posture Support Brace keeps the spinal column erect.<br></span></span><ul><li><span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Unisex</span></span></li><li><span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Positions and aligns the spine correctly.</span></span></li><li><span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Contains 12 Magnet Discs Targeting Spinal And Lumbar Regions.<br></span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 8.50, 3.50, 'of429-18.jpg', 'download.jpg', 1, 1, 1513101295, 0, 1513292277),
(105, '', 33, '', 34, '', '', '28', 'Hudson RCI AirLife™ Misty Max 10™ Disposable Nebulizer without Mask\r\n', 'ME002433BOM', ' 0104026704595457    ', '     ', '<p>AirLife™ Misty Max 10™ disposable nebulizers deliver fast and effective treatment to a wide range of patients. They feature a one-piece, jet design that delivers high output rates resulting in faster treatment times and consistent medication delivery. A full, 10 cc capacity provides medication dosing flexibility. The anti-spill design helps prevent medication waste and allows the unit to be used at an angle to accommodate various patient positions.</p><p><br></p><br><br><br><br>\r\n<br><br><br><br>\r\n', 0.0000, 0.0000, 0.0000, 0.0000, 5.65, 3.95, 'me002433bom.jpg', 'nebulizer-airlife-misty-max-10-disposable-nebulizer-214.jpg', 1, 1, 1513101890, 0, 1513232173),
(106, '', 1, '', 37, '', '', '6', 'Standard Aluminum cane', 'MOB86415BM', ' 080196133416   ', '    ', '<ul xss=\"removed\"><li xss=\"removed\">Designed for patients who need additional assistance with balance.</li><li xss=\"removed\">Standard handle lets users hook the cane over their arm while opening doors or performing other tasks.</li><li xss=\"removed\">The foam grip provides a comfortable secure grip.</li><li xss=\"removed\">250-lb. (113 kg) weight capacity.</li><li xss=\"removed\">Cane weighs between .75 and .8 lbs. and adjusts between approx. 30-38\" (76-96.5 cm).</li></ul><p xss=\"removed\"></p>', 0.0000, 0.0000, 0.0000, 0.0000, 17.95, 14.20, 'MOB86415BM.JPG', 'Standard Aluminum Cane.JPG', 1, 1, 1513102386, 0, 1513102613),
(107, '', 33, '', 34, '', '', '29', ' AirLife Volumetric Incentive Spirometer with One-Way Valve \'\'4000 mL, 1 Count\'\'', 'PC001902BOM', ' 0110885403131417          ', '           ', '<span class=\"sh-ds__full\" xss=\"removed\" xss=removed><span class=\"sh-ds__full-txt\">Dual Sided Calibrations - Flexible Tubing - Mouthpiece Holder.</span></span><div xss=removed><br><div xss=\"removed\" xss=removed><span xss=removed>Our AirLife(TM) volumetric incentive spirometers simplify deep breathing therapy with an intuitive design that prompts patients to correctly perform and monitor their own breathing exercises, even without direct supervision. A patient goal indicator can be adjusted and allows patients to monitor their own progress. Dual-sided calibrations clearly identify achieved volumes of up to 4000mL capacity. The flexible tubing lets the patient adjust the mouthpiece for use in various positions, and a mouthpiece holder provides storage when not in use.</span><br><div xss=\"removed\" xss=removed><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\"><br></span></span></div><div xss=\"removed\" xss=removed><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Packaging: 4000 mL</span></span></div></div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 8.99, 7.95, 'pc001902bom.jpg', 'airlife-incentive-spirometer-03c.jpg', 1, 1, 1513102867, 0, 1513233058),
(108, '', 1, '', 36, '', '', '14', 'Covidien Anti-Embolism Stockings for Continuing Care', 'PC46802BOM', ' 0110884521024922   ', '    ', '<p><strong>Anti-Embolism Stockings Covidien Knee High</strong> are <strong>knee high compression socks</strong> that apply graduated pressure to increase optimal blood flow throughout the ankles and legs. Each of these <strong>knee high compression stockings</strong> is formulated with a two way stretch, making them easy to apply and comfortable for patients of all ages. Each one of these <em>knee high compression socks</em> contains a formed heel pocket, which provides a convenient reference point for heel placement when applying the stockings.<strong><br></strong></p><p><strong>Anti-Embolism Stockings Covidien Knee High</strong> are a great solution for people who have difficulty with <em>knee high compression stockings </em>that slip down because they contain a no-bind stay-up top. These stockings are also useful for healthcare providers and caretakers, as they also contain an inspection hole to easily check skin color and temperature.<strong></strong><br><strong></strong></p><strong><br>Anti-embolism Stockings Covidien Knee High Features and Benefits</strong><ul><li>Graduated pressure supports optimal blood flow throughout the legs</li><li>Heel pocket increases comfort and provides a reference point for correct heel placement</li><li>Slipping is prevented by a no-bind, stay-up system to keep stockings in place<br><br>\r\n</li></ul><p><strong>Anti-Embolism Stockings Knee High Specifications</strong></p><ul><li>Product number: 4435<br></li><li>Brand: Covidien<br></li><li>Material: Nylon/Spandex</li><li>Size: Medium</li><li>Color: White <br></li><li>Regular<br></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 15.79, 14.99, '', '', 1, 0, 1513103543, 0, 1513105647),
(109, '', 1, '', 36, '', '', '14', 'Covidien Anti-embolism Stockings for Continuing Care ', 'PC46302BOM', '0110884521002739   ', '   ', '<p><strong>Anti-Embolism Stockings Covidien Knee High</strong> are <strong>knee high compression socks</strong> that apply graduated pressure to increase optimal blood flow throughout the ankles and legs. Each of these <strong>knee high compression stockings</strong> is formulated with a two way stretch, making them easy to apply and comfortable for patients of all ages. Each one of these <em>knee high compression socks</em> contains a formed heel pocket, which provides a convenient reference point for heel placement when applying the stockings.<br><br>\r\n</p><strong>Anti-Embolism Stockings Covidien Knee High</strong> are a great solution for people who have difficulty with <em>knee high compression stockings </em>that slip down because they contain a no-bind stay-up top. These stockings are also useful for healthcare providers and caretakers, as they also contain an inspection hole to easily check skin color and temperature.<br><br>\r\n<p><strong>Anti-embolism Stockings Covidien Knee High Features and Benefits</strong></p><ul><li>Graduated pressure supports optimal blood flow throughout the legs</li><li>Heel pocket increases comfort and provides a reference point for correct heel placement</li><li>Slipping is prevented by a no-bind, stay-up system to keep stockings in place</li></ul><strong>Anti-Embolism Stockings Knee High Specifications</strong><ul><li>Product number: 4265<br></li><li>Brand: Covidien<br></li><li>Material: Nylon/Spandex</li><li>Size: Small<br></li><li>Color: Beige <br></li><li>Regular<br></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 15.79, 14.99, '', '', 1, 0, 1513104052, 0, 1513105725),
(110, '', 1, '', 36, '', '', '14', 'Covidien Anti-embolism Stockings for Continuing Care', 'PC47305BOM', ' 0110884521024946 ', '  ', '<p><strong>Anti-Embolism Stockings Covidien Knee High</strong> are <strong>knee high compression socks</strong> that apply graduated pressure to increase optimal blood flow throughout the ankles and legs. Each of these <strong>knee high compression stockings</strong> is formulated with a two way stretch, making them easy to apply and comfortable for patients of all ages. Each one of these <em>knee high compression socks</em> contains a formed heel pocket, which provides a convenient reference point for heel placement when applying the stockings.<br>\r\n</p><strong>Anti-Embolism Stockings Covidien Knee High</strong> are a great solution for people who have difficulty with <em>knee high compression stockings </em>that slip down because they contain a no-bind stay-up top. These stockings are also useful for healthcare providers and caretakers, as they also contain an inspection hole to easily check skin color and temperature.<br>\r\n<p><strong>Anti-embolism Stockings Covidien Knee High Features and Benefits</strong></p><ul><li>Graduated pressure supports optimal blood flow throughout the legs</li><li>Heel pocket increases comfort and provides a reference point for correct heel placement</li><li>Slipping is prevented by a no-bind, stay-up system to keep stockings in place</li></ul><strong>Anti-Embolism Stockings Knee High Specifications</strong><ul><li>Product number: 4437<br></li><li>Brand: Covidien<br></li><li>Material: Nylon/Spandex</li><li>Color: Black<br></li><li>Size: XL</li><li>Regular <br></li></ul><br><strong></strong>', 0.0000, 0.0000, 0.0000, 0.0000, 14.50, 12.99, 'PC47305BOM.JPG', 'Stockings Black.jpg', 1, 1, 1513105054, 0, 1513105202),
(111, '', 1, '', 36, '', '', '14', 'Covidien Anti-Embolism Stocking for Continuing Care', 'PC47303BOM', ' 0110884521024977  ', '   ', '<p><strong>Anti-Embolism StockingsCovidien Knee High</strong> are <strong>knee high compression socks</strong> that apply graduated pressure to increase optimal blood flow throughout the ankles and legs. Each of these <strong>knee high compression stockings</strong> is formulated with a two way stretch, making them easy to apply and comfortable for patients of all ages. Each one of these <em>knee high compression socks</em> contains a formed heel pocket, which provides a convenient reference point for heel placement when applying the stockings.<br><br>\r\n</p><strong>Anti-Embolism Stockings Covidien Knee High</strong> are a great solution for people who have difficulty with <em>knee high compression stockings </em>that slip down because they contain a no-bind stay-up top. These stockings are also useful for healthcare providers and caretakers, as they also contain an inspection hole to easily check skin color and temperature.<br><br>\r\n<br><br>\r\n<p><strong>Anti-embolism Stockings Covidien Knee High Features and Benefits</strong></p><ul><li>Graduated pressure supports optimal blood flow throughout the legs</li><li>Heel pocket increases comfort and provides a reference point for correct heel placement</li><li>Slipping is prevented by a no-bind, stay-up system to keep stockings in place<br><br>\r\n</li></ul><strong>Anti-Embolism Stockings Covidien Knee High Specifications</strong><ul><li>Product number: 4574<br></li><li>Brand: Covidien<br></li><li>Material: Nylon/Spandex</li><li>Size: Large <br></li><li>Color:Black</li><li>Regular<br></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 14.50, 12.99, 'PC47303BOM.JPG', 'Stockings Black.jpg', 1, 1, 1513105442, 0, 1513105582);
INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `modified_date`) VALUES
(112, '', 1, '', 37, '', '', '30', 'Tens 8 mode mini digital Electronic pulse massager therapy', 'PC4437BOM', '    ', '    ', '<span xss=\"removed\">8 Mode TENS Unit Pulse Massager Extra 10 Replacement Pads (5 Sets)</span><br xss=\"removed\"><span xss=\"removed\">The TENS Unit Digital Pulse Massager is a dual-channel battery operated muscle</span><br xss=\"removed\"><span xss=\"removed\">stimulation system that helps to relieve minor muscle aches and pains. This</span><br xss=\"removed\"><span xss=\"removed\">pocket sized pain fighter features multiple settings and modes, a compact</span><br xss=\"removed\"><span xss=\"removed\">design, rechargeable internal lithium battery and 2 output channels. The eight</span><br xss=\"removed\"><span xss=\"removed\">different massage modes and one soothing haiku mode stimulate tense and sore</span><br xss=\"removed\"><span xss=\"removed\">muscles by sending pulses through the included electrode wires and adhesive</span><br xss=\"removed\"><span xss=\"removed\">pads.</span><br xss=\"removed\"><span xss=\"removed\">The kit includes:</span><br xss=\"removed\"><span xss=\"removed\">* 1 TENS Unit device</span><br xss=\"removed\"><span xss=\"removed\">* 4 piece self-adhesive conductive reusable gel pads</span><br xss=\"removed\"><span xss=\"removed\">* 2 sets of electrode wires</span><br xss=\"removed\"><span xss=\"removed\">* 1 USB Charger/Wall Unit</span><br xss=\"removed\"><span xss=\"removed\">* 1 pads holder</span><br xss=\"removed\"><span xss=\"removed\">* Operating Manual</span><br xss=\"removed\"><span xss=\"removed\">* Quick start guide</span><br xss=\"removed\"><span xss=\"removed\">* 10 Extra Replacement Pads (5 Sets)</span><br xss=\"removed\"><span xss=\"removed\">Product features:</span><br xss=\"removed\"><span xss=\"removed\">* 8 preprogrammed massage modes</span><br xss=\"removed\"><span xss=\"removed\">* Adjustable 10-60 minute timer</span><br xss=\"removed\"><span xss=\"removed\">* 20 levels of adjustable intensity/strength (10 per output)</span><br xss=\"removed\"><span xss=\"removed\">* Independent dual output design</span><br xss=\"removed\"><span xss=\"removed\">* Customizable intensity and mode for each output</span><br xss=\"removed\"><span xss=\"removed\">* Allows 4 pads to be used at the same time</span><br xss=\"removed\"><span xss=\"removed\">* Rechargeable internal lithium battery – up to 10 hours of continuous use</span><br xss=\"removed\"><span xss=\"removed\">* Easy to read animated backlit LCD Display</span><br xss=\"removed\"><span xss=\"removed\">* FDA Cleared Class II Device</span><br xss=\"removed\"><span xss=\"removed\">UPC: 731395700304</span>', 0.0000, 0.0000, 0.0000, 0.0000, 35.00, 28.55, 'PC4437BOM.JPG', 'TEns UNIT.jpg', 1, 1, 1513106809, 0, 1513106906),
(113, '', 1, '', 3, '', '', '22', 'Travel Tissue pack Set', 'PCH0009KI', ' 3101518941   ', '    ', '<span xss=\"removed\">Set of 24. Includes six pack of ten piece tissue set. 2-ply tissues. Extra soft and strong. Packaged in poly bag. Made from paper. White color. Weight: 0.4 lbs..</span><ul xss=\"removed\"><li xss=\"removed\">Set of 24</li><li xss=\"removed\">Includes six pack of ten piece tissue set</li><li xss=\"removed\">2-ply tissues</li><li xss=\"removed\">Extra soft and strong</li><li xss=\"removed\">Packaged in poly bag</li><li xss=\"removed\">Made from paper</li><li xss=\"removed\">White color</li><li xss=\"removed\">Weight: 0.4 lbs.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 3.15, 2.25, 'pch0009ki.jpg', 'tissues.jpg', 1, 1, 1513107493, 0, 1513235207),
(114, '', 1, '', 4, '', '', '14', 'Covidien Webcol Alcohol Prep 2Ply, Medium Saturated with 70% Isopropyl Alcohol', 'WC40001BBOM', ' 0110884527020645   ', '    ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Covidien Alcohol Prep Pads Large Sterile Saturated with 70% v/v Isopropyl Alcohol. For topical cleansing prior to injection prep or <br><br>\r\nvenipuncture. Single Use Not made with natural rubber latex. Packaged:100EA/BX.<br></span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 3.92, 2.87, 'wc40001bbom.jpg', 'MON18182700.JPG', 1, 1, 1513109853, 0, 1513235370),
(115, '', 1, '', 36, '', '', '31', 'Anti-snoring Nose Clip', 'RES0015KI', ' 6949196553119    ', '     ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">The anti-snoring clip opens nose passages to promote better air flow. Breathing becomes easier providing a restful sleep. The U-shaped clip works by applying gentle pressure to your septum nerve. It is simple to use and comfortable to wear. Clip comes in a small carrying case for convenient bedside storage. Comes packaged in a clam shell package with hanging hole.</span></span><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\"><br></span></span><ul><li><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Stops or reduces your snoring.</span></span></li><li><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">No more restless nights.</span></span></li><li><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Drug free device.</span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 6.79, 3.85, 'res0015ki.jpg', 'Anti Snoring.jpg', 1, 1, 1513110790, 0, 1513175213),
(116, '', 1, '', 3, '', '', '32', 'Fixodent Denture Adhesive Power', 'PCH40016BOM', ' 076660725362   ', '    ', '<div xss=\"removed\"><div class=\"wag-list-show ml15 mb20\" xss=\"removed\"><ul start=\"1\" xss=\"removed\"><li value=\"1\" xss=\"removed\"><div class=\"h5 mb2\" xss=\"removed\"><p class=\"h5\" xss=\"removed\">Fixodent\'s easy-to-use Extra Hold Power denture adhesive provides a hold that lasts all day. Use it just once a day for strong hold that lets you laugh, talk, eat, and drink with confidence! From denture adhesives to denture cleansers, Fixodent gives you denture care confidence. If you\'re one of the 33 million people of all ages and walks of life who have dentures, Fixodent can help you to face each day with confidence. Fixodent gives you the power of the #1 dentist recommended denture adhesive brand (data on file). It helps prevent slipping and helps to keep food from getting in between dentures and gums. It\'s great for both full plate and partial dentures. *among those who recommend brands of adhesive</p></div><ul class=\"h5\" xss=\"removed\"><li xss=\"removed\">Strong, all-day hold.</li><li xss=\"removed\">Provides a great fit and a strong, thin, airtight seal.</li><li xss=\"removed\">Easy to apply powder formula.</li><li xss=\"removed\">#1 Dentist Recommended Denture Adhesive Brand.* *among those who recommend brands of adhesive</li><li xss=\"removed\">Great for full and partial plate denture wearers.</li></ul></li></ul></div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 6.50, 4.95, 'pch40016bom.jpg', '900.jpg', 1, 1, 1513111780, 0, 1513234935),
(117, '', 1, '', 4, '', '', '8', 'McKesson Obstetrical Wipe Individual Packet, BZK (Benzalkonium Chloride), Clean, Box of 100', 'PCH40002BOM', ' 0120612479208852  ', '   ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">McKessonObstetrical Antiseptic Towelettes Can be used for perineal and maternity care - and are formulated to gently cleanse and refresh sensitive skin OB Towelettes are single-use - individually packaged.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 24.81, 8.35, 'pch40002bom.jpg', 'MCK776775_854452.JPG', 1, 1, 1513113884, 0, 1513235453),
(118, '', 1, '', 37, '', '', '21', 'Procare Deep Pocket, Econo, Armsling ', 'PC0007BOM', '0100888912042444  ', '   ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Deep Pocket Arm Sling: Large pocket made of durable poly/cotton easily accommodates bandages and casts. Wide shoulder strap with shoulder pad reduces neck and shoulder strain. Thumb loop and adjustable shoulder strap inhibits sling migration. Double D-ring with hook and loop closure make application quick and easy.<br></span></span><ul><li><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Size: Small</span></span></li><li><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Color: Blue</span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.15, 7.18, 'pc0007bom.jpg', '41q09SfInfL.jpg', 1, 1, 1513114652, 0, 1513236020),
(119, '', 1, '', 37, '', '', '21', 'Procare Deep Pocket, Econo, Armsling.', 'PC0006BOM', ' 0100888912042451  ', '   ', '<span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Deep Pocket Arm Sling: Large pocket made of durable poly/cotton easily accommodates bandages and casts. Wide shoulder strap with shoulder pad reduces neck and shoulder strain. Thumb loop and adjustable shoulder strap inhibits sling migration. Double D-ring with hook and loop closure make application quick and easy.<br></span></span><ul><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Size: Medium<br></span></span></li><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Color: Blue</span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.15, 7.18, 'pc0006bom.jpg', '41q09SfInfL.jpg', 1, 1, 1513114928, 0, 1513236059),
(120, '', 1, '', 37, '', '', '21', 'Procare Deep Pocket, Econo, Armsling.', 'PC0005BOM', ' 0100888912042468 ', '  ', '<span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Deep Pocket Arm Sling: Large pocket made of durable poly/cotton easily accommodates bandages and casts. Wide shoulder strap with shoulder pad reduces neck and shoulder strain. Thumb loop and adjustable shoulder strap inhibits sling migration. Double D-ring with hook and loop closure make application quick and easy.<br></span></span><ul><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Size: Large<br></span></span></li><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Color: Blue</span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.15, 7.18, 'pc0005bom.jpg', '41q09SfInfL.jpg', 1, 1, 1513115075, 0, 1513115106),
(121, '', 1, '', 37, '', '', '21', 'Procare Deluxe Arm Sling.', 'PC0009BOM', '0100888912032070    ', '     ', '<span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Deluxe Arm Sling: Large pocket made of durable poly/cotton easily accommodates bandages and casts. Wide shoulder strap with shoulder pad reduces neck and shoulder strain. Thumb loop and adjustable shoulder strap inhibits sling migration. Double D-ring with hook and loop closure make application quick and easy.<br></span></span><ul><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Size: Small<br></span></span></li><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Color: Black<br></span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 7.50, 6.52, 'pc0009bom.jpg', 's-l225.jpg', 1, 1, 1513115321, 0, 1513236323),
(122, '', 1, '', 37, '', '', '21', 'Procare Deep Pocket, Econo, Armsling', 'PC0008BOM', ' 0100888912042475  ', '   ', '<span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Deep Pocket Arm Sling: Large pocket made of durable poly/cotton easily accommodates bandages and casts. Wide shoulder strap with shoulder pad reduces neck and shoulder strain. Thumb loop and adjustable shoulder strap inhibits sling migration. Double D-ring with hook and loop closure make application quick and easy.<br></span></span><ul><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Size: XL<br></span></span></li><li><span class=\"sh-ds__full\"><span class=\"sh-ds__full-txt\">Color: Blue</span></span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 9.15, 7.18, 'pc0008bom.jpg', '41q09SfInfL.jpg', 1, 1, 1513116486, 0, 1513236042),
(123, '', 16, '', 18, '', '', '33', 'Assure Platinum Glucose Meter', 'DIA0001BM', ' 015482500016    ', '     ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Designed for the LTC healthcare professional, the Assure Platinum Blood Glucose Meter is designed specifically for a multi-patient setting. ProGrip design Auto coding qcProGuard Strip release button Back light display Hypo warning 7 second test time.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 17.33, 6.54, 'dia0001bm.jpg', '5136.jpg', 1, 1, 1513117164, 0, 1513967677),
(124, '', 16, '', 18, '', '', '33', 'Assure Platinum Blood Glucose Test Strips', 'DIA0002BM', ' 15482500504  ', '   ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Blood Glucose Test Strips Assure Platinum Blood Glucose Test Strips Assure Platinum are small 0.5 L sample size and 7 second test time. Assure Platinum Strips wick blood using capillary action.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 14.15, 13.10, 'dia0002bm.jpg', 'assure-platinum-glucose-test-strip.jpg', 1, 1, 1513117528, 0, 1513967753),
(125, '', 1, '', 8, '', '', '34', 'Atlas Adult Regular Collar', 'PC0010BOM', ' 690977181441  ', '   ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">An innovative cervical collar made with high-quality materials that provides an unparalleled combination of immobilization and patient <br>\r\ncomfort. Measurement: sizing is achieved by the combination of a standard off-the-shelf product with an individualized custom fit. All <br>\r\ncircumferences are color-coded to assist in proper usage and storage.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 50.00, 37.81, 'PC0010BOM.JPG', 'Atlas Adult Collar.jpg', 1, 1, 1513117929, 0, 1513117949),
(126, '', 1, '', 12, '', '', '6', 'Avant Non-Sterile Non-Woven Gauze Sponge 4\" x 4\" 4-Ply', 'WC0002BM', ' 0120080196692221   ', '    ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Medline NON25444 Avant Gauze is Medline\'s standard non-woven dressing. Compared to traditional cotton gauze, Avant Gauze helps to reduce the amount of lint that is produced and is less traumatic to fragile granulating wound tissue because it\'s virtually non-adherent. It also has significantly faster wicking ability which promotes a healthier healing environment. Discover the perfect balance between strength and absorbency in this rayon/polyester blend gauze. Non-sterile. - Medical Supplies</span></span><br><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\"></span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 14.25, 12.21, 'wc0002bm.jpg', 'MedlineGauze.jpg', 1, 1, 1513118315, 0, 1513234635),
(127, '', 1, '', 12, '', '', '11', 'Bandages with Kids Designs', 'WC10003KI', '3101514291    ', '    ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Great for helping wounds heal faster Will not stick to wounds Comes in fun assorted designs to fit your mood Designs include: pink bandages with black kitties - balloons and music notes</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 2.50, 1.50, 'wc10003ki.jpg', '51hih8ko68L.jpg', 1, 1, 1513118929, 0, 1513292052),
(128, '', 1, '', 38, '', '', '35', 'BD Needle Holder One Use Clear', 'EXD0002', ' 1117100110725482630250     ', '      ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">The BD Vacutainer One Use Holders are compatible with the entire BD Vacutainer Blood Collection System: BD Vacutainer Eclipse Blood Collection Needles, BD Vacutainer Safety-Lok Blood Collection Sets, BD Vacutainer Push Button Blood Collection Sets and BD Vacutainer Luer Adapters. For Use With: 13 mm and 16 Diameter Tubes.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 18.27, 17.95, 'exd0002.jpg', 'needle-holder-one-use-clear--be4.jpg', 1, 1, 1513119430, 0, 1513233945),
(129, '', 33, '', 34, '', '', '36', 'Respironics SuperSoft Tubing Cannulas', 'ME1616BOM', ' 90610146530       ', '        ', 'Respironics SuperSoft nasal cannulas provide a gentle solution. Made of an advanced material that is soft, flexible and non-sticky.<br> Helps reduce pressure and friction on delicate ear and face tissue New patients are less apprehensive of wearing a cannula<br> Existing patients can\'t believe how comfortable and gentle they are Treat fewer cannula-related sores Bulky foam ear cushions are not needed Crush-resistant tubing.<br><ul><li>Latex-free.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 7.00, 3.75, '', '', 1, 1, 1513120367, 0, 1513120968),
(130, '', 1, '', 37, '', '', '38', 'Concave Eye Patch', 'PC0018BOM', '023185145052  ', '   ', '<div xss=\"removed\"><span xss=\"removed\">Product Features</span><ul xss=\"removed\"><li xss=\"removed\">Concave shape minimizes pressure</li><li xss=\"removed\">Made of soft, smooth material</li><li xss=\"removed\">New look, same great product!</li><li xss=\"removed\">One size fits all</li><li xss=\"removed\">Elastic headband holds patch securely</li><li xss=\"removed\">Shaped for comfort and protection</li><li></li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 3.25, 2.80, 'pc0018bom.jpeg', 'Concave  Eye patch.jpeg', 1, 1, 1513184699, 0, 1513184718),
(131, '', 1, '', 10, '', '', '22', 'Pill Tote Key Ring', 'MISGR042KI', ' 731015171248 ', '  ', '<p class=\"h5\" xss=\"removed\">Being in the dollar merchandise business since its beginning, we know what sells, and we are always adding new and different items to our inventory. We are always looking for new items, and we have recently added pet items and craft supplies to our catalog. We design all of the packaging for our items to ensure that categories of merchandise have cohesive matching packaging, and that they are appealing to the eye. <b xss=\"removed\">Features</b></p><ul xss=\"removed\"><li xss=\"removed\">The pill tote key ring is the perfect way to carry both keys and medication</li><li xss=\"removed\">The pill storage area is waterproof, compact and ready for people on the go</li><li xss=\"removed\">Use for medication, aspirin and vitamins</li><li xss=\"removed\">Comes packaged on a blister card with hanging hole.</li><li xss=\"removed\">Case Of 36</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 1.75, 0.90, 'misgr042ki.jpg', 'Pill Tote Key Ring.jpg', 1, 1, 1513186090, 0, 1513186105),
(132, '', 1, '', 37, '', '', '22', 'Gel Shoe Cushions', 'MIS0017KI', ' 7310015162499  ', '   ', '<span xss=\"removed\">1 Pair Of Clear Shoe Gel Cushions Washable & Reusable One Size Fits All!</span><br xss=\"removed\"><span xss=\"removed\">Brand new seen on tv gel shoe cushions.</span><br xss=\"removed\"><span xss=\"removed\">Designed for high heeled shoes or no heels.</span><br xss=\"removed\"><span xss=\"removed\">Made out of silicone gel, soft and comfortable.</span><br xss=\"removed\"><span xss=\"removed\">Cushions are 2 3/4\" x 3 1/4\". </span><br xss=\"removed\"><span xss=\"removed\">Prevents foot from sliding forward while walking and standing.</span><br xss=\"removed\"><span xss=\"removed\">Stay in place, self adhesive, not easy to fall off, no tape or glue needed. </span><br xss=\"removed\"><span xss=\"removed\">Enhance blood circulation, shock-absorbing, non-slip. </span><br xss=\"removed\"><span xss=\"removed\">Relieve pain and pressure of the feet caused by wearing high heel shoes. </span><br xss=\"removed\"><span xss=\"removed\">In stock ready to ship out same day.</span>', 0.0000, 0.0000, 0.0000, 0.0000, 7.15, 6.25, 'mis0017ki.jpg', 'Gel Shoe Cushions.jpg', 1, 1, 1513186751, 0, 1513186804),
(133, '', 1, '', 38, '', '', '17', 'BD Vacutainer (Eclipse)', '7055680', ' 3038290366055  ', '   ', '<p><b>Description</b>: </p><p xss=\"removed\">• Exp. 2021</p><p xss=\"removed\">• Size 22G x 1-1/4</p><p xss=\"removed\">• Box of 48</p><p>Comes as shown. No other accessories included.</p><p>Photos may be of similar items from the same bulk lot.</p><p>DISCLAIMER:</p><p>Regardless of the origin of the equipment, documentation provided or identification appearing upon the equipment, the equipment described and offered here is in no way certified for, recommended for, or offered for any specific use. The purchaser agrees that the seller shall not be held responsible or liable for any injuries or damages, whether incidental or consequential, associated in any way with the equipment. The purchaser, by bidding on this equipment, indicates their acknowledgment of, and agreement to the terms of this disclaimer.</p>', 0.0000, 0.0000, 0.0000, 0.0000, 37.95, 33.25, '7055680.jpg', 'BD Vacutainer.jpg', 1, 1, 1513270389, 0, 1513270410),
(134, '', 1, '', 3, '', '', '37', 'Colgate® Cavity Protection Fluoride Toothpaste - 1oz', 'HW20003', ' 3500051105 ', '  ', '<div class=\"\">Colgate Cavity Protection provides trusted cavity protection for the entire family.  Formulated with active fluoride, it is clinically proven to <br>\r\nhelp strengthen teeth and leave your mouth feeling fresh and clean. This Colgate toothpaste is ADA (American Dental Association) accepted. It has been trusted by dentists and parents globally for over 45 years.</div>             <ul class=\" h-standardSpacing override-highlights\"><li>  <span class=\"h-text-grayDarker\"><b>Package Quantity:</b> 1</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Health Concern:</b> Bad Breath, Cavity Prevention, Plaque</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Flavor:</b> mint</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Product Form:</b> Paste</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Capacity (volume):</b> 2.5 ounces</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Travel Size:</b> Yes</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Suggested Age:</b> 5 Years and Up</span> </li><li>  <span class=\"h-text-grayDarker\"><b>Product Warning:</b> no warning applicable</span> </li></ul>         ', 0.0000, 0.0000, 0.0000, 0.0000, 2.82, 1.06, 'hw20003.jpg', 'paste.jpg', 1, 1, 1513270810, 0, 1513270862),
(135, '', 1, '', 35, '', '', '22', 'Drive Medical Plastic Transfer Bench with Commode Opening', 'PHH0001', '050428823088 ', '  ', '<div class=\"_-dX f\"><div class=\" _-bo\"><span class=\" _-bm\">Drive Medical</span><span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\"> Tool free, removable back and arm. Height adjusts in .5\" increments with unique \"Dual Column\" extension legs. Aluminum frame is lightweight, sturdy and corrosion resistant. Sold by each.</span></span></div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 104.95, 90.40, 'phh0001.jpg', 'bath chair.jpg', 1, 1, 1513274215, 0, 1513274234),
(136, '', 1, '', 4, '', '', '8', 'McKesson Hydrogen Peroxide 16 oz', 'WC40003BM', ' 0110612479166438  ', '   ', '<div class=\"_-dX f\" xss=\"removed\"><div class=\" _-bo\" xss=\"removed\"><span class=\" _-bm\" xss=\"removed\">McKesson</span> · <span class=\" _-bm\" xss=\"removed\">Antiseptic</span></div></div><div class=\"_-bq\" xss=\"removed\"><p class=\"sh-ds__desc\" xss=\"removed\"><span class=\"sh-ds__full\">Image shown is for reference purposes only. The actual product appearance may vary. Hydrogen Peroxide is used as a first aid antiseptic and cleansing agent. At full strength, it can also be used to clean minor cuts and abrasions</span></p></div>', 0.0000, 0.0000, 0.0000, 0.0000, 2.50, 1.15, 'wc40003bm.jpg', 'McKesson Hydrogeb Peroxide 16oz.jpg', 1, 0, 1513287959, 0, 1513288483),
(137, '', 1, '', 13, '', '', '8', 'McKesson Stretch Vinyl Exam Gloves', 'EXD14138MCK', ' 0120612479150625 ', '  ', '<p xss=\"removed\"><strong xss=\"removed\">McKesson Stretch Vinyl Exam Gloves</strong> are an economical choice when you are in need of powder-free, non-sterile vinyl gloves. Superb quality and extremely comfortable even if worn for extended periods of time. These vinyl exam gloves offer great strength and are made to accommodate those with latex allergies.</p><p xss=\"removed\">These McKesson <a href=\"https://www.vitalitymedical.com/vinyl-gloves.html\" xss=\"removed\"><strong xss=\"removed\">vinyl exam gloves</strong> </a>are perfect for many applications and uses, including home use, food preparation and handling, as well as laboratory work.</p><p xss=\"removed\"><strong xss=\"removed\">Powder Free Vinyl Exam Gloves Features</strong></p><ul xss=\"removed\"><li xss=\"removed\">Latex Free</li><li xss=\"removed\">Powder Free</li><li xss=\"removed\">Ambitextrous Fitting</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 5.95, 4.80, 'exd14138mck.jpg', 'STERI-STRIP Skin Closure, Reinforced Adhesive,.jpg', 1, 1, 1513610584, 0, 1513610618),
(138, '', 1, '', 37, '', '', '40', 'Rapid Care Instant Cold Pack', 'WC80012BOM', ' 89119100012  ', '   ', '<span xss=\"removed\">Instant Cold Pack 5\" x 6\"Rapid Care first aid Single use cold packs Ideal for minor sports injuries and strains No refrigeration needed - 24 Units</span>', 0.0000, 0.0000, 0.0000, 0.0000, 5.25, 3.95, 'wc80012bom.jpg', 'Rapid Care Instant Cold Pack.jpg', 1, 1, 1513611637, 0, 1513611651),
(139, '', 33, '', 34, '', '', '9', 'Omron CompAir Nebulizer System NE-C801', 'ME801BOM', ' 7379645801 ', '  ', '<div class=\"short-description info-list\"><ul><li>Fits easily on any surface 3.5 times smaller and 75% lighter than most other compressor nebulizers</li><li>CompAir is easy and fast to set up and use</li><li>CompAir produces a fine mist</li><li>Runs quietly - comparable to a refrigerator</li><li>This new model replaces Omron NE-C25</li><li>Lightweight</li><li>Fast Treatment <br></li></ul>                        </div>', 0.0000, 0.0000, 0.0000, 0.0000, 53.57, 32.87, 'me801bom.jpg', 'NE-C801.jpg', 1, 1, 1513612532, 0, 1513612661),
(140, '', 33, '', 34, '', '', '22', 'Therapeutic Gel Beads Eye Mask', 'HW70001KI', ' 31015249466 ', '  ', 'The Therapeutic gel beads eye mask helps to tighten skin to help you look younger, reduces eye puffiness and dark circles, and helps to <br>\r\nrelieve headaches and sinus pressure. This can be used for therapeutic heat or cold treatments. And has an adjustable straps for a perfect fit.', 0.0000, 0.0000, 0.0000, 0.0000, 9.99, 6.99, 'hw70001ki.jpg', 'Therapeutic Gel Beads.jpg', 1, 1, 1513613096, 0, 1513613169),
(141, '', 1, '', 12, '', '', '14', 'COVIDIEN Kerlix Bandage Roll 2.25 x 3 yd', 'WC21801BOM', '110884521058446       ', '       ', '<div class=\"h5 mb2\" xss=\"removed\"><div class=\"h5 mb2\" xss=\"removed\"><p class=\"h5\" xss=\"removed\">Kerlix Rolls are made of pre-washed, fluff dried, 100% woven gauze with unique, crinkle-weave pattern for loft and bulk. Kerlix Rolls provide fast wicking action, superior aeration, and excellent absorbency. Finished edges on the product reduce loose ends and lint. This product is available in 6- and 8-ply.Prewashed, fluff-dried, 100% woven gauze with unique, crinkle-weave pattern.6-ply construction with finished edges reduces loose ends and lint.As primary dressing, open-weave design provides fast wicking action, superior aeration and excellent absorbency.As secondary dressing it provides bulk, cushioning and ultimate conformability.Available in a variety of sizes and packaging.</p></div><ul class=\"h5\" xss=\"removed\"><li xss=\"removed\">100% Cotton pre-washed woven gauze</li><li xss=\"removed\">6 Ply</li><li xss=\"removed\">Large 4.5\" x 4 1/8 Yard</li><li xss=\"removed\">Soft & fluffy</li><li xss=\"removed\">Made in USA</li></ul><h2 class=\"secHd\"><br></h2></div>', 0.0000, 0.0000, 0.0000, 0.0000, 2.15, 0.82, 'wc21801bom.jpg', 'Kerlix Bandage Roll.jpg', 1, 1, 1513614118, 0, 1513616938),
(142, '', 1, '', 36, '', '', '11', 'Kole Imports OC280 OC280 Cooling Gel Pillow ', 'HW70002KI', ' 3101519072 ', '  ', '<ul><li><span class=\"a-list-item\"> Ideal for flu and fever, this cooling gel pillow absorbs and </span></li><li><span class=\"a-list-item\">\r\ndissipates heat through the night while helping maintain an optimal </span></li><li><span class=\"a-list-item\">\r\nsleep temperature.</span></li><li><span class=\"a-list-item\">\r\n       No refrigeration required, just place under the pillow and it will help you sleep cooler and better.</span></li><li><span class=\"a-list-item\">\r\n       Measures approximately 16x 12. Comes packaged in a Hanging box. Measures approximately 12.25x 1x 9.25.</span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 24.95, 12.03, 'hw70002ki.jpg', 'cooling gel pillow.jpg', 1, 1, 1513614382, 0, 1513614466),
(143, '', 1, '', 12, '', '', '14', 'COVIDIEN KERLIX Bandage Roll\r\n4-1/2 x 4-1/8 yd', 'WC23324BOM', ' 0110884521058446     ', '      ', '<h2 class=\"secHd\"><br><div class=\"h5 mb2\" xss=\"removed\"><p class=\"h5\" xss=\"removed\">Kerlix Rolls are made of pre-washed, fluff dried, 100% woven gauze with unique, crinkle-weave pattern for loft and bulk. Kerlix Rolls provide fast wicking action, superior aeration, and excellent absorbency. Finished edges on the product reduce loose ends and lint. This product is available in 6- and 8-ply.Prewashed, fluff-dried, 100% woven gauze with unique, crinkle-weave pattern.6-ply construction with finished edges reduces loose ends and lint.As primary dressing, open-weave design provides fast wicking action, superior aeration and excellent absorbency.As secondary dressing it provides bulk, cushioning and ultimate conformability.Available in a variety of sizes and packaging.</p></div><ul class=\"h5\" xss=\"removed\"><li xss=\"removed\">100% Cotton pre-washed woven gauze</li><li xss=\"removed\">6 Ply</li><li xss=\"removed\">Large 4.5\" x 4 1/8 Yard</li><li xss=\"removed\">Soft & fluffy</li><li xss=\"removed\">Made in USA</li><li></li></ul><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td class=\"attrLabels\"></td><td width=\"50%\"></td><td class=\"attrLabels\"></td><td width=\"50%\"></td></tr><tr><td class=\"attrLabels\" xss=\"removed\"></td><td width=\"50%\" xss=\"removed\"></td></tr></tbody></table></h2>', 0.0000, 0.0000, 0.0000, 0.0000, 4.75, 3.84, 'wc23324bom.jpg', 'COVIDIEN KERLIX Bandage 2.jpg', 1, 1, 1513616438, 0, 1513617609),
(144, '', 1, '', 12, '', '', '8', 'Mckesson Cotton Gauze Bandage Roll\r\n', 'WC20002BOM', ' 30642000 ', '  ', '<ul><li>Application  Conforming Dressing</li><li>Color  White</li><li>Dimensions 4.5 Inch X 4.1 Yard</li><li>Material  Cotton Gauze</li><li>Ply  1-Ply</li><li>Shape  Roll</li><li>Sterility  Sterile</li><li>Latex Free Indicator  Not Made with Natural Rubber Latex</li><li>Features</li><li>Medi-Pak™ Performance Gauze Bandage Rolls</li><li>3.6  to 4.1 yds., Stretched</li><li>Sterile or Non-Sterile</li><li>Pre-washed 100% woven gauze.</li><li>Lofty and bulky for added cushioning and wound protection.</li><li>Fast-wicking and absorbent.</li><li>Conformable.</li><li>Use as a primary or secondary dressing.</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 5.07, 1.25, 'wc20002bom.jpg', 'mckesson-cotton-gauze-bandage-roll-76a.jpg', 1, 1, 1513618094, 0, 1513618127),
(145, '', 1, '', 14, '', '', '6', 'Medline Tongue Depressors', 'EXD2420MCK', ' 0130080196158762     ', '      ', '<div class=\"row\" xss=\"removed\"><div class=\"col-lg-12 col-sm-12 cols-md-12 col-xs-12\" xss=\"removed\"><div class=\"wag-accordion-tab\" xss=\"removed\"><div class=\"wag-accordion-tab-content\" id=\"Description-0\" name=\"description-Details\" xss=\"removed\"><div xss=\"removed\"><div xss=\"removed\"><span xss=\"removed\">High quality wood • Useful for spreading ointments and for stirring and mixing medications</span><br xss=\"removed\"><br xss=\"removed\"><p class=\"mb0\" xss=\"removed\"><br></p></div></div></div></div></div></div>', 0.0000, 0.0000, 0.0000, 0.0000, 13.85, 12.25, 'exd2420mck.jpg', 'Medline Tongue Depressors.jpg', 1, 1, 1513619873, 0, 1513620277),
(146, '', 1, '', 4, '', '', '41', 'Cottonelle Flushable Cleansing Cloths Fresh Care Refill', 'PHC40001BOM', ' 360007244  ', '   ', '<br><ul><li><span class=\"a-list-item\">Flushable</span></li><li><span class=\"a-list-item\">\r\n                    Sewer & Septic Safe</span></li><li><span class=\"a-list-item\">\r\n                    Breaks Up After Flushing</span></li><li><span class=\"a-list-item\">\r\n                    Alcohol-Free</span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 6.48, 2.55, 'phc40001bom.jpg', 'Cottonelle.jpg', 1, 1, 1513631103, 0, 1513631126),
(147, '', 1, '', 13, '', '', '42', 'Power Free latex Textured Examination Gloves (Small)', 'EXDIS90001', ' 0100097604311014   ', '    ', '<div xss=\"removed\"><span xss=\"removed\"><font color=\"#747474\" face=\"proxima-nova, sans-serif\">Power Free latex Textured Examination Gloves</font></span></div><div xss=\"removed\"><span xss=\"removed\"><font color=\"#747474\" face=\"proxima-nova, sans-serif\"><br></font></span></div><span xss=\"removed\">Advanced natural rubber latex material formulation features improved tactile sensitivity, superior elasticity for reduced hand fatigue, and excellent barrier protection. Double-chlorination process ensures added strength. </span><br xss=\"removed\"><span xss=\"removed\">* FDA 510(k) Approved as a Medical Device. </span><br xss=\"removed\"><span xss=\"removed\">* Meets and Exceeds ASTM D3578 Specification for Latex Examination Gloves for Medical Application. </span><br xss=\"removed\"><span xss=\"removed\">* Meets and Exceeds ASTM F1671 Test Method for Resistance of Materials by Blood-Borne Pathogens (Viral Penetration). </span><br xss=\"removed\"><span xss=\"removed\">* Manufacturing certified ISO 9001 for Quality Management Systems. </span><br xss=\"removed\"><span xss=\"removed\">* Manufacturing certified ISO 13485 for Quality Management Systems for Medical Devices.</span>', 0.0000, 0.0000, 0.0000, 0.0000, 7.50, 6.00, 'exdis90001.jpg', 'Tronix Power Free Glove.jpg', 1, 1, 1513632757, 0, 1513632857),
(148, '', 1, '', 35, '', '', '22', '10/Pcs Disposable Paper Toilet Seat Cover', 'MIS0008KI', ' 31015188413 ', '  ', '<span class=\"_Tgc\">A <b>toilet seat cover</b> or <b>toilet</b> sheet is a disposable piece of paper shaped like the <b>toilet seat</b> itself that can be placed on the <b>seat</b> by its user. Its purpose is to protect the <b>toilet\'s</b> user from germs that may be resting on the <b>seat</b> by creating a protective barrier.</span>', 0.0000, 0.0000, 0.0000, 0.0000, 9.45, 3.60, 'mis0008ki.png', 'toilet covers.png', 1, 1, 1513632822, 0, 1513632876),
(149, '', 0, '', 13, '', '', '42', 'Power Free latex Textured Examination Gloves (Medium)\r\n', 'EXDISO90002', ' 0100097604311021', ' ', '<div xss=\"removed\" xss=removed><span xss=\"removed\"><font color=\"#747474\" face=\"proxima-nova, sans-serif\">Power Free latex Textured Examination Gloves</font></span></div><div xss=\"removed\" xss=removed><span xss=\"removed\"><font color=\"#747474\" face=\"proxima-nova, sans-serif\"><br></font></span></div><span xss=\"removed\" xss=removed>Advanced natural rubber latex material formulation features improved tactile sensitivity, superior elasticity for reduced hand fatigue, and excellent barrier protection. Double-chlorination process ensures added strength. </span><br xss=\"removed\" xss=removed><span xss=\"removed\" xss=removed>* FDA 510(k) Approved as a Medical Device. </span><br xss=\"removed\" xss=removed><span xss=\"removed\" xss=removed>* Meets and Exceeds ASTM D3578 Specification for Latex Examination Gloves for Medical Application. </span><br xss=\"removed\" xss=removed><span xss=\"removed\" xss=removed>* Meets and Exceeds ASTM F1671 Test Method for Resistance of Materials by Blood-Borne Pathogens (Viral Penetration). </span><br xss=\"removed\" xss=removed><span xss=\"removed\" xss=removed>* Manufacturing certified ISO 9001 for Quality Management Systems. </span><br xss=\"removed\" xss=removed><span xss=\"removed\" xss=removed>* Manufacturing certified ISO 13485 for Quality Management Systems for Medical Devices.</span>', 0.0000, 0.0000, 0.0000, 0.0000, 7.50, 6.00, '', '', 1, 1, 1513633231, 0, 0),
(150, '', 1, '', 9, '', '', '43', 'MABIS Dispos-A-Scope Single-Patient Stethoscope, Blue', 'EXD0004BM', ' 67056448018  ', '   ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Designed for single-patient use to prevent cross contamination in infectious situations. Single Head Stethoscope Remarkable acoustic performance. Features a plastic binaural and ultra sensitive plastic chestpiece. Plastic binaural and ultra sensitive plastic chestpiece 30\" Y-tubing Latex-free.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 2.79, 2.74, 'exd0004bm.jpg', 'stethoscope.jpg', 1, 1, 1513633265, 0, 1513633280),
(151, '', 16, '', 19, '', '', '44', 'Alere Drugs Of Abuse Test Cup', 'EXD0004BM', ' 00817405020232  ', '   ', '<div class=\"txtBold marginLeft SB_s BLOCK\" xss=\"removed\"><br><ul><li><span class=\"more\">All inclusive 12-panel drug test is CLIA Waived with integrated test strip.</span></li><li><span>\r\n                                    Tamper resistant and results within 5 minutes.</span></li><li><span>\r\n                                    Tests for: COC, THC, OPI, AMP, MAMP, PCP, BZO, BAR, OXY, MTD, TCA and MDMA+ Adulterants</span></li><li><span>\r\n                                    25 per case</span></li></ul></div>', 0.0000, 0.0000, 0.0000, 0.0000, 2.50, 2.74, 'exd0004bm.jpg', 'Alere.jpg', 1, 1, 1513634222, 0, 1513634252),
(152, '', 1, '', 43, '', '', '45', 'Welch-Allyn Ear Speculum KleenSpec® 521 Series Plastic Black 4 mm Disposable', 'EXD0006BM', ' 0100732094230512  ', '   ', '<ul><li><p>Color : Black</p></li><li><p>Application : Ear Speculum</p></li><li><p>Usage : Disposable</p></li><li><p>Dimensions : 4 mm</p></li><li><p>Material : Plastic</p></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 50.68, 42.31, 'exd0006bm.jpg', 'ear spectrum.jpg', 1, 1, 1513699111, 0, 1513699128),
(153, '', 1, '', 36, '', '', '22', 'New Brand Extra Long Arm Extension Reacher Grabber Easy Reach Pick Up', 'MOB0001KI', ' 015964782456 ', '  ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">The Easy Grip Reacher is an essential independent-living tool. Specially designed squeeze grip allows you to use your full hand strength to pick up items. Reaching tool extends your reach by 31 for safe and convenience without bending or straining. Padded grabbers open to 3W and hold up to 5 lbs. Grabber tool measures 70L x 60W. Durable, lightweight aluminum weighs just 400g. No assembly required.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 1.90, 1.81, 'mob0001ki.jpg', 'easy reach.jpg', 1, 1, 1513700142, 0, 1513700192),
(154, '', 1, '', 36, '', '', '11', 'Kole Imports Elastic Ankle Support Counter top Display', 'PC0014KI', ' 14007155229 ', '  ', '<span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Two ankle supports. Comfortable to wear, Suitable for common sports activities, Use everyday or as needed. Fits male or female <br>\r\nankles.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 14.74, 7.44, 'pc0014ki.jpg', 'ankle support.jpg', 1, 1, 1513701409, 0, 1513701429),
(155, '', 1, '', 36, '', '', '22', '5.4 Yd. Long x 2 Inch Wide, General Purpose Elastic Bandage', 'PC0015KI', ' 31015115846 ', '  ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Swift First Aid Elastic Bandage Wrap measuring 2\'\' X 5.4 yd is suitable for applications that need higher compressions. Cost-effective wrap offering consistent pressure comes with clips.</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 5.20, 2.45, 'pc0015ki.jpg', 'elastic bandage.jpg', 1, 1, 1513703716, 0, 1513703737),
(156, '', 1, '', 36, '', '', '46', 'Lifeweartech Knee Support Brace', 'PC0016KI', ' 14007154222  ', '   ', '<span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Pull-over design - Soft fabric - Ensures proper range of motion - Helps speed recovery from minor aches and pain</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 5.16, 2.00, 'pc0016ki.jpg', 'knee support.jpg', 1, 1, 1513703945, 0, 1513703956),
(157, '', 1, '', 36, '', '', '46', '(2pk) Lifeweartech Wrist Support', 'PC0017KI', ' 14007153225 ', '  ', '<span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Set of 2 - Wrist Supports Brand: Lifeweartech Elastic support for weak wrists Pull-over design Soft fabric Breathable Won\'t roll or lose elasticity with washing Light support ...<br></span></span><ul><li><span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">One Size Fits All</span></span></li></ul><em></em>', 0.0000, 0.0000, 0.0000, 0.0000, 5.95, 3.68, 'pc0017ki.jpg', 'wrist.jpg', 1, 1, 1513704233, 0, 1513704255),
(158, '', 1, '', 36, '', '', '22', 'Emoticon Face Squeeze Ball', 'PC0017KI', '   31015248858 ', '    ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Emoticon Face Squeeze Balls will get your celebration bouncing! These silly stress balls are the perfect favor bag stuffers for birthday parties, classroom celebrations, and everyday fun. Stress balls are approximately 3. Please every guest at your gathering with fun favors, toys, and gifts!...</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 1.95, 0.83, 'pc0017ki.jpg', 'wrist.jpg', 1, 1, 1513704514, 0, 1513704582),
(159, '', 1, '', 36, '', '', '22', 'Emoticon Face Squeeze Ball', 'HW70003KI', ' 31015248858 ', '  ', '<span class=\"sh-ds__full\" xss=\"removed\"><span class=\"sh-ds__full-txt\">Emoticon Face Squeeze Balls will get your celebration bouncing! These silly stress balls are the perfect favor bag stuffers for birthday parties, classroom celebrations, and everyday fun. Stress balls are approximately 3. Please every guest at your gathering with fun favors, toys, and gifts.....</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 1.95, 0.83, 'hw70003ki.jpg', 'emotion stress balls.jpg', 1, 1, 1513704758, 0, 1513704789),
(160, '', 1, '', 44, '', '', '6', 'Exam Table Paper Crepe 18in x 125ft White ', 'EXD0007BOM', ' 29830935   ', '    ', '<div align=\"justify\"><span>Exam Table, Standard, Crepe, 18\"x125\'ft</span><br><span></span></div><span>Exam Table Paper: strong, absorbent table paper protects exam tables from dirt and moisture while offering comfort and protection for patients. Choose from smooth or crepe finish (crepe is softer, quieter and more absorbent). Crepe is also more textured which will help prevent it from sliding on surfaces. Available in standard and deluxe grades. Deluxe grade features a heavier basis weight paper. All rolls are mechanically metered for exact length, and individually poly bagged for cleanliness during shipment and storage. White. Standard Crepe, 18\" x 125 ft.</span>', 0.0000, 0.0000, 0.0000, 0.0000, 38.84, 30.15, 'exd0007bom.jpg', 'Table Paper.JPG', 1, 1, 1513705683, 0, 1513706812),
(161, '', 1, '', 45, '', '', '8', 'Exam Gown Large Tissue / Poly / Tissue White Adult, 50EA/CS', 'EXD0007BOM', '  014061247919      ', '       ', '<ul><li>McKesson Exam Gowns</li><li>Deluxe Tissue/Poly/Tissue</li><li>30 X 42 Inch, White</li><li>Waist Belt</li><li>Provides knee-length privacy and helps protect against fluid strike-through</li><li>Front/back opening</li><li>Not made with natural rubber latex.</li><li>Packaged: 50 Per Case<br></li></ul><br><ul><li>Fastening Type : Waist Tie</li><li>Sterility : Non Sterile</li><li>User : Adult</li><li>Color : White</li><li>Size : Large</li><li>Application : Exam Gown</li><li>Usage : Disposable</li><li>Dimensions : 30 X 42 Inch</li><li>Latex Free Indicator : Not Made with Natural Rubber Latex</li><li>Material : Tissue / Poly / Tissue</li><li>Sleeve Style : Short Sleeve</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 49.25, 30.73, 'exd0007bom.jpg', 'exam gowns.jpg', 1, 1, 1513706387, 0, 1513706894),
(162, '', 1, '', 36, '', '', '47', 'Hip Kit with 26\" Reacher, Contoured Sponge, Sock Aid, 18\" Plastic Shoehorn and Dressing Stick', 'PC860070BOM', ' 0156874325418947536  ', '   ', 'This FabLife Hip Kit includes a collection of Aids-To-Daily Living (ADL) products in one convenient package. Minimize the dependence on others by using these essential items to assist with bathing, dressing and other daily living activities. This kit is ideal for people recovering from hip, knee or back surgeries, easing the recovery process. All items included help people avoid the need to need to bend at the hip, giving freedom to people with a limited range of motion. <b>Hip Kit with 26\" Reacher, Contoured Sponge, Sock Aid, 18\" Plastic Shoehorn and Dressing Stick:</b> <br><ul><li>FabLife</li><li>\r\n Hip Kits include a carefully picked collection of essential items to assist with bathing, dressing and other daily living activities</li><li>Includes 26\" reacher, contoured sponge, formed sock aid, 18\" plastic shoehorn and 24\" dressing stick</li><li>Grab items in hard to reach places, put on and take off socks and shoes with ease, wash hard to reach areas and make getting dressed in the morning easy</li><li>Perfect for people recovering from hip replacement, knee or back surgeries</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 39.75, 22.00, 'pc860070bom.jpeg', 'fab life.jpeg', 1, 1, 1513707218, 0, 1513707317),
(163, '', 16, '', 46, '', '', '22', 'First Aid Kit Ideal for home, car or office ', 'WC10005KI', ' 31015228751 ', '  ', '<span id=\"Skin_ctl06_WB_POTID842_ProductDescription\" class=\"productDetail\">A comprehensive first aid kit for the home, car or small office.  The First Aid Kit PLUS includes all the essential first aid items for <br>\r\ntreating cuts, scrapes, burns and other emergencies that may arise. Items are arranged in labeled pockets to make it easy to find exactly <br>\r\nwhat you need.  A removal inside pouch allows you to gather essential first aid items for a smaller more portable kit on the run.<br></span><ul><li><span id=\"Skin_ctl06_WB_POTID842_ProductDescription\" class=\"productDetail\">Easy Access Pocket Kit.</span></li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 20.95, 16.36, 'wc10005ki.jpg', 'fistr aid kit.jpg', 1, 1, 1513707872, 0, 1513707899),
(164, '', 1, '', 47, '', '', '8', 'McKesson Specimen Container Polypropylene / Polyethylene Screw Cap 100 mL (4 oz.) Sterile', 'WC10006KI', ' 0140612479188806 ', '  ', '<span class=\"sh-ds__trunc\"><span class=\"sh-ds__trunc-txt\">Specimen Container McKesson Polypropylene Screw Cap 120 mL (4 oz.)</span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 2.10, 1.15, 'wc10006ki.jpg', 'speciment container.jpg', 1, 1, 1513708785, 0, 1513708840),
(165, '', 1, '', 4, '', '', '48', 'Multi Purpose Disinfectant Cavi Wipes', 'WC10194100', ' 0100615375005040   ', '    ', '<ul xss=\"removed\"><li xss=\"removed\">1-minute contact time for virucidal, bactericidal (including TB), fungicidal activity</li><li xss=\"removed\">1-step cleaner and disinfectant</li><li xss=\"removed\">Bleach-free</li><li xss=\"removed\">Fragrance Free</li><li xss=\"removed\">Manufacturer: Metrex Research</li><li xss=\"removed\">Brand: CaviWipes1</li><li xss=\"removed\">Application: Surface Disinfectant</li><li xss=\"removed\">Type: Premoistened</li><li xss=\"removed\">Usage: Disposable</li><li xss=\"removed\">Container Type: Canister</li><li xss=\"removed\">Storage Requirements: USP Controlled Room Temperature</li><li xss=\"removed\">Scent: Alcohol Scent</li><li xss=\"removed\">Dispensing Method: Manual Pull</li><li xss=\"removed\">Form: Wipe</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 13.45, 12.12, 'wc10194100.jpg', 'Multi Purpose Disinfectant Cavi Wipes.jpg', 1, 1, 1513868289, 0, 1513868315),
(166, '', 1, '', 4, '', '', '8', 'McKesson Obstetrical Antiseptic Towelettes', 'EXD62881810', ' 0120612479208852   ', '    ', '<p xss=\"removed\"><strong xss=\"removed\">McKesson Obstetrical Antiseptic Towelettes</strong> from HealthyKin.com help prevent the risk of skin infection. They are are ideal for obstetrical and perineal use and maternity care.<br xss=\"removed\"><br xss=\"removed\"><strong xss=\"removed\">McKesson Obstetrical Antiseptic Towelettes Features:</strong></p><ul xss=\"removed\"><li xss=\"removed\">Disposable towelettes are a convenient cleansing solution</li><li xss=\"removed\">Ideal for obstetrical and perineal use and maternity care</li><li xss=\"removed\">Individually wrapped</li><li xss=\"removed\">Sterile</li><li xss=\"removed\">5\" x 7\" towelettes</li><li xss=\"removed\">Lightly scented</li><li xss=\"removed\">Sting-free</li><li xss=\"removed\">Latex free</li><li xss=\"removed\">Active ingredient: benzalkonium chloride 0.13% w/v</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 3.65, 2.65, 'exd62881810.jpg', 'Mckesson Obstetrical Antiseptc Towelettes.jpg', 1, 1, 1513872754, 0, 1513877430),
(167, '', 1, '', 12, '', '', '22', 'Non-Slip Shower Mat with suction cups', 'WC10194100', ' 731015215836 ', '   ', '<span xss=removed><span> </span>New 20\" X 20\" Non Slip Shower Bath Tub Safety Step Durable Material Pad Rug With Suction Cups !<span> </span></span><br xss=removed><span xss=removed>Suction cups for fixing, protect your family and your security.<span> </span></span><br xss=removed><span xss=removed>Its innovative design will keep you safe while complementing your bathroom decor.<span> </span></span><br xss=removed><span xss=removed>The mat is suitable for bathroom, bathtub, kitchen, hotels, restaurants, hospitals, balcony, etc.<span> </span></span><br xss=removed><span xss=removed>Great for walk-in showers, this Non-Slip Shower Mat features durable, soft material and built-in suction cups.<span> </span></span><br xss=removed><span xss=removed>Measures approximately 20\" x 20\".<span> </span></span><br xss=removed><span xss=removed>Comes packaged with a wrap around. 1 New 20\" X 20\" Non Slip Shower Bath Tub Safety Step Durable Material Pad Rug With Suction Cups !<span> </span></span><br xss=removed><span xss=removed>Suction cups for fixing, protect your family and your security.<span> </span></span><br xss=removed><span xss=removed>Its innovative design will keep you safe while complementing your bathroom decor.<span> </span></span><br xss=removed><span xss=removed>The mat is suitable for bathroom, bathtub, kitchen, hotels, restaurants, hospitals, balcony, etc.<span> <br></span></span>', 0.0000, 0.0000, 0.0000, 0.0000, 13.25, 11.02, 'wc10194100.jpg', 'NON-SLIP SHOWER MAT.jpg', 1, 1, 1513966717, 0, 1513966748);
INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `modified_date`) VALUES
(168, '', 33, '', 34, '', '', '10', 'Child Compressor Nebulizer Model S5200', 'MES5200BOM', ' S5200  ', '   ', '<p xss=removed>The Allied Healthcare Schuco Nebulizer includes a compressor, nebulizer cup, angled mouthpiece, mask, 6 feet of oxygen tubing, and five extra compressor filters.</p><p xss=removed><b xss=removed>Warranty:</b><span> </span>5 Years - Limited.</p><p xss=removed>The Schuco Nebulizer is completely self enclosed for ease of cleaning. Its new lightweight, compact design and damage-resistant plastic makes it easy to transport.</p><p xss=removed>The Nebulizer administers medication in the form of a mist inhaled by the patient, in order to treat illnesses such as asthma, cystic fibrosis, and more. The Schuco 5000 Nebulizer contains a compartment to store the cord. The Schuco 5200 Pediatric Nebulizer takes the shape of an adorable panda as to appear friendly for children.</p><h3 class=\"ghost\" xss=removed>Accessories</h3><h4 xss=removed>Allied Healthcare Schuco Nebulizer Accessories</h4><p xss=removed>The Schuco Nebulilzer is commonly purchased with:</p><ul xss=removed><li xss=removed>Replacement Nebulizer Kit - Nebulizer Cup, 7\' Clear Tubing, Mouthpiece, Tee, (50x) 6\" Flex Tubes (#61399).</li><li xss=removed>Replacement Nebulizer Kit - Nebulizer Cup, 7\' Clear Tubing, Mouthpiece, (50x) Tees (#61400).</li><li xss=removed>Aerosol Mask - Adult with Nebulizer and (50x) 7\' Clear Tubing (#64085).</li><li xss=removed>Aerosol Mask - Pediatric with Nebulizer and (50x) 7\' Clear Tubing (#64095).</li><li xss=removed>AC to DC Power Converter for use in car (#88100).</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 50.77, 45.78, 'mes5200bom.jpg', 'CHILD COMPRESSOR NEBULIZER MODEL S5200.jpg', 1, 1, 1513967439, 0, 1513967654),
(169, '', 16, '', 17, '', '', '9', 'OMRON BLOOD PRESSURE MONITOR HEM 7200', 'EXDHEM7200', ' 4975479494420  ', '   ', '<p xss=\"removed\"><span xss=\"removed\">This fully automatic upper arm monitor is designed with both comfort and accuracy in mind. The Intellisense ™ Technology ensures that cuff inflates neither too tightly or too loosely. Our unique cuff wrapping guide icon shows when the cuff is wrapped correctly</span></p><p xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\"><span xss=\"removed\">Technical data</span></span></span></p><table class=\"aliDataTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" xss=\"removed\"><tbody xss=\"removed\"><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">product description</span></td><td xss=\"removed\"><span xss=\"removed\">automatic wrist blood pressure monitor</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">model</span></td><td xss=\"removed\"><span xss=\"removed\">HEM-7200</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">display</span></td><td xss=\"removed\"><span xss=\"removed\">LCD digital display</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">measurement method</span></td><td xss=\"removed\"><span xss=\"removed\">oscillometric method</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">measurement range</span></td><td xss=\"removed\"><p xss=\"removed\"><span xss=\"removed\">pressure:0mmHg to 299mmHg</span></p><p xss=\"removed\"><span xss=\"removed\">pulse:40 to 180 beats/min</span></p></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">accuracy</span></td><td xss=\"removed\"><p xss=\"removed\"><span xss=\"removed\">pressure:±3mmHg</span></p><p xss=\"removed\"><span xss=\"removed\">pulse:±5% of reading</span></p></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">inflation</span></td><td xss=\"removed\"><span xss=\"removed\">automatic inflation by pump</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">deflation</span></td><td xss=\"removed\"><span xss=\"removed\">automatic rapid deflation</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">memory</span></td><td xss=\"removed\"><span xss=\"removed\">60 measurements</span></td></tr><tr xss=\"removed\"><td xss=\"removed\"><span xss=\"removed\">measurable wrist circumference</span></td><td xss=\"removed\"><span xss=\"removed\">13.5 to 21.5 cm</span></td></tr></tbody></table>', 0.0000, 0.0000, 0.0000, 0.0000, 65.00, 40.00, 'exdhem7200.jpg', 'OMRON Automatic Blood Pressure Monitor.jpg', 1, 1, 1514565034, 0, 1514565182);

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
(48, 'Metrex', '', '', '', '', '', '', '', 0, 0);

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
(1, 'Evelio ', 'evelio@mailers.com', '$2y$11$jekUbWMbzfOQw5ihj6skfetb994DKRT6j6hbby3Qi8QbFa5.mFYHG', '1505509944RyR6mBU57HUrvAp685NZ', 1, 0, 0, 1503167117, 'annon_user.png', 1, 1, 1513965704, 1507431706, 1502490142, 0),
(10, 'JKingsley', 'joe@mailers.com', '$2y$11$yn/iXTQuR/FTIhw/8/MMIeMuDuw8l8pwrD9DZDy/jLdJqDWZSS3EK', '', 1, 0, 0, 0, '', 10, 1, 1513965393, 1507863315, 0, 0),
(11, 'SOwner-U67M', 'owner@jdmedicalsupplies.org', '$2y$11$/NzhnywTDHLngZUg3412.Ox1M6UpM89PJHSn/rPEwuYKEKe2cnE9a', '', 1, 0, 0, 0, '', 0, 0, 1514564370, 0, 1512678189, 0);

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
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `quickquote`
--
ALTER TABLE `quickquote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `store_accounts`
--
ALTER TABLE `store_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `store_categories`
--
ALTER TABLE `store_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `store_items`
--
ALTER TABLE `store_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
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
