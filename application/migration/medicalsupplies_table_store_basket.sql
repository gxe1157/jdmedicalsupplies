
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
(33, 'a5ab9d4699435acf3969e61453894d7c1f5348b9', ' Suction Mount Super Grip Bath Handle', '9.99', '0.00', 103, 1, '0', '0', 'medical-supplies/misg273ki.jpg', 1515711455, 3, '::1');
