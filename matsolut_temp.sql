-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 28, 2020 at 08:50 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matsolut_temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction_info`
--

CREATE TABLE `transaction_info` (
  `id` int(11) NOT NULL,
  `user_power_balance_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `block_no` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `txhash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tx_from` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tx_to` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `nonce` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `input_data` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction_info`
--

INSERT INTO `transaction_info` (`id`, `user_power_balance_id`, `block_no`, `txhash`, `tx_from`, `tx_to`, `nonce`, `input_data`, `created`) VALUES
(9, '34', '', '', '', '', '', '', '2020-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `phone`, `email`, `address`, `password`, `created`) VALUES
(8, 'user1', '0170000', 'user1@g.c', 'Dhaka', '81dc9bdb52d04dc20036dbd8313ed055', '2020-12-26'),
(9, 'user2', '017777', 'user2@g.c', 'Dhaka', '81dc9bdb52d04dc20036dbd8313ed055', '2020-12-26'),
(10, 'MahirTazwar', '01756800256', 'mahirtaz@gmail.com', 'mohakhali,dhaka', 'a004f95a4455a622b44a24ac50888cb0', '2020-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `user_power_balance`
--

CREATE TABLE `user_power_balance` (
  `id` int(11) NOT NULL,
  `provider_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `plant_type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `power_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `power_per_kw` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `payable_amount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `reason` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_info_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `updated` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_power_balance`
--

INSERT INTO `user_power_balance` (`id`, `provider_id`, `plant_type`, `power_amount`, `power_per_kw`, `payable_amount`, `reason`, `customer_id`, `transaction_info_id`, `created`, `updated`) VALUES
(34, '8', 'Solar Power', '20', '8', '160', 'sell', '9', '', '2020-12-26', ''),
(35, '8', 'Wind Power', '16', ' 11', '176', 'sell', '', '', '2020-12-26', ''),
(36, '10', 'Night Power', '10', '130', '1300', 'sell', '', '', '2020-12-26', ''),
(38, '10', 'Wind Power', '12', '120', '1440', 'sell', '', '', '2020-12-26', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction_info`
--
ALTER TABLE `transaction_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_power_balance`
--
ALTER TABLE `user_power_balance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction_info`
--
ALTER TABLE `transaction_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_power_balance`
--
ALTER TABLE `user_power_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
