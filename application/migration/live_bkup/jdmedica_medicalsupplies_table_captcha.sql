
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
(186, 1512872122, '92.114.83.22', 'iNYjzQ');
