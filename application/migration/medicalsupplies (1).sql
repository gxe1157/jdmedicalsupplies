-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2017 at 12:24 PM
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
(3, 'abc', '', 'address', '', 'Hackensack', 'New Jersey', '07601', 'contact', 'evelio@mailers.com', '9734788813', 2017, 0);

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
(1, 1506960142, '100.1.124.118', 'Et9KzB'),
(2, 1506979079, '69.122.25.229', 'yHA2Q9'),
(3, 1506987287, '100.1.124.118', 'Gsju7e'),
(4, 1506988920, '100.1.124.118', 'txMn3r'),
(5, 1506988928, '69.122.25.229', 'j2Bfga'),
(6, 1506989051, '69.122.25.229', 'SpAV7w'),
(7, 1506989066, '100.1.124.118', 'j8SP52'),
(8, 1506989075, '69.122.25.229', '9PWdA5'),
(9, 1506989079, '100.1.124.118', '2Bli0X'),
(10, 1506989214, '69.122.25.229', 'wd9gkH'),
(11, 1507000790, '172.58.233.21', 'kdOvoX'),
(12, 1507041829, '69.123.38.107', 'D9NhET'),
(13, 1507041846, '69.123.38.107', 'KYIPkP'),
(14, 1507081359, '63.119.119.162', 'ewjQnS'),
(15, 1507136417, '166.216.165.19', 'ETWPBg'),
(16, 1507141810, '98.109.224.14', 'znmJxT'),
(17, 1507141829, '98.109.224.14', 'SWyPBu'),
(18, 1507141831, '98.109.224.14', 'koblMM'),
(19, 1507141846, '98.109.224.14', 'db8v7G'),
(20, 1507141852, '98.109.224.14', 'qwtss3'),
(21, 1507156679, '::1', 'Feap1W'),
(22, 1507377335, '::1', 'vBs5Rl'),
(23, 1507377438, '::1', 'mcJJrX'),
(24, 1507377456, '::1', '3KIJ0X'),
(25, 1507377478, '::1', 'iKHiz7'),
(26, 1507377498, '::1', 'eandRM'),
(27, 1507377511, '::1', 'QoBFef'),
(28, 1507377526, '::1', 'vKpD8z'),
(29, 1507377577, '::1', 'Yr5U1R'),
(30, 1507377717, '::1', 'kVLCaD'),
(31, 1507377748, '::1', 'zuQLby'),
(32, 1507377858, '::1', '6mKHbi'),
(33, 1507377904, '::1', 'CIdITs'),
(34, 1507377905, '::1', 'WII6CT'),
(35, 1507377920, '::1', 'dE7zhm'),
(36, 1507377954, '::1', 'ldeYBq'),
(37, 1507377969, '::1', 'sijBqF'),
(38, 1507378048, '::1', '67D3rg'),
(39, 1507378112, '::1', 'qlDtbm'),
(40, 1507378194, '::1', '590aPf'),
(41, 1507378280, '::1', 'ucJMiU'),
(42, 1507378319, '::1', 'iBH5Tr'),
(43, 1507378386, '::1', 'wfgOAG'),
(44, 1507378428, '::1', 'UIxVO7'),
(45, 1507378546, '::1', 'vodZOS'),
(46, 1507378626, '::1', 'oUfE0M'),
(47, 1507378655, '::1', '9MqTe8'),
(48, 1507378722, '::1', '2zhFxK'),
(49, 1507378744, '::1', '3buD1c'),
(50, 1507378817, '::1', 'XdMmSh'),
(51, 1507378874, '::1', '4c0vrv'),
(52, 1507378908, '::1', '5ivxGn'),
(53, 1507379147, '::1', 'TGIfMV'),
(54, 1507379172, '::1', '3tZneG'),
(55, 1507379193, '::1', 'dfARd5'),
(56, 1507379232, '::1', 'ciKw0v'),
(57, 1507379241, '::1', 'CluA5e'),
(58, 1507379264, '::1', 'dBhTsm'),
(59, 1507379297, '::1', 'HzzGwT'),
(60, 1507379319, '::1', 'tng8eI'),
(61, 1507379358, '::1', '9TQBRf'),
(62, 1507379441, '::1', 'aSVcDg'),
(63, 1507379476, '::1', 'TFNCsj'),
(64, 1507379524, '::1', 'BU1ts2'),
(65, 1507379735, '::1', 'hk1i5e'),
(66, 1507379795, '::1', 'LqQzNx'),
(67, 1507379849, '::1', 'f8qy1g'),
(68, 1507379890, '::1', 'Jf5GuB'),
(69, 1507379904, '::1', 'cbYLRW'),
(70, 1507379927, '::1', '0wkcJU'),
(71, 1507379953, '::1', 'yxUg7j'),
(72, 1507379998, '::1', '4VFLBP'),
(73, 1507380029, '::1', 'LflGYX'),
(74, 1507380060, '::1', 'oovYcS'),
(75, 1507380079, '::1', 'DUsR9U'),
(76, 1507380091, '::1', 'aEAD4C'),
(77, 1507380110, '::1', 'r2RXBA'),
(78, 1507380150, '::1', 'yRAVAc'),
(79, 1507380173, '::1', '1sv5o0'),
(80, 1507380208, '::1', '4NFfSb'),
(81, 1507380245, '::1', 'Oj9dJV'),
(82, 1507380272, '::1', '9gbuti'),
(83, 1507380303, '::1', 'ssqKus'),
(84, 1507380417, '::1', 'T9Pg0o'),
(85, 1507380526, '::1', 'c3sPL9'),
(86, 1507380561, '::1', 'FXMDl0'),
(87, 1507380590, '::1', '9oX4VV'),
(88, 1507380592, '::1', 'mnIHIn'),
(89, 1507380612, '::1', 'lZU05u'),
(90, 1507380639, '::1', 'IYeQxM'),
(91, 1507380650, '::1', '0az9I0'),
(92, 1507380680, '::1', 'oPDdTU'),
(93, 1507380707, '::1', '44kqb8'),
(94, 1507380766, '::1', 'urkrQi'),
(95, 1507380790, '::1', '7aBqCE'),
(96, 1507413704, '::1', 'oVy3fT'),
(97, 1507477852, '::1', 'nIsWZp');

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
(1, 'Evelio Velez', '123 So. Newman Street', '', 'Saddle Brook', 'NJ', '', 'evelio@mailers.com', '999-999-9999', '2017-10-01', '2017-10-01 23:00:50');

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
(26, 'Urinalysis Test Strips', 16, 'Urinalysis-Test-Strips', 0);

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
(13, 6, 9);

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
  `prd_img_name` varchar(100) NOT NULL,
  `prd_img_org_name` varchar(100) NOT NULL,
  `prd_status` int(11) NOT NULL,
  `prd_image_status` int(11) NOT NULL,
  `create_date` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `parent_cat`, `parent_cat_id`, `sub_cat`, `sub_cat_id`, `prd_name`, `prd_url`, `manufacturer`, `short_desc`, `part_num`, `upc`, `sku`, `description`, `prd_width`, `prd_height`, `prd_depth`, `prd_weight`, `price`, `sale_price`, `prd_img_name`, `prd_img_org_name`, `prd_status`, `prd_image_status`, `create_date`, `userid`, `modified_date`) VALUES
