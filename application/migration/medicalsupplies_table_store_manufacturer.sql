
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
(8, 'McKesson', '', '', '', '', '', '', '', 0, 0),
(11, 'Kole', '', '', '', '', '', '', '', 0, 0),
(15, 'Merits', '', '', '', '', '', '', '', 0, 0),
(16, 'Scott', '', '', '', '', '', '', '', 0, 0),
(17, 'Eclipse', '', '', '', '', '', '', '', 0, 0),
(18, 'Purell', '', '', '', '', '', '', '', 0, 0),
(19, 'Purell', '', '', '', '', '', '', '', 0, 0),
(20, 'Quintet AC', '', '', '', '', '', '', '', 0, 0),
(21, 'Procare', '', '', '', '', '', '', '', 0, 0),
(24, 'Johnson&Johnson', '', '', '', '', '', '', '', 0, 0),
(30, 'evelio', 'evelio', 'evelio', 'evelio', 'evelio', 'evelio', 'evelio', 'evelio', 0, 0);
