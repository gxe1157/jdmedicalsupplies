-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2017 at 08:44 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medicalsupplies`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_form`
--

CREATE TABLE IF NOT EXISTS `app_form` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `blog` (
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

CREATE TABLE IF NOT EXISTS `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

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
(147, 1509071975, '63.119.119.162', 'q0pqdN');

-- --------------------------------------------------------

--
-- Table structure for table `quickquote`
--

CREATE TABLE IF NOT EXISTS `quickquote` (
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `store_accounts` (
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

CREATE TABLE IF NOT EXISTS `store_categories` (
  `id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `parent_cat_id` int(11) DEFAULT NULL,
  `category_url` varchar(255) NOT NULL,
  `order_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

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
(31, 'Scooters', 0, 'Scooters', 0),
(32, 'Scooters', 27, 'Scooters', 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_cat_assign`
--

CREATE TABLE IF NOT EXISTS `store_cat_assign` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

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
(89, 32, 79);

-- --------------------------------------------------------

--
-- Table structure for table `store_items`
--

CREATE TABLE IF NOT EXISTS `store_items` (
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `modified_date`) VALUES
(2, 'Medical Supply', 0, '', 2, '', '', '0', 'Medline Pad, Maternity, 11 in, with Tails, Non-Sterile', 'NON241280 ', '80196781488', ' ', '<br>\r\nMedline OB Pad with Tails, 11" long Non-sterile 12 per bg, 24 in a case. There is no adhesive strip along the back of the pad.<br>\r\nQuantity : 288 per Case, 24 One-Dozen Bags<br>\r\nSterile :No<br>\r\nLatex-Free : Yes<br>\r\n', 0.0000, 0.0000, 0.0000, 0.0000, 74.52, 55.20, 'NON241280.jpg ', '', 1, 0, 0, 0, 0),
(3, 'Medical Supply', 0, '', 2, '', '', '0', 'VendPink dittie? Vended Tampons', '80011', ' ', ' ', 'VendPink donates 20% of the profits from vended tampons to Y-ME National Breast Cancer Organization. Regular absorbency with pearlized plastic applicator. Packaged in uniquely designed vending tubes with mood-lifting messages on every wrapper.<br>\r\n<br>\r\nQuantity : 300 per Case', 0.0000, 0.0000, 0.0000, 0.0000, 114.24, 84.62, '80011.jpg', '', 1, 0, 0, 0, 0),
(4, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco Maxithins? Vended Sanitary Napkins - 250 per Case', 'MT-4 ', '75289000447', ' ', 'Thin full protection. Folded to fit into #4 box for vending from feminine hygiene dispensers. For use with Hospeco HSC MT 1 and HSC FOCJR-25 vendors both sold separately. Also fits any vendor/feminine hygeine dispenser that vends #4 boxes.<br>\r\n<br>\r\nGrade : #4 Box Size<br>\r\nQuantity : 250 per Case', 0.0000, 0.0000, 0.0000, 0.0000, 56.50, 41.85, 'MT-4.jpg  ', '', 1, 0, 0, 0, 0),
(5, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco Tampons, Original, Regular Absorbency, 500 Tampons/Carton', ' PGC025001', '73010025004', ' ', 'Regular absorbency tampon individually wrapped and in vend-style tube. Tampax?, a name women trust.<br>\r\n<br>\r\nQuantity : 500 Tampons/Carton<br>\r\nAbsorbency : Regular', 0.0000, 0.0000, 0.0000, 0.0000, 112.14, 83.07, ' PGC025001.jpg ', '', 1, 0, 0, 0, 0),
(6, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco ComfortPlus Tampons, 100/Carton', 'HOSMT100FS', '75289068058', ' ', 'Regular absorbency tampon individually wrapped and in vend-style tube. Tampax?, a name women trust.<br>\r\n<br>\r\nQuantity : 100/Carton', 0.0000, 0.0000, 0.0000, 0.0000, 42.61, 31.56, 'HOSMT100FS.jpg ', '', 1, 0, 0, 0, 0),
(7, 'Medical Supply', 0, '', 2, '', '', '0', 'Hospeco 11" Tabbed Maxi Non-Sterile - 12 per Pack', 'HS-74', ' ', ' ', '11" tabbed non-sterile maternity pad.<br>\r\nSize: 11"<br>\r\nQuantity : 12 per Pack<br>\r\nQuantity : 24 Packs per Case<br>\r\nPackaging : Bag Packed', 0.0000, 0.0000, 0.0000, 0.0000, 48.98, 36.28, 'HS-74.jpg ', '', 1, 0, 0, 0, 0),
(8, 'Medical Supply', 0, '', 3, 'Colgate-Palmolive Toothbrush', 'Colgate-Palmolive-Toothbrush', '0', 'Colgate-Palmolive Toothbrush Colgate Adult Soft', '55511700', '35000550101', '', 'Individually Wrapped.<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nApplication: Toothbrush<br>\r\nBristle Head Size: Full<br>\r\nBristle Type: Soft<br>\r\nUNSPSC Code: 53131503<br>\r\nUser: Adult', 0.0000, 0.0000, 0.0000, 0.0000, 0.53, 0.39, '55511700.jpg', '', 1, 0, 0, 0, 0),
(9, 'Medical Supply', 0, '', 3, 'Colgate-Palmolive Toothbrush ', 'Colgate-Palmolive-Toothbrush', '0', 'Colgate-Palmolive Toothbrush Colgate Adult Soft, 144 EA/CS', '55511704', '3500055501', '', 'Individually Wrapped. Individually Wrapped.<br>\r\n<br>\r\nQuantity : 144 EA/CS<br>\r\nApplication: Toothbrush<br>\r\nBristle Head Size: Full<br>\r\nBristle Type: Soft<br>\r\nUNSPSC Code: 53131503<br>\r\nUser: Adult', 0.0000, 0.0000, 0.0000, 0.0000, 79.92, 59.20, '55511704.jpg', '', 1, 0, 0, 0, 0),
(10, 'Medical Supply', 0, '', 3, 'Colgate-Palmolive Powered Toothbrush', 'Colgate-Palmolive-Powered-Toothbrush', '0', 'Colgate-Palmolive Powered Toothbrush Colgate? 360?? Optic White? Adult Soft', '16881700', '35000688606', '', 'Whitens teeth in just 1 week<br><br>\r\nWith special polishing bristles, the 360?? Optic White? Powered Toothbrush polishes away surface stains while cleaning hard to reach places<br><br>\r\nIts dual action head, cheek and tongue cleaner and comfortable non-slip handle create a whole-mouth clean experience<br><br>\r\n<br><br>\r\nUser : Adult<br><br>\r\nBristle Head Size : Full<br><br>\r\nApplication : Powered Toothbrush<br><br>\r\nHandle Type : Non-Slip Grip<br><br>\r\nBristle Type : Soft', 0.0000, 0.0000, 0.0000, 0.0000, 11.87, 8.79, '16881700.jpg', '', 1, 0, 0, 0, 0),
(11, 'Medical Supply', 0, '', 3, '', '', '0', 'Geiss, Destin & Dunn Dental Floss Picks GoodSense Mint, 90 EA/PK', '44501700', '8.46E+11', ' ', 'Easy, convenient, disposable, one-handed flossing. Comfort grip handle.<br>\r\n<br>\r\nQuantity : 90 EA/PK<br>\r\nApplication: Dental Floss Picks<br>\r\nFlavor: Mint<br>\r\nUNSPSC Code: 53131504', 0.0000, 0.0000, 0.0000, 0.0000, 2.24, 1.66, '44501700.jpg', '', 1, 0, 0, 0, 0),
(12, 'Medical Supply', 0, '', 3, '', '', '0', 'McKesson Shower Cap Medi-Pak One Size Fits Most Clear', '10001700', ' ', ' ', 'Medi-Pak Shower Cap. Clear. One Size Fits All. Single Patient Use. Not Made With Natural Rubber Latex.<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nApplication: Shower Cap<br>\r\nColor: Clear<br>\r\nSecuring Method: Elastic<br>\r\nSize: One Size Fits Most<br>\r\nUNSPSC Code: 53131601<br>\r\nUsage: Single Patient Use<br>\r\nLatex Free Indicator: Not Made with Natural Rubber Latex', 0.0000, 0.0000, 0.0000, 0.0000, 0.09, 0.07, '10001700.jpg', '', 1, 0, 0, 0, 0),
(13, 'Medical Supply', 0, '', 3, '', '', '0', 'SECURE Comfort Strips - 15 Strips', '392860', '3.64E+11', ' ', '<br>\r\nExtra Firm Hold for Lower Dentures<br>\r\nThe patented waterproof adhesive that won''t wash away while you''re eating and drinking<br>\r\nZinc Free!<br>\r\nImproves Quality of Life<br>\r\nThe solution for denture wearers with flat/narrow lower jaws.<br>\r\nAssures a secure, strong bond between the lower denture and gum, even in the most difficult cases.<br>\r\n.<br>\r\n<br>\r\nDisclaimer : These statements have not been evaluated by the FDA. These products are not intended to diagnose, treat, cure, or prevent any disease.<br>\r\n<br>\r\nQuantity : 15/EA', 0.0000, 0.0000, 0.0000, 0.0000, 9.19, 6.81, '392860.jpg', '', 1, 0, 0, 0, 0),
(14, 'Medical Supply', 0, '', 3, '', '', '0', 'Procter & Gamble Denture Adhesive Fixodent? Extra Hold 1.6 oz. Powder\r\n', '13511700', '76660725362', ' ', 'Quantity : 1 Each<br>\r\nVolume : 1.6 oz.<br>\r\nApplication : Denture Adhesive<br>\r\nUNSPSC Code : 53131510', 0.0000, 0.0000, 0.0000, 0.0000, 6.90, 5.11, '13511700.jpg', '', 1, 0, 0, 0, 0),
(15, 'Medical Supply', 0, '', 4, '', '', '0', 'McKesson StayDry? Disposable Washcloths w/Aloe, 100-Sheet Soft-Packs, 6PK/CS', '15653100', '1.06E+13', ' ', '12" x 8" (30.5 cm x 20.3 cm)<br>\r\nPre-Moistened<br>\r\nHypoallergenic<br>\r\nDermatologist Tested<br>\r\nNatural Aloe and Vitamin E<br>\r\nSoft and Strong<br>\r\nConvenient Dispensing Lid<br>\r\nAlcohol-Free<br>\r\nNot made with natural rubber latex.<br>\r\nPackaged : 100 Sheets per Pack, 6 Packs Per Case<br>\r\n<br>\r\nQuantity : 6 Packs per Case<br>\r\nWipes : 100 per Pack<br>\r\nSize : 12" x 8"<br>\r\nSterile : No<br>\r\nHCPCS : A4335', 0.0000, 0.0000, 0.0000, 0.0000, 25.03, 18.54, '15653100.jpg', '', 1, 0, 0, 0, 0),
(16, 'Medical Supply', 0, '', 4, '', '', '0', 'Kimberly Clark Professional Fresh Care Flushable Cleansing Cloths, White, 3.75 x 5.5, 42/Pack', 'KCC36734', '36000724424', ' ', 'Fresh Care cleansing cloths leave you feeling cleaner and fresher than toilet paper alone. Cloths give you a shower-fresh feeling that leaves you confidently clean.<br>\r\n<br>\r\nFlushable wipes break up quickly and are sewer and septic safe. These soft wipes are gentle on skin, with just the right amount of moisture to provide the ultimate clean. Alcohol free.<br>\r\n<br>\r\nQuantity : 42 Wipes per Pack<br>\r\nSize : 5.5" x 3.75"<br>\r\nPlys : 1<br>\r\nColor : White<br>\r\nApplication : Personal Wipe<br>\r\nApplicable Material : Skin', 0.0000, 0.0000, 0.0000, 0.0000, 4.68, 3.47, 'KCC36734.jpg ', '', 1, 0, 0, 0, 0),
(17, 'Medical Supply', 0, '', 4, '', '', '0', 'Professional Disposables Hygea? Sanitizing Skin Wipe', '31851201', ' ', ' ', 'Use wherever antiseptic cleansing/refreshing is needed<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nSize : 5" x 7"<br>\r\nScent : Scented<br>\r\nActive Ingredients : Benzalkonium Chloride<br>\r\nApplication : Sanitizing Skin Wipe<br>\r\nUNSPSC Code : 53131624', 0.0000, 0.0000, 0.0000, 0.0000, 0.07, 0.05, '31851201.jpg', '', 1, 0, 0, 0, 0),
(18, 'Medical Supply', 0, '', 4, '', '', '0', 'Kimberly Clark Professional Fresh Care Flushable Cleansing Cloths, White, 5 x 7 1/4, 168/Pack', 'KCC10358EA', '36000103588', ' ', 'Fresh Care cleansing cloths leave you feeling cleaner and fresher than toilet paper alone. Cloths give you a shower-fresh feeling that leaves you confidently clean. Flushable wipes break up quickly and are sewer and septic safe. These soft wipes are gentle on skin, with just the right amount of moisture to provide the ultimate clean. Alcohol free.<br>\r\n<br>\r\nTowel/Wipe Type : Hand/Body Wet Wipe<br>\r\nApplication : Personal Wipe<br>\r\nApplicable Material : Skin<br>\r\nMaterial : Paper<br>\r\nNumber of Plies : 1<br>\r\nColor : White<br>\r\nLength : 7 1/4"<br>\r\nWidth : 5"<br>\r\nPackaging : Pack<br>\r\nNumber of Towels/Wipes Per Container : 168', 0.0000, 0.0000, 0.0000, 0.0000, 11.35, 8.41, 'KCC10358EA.jpg', '', 1, 0, 0, 0, 0),
(19, 'Medical Supply', 0, '', 5, '', '', '0', 'Medline Remedy Olivamine Calazime Skin Protectant Paste - 4 oz', 'MSC094544H', '80196306155', ' ', 'Remedy Olivamine Calazime Skin Protectant Paste has a higher viscosity (thickness) than other skin pastes<br>\r\nNourishes skin, helps treat and prevent diaper rash, wet and cracked skin<br>\r\nCalazime dries light exudates from compromised skin<br>\r\nMenthol cools irritated skin and calms inflamed tissue<br>\r\nSemi-breathable, long-lasting barrier protects torn or exposed skin against harmful stimuli<br>\r\nNourishes skin with amino acids, antioxidants and pain control ingredients<br>\r\nNon-allergenic<br>\r\nNon-sensitizing<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nLatex-Free : Yes<br>\r\nSize : 4 oz<br>\r\nTop Selling Item!', 0.0000, 0.0000, 0.0000, 0.0000, 12.43, 9.21, 'MSC094544H .jpg', '', 1, 0, 0, 0, 0),
(20, 'Medical Supply', 0, '', 5, '', '', '0', 'McKesson No-Rinse Shampoo and Body Wash 8 oz. Squeeze Bottle Light Floral Scent', '27391800', '1.06E+13', ' ', 'McKesson Shampoo &amp; Body Wash No Rinse. 8 oz (237 mL). Formulated to thoroughly clean hear and skin without water. Ideal for use with residents who may be confined to a bed. Absence of artificial dyes helps reduce the risk of irritation and makes it perfect for fragile skin and everyday use. Light floral fragrance creates a relaxing experience. Not Made With Natural Rubber Latex.<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nApplication: No-Rinse Shampoo and Body Wash<br>\r\nContainer Type: Squeeze Bottle<br>\r\nHCPCS: A9270<br>\r\nScent: Light Floral Scent<br>\r\nSize: 8 oz.<br>\r\nUNSPSC Code: 53131628<br>\r\nLatex Free Indicator: Not Made with Natural Rubber Latex', 0.0000, 0.0000, 0.0000, 0.0000, 1.81, 1.34, '27391800.jpg', '', 1, 0, 0, 0, 0),
(21, 'Medical Supply', 0, '', 5, 'McKesson Perineal & Skin Cleanser', 'McKesson-Perineal-Skin-Cleanser', '0', 'McKesson Perineal & Skin Cleanser - 1 Gallon', '83101800', '1.06E+13', '', 'Gentle fresh scent.<br><br>\r\nA single-step, no-rinse formula designed to clean, moisturize and deodorize the skin.<br><br>\r\nThe formula is pH balanced to be gentle and non-irritating on all body areas.<br><br>\r\nThe no-rinse perineal wash aids in emulsifying feces and cleansing urine while added Aloe Vera and Vitamins A, C, & E moisturizers help prevent dryness.<br><br>\r\nIntended for use in helping reduce perineal dermatitis.<br><br>\r\nNot made with natural rubber latex.<br><br>\r\n<br><br>\r\nQuantity : 1 Each<br><br>\r\nSize : 1 Gallon<br><br>\r\nScent : Fresh<br><br>\r\nPH Balance : 6.0 - 7.0', 0.0000, 0.0000, 0.0000, 0.0000, 16.01, 11.86, '83101800.jpg', '', 1, 0, 0, 0, 0),
(22, 'Medical Supply', 1, '', 5, '', '', '4', 'ConvaTec Aloe Vesta? Perineal Wash Spray, 8 oz., Citrus Scent\r\n', '18691801', '1.08E+13', '         ', 'The Aloe Vesta? perineal/skin cleanser is designed for incontinence cleansing. It contains a strong surfactant system to clean and emollients to moisturize.<br><br><br><br><br><br><br><br><br>\r\n<br><br><br><br><br><br><br><br><br>\r\nDispensed as a liquid spray. It is more convenient than soap and water cleansing from a basin.<br><br><br><br><br><br><br><br><br>\r\n<br><br><br><br><br><br><br><br><br>\r\nPlease note: This product does not contain latex.<br><br><br><br><br><br><br><br><br>\r\n<br><br><br><br><br><br><br><br><br>\r\nPlease see package insert for complete instructions for use.<br><br><br><br><br><br><br><br><br>\r\n<br><br><br><br><br><br><br><br><br>\r\nSize : 8 oz<br><br><br><br><br><br><br><br><br>\r\nScent : Citrus<br><br><br><br><br><br><br><br><br>\r\nType : Spray<br><br><br><br><br><br><br><br><br>\r\nApplication : Perineal Wash<br><br><br><br><br><br><br><br><br>\r\nContainer Type : Pump Bottle<br><br><br><br><br><br><br><br><br>\r\nHCPCS : A6250 (Disclaimer)<br><br><br><br><br><br><br><br><br>\r\nUNSPSC Code : 53131613', 0.0000, 0.0000, 0.0000, 0.0000, 4.50, 3.33, '18691801.jpg', '18691801.jpg', 1, 0, 0, 1, 1510015217),
(23, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline 4-Panel Abdominal Binder 12"- Large/XL', 'ORT21300LXL', '1.01E+13', ' ', '12" abdominal binder is made with elastic and a soft material to provide comfort and flexibility. Measurement based upon circumference at the hips.<br>\r\n<br>\r\nFour-panel design helps reduce rolling. Not made with natural rubber latex.<br>\r\n<br>\r\nSize : Large/XL<br>\r\nGender : Unisex<br>\r\nLatex-Free : Yes<br>\r\nLength : 46" - 62"', 0.0000, 0.0000, 0.0000, 0.0000, 16.12, 11.94, 'ORT21300LXL.jpg', '', 1, 0, 0, 0, 0),
(24, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Standard 9" Abdominal Binders-Universal', 'MDS169024.', '1.01E+13', ' ', 'Abdominal Unisize Binder, 9", Fits Sizes 40-62. Elastic. Hook and Loop closure for contoured fit.<br>\r\n<br>\r\nSize : 40"-62"', 0.0000, 0.0000, 0.0000, 0.0000, 20.74, 15.36, 'MDS169024.jpg ', '', 1, 0, 0, 0, 0),
(25, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Standard 9" Abdominal Binders-Universal', 'MDS169022', '1.01E+13', ' ', 'Abdominal Unisize Binder, 9", Fits Sizes 30-45 Elastic. Hook and Loop closure for contoured fit.<br>\r\n<br>\r\nSize : 30"-45"', 0.0000, 0.0000, 0.0000, 0.0000, 17.90, 13.26, 'MDS169022.jpg', '', 1, 0, 0, 0, 0),
(26, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Universal Abdominal Binders-Universal', 'ORT21100', '3.01E+13', ' ', '9" Abdominal Binders: Made with latex-free elastic for optimal support, contact closure for easy adjustment, premium styles are lined and have a tri-panel design to reduce rolling. 27" - 48", Universal.<br>\r\n<br>\r\nSize : 27"-48"<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 19.25, 14.26, 'ORT21100.jpg', '', 1, 0, 0, 0, 0),
(27, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Universal Abdominal Binders-Universal', 'ORT21200', '1.01E+13', ' ', '10" Abdominal Binders: Made with latex-free elastic, contact closure for easy adjustment, premium style is made with a higher quality elastic for longer wear. 27" - 48", Universal.<br>\r\n<br>\r\nSize : 27"-48"<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 15.00, 11.11, 'ORT21200.jpg', '', 1, 0, 0, 0, 0),
(28, 'Medical Supply', 0, '', 6, '', '', '0', 'Medline Universal Abdominal Binders-Universal', 'ORT21300', '3.01E+13', ' ', '12" Abdominal Binders: Made with latex-free elastic for optimal support, contact closure for easy adjustment, premium styles are lined and have a 4-panel design to reduce rolling. 27" - 48", Universal.<br>\r\n<br>\r\nSize : 27"-48"<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 17.33, 12.84, 'ORT21300.jpg', '', 1, 0, 0, 0, 0),
(29, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical Abdominal Binder One Size Fits Most Hook and Loop Closure 30 to 45 Inch 12 Inch Unisex', '88803000', '88803000', ' ', 'The new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels, which may result in skin tears, burns or even scarring<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nHCPCS : A4466<br>\r\nGender : Unisex<br>\r\nWidth : 12 Inch<br>\r\nColor : White<br>\r\nSize : One Size Fits Most<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 30 to 45 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 27.70, 20.52, '88803000.jpg', '88803000.jpg', 1, 0, 0, 0, 0),
(30, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical Abdominal Binder Universal Hook & Loop Closure 30-45" 9" Unisex', '44103000', ' ', ' ', '3 panel design<br>\r\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels<br>\r\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen<br>\r\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place<br>\r\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over<br>\r\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nHCPCS : A4466<br>\r\nGender : Unisex<br>\r\nWidth : 9 Inch<br>\r\nColor : White<br>\r\nSize : Universal<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 30 to 45 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 24.14, 17.88, '44103000.jpg', '', 1, 0, 0, 0, 0),
(31, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical Abdominal Binder, Universal Hook & Loop Closure, 46-62" x 12", Unisex', '81103000', ' ', ' ', '4 panel design<br>\r\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels<br>\r\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen<br>\r\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place<br>\r\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over<br>\r\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nHCPCS : A4462<br>\r\nGender : Unisex<br>\r\nWidth : 12 Inch<br>\r\nColor : White<br>\r\nSize : Universal<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 46 to 62 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 33.21, 24.60, '81103000.jpg', '', 1, 0, 0, 0, 0),
(32, 'Medical Supply', 0, '', 6, '', '', '0', 'Dale Medical 15" Abdominal Binder with Easy Grip?', '92003000', ' ', ' ', '5 panel design<br>\r\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels<br>\r\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen<br>\r\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place<br>\r\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over<br>\r\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia<br>\r\n<br>\r\nWaist Measurement : 82 to 94 Inch<br>\r\nWidth : 15 Inch<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nColor : White<br>\r\nHCPCS : A4466<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 74.88, 55.47, '92003000.jpg', '92003000.jpg', 1, 0, 0, 0, 0),
(33, 'Medical Supply', 0, '', 6, '', '', '0', 'DJO Abdominal Binder 2X-Large / 3X-Large 63 to 78 Inch Unisex', '16903000', '38481001698', ' ', 'Designed for inconspicuous wear under clothing<br>\r\nRecommended for use with abdominal strains as well as post surgery applications<br>\r\n<br>\r\nHCPCS : L0625<br>\r\nGender : Unisex<br>\r\nSize : 2X-Large / 3X-Large<br>\r\nApplication : Abdominal Binder<br>\r\nWaist Measurement : 63 to 78 Inch<br>\r\nMaterial : Elastic<br>\r\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 29.05, 21.52, '16903000.jpg', '', 1, 0, 0, 0, 0),
(34, 'Medical Supply', 0, '', 7, '', '', '0', 'Medline Padded Drop-Arm Commode', 'G98204', '4.01E+13', ' ', 'Arms swing out of the way for easier lateral transfers on and off the commode.<br>\r\nTransfers are easier for patients using a wheelchair.<br>\r\nPlace near the bed with near arm down for patients transferring during the night.<br>\r\nComes standard with pail, lids and splash guard.<br>\r\n350-lb. (159 kg) Weight capacity; Seat height range, 20"-25" (51 cm-64 cm); Seat depth, 18"-20" (46 cm-51 cm); Width between arms, 18.5" (47 cm); Overall width, 22" (56 cm).<br>\r\n<br>\r\nOverall Width : 22"<br>\r\nWeight Capacity : 350 lbs.<br>\r\nSeat Height : 20"-25"<br>\r\nSeat Depth : 18"-20"<br>\r\nCasters : No<br>\r\nDrop Arm : Yes<br>\r\nLatex-Free : No<br>\r\nHCPCS : E0165', 0.0000, 0.0000, 0.0000, 0.0000, 114.20, 84.59, 'G98204.jpg', '', 1, 0, 0, 0, 0),
(35, 'Medical Supply', 0, '', 7, '', '', '0', 'Medline Guardian Steel Elongated Bedside Commode', 'MDS89664ELH', '80196356921', ' ', 'Folding frame design assembles in seconds without tools.<br>\r\nCommode folds down to reduce storage space by 35% and makes delivery easier.<br>\r\nAll models include pail, lid and splash guard.<br>\r\nClip-on seats can be removed for easy cleaning.<br>\r\nFeatures deeper seat depth to allow more room for cleaning.<br>\r\n<br>\r\nWeight Capacity : 400 lbs.<br>\r\nSeat Depth : 16.5"<br>\r\nSeat Height : 17"-23"<br>\r\nWidth Between Arms : 19"<br>\r\nOverall Width : 22"<br>\r\nCasters : No<br>\r\nDrop Arm : No<br>\r\nLatex-Free : No<br>\r\nHCPCS : E0163', 0.0000, 0.0000, 0.0000, 0.0000, 66.45, 49.22, 'MDS89664ELH.jpg', '', 1, 0, 0, 0, 0),
(36, 'Medical Supply', 0, '', 0, '', '', '0', 'Medline Bedside Commode with Microban', 'MDS89664ELMB', '8.88E+11', ' ', 'Microban? antimicrobial product protection inhibits the growth of stains and odors from bacteria, mold and mildew.<br>\r\nThis product does not protect users or others against bacteria, viruses, germs or other disease organisms.<br>\r\nHeight adjustable seat and arm rests provide a customizable fit.<br>\r\nFlat-seat lid cover discretely conceals commode when not in use.<br>\r\nCan be used over toilet to raise seat, enhancing stability; Splash guard included for over-the-toilet use.<br>\r\nDark bronze finish and style suits most decors.<br>\r\n400 lb. weight capacity<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nDistance Between Arms : 19.6"<br>\r\nSeat Size : 19.2"W x 17.4"D<br>\r\nWidth : 27.2"<br>\r\nFloor To Seat Height : 19" - 22.5"<br>\r\nCapacity : 400 lbs', 0.0000, 0.0000, 0.0000, 0.0000, 182.25, 135.00, 'MDS89664ELMB.jpg', '', 1, 0, 0, 0, 0),
(37, 'Medical Supply', 0, '', 7, '', '', '0', 'Invacare IClass All-In-One Commode (Single Pack) - 30" H x 21" W x 18" D', '9630-1', '91536297729', ' ', 'Invacare Commodes offer consumers the comfort and stability they need. The frame is lightweight and consumers gain additional comfort and support from the 16" wide seat. The Invacare All-in-One Commode can be used bedside or can act as a toilet safety frame or raised toilet seat.<br>\r\n<br>\r\nCan be used bedside or with backrest removed, can act as a toilet safety frame or raised toilet seat<br>\r\nLarge 16" wide snap-on seat with lid for added comfort and support<br>\r\nComes complete with commode bucket, bucket cover and splash shield<br>\r\nWing nuts allow for removal of backrest when needed<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nSize : 30" H x 21" W x 18" D<br>\r\nWeight Capacity : 350 lbs.', 0.0000, 0.0000, 0.0000, 0.0000, 50.56, 37.45, '9630-1.jpg', '', 1, 0, 0, 0, 0),
(38, 'Medical Supply', 0, '', 7, '', '', '0', 'Medline Pontoon Bedpans', 'DYND80217H', '1.01E+13', ' ', 'Saddle-shaped with a high-rolled front. Graduated in both mL and ounces. Non-stick surface. Also available in pigment-free to support "greener manufacturing"<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nColor : Graphite<br>\r\nSize : 1200mL<br>\r\nLatex-Free : Yes<br>\r\nMaterial : Plastic', 0.0000, 0.0000, 0.0000, 0.0000, 3.06, 2.27, 'DYND80217H.jpg', '', 1, 0, 0, 0, 0),
(39, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Serpentine Style Firm Cervical Collar - Small, 3" x 15"', 'ORT13200S', '1.01E+13', ' ', 'Helps allows the chin to rest on the collar.<br>\r\nSynthetic stockinette cover with hook and loop closure.<br>\r\nIncludes 6" extension piece to accommodate larger sizes.<br>\r\nIncludes an extra synthetic cover that can be washed.<br>\r\nFirm Foam<br>\r\n<br>\r\nSize : Small, 3" x 15"<br>\r\nDensity: Firm<br>\r\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 4.83, 3.58, 'ORT13200S.jpg', '', 1, 0, 0, 0, 0),
(40, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Serpentine Style Firm Cervical Collar - Medium, 3" x 17"', 'ORT13200M', '1.01E+13', ' ', 'Helps allows the chin to rest on the collar.<br>\r\nSynthetic stockinette cover with hook and loop closure.<br>\r\nIncludes 6" extension piece to accommodate larger sizes.<br>\r\nIncludes an extra synthetic cover that can be washed.<br>\r\nFirm Foam<br>\r\n<br>\r\nSize : Medium, 3" x 17"<br>\r\nDensity: Firm<br>\r\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 4.47, 3.31, 'ORT13200M.jpg', '', 1, 0, 0, 0, 0),
(41, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Serpentine Style Firm Cervical Collar - Large', 'ORT13200L', '1.01E+13', ' ', 'Helps allows the chin to rest on the collar.<br>\r\nSynthetic stockinette cover with hook and loop closure.<br>\r\nIncludes an extra synthetic cover that can be washed.<br>\r\nFirm Foam<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nSize : Large, 4" x 22"<br>\r\nDensity: Firm<br>\r\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 5.13, 3.80, 'ORT13200L.jpg', '', 1, 0, 0, 0, 0),
(42, 'Medical Supply', 0, '', 8, '', '', '0', 'Laerdal Medical Cervical Collar Stifneck? Select? Adult', '98013000', '98013000', ' ', 'Locks ensure selected sizes stay in place<br>\r\nAdjustment tracks ensure symmetrical alignment of size<br>\r\nEasy access for pulse checks, advanced airway procedures, and visualization through oversized trachea hole<br>\r\nDirections molded into collar<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nX-Ray Compatibility : X-Ray Compatible<br>\r\nSize : Adult<br>\r\nApplication : Cervical Collar<br>\r\nColor Code : White<br>\r\nMaterial : Plastic<br>\r\nUNSPSC Code : 42171607', 0.0000, 0.0000, 0.0000, 0.0000, 11.70, 8.67, '98013000.jpg', '', 1, 0, 0, 0, 0),
(43, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Philadelphia Patriot One-Piece Cervical Collars-Universal', 'ORT12000A', ' ', ' ', 'Item # MED ORT12000A by Medline (Mfg. Part # , UPC # )<br>\r\n<br>\r\nPhilly Patriot Cervical Collars: Made Of High Density Polyethylene Plastic With A Foam Lining For Comfort And Rigidity, Stacks Flat To Preserve Space, Adjusts To Different Heights With Locking Tabs, X-Ray Ct And Mri Lucent Adult Size, 11" - 23" Circumference.<br>\r\n<br>\r\nQuantity : Each<br>\r\nSize : 11"-23"', 0.0000, 0.0000, 0.0000, 0.0000, 14.09, 10.44, 'ORT12000A.jpg', '', 1, 0, 0, 0, 0),
(44, 'Medical Supply', 0, '', 8, '', '', '0', 'Medline Philadelphia Patriot One-Piece Cervical Collars-Universal', 'ORT12000C', ' ', ' ', 'Philly Patriot Cervical Collars: Made Of High Density Polyethylene Plastic With A Foam Lining For Comfort And Rigidity, Stacks Flat To Preserve Space, Adjusts To Different Heights With Locking Tabs, X-Ray Ct And Mri Lucent Child Size, 8" - 18" Circumference.<br>\r\n<br>\r\nQuantity : Each<br>\r\nSize : 8"-18"', 0.0000, 0.0000, 0.0000, 0.0000, 12.35, 9.15, 'ORT12000C.jpg', '', 1, 0, 0, 0, 0),
(45, 'Medical Supply', 0, '', 8, '', '', '0', 'GF Health Soft Foam Cervical Collar with Support', '8605L', '7.17E+11', ' ', 'Conventional collar made of high density Polyurethane foam. Collar is covered with soft, hypoallergenic cotton stockinet for comfort. Available in medium and large sizes. Medium: 13" - 15" Large: 15" - 17"<br>\r\n<br>\r\nQuantity : 1 Each<br>\r\nSize : Large<br>\r\nLength : 15" - 17"', 0.0000, 0.0000, 0.0000, 0.0000, 8.02, 5.94, '8605L.jpg', '', 1, 0, 0, 0, 0),
(46, 'Medical Supply', 0, '', 8, '', '', '0', 'Scott Specialties Cervical Collar Sport-Aid? Medium Density Universal 2-1/2 Inch Height 12 to 22 Inch Circumference', '45183000', '76318912667', ' ', 'Extra stockinette sleeve included<br>\r\n2-1/2 inch wide at chin cut-out<br>\r\nHook and Loop Closure<br>\r\n1inch thick medium-firm foam, fits 12 to 22 inch neck<br>\r\n<br>\r\nFastening Type : Hook and Loop Closure<br>\r\nColor : Natural Color<br>\r\nType : Medium Density<br>\r\nSize : Universal<br>\r\nApplication : Cervical Collar<br>\r\nHeight : 2-1/2 Inch Height<br>\r\nMaterial : Foam<br>\r\nNeck Circumference : 12 to 22 Inch Circumference<br>\r\nUNSPSC Code : 42241803', 0.0000, 0.0000, 0.0000, 0.0000, 9.61, 7.12, '45183000.jpg', '', 1, 0, 0, 0, 0),
(47, 'Medical Supply', 0, '', 9, '', '', '0', 'EKO CORE Digital Stethoscope Bundle, Stethoscope + Digital Device', 'CORE-BUNDLE', '8.64E+11', ' ', 'The Eko Digital Stethoscope provides everything you need to experience the next big thing in modern diagnostic care. An attached analog stethoscope provides added convenience with an included mobile app to record, replay, and amplify heart and lung sounds.<br>\r\n<br>\r\nEko Core digital device with attached single-head analog stethoscope<br>\r\nProvides seamless analog and digital sound<br>\r\nWirelessly transmits the stethoscope audio via Bluetooth LE? to a smartphone or tablet<br>\r\nAnalog and digital modes<br>\r\nAudio amplification in digital mode<br>\r\n7 amplification levels<br>\r\nRechargable battery<br>\r\nMobile App compatible with smartphones and tablets with iOS 7 or Android 5.0 and up<br>\r\nWeb app compatible with current versions of Chrome, Safari, Firefox and Edge<br>\r\nIncludes mobile app<br>\r\n<br>\r\nUnless you are a licensed care provider or a similar qualified entity a prescription is required to purchase this item.<br>\r\nPrescriptions may be sent via:<br>\r\nFax to: 650-443-5201<br>\r\nEmail to RX@bettymills.com<br>\r\nMail to: 161 West 25th Avenue, Suite 203, San Mateo, CA 94403<br>\r\nYou are entitled to a free consultation following the purchase of this item.<br>\r\nQuantity : 1 Each<br>\r\nMaterial : High-Impact ABS Plastic<br>\r\nConnection : Bluetooth 4.0<br>\r\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 0.00, 299.99, 'CORE-BUNDLE.jpg ', '', 1, 0, 0, 0, 0),
(48, 'Medical Supply', 0, '', 10, '', '', '0', 'Simply Thick Food Thickener Gel - Bottle, 64 oz. with Recyclable Pump', '50002601', '8.21E+11', ' ', 'SimplyThick? is the next-generation food and beverage thickener designed specifically for people who have difficulties swallowing.<br>\r\n<br>\r\nSimplyThick? gel thickener consists of four common food ingredients: water, xanthan gum, sodium acid sulphate and potassium sorbate (preservative) <br>\r\n<br>\r\nFreshness Guarantee: Betty Mills guarantees the expiration date on our products will always meet or exceed your satisfaction or we will replace it at no cost.<br>\r\n<br>\r\nQuantity : 1 Bottle<br>\r\nSize : 64 oz.<br>\r\nFlavor : Gel (Nectar - Honey Consistency)<br>\r\nManuf P/N: Simply Thick 05005<br>\r\nContainer Type : Pump/Pour Bottle<br>\r\nApplication : Food Thickener<br>\r\nIncludes : 1 Recyclable Pump<br>\r\nUNSPSC Code : 42231806', 0.0000, 0.0000, 0.0000, 0.0000, 47.99, 38.99, '50002601.jpg', '', 1, 0, 0, 0, 0),
(49, 'Medical Supply', 0, '', 11, '', '', '0', 'Medline Biohazard Patient Room Sharps Container - 5 Quarts', 'MDS705153H', '8.88E+11', '  ', 'The torturous lid design facilitates one-handed disposal.<br>\r\nHorizontal drop design for maximum capacity to fill line.<br>\r\nEach container locks for final disposal.<br>\r\nNestable containers save space and help reduce shipping costs.<br>\r\nEasy-to-see fill levels.<br><br>\r\nQuantity : 1 Each<br>\r\nVolume : 5 Quart<br>\r\nColor : Red<br>\r\nLatex Free : Yes<br>\r\nLid Compatibility : Yes<br>\r\nNested : Yes<br>\r\nContainer Type : Sharps/Biohazard Container<br>\r\nCounter Balanced Lid : No<br>\r\nLid Compatibility : Yes<br>\r\nTortuous Lid : Yes<br>\r\nFor Use With : MED MDS707953<br>\r\nUNSPSC : 42142531', 0.0000, 0.0000, 0.0000, 0.0000, 5.59, 4.14, 'MDS705153H.jpg ', '', 1, 0, 0, 0, 0),
(50, 'Medical Supply', 0, '', 11, '', '', '0', 'Medline Biohazard Patient Room Sharps Containers - 5 Quarts', 'MDS705153', '8.88E+11', ' ', 'The torturous lid design facilitates one-handed disposal.<br>\r\nHorizontal drop design for maximum capacity to fill line.<br>\r\nEach container locks for final disposal.<br>\r\nNestable containers save space and help reduce shipping costs.<br>\r\nEasy-to-see fill levels.<br>\r\n<br>\r\nQuantity : 20 per Case<br>\r\nVolume : 5 Quart<br>\r\nColor : Red<br>\r\nLatex Free : Yes<br>\r\nLid Compatibility : Yes<br>\r\nNested : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 120.57, 89.31, 'MDS705153.jpg ', '', 1, 0, 0, 0, 0),
(51, 'Medical Supply', 0, '', 12, '', '', '0', 'McKesson Clinging Roll Gauze Sterile Latex-Free 4in x 4.5 Yds', '66722000', '8.10E+11', ' ', 'Clinging Gauze Rolls. Sterile. 4 inch x 4.5 yds. 100% cotton, 2-ply woven bandage. Ideal as a secondary dressing for wrapping legs and arms and to hold dressings in place. Provides light stretch which enables it to conform to difficult body contours while also providing light compression. Easy to apply. Single Use. Compare to Kling?, Kerlix Lite?, and Bulkee Lite?. Latex-Free. Packaged: 12 Rolls Per Pack. Kling is a registered trademark of Johnson &amp; Johnson Medical Inc. Kerlix Lite is a registered trademark of Kendall Healthcare. Bulkee Lite is a registered trademark of Medline Industries, Inc.<br>\r\n<br>\r\nQuantity : 12 EA per PK<br>\r\nApplication : Conforming Dressing<br>\r\nDimensions : 4 Inch X 4.5 Yard<br>\r\nSterile : Yes<br>\r\nLatex-Free Indicator : Latex-Free<br>\r\nMaterial : Cotton<br>\r\nColor : White<br>\r\nShape : Roll', 0.0000, 0.0000, 0.0000, 0.0000, 8.01, 5.93, '66722000.jpg', '', 1, 0, 0, 0, 0),
(52, 'Medical Supply', 0, '', 12, '', '', '0', 'McKesson Clinging Roll Gauze Sterile Latex-Free 4in x 4.5 Yds', '66722000-CS', ' ', ' ', 'Clinging Gauze Rolls. Sterile. 4 inch x 4.5 yds. 100% cotton, 2-ply woven bandage. Ideal as a secondary dressing for wrapping legs and arms and to hold dressings in place. Provides light stretch which enables it to conform to difficult body contours while also providing light compression. Easy to apply. Single Use. Compare to Kling?, Kerlix Lite?, and Bulkee Lite?. Latex-Free. Packaged: 12 Rolls Per Sleeve, 8 Sleeves Per Case. Kling is a registered trademark of Johnson &amp; Johnson Medical Inc. Kerlix Lite is a registered trademark of Kendall Healthcare. Bulkee Lite is a registered trademark of Medline Industries, Inc.<br>\r\n<br>\r\nQuantity : 12 EA per Pack 8 Packs per Case<br>\r\nApplication : Conforming Dressing<br>\r\nDimensions : 4 Inch X 4.5 Yard<br>\r\nSterile : Yes<br>\r\nLatex-Free Indicator : Latex-Free<br>\r\nMaterial : Cotton<br>\r\nColor : White<br>\r\nShape : Roll', 0.0000, 0.0000, 0.0000, 0.0000, 65.60, 48.59, '66722000-CS.jpg ', '', 1, 0, 0, 0, 0),
(53, 'Medical Supply', 0, '', 13, '', '', '0', 'McKesson Trilon? Powder-Free Exam Vinyl Gloves - Large', '52961300', ' ', ' ', 'Trilon? Vinyl Powder-Free Exam Gloves - Large<br>\r\nOffers a soft and silky feel with a translucent look.<br>\r\nSmooth finish for excellent tactile sensitivity.<br>\r\nPowder-Free<br>\r\nBeaded Cuff<br>\r\nNon-Sterile<br>\r\nAmbidextrous<br>\r\nSingle use only<br>\r\nNot made with natural rubber latex.<br>\r\n<br>\r\nQuantity : 100 per Box<br>\r\nSize : Large<br>\r\nMaterial : Vinyl<br>\r\nColor : Clear<br>\r\nCuff Style : Beaded Cuff<br>\r\nFingertip Thickness : 0.10 mm (4 mil)<br>\r\nGlove Exterior : Smooth<br>\r\nHand Compatibility : Ambidextrous<br>\r\nLength in Inches : 9.6 Inch<br>\r\nPowder Content : Powder Free<br>\r\nSterility : NonSterile', 0.0000, 0.0000, 0.0000, 0.0000, 4.82, 3.57, '52961300.jpg', '', 1, 0, 0, 0, 0),
(54, 'Medical Supply', 0, '', 14, '', '', '0', 'Medical Action Industries Enema Bucket Set w/Castile Soap Gentle-L-Care? 1500 ml', '25602700', ' ', ' ', 'Quantity : 1EA<br>\r\nVolume : 1500 mL<br>\r\nApplication : Enema Bucket Set w/Castile Soap<br>\r\nUNSPSC Code : 42141901', 0.0000, 0.0000, 0.0000, 0.0000, 3.97, 2.94, '25602700.jpg', '', 1, 0, 0, 0, 0),
(55, 'Medical Supply', 0, '', 14, '', '', '0', 'Medline Enema Bag Set - 1500 cc', 'DYND70102H', '1.01E+13', ' ', 'Medline Enema Bag, with Slide Clamp, Polybag<br>\r\n<br>\r\nMedline Disposable Enema Bag Set: Designed with a spill proof valve on the 1500 cc enema bag and easy-use funnel top. 54" soft vinyl tube has a pre-lubricated, smooth, non-traumatic tip with rounded eyes for safety and easy insertion. Set also contains a moisture-proof, castile soap packet and a plastic shut- off clamp. Economy Enema Bag, Same as Above, Individually Bagged.<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nDisposable : Yes<br>\r\nLatex-Free : Yes<br>\r\nSize : 1500cc', 0.0000, 0.0000, 0.0000, 0.0000, 2.48, 1.84, 'DYND70102H.jpg ', '', 1, 0, 0, 0, 0),
(56, 'Medical Supply', 0, '', 14, 'Amsino International Enema Bag', 'Amsino-International-Enema-Bag', '0', 'Amsino International Enema Bag - 1500 mL', '33332700', '        ', ' ', 'Slide Clamp, Soap Packet, Waterproof Drape<br><br>\r\nQuantity : 1 Each<br><br>Volume : 1,500 mL Bag<br>\r\nApplication : Enema Bag and Bucket Set<br>\r\nTip Type : Pre-Lubricated Tip<br>\r\nTubing Type : 60 Inch Tubing<br><br>\r\nUNSPSC Code : 42141902', 0.0000, 0.0000, 0.0000, 0.0000, 1.74, 1.29, '33332700.jpg', '31851201.jpg', 1, 0, 0, 0, 0),
(57, 'Medical Supply', 0, '', 14, '', '', '0', 'Medtronic Enema Bucket 1400cc', '63102700', '1.09E+12', ' ', 'Dover? Enema Bucket and Tube Pre-Lubricated Tip, 24 Fr/Ch (8.0 mm) x 60" (1.5 m) 1400 mL<br>\r\n<br>\r\nQuantity : 1EA<br>\r\nVolume : 1400cc<br>\r\nApplication : Enema Bucket<br>\r\nTubing Type : 60 Inch Tube<br>\r\nProp 65 : Yes<br>\r\nMaterial : Plastic<br>\r\nUNSPSC Code : 42141903', 0.0000, 0.0000, 0.0000, 0.0000, 2.82, 2.09, '63102700.jpg', '', 1, 0, 0, 0, 0),
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
(68, 'Medical Supply', 0, '', 6, 'test1', 'test1', '0', 'test1', '123456', '   ', '   ', 'test1<span xss="removed">  </span>', 0.0000, 0.0000, 0.0000, 0.0000, 10.00, 9.00, '123456.jpg', 'Koala.jpg', 1, 0, 0, 0, 0),
(69, 'Medical Supply', 0, '', 12, 'test4', 'test4', '0', 'test4', '162356', '        ', '        ', 'test4', 0.0000, 0.0000, 0.0000, 0.0000, 10.00, 9.00, '162356.jpg', 'Tulips.jpg', 1, 0, 0, 0, 0),
(70, '', 0, '', 28, '', '', '4', 'Medline K4 Basic 18" Lightweight Wheelchair, Swing Back Desk Arm Style, Swing Away Footrests', 'MDS806500E', '1.01E+13', '    ', '<ul><li xss="removed">Durable, tig-welded frame with gray powder coat finish.</li><li xss="removed">Dual axle hemi-height adjustable.</li><li xss="removed">Smooth-rolling solid flat-free latex tires.</li><li xss="removed">Adjustable-height back; Comfortable nylon upholstery.</li><li xss="removed">Swing back desk length arms.</li><li xss="removed">Swing away footrest.</li><li xss="removed">Seat size 16" x 18".</li><li xss="removed">Optional accessories: O2 Holder (MDS85181U), Anti-Fold Device (MDS85196), I.V. Pole (MDS85183), Overhead Anti-Theft Device (MDS85197A), O2/I.V. Combo (MDS85190), Anti-Tip Device (MDS85189WK4), Tinnerman Legrest Locks (WCA806991).</li></ul><ul><li>Weight Capacity : 300</li><li>Seat to ground : 20-18"</li><li>Rim to rim open : 26.5</li><li>Rim to rim closed : 12</li><li>Weight w/o legrest (lbs) : 34</li><li>Seat : 18 x 16</li><li>Back : 18 x 16</li><li>Highest point to ground : 36.5</li><li>Length front to back : 31.5</li><li>Height of arm pad from seat rail : 9.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><h5 xss="removed"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 252.60, 187.11, 'MDS806500E.jpg', '', 1, 1, 0, 0, 0),
(71, '', 0, '', 28, '', '', '4', 'Medline K4 Basic 16" Lightweight Wheelchair, Swing Back Desk Arm Style, Swing Away Footrests', 'MDS806500NE', '1.01E+13', '  ', '<ul xss="removed"><li xss="removed">Durable, tig-welded frame with gray powder coat finish.</li><li xss="removed">Dual axle hemi-height adjustable.</li><li xss="removed">Smooth-rolling solid flat-free latex tires.</li><li xss="removed">Adjustable-height back; Comfortable nylon upholstery.</li><li xss="removed">Swing back desk length arms.</li><li xss="removed">Swing away footrest.</li><li xss="removed">Seat size 16" x 16".</li><li xss="removed">Optional accessories: O2 Holder (item MDS85181U), Anti-Fold Device (item MDS85196), I.V. Pole (MDS85183), Overhead Anti-Theft Device (item MDS85197A), O2/I.V. Combo (item MDS85190), Anti-Tip Device (item MDS85189WK4), Tinnerman Legrest Locks (item WCA806991).</li></ul><ul xss="removed"><li>Weight Capacity : 300</li><li>Seat to ground : 20-18"</li><li>Rim to rim open : 24.5</li><li>Rim to rim closed : 12</li><li>Weight w/o legrest (lbs) : 33</li><li>Seat : 16 x 16</li><li>Back : 16 x 16</li><li>Highest point to ground : 36.5</li><li>Length front to back : 31.5</li><li>Height of arm pad from seat rail : 8.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><h5 xss="removed"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 261.37, 193.61, 'MDS806500NE.jpg', '', 1, 0, 0, 0, 0),
(72, '', 0, '', 28, '', '', '4', 'Medline K4 Basic 20" Lightweight Wheelchair, Swing Back Desk Arm Style, Elevating Footrests', 'MDS806565E', '80196305691', '   ', '<ul><li xss="removed">Durable, tig-welded frame with gray powder coat finish.</li><li xss="removed">Dual axle hemi-height adjustable.</li><li xss="removed">Smooth-rolling solid flat-free latex tires.</li><li xss="removed">Adjustable-height back; Comfortable nylon upholstery.</li><li xss="removed">Swing back desk length arms.</li><li xss="removed">Detachable elevating footrest.</li><li xss="removed">Seat size 20" x 18".</li><li xss="removed">Optional accessories: O2 Holder (item MDS85181U), Anti-Fold Device (item MDS85196), I.V. Pole (MDS85183), Overhead Anti-Theft Device (item MDS85197A), O2/I.V. Combo (item MDS85190), Anti-Tip Device (item MDS85189WK4), Tinnerman Legrest Locks (item WCA806991).</li></ul><ul><li>Weight Capacity : 300</li><li>Seat to ground : 20-18"</li><li>Rim to rim open : 28.5</li><li>Rim to rim closed : 12</li><li>Weight w/o legrest (lbs) : 34.5</li><li>Seat : 20 x 18</li><li>Back : 20 x 18</li><li>Highest point to ground : 36.5</li><li>Length front to back : 31.5</li><li>Height of arm pad from seat rail : 9.5</li><li>Length of arm pad : 9.25</li><li>Caster dimensions : 7.5 x 1.25</li></ul><p xss="removed"></p><h5 xss="removed"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 286.82, 212.46, 'MDS806565E.jpg', '', 1, 1, 0, 0, 0);
INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `active_image`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `modified_date`) VALUES
(73, '', 0, '', 28, '', '', '3', 'Drive Medical Viper Plus GT Wheelchair with Flip Back Removable Adjustable Full Arms, Elevating Leg Rests, 16" Seat', 'pla416fbfaarad-elr', '8.22E+11', '    ', '<p xss="removed">The Drive Medical Viper GT is the most versatile wheelchair right out of the box and is easier to propel and transport than an average weight chair. The Viper GT comes standard with adjustable padded arms, multiple seat to floor height positions, adjustable anti-tippers with flip-up wheels which never have to be removed and push to lock wheel locks. The back is both angle adjustable and height adjustable to provide added patient comfort. The 16", 18" and 20" version of the Viper GT come standard with a seat rail extension kit. The all-aluminum frame is high strength while remaining lightweight. The wheelchair upholstery is made of durable nylon which is flame retardant and resists mildew and bacteria. Precision sealed wheel bearings in front and rear ensure long lasting performance and reliability. The quick release, 24" composite Mag-style wheels are lightweight and maintenance free. Tool free adjustable swing away footrests also feature easy to access release handles. Urethane rear tires and casters offer superior performance, smoother ride and are lightweight.</p><br xss="removed"><p xss="removed"><strong xss="removed">Features and Benefits</strong></p><ul xss="removed"><li xss="removed">Built-in seat rail extensions and extendable upholstery easily adjusts seat depth from 16" to 18"</li><li xss="removed">All-Aluminum frame</li><li xss="removed">Dual Axle allows for multiple seat-to-floor height positions</li><li xss="removed">Adjustable height, flip-back, removable, padded arms</li><li xss="removed">Weighs under 32 lbs (Excluding front rigging)</li><li xss="removed">Over-center cross brace eliminates need for seat guides; Works with seating and positioning accessories</li><li xss="removed">Adjustable angle back easily adjusts from 5-degrees to 20-degrees</li><li xss="removed">Adjustable height back adjusts from 17"-19" in 1" increments, adaptable for individual patient needs</li><li xss="removed">Durable, heavy-gauge flame-retardant nylon upholstery with hook-and-loop fastener straps, resists mildew and bacteria</li><li xss="removed">Quick release, 24" composite Mag-style wheels are lightweight and maintenance free</li><li xss="removed">Precision sealed wheel bearings in front and rear ensure long-lasting performance and reliability</li><li xss="removed">Adjustable angle caster forks have three height adjustments and angle adjustability</li><li xss="removed">Tool-free adjustable swing-away footrests also feature easy-to-access release handles</li><li xss="removed">Urethane rear tires and casters offer superior performance, smoother ride, and are lightweight</li><li xss="removed">Adjustable anti-tipper with flip-up wheels never needs to be removed</li><li xss="removed">Comes with push-to-lock wheel locks</li></ul><h5 xss="removed"></h5><ul><li>Dimensions : 42"L x 24"W x 36"H</li><li>Armrest Length : 14"</li><li>Armrest to Floor Height : 27.5"</li><li>Back Height : 19"</li><li>Brakes : Push-To-Lock Wheel Brakes</li><li>Casters : 8"</li><li>Closed Width : 12.5"</li><li>Folded Dimensions : 42" x 12.5" x 36"</li><li>Number of Wheels : 4</li><li>Overall Length w/ Riggings : 42"</li><li>Color : Black</li><li>Material : Aluminum</li><li>Weight Capacity : 300 lbs.</li><li>Rear Wheels : 24" x 1"</li><li>Seat Depth : 18"</li><li>Seat Width : 16"</li><li>Seat to Armrest Height : 8"</li><li>Seat to Floor Height : 17.5"-19.5"</li><li>Seat to Foot Deck : 15.5"-18.5"</li><li>Warranty : Limited Lifetime</li><li><span xss="removed">Prop 65: Yes</span></li><li>Assembly : Basic Assembly Required</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 610.66, 452.34, 'pla416fbfaarad-elr.jpg', '', 1, 1, 0, 0, 0),
(74, '', 0, '', 29, '', '', '3', 'Drive Medical Two Wheeled Walker with Seat, Blue', '1239BL', '8.22E+11', '   ', '<ul><li xss="removed">Features comfortable and convenient padded seat and backrest</li><li xss="removed">Quickly folds when not in use</li><li xss="removed">Rear leg tips act as brakes when pressed down</li><li xss="removed">Height adjustable handles</li><li xss="removed">Large swivel wheels added for maneuverability</li><li xss="removed">Countoured handles for a comfortable grip</li></ul><ul><li>Dimensions : 23.25"L x 22"W x 29"H</li><li>Handle Height (Max) : 38"</li><li>FSA Eligible : Yes</li><li>Warranty : Limited Lifetime</li><li>User : Universal</li><li>Assembly : Basic Assembly Required</li><li>Installation : No Installation Required</li><li>Latex Free : Yes</li><li>HCPCS : E0143; E0156</li><li>Handle Height (Min) : 29"</li><li>Color : Blue</li><li>Material : Aluminum</li><li>Weight Capacity : 300 lbs</li><li>Seat Depth : 8"</li><li>Seat Width : 15.875"</li><li>Seat to Floor Height : 20.5"</li><li><span xss=removed>Prop 65 : Yes</span></li></ul><h5 xss="removed"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 73.36, 54.34, '1239BL.jpg', '', 1, 1, 0, 0, 0),
(75, '', 0, '', 29, '', '', '3', 'Drive Medical Portable Folding Travel Walker with 5" Wheels and Fold up Legs', 'rtl10263kdr', '8.22E+11', '   ', '<p xss="removed">The Drive Medical Portable Folding Walker in red easily folds, tool free, to half the size of a traditional walker and can be stored in a "Ready Set Go" pouch that is provided with each walker. The legs are attached with strong elastic cords making it easy to fold flat, for easy storage and transportation. When the walker is opened, two side pouches with large pockets for personal items are held in place by hook-and-loop fastener straps to both side frames. The 5" front wheels and rear glide skis provide a smooth transportation over most surfaces.</p><br xss="removed"><p xss="removed"><strong xss="removed">Features and Benefits</strong></p><ul xss="removed"><li xss="removed">Easily folds tool-free to 1/2 the size of a traditional walker and can be stored in a "Ready Set Go" pouch</li><li xss="removed">Legs are attached with strong elastic cords so legs can be folded</li><li xss="removed">Comes with 5" front wheels and rear glide skis that are ideal for most surfaces</li><li xss="removed">Two side-storage pouches with large pockets for personal items are held in place by hook-and-loop fastener straps to both side frames.</li></ul><ul xss="removed"><li>Dimensions : 19.75"L x 26.5"W x 29.5"H</li><li>Adjustable Height : 29.5"-37"</li><li>Base Depth : 19.75"</li><li>Inside Hand Grip Width : 17"</li><li>Color : Red</li><li>Material : Aluminum</li><li>Weight Capacity : 300 lbs</li><li>Width Inside Back Legs : 22"</li><li>Warranty : Limited Lifetime</li><li>Prop 65 : Yes</li><li>Assembly : No Assembly Required</li></ul><h5 xss="removed"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 84.27, 62.42, 'rtl10263kdr.jpg', '', 1, 1, 0, 0, 0),
(76, '', 0, '', 30, '', '', '5', 'Medline Standard Aluminum Crutches - 1 Pair', 'MDSV80535LFH', '80196293493', '  ', '<ul xss="removed"><li xss="removed">Standard aluminum push-button crutches feature a double extruded center tube that provides load-bearing strength where it''s needed the most.</li><li xss="removed">The special footpiece utilizes durable rivets to secure the aluminum tubing from the inside, providing more stability than plastic connectors.</li><li xss="removed">Long, virtually unbreakable stair deflector helps protect against the crutch slipping on stairs and helps increase stress tolerance at all angles without cracking; non-skid rubber tips provide good traction.</li><li xss="removed">Built-in metal ring helps prevent excessive wear and ensures maximum durability.</li><li xss="removed">Crutches come packaged completely accessorized with no assembly required.</li></ul><h5 xss="removed"></h5><ul><li>Quantity : 1 Pair</li><li>Patient Height Range : 5''2"-5''10"</li><li>Weight Capacity : 300 lb</li><li>User : Adult</li><li>Material : Aluminum</li><li>Crutch Style : Axillary</li><li>Latex-Free : Yes</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 23.64, 17.51, 'MDSV80535LFH.jpg', '', 1, 1, 0, 0, 0),
(77, '', 0, '', 30, '', '', '5', 'McKesson Underarm Crutch SunMark® Performance Aluminum Adult 300 lbs.', '49503800', '2.06E+13', '  ', '<ul xss="removed"><li xss="removed">SunMark® Performance Push-Button Aluminum Crutches</li><li xss="removed">Adult, fits 5'' 2" to 5'' 10"</li><li xss="removed">Maximum Patient Weight: 300 lbs.</li><li xss="removed">Patented design for greater strength and torsional rigidity.</li><li xss="removed">Stair-Alert feature reduces risk of crutch end catching on stairs or curbs.</li><li xss="removed">Completely assembled with accessories; saves labor and adds convenience to storage and issuance.</li><li xss="removed">Fitting chart enclosed with each pair of crutches.</li><li xss="removed">Height adjustment scale on center tube in 1 inch increments.</li><li xss="removed">Double push-button adjustment with permanently attached springs for increased dependability.</li><li xss="removed">Push-button locator ring prevents push-button from getting "lost" during adjustment.</li><li xss="removed">Shrink-wrapped in pairs in heavy duty film to preserve product integrity in transit and storage.</li><li xss="removed">Not made with natural rubber latex.</li></ul><ul xss="removed"><li>Adjustment Device : Push-Button</li><li>HCPCS : E0114</li><li>Padding Material : Synthetic Rubber</li><li>Frame Material : Aluminum</li><li>User : Adult</li><li>Application : Underarm Crutch</li><li>Weight Capacity : 300 lbs.</li><li>Crutch Height : 45 to 53 Inch</li><li>User Height Range : 5 Foot 2 Inch to 5 Foot 10 Inch</li><li>Frame Diameter : 3/4 Inch</li><li>Latex Free Indicator : Not Made with Natural Rubber Latex</li><li>UNSPSC Code : 42211502</li></ul>', 0.0000, 0.0000, 0.0000, 0.0000, 22.50, 16.67, '49503800.jpg', '', 1, 1, 0, 0, 0),
(78, '', 0, '', 17, '', '', '8', 'Omron Healthcare Blood Pressure Monitor 3 Series® Wrist\r\n\r\n', '62992500', '73796266295', '  ', '<ul xss="removed"><li xss="removed">60 Memory storage with date and time</li><li xss="removed">5 Year Warranty</li><li xss="removed">Exclusive technology automatically displays the average of up to the last 3 readings taken within the last 10 minutes</li></ul><ul xss="removed"><li>Application : Blood Pressure Monitor</li><li>Target Area : Wrist</li><li>UNSPSC Code : 42181609</li></ul><h5 xss="removed"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 74.21, 54.97, '62992500.jpg', '', 1, 1, 0, 0, 0),
(79, '', 0, '', 32, '', '', '3', 'Drive Medical Spitfire Scout Compact Travel Power Scooter, 4 Wheel', 'sfscout4', '8.22E+11', '   ', '<p xss="removed">The Spitfire Scout transportable scooter combines easy and convenient mobility with superior value. The Spitfire Scout is compact, lightweight and easy to disassemble-perfect for taking wherever you want to go, either around the neighborhood or far from home. It can be disassembled quickly and easily into five easy-to-handle pieces for loading into a car, truck, or van and taking shopping or on vacation. The four-wheel version of the Spitfire Scout allows for enhanced stability on rougher outdoor terrain. The Scout also offers great features like a quick connect battery pack and a delta-style tiller to make operating the scooter easier for those with limited strength or dexterity. This model comes with color-through panels to hide scuffs and scratches and black wheel rims.</p><br xss="removed"><p xss="removed"><strong xss="removed">Features and Benefits</strong></p><ul xss="removed"><li xss="removed">Quick and easy disassembly</li><li xss="removed">Interchangeable color panels hide scuffs and scratches</li><li xss="removed">Armrests are padded and adjustable</li><li xss="removed">Quick connect batteries</li><li xss="removed">Ergonomic throttle control</li><li xss="removed">Height-adjustable swivel seat with fold-down backrest</li><li xss="removed">Flat-free, non-marking tires</li><li xss="removed">Large, plastic carry basket</li><li xss="removed">Easy-to-adjust tiller</li><li xss="removed">Anti-tip wheels</li><li xss="removed">Delta tiller</li><li xss="removed">Easy freewheel operation</li><li>User : Universal</li><li>Dimensions : 42.5"L x 20.5"W x 35"H</li><li>Weight Capacity : 300 lbs.</li><li>Color : Black</li><li>Latex Free : Yes</li><li>Installation : No Installation Required</li><li>Assembly : Basic Assembly Required</li><li>FSA Eligible : Yes</li><li>Warranty : Limited Lifetime on Frame; 24 Month Limited on Electronics; 12 Month on Battery</li><li>Type : 4-Wheel Power Scooters</li><li>Prop 65  : Yes</li></ul><h5 xss="removed"></h5>', 0.0000, 0.0000, 0.0000, 0.0000, 1055.42, 699.00, 'sfscout4.jpg', '', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_item_colors`
--

CREATE TABLE IF NOT EXISTS `store_item_colors` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_color` varchar(120) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `store_item_sizes` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_size` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store_manufacturer`
--

CREATE TABLE IF NOT EXISTS `store_manufacturer` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_manufacturer`
--

INSERT INTO `store_manufacturer` (`id`, `company`, `contact`, `address1`, `city`, `state`, `zip`, `phone`, `email`, `create_date`, `userid`) VALUES
(5, 'NBC Corp', '', '', '', '', '', '', '', 0, 0),
(6, 'Medline', '', '', '', '', '', '', '', 0, 0),
(7, 'Drive Medical', '', '', '', '', '', '', '', 0, 0),
(8, 'McKesson', '', '', '', '', '', '', '', 0, 0),
(9, 'Omron Healthcare', '', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `username`, `email`, `password`, `security_code`, `status`, `user_access`, `user_priv`, `app_completed_date`, `avatar_name`, `admin_id`, `is_admin`, `last_login`, `modified_date`, `create_date`, `is_delete`) VALUES
(1, 'Evelio ', 'evelio@mailers.com', '$2y$11$jekUbWMbzfOQw5ihj6skfetb994DKRT6j6hbby3Qi8QbFa5.mFYHG', '1505509944RyR6mBU57HUrvAp685NZ', 1, 0, 0, 1503167117, 'annon_user.png', 1, 1, 1510108291, 1507431706, 1502490142, 0),
(10, 'JKingsley', 'joe@mailers.com', '$2y$11$yn/iXTQuR/FTIhw/8/MMIeMuDuw8l8pwrD9DZDy/jLdJqDWZSS3EK', '', 1, 0, 0, 0, '', 10, 1, 1510599552, 1507863315, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_main`
--

CREATE TABLE IF NOT EXISTS `user_main` (
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_main`
--

INSERT INTO `user_main` (`id`, `user_id`, `email`, `first_name`, `last_name`, `middle_name`, `phone`, `cell_phone`, `admin_id`, `create_date`, `modified_date`, `is_delete`) VALUES
(1, 1, 'evelio@mailers.com', 'Evelio', 'Velez', '', '9734788813', '9734788813', 1, 1502490142, 1507430786, 0),
(10, 10, 'joe@mailers.com', 'Joe', 'Kingsley', '', '9999999999', '9999999999', 10, 0, 1507431381, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webpages`
--

CREATE TABLE IF NOT EXISTS `webpages` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keywords` text NOT NULL,
  `page_description` text NOT NULL,
  `page_content` text NOT NULL,
  `status` int(1) NOT NULL,
  `create_date` int(11) NOT NULL,
  `mod_dt` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webpages`
--

INSERT INTO `webpages` (`id`, `page_url`, `page_title`, `page_keywords`, `page_description`, `page_content`, `status`, `create_date`, `mod_dt`, `userid`) VALUES
(1, '', 'The Home Page', '           ', '           ', '      Home content     ', 0, 0, 0, 0),
(2, 'contactus', 'Contact Us', 'keywords here', 'Description Here', 'Page Content - Form', 0, 0, 0, 0),
(3, 'faq', 'faq', '                      ', '                      ', '                      ', 0, 0, 0, 0),
(4, 'About-Us', 'About Us', '                      ', '                      ', '                      ', 0, 0, 0, 0),
(5, 'Client-Reviews', 'Client Reviews', '                      ', '                      ', '                      ', 0, 0, 0, 0),
(15, 'News', 'News', '           ', '           ', '           ', 0, 0, 0, 0),
(17, 'Privacy-Statement', 'Privacy Statement', '                      ', '                      ', '                      ', 0, 0, 0, 0),
(18, 'legal', 'legal', '           ', '           ', '           ', 0, 0, 0, 0),
(19, 'Application', 'Application', '           ', '           ', '           ', 0, 0, 0, 0),
(20, 'About-Home-Health', 'About Home Health', '           ', '           ', '           ', 0, 0, 0, 0),
(21, 'About-Physicians-Office', 'About Physicians Office', '           ', '           ', '           ', 0, 0, 0, 0),
(22, 'About-Consumer-Hospice', 'About Consumer Hospice', '           ', '           ', '           ', 0, 0, 0, 0),
(23, 'About-Assisted-Living', 'About Assisted Living', '           ', '           ', '           ', 0, 0, 0, 0),
(24, 'Contactus-Confirmation', 'Contactus Confirmation', '           ', '           ', '           ', 0, 0, 0, 0);

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
  ADD PRIMARY KEY (`captcha_id`), ADD KEY `word` (`word`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `quickquote`
--
ALTER TABLE `quickquote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `store_accounts`
--
ALTER TABLE `store_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `store_categories`
--
ALTER TABLE `store_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `store_items`
--
ALTER TABLE `store_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `store_item_colors`
--
ALTER TABLE `store_item_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `store_item_sizes`
--
ALTER TABLE `store_item_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `store_manufacturer`
--
ALTER TABLE `store_manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_main`
--
ALTER TABLE `user_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `webpages`
--
ALTER TABLE `webpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