(2, 'Medical Supply', 0, 'Feminine Hygiene', 0, '', '', 'Medline', 'Medline Pad, Maternity, 11 in, with Tails, Non-Sterile', 'NON241280', '80196781488', '', '\nMedline OB Pad with Tails, 11\" long Non-sterile 12 per bg, 24 in a case. There is no adhesive strip along the back of the pad.\nQuantity : 288 per Case, 24 One-Dozen Bags\nSterile :No\nLatex-Free : Yes\n', 0.0000, 0.0000, 0.0000, 0.0000, 74.52, 55.20, '', '', 0, 0, 0, 0, 0),
(3, 'Medical Supply', 0, 'Feminine Hygiene', 0, '', '', '\nVendPink dittie?', 'VendPink dittie? Vended Tampons', '80011', '', '', 'VendPink donates 20% of the profits from vended tampons to Y-ME National Breast Cancer Organization. Regular absorbency with pearlized plastic applicator. Packaged in uniquely designed vending tubes with mood-lifting messages on every wrapper.\n\nQuantity : 300 per Case', 0.0000, 0.0000, 0.0000, 0.0000, 114.24, 84.62, '', '', 0, 0, 0, 0, 0),
(4, 'Medical Supply', 0, 'Feminine Hygiene', 0, '', '', 'Hospeco', 'Hospeco Maxithins? Vended Sanitary Napkins - 250 per Case', 'MT-4, ', '75289000447', '', 'Thin full protection. Folded to fit into #4 box for vending from feminine hygiene dispensers. For use with Hospeco HSC MT 1 and HSC FOCJR-25 vendors both sold separately. Also fits any vendor/feminine hygeine dispenser that vends #4 boxes.\n\nGrade : #4 Box Size\nQuantity : 250 per Case', 0.0000, 0.0000, 0.0000, 0.0000, 56.50, 41.85, '', '', 0, 0, 0, 0, 0),
(5, 'Medical Supply', 0, 'Feminine Hygiene', 0, '', '', 'Hospeco ', 'Hospeco Tampons, Original, Regular Absorbency, 500 Tampons/Carton', ' PGC025001', '73010025004', '', 'Regular absorbency tampon individually wrapped and in vend-style tube. Tampax?, a name women trust.\n\nQuantity : 500 Tampons/Carton\nAbsorbency : Regular', 0.0000, 0.0000, 0.0000, 0.0000, 112.14, 83.07, '', '', 0, 0, 0, 0, 0),
(6, 'Medical Supply', 0, 'Feminine Hygiene', 0, '', '', 'Hospeco ', 'Hospeco ComfortPlus Tampons, 100/Carton', 'HOSMT100FS', '75289068058', '', 'Regular absorbency tampon individually wrapped and in vend-style tube. Tampax?, a name women trust.\n\nQuantity : 100/Carton', 0.0000, 0.0000, 0.0000, 0.0000, 42.61, 31.56, '', '', 0, 0, 0, 0, 0),
(7, 'Medical Supply', 0, 'Feminine Hygiene', 0, '', '', 'Hospeco', 'Hospeco 11\" Tabbed Maxi Non-Sterile - 12 per Pack', 'HS-74', '', '', '11\" tabbed non-sterile maternity pad.\nSize: 11\"\nQuantity : 12 per Pack\nQuantity : 24 Packs per Case\nPackaging : Bag Packed', 0.0000, 0.0000, 0.0000, 0.0000, 48.98, 36.28, '', '', 0, 0, 0, 0, 0),
(8, 'Medical Supply', 0, '', 3, 'Colgate-Palmolive Toothbrush', 'Colgate-Palmolive-Toothbrush', '0', 'Colgate-Palmolive Toothbrush Colgate Adult Soft', '55511700 ', '35000550101 ', '', 'Individually Wrapped.<br>\r\n<br>\r\nQuantity : 1 EA<br>\r\nApplication: Toothbrush<br>\r\nBristle Head Size: Full<br>\r\nBristle Type: Soft<br>\r\nUNSPSC Code: 53131503<br>\r\nUser: Adult', 0.0000, 0.0000, 0.0000, 0.0000, 0.53, 0.39, '', '', 1, 0, 0, 0, 0),
(9, 'Medical Supply', 0, '', 3, 'Colgate-Palmolive Toothbrush ', 'Colgate-Palmolive-Toothbrush', '0', 'Colgate-Palmolive Toothbrush Colgate Adult Soft, 144 EA/CS', '55511704 ', '3500055501 ', '', 'Individually Wrapped. Individually Wrapped.<br>\r\n<br>\r\nQuantity : 144 EA/CS<br>\r\nApplication: Toothbrush<br>\r\nBristle Head Size: Full<br>\r\nBristle Type: Soft<br>\r\nUNSPSC Code: 53131503<br>\r\nUser: Adult', 0.0000, 0.0000, 0.0000, 0.0000, 79.92, 59.20, '', '', 1, 0, 0, 0, 0),
(10, 'Medical Supply', 0, '', 3, 'Colgate-Palmolive Powered Toothbrush', 'Colgate-Palmolive-Powered-Toothbrush', '0', 'Colgate-Palmolive Powered Toothbrush Colgate? 360?? Optic White? Adult Soft', '16881700  ', '35000688606  ', '', 'Whitens teeth in just 1 week<br><br>\r\nWith special polishing bristles, the 360?? Optic White? Powered Toothbrush polishes away surface stains while cleaning hard to reach places<br><br>\r\nIts dual action head, cheek and tongue cleaner and comfortable non-slip handle create a whole-mouth clean experience<br><br>\r\n<br><br>\r\nUser : Adult<br><br>\r\nBristle Head Size : Full<br><br>\r\nApplication : Powered Toothbrush<br><br>\r\nHandle Type : Non-Slip Grip<br><br>\r\nBristle Type : Soft', 0.0000, 0.0000, 0.0000, 0.0000, 11.87, 8.79, '', '', 1, 0, 0, 0, 0),
(11, 'Medical Supply', 0, 'Grooming Supplies', 1, '', '', 'Geiss, Destin & Dunn', 'Geiss, Destin & Dunn Dental Floss Picks GoodSense Mint, 90 EA/PK', '44501700', '8.46E+11', '', 'Easy, convenient, disposable, one-handed flossing. Comfort grip handle.\n\nQuantity : 90 EA/PK\nApplication: Dental Floss Picks\nFlavor: Mint\nUNSPSC Code: 53131504', 0.0000, 0.0000, 0.0000, 0.0000, 2.24, 1.66, '', '', 0, 0, 0, 0, 0),
(12, 'Medical Supply', 0, 'Grooming Supplies', 1, '', '', 'McKesson', 'McKesson Shower Cap Medi-Pak One Size Fits Most Clear', '10001700', '', '', 'Medi-Pak Shower Cap. Clear. One Size Fits All. Single Patient Use. Not Made With Natural Rubber Latex.\n\nQuantity : 1 EA\nApplication: Shower Cap\nColor: Clear\nSecuring Method: Elastic\nSize: One Size Fits Most\nUNSPSC Code: 53131601\nUsage: Single Patient Use\nLatex Free Indicator: Not Made with Natural Rubber Latex', 0.0000, 0.0000, 0.0000, 0.0000, 0.09, 0.07, '', '', 0, 0, 0, 0, 0),
(13, 'Medical Supply', 0, 'Grooming Supplies', 1, '', '', 'SECURE', 'SECURE Comfort Strips - 15 Strips', '39286', '3.64E+11', '', '\nExtra Firm Hold for Lower Dentures\nThe patented waterproof adhesive that won\'t wash away while you\'re eating and drinking\nZinc Free!\nImproves Quality of Life\nThe solution for denture wearers with flat/narrow lower jaws.\nAssures a secure, strong bond between the lower denture and gum, even in the most difficult cases.\n.\n\nDisclaimer : These statements have not been evaluated by the FDA. These products are not intended to diagnose, treat, cure, or prevent any disease.\n\nQuantity : 15/EA', 0.0000, 0.0000, 0.0000, 0.0000, 9.19, 6.81, '', '', 0, 0, 0, 0, 0),
(14, 'Medical Supply', 0, 'Grooming Supplies', 1, '', '', 'Procter & Gamble', 'Procter & Gamble Denture Adhesive Fixodent? Extra Hold 1.6 oz. Powder\n', '13511700', '76660725362', '', 'Quantity : 1 Each\nVolume : 1.6 oz.\nApplication : Denture Adhesive\nUNSPSC Code : 53131510', 0.0000, 0.0000, 0.0000, 0.0000, 6.90, 5.11, '', '', 0, 0, 0, 0, 0),
(15, 'Medical Supply', 0, 'Personal Care Wipes', 2, '', '', 'McKesson StayDry? ', 'McKesson StayDry? Disposable Washcloths w/Aloe, 100-Sheet Soft-Packs, 6PK/CS', '15653100', '1.06E+13', '', '12\" x 8\" (30.5 cm x 20.3 cm)\nPre-Moistened\nHypoallergenic\nDermatologist Tested\nNatural Aloe and Vitamin E\nSoft and Strong\nConvenient Dispensing Lid\nAlcohol-Free\nNot made with natural rubber latex.\nPackaged : 100 Sheets per Pack, 6 Packs Per Case\n\nQuantity : 6 Packs per Case\nWipes : 100 per Pack\nSize : 12\" x 8\"\nSterile : No\nHCPCS : A4335', 0.0000, 0.0000, 0.0000, 0.0000, 25.03, 18.54, '', '', 0, 0, 0, 0, 0),
(16, 'Medical Supply', 0, 'Personal Care Wipes', 2, '', '', 'Kimberly Clark Professional', 'Kimberly Clark Professional Fresh Care Flushable Cleansing Cloths, White, 3.75 x 5.5, 42/Pack', 'KCC36734', '36000724424', '', 'Fresh Care cleansing cloths leave you feeling cleaner and fresher than toilet paper alone. Cloths give you a shower-fresh feeling that leaves you confidently clean.\n\nFlushable wipes break up quickly and are sewer and septic safe. These soft wipes are gentle on skin, with just the right amount of moisture to provide the ultimate clean. Alcohol free.\n\nQuantity : 42 Wipes per Pack\nSize : 5.5\" x 3.75\"\nPlys : 1\nColor : White\nApplication : Personal Wipe\nApplicable Material : Skin', 0.0000, 0.0000, 0.0000, 0.0000, 4.68, 3.47, '', '', 0, 0, 0, 0, 0),
(17, 'Medical Supply', 0, 'Personal Care Wipes', 2, '', '', 'Professional Disposables', 'Professional Disposables Hygea? Sanitizing Skin Wipe', '31851201', '', '', 'Use wherever antiseptic cleansing/refreshing is needed\n\nQuantity : 1 Each\nSize : 5\" x 7\"\nScent : Scented\nActive Ingredients : Benzalkonium Chloride\nApplication : Sanitizing Skin Wipe\nUNSPSC Code : 53131624', 0.0000, 0.0000, 0.0000, 0.0000, 0.07, 0.05, '', '', 0, 0, 0, 0, 0),
(18, 'Medical Supply', 0, 'Personal Care Wipes', 2, '', '', 'Kimberly Clark Professional ', 'Kimberly Clark Professional Fresh Care Flushable Cleansing Cloths, White, 5 x 7 1/4, 168/Pack', ' KCC10358EA', '36000103588', '', 'Fresh Care cleansing cloths leave you feeling cleaner and fresher than toilet paper alone. Cloths give you a shower-fresh feeling that leaves you confidently clean. Flushable wipes break up quickly and are sewer and septic safe. These soft wipes are gentle on skin, with just the right amount of moisture to provide the ultimate clean. Alcohol free.\n\nTowel/Wipe Type : Hand/Body Wet Wipe\nApplication : Personal Wipe\nApplicable Material : Skin\nMaterial : Paper\nNumber of Plies : 1\nColor : White\nLength : 7 1/4\"\nWidth : 5\"\nPackaging : Pack\nNumber of Towels/Wipes Per Container : 168', 0.0000, 0.0000, 0.0000, 0.0000, 11.35, 8.41, '', '', 0, 0, 0, 0, 0),
(19, 'Medical Supply', 0, 'Skin Care Products', 3, '', '', 'Medline', 'Medline Remedy Olivamine Calazime Skin Protectant Paste - 4 oz', 'MSC094544H', '80196306155', '', 'Remedy Olivamine Calazime Skin Protectant Paste has a higher viscosity (thickness) than other skin pastes\nNourishes skin, helps treat and prevent diaper rash, wet and cracked skin\nCalazime dries light exudates from compromised skin\nMenthol cools irritated skin and calms inflamed tissue\nSemi-breathable, long-lasting barrier protects torn or exposed skin against harmful stimuli\nNourishes skin with amino acids, antioxidants and pain control ingredients\nNon-allergenic\nNon-sensitizing\n\nQuantity : 1 Each\nLatex-Free : Yes\nSize : 4 oz\nTop Selling Item!', 0.0000, 0.0000, 0.0000, 0.0000, 12.43, 9.21, '', '', 0, 0, 0, 0, 0),
(20, 'Medical Supply', 0, 'Skin Care Products', 3, '', '', 'McKesson ', 'McKesson No-Rinse Shampoo and Body Wash 8 oz. Squeeze Bottle Light Floral Scent', '27391800', '1.06E+13', '', 'McKesson Shampoo & Body Wash No Rinse. 8 oz (237 mL). Formulated to thoroughly clean hear and skin without water. Ideal for use with residents who may be confined to a bed. Absence of artificial dyes helps reduce the risk of irritation and makes it perfect for fragile skin and everyday use. Light floral fragrance creates a relaxing experience. Not Made With Natural Rubber Latex.\n\nQuantity : 1 EA\nApplication: No-Rinse Shampoo and Body Wash\nContainer Type: Squeeze Bottle\nHCPCS: A9270\nScent: Light Floral Scent\nSize: 8 oz.\nUNSPSC Code: 53131628\nLatex Free Indicator: Not Made with Natural Rubber Latex', 0.0000, 0.0000, 0.0000, 0.0000, 1.81, 1.34, '', '', 0, 0, 0, 0, 0),
(21, 'Medical Supply', 0, '', 5, 'McKesson Perineal & Skin Cleanser', 'McKesson-Perineal-Skin-Cleanser', '0', 'McKesson Perineal & Skin Cleanser - 1 Gallon', '83101800  ', '1.06E+13  ', '', 'Gentle fresh scent.<br><br>\r\nA single-step, no-rinse formula designed to clean, moisturize and deodorize the skin.<br><br>\r\nThe formula is pH balanced to be gentle and non-irritating on all body areas.<br><br>\r\nThe no-rinse perineal wash aids in emulsifying feces and cleansing urine while added Aloe Vera and Vitamins A, C, & E moisturizers help prevent dryness.<br><br>\r\nIntended for use in helping reduce perineal dermatitis.<br><br>\r\nNot made with natural rubber latex.<br><br>\r\n<br><br>\r\nQuantity : 1 Each<br><br>\r\nSize : 1 Gallon<br><br>\r\nScent : Fresh<br><br>\r\nPH Balance : 6.0 - 7.0', 0.0000, 0.0000, 0.0000, 0.0000, 16.01, 11.86, '', '', 1, 0, 0, 0, 0),
(22, 'Medical Supply', 0, 'Skin Care Products', 3, '', '', 'ConvaTec Aloe Vesta?', 'ConvaTec Aloe Vesta? Perineal Wash Spray, 8 oz., Citrus Scent\n', '18691801', '1.08E+13', '', 'The Aloe Vesta? perineal/skin cleanser is designed for incontinence cleansing. It contains a strong surfactant system to clean and emollients to moisturize.\n\nDispensed as a liquid spray. It is more convenient than soap and water cleansing from a basin.\n\nPlease note: This product does not contain latex.\n\nPlease see package insert for complete instructions for use.\n\nSize : 8 oz\nScent : Citrus\nType : Spray\nApplication : Perineal Wash\nContainer Type : Pump Bottle\nHCPCS : A6250 (Disclaimer)\nUNSPSC Code : 53131613', 0.0000, 0.0000, 0.0000, 0.0000, 4.50, 3.33, '', '', 0, 0, 0, 0, 0),
(23, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'Medline', 'Medline 4-Panel Abdominal Binder 12\"- Large/XL', 'ORT21300LXL', '1.01E+13', '', '12\" abdominal binder is made with elastic and a soft material to provide comfort and flexibility. Measurement based upon circumference at the hips.\n\nFour-panel design helps reduce rolling. Not made with natural rubber latex.\n\nSize : Large/XL\nGender : Unisex\nLatex-Free : Yes\nLength : 46\" - 62\"', 0.0000, 0.0000, 0.0000, 0.0000, 16.12, 11.94, '', '', 0, 0, 0, 0, 0),
(24, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'Medline', 'Medline Standard 9\" Abdominal Binders-Universal', 'MDS169024', '1.01E+13', '', 'Abdominal Unisize Binder, 9\", Fits Sizes 40-62. Elastic. Hook and Loop closure for contoured fit.\n\nSize : 40\"-62\"', 0.0000, 0.0000, 0.0000, 0.0000, 20.74, 15.36, '', '', 0, 0, 0, 0, 0),
(25, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'Medline', 'Medline Standard 9\" Abdominal Binders-Universal', 'MDS169022  ', '1.01E+13', '', 'Abdominal Unisize Binder, 9\", Fits Sizes 30-45 Elastic. Hook and Loop closure for contoured fit.\n\nSize : 30\"-45\"', 0.0000, 0.0000, 0.0000, 0.0000, 17.90, 13.26, '', '', 0, 0, 0, 0, 0),
(26, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'Medline', 'Medline Universal Abdominal Binders-Universal', 'ORT21100', '3.01E+13', '', '9\" Abdominal Binders: Made with latex-free elastic for optimal support, contact closure for easy adjustment, premium styles are lined and have a tri-panel design to reduce rolling. 27\" - 48\", Universal.\n\nSize : 27\"-48\"\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 19.25, 14.26, '', '', 0, 0, 0, 0, 0),
(27, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'Medline', 'Medline Universal Abdominal Binders-Universal', 'ORT21200', '1.01E+13', '', '10\" Abdominal Binders: Made with latex-free elastic, contact closure for easy adjustment, premium style is made with a higher quality elastic for longer wear. 27\" - 48\", Universal.\n\nSize : 27\"-48\"\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 15.00, 11.11, '', '', 0, 0, 0, 0, 0),
(28, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'Medline', 'Medline Universal Abdominal Binders-Universal', 'ORT21300', '3.01E+13', '', '12\" Abdominal Binders: Made with latex-free elastic for optimal support, contact closure for easy adjustment, premium styles are lined and have a 4-panel design to reduce rolling. 27\" - 48\", Universal.\n\nSize : 27\"-48\"\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 17.33, 12.84, '', '', 0, 0, 0, 0, 0),
(29, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'Dale Medical', 'Dale Medical Abdominal Binder One Size Fits Most Hook and Loop Closure 30 to 45 Inch 12 Inch Unisex', '88803000', '88803000', '', 'The new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels, which may result in skin tears, burns or even scarring\n\nFastening Type : Hook and Loop Closure\nHCPCS : A4466\nGender : Unisex\nWidth : 12 Inch\nColor : White\nSize : One Size Fits Most\nApplication : Abdominal Binder\nWaist Measurement : 30 to 45 Inch\nMaterial : Elastic\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 27.70, 20.52, '', '', 0, 0, 0, 0, 0),
(30, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'Dale Medical', 'Dale Medical Abdominal Binder Universal Hook & Loop Closure 30-45\" 9\" Unisex', '44103000', '', '', '3 panel design\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia\n\nFastening Type : Hook and Loop Closure\nHCPCS : A4466\nGender : Unisex\nWidth : 9 Inch\nColor : White\nSize : Universal\nApplication : Abdominal Binder\nWaist Measurement : 30 to 45 Inch\nMaterial : Elastic\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 24.14, 17.88, '', '', 0, 0, 0, 0, 0),
(31, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'Dale Medical', 'Dale Medical Abdominal Binder, Universal Hook & Loop Closure, 46-62\" x 12\", Unisex', '81103000', '', '', '4 panel design\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia\n\nFastening Type : Hook and Loop Closure\nHCPCS : A4462\nGender : Unisex\nWidth : 12 Inch\nColor : White\nSize : Universal\nApplication : Abdominal Binder\nWaist Measurement : 46 to 62 Inch\nMaterial : Elastic\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 33.21, 24.60, '', '', 0, 0, 0, 0, 0),
(32, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'Dale Medical', 'Dale Medical 15\" Abdominal Binder with Easy Grip?', '92003000', '', '', '5 panel design\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia\n\nWaist Measurement : 82 to 94 Inch\nWidth : 15 Inch\nFastening Type : Hook and Loop Closure\nColor : White\nHCPCS : A4466\nMaterial : Elastic\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 74.88, 55.47, '', '', 0, 0, 0, 0, 0),
(33, 'Medical Supply', 0, 'Abdominal Binder', 4, '', '', 'DJO', 'DJO Abdominal Binder 2X-Large / 3X-Large 63 to 78 Inch Unisex', '16903000', '38481001698', '', 'Designed for inconspicuous wear under clothing\nRecommended for use with abdominal strains as well as post surgery applications\n\nHCPCS : L0625\nGender : Unisex\nSize : 2X-Large / 3X-Large\nApplication : Abdominal Binder\nWaist Measurement : 63 to 78 Inch\nMaterial : Elastic\nUNSPSC Code : 42312502', 0.0000, 0.0000, 0.0000, 0.0000, 29.05, 21.52, '', '', 0, 0, 0, 0, 0),
(34, 'Medical Supply', 0, 'Bedpans and Commodes', 5, '', '', 'Medline', 'Medline Padded Drop-Arm Commode', 'G98204', '4.01E+13', '', 'Arms swing out of the way for easier lateral transfers on and off the commode.\nTransfers are easier for patients using a wheelchair.\nPlace near the bed with near arm down for patients transferring during the night.\nComes standard with pail, lids and splash guard.\n350-lb. (159 kg) Weight capacity; Seat height range, 20\"-25\" (51 cm-64 cm); Seat depth, 18\"-20\" (46 cm-51 cm); Width between arms, 18.5\" (47 cm); Overall width, 22\" (56 cm).\n\nOverall Width : 22\"\nWeight Capacity : 350 lbs.\nSeat Height : 20\"-25\"\nSeat Depth : 18\"-20\"\nCasters : No\nDrop Arm : Yes\nLatex-Free : No\nHCPCS : E0165', 0.0000, 0.0000, 0.0000, 0.0000, 114.20, 84.59, '', '', 0, 0, 0, 0, 0),
(35, 'Medical Supply', 0, 'Bedpans and Commodes', 5, '', '', 'Medline', 'Medline Guardian Steel Elongated Bedside Commode', 'MDS89664ELH', '80196356921', '', 'Folding frame design assembles in seconds without tools.\nCommode folds down to reduce storage space by 35% and makes delivery easier.\nAll models include pail, lid and splash guard.\nClip-on seats can be removed for easy cleaning.\nFeatures deeper seat depth to allow more room for cleaning.\n\nWeight Capacity : 400 lbs.\nSeat Depth : 16.5\"\nSeat Height : 17\"-23\"\nWidth Between Arms : 19\"\nOverall Width : 22\"\nCasters : No\nDrop Arm : No\nLatex-Free : No\nHCPCS : E0163', 0.0000, 0.0000, 0.0000, 0.0000, 66.45, 49.22, '', '', 0, 0, 0, 0, 0),
(36, 'Medical Supply', 0, 'Bedpans and Commodes', 5, '', '', 'Medline', 'Medline Bedside Commode with Microban', 'MDS89664ELMB', '8.88E+11', '', 'Microban? antimicrobial product protection inhibits the growth of stains and odors from bacteria, mold and mildew.\nThis product does not protect users or others against bacteria, viruses, germs or other disease organisms.\nHeight adjustable seat and arm rests provide a customizable fit.\nFlat-seat lid cover discretely conceals commode when not in use.\nCan be used over toilet to raise seat, enhancing stability; Splash guard included for over-the-toilet use.\nDark bronze finish and style suits most decors.\n400 lb. weight capacity\n\nQuantity : 1 Each\nDistance Between Arms : 19.6\"\nSeat Size : 19.2\"W x 17.4\"D\nWidth : 27.2\"\nFloor To Seat Height : 19\" - 22.5\"\nCapacity : 400 lbs', 0.0000, 0.0000, 0.0000, 0.0000, 182.25, 135.00, '', '', 0, 0, 0, 0, 0),
(37, 'Medical Supply', 0, 'Bedpans and Commodes', 5, '', '', 'Invacare', 'Invacare IClass All-In-One Commode (Single Pack) - 30\" H x 21\" W x 18\" D', '9630-1', '91536297729', '', 'Invacare Commodes offer consumers the comfort and stability they need. The frame is lightweight and consumers gain additional comfort and support from the 16\" wide seat. The Invacare All-in-One Commode can be used bedside or can act as a toilet safety frame or raised toilet seat.\n\nCan be used bedside or with backrest removed, can act as a toilet safety frame or raised toilet seat\nLarge 16\" wide snap-on seat with lid for added comfort and support\nComes complete with commode bucket, bucket cover and splash shield\nWing nuts allow for removal of backrest when needed\n\nQuantity : 1 Each\nSize : 30\" H x 21\" W x 18\" D\nWeight Capacity : 350 lbs.', 0.0000, 0.0000, 0.0000, 0.0000, 50.56, 37.45, '', '', 0, 0, 0, 0, 0),
(38, 'Medical Supply', 0, 'Bedpans and Commodes', 5, '', '', 'Medline', 'Medline Pontoon Bedpans', 'DYND80217H', '1.01E+13', '', 'Saddle-shaped with a high-rolled front. Graduated in both mL and ounces. Non-stick surface. Also available in pigment-free to support \"greener manufacturing\"\n\nQuantity : 1 EA\nColor : Graphite\nSize : 1200mL\nLatex-Free : Yes\nMaterial : Plastic', 0.0000, 0.0000, 0.0000, 0.0000, 3.06, 2.27, '', '', 0, 0, 0, 0, 0),
(39, 'Medical Supply', 0, 'Cervical Collars', 6, '', '', 'Medline', 'Medline Serpentine Style Firm Cervical Collar - Small, 3\" x 15\"', 'ORT13200S', '1.01E+13', '', 'Helps allows the chin to rest on the collar.\nSynthetic stockinette cover with hook and loop closure.\nIncludes 6\" extension piece to accommodate larger sizes.\nIncludes an extra synthetic cover that can be washed.\nFirm Foam\n\nSize : Small, 3\" x 15\"\nDensity: Firm\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 4.83, 3.58, '', '', 0, 0, 0, 0, 0),
(40, 'Medical Supply', 0, 'Cervical Collars', 6, '', '', 'Medline', 'Medline Serpentine Style Firm Cervical Collar - Medium, 3\" x 17\"', 'ORT13200M', '1.01E+13', '', 'Helps allows the chin to rest on the collar.\nSynthetic stockinette cover with hook and loop closure.\nIncludes 6\" extension piece to accommodate larger sizes.\nIncludes an extra synthetic cover that can be washed.\nFirm Foam\n\nSize : Medium, 3\" x 17\"\nDensity: Firm\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 4.47, 3.31, '', '', 0, 0, 0, 0, 0),
(41, 'Medical Supply', 0, 'Cervical Collars', 6, '', '', 'Medline', 'Medline Serpentine Style Firm Cervical Collar - Large', 'ORT13200L', '1.01E+13', '', 'Helps allows the chin to rest on the collar.\nSynthetic stockinette cover with hook and loop closure.\nIncludes an extra synthetic cover that can be washed.\nFirm Foam\n\nQuantity : 1 Each\nSize : Large, 4\" x 22\"\nDensity: Firm\nLatex Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 5.13, 3.80, '', '', 0, 0, 0, 0, 0),
(42, 'Medical Supply', 0, 'Cervical Collars', 6, '', '', 'Laerdal Medical', 'Laerdal Medical Cervical Collar Stifneck? Select? Adult', '', '98013000', '', 'Locks ensure selected sizes stay in place\nAdjustment tracks ensure symmetrical alignment of size\nEasy access for pulse checks, advanced airway procedures, and visualization through oversized trachea hole\nDirections molded into collar\n\nFastening Type : Hook and Loop Closure\nX-Ray Compatibility : X-Ray Compatible\nSize : Adult\nApplication : Cervical Collar\nColor Code : White\nMaterial : Plastic\nUNSPSC Code : 42171607', 0.0000, 0.0000, 0.0000, 0.0000, 11.70, 8.67, '', '', 0, 0, 0, 0, 0),
(43, 'Medical Supply', 0, 'Cervical Collars', 6, '', '', 'Medline', 'Medline Philadelphia Patriot One-Piece Cervical Collars-Universal', 'ORT12000A', '', '', 'Item # MED ORT12000A by Medline (Mfg. Part # , UPC # )\n\nPhilly Patriot Cervical Collars: Made Of High Density Polyethylene Plastic With A Foam Lining For Comfort And Rigidity, Stacks Flat To Preserve Space, Adjusts To Different Heights With Locking Tabs, X-Ray Ct And Mri Lucent Adult Size, 11\" - 23\" Circumference.\n\nQuantity : Each\nSize : 11\"-23\"', 0.0000, 0.0000, 0.0000, 0.0000, 14.09, 10.44, '', '', 0, 0, 0, 0, 0),
(44, 'Medical Supply', 0, 'Cervical Collars', 6, '', '', 'Medline', 'Medline Philadelphia Patriot One-Piece Cervical Collars-Universal', 'ORT12000C', '', '', 'Philly Patriot Cervical Collars: Made Of High Density Polyethylene Plastic With A Foam Lining For Comfort And Rigidity, Stacks Flat To Preserve Space, Adjusts To Different Heights With Locking Tabs, X-Ray Ct And Mri Lucent Child Size, 8\" - 18\" Circumference.\n\nQuantity : Each\nSize : 8\"-18\"', 0.0000, 0.0000, 0.0000, 0.0000, 12.35, 9.15, '', '', 0, 0, 0, 0, 0),
(45, 'Medical Supply', 0, 'Cervical Collars', 6, '', '', 'GF Health', 'GF Health Soft Foam Cervical Collar with Support', '8605L', '7.17E+11', '', 'Conventional collar made of high density Polyurethane foam. Collar is covered with soft, hypoallergenic cotton stockinet for comfort. Available in medium and large sizes. Medium: 13\" - 15\" Large: 15\" - 17\"\n\nQuantity : 1 Each\nSize : Large\nLength : 15\" - 17\"', 0.0000, 0.0000, 0.0000, 0.0000, 8.02, 5.94, '', '', 0, 0, 0, 0, 0),
(46, 'Medical Supply', 0, 'Cervical Collars', 6, '', '', 'Scott Specialties ', 'Scott Specialties Cervical Collar Sport-Aid? Medium Density Universal 2-1/2 Inch Height 12 to 22 Inch Circumference', '45183000', '76318912667', '', 'Extra stockinette sleeve included\n2-1/2 inch wide at chin cut-out\nHook and Loop Closure\n1inch thick medium-firm foam, fits 12 to 22 inch neck\n\nFastening Type : Hook and Loop Closure\nColor : Natural Color\nType : Medium Density\nSize : Universal\nApplication : Cervical Collar\nHeight : 2-1/2 Inch Height\nMaterial : Foam\nNeck Circumference : 12 to 22 Inch Circumference\nUNSPSC Code : 42241803', 0.0000, 0.0000, 0.0000, 0.0000, 9.61, 7.12, '', '', 0, 0, 0, 0, 0),
(47, 'Medical Supply', 0, 'Stethoscope', 7, '', '', 'EKO', 'EKO CORE Digital Stethoscope Bundle, Stethoscope + Digital Device', 'CORE-BUNDLE', '8.64E+11', '', 'The Eko Digital Stethoscope provides everything you need to experience the next big thing in modern diagnostic care. An attached analog stethoscope provides added convenience with an included mobile app to record, replay, and amplify heart and lung sounds.\n\nEko Core digital device with attached single-head analog stethoscope\nProvides seamless analog and digital sound\nWirelessly transmits the stethoscope audio via Bluetooth LE? to a smartphone or tablet\nAnalog and digital modes\nAudio amplification in digital mode\n7 amplification levels\nRechargable battery\nMobile App compatible with smartphones and tablets with iOS 7 or Android 5.0 and up\nWeb app compatible with current versions of Chrome, Safari, Firefox and Edge\nIncludes mobile app\n\nUnless you are a licensed care provider or a similar qualified entity a prescription is required to purchase this item.\nPrescriptions may be sent via:\nFax to: 650-443-5201\nEmail to RX@bettymills.com\nMail to: 161 West 25th Avenue, Suite 203, San Mateo, CA 94403\nYou are entitled to a free consultation following the purchase of this item.\nQuantity : 1 Each\nMaterial : High-Impact ABS Plastic\nConnection : Bluetooth 4.0\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 0.00, 299.99, '', '', 0, 0, 0, 0, 0),
(48, 'Medical Supply', 0, 'Nutritionals & Supplements', 8, '', '', 'Simply Thick', 'Simply Thick Food Thickener Gel - Bottle, 64 oz. with Recyclable Pump', '50002601', '8.21E+11', '', 'SimplyThick? is the next-generation food and beverage thickener designed specifically for people who have difficulties swallowing.\n\nSimplyThick? gel thickener consists of four common food ingredients: water, xanthan gum, sodium acid sulphate and potassium sorbate (preservative) \n\nFreshness Guarantee: Betty Mills guarantees the expiration date on our products will always meet or exceed your satisfaction or we will replace it at no cost.\n\nQuantity : 1 Bottle\nSize : 64 oz.\nFlavor : Gel (Nectar - Honey Consistency)\nManuf P/N: Simply Thick 05005\nContainer Type : Pump/Pour Bottle\nApplication : Food Thickener\nIncludes : 1 Recyclable Pump\nUNSPSC Code : 42231806', 0.0000, 0.0000, 0.0000, 0.0000, 47.99, 38.99, '', '', 0, 0, 0, 0, 0),
(49, 'Medical Supply', 0, 'Hazardous Waste Control', 9, '', '', 'Medline', 'Medline Biohazard Patient Room Sharps Container - 5 Quarts', 'MDS705153H', '8.88E+11', '', 'The torturous lid design facilitates one-handed disposal.\nHorizontal drop design for maximum capacity to fill line.\nEach container locks for final disposal.\nNestable containers save space and help reduce shipping costs.\nEasy-to-see fill levels.\n\nQuantity : 1 Each\nVolume : 5 Quart\nColor : Red\nLatex Free : Yes\nLid Compatibility : Yes\nNested : Yes\nContainer Type : Sharps/Biohazard Container\nCounter Balanced Lid : No\nLid Compatibility : Yes\nTortuous Lid : Yes\nFor Use With : MED MDS707953\nUNSPSC : 42142531', 0.0000, 0.0000, 0.0000, 0.0000, 5.59, 4.14, '', '', 0, 0, 0, 0, 0),
(50, 'Medical Supply', 0, 'Hazardous Waste Control', 9, '', '', 'Medline', 'Medline Biohazard Patient Room Sharps Containers - 5 Quarts', 'MDS705153', '8.88E+11', '', 'The torturous lid design facilitates one-handed disposal.\nHorizontal drop design for maximum capacity to fill line.\nEach container locks for final disposal.\nNestable containers save space and help reduce shipping costs.\nEasy-to-see fill levels.\n\nQuantity : 20 per Case\nVolume : 5 Quart\nColor : Red\nLatex Free : Yes\nLid Compatibility : Yes\nNested : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 120.57, 89.31, '', '', 0, 0, 0, 0, 0),
(51, 'Medical Supply', 0, 'Gauzes & Dressings', 10, '', '', 'McKesson', 'McKesson Clinging Roll Gauze Sterile Latex-Free 4in x 4.5 Yds', '66722000', '8.10E+11', '', 'Clinging Gauze Rolls. Sterile. 4 inch x 4.5 yds. 100% cotton, 2-ply woven bandage. Ideal as a secondary dressing for wrapping legs and arms and to hold dressings in place. Provides light stretch which enables it to conform to difficult body contours while also providing light compression. Easy to apply. Single Use. Compare to Kling?, Kerlix Lite?, and Bulkee Lite?. Latex-Free. Packaged: 12 Rolls Per Pack. Kling is a registered trademark of Johnson & Johnson Medical Inc. Kerlix Lite is a registered trademark of Kendall Healthcare. Bulkee Lite is a registered trademark of Medline Industries, Inc.\n\nQuantity : 12 EA per PK\nApplication : Conforming Dressing\nDimensions : 4 Inch X 4.5 Yard\nSterile : Yes\nLatex-Free Indicator : Latex-Free\nMaterial : Cotton\nColor : White\nShape : Roll', 0.0000, 0.0000, 0.0000, 0.0000, 8.01, 5.93, '', '', 0, 0, 0, 0, 0),
(52, 'Medical Supply', 0, 'Gauzes & Dressings', 10, '', '', 'McKesson', 'McKesson Clinging Roll Gauze Sterile Latex-Free 4in x 4.5 Yds', '66722000-CS', '', '', 'Clinging Gauze Rolls. Sterile. 4 inch x 4.5 yds. 100% cotton, 2-ply woven bandage. Ideal as a secondary dressing for wrapping legs and arms and to hold dressings in place. Provides light stretch which enables it to conform to difficult body contours while also providing light compression. Easy to apply. Single Use. Compare to Kling?, Kerlix Lite?, and Bulkee Lite?. Latex-Free. Packaged: 12 Rolls Per Sleeve, 8 Sleeves Per Case. Kling is a registered trademark of Johnson & Johnson Medical Inc. Kerlix Lite is a registered trademark of Kendall Healthcare. Bulkee Lite is a registered trademark of Medline Industries, Inc.\n\nQuantity : 12 EA per Pack 8 Packs per Case\nApplication : Conforming Dressing\nDimensions : 4 Inch X 4.5 Yard\nSterile : Yes\nLatex-Free Indicator : Latex-Free\nMaterial : Cotton\nColor : White\nShape : Roll', 0.0000, 0.0000, 0.0000, 0.0000, 65.60, 48.59, '', '', 0, 0, 0, 0, 0),
(53, 'Medical Supply', 0, 'Gloves', 11, '', '', 'McKesson', 'McKesson Trilon? Powder-Free Exam Vinyl Gloves - Large', '52961300', '', '', 'Trilon? Vinyl Powder-Free Exam Gloves - Large\nOffers a soft and silky feel with a translucent look.\nSmooth finish for excellent tactile sensitivity.\nPowder-Free\nBeaded Cuff\nNon-Sterile\nAmbidextrous\nSingle use only\nNot made with natural rubber latex.\n\nQuantity : 100 per Box\nSize : Large\nMaterial : Vinyl\nColor : Clear\nCuff Style : Beaded Cuff\nFingertip Thickness : 0.10 mm (4 mil)\nGlove Exterior : Smooth\nHand Compatibility : Ambidextrous\nLength in Inches : 9.6 Inch\nPowder Content : Powder Free\nSterility : NonSterile', 0.0000, 0.0000, 0.0000, 0.0000, 4.82, 3.57, '', '', 0, 0, 0, 0, 0),
(54, 'Medical Supply', 0, 'Enema Supplies', 12, '', '', 'Medical Action Industries', 'Medical Action Industries Enema Bucket Set w/Castile Soap Gentle-L-Care? 1500 ml', '25602700', '', '', 'Quantity : 1EA\nVolume : 1500 mL\nApplication : Enema Bucket Set w/Castile Soap\nUNSPSC Code : 42141901', 0.0000, 0.0000, 0.0000, 0.0000, 3.97, 2.94, '', '', 0, 0, 0, 0, 0),
(55, 'Medical Supply', 0, 'Enema Supplies', 12, '', '', 'Medline', 'Medline Enema Bag Set - 1500 cc', 'DYND70102H', '1.01E+13', '', 'Medline Enema Bag, with Slide Clamp, Polybag\n\nMedline Disposable Enema Bag Set: Designed with a spill proof valve on the 1500 cc enema bag and easy-use funnel top. 54\" soft vinyl tube has a pre-lubricated, smooth, non-traumatic tip with rounded eyes for safety and easy insertion. Set also contains a moisture-proof, castile soap packet and a plastic shut- off clamp. Economy Enema Bag, Same as Above, Individually Bagged.\n\nQuantity : 1 EA\nDisposable : Yes\nLatex-Free : Yes\nSize : 1500cc', 0.0000, 0.0000, 0.0000, 0.0000, 2.48, 1.84, '', '', 0, 0, 0, 0, 0),
(56, 'Medical Supply', 0, '', 14, 'Amsino International Enema Bag', 'Amsino-International-Enema-Bag', '0', 'Amsino International Enema Bag - 1500 mL', '33332700        ', '        ', ' ', 'Slide Clamp, Soap Packet, Waterproof Drape<br><br><br><br><br><br><br><br>\r\n<br><br><br><br><br><br><br><br>\r\nQuantity : 1 Each<br><br><br><br><br><br><br><br>\r\nVolume : 1,500 mL Bag<br><br><br><br><br><br><br><br>\r\nApplication : Enema Bag and Bucket Set<br><br><br><br><br><br><br><br>\r\nTip Type : Pre-Lubricated Tip<br><br><br><br><br><br><br><br>\r\nTubing Type : 60 Inch Tubing<br><br><br><br><br><br><br><br>\r\nUNSPSC Code : 42141902', 0.0000, 0.0000, 0.0000, 0.0000, 1.74, 1.29, '33332700.jpg', '31851201.jpg', 1, 0, 0, 0, 0),
(57, 'Medical Supply', 0, 'Enema Supplies', 12, '', '', 'Medtronic', 'Medtronic Enema Bucket 1400cc', '63102700', '1.09E+12', '', 'Dover? Enema Bucket and Tube Pre-Lubricated Tip, 24 Fr/Ch (8.0 mm) x 60\" (1.5 m) 1400 mL\n\nQuantity : 1EA\nVolume : 1400cc\nApplication : Enema Bucket\nTubing Type : 60 Inch Tube\nProp 65 : Yes\nMaterial : Plastic\nUNSPSC Code : 42141903', 0.0000, 0.0000, 0.0000, 0.0000, 2.82, 2.09, '', '', 0, 0, 0, 0, 0),
(58, 'Medical Supply', 0, 'Enema Supplies', 12, '', '', 'Medtronic', 'Medtronic Enema Bucket 1400cc, 50 EA/CS', '63102705', '2.09E+12', '', 'Quantity : 50 EA/CS\nApplication: Enema Bucket\nMaterial: Plastic\nTubing Type: 60 Inch Tube\nUNSPSC Code: 42141903\nVolume: 1400cc\nProp 65 : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 138.25, 102.41, '', '', 0, 0, 0, 0, 0),
(59, 'Medical Supply', 0, 'Enema Supplies', 12, '', '', 'Dynarex', 'Dynarex Enema Kit', '11742700', '6.17E+11', '', 'Kit contains: (1) 1500mL enema bag, (1) inlet tubing (60 inch length), (1)tubing clamp, (1) protection clamp, (1) Castile soap concentrate, (1) moisture proof drape (45 x 42 cm).\n\nQuantity : 1 EA\nApplication: Enema Kit\nUNSPSC Code: 42141903\nLatex Free Indicator: Not Made with Natural Rubber Latex', 0.0000, 0.0000, 0.0000, 0.0000, 2.28, 1.69, '', '', 0, 0, 0, 0, 0),
(60, 'Medical Supply', 0, 'Medicine Cups', 13, '', '', 'Medline', 'Medline Non-Sterile Graduated Plastic Medicine Cups - 1 oz - 100/Pack', 'DYND80000H', '2.01E+13', '', 'Translucent cups suitable for dispensing both liquid and dry medications\nCalibrated from 1-8 drams, 1/8-1 fluid ounce, 1-2 tablespoon and 2.5-30 mL and cc\n\nQuantity : 100 per Pack, 1 Tube\nLatex-Free : Yes\nMaterial : Plastic\nSize : 1 oz', 0.0000, 0.0000, 0.0000, 0.0000, 1.94, 1.44, '', '', 0, 0, 0, 0, 0),
(61, 'Medical Supply', 0, 'Medicine Cups', 13, '', '', 'Medline', 'Medline Non-Sterile Graduated Plastic Medicine Cups', 'DYND90000', '4.09E+13', '', 'Translucent cups suitable for dispensing both liquid and dry medications\nDYND80000 is calibrated from 1-8 drams, 1/8-1 fluid ounce, 1-2 tablespoon and 2.5-30 mL and cc\nDYND90000 comes with mL and cc measurements only\nPlastic\n\nQuantity : 5000 EA/CS\nGraduated : Yes\nMaterial : Plastic\nProduct Type : Medicine Cup\nOunces : 1\nSterile : No\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 97.13, 44.49, '', '', 0, 0, 0, 0, 0),
(62, 'Medical Supply', 0, 'Medicine Cups', 13, '', '', 'McKesson', 'McKesson Medi-Pak? Medicine Cups, 1 oz. Clear Polypropylene, 100 EA/PK', '46941201', '', '', 'With Lip\n1 oz.\nClear\nGraduated\nNon-Sterile\nPolypropylene\nSingle patient use.\nNot Made With Natural Rubber Latex.\n\nQuantity : 100 Cups\nCapacity : 1 oz\nLatex Free : Yes\nMaterial : Polypropylene\nColor : Clear', 0.0000, 0.0000, 0.0000, 0.0000, 1.15, 0.85, '', '', 0, 0, 0, 0, 0),
(63, 'Medical Supply', 0, 'Medicine Cups', 13, '', '', 'McKesson', 'McKesson Medi-Pak? 1 oz. Clear Polypropylene Medicine Cups, 5000/CS', '46941200', '4.06E+13', '', 'With Lip\n1 oz.\nClear\nGraduated\nNon-Sterile\nPolypropylene\nSingle patient use.\nNot made with natural rubber latex.\n\nQuantity : 5000 Cups (100 Per Sleeve, 50 Sleeves Per Case)\nMON46941200 - McKessonMedi-Pak? 1 oz. Clear Polypropylene Medicine Cups, 5000/CS\n', 0.0000, 0.0000, 0.0000, 0.0000, 54.96, 40.71, '', '', 0, 0, 0, 0, 0),
(64, 'Medical Supply', 0, 'Medicine Cups', 13, '', '', 'Medline', 'Medline Disposable Paper Souffle Cups .75 oz.- 250/Box', 'NON024215H', '3.01E+13', '', 'Feature tightly rolled edges and box pleats to ensure stability and rigidity. Work well in conjunction with pill crushers for clean and simple pill crushing. Ideal for medication distribution.\n\nQuantity : 250 per Box\nSize : 0.75 oz\nColor : White\nLatex-Free : Yes\nGraduated : No\nLiquid Type : Cold\nMaterial : Paper\nUNSPSC : 42192603', 0.0000, 0.0000, 0.0000, 0.0000, 3.51, 2.60, '', '', 0, 0, 0, 0, 0),
(65, 'Medical Supply', 0, 'Medicine Cups', 13, '', '', 'Medline', 'Medline Disposable Paper Souffle Cups - 250/Bag', 'NON024214Z', '2.01E+13', '', 'Feature tightly rolled edges and box pleats to ensure stability and rigidity.\nWork well in conjunction with pill crushers for clean and simple pill crushing.\nIdeal for medication distribution.\n\nQuantity : 250 per Bag\nSize : 0.5 oz\nMaterial : Paper\nLatex-Free : Yes', 0.0000, 0.0000, 0.0000, 0.0000, 4.32, 3.20, '', '', 0, 0, 0, 0, 0),
(66, 'Medical Supply', 0, 'Medicine Cups', 13, '', '', 'Medline', 'Medline Disposable Paper Souffle Cups-White - 5000/Case', 'NON024215', '4.01E+13', '', 'Medline Cup, Paper, Souffle, .75 Oz\n\nMedline Souffle Cups: Pleated portions are made of one-piece, dry-waxed construction for durability. Rims are tightly rolled for rigidity, and the base is recessed to prevent tipping.\n\nQuantity : 5,000 per Case, 20 Boxes\nLatex-Free : Yes\nSize : 0.75 oz', 0.0000, 0.0000, 0.0000, 0.0000, 64.30, 47.63, '', '', 0, 0, 0, 0, 0),
(67, 'Medical Supply', 0, 'Medicine Cups', 13, '', '', 'Medline', 'Medline Disposable Paper Souffle Cups-White - 5000/Case', 'NON024220', '4.01E+13', '', 'Medline Cup, Paper, Souffle, 1 Oz\n\nMedline Souffle Cups: Pleated portions are made of one-piece, dry-waxed construction for durability. Rims are tightly rolled for rigidity, and the base is recessed to prevent tipping. 3-1/2 oz cup doubles as a drinking cup. 1 oz.\n\nQuantity : 5,000 per Case, 20 Boxes\nLatex-Free : Yes\nSize : 1 oz', 0.0000, 0.0000, 0.0000, 0.0000, 74.17, 54.95, '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_items_commercial`
--

CREATE TABLE `store_items_commercial` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `unit_type` varchar(25) NOT NULL,
  `unit_pkg_count` int(11) NOT NULL,
  `unit_pkg_wgt` float(6,2) NOT NULL,
  `unit_pkg_ctn` int(11) NOT NULL,
  `level1_qty` int(11) NOT NULL,
  `level1_pricing` float(7,2) NOT NULL,
  `level2_qty` int(11) NOT NULL,
  `level2_pricing` float(7,2) NOT NULL,
  `level3_qty` int(11) NOT NULL,
  `level3_pricing` float(7,2) NOT NULL,
  `level4_qty` int(11) NOT NULL,
  `level4_pricing` float(7,2) NOT NULL,
  `level5_qty` int(11) NOT NULL,
  `level5_pricing` float(7,2) NOT NULL,
  `mod_dt` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store_items_commercial`
--

INSERT INTO `store_items_commercial` (`id`, `item_id`, `unit_type`, `unit_pkg_count`, `unit_pkg_wgt`, `unit_pkg_ctn`, `level1_qty`, `level1_pricing`, `level2_qty`, `level2_pricing`, `level3_qty`, `level3_pricing`, `level4_qty`, `level4_pricing`, `level5_qty`, `level5_pricing`, `mod_dt`, `userid`) VALUES
(23, 1, 'bag', 500, 2.00, 0, 1, 18.25, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0),
(24, 1, 'Ctn', 5000, 5.00, 0, 1, 45.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0);

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
(1, 'ABC', '', '123 Saddle Rd', 'Garfield', 'NJ', '07102', '9734788813', 'evelio@mailers.com', 0, 0),
(2, 'ABC', '', '123 Saddle Rd', 'Garfield', 'NJ', '07102', '9734788813', 'evelio@mailers.com', 0, 0),
(3, 'aaaaaaaaaaaaaa', '', 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'aa', 'aaaaaaaaaa', '9734788813', 'evelio@mailers.com', 0, 0),
(4, 'evelio velez', 'Evelio Velez', 'address1', '', '', '', '', 'evelio@mailers.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_products`
--

CREATE TABLE `store_products` (
  `id` int(11) NOT NULL,
  `parent_cat` varchar(100) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat` varchar(100) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `prd_headline` varchar(250) NOT NULL,
  `part_num` varchar(50) NOT NULL,
  `upc` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` float(8,2) NOT NULL,
  `sale_price` float(8,2) NOT NULL,
  `create_date` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_products`
--

INSERT INTO `store_products` (`id`, `parent_cat`, `sub_cat_id`, `sub_cat`, `manufacturer`, `prd_headline`, `part_num`, `upc`, `description`, `price`, `sale_price`, `create_date`, `userid`, `modified_date`) VALUES
(2, 'Medical Supply', 0, 'Feminine Hygiene', 'Medline', 'Medline Pad, Maternity, 11 in, with Tails, Non-Sterile', 'NON241280', '80196781488', '\nMedline OB Pad with Tails, 11\" long Non-sterile 12 per bg, 24 in a case. There is no adhesive strip along the back of the pad.\nQuantity : 288 per Case, 24 One-Dozen Bags\nSterile :No\nLatex-Free : Yes\n', 74.52, 55.20, 0, 0, 0),
(3, 'Medical Supply', 0, 'Feminine Hygiene', '\nVendPink dittie?', 'VendPink dittie? Vended Tampons', '80011', '', 'VendPink donates 20% of the profits from vended tampons to Y-ME National Breast Cancer Organization. Regular absorbency with pearlized plastic applicator. Packaged in uniquely designed vending tubes with mood-lifting messages on every wrapper.\n\nQuantity : 300 per Case', 114.24, 84.62, 0, 0, 0),
(4, 'Medical Supply', 0, 'Feminine Hygiene', 'Hospeco', 'Hospeco Maxithins? Vended Sanitary Napkins - 250 per Case', 'MT-4', '75289000447', 'Thin full protection. Folded to fit into #4 box for vending from feminine hygiene dispensers. For use with Hospeco HSC MT 1 and HSC FOCJR-25 vendors both sold separately. Also fits any vendor/feminine hygeine dispenser that vends #4 boxes.\n\nGrade : #4 Box Size\nQuantity : 250 per Case', 56.50, 41.85, 0, 0, 0),
(5, 'Medical Supply', 0, 'Feminine Hygiene', 'Hospeco ', 'Hospeco Tampons, Original, Regular Absorbency, 500 Tampons/Carton', 'PGC025001', '73010025004', 'Regular absorbency tampon individually wrapped and in vend-style tube. Tampax?, a name women trust.\n\nQuantity : 500 Tampons/Carton\nAbsorbency : Regular', 112.14, 83.07, 0, 0, 0),
(6, 'Medical Supply', 0, 'Feminine Hygiene', 'Hospeco ', 'Hospeco ComfortPlus Tampons, 100/Carton', 'HOSMT100FS', '75289068058', 'Regular absorbency tampon individually wrapped and in vend-style tube. Tampax?, a name women trust.\n\nQuantity : 100/Carton', 42.61, 31.56, 0, 0, 0),
(7, 'Medical Supply', 0, 'Feminine Hygiene', 'Hospeco', 'Hospeco 11\" Tabbed Maxi Non-Sterile - 12 per Pack', 'HS-74', '', '11\" tabbed non-sterile maternity pad.\nSize: 11\"\nQuantity : 12 per Pack\nQuantity : 24 Packs per Case\nPackaging : Bag Packed', 48.98, 36.28, 0, 0, 0),
(8, 'Medical Supply', 1, 'Grooming Supplies', 'Colgate-Palmolive ', 'Colgate-Palmolive Toothbrush Colgate Adult Soft', '55511700', '35000550101', 'Individually Wrapped.\n\nQuantity : 1 EA\nApplication: Toothbrush\nBristle Head Size: Full\nBristle Type: Soft\nUNSPSC Code: 53131503\nUser: Adult', 0.53, 0.39, 0, 0, 0),
(9, 'Medical Supply', 1, 'Grooming Supplies', 'Colgate-Palmolive ', 'Colgate-Palmolive Toothbrush Colgate Adult Soft, 144 EA/CS', '55511704', '3500055501', 'Individually Wrapped. Individually Wrapped.\n\nQuantity : 144 EA/CS\nApplication: Toothbrush\nBristle Head Size: Full\nBristle Type: Soft\nUNSPSC Code: 53131503\nUser: Adult', 79.92, 59.20, 0, 0, 0),
(10, 'Medical Supply', 1, 'Grooming Supplies', 'Colgate-Palmolive ', 'Colgate-Palmolive Powered Toothbrush Colgate&reg; 360&#176;&reg; Optic White&reg; Adult Soft', '16881700', '35000688606', 'Whitens teeth in just 1 week\r\nWith special polishing bristles, the 360&#176;&reg; Optic White&reg; Powered Toothbrush polishes away surface stains while cleaning hard to reach places\r\nIts dual action head, cheek and tongue cleaner and comfortable non-slip handle create a whole-mouth clean experience\r\n\r\nUser : Adult\r\nBristle Head Size : Full\r\nApplication : Powered Toothbrush\r\nHandle Type : Non-Slip Grip\r\nBristle Type : Soft', 11.87, 8.79, 0, 0, 0),
(11, 'Medical Supply', 1, 'Grooming Supplies', 'Geiss, Destin & Dunn', 'Geiss, Destin & Dunn Dental Floss Picks GoodSense Mint, 90 EA/PK', '44501700', '8.46E+11', 'Easy, convenient, disposable, one-handed flossing. Comfort grip handle.\n\nQuantity : 90 EA/PK\nApplication: Dental Floss Picks\nFlavor: Mint\nUNSPSC Code: 53131504', 2.24, 1.66, 0, 0, 0),
(12, 'Medical Supply', 1, 'Grooming Supplies', 'McKesson', 'McKesson Shower Cap Medi-Pak One Size Fits Most Clear', '10001700', '', 'Medi-Pak Shower Cap. Clear. One Size Fits All. Single Patient Use. Not Made With Natural Rubber Latex.\n\nQuantity : 1 EA\nApplication: Shower Cap\nColor: Clear\nSecuring Method: Elastic\nSize: One Size Fits Most\nUNSPSC Code: 53131601\nUsage: Single Patient Use\nLatex Free Indicator: Not Made with Natural Rubber Latex', 0.09, 0.07, 0, 0, 0),
(13, 'Medical Supply', 1, 'Grooming Supplies', 'SECURE', 'SECURE Comfort Strips - 15 Strips', '0392860', '364031300097', 'Extra Firm Hold for Lower Dentures\r\nThe patented waterproof adhesive that won\'t wash away while you\'re eating and drinking\r\nZinc Free!\r\nImproves Quality of Life\r\nThe solution for denture wearers with flat/narrow lower jaws.\r\nAssures a secure, strong bond between the lower denture and gum, even in the most difficult cases.\r\n.\r\n\r\nDisclaimer : These statements have not been evaluated by the FDA. These products are not intended to diagnose, treat, cure, or prevent any disease.\r\n\r\nQuantity : 15/EA', 9.19, 6.81, 0, 0, 0),
(14, 'Medical Supply', 1, 'Grooming Supplies', 'Procter & Gamble', 'Procter & Gamble Denture Adhesive Fixodent&reg; Extra Hold 1.6 oz. Powder\r\n', '13511700', '76660725362', 'Quantity : 1 Each\nVolume : 1.6 oz.\nApplication : Denture Adhesive\nUNSPSC Code : 53131510', 6.90, 5.11, 0, 0, 0),
(15, 'Medical Supply', 2, 'Personal Care Wipes', 'McKesson StayDry? ', 'McKesson StayDry? Disposable Washcloths w/Aloe, 100-Sheet Soft-Packs, 6PK/CS', '15653100', '10612479183442', '12\" x 8\" (30.5 cm x 20.3 cm)\nPre-Moistened\nHypoallergenic\nDermatologist Tested\nNatural Aloe and Vitamin E\nSoft and Strong\nConvenient Dispensing Lid\nAlcohol-Free\nNot made with natural rubber latex.\nPackaged : 100 Sheets per Pack, 6 Packs Per Case\n\nQuantity : 6 Packs per Case\nWipes : 100 per Pack\nSize : 12\" x 8\"\nSterile : No\nHCPCS : A4335', 25.03, 18.54, 0, 0, 0),
(16, 'Medical Supply', 2, 'Personal Care Wipes', 'Kimberly Clark Professional', 'Kimberly Clark Professional Fresh Care Flushable Cleansing Cloths, White, 3.75 x 5.5, 42/Pack', 'KCC36734', '36000724424', 'Fresh Care cleansing cloths leave you feeling cleaner and fresher than toilet paper alone. Cloths give you a shower-fresh feeling that leaves you confidently clean.\n\nFlushable wipes break up quickly and are sewer and septic safe. These soft wipes are gentle on skin, with just the right amount of moisture to provide the ultimate clean. Alcohol free.\n\nQuantity : 42 Wipes per Pack\nSize : 5.5\" x 3.75\"\nPlys : 1\nColor : White\nApplication : Personal Wipe\nApplicable Material : Skin', 4.68, 3.47, 0, 0, 0),
(17, 'Medical Supply', 2, 'Personal Care Wipes', 'Professional Disposables', 'Professional Disposables Hygea? Sanitizing Skin Wipe', '31851201', '', 'Use wherever antiseptic cleansing/refreshing is needed\n\nQuantity : 1 Each\nSize : 5\" x 7\"\nScent : Scented\nActive Ingredients : Benzalkonium Chloride\nApplication : Sanitizing Skin Wipe\nUNSPSC Code : 53131624', 0.07, 0.05, 0, 0, 0),
(18, 'Medical Supply', 2, 'Personal Care Wipes', 'Kimberly Clark Professional ', 'Kimberly Clark Professional Fresh Care Flushable Cleansing Cloths, White, 5 x 7 1/4, 168/Pack', 'KCC10358EA', '36000103588', 'Fresh Care cleansing cloths leave you feeling cleaner and fresher than toilet paper alone. Cloths give you a shower-fresh feeling that leaves you confidently clean. Flushable wipes break up quickly and are sewer and septic safe. These soft wipes are gentle on skin, with just the right amount of moisture to provide the ultimate clean. Alcohol free.\n\nTowel/Wipe Type : Hand/Body Wet Wipe\nApplication : Personal Wipe\nApplicable Material : Skin\nMaterial : Paper\nNumber of Plies : 1\nColor : White\nLength : 7 1/4\"\nWidth : 5\"\nPackaging : Pack\nNumber of Towels/Wipes Per Container : 168', 11.35, 8.41, 0, 0, 0),
(19, 'Medical Supply', 3, 'Skin Care Products', 'Medline', 'Medline Remedy Olivamine Calazime Skin Protectant Paste - 4 oz', 'MSC094544H', '80196306155', 'Remedy Olivamine Calazime Skin Protectant Paste has a higher viscosity (thickness) than other skin pastes\nNourishes skin, helps treat and prevent diaper rash, wet and cracked skin\nCalazime dries light exudates from compromised skin\nMenthol cools irritated skin and calms inflamed tissue\nSemi-breathable, long-lasting barrier protects torn or exposed skin against harmful stimuli\nNourishes skin with amino acids, antioxidants and pain control ingredients\nNon-allergenic\nNon-sensitizing\n\nQuantity : 1 Each\nLatex-Free : Yes\nSize : 4 oz\nTop Selling Item!', 12.43, 9.21, 0, 0, 0),
(20, 'Medical Supply', 3, 'Skin Care Products', 'McKesson ', 'McKesson No-Rinse Shampoo and Body Wash 8 oz. Squeeze Bottle Light Floral Scent', '27391800', '1.06E+13', 'McKesson Shampoo & Body Wash No Rinse. 8 oz (237 mL). Formulated to thoroughly clean hear and skin without water. Ideal for use with residents who may be confined to a bed. Absence of artificial dyes helps reduce the risk of irritation and makes it perfect for fragile skin and everyday use. Light floral fragrance creates a relaxing experience. Not Made With Natural Rubber Latex.\n\nQuantity : 1 EA\nApplication: No-Rinse Shampoo and Body Wash\nContainer Type: Squeeze Bottle\nHCPCS: A9270\nScent: Light Floral Scent\nSize: 8 oz.\nUNSPSC Code: 53131628\nLatex Free Indicator: Not Made with Natural Rubber Latex', 1.81, 1.34, 0, 0, 0),
(21, 'Medical Supply', 3, 'Skin Care Products', 'McKesson', '\nMcKesson Perineal & Skin Cleanser - 1 Gallon', '83101800', '1.06E+13', 'Gentle fresh scent.\nA single-step, no-rinse formula designed to clean, moisturize and deodorize the skin.\nThe formula is pH balanced to be gentle and non-irritating on all body areas.\nThe no-rinse perineal wash aids in emulsifying feces and cleansing urine while added Aloe Vera and Vitamins A, C, & E moisturizers help prevent dryness.\nIntended for use in helping reduce perineal dermatitis.\nNot made with natural rubber latex.\n\nQuantity : 1 Each\nSize : 1 Gallon\nScent : Fresh\nPH Balance : 6.0 - 7.0', 16.01, 11.86, 0, 0, 0),
(22, 'Medical Supply', 3, 'Skin Care Products', 'ConvaTec Aloe Vesta?', 'ConvaTec Aloe Vesta? Perineal Wash Spray, 8 oz., Citrus Scent\n', '18691801', '1.08E+13', 'The Aloe Vesta? perineal/skin cleanser is designed for incontinence cleansing. It contains a strong surfactant system to clean and emollients to moisturize.\n\nDispensed as a liquid spray. It is more convenient than soap and water cleansing from a basin.\n\nPlease note: This product does not contain latex.\n\nPlease see package insert for complete instructions for use.\n\nSize : 8 oz\nScent : Citrus\nType : Spray\nApplication : Perineal Wash\nContainer Type : Pump Bottle\nHCPCS : A6250 (Disclaimer)\nUNSPSC Code : 53131613', 4.50, 3.33, 0, 0, 0),
(23, 'Medical Supply', 4, 'Abdominal Binder', 'Medline', 'Medline 4-Panel Abdominal Binder 12\"- Large/XL', 'ORT21300LXL', '1.01E+13', '12\" abdominal binder is made with elastic and a soft material to provide comfort and flexibility. Measurement based upon circumference at the hips.\n\nFour-panel design helps reduce rolling. Not made with natural rubber latex.\n\nSize : Large/XL\nGender : Unisex\nLatex-Free : Yes\nLength : 46\" - 62\"', 16.12, 11.94, 0, 0, 0),
(24, 'Medical Supply', 4, 'Abdominal Binder', 'Medline', 'Medline Standard 9\" Abdominal Binders-Universal', 'MDS169024', '1.01E+13', 'Abdominal Unisize Binder, 9\", Fits Sizes 40-62. Elastic. Hook and Loop closure for contoured fit.\n\nSize : 40\"-62\"', 20.74, 15.36, 0, 0, 0),
(25, 'Medical Supply', 4, 'Abdominal Binder', 'Medline', 'Medline Standard 9\" Abdominal Binders-Universal', 'MDS169022  ', '1.01E+13', 'Abdominal Unisize Binder, 9\", Fits Sizes 30-45 Elastic. Hook and Loop closure for contoured fit.\n\nSize : 30\"-45\"', 17.90, 13.26, 0, 0, 0),
(26, 'Medical Supply', 4, 'Abdominal Binder', 'Medline', 'Medline Universal Abdominal Binders-Universal', 'ORT21100', '3.01E+13', '9\" Abdominal Binders: Made with latex-free elastic for optimal support, contact closure for easy adjustment, premium styles are lined and have a tri-panel design to reduce rolling. 27\" - 48\", Universal.\n\nSize : 27\"-48\"\nLatex-Free : Yes', 19.25, 14.26, 0, 0, 0),
(27, 'Medical Supply', 4, 'Abdominal Binder', 'Medline', 'Medline Universal Abdominal Binders-Universal', 'ORT21200', '1.01E+13', '10\" Abdominal Binders: Made with latex-free elastic, contact closure for easy adjustment, premium style is made with a higher quality elastic for longer wear. 27\" - 48\", Universal.\n\nSize : 27\"-48\"\nLatex-Free : Yes', 15.00, 11.11, 0, 0, 0),
(28, 'Medical Supply', 4, 'Abdominal Binder', 'Medline', 'Medline Universal Abdominal Binders-Universal', 'ORT21300', '3.01E+13', '12\" Abdominal Binders: Made with latex-free elastic for optimal support, contact closure for easy adjustment, premium styles are lined and have a 4-panel design to reduce rolling. 27\" - 48\", Universal.\n\nSize : 27\"-48\"\nLatex-Free : Yes', 17.33, 12.84, 0, 0, 0),
(29, 'Medical Supply', 4, 'Abdominal Binder', 'Dale Medical', 'Dale Medical Abdominal Binder One Size Fits Most Hook and Loop Closure 30 to 45 Inch 12 Inch Unisex', '88803000', '88803000', 'The new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels, which may result in skin tears, burns or even scarring\n\nFastening Type : Hook and Loop Closure\nHCPCS : A4466\nGender : Unisex\nWidth : 12 Inch\nColor : White\nSize : One Size Fits Most\nApplication : Abdominal Binder\nWaist Measurement : 30 to 45 Inch\nMaterial : Elastic\nUNSPSC Code : 42312502', 27.70, 20.52, 0, 0, 0),
(30, 'Medical Supply', 4, 'Abdominal Binder', 'Dale Medical', 'Dale Medical Abdominal Binder Universal Hook & Loop Closure 30-45\" 9\" Unisex', '44103000', '', '3 panel design\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia\n\nFastening Type : Hook and Loop Closure\nHCPCS : A4466\nGender : Unisex\nWidth : 9 Inch\nColor : White\nSize : Universal\nApplication : Abdominal Binder\nWaist Measurement : 30 to 45 Inch\nMaterial : Elastic\nUNSPSC Code : 42312502', 24.14, 17.88, 0, 0, 0),
(31, 'Medical Supply', 4, 'Abdominal Binder', 'Dale Medical', 'Dale Medical Abdominal Binder, Universal Hook & Loop Closure, 46-62\" x 12\", Unisex', '81103000', '', '4 panel design\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia\n\nFastening Type : Hook and Loop Closure\nHCPCS : A4462\nGender : Unisex\nWidth : 12 Inch\nColor : White\nSize : Universal\nApplication : Abdominal Binder\nWaist Measurement : 46 to 62 Inch\nMaterial : Elastic\nUNSPSC Code : 42312502', 33.21, 24.60, 0, 0, 0),
(32, 'Medical Supply', 4, 'Abdominal Binder', 'Dale Medical', 'Dale Medical 15\" Abdominal Binder with Easy Grip?', '92003000', '', '5 panel design\nThe new pre-paneled stretch material incorporates an innovative joining stitch that prevents skin from migrating through and between the panels\nA fully adjustable post-operative support made from an all-elastic material which allows total circumferential compression and controls the pressure being applied to the abdomen\nThe newest model Dale Abdominal Binder now features the new EasyGrip? Strip which can hold up to four 100cc drainage bulbs in place\nDesigned to allow a full range of motion, the Dale? Abdominal Binder has a close stitch to prevent skin migration and only stretches in one direction to prevent riding, roping, and folding over\nThis support moves with the patient to help increase their activity and decrease post-op complications such as atelectasis and pneumonia\n\nWaist Measurement : 82 to 94 Inch\nWidth : 15 Inch\nFastening Type : Hook and Loop Closure\nColor : White\nHCPCS : A4466\nMaterial : Elastic\nUNSPSC Code : 42312502', 74.88, 55.47, 0, 0, 0),
(33, 'Medical Supply', 4, 'Abdominal Binder', 'DJO', 'DJO Abdominal Binder 2X-Large / 3X-Large 63 to 78 Inch Unisex', '16903000', '38481001698', 'Designed for inconspicuous wear under clothing\nRecommended for use with abdominal strains as well as post surgery applications\n\nHCPCS : L0625\nGender : Unisex\nSize : 2X-Large / 3X-Large\nApplication : Abdominal Binder\nWaist Measurement : 63 to 78 Inch\nMaterial : Elastic\nUNSPSC Code : 42312502', 29.05, 21.52, 0, 0, 0),
(34, 'Medical Supply', 5, 'Bedpans and Commodes', 'Medline', 'Medline Padded Drop-Arm Commode', 'G98204', '4.01E+13', 'Arms swing out of the way for easier lateral transfers on and off the commode.\nTransfers are easier for patients using a wheelchair.\nPlace near the bed with near arm down for patients transferring during the night.\nComes standard with pail, lids and splash guard.\n350-lb. (159 kg) Weight capacity; Seat height range, 20\"-25\" (51 cm-64 cm); Seat depth, 18\"-20\" (46 cm-51 cm); Width between arms, 18.5\" (47 cm); Overall width, 22\" (56 cm).\n\nOverall Width : 22\"\nWeight Capacity : 350 lbs.\nSeat Height : 20\"-25\"\nSeat Depth : 18\"-20\"\nCasters : No\nDrop Arm : Yes\nLatex-Free : No\nHCPCS : E0165', 114.20, 84.59, 0, 0, 0),
(35, 'Medical Supply', 5, 'Bedpans and Commodes', 'Medline', 'Medline Guardian Steel Elongated Bedside Commode', 'MDS89664ELH', '80196356921', 'Folding frame design assembles in seconds without tools.\nCommode folds down to reduce storage space by 35% and makes delivery easier.\nAll models include pail, lid and splash guard.\nClip-on seats can be removed for easy cleaning.\nFeatures deeper seat depth to allow more room for cleaning.\n\nWeight Capacity : 400 lbs.\nSeat Depth : 16.5\"\nSeat Height : 17\"-23\"\nWidth Between Arms : 19\"\nOverall Width : 22\"\nCasters : No\nDrop Arm : No\nLatex-Free : No\nHCPCS : E0163', 66.45, 49.22, 0, 0, 0),
(36, 'Medical Supply', 5, 'Bedpans and Commodes', 'Medline', 'Medline Bedside Commode with Microban', 'MDS89664ELMB', '8.88E+11', 'Microban? antimicrobial product protection inhibits the growth of stains and odors from bacteria, mold and mildew.\nThis product does not protect users or others against bacteria, viruses, germs or other disease organisms.\nHeight adjustable seat and arm rests provide a customizable fit.\nFlat-seat lid cover discretely conceals commode when not in use.\nCan be used over toilet to raise seat, enhancing stability; Splash guard included for over-the-toilet use.\nDark bronze finish and style suits most decors.\n400 lb. weight capacity\n\nQuantity : 1 Each\nDistance Between Arms : 19.6\"\nSeat Size : 19.2\"W x 17.4\"D\nWidth : 27.2\"\nFloor To Seat Height : 19\" - 22.5\"\nCapacity : 400 lbs', 182.25, 135.00, 0, 0, 0),
(37, 'Medical Supply', 5, 'Bedpans and Commodes', 'Invacare', 'Invacare IClass All-In-One Commode (Single Pack) - 30\" H x 21\" W x 18\" D', '9630-1', '91536297729', 'Invacare Commodes offer consumers the comfort and stability they need. The frame is lightweight and consumers gain additional comfort and support from the 16\" wide seat. The Invacare All-in-One Commode can be used bedside or can act as a toilet safety frame or raised toilet seat.\n\nCan be used bedside or with backrest removed, can act as a toilet safety frame or raised toilet seat\nLarge 16\" wide snap-on seat with lid for added comfort and support\nComes complete with commode bucket, bucket cover and splash shield\nWing nuts allow for removal of backrest when needed\n\nQuantity : 1 Each\nSize : 30\" H x 21\" W x 18\" D\nWeight Capacity : 350 lbs.', 50.56, 37.45, 0, 0, 0),
(38, 'Medical Supply', 5, 'Bedpans and Commodes', 'Medline', 'Medline Pontoon Bedpans', 'DYND80217H', '1.01E+13', 'Saddle-shaped with a high-rolled front. Graduated in both mL and ounces. Non-stick surface. Also available in pigment-free to support \"greener manufacturing\"\n\nQuantity : 1 EA\nColor : Graphite\nSize : 1200mL\nLatex-Free : Yes\nMaterial : Plastic', 3.06, 2.27, 0, 0, 0),
(39, 'Medical Supply', 6, 'Cervical Collars', 'Medline', 'Medline Serpentine Style Firm Cervical Collar - Small, 3\" x 15\"', 'ORT13200S', '1.01E+13', 'Helps allows the chin to rest on the collar.\nSynthetic stockinette cover with hook and loop closure.\nIncludes 6\" extension piece to accommodate larger sizes.\nIncludes an extra synthetic cover that can be washed.\nFirm Foam\n\nSize : Small, 3\" x 15\"\nDensity: Firm\nLatex Free : Yes', 4.83, 3.58, 0, 0, 0),
(40, 'Medical Supply', 6, 'Cervical Collars', 'Medline', 'Medline Serpentine Style Firm Cervical Collar - Medium, 3\" x 17\"', 'ORT13200M', '1.01E+13', 'Helps allows the chin to rest on the collar.\nSynthetic stockinette cover with hook and loop closure.\nIncludes 6\" extension piece to accommodate larger sizes.\nIncludes an extra synthetic cover that can be washed.\nFirm Foam\n\nSize : Medium, 3\" x 17\"\nDensity: Firm\nLatex Free : Yes', 4.47, 3.31, 0, 0, 0),
(41, 'Medical Supply', 6, 'Cervical Collars', 'Medline', 'Medline Serpentine Style Firm Cervical Collar - Large', 'ORT13200L', '1.01E+13', 'Helps allows the chin to rest on the collar.\nSynthetic stockinette cover with hook and loop closure.\nIncludes an extra synthetic cover that can be washed.\nFirm Foam\n\nQuantity : 1 Each\nSize : Large, 4\" x 22\"\nDensity: Firm\nLatex Free : Yes', 5.13, 3.80, 0, 0, 0),
(42, 'Medical Supply', 6, 'Cervical Collars', 'Laerdal Medical', 'Laerdal Medical Cervical Collar Stifneck? Select? Adult', '', '98013000', 'Locks ensure selected sizes stay in place\nAdjustment tracks ensure symmetrical alignment of size\nEasy access for pulse checks, advanced airway procedures, and visualization through oversized trachea hole\nDirections molded into collar\n\nFastening Type : Hook and Loop Closure\nX-Ray Compatibility : X-Ray Compatible\nSize : Adult\nApplication : Cervical Collar\nColor Code : White\nMaterial : Plastic\nUNSPSC Code : 42171607', 11.70, 8.67, 0, 0, 0),
(43, 'Medical Supply', 6, 'Cervical Collars', 'Medline', 'Medline Philadelphia Patriot One-Piece Cervical Collars-Universal', 'ORT12000A', '', 'Item # MED ORT12000A by Medline (Mfg. Part # , UPC # )\n\nPhilly Patriot Cervical Collars: Made Of High Density Polyethylene Plastic With A Foam Lining For Comfort And Rigidity, Stacks Flat To Preserve Space, Adjusts To Different Heights With Locking Tabs, X-Ray Ct And Mri Lucent Adult Size, 11\" - 23\" Circumference.\n\nQuantity : Each\nSize : 11\"-23\"', 14.09, 10.44, 0, 0, 0),
(44, 'Medical Supply', 6, 'Cervical Collars', 'Medline', 'Medline Philadelphia Patriot One-Piece Cervical Collars-Universal', 'ORT12000C', '', 'Philly Patriot Cervical Collars: Made Of High Density Polyethylene Plastic With A Foam Lining For Comfort And Rigidity, Stacks Flat To Preserve Space, Adjusts To Different Heights With Locking Tabs, X-Ray Ct And Mri Lucent Child Size, 8\" - 18\" Circumference.\n\nQuantity : Each\nSize : 8\"-18\"', 12.35, 9.15, 0, 0, 0),
(45, 'Medical Supply', 6, 'Cervical Collars', 'GF Health', 'GF Health Soft Foam Cervical Collar with Support', '8605L', '7.17E+11', 'Conventional collar made of high density Polyurethane foam. Collar is covered with soft, hypoallergenic cotton stockinet for comfort. Available in medium and large sizes. Medium: 13\" - 15\" Large: 15\" - 17\"\n\nQuantity : 1 Each\nSize : Large\nLength : 15\" - 17\"', 8.02, 5.94, 0, 0, 0),
(46, 'Medical Supply', 6, 'Cervical Collars', 'Scott Specialties ', 'Scott Specialties Cervical Collar Sport-Aid? Medium Density Universal 2-1/2 Inch Height 12 to 22 Inch Circumference', '45183000', '76318912667', 'Extra stockinette sleeve included\n2-1/2 inch wide at chin cut-out\nHook and Loop Closure\n1inch thick medium-firm foam, fits 12 to 22 inch neck\n\nFastening Type : Hook and Loop Closure\nColor : Natural Color\nType : Medium Density\nSize : Universal\nApplication : Cervical Collar\nHeight : 2-1/2 Inch Height\nMaterial : Foam\nNeck Circumference : 12 to 22 Inch Circumference\nUNSPSC Code : 42241803', 9.61, 7.12, 0, 0, 0),
(47, 'Medical Supply', 7, 'Stethoscope', 'EKO', 'EKO CORE Digital Stethoscope Bundle, Stethoscope + Digital Device', 'CORE-BUNDLE', '8.64E+11', 'The Eko Digital Stethoscope provides everything you need to experience the next big thing in modern diagnostic care. An attached analog stethoscope provides added convenience with an included mobile app to record, replay, and amplify heart and lung sounds.\n\nEko Core digital device with attached single-head analog stethoscope\nProvides seamless analog and digital sound\nWirelessly transmits the stethoscope audio via Bluetooth LE? to a smartphone or tablet\nAnalog and digital modes\nAudio amplification in digital mode\n7 amplification levels\nRechargable battery\nMobile App compatible with smartphones and tablets with iOS 7 or Android 5.0 and up\nWeb app compatible with current versions of Chrome, Safari, Firefox and Edge\nIncludes mobile app\n\nUnless you are a licensed care provider or a similar qualified entity a prescription is required to purchase this item.\nPrescriptions may be sent via:\nFax to: 650-443-5201\nEmail to RX@bettymills.com\nMail to: 161 West 25th Avenue, Suite 203, San Mateo, CA 94403\nYou are entitled to a free consultation following the purchase of this item.\nQuantity : 1 Each\nMaterial : High-Impact ABS Plastic\nConnection : Bluetooth 4.0\nLatex-Free : Yes', 0.00, 299.99, 0, 0, 0),
(48, 'Medical Supply', 8, 'Nutritionals & Supplements', 'Simply Thick', 'Simply Thick Food Thickener Gel - Bottle, 64 oz. with Recyclable Pump', '50002601', '8.21E+11', 'SimplyThick? is the next-generation food and beverage thickener designed specifically for people who have difficulties swallowing.\n\nSimplyThick? gel thickener consists of four common food ingredients: water, xanthan gum, sodium acid sulphate and potassium sorbate (preservative) \n\nFreshness Guarantee: Betty Mills guarantees the expiration date on our products will always meet or exceed your satisfaction or we will replace it at no cost.\n\nQuantity : 1 Bottle\nSize : 64 oz.\nFlavor : Gel (Nectar - Honey Consistency)\nManuf P/N: Simply Thick 05005\nContainer Type : Pump/Pour Bottle\nApplication : Food Thickener\nIncludes : 1 Recyclable Pump\nUNSPSC Code : 42231806', 47.99, 38.99, 0, 0, 0),
(49, 'Medical Supply', 9, 'Hazardous Waste Control', 'Medline', 'Medline Biohazard Patient Room Sharps Container - 5 Quarts', 'MDS705153H', '8.88E+11', 'The torturous lid design facilitates one-handed disposal.\nHorizontal drop design for maximum capacity to fill line.\nEach container locks for final disposal.\nNestable containers save space and help reduce shipping costs.\nEasy-to-see fill levels.\n\nQuantity : 1 Each\nVolume : 5 Quart\nColor : Red\nLatex Free : Yes\nLid Compatibility : Yes\nNested : Yes\nContainer Type : Sharps/Biohazard Container\nCounter Balanced Lid : No\nLid Compatibility : Yes\nTortuous Lid : Yes\nFor Use With : MED MDS707953\nUNSPSC : 42142531', 5.59, 4.14, 0, 0, 0),
(50, 'Medical Supply', 9, 'Hazardous Waste Control', 'Medline', 'Medline Biohazard Patient Room Sharps Containers - 5 Quarts', 'MDS705153', '8.88E+11', 'The torturous lid design facilitates one-handed disposal.\nHorizontal drop design for maximum capacity to fill line.\nEach container locks for final disposal.\nNestable containers save space and help reduce shipping costs.\nEasy-to-see fill levels.\n\nQuantity : 20 per Case\nVolume : 5 Quart\nColor : Red\nLatex Free : Yes\nLid Compatibility : Yes\nNested : Yes', 120.57, 89.31, 0, 0, 0),
(51, 'Medical Supply', 10, 'Gauzes & Dressings', 'McKesson', 'McKesson Clinging Roll Gauze Sterile Latex-Free 4in x 4.5 Yds', '66722000', '8.10E+11', 'Clinging Gauze Rolls. Sterile. 4 inch x 4.5 yds. 100% cotton, 2-ply woven bandage. Ideal as a secondary dressing for wrapping legs and arms and to hold dressings in place. Provides light stretch which enables it to conform to difficult body contours while also providing light compression. Easy to apply. Single Use. Compare to Kling?, Kerlix Lite?, and Bulkee Lite?. Latex-Free. Packaged: 12 Rolls Per Pack. Kling is a registered trademark of Johnson & Johnson Medical Inc. Kerlix Lite is a registered trademark of Kendall Healthcare. Bulkee Lite is a registered trademark of Medline Industries, Inc.\n\nQuantity : 12 EA per PK\nApplication : Conforming Dressing\nDimensions : 4 Inch X 4.5 Yard\nSterile : Yes\nLatex-Free Indicator : Latex-Free\nMaterial : Cotton\nColor : White\nShape : Roll', 8.01, 5.93, 0, 0, 0),
(52, 'Medical Supply', 10, 'Gauzes & Dressings', 'McKesson', 'McKesson Clinging Roll Gauze Sterile Latex-Free 4in x 4.5 Yds', '66722000-CS', '', 'Clinging Gauze Rolls. Sterile. 4 inch x 4.5 yds. 100% cotton, 2-ply woven bandage. Ideal as a secondary dressing for wrapping legs and arms and to hold dressings in place. Provides light stretch which enables it to conform to difficult body contours while also providing light compression. Easy to apply. Single Use. Compare to Kling?, Kerlix Lite?, and Bulkee Lite?. Latex-Free. Packaged: 12 Rolls Per Sleeve, 8 Sleeves Per Case. Kling is a registered trademark of Johnson & Johnson Medical Inc. Kerlix Lite is a registered trademark of Kendall Healthcare. Bulkee Lite is a registered trademark of Medline Industries, Inc.\n\nQuantity : 12 EA per Pack 8 Packs per Case\nApplication : Conforming Dressing\nDimensions : 4 Inch X 4.5 Yard\nSterile : Yes\nLatex-Free Indicator : Latex-Free\nMaterial : Cotton\nColor : White\nShape : Roll', 65.60, 48.59, 0, 0, 0),
(53, 'Medical Supply', 11, 'Gloves', 'McKesson', 'McKesson Trilon? Powder-Free Exam Vinyl Gloves - Large', '52961300', '', 'Trilon? Vinyl Powder-Free Exam Gloves - Large\nOffers a soft and silky feel with a translucent look.\nSmooth finish for excellent tactile sensitivity.\nPowder-Free\nBeaded Cuff\nNon-Sterile\nAmbidextrous\nSingle use only\nNot made with natural rubber latex.\n\nQuantity : 100 per Box\nSize : Large\nMaterial : Vinyl\nColor : Clear\nCuff Style : Beaded Cuff\nFingertip Thickness : 0.10 mm (4 mil)\nGlove Exterior : Smooth\nHand Compatibility : Ambidextrous\nLength in Inches : 9.6 Inch\nPowder Content : Powder Free\nSterility : NonSterile', 4.82, 3.57, 0, 0, 0),
(54, 'Medical Supply', 12, 'Enema Supplies', 'Medical Action Industries', 'Medical Action Industries Enema Bucket Set w/Castile Soap Gentle-L-Care? 1500 ml', '25602700', '', 'Quantity : 1EA\nVolume : 1500 mL\nApplication : Enema Bucket Set w/Castile Soap\nUNSPSC Code : 42141901', 3.97, 2.94, 0, 0, 0),
(55, 'Medical Supply', 12, 'Enema Supplies', 'Medline', 'Medline Enema Bag Set - 1500 cc', 'DYND70102H', '1.01E+13', 'Medline Enema Bag, with Slide Clamp, Polybag\n\nMedline Disposable Enema Bag Set: Designed with a spill proof valve on the 1500 cc enema bag and easy-use funnel top. 54\" soft vinyl tube has a pre-lubricated, smooth, non-traumatic tip with rounded eyes for safety and easy insertion. Set also contains a moisture-proof, castile soap packet and a plastic shut- off clamp. Economy Enema Bag, Same as Above, Individually Bagged.\n\nQuantity : 1 EA\nDisposable : Yes\nLatex-Free : Yes\nSize : 1500cc', 2.48, 1.84, 0, 0, 0),
(56, 'Medical Supply', 12, 'Enema Supplies', 'Amsino', 'Amsino International Enema Bag - 1500 mL', '33332700', '', 'Slide Clamp, Soap Packet, Waterproof Drape\n\nQuantity : 1 Each\nVolume : 1,500 mL Bag\nApplication : Enema Bag and Bucket Set\nTip Type : Pre-Lubricated Tip\nTubing Type : 60 Inch Tubing\nUNSPSC Code : 42141902', 1.74, 1.29, 0, 0, 0),
(57, 'Medical Supply', 12, 'Enema Supplies', 'Medtronic', 'Medtronic Enema Bucket 1400cc', '63102700', '1.09E+12', 'Dover? Enema Bucket and Tube Pre-Lubricated Tip, 24 Fr/Ch (8.0 mm) x 60\" (1.5 m) 1400 mL\n\nQuantity : 1EA\nVolume : 1400cc\nApplication : Enema Bucket\nTubing Type : 60 Inch Tube\nProp 65 : Yes\nMaterial : Plastic\nUNSPSC Code : 42141903', 2.82, 2.09, 0, 0, 0),
(58, 'Medical Supply', 12, 'Enema Supplies', 'Medtronic', 'Medtronic Enema Bucket 1400cc, 50 EA/CS', '63102705', '2.09E+12', 'Quantity : 50 EA/CS\nApplication: Enema Bucket\nMaterial: Plastic\nTubing Type: 60 Inch Tube\nUNSPSC Code: 42141903\nVolume: 1400cc\nProp 65 : Yes', 138.25, 102.41, 0, 0, 0),
(59, 'Medical Supply', 12, 'Enema Supplies', 'Dynarex', 'Dynarex Enema Kit', '11742700', '6.17E+11', 'Kit contains: (1) 1500mL enema bag, (1) inlet tubing (60 inch length), (1)tubing clamp, (1) protection clamp, (1) Castile soap concentrate, (1) moisture proof drape (45 x 42 cm).\n\nQuantity : 1 EA\nApplication: Enema Kit\nUNSPSC Code: 42141903\nLatex Free Indicator: Not Made with Natural Rubber Latex', 2.28, 1.69, 0, 0, 0),
(60, 'Medical Supply', 13, 'Medicine Cups', 'Medline', 'Medline Non-Sterile Graduated Plastic Medicine Cups - 1 oz - 100/Pack', 'DYND80000H', '2.01E+13', 'Translucent cups suitable for dispensing both liquid and dry medications\nCalibrated from 1-8 drams, 1/8-1 fluid ounce, 1-2 tablespoon and 2.5-30 mL and cc\n\nQuantity : 100 per Pack, 1 Tube\nLatex-Free : Yes\nMaterial : Plastic\nSize : 1 oz', 1.94, 1.44, 0, 0, 0),
(61, 'Medical Supply', 13, 'Medicine Cups', 'Medline', 'Medline Non-Sterile Graduated Plastic Medicine Cups', 'DYND90000', '4.09E+13', 'Translucent cups suitable for dispensing both liquid and dry medications\nDYND80000 is calibrated from 1-8 drams, 1/8-1 fluid ounce, 1-2 tablespoon and 2.5-30 mL and cc\nDYND90000 comes with mL and cc measurements only\nPlastic\n\nQuantity : 5000 EA/CS\nGraduated : Yes\nMaterial : Plastic\nProduct Type : Medicine Cup\nOunces : 1\nSterile : No\nLatex-Free : Yes', 97.13, 44.49, 0, 0, 0),
(62, 'Medical Supply', 13, 'Medicine Cups', 'McKesson', 'McKesson Medi-Pak? Medicine Cups, 1 oz. Clear Polypropylene, 100 EA/PK', '46941201', '', 'With Lip\n1 oz.\nClear\nGraduated\nNon-Sterile\nPolypropylene\nSingle patient use.\nNot Made With Natural Rubber Latex.\n\nQuantity : 100 Cups\nCapacity : 1 oz\nLatex Free : Yes\nMaterial : Polypropylene\nColor : Clear', 1.15, 0.85, 0, 0, 0),
(63, 'Medical Supply', 13, 'Medicine Cups', 'McKesson', 'McKesson Medi-Pak? 1 oz. Clear Polypropylene Medicine Cups, 5000/CS', '46941200', '4.06E+13', 'With Lip\n1 oz.\nClear\nGraduated\nNon-Sterile\nPolypropylene\nSingle patient use.\nNot made with natural rubber latex.\n\nQuantity : 5000 Cups (100 Per Sleeve, 50 Sleeves Per Case)\nMON46941200 - McKessonMedi-Pak? 1 oz. Clear Polypropylene Medicine Cups, 5000/CS\n', 54.96, 40.71, 0, 0, 0),
(64, 'Medical Supply', 13, 'Medicine Cups', 'Medline', 'Medline Disposable Paper Souffle Cups .75 oz.- 250/Box', 'NON024215H', '3.01E+13', 'Feature tightly rolled edges and box pleats to ensure stability and rigidity. Work well in conjunction with pill crushers for clean and simple pill crushing. Ideal for medication distribution.\n\nQuantity : 250 per Box\nSize : 0.75 oz\nColor : White\nLatex-Free : Yes\nGraduated : No\nLiquid Type : Cold\nMaterial : Paper\nUNSPSC : 42192603', 3.51, 2.60, 0, 0, 0),
(65, 'Medical Supply', 13, 'Medicine Cups', 'Medline', 'Medline Disposable Paper Souffle Cups - 250/Bag', 'NON024214Z', '2.01E+13', 'Feature tightly rolled edges and box pleats to ensure stability and rigidity.\nWork well in conjunction with pill crushers for clean and simple pill crushing.\nIdeal for medication distribution.\n\nQuantity : 250 per Bag\nSize : 0.5 oz\nMaterial : Paper\nLatex-Free : Yes', 4.32, 3.20, 0, 0, 0),
(66, 'Medical Supply', 13, 'Medicine Cups', 'Medline', 'Medline Disposable Paper Souffle Cups-White - 5000/Case', 'NON024215', '4.01E+13', 'Medline Cup, Paper, Souffle, .75 Oz\n\nMedline Souffle Cups: Pleated portions are made of one-piece, dry-waxed construction for durability. Rims are tightly rolled for rigidity, and the base is recessed to prevent tipping.\n\nQuantity : 5,000 per Case, 20 Boxes\nLatex-Free : Yes\nSize : 0.75 oz', 64.30, 47.63, 0, 0, 0),
(67, 'Medical Supply', 13, 'Medicine Cups', 'Medline', 'Medline Disposable Paper Souffle Cups-White - 5000/Case', 'NON024220', '4.01E+13', 'Medline Cup, Paper, Souffle, 1 Oz\n\nMedline Souffle Cups: Pleated portions are made of one-piece, dry-waxed construction for durability. Rims are tightly rolled for rigidity, and the base is recessed to prevent tipping. 3-1/2 oz cup doubles as a drinking cup. 1 oz.\n\nQuantity : 5,000 per Case, 20 Boxes\nLatex-Free : Yes\nSize : 1 oz', 74.17, 54.95, 0, 0, 0);

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
  `user_priv` int(11) NOT NULL DEFAULT '0',
  `create_date` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL,
  `avatar_name` varchar(100) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `last_login` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `username`, `email`, `password`, `security_code`, `status`, `user_priv`, `create_date`, `modified_date`, `avatar_name`, `is_admin`, `admin_id`, `last_login`, `is_delete`) VALUES
(1, 'evelez', 'evelio@mailers.com', '$2y$11$jekUbWMbzfOQw5ihj6skfetb994DKRT6j6hbby3Qi8QbFa5.mFYHG', '', 1, 0, 0, 0, '', 1, 0, 1508208750, 0),
(2, 'jkingsley', 'joe@mailers.com', '$2y$11$1deLrP1UtEDfby1xK9Lf1ewwVemK4rvuMiM60/B/58lYoEVJPDKnq', '', 1, 0, 0, 1507856584, '', 1, 2, 1507937365, 0);

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
  `create_date` int(11) NOT NULL,
  `mod_dt` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indexes for table `store_items_commercial`
--
ALTER TABLE `store_items_commercial`
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
-- Indexes for table `store_products`
--
ALTER TABLE `store_products`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` bigint(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `quickquote`
--
ALTER TABLE `quickquote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `store_accounts`
--
ALTER TABLE `store_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `store_categories`
--
ALTER TABLE `store_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `store_items`
--
ALTER TABLE `store_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `store_items_commercial`
--
ALTER TABLE `store_items_commercial`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `store_products`
--
ALTER TABLE `store_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_main`
--
ALTER TABLE `user_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `webpages`
--
ALTER TABLE `webpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
