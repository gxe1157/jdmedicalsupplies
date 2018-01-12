
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
  `pword` varchar(255) NOT NULL,
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

INSERT INTO `store_accounts` (`id`, `username`, `first_name`, `last_name`, `company`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `phone`, `email`, `pword`, `create_date`, `modified_date`, `status`, `is_deleted`, `last_login`, `admin_id`) VALUES
(1, 'EvelioVelez', '', '', '', '', '', '', '', '', '', '', 'evelio@mailers.com', '$2y$11$mjVD3yw/FBaI13tFVmh36.OflQqqml8tb5dTgloXEd03H28HchM8G', 0, 0, 0, 0, 1515709334, 0),
(2, 'smiley', '', '', '', '', '', '', '', '', '', '', 'smiley@mail.com', '$2y$11$L6JjhaUoSDy1a2K52G5L2uI/8zpbgodAo22vpeu3GAKtSnmvmGsTK', 0, 0, 0, 0, 1515542119, 0),
(3, 'customer', '', '', '', '', '', '', '', '', '', '', 'customer@mailers.com', '$2y$11$zeKuTr3f8TElphYnbwiqGOZE7tUKhhSdPET6TKJOXGKy73DQNBxGe', 0, 0, 0, 0, 1515711477, 0);
