-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 10:40 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_electronic`
--

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
  `transaction_info` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `txhash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `device` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `time_out` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_power_balance`
--

INSERT INTO `user_power_balance` (`id`, `provider_id`, `plant_type`, `power_amount`, `power_per_kw`, `payable_amount`, `reason`, `customer_id`, `transaction_info`, `txhash`, `device`, `time_out`, `created`, `updated`) VALUES
(34, '8', 'Solar Power', '20', '8', '160', 'sell', '9', '', '', '', '', '2020-12-26', '0000-00-00 00:00:00'),
(35, '8', 'Wind Power', '16', ' 11', '176', 'sell', '9', '{\"_eth\":{\"_requestManager\":{\"provider\":{\"host\":\"http://localhost:7545\",\"timeout\":0},\"polls\":{},\"timeout\":null},\"compile\":{},\"coinbase\":\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"mining\":true,\"hashrate\":0,\"syncing\":false,\"gasPrice\":\"20000000000\",\"accounts\":[\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"0x7fa80e8389e8af7feedefb6cc931a196bfbc6272\",\"0x01754f9be6fca2dd1f0806b38dedcbea941e4e8d\",\"0x0648da4c42df2a29b907ece9308dd701fe7defec\",\"0x5d380416bb1d350953473eed65e325aabab33265\",\"0x135596da53d4e74246199fa9108d77b7930b441c\",\"0x6457e1df7a60dab05d12f6d8a9f0234f1a2b33db\",\"0x3123a28360ba497440d901ba85be14dd9caaf14e\",\"0x1286ae44ab355093a723487756c6fa2a7376953b\",\"0x22100fa1e0a5059193467e8eb5baf14ba9089960\"],\"blockNumber\":10,\"protocolVersion\":\"63\"},\"transactionHash\":null,\"address\":\"0x5C8e3811F0928234eD1F9E1E30f08C61438E330b\",\"abi\":[{\"constant\":false,\"inputs\":[{\"name\":\"_poweID\",\"type\":\"string\"},{\"name\":\"_customerid\",\"type\":\"string\"},{\"name\":\"_provider_id\",\"type\":\"string\"},{\"name\":\"_power_amount\",\"type\":\"string\"},{\"name\":\"_power_per_kw\",\"type\":\"string\"},{\"name\":\"_payable_amount\",\"type\":\"string\"},{\"name\":\"_power_plant_type\",\"type\":\"string\"}],\"name\":\"setCandidate\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"_PoweID\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"payable_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"provider_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_plant_type\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_per_kw\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"customer_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"}]}', '0x7fa33d69fbc75ab7d2d13f9671aa624f18f635638969ab101e0c0826995c4fd8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36 OPR/67.0.3575.79::1', '1', '2020-12-26', '2020-12-29 09:22:18'),
(36, '10', 'Night Power', '10', '130', '1300', 'sell', '8', '{\"_eth\":{\"_requestManager\":{\"provider\":{\"host\":\"http://localhost:7545\",\"timeout\":0},\"polls\":{},\"timeout\":null},\"compile\":{},\"coinbase\":\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"mining\":true,\"hashrate\":0,\"syncing\":false,\"gasPrice\":\"20000000000\",\"accounts\":[\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"0x7fa80e8389e8af7feedefb6cc931a196bfbc6272\",\"0x01754f9be6fca2dd1f0806b38dedcbea941e4e8d\",\"0x0648da4c42df2a29b907ece9308dd701fe7defec\",\"0x5d380416bb1d350953473eed65e325aabab33265\",\"0x135596da53d4e74246199fa9108d77b7930b441c\",\"0x6457e1df7a60dab05d12f6d8a9f0234f1a2b33db\",\"0x3123a28360ba497440d901ba85be14dd9caaf14e\",\"0x1286ae44ab355093a723487756c6fa2a7376953b\",\"0x22100fa1e0a5059193467e8eb5baf14ba9089960\"],\"blockNumber\":6,\"protocolVersion\":\"63\"},\"transactionHash\":null,\"address\":\"0x5C8e3811F0928234eD1F9E1E30f08C61438E330b\",\"abi\":[{\"constant\":false,\"inputs\":[{\"name\":\"_poweID\",\"type\":\"string\"},{\"name\":\"_customerid\",\"type\":\"string\"},{\"name\":\"_provider_id\",\"type\":\"string\"},{\"name\":\"_power_amount\",\"type\":\"string\"},{\"name\":\"_power_per_kw\",\"type\":\"string\"},{\"name\":\"_payable_amount\",\"type\":\"string\"},{\"name\":\"_power_plant_type\",\"type\":\"string\"}],\"name\":\"setCandidate\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"_PoweID\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"payable_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"provider_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_plant_type\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_per_kw\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"customer_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"}]}', '0x83d327d2070e9dc0b4e75208a7593a52f89b0ee7a67abea09f400143fd431723', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36 OPR/67.0.3575.79::1', '1', '2020-12-26', '0000-00-00 00:00:00'),
(38, '10', 'Wind Power', '12', '120', '1440', 'sell', '8', '{\"_eth\":{\"_requestManager\":{\"provider\":{\"host\":\"http://localhost:7545\",\"timeout\":0},\"polls\":{},\"timeout\":null},\"compile\":{},\"coinbase\":\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"mining\":true,\"hashrate\":0,\"syncing\":false,\"gasPrice\":\"20000000000\",\"accounts\":[\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"0x7fa80e8389e8af7feedefb6cc931a196bfbc6272\",\"0x01754f9be6fca2dd1f0806b38dedcbea941e4e8d\",\"0x0648da4c42df2a29b907ece9308dd701fe7defec\",\"0x5d380416bb1d350953473eed65e325aabab33265\",\"0x135596da53d4e74246199fa9108d77b7930b441c\",\"0x6457e1df7a60dab05d12f6d8a9f0234f1a2b33db\",\"0x3123a28360ba497440d901ba85be14dd9caaf14e\",\"0x1286ae44ab355093a723487756c6fa2a7376953b\",\"0x22100fa1e0a5059193467e8eb5baf14ba9089960\"],\"blockNumber\":5,\"protocolVersion\":\"63\"},\"transactionHash\":null,\"address\":\"0x5C8e3811F0928234eD1F9E1E30f08C61438E330b\",\"abi\":[{\"constant\":false,\"inputs\":[{\"name\":\"_poweID\",\"type\":\"string\"},{\"name\":\"_customerid\",\"type\":\"string\"},{\"name\":\"_provider_id\",\"type\":\"string\"},{\"name\":\"_power_amount\",\"type\":\"string\"},{\"name\":\"_power_per_kw\",\"type\":\"string\"},{\"name\":\"_payable_amount\",\"type\":\"string\"},{\"name\":\"_power_plant_type\",\"type\":\"string\"}],\"name\":\"setCandidate\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"_PoweID\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"payable_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"provider_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_plant_type\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_per_kw\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"customer_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"}]}', '0x1692a08fe553b9d62ccc7a5a6e8d96d8d500ca0d5fdcb3866ec53c220a16208d', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36 OPR/67.0.3575.79::1', '1', '2020-12-26', '0000-00-00 00:00:00'),
(39, '8', 'Solar Power', '16', '5', '80', 'sell', '9', '{\"_eth\":{\"_requestManager\":{\"provider\":{\"host\":\"http://localhost:7545\",\"timeout\":0},\"polls\":{},\"timeout\":null},\"compile\":{},\"coinbase\":\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"mining\":true,\"hashrate\":0,\"syncing\":false,\"gasPrice\":\"20000000000\",\"accounts\":[\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"0x7fa80e8389e8af7feedefb6cc931a196bfbc6272\",\"0x01754f9be6fca2dd1f0806b38dedcbea941e4e8d\",\"0x0648da4c42df2a29b907ece9308dd701fe7defec\",\"0x5d380416bb1d350953473eed65e325aabab33265\",\"0x135596da53d4e74246199fa9108d77b7930b441c\",\"0x6457e1df7a60dab05d12f6d8a9f0234f1a2b33db\",\"0x3123a28360ba497440d901ba85be14dd9caaf14e\",\"0x1286ae44ab355093a723487756c6fa2a7376953b\",\"0x22100fa1e0a5059193467e8eb5baf14ba9089960\"],\"blockNumber\":9,\"protocolVersion\":\"63\"},\"transactionHash\":null,\"address\":\"0x5C8e3811F0928234eD1F9E1E30f08C61438E330b\",\"abi\":[{\"constant\":false,\"inputs\":[{\"name\":\"_poweID\",\"type\":\"string\"},{\"name\":\"_customerid\",\"type\":\"string\"},{\"name\":\"_provider_id\",\"type\":\"string\"},{\"name\":\"_power_amount\",\"type\":\"string\"},{\"name\":\"_power_per_kw\",\"type\":\"string\"},{\"name\":\"_payable_amount\",\"type\":\"string\"},{\"name\":\"_power_plant_type\",\"type\":\"string\"}],\"name\":\"setCandidate\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"_PoweID\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"payable_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"provider_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_plant_type\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_per_kw\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"customer_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"}]}', '0xd53d6717c6c60ae16d60f4f6188954016791a657b1e6daf4afe6cb27250abcd8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36 OPR/67.0.3575.79::1', '1', '2020-12-29', '2020-12-29 09:21:38'),
(40, '9', 'Wind Power', '16', '9', '144', 'sell', '8', '{\"_eth\":{\"_requestManager\":{\"provider\":{\"host\":\"http://localhost:7545\",\"timeout\":0},\"polls\":{},\"timeout\":null},\"compile\":{},\"coinbase\":\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"mining\":true,\"hashrate\":0,\"syncing\":false,\"gasPrice\":\"20000000000\",\"accounts\":[\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"0x7fa80e8389e8af7feedefb6cc931a196bfbc6272\",\"0x01754f9be6fca2dd1f0806b38dedcbea941e4e8d\",\"0x0648da4c42df2a29b907ece9308dd701fe7defec\",\"0x5d380416bb1d350953473eed65e325aabab33265\",\"0x135596da53d4e74246199fa9108d77b7930b441c\",\"0x6457e1df7a60dab05d12f6d8a9f0234f1a2b33db\",\"0x3123a28360ba497440d901ba85be14dd9caaf14e\",\"0x1286ae44ab355093a723487756c6fa2a7376953b\",\"0x22100fa1e0a5059193467e8eb5baf14ba9089960\"],\"blockNumber\":8,\"protocolVersion\":\"63\"},\"transactionHash\":null,\"address\":\"0x5C8e3811F0928234eD1F9E1E30f08C61438E330b\",\"abi\":[{\"constant\":false,\"inputs\":[{\"name\":\"_poweID\",\"type\":\"string\"},{\"name\":\"_customerid\",\"type\":\"string\"},{\"name\":\"_provider_id\",\"type\":\"string\"},{\"name\":\"_power_amount\",\"type\":\"string\"},{\"name\":\"_power_per_kw\",\"type\":\"string\"},{\"name\":\"_payable_amount\",\"type\":\"string\"},{\"name\":\"_power_plant_type\",\"type\":\"string\"}],\"name\":\"setCandidate\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"_PoweID\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"payable_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"provider_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_plant_type\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_per_kw\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"customer_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"}]}', '0x3b96a4d92354503437edba55714e95d6e12b8965d939acaa21829d332936b946', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36 OPR/67.0.3575.79::1', '1', '2020-12-29', '2020-12-29 09:18:40'),
(41, '9', 'Wind Power', '9', '9', '81', 'sell', '8', '{\"_eth\":{\"_requestManager\":{\"provider\":{\"host\":\"http://localhost:7545\",\"timeout\":0},\"polls\":{},\"timeout\":null},\"compile\":{},\"coinbase\":\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"mining\":true,\"hashrate\":0,\"syncing\":false,\"gasPrice\":\"20000000000\",\"accounts\":[\"0x0ca0c4e698c221dfe1a201ca5900fd09ee38e166\",\"0x7fa80e8389e8af7feedefb6cc931a196bfbc6272\",\"0x01754f9be6fca2dd1f0806b38dedcbea941e4e8d\",\"0x0648da4c42df2a29b907ece9308dd701fe7defec\",\"0x5d380416bb1d350953473eed65e325aabab33265\",\"0x135596da53d4e74246199fa9108d77b7930b441c\",\"0x6457e1df7a60dab05d12f6d8a9f0234f1a2b33db\",\"0x3123a28360ba497440d901ba85be14dd9caaf14e\",\"0x1286ae44ab355093a723487756c6fa2a7376953b\",\"0x22100fa1e0a5059193467e8eb5baf14ba9089960\"],\"blockNumber\":11,\"protocolVersion\":\"63\"},\"transactionHash\":null,\"address\":\"0x5C8e3811F0928234eD1F9E1E30f08C61438E330b\",\"abi\":[{\"constant\":false,\"inputs\":[{\"name\":\"_poweID\",\"type\":\"string\"},{\"name\":\"_customerid\",\"type\":\"string\"},{\"name\":\"_provider_id\",\"type\":\"string\"},{\"name\":\"_power_amount\",\"type\":\"string\"},{\"name\":\"_power_per_kw\",\"type\":\"string\"},{\"name\":\"_payable_amount\",\"type\":\"string\"},{\"name\":\"_power_plant_type\",\"type\":\"string\"}],\"name\":\"setCandidate\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"_PoweID\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"payable_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_amount\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"provider_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_plant_type\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"power_per_kw\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"customer_id\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"}]}', '0x18ac0f7293d4a0ce4d23275c34c876f83e0251bc4f31b07b5ce120a52f5fe6b4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36 OPR/67.0.3575.79::1', '1', '2020-12-29', '2020-12-29 09:37:39');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_power_balance`
--
ALTER TABLE `user_power_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
