-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 09:40 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `therubber2`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_catusers`
--

CREATE TABLE `db_catusers` (
  `catusers_id` int(11) NOT NULL,
  `catusers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_catusers`
--

INSERT INTO `db_catusers` (`catusers_id`, `catusers_name`) VALUES
(1, 'เจ้าของสวน'),
(2, 'ลูกจ้าง'),
(5, 'พนักงานรายวัน');

-- --------------------------------------------------------

--
-- Table structure for table `db_catwithdraw`
--

CREATE TABLE `db_catwithdraw` (
  `catwithdraw_id` int(11) NOT NULL,
  `catwithdraw_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_catwithdraw`
--

INSERT INTO `db_catwithdraw` (`catwithdraw_id`, `catwithdraw_name`) VALUES
(1, 'ฝากทั้งหมด'),
(2, 'เบิกทั้งหมด');

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_tel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `catcustomer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`customer_id`, `customer_name`, `customer_tel`, `catcustomer_id`) VALUES
(1, 'ลูกค้า ทดสอบ', '0845213659', 1),
(2, 'ชาลิสา รอดเลย', '0745213659', 2);

-- --------------------------------------------------------

--
-- Table structure for table `db_data`
--

CREATE TABLE `db_data` (
  `data_id` int(11) NOT NULL,
  `data_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `data_usersid` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `data_totalgallon` float NOT NULL,
  `data_wgallon` float NOT NULL,
  `data_disgallon` float NOT NULL,
  `data_percent` int(11) NOT NULL,
  `data_dryrubber` float NOT NULL,
  `data_price` float NOT NULL,
  `data_pricetotal` float NOT NULL,
  `data_shareprice` int(11) NOT NULL,
  `data_depositprice` int(11) NOT NULL,
  `status_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_data`
--

INSERT INTO `db_data` (`data_id`, `data_date`, `data_usersid`, `cat_id`, `data_totalgallon`, `data_wgallon`, `data_disgallon`, `data_percent`, `data_dryrubber`, `data_price`, `data_pricetotal`, `data_shareprice`, `data_depositprice`, `status_id`) VALUES
(1, '2021-06-12 07:47:00', 2, 2, 60.5, 5.2, 55.3, 30, 16.59, 60, 995.4, 0, 0, 0),
(2, '2021-06-12 07:54:16', 2, 2, 60.5, 5.2, 55.3, 45, 24.885, 130, 3235.05, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_manure`
--

CREATE TABLE `db_manure` (
  `manure_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `manure_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `manure_total` int(11) NOT NULL,
  `manure_pay` int(11) NOT NULL,
  `manure_sumtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_manure`
--

INSERT INTO `db_manure` (`manure_id`, `users_id`, `manure_date`, `manure_total`, `manure_pay`, `manure_sumtotal`) VALUES
(1, 1, '2021-05-19 09:49:51', 15000, 13000, 2000),
(2, 2, '2021-05-19 09:49:39', 15300, 5300, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `db_pricerubbers`
--

CREATE TABLE `db_pricerubbers` (
  `pricerubbers_id` int(11) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `percent` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_pricerubbers`
--

INSERT INTO `db_pricerubbers` (`pricerubbers_id`, `date_create`, `percent`, `price`) VALUES
(1, '2021-06-12 09:23:46', '20to21', 995),
(2, '2021-06-12 09:06:17', '22to23', 3235),
(3, '2021-06-12 06:27:44', '24to25', 30),
(4, '2021-06-12 06:27:44', '26to27', 40),
(5, '2021-06-12 06:27:44', '28to29', 50),
(6, '2021-06-12 06:27:44', '30to31', 60),
(7, '2021-06-12 06:27:44', '32to33', 70),
(8, '2021-06-12 06:27:44', '34to35', 80),
(9, '2021-06-12 07:32:45', '36to37', 90),
(10, '2021-06-12 06:27:44', '38to39', 100),
(11, '2021-06-12 06:27:44', '40to41', 110),
(12, '2021-06-12 07:33:34', '42to43', 120),
(13, '2021-06-12 06:27:44', '44to45', 130);

-- --------------------------------------------------------

--
-- Table structure for table `db_reveal`
--

CREATE TABLE `db_reveal` (
  `reveal_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `reveal_date` date NOT NULL,
  `reveal_datepay` date NOT NULL,
  `reveal_total` int(11) NOT NULL,
  `reveal_pay` int(11) NOT NULL,
  `reveal_sumtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_reveal`
--

INSERT INTO `db_reveal` (`reveal_id`, `users_id`, `reveal_date`, `reveal_datepay`, `reveal_total`, `reveal_pay`, `reveal_sumtotal`) VALUES
(1, 2, '2021-06-12', '2021-06-19', 5000, 400, 3000),
(2, 1, '2021-06-12', '2021-06-14', 300, 200, 0),
(3, 0, '0000-00-00', '0000-00-00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_users`
--

CREATE TABLE `db_users` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(144) COLLATE utf8_unicode_ci NOT NULL,
  `users_tel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users_usersname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `users_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_users`
--

INSERT INTO `db_users` (`users_id`, `users_name`, `users_tel`, `users_usersname`, `users_password`) VALUES
(1, 'นายนพคุณ พงษ์ไทย', '0898087753', 'noppakunp', '123456'),
(2, 'นายทดสอบ นามสมมุติ', '0861248953', 'Testterr123', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_catusers`
--
ALTER TABLE `db_catusers`
  ADD PRIMARY KEY (`catusers_id`);

--
-- Indexes for table `db_catwithdraw`
--
ALTER TABLE `db_catwithdraw`
  ADD PRIMARY KEY (`catwithdraw_id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `db_data`
--
ALTER TABLE `db_data`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `db_manure`
--
ALTER TABLE `db_manure`
  ADD PRIMARY KEY (`manure_id`);

--
-- Indexes for table `db_pricerubbers`
--
ALTER TABLE `db_pricerubbers`
  ADD PRIMARY KEY (`pricerubbers_id`);

--
-- Indexes for table `db_reveal`
--
ALTER TABLE `db_reveal`
  ADD PRIMARY KEY (`reveal_id`);

--
-- Indexes for table `db_users`
--
ALTER TABLE `db_users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_catusers`
--
ALTER TABLE `db_catusers`
  MODIFY `catusers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_catwithdraw`
--
ALTER TABLE `db_catwithdraw`
  MODIFY `catwithdraw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_data`
--
ALTER TABLE `db_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_manure`
--
ALTER TABLE `db_manure`
  MODIFY `manure_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_pricerubbers`
--
ALTER TABLE `db_pricerubbers`
  MODIFY `pricerubbers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `db_reveal`
--
ALTER TABLE `db_reveal`
  MODIFY `reveal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_users`
--
ALTER TABLE `db_users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
