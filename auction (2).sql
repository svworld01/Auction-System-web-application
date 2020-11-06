-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2018 at 10:48 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auction`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_login` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `last_login`) VALUES
(100, 'akash', 'akash@gmail.com', 'akash123', 'fghjd');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `bid_cost` int(11) NOT NULL,
  `bid_date` varchar(30) NOT NULL,
  `bid_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `cus_id`, `pro_id`, `bid_cost`, `bid_date`, `bid_time`) VALUES
(462, 100, 9, 2399, '13/7/2018', '16:25'),
(463, 100, 9, 4566, '14/7/2018', '15:22');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_gender` varchar(50) NOT NULL,
  `cus_email` varchar(50) NOT NULL,
  `cus_mob` varchar(20) NOT NULL,
  `cus_state` varchar(100) NOT NULL,
  `cus_city` varchar(100) NOT NULL,
  `cus_pin` varchar(100) NOT NULL,
  `cus_address` text NOT NULL,
  `cus_img` text NOT NULL,
  `cus_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_gender`, `cus_email`, `cus_mob`, `cus_state`, `cus_city`, `cus_pin`, `cus_address`, `cus_img`, `cus_password`) VALUES
(100, 'Cusomer', 'Male', 'customer@gmail.com', '1241412421', 'UP', 'JNP', '222138', 'nwj fe fho', 'nfejfie jdi wjdi whfie fue fe fyeu', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_cat` varchar(30) NOT NULL,
  `pro_owner` varchar(30) NOT NULL,
  `pro_publish_data` varchar(30) NOT NULL,
  `pro_min_cast` int(7) NOT NULL,
  `pro_status` varchar(50) NOT NULL DEFAULT 'Active',
  `pro_disc` text NOT NULL,
  `pro_img` text NOT NULL,
  `bid_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_cat`, `pro_owner`, `pro_publish_data`, `pro_min_cast`, `pro_status`, `pro_disc`, `pro_img`, `bid_status`) VALUES
(9, 'dghjk', '100', '304', '2018-07-11', 2346, 'Active', 'xkjgd', 'BeautyPlusMe_20161116190932_fast.jpg', 2),
(10, 'dfghj', '100', '305', '2018-07-11', 46785, 'Active', 'fdgjdkssfjkdsfsdf', 'IMG_20180302_174455.jpg', 0),
(11, 'edrfgthjuk', '100', '304', '2018-07-05', 345678, 'Active', 'sdfghj dfghjk', '2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categoy`
--

CREATE TABLE `product_categoy` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_publish` varchar(50) NOT NULL,
  `cat_status` varchar(30) NOT NULL DEFAULT 'Active',
  `cat_deleted` varchar(30) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categoy`
--

INSERT INTO `product_categoy` (`cat_id`, `cat_name`, `cat_publish`, `cat_status`, `cat_deleted`) VALUES
(100, 'Electronics', '12/12/2015', 'Active', 'No'),
(107, 'mobile', '2018-07-13', 'Active', 'No'),
(108, 'mobiledat', '2018-07-17', 'Active', 'No'),
(109, 'cloths', '2018-07-10', 'Active', 'No'),
(111, 'machenic', '2018-07-19', 'Active', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `sel_id` int(11) NOT NULL,
  `sel_name` varchar(30) NOT NULL,
  `sel_gender` varchar(30) NOT NULL,
  `sel_email` varchar(30) NOT NULL,
  `sel_phone` varchar(15) NOT NULL,
  `sel_state` varchar(30) NOT NULL,
  `sel_city` varchar(30) NOT NULL,
  `sel_pin` int(6) NOT NULL,
  `sel_address` text NOT NULL,
  `sel_website` varchar(30) NOT NULL,
  `sel_img` text NOT NULL,
  `sel_status` varchar(30) NOT NULL DEFAULT 'active',
  `sel_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`sel_id`, `sel_name`, `sel_gender`, `sel_email`, `sel_phone`, `sel_state`, `sel_city`, `sel_pin`, `sel_address`, `sel_website`, `sel_img`, `sel_status`, `sel_password`) VALUES
(304, 'pawan', 'male', 'pawan@gmail.com', '8933918505', 'up', 'gct', 232340, 'jeopur', 'www.auction.com', 'IMG_20180330_145747.jpg', 'active', 'pawan123'),
(305, 'akash kumar', 'male', 'akash@gmail.com', '893391859', 'dfghjk', 'dfghj', 345678, 'hjdghj', 'www.google.com', 'BeautyPlus_20170818090334_save.jpg', 'active', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `email`, `password`) VALUES
(101, 'bcjks', 'bkdjne@Bj.s', 'njs'),
(199, 'akash', 'akash11@gmail.com', '1234455'),
(200, 'pawan', 'pawan@gmail.com', 'akash123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(100, 'Saurabh VErma', 'sv@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`),
  ADD UNIQUE KEY `cus_email` (`cus_email`),
  ADD UNIQUE KEY `cus_mob` (`cus_mob`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `product_categoy`
--
ALTER TABLE `product_categoy`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`sel_id`),
  ADD UNIQUE KEY `sel_email` (`sel_email`),
  ADD UNIQUE KEY `sel_phone` (`sel_phone`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=464;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_categoy`
--
ALTER TABLE `product_categoy`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `sel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
