-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 01:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first_otms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '123456', '1', '2023-09-20 15:07:28', '2023-09-26 09:44:33'),
(2, 'superadmin', '12345', '2', '2023-09-26 09:45:19', '2023-09-26 10:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `read` int(100) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `read`, `created_at`) VALUES
(3, 'shishir mishra', 'admin@gmail.com', 'rhjkgk', 'hjkghkiuybn', 1, '2023-10-09 16:44:05'),
(4, 'nsos\'k', 'admin@gmail.com', 'rhjkgk', 'bghbhjh ftyh ', 0, '2023-10-17 15:27:45'),
(5, 'nsos\'k', '', 'jke', 'jke jke', 0, '2023-10-23 15:43:06'),
(6, 'nsos\'k', 'test@gmail.com', 'jke', 'jke jke jke jke', 0, '2023-10-23 15:48:03'),
(7, 'nsos\'k', 'test@gmail.com', 'jke', 'jke jke jke jke jke jke jke jke', 0, '2023-10-23 17:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `fin_year`
--

CREATE TABLE `fin_year` (
  `id` int(11) NOT NULL,
  `fin_year_id` varchar(20) NOT NULL,
  `fin_year` varchar(20) NOT NULL,
  `is_delete` varchar(244) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fin_year`
--

INSERT INTO `fin_year` (`id`, `fin_year_id`, `fin_year`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, '1', '2021-22', '0', '2023-10-17 09:47:32', '2023-10-17 09:47:32'),
(2, '2', '2022-23', '0', '2023-10-17 09:47:39', '2023-10-17 09:47:39'),
(3, '3', '2023-24', '0', '2023-10-17 09:47:47', '2023-10-17 09:47:47'),
(4, '4', '2024-25', '0', '2023-10-17 11:18:48', '2023-10-17 11:18:48'),
(5, '5', '2025-26', '0', '2023-10-20 18:04:05', '2023-10-20 18:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `housetax_demand`
--

CREATE TABLE `housetax_demand` (
  `id` int(11) NOT NULL,
  `fin_year` varchar(100) NOT NULL,
  `ward_no` int(10) NOT NULL,
  `crn` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `arv` double(10,2) NOT NULL,
  `opening_arrear` double(10,2) NOT NULL,
  `opening_advance` double(10,2) NOT NULL,
  `total_tax` double(10,2) NOT NULL,
  `curr_arrear` double(10,2) NOT NULL,
  `curr_advance` double(10,2) NOT NULL,
  `arv_water` double(10,2) NOT NULL,
  `opening_arrear_water` double(10,2) NOT NULL,
  `opening_advance_water` double(10,2) NOT NULL,
  `total_tax_water` double(10,2) NOT NULL,
  `curr_arrear_water` double(10,2) NOT NULL,
  `curr_advance_water` double(10,2) NOT NULL,
  `from_date` varchar(100) NOT NULL,
  `to_date` varchar(100) NOT NULL,
  `billno` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `unique_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `housetax_demand`
--

INSERT INTO `housetax_demand` (`id`, `fin_year`, `ward_no`, `crn`, `name`, `arv`, `opening_arrear`, `opening_advance`, `total_tax`, `curr_arrear`, `curr_advance`, `arv_water`, `opening_arrear_water`, `opening_advance_water`, `total_tax_water`, `curr_arrear_water`, `curr_advance_water`, `from_date`, `to_date`, `billno`, `status`, `unique_id`, `created_at`, `updated_at`) VALUES
(1, '2021-22', 4, 101, 'Jh jke feyu', 144.00, 0.00, 40.00, 104.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 1, 1, '', '2023-10-23 13:32:06', '2023-10-23 16:14:57'),
(2, '2021-22', 4, 102, 'Jh eSdwyky', 180.00, 720.00, 0.00, 900.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 2, 1, '', '2023-10-23 13:32:06', '2023-10-23 16:15:38'),
(3, '2021-22', 4, 103, 'Jh tSljkt', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 3, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(4, '2021-22', 4, 104, 'Jh fxfjtk \'kadj', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 4, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(5, '2021-22', 4, 105, 'Jh Hkwjsyky jkey[ku', 130.00, 720.00, 0.00, 850.00, 850.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 5, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(6, '2021-22', 4, 106, 'Jh txnh\'k izlkn', 108.00, 720.00, 0.00, 828.00, 828.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 6, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(7, '2021-22', 4, 107, 'Jh dYyw', 216.00, 720.00, 0.00, 936.00, 936.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 7, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(8, '2021-22', 4, 108, 'Jh jkedsoy', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 8, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(9, '2021-22', 4, 109, 'Jh lq[khjke', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 9, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(10, '2021-22', 4, 110, 'Jh ckdsayky', 144.00, 720.00, 0.00, 864.00, 864.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 10, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(11, '2021-22', 4, 111, 'Jh fot; dqekj', 108.00, 720.00, 0.00, 828.00, 828.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 11, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(12, '2021-22', 4, 112, 'Jherh fueZyk nsoh', 216.00, 720.00, 0.00, 936.00, 936.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 12, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(13, '2021-22', 4, 113, 'Jh vf[kys\'k dqekj', 216.00, 720.00, 0.00, 936.00, 936.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 13, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(14, '2021-22', 4, 114, 'Jh vjfoUn dqekj', 216.00, 720.00, 0.00, 936.00, 936.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 14, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(15, '2021-22', 4, 115, 'Jh jkelwjr', 288.00, 720.00, 0.00, 1008.00, 1008.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 15, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(16, '2021-22', 4, 116, 'Jherh fcUns\'ojh nsoh', 1500.00, 720.00, 0.00, 2220.00, 2220.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 16, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(17, '2021-22', 4, 117, 'Jh ,gjkj vgen [kk?', 288.00, 720.00, 0.00, 1008.00, 1008.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 17, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(18, '2021-22', 4, 118, 'Jh f\'koizlkn', 216.00, 720.00, 0.00, 936.00, 936.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 18, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(19, '2021-22', 4, 119, 'Jherh jktdqekjh', 216.00, 720.00, 0.00, 936.00, 936.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 19, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(20, '2021-22', 4, 120, 'Jherh \'kCcks', 144.00, 720.00, 0.00, 864.00, 864.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 20, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(21, '2021-22', 4, 121, 'Jh fiUVw', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 21, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(22, '2021-22', 4, 122, 'Jh eks0 guhQ', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 22, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(23, '2021-22', 4, 123, 'Jherh vthtqufu\'kk?', 288.00, 720.00, 0.00, 1008.00, 1008.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 23, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(24, '2021-22', 4, 124, 'Jh \'kCcw', 115.00, 720.00, 0.00, 835.00, 835.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 24, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(25, '2021-22', 4, 125, 'Jh eks0 guhQ', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 25, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(26, '2021-22', 4, 126, 'Jh eks0 ;kdwc] eks0 guhQ', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 26, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(27, '2021-22', 4, 127, 'Jh tSuqmn~nhu', 144.00, 720.00, 0.00, 864.00, 864.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 27, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(28, '2021-22', 4, 128, 'Jherh [krhtk', 288.00, 720.00, 0.00, 1008.00, 1008.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 28, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(29, '2021-22', 4, 129, 'Jh dkyh izlkn', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 29, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(30, '2021-22', 4, 130, 'Jh lbZn vgen', 144.00, 720.00, 0.00, 864.00, 864.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 30, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(31, '2021-22', 4, 131, 'Jh eks0 jQh ] eks0 ;klhu] Jherh fdlerh ckuks ]', 240.00, 720.00, 0.00, 960.00, 960.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 31, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(32, '2021-22', 4, 132, 'Jh bEfr;kt+ vyh', 240.00, 720.00, 0.00, 960.00, 960.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 32, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(33, '2021-22', 4, 133, 'Jh egewn vgen', 240.00, 720.00, 0.00, 960.00, 960.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 33, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(34, '2021-22', 4, 134, 'Jh eks0 tQ+j] eks0 vjln', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 34, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(35, '2021-22', 4, 135, 'Jh eks0 j\'khn', 720.00, 720.00, 0.00, 1440.00, 1440.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 35, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(36, '2021-22', 4, 136, 'Jherh Q[k: fu\'kk?', 180.00, 720.00, 0.00, 900.00, 900.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 36, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(37, '2021-22', 4, 137, 'Jherh vk\'kk nsoh', 94.00, 720.00, 0.00, 814.00, 814.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 37, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(38, '2021-22', 4, 138, 'Jh lS?;n lqgSy vgen', 1800.00, 720.00, 0.00, 2520.00, 2520.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 38, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(39, '2021-22', 4, 139, 'ukseku vgen fln~nhdh', 288.00, 720.00, 0.00, 1008.00, 1008.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 39, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(40, '2021-22', 4, 140, 'Jherh dkSf\'kY;k vk;Z', 720.00, 720.00, 0.00, 1440.00, 1440.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 40, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(41, '2021-22', 4, 141, 'Jh eks0 bdcky', 1920.00, 720.00, 0.00, 2640.00, 2640.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 41, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(42, '2021-22', 4, 142, 'Jh eks0 \'kehe', 300.00, 720.00, 0.00, 1020.00, 1020.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 42, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(43, '2021-22', 4, 143, 'Jherh tg#fUu\'kka', 240.00, 720.00, 0.00, 960.00, 960.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 43, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(44, '2021-22', 4, 144, 'Jherh ljoj tgka', 600.00, 720.00, 0.00, 1320.00, 1320.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 44, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(45, '2021-22', 4, 145, 'Jherh #dlkuk [kkrwu', 1200.00, 720.00, 0.00, 1920.00, 1920.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 45, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(46, '2021-22', 4, 146, 'Jherh uktehu ckuks', 480.00, 720.00, 0.00, 1200.00, 1200.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 46, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(47, '2021-22', 4, 147, ':ch', 180.00, 720.00, 0.00, 900.00, 900.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 47, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06'),
(48, '2021-22', 4, 148, 'lqcqgh', 240.00, 720.00, 0.00, 960.00, 960.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 48, 0, '', '2023-10-23 13:32:06', '2023-10-23 13:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `housetax_payment`
--

CREATE TABLE `housetax_payment` (
  `id` int(11) NOT NULL,
  `fin_year` varchar(20) NOT NULL,
  `ward_no` int(11) NOT NULL,
  `crn` int(10) NOT NULL,
  `total_tax` double(10,2) NOT NULL,
  `paid_amount` double(10,2) NOT NULL,
  `arrear` double(10,2) NOT NULL,
  `advance` double(10,2) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `billno` int(20) NOT NULL,
  `dated` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `housetax_payment`
--

INSERT INTO `housetax_payment` (`id`, `fin_year`, `ward_no`, `crn`, `total_tax`, `paid_amount`, `arrear`, `advance`, `payment_id`, `billno`, `dated`, `created_at`) VALUES
(1, '2021-22', 4, 101, 104.00, 104.00, 0.00, 0.00, 'HOUSETAX-2195246', 1, '2023-10-23', '2023-10-23 16:14:57'),
(2, '2021-22', 4, 102, 900.00, 800.00, 100.00, 0.00, 'HOUSETAX-7528149', 2, '2023-10-23', '2023-10-23 16:15:23'),
(3, '2021-22', 4, 102, 100.00, 100.00, 0.00, 0.00, 'HOUSETAX-4724034', 2, '2023-10-23', '2023-10-23 16:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `house_detail`
--

CREATE TABLE `house_detail` (
  `id` int(255) NOT NULL,
  `house_detail` varchar(255) NOT NULL,
  `house_detail_id` varchar(255) NOT NULL DEFAULT '',
  `is_delete` varchar(123) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house_detail`
--

INSERT INTO `house_detail` (`id`, `house_detail`, `house_detail_id`, `is_delete`, `created_at`, `update_at`) VALUES
(1, 'कच्चा', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'पक्का', '2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `house_type`
--

CREATE TABLE `house_type` (
  `id` int(11) NOT NULL,
  `house_type` varchar(50) NOT NULL,
  `house_type_id` varchar(20) NOT NULL,
  `is_delete` varchar(233) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house_type`
--

INSERT INTO `house_type` (`id`, `house_type`, `house_type_id`, `is_delete`, `created_at`) VALUES
(1, 'आवासीय', '1', '0', '2022-02-02 17:45:59'),
(2, 'व्यावसायिक', '2', '0', '2022-02-02 17:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `license_caste`
--

CREATE TABLE `license_caste` (
  `id` int(100) NOT NULL,
  `caste` varchar(255) NOT NULL,
  `is_delete` int(100) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `license_caste`
--

INSERT INTO `license_caste` (`id`, `caste`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, 'v0i0o0', 0, '2023-10-05 11:26:01', '2023-10-05 11:26:01'),
(3, 'lkekU;', 0, '2023-10-05 11:26:33', '2023-10-05 11:26:33'),
(4, 'vU;', 0, '2023-10-05 11:27:50', '2023-10-05 11:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `license_category`
--

CREATE TABLE `license_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `is_delete` int(100) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `license_gender`
--

CREATE TABLE `license_gender` (
  `id` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `is_delete` int(100) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `license_gender`
--

INSERT INTO `license_gender` (`id`, `gender`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'iq:\"k', 0, '2023-10-05 11:48:40', '2023-10-05 11:48:40'),
(2, 'efgyk', 0, '2023-10-05 11:49:05', '2023-10-05 11:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `license_mrt`
--

CREATE TABLE `license_mrt` (
  `id` int(100) NOT NULL,
  `mrtStatus` varchar(200) NOT NULL,
  `is_delete` int(100) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `license_mrt`
--

INSERT INTO `license_mrt` (`id`, `mrtStatus`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'fookfgr', 0, '2023-10-05 12:09:50', '2023-10-05 12:09:50'),
(2, 'vfookfgr', 0, '2023-10-05 12:10:41', '2023-10-05 12:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `license_registration`
--

CREATE TABLE `license_registration` (
  `id` int(11) NOT NULL,
  `bookNo` int(11) NOT NULL,
  `licenseNo` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `fatherName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `gender` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `caste` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `mrtStatus` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `mobile` varchar(222) NOT NULL,
  `aadhaar` varchar(222) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(222) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `occupation` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `licenseReason` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `place` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `issueDate` date NOT NULL,
  `validThrough` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `regCharge` double(10,2) NOT NULL,
  `issuerName` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `validTill` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `remark` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `distt` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `is_delete` int(100) NOT NULL DEFAULT 0,
  `unique_id` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `license_registration`
--

INSERT INTO `license_registration` (`id`, `bookNo`, `licenseNo`, `name`, `fatherName`, `gender`, `caste`, `mrtStatus`, `mobile`, `aadhaar`, `email`, `address`, `occupation`, `licenseReason`, `place`, `issueDate`, `validThrough`, `regCharge`, `issuerName`, `validTill`, `remark`, `distt`, `is_delete`, `unique_id`, `created_at`, `updated_at`) VALUES
(1, 101, 101, 'Jh ykycgknqj', 'Jh >x#', 'iq:', 'lkekU;', 'fookfgr', '', '', '', 'nk/kV', 'ट्रेड लाइसेंस', 'ghjk', 'jhg', '2023-10-19', '2 lky', 1234.00, 'nsos\'k', '2025-10-19', 'gffgyurh ghguy tu jhxv', 'y', 0, 'NPDGT-000001', '2023-10-19 17:19:21', '2023-10-23 16:45:23'),
(2, 102, 102, 'nsos\'k', 'jke', 'iq:', 'lkekU;', 'vfookfgr', '', '', '', 'jke', 'ट्रेड लाइसेंस', 'ghjk', 'jhg', '2023-10-21', '2 lky', 1235.00, 'nsos\'k', '2023-10-21', 'gffgyurh ghguy tu jhxv', 'y', 0, 'NPDGT-000009', '2023-10-21 14:35:09', '2023-10-21 14:35:09'),
(3, 103, 103, 'akash', 'jj', 'iq:', 'lkekU;', 'vfookfgr', '', '', '', 'jj', 'नर्सिंग होम लाइसेंस', 'ghjk', 'jhg', '2023-10-21', '2 lky', 454.00, 'nsos\'k', '2025-10-21', 'gffgyurh ghguy tu jhxv', 'y', 0, 'NPDGT-000010', '2023-10-21 14:37:33', '2023-10-23 16:45:27'),
(4, 104, 104, 'Jh eks0 ;kdwc] eks0 guhQ', 'Jh xqyke xkSl', 'iq:', 'vU;', 'fookfgr', '7786945690', '111111111111', 'test@gmail.com', 'nks/kV', 'नर्सिंग होम लाइसेंस', 'ghjk', 'jhg', '2023-10-26', '2 lky', 4546.00, 'nsos\'k', '2024-11-21', 'gffgyurh ghguy tu jhxv', 'y', 0, 'NPDGT-000126', '2023-10-21 17:35:26', '2023-10-21 17:35:26'),
(5, 105, 105, 'Jh tSuqmn~nhu', 'Jh eqbumn~nhu', 'iq:', 'lkekU;', 'vfookfgr', '7786945690', '111111111111', 'test@gmail.com', 'nks/kV', 'ट्रेड लाइसेंस', 'ghjk', 'jhg', '2023-10-21', '2 lky', 2353.00, 'nsos\'k', '2025-11-20', 'gffgyurh ghguy tu jhxv', 'y', 0, 'NPDGT-000127', '2023-10-21 17:37:44', '2023-10-21 17:37:44'),
(6, 106, 106, 'Jherh [krhtk', 'Jh vCckl', 'efgyk', 'lkekU;', 'vfookfgr', '7786945690', '111111111111', 'test@gmail.com', 'nks/kV', 'ट्रेड लाइसेंस', 'ghjk', 'jhg', '2023-10-21', '2 lky', 2533.00, 'nsos\'k', '2025-06-21', 'gffgyurh ghguy tu jhxv', 'y', 0, 'NPDGT-000128', '2023-10-21 17:39:22', '2023-10-21 17:39:22'),
(7, 107, 107, 'Jh f=yksdh', 'Jh laxe', 'iq:', 'lkekU;', 'fookfgr', '7786945690', '111111111111', 'test@gmail.com', 'nks/kV', 'ट्रेड लाइसेंस', 'ghjk', 'dkuiqj', '2023-10-23', '2 lky', 1235.00, 'nsos\'k', '2026-10-23', 'gffgyurh ghguy tu jhxv', 'dkuiqj', 0, 'NPDGT-000002', '2023-10-23 16:41:45', '2023-10-23 16:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `license_type`
--

CREATE TABLE `license_type` (
  `id` int(11) NOT NULL,
  `license_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `is_delete` int(100) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `license_type`
--

INSERT INTO `license_type` (`id`, `license_name`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, 'लाइसेंस-1', 0, '2023-10-04 13:27:26', '2023-10-05 11:31:53'),
(3, 'लाइसेंस-2', 0, '2023-10-04 13:30:13', '2023-10-05 11:32:02'),
(4, 'लाइसेंस-3', 0, '2023-10-04 13:30:33', '2023-10-05 11:32:11'),
(6, 'लाइसेंस-4', 0, '2023-10-05 11:30:45', '2023-10-05 11:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `id` int(100) NOT NULL,
  `occupation` varchar(150) NOT NULL,
  `is_delete` int(100) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`id`, `occupation`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'नर्सिंग होम लाइसेंस', 0, '2023-10-04 14:58:24', '2023-10-04 14:58:24'),
(3, 'ट्रेड लाइसेंस', 0, '2023-10-04 18:06:25', '2023-10-04 18:06:25'),
(4, 'व्यवसाय-3', 0, '2023-10-05 11:27:40', '2023-10-05 11:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `otp` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `mobile`, `otp`, `created_at`) VALUES
(1, '8427735025', '4365', '2023-10-18 10:49:22'),
(2, '8576945690', '5415', '2023-10-18 10:52:58'),
(3, '8576945690', '2785', '2023-10-18 10:56:08'),
(4, '8576945690', '8560', '2023-10-18 10:57:08'),
(5, '8576945690', '4200', '2023-10-18 10:59:46'),
(6, '8576945690', '4051', '2023-10-18 11:00:03'),
(7, '8427735025', '1750', '2023-10-18 11:04:15'),
(8, '8427735025', '3180', '2023-10-18 11:05:11'),
(9, '8427735025', '6977', '2023-10-18 11:06:22'),
(10, '8427735025', '3987', '2023-10-18 11:14:35'),
(11, '8427735025', '9166', '2023-10-18 11:14:54'),
(12, '8427735025', '4862', '2023-10-18 11:15:24'),
(13, '8427735025', '4329', '2023-10-18 11:16:21'),
(14, '8427735025', '9967', '2023-10-18 11:16:52'),
(15, '8427735025', '5510', '2023-10-18 11:17:29'),
(16, '8427735025', '2306', '2023-10-18 11:18:54'),
(17, '8427735025', '1545', '2023-10-18 11:19:12'),
(18, '8427735025', '4650', '2023-10-18 11:20:15'),
(19, '8427735025', '4150', '2023-10-18 11:22:45'),
(20, '8427735025', '7910', '2023-10-18 11:39:24'),
(21, '8427735025', '4559', '2023-10-18 11:39:56'),
(22, '8427735025', '4532', '2023-10-18 13:07:04'),
(23, '8427735025', '3738', '2023-10-18 13:16:56'),
(24, '8427735090', '3456', '2023-10-18 13:18:02'),
(25, '8427735090', '7122', '2023-10-18 13:21:35'),
(26, '8427735090', '8485', '2023-10-18 13:21:49'),
(27, '8427735090', '9870', '2023-10-18 13:23:02'),
(28, '8427735090', '1380', '2023-10-18 13:30:40'),
(29, '8427735090', '2556', '2023-10-18 13:34:25'),
(30, '8427735090', '5456', '2023-10-18 13:35:39'),
(31, '8427735090', '3239', '2023-10-18 13:37:29'),
(32, '8427735090', '3088', '2023-10-18 13:37:39'),
(33, '8427735090', '7619', '2023-10-18 13:38:10'),
(34, '8427735090', '5848', '2023-10-18 13:38:14'),
(35, '8427735090', '9759', '2023-10-18 13:38:26'),
(36, '8427735090', '9119', '2023-10-18 13:39:32'),
(37, '8427735025', '5329', '2023-10-18 13:40:03'),
(38, '8427735025', '1315', '2023-10-18 13:40:43'),
(39, '8427735025', '2999', '2023-10-18 13:41:41'),
(40, '8427735025', '5363', '2023-10-18 13:41:57'),
(41, '8427735025', '3165', '2023-10-18 14:01:56'),
(42, '8427735025', '1058', '2023-10-18 14:02:43'),
(43, '8427735025', '4679', '2023-10-18 14:03:58'),
(44, '8427735025', '3553', '2023-10-18 14:12:01'),
(45, '8427735025', '9859', '2023-10-18 14:12:32'),
(46, '8427735088', '5155', '2023-10-18 14:13:00'),
(47, '8427735088', '3115', '2023-10-18 14:13:53'),
(48, '8427735088', '4876', '2023-10-18 14:14:58'),
(49, '8427735076', '2332', '2023-10-18 14:15:23'),
(50, '7756855325', '5842', '2023-10-18 14:16:59'),
(51, '7756855325', '4987', '2023-10-18 14:18:27'),
(52, '7756855325', '8783', '2023-10-18 14:18:56'),
(53, '7756855325', '7714', '2023-10-18 14:20:06'),
(54, '7756855325', '6424', '2023-10-18 14:20:31'),
(55, '7756855325', '5787', '2023-10-18 14:23:38'),
(56, '7589635214', '1598', '2023-10-18 14:23:59'),
(57, '7589635214', '7555', '2023-10-18 14:25:16'),
(58, '7589635214', '6421', '2023-10-18 14:26:06'),
(59, '7589635214', '5390', '2023-10-18 14:27:01'),
(60, '7589635214', '3892', '2023-10-18 14:27:45'),
(61, '7589635214', '1051', '2023-10-18 14:29:09'),
(62, '8576945690', '5351', '2023-10-18 14:33:19'),
(63, '8576945690', '9851', '2023-10-18 14:35:15'),
(64, '8576945690', '2526', '2023-10-18 14:36:11'),
(65, '8576945690', '3338', '2023-10-18 14:36:30'),
(66, '8576945690', '4088', '2023-10-18 14:38:25'),
(67, '8576945690', '2366', '2023-10-18 14:39:42'),
(68, '8576945690', '6443', '2023-10-18 14:53:13'),
(69, '8576945690', '3316', '2023-10-18 14:56:42'),
(70, '8576945690', '5074', '2023-10-18 14:57:05'),
(71, '8576945690', '2929', '2023-10-18 14:58:54'),
(72, '8576945690', '7030', '2023-10-18 14:59:46'),
(73, '8576945690', '1620', '2023-10-18 15:02:24'),
(74, '8427735025', '9422', '2023-10-18 15:05:20'),
(75, '8576945690', '9782', '2023-10-18 15:21:54'),
(76, '8576945690', '2775', '2023-10-18 15:22:12'),
(77, '8576945690', '1319', '2023-10-18 17:29:55'),
(78, '8576945690', '4158', '2023-10-18 17:34:59'),
(79, '8576945690', '3393', '2023-10-19 14:11:28'),
(80, '8576945690', '4840', '2023-10-19 17:52:50'),
(81, '8576945690', '9339', '2023-10-23 10:20:08'),
(82, '7786945690', '4442', '2023-10-23 10:24:14'),
(83, '7786945690', '9326', '2023-10-23 10:24:40'),
(84, '8576945690', '5376', '2023-10-23 10:24:54'),
(85, '8576945690', '1972', '2023-10-23 10:25:15'),
(86, '8576945690', '2620', '2023-10-23 10:25:44'),
(87, '8576945690', '3261', '2023-10-23 10:28:19'),
(88, '8576945690', '1760', '2023-10-23 10:33:52'),
(89, '7786945690', '6319', '2023-10-23 10:37:19'),
(90, '8576945690', '5260', '2023-10-23 10:38:57'),
(91, '8576945690', '7099', '2023-10-23 10:41:12'),
(92, '8576945690', '7234', '2023-10-23 10:43:28'),
(93, '8576945690', '1796', '2023-10-23 10:50:53'),
(94, '8576945690', '2804', '2023-10-23 10:51:31'),
(95, '7786945690', '6974', '2023-10-23 15:13:34'),
(96, '8576945690', '7757', '2023-10-23 16:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `publiccompliance`
--

CREATE TABLE `publiccompliance` (
  `id` int(100) NOT NULL,
  `ward_no` int(255) NOT NULL,
  `house_number` int(255) NOT NULL,
  `cpid` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `fathername` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `cpname` varchar(255) NOT NULL,
  `cpdetail` varchar(255) NOT NULL,
  `cpfile` varchar(255) NOT NULL,
  `close` int(255) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publiccompliance`
--

INSERT INTO `publiccompliance` (`id`, `ward_no`, `house_number`, `cpid`, `date`, `name`, `fathername`, `mobile`, `address`, `email`, `aadhar`, `cpname`, `cpdetail`, `cpfile`, `close`, `created_at`, `updated_at`) VALUES
(2, 1, 7, 'COMPLIANTNO-1211232', '0000-00-00', 'Jh ykycgknqj', 'Jh >x#', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 8, 'COMPLIANTNO-1211233', '0000-00-00', 'Jh f=yksdh', 'Jh laxe', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 9, 'COMPLIANTNO-1211234', '0000-00-00', 'Jh jru', 'Jh HkXxw', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 3, 10, 'COMPLIANTNO-1211235', '0000-00-00', 'Jh ea\'kkjke', 'Jh tks[ku', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 11, 'COMPLIANTNO-1211236', '0000-00-00', 'Jh f?kjkZ?', 'Jh HkXxw', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 12, 'COMPLIANTNO-1211237', '0000-00-00', 'Jh tx#i', 'Jh f?kjkZ?', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 2, 13, 'COMPLIANTNO-1211238', '0000-00-00', 'Jh ?snhyky', 'Jh jkexqyke', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 2, 14, 'COMPLIANTNO-1211239', '0000-00-00', 'Jh tqEeu [kk?', 'Jh gler vyh', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 2, 15, 'COMPLIANTNO-1211240', '0000-00-00', 'eks0 vuhl [kka', 'Jh tqEeu [kk?', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 2, 16, 'COMPLIANTNO-1211241', '0000-00-00', 'eks0 \'kehe', 'Jh vthe [kk?', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 2, 17, 'COMPLIANTNO-1211242', '0000-00-00', 'Jh fnus\'k dqekj] dYyw] jkds\'k dqekj] jkeQsj] /kesZUnz', 'Lo0 eqUus', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 2, 18, 'COMPLIANTNO-1211243', '0000-00-00', 'Jh l?khnhu', 'Jh cq/kbZ', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 2, 19, 'COMPLIANTNO-1211244', '0000-00-00', 'Jh I;kjs', 'Jh cgjSph', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2, 20, 'COMPLIANTNO-1211245', '0000-00-00', 'Jh tqXxhyky', 'Jh xq:cD\'k', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 2, 21, 'COMPLIANTNO-1211246', '0000-00-00', 'Jh enuyky', 'Jh xq#cD\'k', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 22, 'COMPLIANTNO-1211247', '0000-00-00', 'Jh uxslj', 'Jh eaxjs', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 2, 23, 'COMPLIANTNO-1211248', '0000-00-00', 'Jherh f\'kodqekjh', 'Jh lrxq# izlkn', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1, 24, 'COMPLIANTNO-1211249', '0000-00-00', 'Jh \'k=ksgu', 'Jh nqD[kw', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, 25, 'COMPLIANTNO-1211250', '0000-00-00', 'Jh jkecD\'k', 'Jh nqD[kw', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 1, 26, 'COMPLIANTNO-1211251', '0000-00-00', 'Jh jke fd\'kksj', 'Jh jkePkUnj', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 1, 27, 'COMPLIANTNO-1211252', '0000-00-00', 'Jh fcjtw', 'Jh f?kjkZ?', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 1, 28, 'COMPLIANTNO-1211253', '0000-00-00', 'Jh jkeleq>', 'Jh yYyk', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 1, 29, 'COMPLIANTNO-1211254', '0000-00-00', 'Jh jkey[ku', 'Jh tx#i', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 1, 30, 'COMPLIANTNO-1211255', '0000-00-00', 'Jh ?ku\';ke', 'Jh xjhcs', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 1, 31, 'COMPLIANTNO-1211256', '0000-00-00', 'Jh lkseu', 'Jh ekrknhu', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 1, 32, 'COMPLIANTNO-1211257', '0000-00-00', 'Jh igkM+h', 'Jh ekrknhu', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 1, 33, 'COMPLIANTNO-1211258', '0000-00-00', 'Jh f\'kojke', 'Jh iky', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 1, 34, 'COMPLIANTNO-1211259', '0000-00-00', 'Jh eksrhyky', 'Jh lksgcrh', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 1, 35, 'COMPLIANTNO-1211260', '0000-00-00', 'Jh f=yksdh', 'Jh Naxksys', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 1, 36, 'COMPLIANTNO-1211261', '0000-00-00', 'Jh ekrknhu', 'Jh Naxksys', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 1, 37, 'COMPLIANTNO-1211262', '0000-00-00', 'Jh t;dqekjh', 'Jh NksVw', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 1, 38, 'COMPLIANTNO-1211263', '0000-00-00', 'Jh xjhcs', 'Jh jkepju', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 1, 39, 'COMPLIANTNO-1211264', '0000-00-00', 'Jh pqUuh yky] jke dqekj] dkS\'ky izlkn] fouksn dqekj] lquhy dqekj', 'Lo0 ekssgu yky', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 1, 40, 'COMPLIANTNO-1211265', '0000-00-00', 'Jh txnh\'k', 'Jh jkevpy', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 1, 41, 'COMPLIANTNO-1211266', '0000-00-00', 'Jh jke ft;kou', 'Jh feJhyky', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 3, 42, 'COMPLIANTNO-1211267', '0000-00-00', 'Jh bUnzthr', 'Jh Qdhjs', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 3, 43, 'COMPLIANTNO-1211268', '0000-00-00', 'Jh dk\'khjke', 'Jh eqjyhnhu', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 3, 44, 'COMPLIANTNO-1211269', '0000-00-00', 'Jh jkefd\'kksj', 'Jh jke vo/k', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 3, 45, 'COMPLIANTNO-1211270', '0000-00-00', 'Jh euhjke', 'Jh jkevo/k', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 3, 46, 'COMPLIANTNO-1211271', '0000-00-00', 'Jh dsrkj', 'Jh euhjke', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 3, 47, 'COMPLIANTNO-1211272', '0000-00-00', 'Jh jke leq>', 'Jh lkfydjke', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 1, 48, 'COMPLIANTNO-1211273', '0000-00-00', 'Jh txthou', 'Jh ?kx#', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 6, 49, 'COMPLIANTNO-1211274', '0000-00-00', 'Jh iquoklh', 'Jh ?kx#', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 6, 50, 'COMPLIANTNO-1211275', '0000-00-00', 'Jh txjke', 'Jh ds\'ko', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 6, 51, 'COMPLIANTNO-1211276', '0000-00-00', 'dykorh', 'Jh jkecju', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 6, 52, 'COMPLIANTNO-1211277', '0000-00-00', 'Jherh pUnzdyk', 'feghyky', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 6, 53, 'COMPLIANTNO-1211278', '0000-00-00', 'Jh ijes\'oj', '?ks:', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 6, 54, 'COMPLIANTNO-1211279', '0000-00-00', 'Jh jkefd\'kksj', 'Jh jkekuUn', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 4, 55, 'COMPLIANTNO-1211280', '0000-00-00', 'Jh euksgj', 'Jh uks[kbZ', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 4, 56, 'COMPLIANTNO-1211281', '0000-00-00', 'Jh dfiynso ] guqeku', 'Jh jkegj[k', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 4, 57, 'COMPLIANTNO-1211282', '0000-00-00', 'Jh cuokjh yky', 'Jh txnUr', '7786945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 4, 58, 'COMPLIANTNO-1211283', '0000-00-00', 'Jh pEikyky', 'Jh jkey[ku', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 4, 59, 'COMPLIANTNO-1211284', '0000-00-00', 'Jh jkeleq>', 'Jh lqdbZ', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 4, 60, 'COMPLIANTNO-1211285', '0000-00-00', 'Jh cuokjh', 'Jh txnUr', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 4, 61, 'COMPLIANTNO-1211286', '0000-00-00', 'Jh feV~Bw', 'Jh ckcknhu', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 4, 62, 'COMPLIANTNO-1211287', '0000-00-00', 'Jh xjhcsyky', 'Jh jke/khjt', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 4, 63, 'COMPLIANTNO-1211288', '0000-00-00', 'Jh eqUusyky', 'Jh csdk:', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 6, 64, 'COMPLIANTNO-1211289', '0000-00-00', 'Jh jkenkl', 'Jh jkekuUn', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 6, 65, 'COMPLIANTNO-1211290', '0000-00-00', 'Jh nq[kjke', 'Jh txnUr', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 6, 66, 'COMPLIANTNO-1211291', '0000-00-00', 'Jh cgjSph', 'Jh tx#i', '8576945690', 'psd', 'test@gmail.com', '123456789564', '', 'gekjs ;gk? lM+d dbZ fnuksa ls VwVh gq;h gS ml ij dksbZ dk;Z okgh djsa', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 4, 100, 'COMPLIANTNO-5525459', '2023-10-23', 'nsos\'k', 'jke', '7786945690', 'jke', '', '123456789654', '', 'jke', 'download.jpg', 1, '2023-10-23 10:38:03', '2023-10-23 10:38:03'),
(63, 5, 102, 'COMPLIANTNO-9398288', '2023-10-23', 'jke', 'jke', '8576945690', 'trwe', '', '123456789654', '', 'jke jke jke jke', 'compliance_data.csv', 1, '2023-10-23 10:40:34', '2023-10-23 10:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `fin_year` varchar(20) NOT NULL,
  `ward_no` varchar(20) NOT NULL,
  `house_type_id` varchar(20) NOT NULL,
  `house_detail_id` varchar(20) NOT NULL,
  `crn` int(50) NOT NULL,
  `unique_id` varchar(100) NOT NULL,
  `house_number` varchar(50) NOT NULL,
  `demand_number` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `aadhaar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `arv` double(10,2) NOT NULL,
  `opening_arrear` double(10,2) NOT NULL,
  `opening_advance` double(10,2) NOT NULL,
  `regdate` varchar(20) NOT NULL,
  `billno` int(11) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `is_delete` varchar(255) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `fin_year`, `ward_no`, `house_type_id`, `house_detail_id`, `crn`, `unique_id`, `house_number`, `demand_number`, `name`, `father_name`, `address`, `mobile`, `aadhaar`, `email`, `arv`, `opening_arrear`, `opening_advance`, `regdate`, `billno`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, '2021-22', '1', '1', '1', 1, 'NPDGT-000001', '101', '101', 'Jh ykycgknqj', 'Jh >x#', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 108.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(3, '2021-22', '1', '1', '1', 2, 'NPDGT-000002', '102', '102', 'Jh f=yksdh', 'Jh laxe', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(4, '2021-22', '1', '1', '1', 3, 'NPDGT-000003', '103', '103', 'Jh jru', 'Jh HkXxw', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(5, '2021-22', '1', '2', '2', 4, 'NPDGT-000004', '104', '104', 'Jh ea\'kkjke', 'Jh tks[ku', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(6, '2021-22', '1', '2', '2', 5, 'NPDGT-000005', '105', '105', 'Jh f?kjkZ?', 'Jh HkXxw', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(7, '2021-22', '1', '2', '2', 6, 'NPDGT-000006', '106', '106', 'Jh tx#i', 'Jh f?kjkZ?', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(8, '2021-22', '1', '2', '2', 7, 'NPDGT-000007', '107', '107', 'Jh ?snhyky', 'Jh jkexqyke', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(9, '2021-22', '1', '2', '2', 8, 'NPDGT-000008', '108', '108', 'Jh tqEeu [kk?', 'Jh gler vyh', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(10, '2021-22', '1', '2', '2', 9, 'NPDGT-000009', '109', '109', 'eks0 vuhl [kka', 'Jh tqEeu [kk?', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(11, '2021-22', '1', '2', '2', 10, 'NPDGT-000010', '110', '110', 'eks0 \'kehe', 'Jh vthe [kk?', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(12, '2021-22', '1', '2', '2', 11, 'NPDGT-000011', '111', '111', 'Jh fnus\'k dqekj] dYyw] jkds\'k dqekj] jkeQsj] /kesZ', 'Lo0 eqUus', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(13, '2021-22', '1', '2', '2', 12, 'NPDGT-000012', '112', '112', 'Jh l?khnhu', 'Jh cq/kbZ', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(14, '2021-22', '1', '2', '2', 13, 'NPDGT-000013', '113', '113', 'Jh I;kjs', 'Jh cgjSph', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(15, '2021-22', '1', '2', '2', 14, 'NPDGT-000014', '114', '114', 'Jh tqXxhyky', 'Jh xq:cD\'k', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(16, '2021-22', '1', '1', '1', 15, 'NPDGT-000015', '115', '115', 'Jh enuyky', 'Jh xq#cD\'k', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(17, '2021-22', '1', '1', '1', 16, 'NPDGT-000016', '116', '116', 'Jh uxslj', 'Jh eaxjs', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 115.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(18, '2021-22', '1', '1', '1', 17, 'NPDGT-000017', '117', '117', 'Jherh f\'kodqekjh', 'Jh lrxq# izlkn', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(19, '2021-22', '1', '1', '1', 18, 'NPDGT-000018', '118', '118', 'Jh \'k=ksgu', 'Jh nqD[kw', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(20, '2021-22', '1', '1', '1', 19, 'NPDGT-000019', '119', '119', 'Jh jkecD\'k', 'Jh nqD[kw', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(21, '2021-22', '1', '1', '1', 20, 'NPDGT-000020', '120', '120', 'Jh jke fd\'kksj', 'Jh jkePkUnj', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(22, '2021-22', '1', '1', '1', 21, 'NPDGT-000021', '121', '121', 'Jh fcjtw', 'Jh f?kjkZ?', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(23, '2021-22', '1', '1', '1', 22, 'NPDGT-000022', '122', '122', 'Jh jkeleq>', 'Jh yYyk', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(24, '2021-22', '1', '1', '1', 23, 'NPDGT-000023', '123', '123', 'Jh jkey[ku', 'Jh tx#i', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(25, '2021-22', '1', '1', '1', 24, 'NPDGT-000024', '124', '124', 'Jh ?ku\';ke', 'Jh xjhcs', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(26, '2021-22', '1', '1', '1', 25, 'NPDGT-000025', '125', '125', 'Jh lkseu', 'Jh ekrknhu', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 115.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(27, '2021-22', '1', '2', '1', 26, 'NPDGT-000026', '126', '126', 'Jh igkM+h', 'Jh ekrknhu', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(28, '2021-22', '1', '2', '1', 27, 'NPDGT-000027', '127', '127', 'Jh f\'kojke', 'Jh iky', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(29, '2021-22', '1', '2', '1', 28, 'NPDGT-000028', '128', '128', 'Jh eksrhyky', 'Jh lksgcrh', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(30, '2021-22', '1', '2', '1', 29, 'NPDGT-000029', '129', '129', 'Jh f=yksdh', 'Jh Naxksys', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(31, '2021-22', '1', '2', '1', 30, 'NPDGT-000030', '130', '130', 'Jh ekrknhu', 'Jh Naxksys', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(32, '2021-22', '1', '2', '1', 31, 'NPDGT-000031', '131', '131', 'Jh t;dqekjh', 'Jh NksVw', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(33, '2021-22', '1', '2', '1', 32, 'NPDGT-000032', '132', '132', 'Jh xjhcs', 'Jh jkepju', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(34, '2021-22', '1', '2', '1', 33, 'NPDGT-000033', '133', '133', 'Jh pqUuh yky] jke dqekj] dkS\'ky izlkn] fouksn dqek', 'Lo0 ekssgu yky', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(35, '2021-22', '1', '2', '1', 34, 'NPDGT-000034', '134', '134', 'Jh txnh\'k', 'Jh jkevpy', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(36, '2021-22', '1', '2', '1', 35, 'NPDGT-000035', '135', '135', 'Jh jke ft;kou', 'Jh feJhyky', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(37, '2021-22', '1', '2', '1', 36, 'NPDGT-000036', '136', '136', 'Jh bUnzthr', 'Jh Qdhjs', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(38, '2021-22', '1', '2', '1', 37, 'NPDGT-000037', '137', '137', 'Jh dk\'khjke', 'Jh eqjyhnhu', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(39, '2021-22', '1', '2', '1', 38, 'NPDGT-000038', '138', '138', 'Jh jkefd\'kksj', 'Jh jke vo/k', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(40, '2021-22', '1', '2', '1', 39, 'NPDGT-000039', '139', '139', 'Jh euhjke', 'Jh jkevo/k', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 108.00, 216.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:30:46'),
(41, '2021-22', '2', '1', '1', 40, 'NPDGT-000040', '140', '140', 'Jh dsrkj', 'Jh euhjke', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 108.00, 324.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '2021-22', '2', '1', '1', 41, 'NPDGT-000041', '141', '141', 'Jh jke leq>', 'Jh lkfydjke', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 94.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '2021-22', '2', '1', '1', 42, 'NPDGT-000042', '142', '142', 'Jh txthou', 'Jh ?kx#', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 94.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '2021-22', '2', '1', '1', 43, 'NPDGT-000043', '143', '143', 'Jh iquoklh', 'Jh ?kx#', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 798.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '2021-22', '2', '1', '1', 44, 'NPDGT-000044', '144', '144', 'Jh txjke', 'Jh ds\'ko', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '2021-22', '2', '1', '1', 45, 'NPDGT-000045', '145', '145', 'dykorh', 'Jh jkecju', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 115.00, 978.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '2021-22', '2', '1', '1', 46, 'NPDGT-000046', '146', '146', 'Jherh pUnzdyk', 'feghyky', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 94.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, '2021-22', '2', '1', '1', 47, 'NPDGT-000047', '147', '147', 'Jh ijes\'oj', '?ks:', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 498.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, '2021-22', '2', '1', '1', 48, 'NPDGT-000048', '148', '148', 'Jh jkefd\'kksj', 'Jh jkekuUn', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 769.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, '2021-22', '2', '1', '1', 49, 'NPDGT-000049', '149', '149', 'Jh euksgj', 'Jh uks[kbZ', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 282.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, '2021-22', '2', '1', '1', 50, 'NPDGT-000050', '150', '150', 'Jh dfiynso ] guqeku', 'Jh jkegj[k', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 94.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, '2021-22', '2', '1', '1', 51, 'NPDGT-000051', '151', '151', 'Jh cuokjh yky', 'Jh txnUr', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 282.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, '2021-22', '2', '1', '1', 52, 'NPDGT-000052', '152', '152', 'Jh pEikyky', 'Jh jkey[ku', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 188.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, '2021-22', '2', '1', '1', 53, 'NPDGT-000053', '153', '153', 'Jh jkeleq>', 'Jh lqdbZ', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, '2021-22', '2', '1', '1', 54, 'NPDGT-000054', '154', '154', 'Jh cuokjh', 'Jh txnUr', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 282.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, '2021-22', '2', '1', '1', 55, 'NPDGT-000055', '155', '155', 'Jh feV~Bw', 'Jh ckcknhu', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 470.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, '2021-22', '2', '1', '1', 56, 'NPDGT-000056', '156', '156', 'Jh xjhcsyky', 'Jh jke/khjt', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 564.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, '2021-22', '2', '1', '1', 57, 'NPDGT-000057', '157', '157', 'Jh eqUusyky', 'Jh csdk:', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 800.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, '2021-22', '2', '1', '1', 58, 'NPDGT-000058', '158', '158', 'Jh jkenkl', 'Jh jkekuUn', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 282.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, '2021-22', '2', '1', '1', 59, 'NPDGT-000059', '159', '159', 'Jh nq[kjke', 'Jh txnUr', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, '2021-22', '2', '1', '1', 60, 'NPDGT-000060', '160', '160', 'Jh cgjSph', 'Jh tx#i', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 282.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, '2021-22', '2', '1', '1', 61, 'NPDGT-000061', '161', '161', 'Jh lgnso', 'Jh txslj', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 94.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, '2021-22', '2', '1', '1', 62, 'NPDGT-000062', '162', '162', 'Jh jkelwjr', 'Jh ca\'khyky', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 1266.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, '2021-22', '2', '1', '1', 63, 'NPDGT-000063', '163', '163', 'Jh dkEkrk', 'Jh jkexfr', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 282.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, '2021-22', '2', '1', '1', 64, 'NPDGT-000064', '164', '164', 'Jh gkSflyk izlkn', 'Jh yky cgknqj', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, '2021-22', '2', '1', '1', 65, 'NPDGT-000065', '165', '165', 'Jh eSdwyky', 'Jh ?kx#', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 144.00, 720.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '2021-22', '2', '1', '1', 66, 'NPDGT-000066', '166', '166', 'Jh larks\"k dqekj', 'Jh jkenqykjs', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 101.00, 1046.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, '2021-22', '2', '1', '1', 67, 'NPDGT-000067', '167', '167', 'Jh jkelqUnj', 'Jh fo\'ks\"kj', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 216.00, 432.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, '2021-22', '2', '1', '1', 68, 'NPDGT-000068', '168', '168', 'Jh jkey[ku', 'Jh feJhyky', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 108.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, '2021-22', '2', '2', '2', 69, 'NPDGT-000069', '169', '169', 'Jh csdk#', 'cybZ', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 376.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, '2021-22', '2', '2', '2', 70, 'NPDGT-000070', '170', '170', 'Jh lUrw', 'Jh feV~Bw', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 94.00, 188.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '2021-22', '2', '2', '2', 71, 'NPDGT-000071', '171', '171', 'Jh txnh\'k', 'Jh jkeleq>', 'nks/kV', '8576945690', '111111111111', 'test@gmail.com', 144.00, 144.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, '2021-22', '2', '2', '2', 72, 'NPDGT-000072', '172', '172', 'Jh jkevo/k', 'Jh f\'koiyVu', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 270.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, '2021-22', '2', '2', '2', 73, 'NPDGT-000073', '173', '173', 'Jh xtk/kj', 'Jh lksebZ', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 115.00, 115.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '2021-22', '2', '2', '2', 74, 'NPDGT-000074', '174', '174', 'Jh f\'kojkt', 'Jh lgrw', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 876.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '2021-22', '2', '2', '2', 75, 'NPDGT-000075', '175', '175', 'Jh jkenqykjs', 'Jh jkes\'oj izlkn', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 173.00, 1126.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '2021-22', '2', '2', '2', 76, 'NPDGT-000076', '176', '176', 'eks0 jQh mQZ eqUuk', 'Jh bczkfge', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 115.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '2021-22', '3', '2', '2', 77, 'NPDGT-000077', '177', '177', 'Jh [kkykyh', 'Jh vkfcn', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 144.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '2021-22', '3', '2', '2', 78, 'NPDGT-000078', '178', '178', 'Jh gqlSu vyh', 'Jh ealwj vyh', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '2021-22', '3', '2', '2', 79, 'NPDGT-000079', '179', '179', 'Jh futkeqbnhu] bLykeqbnhu] ,tkeqbnhu \'kel~qbnhu] d', 'Naxk', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 144.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '2021-22', '3', '2', '2', 80, 'NPDGT-000080', '180', '180', 'eks0 lkfcj', 'eks0 vyh', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 288.00, 576.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '2021-22', '3', '2', '2', 81, 'NPDGT-000081', '181', '181', 'Jh jkeopu', 'Jh jkeQy', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '2021-22', '3', '2', '2', 82, 'NPDGT-000082', '182', '182', 'Jh eq\'krkd', 'Jh rtEeqy gqlSu', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 470.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '2021-22', '3', '2', '2', 83, 'NPDGT-000083', '183', '183', 'Jh eqbumn~nhu', 'Jh \'kelqn~nhu', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 1064.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '2021-22', '3', '2', '2', 84, 'NPDGT-000084', '184', '184', 'Jh vgen gqlSu', '0', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 108.00, 1923.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '2021-22', '3', '2', '2', 85, 'NPDGT-000085', '185', '185', 'Jh easgnh glu', 'Jh Qjhn vgen', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 1224.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '2021-22', '3', '2', '2', 86, 'NPDGT-000086', '186', '186', 'Jh uud?', 'Jh HkxkSrh izlkn', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 432.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '2021-22', '3', '2', '2', 87, 'NPDGT-000087', '187', '187', 'Jh cgjSph', 'Jh HkXxu', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 282.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '2021-22', '3', '2', '2', 88, 'NPDGT-000088', '188', '188', 'Jh ?kwjs', 'Jh uudw', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 864.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '2021-22', '3', '2', '2', 89, 'NPDGT-000089', '189', '189', 'eks0 guhQ', 'Jh ;wlqQ', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 864.00, 12984.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '2021-22', '3', '2', '2', 90, 'NPDGT-000090', '190', '190', 'Jh eks0 ulhe', 'Jh vtheqYyk', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '2021-22', '3', '2', '2', 91, 'NPDGT-000091', '191', '191', 'Jh t+Qj vgen', 'Jh eks0 jlwy', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 432.00, 5692.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '2021-22', '3', '2', '2', 92, 'NPDGT-000092', '192', '192', 'Jh y{eh ujk;u lksudj', 'Jh HkxkSrh izlkn lksudj', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 576.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '2021-22', '3', '2', '2', 93, 'NPDGT-000093', '193', '193', 'Jh eks0 fln~nhd', 'Jh \'kCchj', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 360.00, 360.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '2021-22', '3', '2', '2', 94, 'NPDGT-000094', '194', '194', 'Jh f\'koizlkn', 'Jh jkevo/k', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 216.00, 3346.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '2021-22', '3', '2', '2', 95, 'NPDGT-000095', '195', '195', 'Jh pkS0eks0 mleku', 'Jh pkS0eks0 tqcsj', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 576.00, 1728.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '2021-22', '3', '2', '2', 96, 'NPDGT-000096', '196', '196', 'Jh \'kkgeksgEen', 'Jh oyh eksgEen', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 432.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '2021-22', '3', '2', '2', 97, 'NPDGT-000097', '197', '197', 'Jh ykyth jkBkSj', 'Jh bZ\'ojnhu', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 576.00, 576.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '2021-22', '3', '2', '2', 98, 'NPDGT-000098', '198', '198', 'Jh [kyhy vgen', 'Jh nhu eksgEen', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 144.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, '2021-22', '3', '2', '2', 99, 'NPDGT-000099', '199', '199', 'Jh lR;ujk;.k', 'Jh yky cgknqj', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 216.00, 1836.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, '2021-22', '3', '2', '2', 100, 'NPDGT-000100', '200', '200', 'Jh jkew', 'Jh Nsnh yky', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 94.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, '2022-23', '4', '2', '2', 101, 'NPDGT-000101', '201', '201', 'Jh jke feyu', 'Jh HkXxu', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 16:14:57'),
(103, '2022-23', '4', '2', '2', 102, 'NPDGT-000102', '202', '202', 'Jh eSdwyky', 'Jh n\'kZu yky', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 180.00, 0.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 16:15:38'),
(104, '2022-23', '4', '2', '2', 103, 'NPDGT-000103', '203', '203', 'Jh tSljkt', 'Jh vgoju', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(105, '2022-23', '4', '2', '2', 104, 'NPDGT-000104', '204', '204', 'Jh fxfjtk \'kadj', 'Jh jke ft;kou', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(106, '2022-23', '4', '2', '2', 105, 'NPDGT-000105', '205', '205', 'Jh Hkwjsyky jkey[ku', 'Jh ekrkizlkn', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 130.00, 850.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(107, '2022-23', '4', '2', '2', 106, 'NPDGT-000106', '206', '206', 'Jh txnh\'k izlkn', 'Jh eqUuh yky', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 108.00, 828.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(108, '2022-23', '4', '2', '2', 107, 'NPDGT-000107', '207', '207', 'Jh dYyw', 'Jh lgnso', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 216.00, 936.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(109, '2022-23', '4', '2', '2', 108, 'NPDGT-000108', '208', '208', 'Jh jkedsoy', 'Jh ikjl', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(110, '2022-23', '4', '2', '2', 109, 'NPDGT-000109', '209', '209', 'Jh lq[khjke', 'Jh lqdbZ', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(111, '2022-23', '4', '2', '2', 110, 'NPDGT-000110', '210', '210', 'Jh ckdsayky', 'Jh nsodyh', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 864.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(112, '2022-23', '4', '2', '2', 111, 'NPDGT-000111', '211', '211', 'Jh fot; dqekj', 'Jh tkudh izlkn', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 108.00, 828.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(113, '2022-23', '4', '2', '2', 112, 'NPDGT-000112', '212', '212', 'Jherh fueZyk nsoh', 'Jh f\'koujk;.k', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 216.00, 936.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(114, '2022-23', '4', '2', '2', 113, 'NPDGT-000113', '213', '213', 'Jh vf[kys\'k dqekj', 'Jh gjh vkse', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 216.00, 936.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(115, '2022-23', '4', '2', '2', 114, 'NPDGT-000114', '214', '214', 'Jh vjfoUn dqekj', 'Jh lqHkk\"kpUnz', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 216.00, 936.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(116, '2022-23', '4', '2', '2', 115, 'NPDGT-000115', '215', '215', 'Jh jkelwjr', 'Jh xq# izlkn', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 288.00, 1008.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(117, '2022-23', '4', '2', '2', 116, 'NPDGT-000116', '216', '216', 'Jherh fcUns\'ojh nsoh', 'jkevo/k ;kno', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 1500.00, 2220.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(118, '2022-23', '4', '2', '2', 117, 'NPDGT-000117', '217', '217', 'Jh ,gjkj vgen [kk?', 'Jh gkth tjkZj [kka?', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 288.00, 1008.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(119, '2022-23', '4', '2', '2', 118, 'NPDGT-000118', '218', '218', 'Jh f\'koizlkn', 'Jh gfj\'pUnz', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 216.00, 936.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(120, '2022-23', '4', '2', '2', 119, 'NPDGT-000119', '219', '219', 'Jherh jktdqekjh', 'Jh fxfjtk \'kadj', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 216.00, 936.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(121, '2022-23', '4', '2', '2', 120, 'NPDGT-000120', '220', '220', 'Jherh \'kCcks', 'Jh vdhy', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 864.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(122, '2022-23', '4', '2', '2', 121, 'NPDGT-000121', '221', '221', 'Jh fiUVw', '0', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(123, '2022-23', '4', '2', '2', 122, 'NPDGT-000122', '222', '222', 'Jh eks0 guhQ', 'Jh yqdeku', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(124, '2022-23', '4', '2', '2', 123, 'NPDGT-000123', '223', '223', 'Jherh vthtqufu\'kk?', 'Jh ,[kykd jlwy', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 288.00, 1008.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(125, '2022-23', '4', '2', '2', 124, 'NPDGT-000124', '224', '224', 'Jh \'kCcw', '0', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 115.00, 835.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(126, '2022-23', '4', '2', '2', 125, 'NPDGT-000125', '225', '225', 'Jh eks0 guhQ', 'Jh vCnqy jTtkd', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(127, '2022-23', '4', '2', '2', 126, 'NPDGT-000126', '226', '226', 'Jh eks0 ;kdwc] eks0 guhQ', 'Jh xqyke xkSl', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(128, '2022-23', '4', '2', '2', 127, 'NPDGT-000127', '227', '227', 'Jh tSuqmn~nhu', 'Jh eqbumn~nhu', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 864.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(129, '2022-23', '4', '2', '2', 128, 'NPDGT-000128', '228', '228', 'Jherh [krhtk', 'Jh vCckl', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 288.00, 1008.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(130, '2022-23', '4', '2', '2', 129, 'NPDGT-000129', '229', '229', 'Jh dkyh izlkn', 'Jh xq#pju', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(131, '2022-23', '4', '2', '2', 130, 'NPDGT-000130', '230', '230', 'Jh lbZn vgen', 'Jh glu vyh', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 144.00, 864.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(132, '2022-23', '4', '2', '2', 131, 'NPDGT-000131', '231', '231', 'Jh eks0 jQh ] eks0 ;klhu] Jherh fdlerh ckuks ]', 'eks0 jQh', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 240.00, 960.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(133, '2022-23', '4', '2', '2', 132, 'NPDGT-000132', '232', '232', 'Jh bEfr;kt+ vyh', 'Jh mej njkt', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 240.00, 960.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(134, '2022-23', '4', '2', '2', 133, 'NPDGT-000133', '233', '233', 'Jh egewn vgen', 'Jh Qk:[k vgen', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 240.00, 960.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(135, '2022-23', '4', '2', '2', 134, 'NPDGT-000134', '234', '234', 'Jh eks0 tQ+j] eks0 vjln', 'Jh eks0 dej', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(136, '2022-23', '4', '2', '2', 135, 'NPDGT-000135', '235', '235', 'Jh eks0 j\'khn', 'Jh gth HkksyscD\'k', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 720.00, 1440.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(137, '2022-23', '4', '2', '2', 136, 'NPDGT-000136', '236', '236', 'Jherh Q[k: fu\'kk?', 'Jh jchmYyk', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 180.00, 900.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(138, '2022-23', '4', '2', '2', 137, 'NPDGT-000137', '237', '237', 'Jherh vk\'kk nsoh', 'Lo0 Jh yYyw izlkn', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 94.00, 814.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(139, '2022-23', '4', '2', '2', 138, 'NPDGT-000138', '238', '238', 'Jh lS?;n lqgSy vgen', 'Jh bljkmy glu', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 1800.00, 2520.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(140, '2022-23', '4', '2', '2', 139, 'NPDGT-000139', '239', '239', 'ukseku vgen fln~nhdh', 'Lo0 eks0 vlye fln~nhdh', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 288.00, 1008.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(141, '2022-23', '4', '1', '1', 140, 'NPDGT-000140', '240', '240', 'Jherh dkSf\'kY;k vk;Z', 'Jh osnjru izdk\'k vk;Z', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 720.00, 1440.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(142, '2022-23', '4', '1', '1', 141, 'NPDGT-000141', '241', '241', 'Jh eks0 bdcky', 'eks0 blgkd', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 1920.00, 2640.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(143, '2022-23', '4', '1', '1', 142, 'NPDGT-000142', '242', '242', 'Jh eks0 \'kehe', 'Jh eks0 mej', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 300.00, 1020.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(144, '2022-23', '4', '1', '1', 143, 'NPDGT-000143', '243', '243', 'Jherh tg#fUu\'kka', 'eks0 dyhe', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 240.00, 960.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(145, '2022-23', '4', '1', '1', 144, 'NPDGT-000144', '244', '244', 'Jherh ljoj tgka', 'eks0 egewn', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 600.00, 1320.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(146, '2022-23', '4', '1', '1', 145, 'NPDGT-000145', '245', '245', 'Jherh #dlkuk [kkrwu', 'eq[rkj [kka', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 1200.00, 1920.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(147, '2022-23', '4', '1', '1', 146, 'NPDGT-000146', '246', '246', 'Jherh uktehu ckuks', 'LoZ0 vkQkd vgen', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 480.00, 1200.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(148, '2022-23', '4', '1', '1', 147, 'NPDGT-000147', '247', '247', ':ch', 'eksgEen bLekbZy', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 180.00, 900.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06'),
(149, '2022-23', '4', '1', '1', 148, 'NPDGT-000148', '248', '248', 'lqcqgh', 'bejku vgen', 'nks/kV', '7786945690', '111111111111', 'test@gmail.com', 240.00, 960.00, 0.00, '0', 0, 1, '0', '0000-00-00 00:00:00', '2023-10-23 13:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `seever_demand`
--

CREATE TABLE `seever_demand` (
  `id` int(11) NOT NULL,
  `fin_year` varchar(100) NOT NULL,
  `ward_no` int(100) NOT NULL,
  `crn` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `arv_seever` double(10,2) NOT NULL,
  `opening_arrear_seever` double(10,2) NOT NULL,
  `opening_advance_seever` double(10,2) NOT NULL,
  `total_tax_seever` double(10,2) NOT NULL,
  `curr_arrear_seever` double(10,2) NOT NULL,
  `curr_advance_seever` double(10,2) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `billno` int(100) NOT NULL DEFAULT 0,
  `status` int(100) NOT NULL DEFAULT 1,
  `unique_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seever_demand`
--

INSERT INTO `seever_demand` (`id`, `fin_year`, `ward_no`, `crn`, `name`, `arv_seever`, `opening_arrear_seever`, `opening_advance_seever`, `total_tax_seever`, `curr_arrear_seever`, `curr_advance_seever`, `from_date`, `to_date`, `billno`, `status`, `unique_id`, `created_at`, `updated_at`) VALUES
(1, '2021-22', 4, 101, 'Jh jke feyu', 144.00, 0.00, 0.00, 144.00, 144.00, 0.00, '2021-04-01', '2022-03-31', 1, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(2, '2021-22', 4, 102, 'Jh eSdwyky', 180.00, 960.00, 0.00, 1140.00, 1140.00, 0.00, '2021-04-01', '2022-03-31', 2, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(3, '2021-22', 4, 103, 'Jh tSljkt', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 3, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(4, '2021-22', 4, 104, 'Jh fxfjtk \'kadj', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 4, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(5, '2021-22', 4, 105, 'Jh Hkwjsyky jkey[ku', 130.00, 960.00, 0.00, 1090.00, 1090.00, 0.00, '2021-04-01', '2022-03-31', 5, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(6, '2021-22', 4, 106, 'Jh txnh\'k izlkn', 108.00, 960.00, 0.00, 1068.00, 1068.00, 0.00, '2021-04-01', '2022-03-31', 6, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(7, '2021-22', 4, 107, 'Jh dYyw', 216.00, 960.00, 0.00, 1176.00, 1176.00, 0.00, '2021-04-01', '2022-03-31', 7, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(8, '2021-22', 4, 108, 'Jh jkedsoy', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 8, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(9, '2021-22', 4, 109, 'Jh lq[khjke', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 9, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(10, '2021-22', 4, 110, 'Jh ckdsayky', 144.00, 960.00, 0.00, 1104.00, 1104.00, 0.00, '2021-04-01', '2022-03-31', 10, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(11, '2021-22', 4, 111, 'Jh fot; dqekj', 108.00, 960.00, 0.00, 1068.00, 1068.00, 0.00, '2021-04-01', '2022-03-31', 11, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(12, '2021-22', 4, 112, 'Jherh fueZyk nsoh', 216.00, 960.00, 0.00, 1176.00, 1176.00, 0.00, '2021-04-01', '2022-03-31', 12, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(13, '2021-22', 4, 113, 'Jh vf[kys\'k dqekj', 216.00, 960.00, 0.00, 1176.00, 1176.00, 0.00, '2021-04-01', '2022-03-31', 13, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(14, '2021-22', 4, 114, 'Jh vjfoUn dqekj', 216.00, 960.00, 0.00, 1176.00, 1176.00, 0.00, '2021-04-01', '2022-03-31', 14, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(15, '2021-22', 4, 115, 'Jh jkelwjr', 288.00, 960.00, 0.00, 1248.00, 1248.00, 0.00, '2021-04-01', '2022-03-31', 15, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(16, '2021-22', 4, 116, 'Jherh fcUns\'ojh nsoh', 1500.00, 960.00, 0.00, 2460.00, 2460.00, 0.00, '2021-04-01', '2022-03-31', 16, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(17, '2021-22', 4, 117, 'Jh ,gjkj vgen [kk?', 288.00, 960.00, 0.00, 1248.00, 1248.00, 0.00, '2021-04-01', '2022-03-31', 17, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(18, '2021-22', 4, 118, 'Jh f\'koizlkn', 216.00, 960.00, 0.00, 1176.00, 1176.00, 0.00, '2021-04-01', '2022-03-31', 18, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(19, '2021-22', 4, 119, 'Jherh jktdqekjh', 216.00, 960.00, 0.00, 1176.00, 1176.00, 0.00, '2021-04-01', '2022-03-31', 19, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(20, '2021-22', 4, 120, 'Jherh \'kCcks', 144.00, 960.00, 0.00, 1104.00, 1104.00, 0.00, '2021-04-01', '2022-03-31', 20, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(21, '2021-22', 4, 121, 'Jh fiUVw', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 21, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(22, '2021-22', 4, 122, 'Jh eks0 guhQ', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 22, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(23, '2021-22', 4, 123, 'Jherh vthtqufu\'kk?', 288.00, 960.00, 0.00, 1248.00, 1248.00, 0.00, '2021-04-01', '2022-03-31', 23, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(24, '2021-22', 4, 124, 'Jh \'kCcw', 115.00, 960.00, 0.00, 1075.00, 1075.00, 0.00, '2021-04-01', '2022-03-31', 24, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(25, '2021-22', 4, 125, 'Jh eks0 guhQ', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 25, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(26, '2021-22', 4, 126, 'Jh eks0 ;kdwc] eks0 guhQ', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 26, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(27, '2021-22', 4, 127, 'Jh tSuqmn~nhu', 144.00, 960.00, 0.00, 1104.00, 1104.00, 0.00, '2021-04-01', '2022-03-31', 27, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(28, '2021-22', 4, 128, 'Jherh [krhtk', 288.00, 960.00, 0.00, 1248.00, 1248.00, 0.00, '2021-04-01', '2022-03-31', 28, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(29, '2021-22', 4, 129, 'Jh dkyh izlkn', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 29, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(30, '2021-22', 4, 130, 'Jh lbZn vgen', 144.00, 960.00, 0.00, 1104.00, 1104.00, 0.00, '2021-04-01', '2022-03-31', 30, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(31, '2021-22', 4, 131, 'Jh eks0 jQh ] eks0 ;klhu] Jherh fdlerh ckuks ]', 240.00, 960.00, 0.00, 1200.00, 1200.00, 0.00, '2021-04-01', '2022-03-31', 31, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(32, '2021-22', 4, 132, 'Jh bEfr;kt+ vyh', 240.00, 960.00, 0.00, 1200.00, 1200.00, 0.00, '2021-04-01', '2022-03-31', 32, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(33, '2021-22', 4, 133, 'Jh egewn vgen', 240.00, 960.00, 0.00, 1200.00, 1200.00, 0.00, '2021-04-01', '2022-03-31', 33, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(34, '2021-22', 4, 134, 'Jh eks0 tQ+j] eks0 vjln', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 34, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(35, '2021-22', 4, 135, 'Jh eks0 j\'khn', 720.00, 960.00, 0.00, 1680.00, 1680.00, 0.00, '2021-04-01', '2022-03-31', 35, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(36, '2021-22', 4, 136, 'Jherh Q[k: fu\'kk?', 180.00, 960.00, 0.00, 1140.00, 1140.00, 0.00, '2021-04-01', '2022-03-31', 36, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(37, '2021-22', 4, 137, 'Jherh vk\'kk nsoh', 94.00, 960.00, 0.00, 1054.00, 1054.00, 0.00, '2021-04-01', '2022-03-31', 37, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(38, '2021-22', 4, 138, 'Jh lS?;n lqgSy vgen', 1800.00, 960.00, 0.00, 2760.00, 2760.00, 0.00, '2021-04-01', '2022-03-31', 38, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(39, '2021-22', 4, 139, 'ukseku vgen fln~nhdh', 288.00, 960.00, 0.00, 1248.00, 1248.00, 0.00, '2021-04-01', '2022-03-31', 39, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(40, '2021-22', 4, 140, 'Jherh dkSf\'kY;k vk;Z', 720.00, 960.00, 0.00, 1680.00, 1680.00, 0.00, '2021-04-01', '2022-03-31', 40, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(41, '2021-22', 4, 141, 'Jh eks0 bdcky', 1920.00, 960.00, 0.00, 2880.00, 2880.00, 0.00, '2021-04-01', '2022-03-31', 41, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(42, '2021-22', 4, 142, 'Jh eks0 \'kehe', 300.00, 960.00, 0.00, 1260.00, 1260.00, 0.00, '2021-04-01', '2022-03-31', 42, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(43, '2021-22', 4, 143, 'Jherh tg#fUu\'kka', 240.00, 960.00, 0.00, 1200.00, 1200.00, 0.00, '2021-04-01', '2022-03-31', 43, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(44, '2021-22', 4, 144, 'Jherh ljoj tgka', 600.00, 960.00, 0.00, 1560.00, 1560.00, 0.00, '2021-04-01', '2022-03-31', 44, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(45, '2021-22', 4, 145, 'Jherh #dlkuk [kkrwu', 1200.00, 960.00, 0.00, 2160.00, 2160.00, 0.00, '2021-04-01', '2022-03-31', 45, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(46, '2021-22', 4, 146, 'Jherh uktehu ckuks', 480.00, 960.00, 0.00, 1440.00, 1440.00, 0.00, '2021-04-01', '2022-03-31', 46, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(47, '2021-22', 4, 147, ':ch', 180.00, 960.00, 0.00, 1140.00, 1140.00, 0.00, '2021-04-01', '2022-03-31', 47, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41'),
(48, '2021-22', 4, 148, 'lqcqgh', 240.00, 960.00, 0.00, 1200.00, 1200.00, 0.00, '2021-04-01', '2022-03-31', 48, 1, '', '2023-10-23 13:37:41', '2023-10-23 13:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `seever_payment`
--

CREATE TABLE `seever_payment` (
  `id` int(100) NOT NULL,
  `fin_year` varchar(100) NOT NULL,
  `ward_no` varchar(100) NOT NULL,
  `crn` int(100) NOT NULL,
  `total_tax_seever` double(10,2) NOT NULL,
  `paid_amount` double(10,2) NOT NULL,
  `arrear_seever` double(10,2) NOT NULL,
  `advance_seever` double(10,2) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `billno` int(100) NOT NULL,
  `dated` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seever_registrations`
--

CREATE TABLE `seever_registrations` (
  `id` int(100) NOT NULL,
  `fin_year` varchar(255) NOT NULL,
  `ward_no` varchar(255) NOT NULL,
  `house_type_id` varchar(255) NOT NULL,
  `house_detail_id` varchar(255) NOT NULL,
  `crn` int(52) NOT NULL,
  `unique_id` varchar(244) NOT NULL,
  `house_number` varchar(234) NOT NULL,
  `demand_number` varchar(244) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) NOT NULL,
  `aadhaar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `arv_seever` double(10,2) NOT NULL,
  `opening_arrear_seever` double(10,2) NOT NULL,
  `opening_advance_seever` double(10,2) NOT NULL,
  `regdate` varchar(255) NOT NULL,
  `billno` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `is_delete` int(100) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seever_registrations`
--

INSERT INTO `seever_registrations` (`id`, `fin_year`, `ward_no`, `house_type_id`, `house_detail_id`, `crn`, `unique_id`, `house_number`, `demand_number`, `name`, `father_name`, `address`, `aadhaar`, `email`, `mobile`, `arv_seever`, `opening_arrear_seever`, `opening_advance_seever`, `regdate`, `billno`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, '2021-22', '1', '1', '1', 1, 'NPDGT-000001', '101', '101', 'Jh ykycgknqj', 'Jh >x#', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 108.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '2021-22', '1', '1', '1', 2, 'NPDGT-000002', '102', '102', 'Jh f=yksdh', 'Jh laxe', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '2021-22', '1', '1', '1', 3, 'NPDGT-000003', '103', '103', 'Jh jru', 'Jh HkXxw', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '2021-22', '1', '2', '2', 4, 'NPDGT-000004', '104', '104', 'Jh ea\'kkjke', 'Jh tks[ku', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 182.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '2021-22', '1', '2', '2', 5, 'NPDGT-000005', '105', '105', 'Jh f?kjkZ?', 'Jh HkXxw', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1266.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '2021-22', '1', '2', '2', 6, 'NPDGT-000006', '106', '106', 'Jh tx#i', 'Jh f?kjkZ?', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '2021-22', '1', '2', '2', 7, 'NPDGT-000007', '107', '107', 'Jh ?snhyky', 'Jh jkexqyke', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1331.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '2021-22', '1', '2', '2', 8, 'NPDGT-000008', '108', '108', 'Jh tqEeu [kk?', 'Jh gler vyh', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '2021-22', '1', '2', '2', 9, 'NPDGT-000009', '109', '109', 'eks0 vuhl [kka', 'Jh tqEeu [kk?', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '2021-22', '1', '2', '2', 10, 'NPDGT-000010', '110', '110', 'eks0 \'kehe', 'Jh vthe [kk?', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 798.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '2021-22', '1', '2', '2', 11, 'NPDGT-000011', '111', '111', 'Jh fnus\'k dqekj] dYyw] jkds\'k dqekj] jkeQsj] /kesZUnz', 'Lo0 eqUus', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '2021-22', '1', '2', '2', 12, 'NPDGT-000012', '112', '112', 'Jh l?khnhu', 'Jh cq/kbZ', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '2021-22', '1', '2', '2', 13, 'NPDGT-000013', '113', '113', 'Jh I;kjs', 'Jh cgjSph', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1669.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '2021-22', '1', '2', '2', 14, 'NPDGT-000014', '114', '114', 'Jh tqXxhyky', 'Jh xq:cD\'k', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '2021-22', '1', '1', '1', 15, 'NPDGT-000015', '115', '115', 'Jh enuyky', 'Jh xq#cD\'k', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '2021-22', '1', '1', '1', 16, 'NPDGT-000016', '116', '116', 'Jh uxslj', 'Jh eaxjs', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 115.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '2021-22', '1', '1', '1', 17, 'NPDGT-000017', '117', '117', 'Jherh f\'kodqekjh', 'Jh lrxq# izlkn', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '2021-22', '1', '1', '1', 18, 'NPDGT-000018', '118', '118', 'Jh \'k=ksgu', 'Jh nqD[kw', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 470.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '2021-22', '1', '1', '1', 19, 'NPDGT-000019', '119', '119', 'Jh jkecD\'k', 'Jh nqD[kw', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 470.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '2021-22', '1', '1', '1', 20, 'NPDGT-000020', '120', '120', 'Jh jke fd\'kksj', 'Jh jkePkUnj', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 876.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '2021-22', '1', '1', '1', 21, 'NPDGT-000021', '121', '121', 'Jh fcjtw', 'Jh f?kjkZ?', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1669.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '2021-22', '1', '1', '1', 22, 'NPDGT-000022', '122', '122', 'Jh jkeleq>', 'Jh yYyk', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 642.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '2021-22', '1', '1', '1', 23, 'NPDGT-000023', '123', '123', 'Jh jkey[ku', 'Jh tx#i', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '2021-22', '1', '1', '1', 24, 'NPDGT-000024', '124', '124', 'Jh ?ku\';ke', 'Jh xjhcs', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '2021-22', '1', '1', '1', 25, 'NPDGT-000025', '125', '125', 'Jh lkseu', 'Jh ekrknhu', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 115.00, 230.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '2021-22', '1', '2', '1', 26, 'NPDGT-000026', '126', '126', 'Jh igkM+h', 'Jh ekrknhu', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '2021-22', '1', '2', '1', 27, 'NPDGT-000027', '127', '127', 'Jh f\'kojke', 'Jh iky', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 288.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '2021-22', '1', '2', '1', 28, 'NPDGT-000028', '128', '128', 'Jh eksrhyky', 'Jh lksgcrh', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 720.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '2021-22', '1', '2', '1', 29, 'NPDGT-000029', '129', '129', 'Jh f=yksdh', 'Jh Naxksys', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 432.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '2021-22', '1', '2', '1', 30, 'NPDGT-000030', '130', '130', 'Jh ekrknhu', 'Jh Naxksys', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 188.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '2021-22', '1', '2', '1', 31, 'NPDGT-000031', '131', '131', 'Jh t;dqekjh', 'Jh NksVw', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '2021-22', '1', '2', '1', 32, 'NPDGT-000032', '132', '132', 'Jh xjhcs', 'Jh jkepju', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '2021-22', '1', '2', '1', 33, 'NPDGT-000033', '133', '133', 'Jh pqUuh yky] jke dqekj] dkS\'ky izlkn] fouksn dqekj] lquhy dqekj', 'Lo0 ekssgu yky', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '2021-22', '1', '2', '1', 34, 'NPDGT-000034', '134', '134', 'Jh txnh\'k', 'Jh jkevpy', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '2021-22', '1', '2', '1', 35, 'NPDGT-000035', '135', '135', 'Jh jke ft;kou', 'Jh feJhyky', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '2021-22', '1', '2', '1', 36, 'NPDGT-000036', '136', '136', 'Jh bUnzthr', 'Jh Qdhjs', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '2021-22', '1', '2', '1', 37, 'NPDGT-000037', '137', '137', 'Jh dk\'khjke', 'Jh eqjyhnhu', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '2021-22', '1', '2', '1', 38, 'NPDGT-000038', '138', '138', 'Jh jkefd\'kksj', 'Jh jke vo/k', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '2021-22', '1', '2', '1', 39, 'NPDGT-000039', '139', '139', 'Jh euhjke', 'Jh jkevo/k', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 108.00, 108.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '2021-22', '2', '1', '1', 40, 'NPDGT-000040', '140', '140', 'Jh dsrkj', 'Jh euhjke', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 108.00, 324.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '2021-22', '2', '1', '1', 41, 'NPDGT-000041', '141', '141', 'Jh jke leq>', 'Jh lkfydjke', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '2021-22', '2', '1', '1', 42, 'NPDGT-000042', '142', '142', 'Jh txthou', 'Jh ?kx#', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '2021-22', '2', '1', '1', 43, 'NPDGT-000043', '143', '143', 'Jh iquoklh', 'Jh ?kx#', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 798.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '2021-22', '2', '1', '1', 44, 'NPDGT-000044', '144', '144', 'Jh txjke', 'Jh ds\'ko', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '2021-22', '2', '1', '1', 45, 'NPDGT-000045', '145', '145', 'dykorh', 'Jh jkecju', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 115.00, 978.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '2021-22', '2', '1', '1', 46, 'NPDGT-000046', '146', '146', 'Jherh pUnzdyk', 'feghyky', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, '2021-22', '2', '1', '1', 47, 'NPDGT-000047', '147', '147', 'Jh ijes\'oj', '?ks:', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 498.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, '2021-22', '2', '1', '1', 48, 'NPDGT-000048', '148', '148', 'Jh jkefd\'kksj', 'Jh jkekuUn', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 769.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, '2021-22', '2', '1', '1', 49, 'NPDGT-000049', '149', '149', 'Jh euksgj', 'Jh uks[kbZ', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, '2021-22', '2', '1', '1', 50, 'NPDGT-000050', '150', '150', 'Jh dfiynso ] guqeku', 'Jh jkegj[k', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, '2021-22', '2', '1', '1', 51, 'NPDGT-000051', '151', '151', 'Jh cuokjh yky', 'Jh txnUr', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, '2021-22', '2', '1', '1', 52, 'NPDGT-000052', '152', '152', 'Jh pEikyky', 'Jh jkey[ku', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 188.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, '2021-22', '2', '1', '1', 53, 'NPDGT-000053', '153', '153', 'Jh jkeleq>', 'Jh lqdbZ', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, '2021-22', '2', '1', '1', 54, 'NPDGT-000054', '154', '154', 'Jh cuokjh', 'Jh txnUr', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, '2021-22', '2', '1', '1', 55, 'NPDGT-000055', '155', '155', 'Jh feV~Bw', 'Jh ckcknhu', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 470.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, '2021-22', '2', '1', '1', 56, 'NPDGT-000056', '156', '156', 'Jh xjhcsyky', 'Jh jke/khjt', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 564.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, '2021-22', '2', '1', '1', 57, 'NPDGT-000057', '157', '157', 'Jh eqUusyky', 'Jh csdk:', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 800.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, '2021-22', '2', '1', '1', 58, 'NPDGT-000058', '158', '158', 'Jh jkenkl', 'Jh jkekuUn', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, '2021-22', '2', '1', '1', 59, 'NPDGT-000059', '159', '159', 'Jh nq[kjke', 'Jh txnUr', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, '2021-22', '2', '1', '1', 60, 'NPDGT-000060', '160', '160', 'Jh cgjSph', 'Jh tx#i', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, '2021-22', '2', '1', '1', 61, 'NPDGT-000061', '161', '161', 'Jh lgnso', 'Jh txslj', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, '2021-22', '2', '1', '1', 62, 'NPDGT-000062', '162', '162', 'Jh jkelwjr', 'Jh ca\'khyky', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 1266.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, '2021-22', '2', '1', '1', 63, 'NPDGT-000063', '163', '163', 'Jh dkEkrk', 'Jh jkexfr', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, '2021-22', '2', '1', '1', 64, 'NPDGT-000064', '164', '164', 'Jh gkSflyk izlkn', 'Jh yky cgknqj', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, '2021-22', '2', '1', '1', 65, 'NPDGT-000065', '165', '165', 'Jh eSdwyky', 'Jh ?kx#', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 144.00, 720.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '2021-22', '2', '1', '1', 66, 'NPDGT-000066', '166', '166', 'Jh larks\"k dqekj', 'Jh jkenqykjs', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 101.00, 1046.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, '2021-22', '2', '1', '1', 67, 'NPDGT-000067', '167', '167', 'Jh jkelqUnj', 'Jh fo\'ks\"kj', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 216.00, 432.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, '2021-22', '2', '1', '1', 68, 'NPDGT-000068', '168', '168', 'Jh jkey[ku', 'Jh feJhyky', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 108.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, '2021-22', '2', '2', '2', 69, 'NPDGT-000069', '169', '169', 'Jh csdk#', 'cybZ', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 376.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, '2021-22', '2', '2', '2', 70, 'NPDGT-000070', '170', '170', 'Jh lUrw', 'Jh feV~Bw', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 94.00, 188.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '2021-22', '2', '2', '2', 71, 'NPDGT-000071', '171', '171', 'Jh txnh\'k', 'Jh jkeleq>', 'nks/kV', '8576945690', '1.11E+11', 'test@gmail.com', 144.00, 144.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, '2021-22', '2', '2', '2', 72, 'NPDGT-000072', '172', '172', 'Jh jkevo/k', 'Jh f\'koiyVu', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 270.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, '2021-22', '2', '2', '2', 73, 'NPDGT-000073', '173', '173', 'Jh xtk/kj', 'Jh lksebZ', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 115.00, 115.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '2021-22', '2', '2', '2', 74, 'NPDGT-000074', '174', '174', 'Jh f\'kojkt', 'Jh lgrw', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 876.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '2021-22', '2', '2', '2', 75, 'NPDGT-000075', '175', '175', 'Jh jkenqykjs', 'Jh jkes\'oj izlkn', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 173.00, 1126.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '2021-22', '2', '2', '2', 76, 'NPDGT-000076', '176', '176', 'eks0 jQh mQZ eqUuk', 'Jh bczkfge', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 115.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '2021-22', '3', '2', '2', 77, 'NPDGT-000077', '177', '177', 'Jh [kkykyh', 'Jh vkfcn', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 144.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '2021-22', '3', '2', '2', 78, 'NPDGT-000078', '178', '178', 'Jh gqlSu vyh', 'Jh ealwj vyh', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '2021-22', '3', '2', '2', 79, 'NPDGT-000079', '179', '179', 'Jh futkeqbnhu] bLykeqbnhu] ,tkeqbnhu \'kel~qbnhu] de:n~nhu', 'Naxk', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 144.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '2021-22', '3', '2', '2', 80, 'NPDGT-000080', '180', '180', 'eks0 lkfcj', 'eks0 vyh', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 288.00, 576.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '2021-22', '3', '2', '2', 81, 'NPDGT-000081', '181', '181', 'Jh jkeopu', 'Jh jkeQy', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '2021-22', '3', '2', '2', 82, 'NPDGT-000082', '182', '182', 'Jh eq\'krkd', 'Jh rtEeqy gqlSu', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 470.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '2021-22', '3', '2', '2', 83, 'NPDGT-000083', '183', '183', 'Jh eqbumn~nhu', 'Jh \'kelqn~nhu', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 1064.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '2021-22', '3', '2', '2', 84, 'NPDGT-000084', '184', '184', 'Jh vgen gqlSu', '0', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 108.00, 1923.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '2021-22', '3', '2', '2', 85, 'NPDGT-000085', '185', '185', 'Jh easgnh glu', 'Jh Qjhn vgen', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 1224.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '2021-22', '3', '2', '2', 86, 'NPDGT-000086', '186', '186', 'Jh uud?', 'Jh HkxkSrh izlkn', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 432.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '2021-22', '3', '2', '2', 87, 'NPDGT-000087', '187', '187', 'Jh cgjSph', 'Jh HkXxu', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 282.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '2021-22', '3', '2', '2', 88, 'NPDGT-000088', '188', '188', 'Jh ?kwjs', 'Jh uudw', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 864.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '2021-22', '3', '2', '2', 89, 'NPDGT-000089', '189', '189', 'eks0 guhQ', 'Jh ;wlqQ', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 864.00, 12984.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '2021-22', '3', '2', '2', 90, 'NPDGT-000090', '190', '190', 'Jh eks0 ulhe', 'Jh vtheqYyk', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '2021-22', '3', '2', '2', 91, 'NPDGT-000091', '191', '191', 'Jh t+Qj vgen', 'Jh eks0 jlwy', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 432.00, 5692.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '2021-22', '3', '2', '2', 92, 'NPDGT-000092', '192', '192', 'Jh y{eh ujk;u lksudj', 'Jh HkxkSrh izlkn lksudj', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 576.00, 0.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '2021-22', '3', '2', '2', 93, 'NPDGT-000093', '193', '193', 'Jh eks0 fln~nhd', 'Jh \'kCchj', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 360.00, 360.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '2021-22', '3', '2', '2', 94, 'NPDGT-000094', '194', '194', 'Jh f\'koizlkn', 'Jh jkevo/k', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 216.00, 3346.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '2021-22', '3', '2', '2', 95, 'NPDGT-000095', '195', '195', 'Jh pkS0eks0 mleku', 'Jh pkS0eks0 tqcsj', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 576.00, 1728.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '2021-22', '3', '2', '2', 96, 'NPDGT-000096', '196', '196', 'Jh \'kkgeksgEen', 'Jh oyh eksgEen', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 432.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '2021-22', '3', '2', '2', 97, 'NPDGT-000097', '197', '197', 'Jh ykyth jkBkSj', 'Jh bZ\'ojnhu', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 576.00, 576.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '2021-22', '3', '2', '2', 98, 'NPDGT-000098', '198', '198', 'Jh [kyhy vgen', 'Jh nhu eksgEen', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 144.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, '2021-22', '3', '2', '2', 99, 'NPDGT-000099', '199', '199', 'Jh lR;ujk;.k', 'Jh yky cgknqj', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 216.00, 1836.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, '2021-22', '3', '2', '2', 100, 'NPDGT-000100', '200', '200', 'Jh jkew', 'Jh Nsnh yky', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 94.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, '2022-23', '4', '2', '2', 101, 'NPDGT-000101', '201', '201', 'Jh jke feyu', 'Jh HkXxu', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 144.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '2022-23', '4', '2', '2', 102, 'NPDGT-000102', '202', '202', 'Jh eSdwyky', 'Jh n\'kZu yky', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 180.00, 1140.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, '2022-23', '4', '2', '2', 103, 'NPDGT-000103', '203', '203', 'Jh tSljkt', 'Jh vgoju', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, '2022-23', '4', '2', '2', 104, 'NPDGT-000104', '204', '204', 'Jh fxfjtk \'kadj', 'Jh jke ft;kou', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, '2022-23', '4', '2', '2', 105, 'NPDGT-000105', '205', '205', 'Jh Hkwjsyky jkey[ku', 'Jh ekrkizlkn', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 130.00, 1090.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, '2022-23', '4', '2', '2', 106, 'NPDGT-000106', '206', '206', 'Jh txnh\'k izlkn', 'Jh eqUuh yky', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 108.00, 1068.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, '2022-23', '4', '2', '2', 107, 'NPDGT-000107', '207', '207', 'Jh dYyw', 'Jh lgnso', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 216.00, 1176.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, '2022-23', '4', '2', '2', 108, 'NPDGT-000108', '208', '208', 'Jh jkedsoy', 'Jh ikjl', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, '2022-23', '4', '2', '2', 109, 'NPDGT-000109', '209', '209', 'Jh lq[khjke', 'Jh lqdbZ', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '2022-23', '4', '2', '2', 110, 'NPDGT-000110', '210', '210', 'Jh ckdsayky', 'Jh nsodyh', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 1104.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, '2022-23', '4', '2', '2', 111, 'NPDGT-000111', '211', '211', 'Jh fot; dqekj', 'Jh tkudh izlkn', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 108.00, 1068.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, '2022-23', '4', '2', '2', 112, 'NPDGT-000112', '212', '212', 'Jherh fueZyk nsoh', 'Jh f\'koujk;.k', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 216.00, 1176.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, '2022-23', '4', '2', '2', 113, 'NPDGT-000113', '213', '213', 'Jh vf[kys\'k dqekj', 'Jh gjh vkse', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 216.00, 1176.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, '2022-23', '4', '2', '2', 114, 'NPDGT-000114', '214', '214', 'Jh vjfoUn dqekj', 'Jh lqHkk\"kpUnz', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 216.00, 1176.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, '2022-23', '4', '2', '2', 115, 'NPDGT-000115', '215', '215', 'Jh jkelwjr', 'Jh xq# izlkn', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 288.00, 1248.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, '2022-23', '4', '2', '2', 116, 'NPDGT-000116', '216', '216', 'Jherh fcUns\'ojh nsoh', 'jkevo/k ;kno', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 1500.00, 2460.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, '2022-23', '4', '2', '2', 117, 'NPDGT-000117', '217', '217', 'Jh ,gjkj vgen [kk?', 'Jh gkth tjkZj [kka?', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 288.00, 1248.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, '2022-23', '4', '2', '2', 118, 'NPDGT-000118', '218', '218', 'Jh f\'koizlkn', 'Jh gfj\'pUnz', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 216.00, 1176.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, '2022-23', '4', '2', '2', 119, 'NPDGT-000119', '219', '219', 'Jherh jktdqekjh', 'Jh fxfjtk \'kadj', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 216.00, 1176.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, '2022-23', '4', '2', '2', 120, 'NPDGT-000120', '220', '220', 'Jherh \'kCcks', 'Jh vdhy', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 1104.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, '2022-23', '4', '2', '2', 121, 'NPDGT-000121', '221', '221', 'Jh fiUVw', '0', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, '2022-23', '4', '2', '2', 122, 'NPDGT-000122', '222', '222', 'Jh eks0 guhQ', 'Jh yqdeku', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, '2022-23', '4', '2', '2', 123, 'NPDGT-000123', '223', '223', 'Jherh vthtqufu\'kk?', 'Jh ,[kykd jlwy', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 288.00, 1248.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, '2022-23', '4', '2', '2', 124, 'NPDGT-000124', '224', '224', 'Jh \'kCcw', '0', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 115.00, 1075.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, '2022-23', '4', '2', '2', 125, 'NPDGT-000125', '225', '225', 'Jh eks0 guhQ', 'Jh vCnqy jTtkd', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, '2022-23', '4', '2', '2', 126, 'NPDGT-000126', '226', '226', 'Jh eks0 ;kdwc] eks0 guhQ', 'Jh xqyke xkSl', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, '2022-23', '4', '2', '2', 127, 'NPDGT-000127', '227', '227', 'Jh tSuqmn~nhu', 'Jh eqbumn~nhu', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 1104.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, '2022-23', '4', '2', '2', 128, 'NPDGT-000128', '228', '228', 'Jherh [krhtk', 'Jh vCckl', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 288.00, 1248.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, '2022-23', '4', '2', '2', 129, 'NPDGT-000129', '229', '229', 'Jh dkyh izlkn', 'Jh xq#pju', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, '2022-23', '4', '2', '2', 130, 'NPDGT-000130', '230', '230', 'Jh lbZn vgen', 'Jh glu vyh', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 144.00, 1104.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, '2022-23', '4', '2', '2', 131, 'NPDGT-000131', '231', '231', 'Jh eks0 jQh ] eks0 ;klhu] Jherh fdlerh ckuks ]', 'eks0 jQh', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 240.00, 1200.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, '2022-23', '4', '2', '2', 132, 'NPDGT-000132', '232', '232', 'Jh bEfr;kt+ vyh', 'Jh mej njkt', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 240.00, 1200.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, '2022-23', '4', '2', '2', 133, 'NPDGT-000133', '233', '233', 'Jh egewn vgen', 'Jh Qk:[k vgen', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 240.00, 1200.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, '2022-23', '4', '2', '2', 134, 'NPDGT-000134', '234', '234', 'Jh eks0 tQ+j] eks0 vjln', 'Jh eks0 dej', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, '2022-23', '4', '2', '2', 135, 'NPDGT-000135', '235', '235', 'Jh eks0 j\'khn', 'Jh gth HkksyscD\'k', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 720.00, 1680.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, '2022-23', '4', '2', '2', 136, 'NPDGT-000136', '236', '236', 'Jherh Q[k: fu\'kk?', 'Jh jchmYyk', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 180.00, 1140.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, '2022-23', '4', '2', '2', 137, 'NPDGT-000137', '237', '237', 'Jherh vk\'kk nsoh', 'Lo0 Jh yYyw izlkn', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 94.00, 1054.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, '2022-23', '4', '2', '2', 138, 'NPDGT-000138', '238', '238', 'Jh lS?;n lqgSy vgen', 'Jh bljkmy glu', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 1800.00, 2760.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, '2022-23', '4', '2', '2', 139, 'NPDGT-000139', '239', '239', 'ukseku vgen fln~nhdh', 'Lo0 eks0 vlye fln~nhdh', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 288.00, 1248.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, '2022-23', '4', '1', '1', 140, 'NPDGT-000140', '240', '240', 'Jherh dkSf\'kY;k vk;Z', 'Jh osnjru izdk\'k vk;Z', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 720.00, 1680.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, '2022-23', '4', '1', '1', 141, 'NPDGT-000141', '241', '241', 'Jh eks0 bdcky', 'eks0 blgkd', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 1920.00, 2880.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, '2022-23', '4', '1', '1', 142, 'NPDGT-000142', '242', '242', 'Jh eks0 \'kehe', 'Jh eks0 mej', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 300.00, 1260.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, '2022-23', '4', '1', '1', 143, 'NPDGT-000143', '243', '243', 'Jherh tg#fUu\'kka', 'eks0 dyhe', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 240.00, 1200.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, '2022-23', '4', '1', '1', 144, 'NPDGT-000144', '244', '244', 'Jherh ljoj tgka', 'eks0 egewn', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 600.00, 1560.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, '2022-23', '4', '1', '1', 145, 'NPDGT-000145', '245', '245', 'Jherh #dlkuk [kkrwu', 'eq[rkj [kka', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 1200.00, 2160.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, '2022-23', '4', '1', '1', 146, 'NPDGT-000146', '246', '246', 'Jherh uktehu ckuks', 'LoZ0 vkQkd vgen', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 480.00, 1440.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, '2022-23', '4', '1', '1', 147, 'NPDGT-000147', '247', '247', ':ch', 'eksgEen bLekbZy', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 180.00, 1140.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, '2022-23', '4', '1', '1', 148, 'NPDGT-000148', '248', '248', 'lqcqgh', 'bejku vgen', 'nks/kV', '7786945690', '1.11E+11', 'test@gmail.com', 240.00, 1200.00, 0.00, '0', '0', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `shoprent_demand`
--

CREATE TABLE `shoprent_demand` (
  `id` int(11) NOT NULL,
  `fin_year` varchar(20) NOT NULL,
  `ward_no` varchar(255) NOT NULL,
  `crn` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rent` double(10,2) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `opening_arrear` double(10,2) NOT NULL,
  `opening_advance` double(10,2) NOT NULL,
  `total_tax` double(10,2) NOT NULL,
  `billno` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `paid_amount` double(10,2) NOT NULL,
  `curr_arrear` double(10,2) NOT NULL,
  `curr_advance` double(10,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shoprent_demand`
--

INSERT INTO `shoprent_demand` (`id`, `fin_year`, `ward_no`, `crn`, `name`, `rent`, `from_date`, `to_date`, `opening_arrear`, `opening_advance`, `total_tax`, `billno`, `status`, `paid_amount`, `curr_arrear`, `curr_advance`, `created_at`, `updated_at`) VALUES
(1, '2021-22', '4', 101, 'Jh jke feyu', 144.00, '2021-04-01', '2022-03-31', 532.00, 0.00, 676.00, 1, 1, 676.00, 0.00, 0.00, '2023-10-21 17:15:43', '2023-10-23 09:49:32'),
(2, '2021-22', '4', 102, 'Jh eSdwyky', 180.00, '2021-04-01', '2022-03-31', 180.00, 0.00, 360.00, 2, 0, 0.00, 360.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(3, '2021-22', '4', 103, 'Jh tSljkt', 94.00, '2021-04-01', '2022-03-31', 282.00, 0.00, 376.00, 3, 0, 0.00, 376.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(4, '2021-22', '4', 104, 'Jh fxfjtk \'kadj', 94.00, '2021-04-01', '2022-03-31', 94.00, 0.00, 188.00, 4, 0, 0.00, 188.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(5, '2021-22', '4', 105, 'Jh Hkwjsyky jkey[ku', 130.00, '2021-04-01', '2022-03-31', 1260.00, 0.00, 1390.00, 5, 0, 0.00, 1390.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(6, '2021-22', '4', 106, 'Jh txnh\'k izlkn', 108.00, '2021-04-01', '2022-03-31', 216.00, 0.00, 324.00, 6, 0, 0.00, 324.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(7, '2021-22', '4', 107, 'Jh dYyw', 216.00, '2021-04-01', '2022-03-31', 432.00, 0.00, 648.00, 7, 0, 0.00, 648.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(8, '2021-22', '4', 108, 'Jh jkedsoy', 94.00, '2021-04-01', '2022-03-31', 282.00, 0.00, 376.00, 8, 0, 0.00, 376.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(9, '2021-22', '4', 109, 'Jh lq[khjke', 94.00, '2021-04-01', '2022-03-31', 94.00, 0.00, 188.00, 9, 0, 0.00, 188.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(10, '2021-22', '4', 110, 'Jh ckdsayky', 144.00, '2021-04-01', '2022-03-31', 144.00, 0.00, 288.00, 10, 0, 0.00, 288.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(11, '2021-22', '4', 111, 'Jh fot; dqekj', 108.00, '2021-04-01', '2022-03-31', 1848.00, 0.00, 1956.00, 11, 0, 0.00, 1956.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(12, '2021-22', '4', 112, 'Jherh fueZyk nsoh', 216.00, '2021-04-01', '2022-03-31', 216.00, 0.00, 432.00, 12, 0, 0.00, 432.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(13, '2021-22', '4', 113, 'Jh vf[kys\'k dqekj', 216.00, '2021-04-01', '2022-03-31', 432.00, 0.00, 648.00, 13, 0, 0.00, 648.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(14, '2021-22', '4', 114, 'Jh vjfoUn dqekj', 216.00, '2021-04-01', '2022-03-31', 432.00, 0.00, 648.00, 14, 0, 0.00, 648.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(15, '2021-22', '4', 115, 'Jh jkelwjr', 288.00, '2021-04-01', '2022-03-31', 288.00, 0.00, 576.00, 15, 0, 0.00, 576.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(16, '2021-22', '4', 116, 'Jherh fcUns\'ojh nsoh', 1500.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 1500.00, 16, 0, 0.00, 1500.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(17, '2021-22', '4', 117, 'Jh ,gjkj vgen [kk?', 288.00, '2021-04-01', '2022-03-31', 1152.00, 0.00, 1440.00, 17, 0, 0.00, 1440.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(18, '2021-22', '4', 118, 'Jh f\'koizlkn', 216.00, '2021-04-01', '2022-03-31', 432.00, 0.00, 648.00, 18, 0, 0.00, 648.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(19, '2021-22', '4', 119, 'Jherh jktdqekjh', 216.00, '2021-04-01', '2022-03-31', 3846.00, 0.00, 4062.00, 19, 0, 0.00, 4062.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(20, '2021-22', '4', 120, 'Jherh \'kCcks', 144.00, '2021-04-01', '2022-03-31', 1824.00, 0.00, 1968.00, 20, 0, 0.00, 1968.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(21, '2021-22', '4', 121, 'Jh fiUVw', 94.00, '2021-04-01', '2022-03-31', 1169.00, 0.00, 1263.00, 21, 0, 0.00, 1263.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(22, '2021-22', '4', 122, 'Jh eks0 guhQ', 94.00, '2021-04-01', '2022-03-31', 1539.00, 0.00, 1633.00, 22, 0, 0.00, 1633.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(23, '2021-22', '4', 123, 'Jherh vthtqufu\'kk?', 288.00, '2021-04-01', '2022-03-31', 576.00, 0.00, 864.00, 23, 0, 0.00, 864.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(24, '2021-22', '4', 124, 'Jh \'kCcw', 115.00, '2021-04-01', '2022-03-31', 2050.00, 0.00, 2165.00, 24, 0, 0.00, 2165.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(25, '2021-22', '4', 125, 'Jh eks0 guhQ', 94.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 94.00, 25, 0, 0.00, 94.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(26, '2021-22', '4', 126, 'Jh eks0 ;kdwc] eks0 guhQ', 94.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 94.00, 26, 0, 0.00, 94.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(27, '2021-22', '4', 127, 'Jh tSuqmn~nhu', 144.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 144.00, 27, 0, 0.00, 144.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(28, '2021-22', '4', 128, 'Jherh [krhtk', 288.00, '2021-04-01', '2022-03-31', 3888.00, 0.00, 4176.00, 28, 0, 0.00, 4176.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(29, '2021-22', '4', 129, 'Jh dkyh izlkn', 94.00, '2021-04-01', '2022-03-31', 188.00, 0.00, 282.00, 29, 0, 0.00, 282.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(30, '2021-22', '4', 130, 'Jh lbZn vgen', 144.00, '2021-04-01', '2022-03-31', 864.00, 0.00, 1008.00, 30, 0, 0.00, 1008.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(31, '2021-22', '4', 131, 'Jh eks0 jQh ] eks0 ;klhu] Jherh fdlerh ckuks ]', 240.00, '2021-04-01', '2022-03-31', 240.00, 0.00, 480.00, 31, 0, 0.00, 480.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(32, '2021-22', '4', 132, 'Jh bEfr;kt+ vyh', 240.00, '2021-04-01', '2022-03-31', 240.00, 0.00, 480.00, 32, 0, 0.00, 480.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(33, '2021-22', '4', 133, 'Jh egewn vgen', 240.00, '2021-04-01', '2022-03-31', 240.00, 0.00, 480.00, 33, 0, 0.00, 480.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(34, '2021-22', '4', 134, 'Jh eks0 tQ+j] eks0 vjln', 94.00, '2021-04-01', '2022-03-31', 564.00, 0.00, 658.00, 34, 0, 0.00, 658.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(35, '2021-22', '4', 135, 'Jh eks0 j\'khn', 720.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 720.00, 35, 0, 0.00, 720.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(36, '2021-22', '4', 136, 'Jherh Q[k: fu\'kk?', 180.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 180.00, 36, 0, 0.00, 180.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(37, '2021-22', '4', 137, 'Jherh vk\'kk nsoh', 94.00, '2021-04-01', '2022-03-31', 94.00, 0.00, 188.00, 37, 0, 0.00, 188.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(38, '2021-22', '4', 138, 'Jh lS?;n lqgSy vgen', 1800.00, '2021-04-01', '2022-03-31', 10800.00, 0.00, 12600.00, 38, 0, 0.00, 12600.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(39, '2021-22', '4', 139, 'ukseku vgen fln~nhdh', 288.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 288.00, 39, 0, 0.00, 288.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(40, '2021-22', '4', 140, 'Jherh dkSf\'kY;k vk;Z', 720.00, '2021-04-01', '2022-03-31', 720.00, 0.00, 1440.00, 40, 0, 0.00, 1440.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(41, '2021-22', '4', 141, 'Jh eks0 bdcky', 1920.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 1920.00, 41, 0, 0.00, 1920.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(42, '2021-22', '4', 142, 'Jh eks0 \'kehe', 300.00, '2021-04-01', '2022-03-31', 300.00, 0.00, 600.00, 42, 0, 0.00, 600.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(43, '2021-22', '4', 143, 'Jherh tg#fUu\'kka', 240.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 240.00, 43, 0, 0.00, 240.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(44, '2021-22', '4', 144, 'Jherh ljoj tgka', 600.00, '2021-04-01', '2022-03-31', 2400.00, 0.00, 3000.00, 44, 0, 0.00, 3000.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(45, '2021-22', '4', 145, 'Jherh #dlkuk [kkrwu', 1200.00, '2021-04-01', '2022-03-31', 3600.00, 0.00, 4800.00, 45, 0, 0.00, 4800.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(46, '2021-22', '4', 146, 'Jherh uktehu ckuks', 480.00, '2021-04-01', '2022-03-31', 480.00, 0.00, 960.00, 46, 0, 0.00, 960.00, 0.00, '2023-10-21 17:15:43', '2023-10-21 17:15:43'),
(47, '2021-22', '4', 147, ':ch', 180.00, '2021-04-01', '2022-03-31', 180.00, 0.00, 360.00, 47, 1, 360.00, 0.00, 0.00, '2023-10-21 17:15:43', '2023-10-23 09:50:03'),
(48, '2021-22', '4', 148, 'lqcqgh', 240.00, '2021-04-01', '2022-03-31', 240.00, 0.00, 480.00, 48, 1, 480.00, 0.00, 0.00, '2023-10-21 17:15:43', '2023-10-23 09:49:48'),
(49, '2022-23', '4', 101, 'Jh jke feyu', 144.00, '2022-04-01', '2023-03-31', 0.00, 0.00, 144.00, 49, 0, 0.00, 144.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(50, '2022-23', '4', 102, 'Jh eSdwyky', 180.00, '2022-04-01', '2023-03-31', 360.00, 0.00, 540.00, 50, 0, 0.00, 540.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(51, '2022-23', '4', 103, 'Jh tSljkt', 94.00, '2022-04-01', '2023-03-31', 376.00, 0.00, 470.00, 51, 0, 0.00, 470.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(52, '2022-23', '4', 104, 'Jh fxfjtk \'kadj', 94.00, '2022-04-01', '2023-03-31', 188.00, 0.00, 282.00, 52, 0, 0.00, 282.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(53, '2022-23', '4', 105, 'Jh Hkwjsyky jkey[ku', 130.00, '2022-04-01', '2023-03-31', 1390.00, 0.00, 1520.00, 53, 0, 0.00, 1520.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(54, '2022-23', '4', 106, 'Jh txnh\'k izlkn', 108.00, '2022-04-01', '2023-03-31', 324.00, 0.00, 432.00, 54, 0, 0.00, 432.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(55, '2022-23', '4', 107, 'Jh dYyw', 216.00, '2022-04-01', '2023-03-31', 648.00, 0.00, 864.00, 55, 0, 0.00, 864.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(56, '2022-23', '4', 108, 'Jh jkedsoy', 94.00, '2022-04-01', '2023-03-31', 376.00, 0.00, 470.00, 56, 0, 0.00, 470.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(57, '2022-23', '4', 109, 'Jh lq[khjke', 94.00, '2022-04-01', '2023-03-31', 188.00, 0.00, 282.00, 57, 0, 0.00, 282.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(58, '2022-23', '4', 110, 'Jh ckdsayky', 144.00, '2022-04-01', '2023-03-31', 288.00, 0.00, 432.00, 58, 0, 0.00, 432.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(59, '2022-23', '4', 111, 'Jh fot; dqekj', 108.00, '2022-04-01', '2023-03-31', 1956.00, 0.00, 2064.00, 59, 0, 0.00, 2064.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(60, '2022-23', '4', 112, 'Jherh fueZyk nsoh', 216.00, '2022-04-01', '2023-03-31', 432.00, 0.00, 648.00, 60, 0, 0.00, 648.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(61, '2022-23', '4', 113, 'Jh vf[kys\'k dqekj', 216.00, '2022-04-01', '2023-03-31', 648.00, 0.00, 864.00, 61, 0, 0.00, 864.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(62, '2022-23', '4', 114, 'Jh vjfoUn dqekj', 216.00, '2022-04-01', '2023-03-31', 648.00, 0.00, 864.00, 62, 0, 0.00, 864.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(63, '2022-23', '4', 115, 'Jh jkelwjr', 288.00, '2022-04-01', '2023-03-31', 576.00, 0.00, 864.00, 63, 0, 0.00, 864.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(64, '2022-23', '4', 116, 'Jherh fcUns\'ojh nsoh', 1500.00, '2022-04-01', '2023-03-31', 1500.00, 0.00, 3000.00, 64, 0, 0.00, 3000.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(65, '2022-23', '4', 117, 'Jh ,gjkj vgen [kk?', 288.00, '2022-04-01', '2023-03-31', 1440.00, 0.00, 1728.00, 65, 0, 0.00, 1728.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(66, '2022-23', '4', 118, 'Jh f\'koizlkn', 216.00, '2022-04-01', '2023-03-31', 648.00, 0.00, 864.00, 66, 0, 0.00, 864.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(67, '2022-23', '4', 119, 'Jherh jktdqekjh', 216.00, '2022-04-01', '2023-03-31', 4062.00, 0.00, 4278.00, 67, 0, 0.00, 4278.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(68, '2022-23', '4', 120, 'Jherh \'kCcks', 144.00, '2022-04-01', '2023-03-31', 1968.00, 0.00, 2112.00, 68, 0, 0.00, 2112.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(69, '2022-23', '4', 121, 'Jh fiUVw', 94.00, '2022-04-01', '2023-03-31', 1263.00, 0.00, 1357.00, 69, 0, 0.00, 1357.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(70, '2022-23', '4', 122, 'Jh eks0 guhQ', 94.00, '2022-04-01', '2023-03-31', 1633.00, 0.00, 1727.00, 70, 0, 0.00, 1727.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(71, '2022-23', '4', 123, 'Jherh vthtqufu\'kk?', 288.00, '2022-04-01', '2023-03-31', 864.00, 0.00, 1152.00, 71, 0, 0.00, 1152.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(72, '2022-23', '4', 124, 'Jh \'kCcw', 115.00, '2022-04-01', '2023-03-31', 2165.00, 0.00, 2280.00, 72, 0, 0.00, 2280.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(73, '2022-23', '4', 125, 'Jh eks0 guhQ', 94.00, '2022-04-01', '2023-03-31', 94.00, 0.00, 188.00, 73, 0, 0.00, 188.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(74, '2022-23', '4', 126, 'Jh eks0 ;kdwc] eks0 guhQ', 94.00, '2022-04-01', '2023-03-31', 94.00, 0.00, 188.00, 74, 0, 0.00, 188.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(75, '2022-23', '4', 127, 'Jh tSuqmn~nhu', 144.00, '2022-04-01', '2023-03-31', 144.00, 0.00, 288.00, 75, 0, 0.00, 288.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(76, '2022-23', '4', 128, 'Jherh [krhtk', 288.00, '2022-04-01', '2023-03-31', 4176.00, 0.00, 4464.00, 76, 0, 0.00, 4464.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(77, '2022-23', '4', 129, 'Jh dkyh izlkn', 94.00, '2022-04-01', '2023-03-31', 282.00, 0.00, 376.00, 77, 0, 0.00, 376.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(78, '2022-23', '4', 130, 'Jh lbZn vgen', 144.00, '2022-04-01', '2023-03-31', 1008.00, 0.00, 1152.00, 78, 0, 0.00, 1152.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(79, '2022-23', '4', 131, 'Jh eks0 jQh ] eks0 ;klhu] Jherh fdlerh ckuks ]', 240.00, '2022-04-01', '2023-03-31', 480.00, 0.00, 720.00, 79, 0, 0.00, 720.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(80, '2022-23', '4', 132, 'Jh bEfr;kt+ vyh', 240.00, '2022-04-01', '2023-03-31', 480.00, 0.00, 720.00, 80, 0, 0.00, 720.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(81, '2022-23', '4', 133, 'Jh egewn vgen', 240.00, '2022-04-01', '2023-03-31', 480.00, 0.00, 720.00, 81, 0, 0.00, 720.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(82, '2022-23', '4', 134, 'Jh eks0 tQ+j] eks0 vjln', 94.00, '2022-04-01', '2023-03-31', 658.00, 0.00, 752.00, 82, 0, 0.00, 752.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(83, '2022-23', '4', 135, 'Jh eks0 j\'khn', 720.00, '2022-04-01', '2023-03-31', 720.00, 0.00, 1440.00, 83, 0, 0.00, 1440.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(84, '2022-23', '4', 136, 'Jherh Q[k: fu\'kk?', 180.00, '2022-04-01', '2023-03-31', 180.00, 0.00, 360.00, 84, 0, 0.00, 360.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(85, '2022-23', '4', 137, 'Jherh vk\'kk nsoh', 94.00, '2022-04-01', '2023-03-31', 188.00, 0.00, 282.00, 85, 0, 0.00, 282.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(86, '2022-23', '4', 138, 'Jh lS?;n lqgSy vgen', 1800.00, '2022-04-01', '2023-03-31', 12600.00, 0.00, 14400.00, 86, 0, 0.00, 14400.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(87, '2022-23', '4', 139, 'ukseku vgen fln~nhdh', 288.00, '2022-04-01', '2023-03-31', 288.00, 0.00, 576.00, 87, 0, 0.00, 576.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(88, '2022-23', '4', 140, 'Jherh dkSf\'kY;k vk;Z', 720.00, '2022-04-01', '2023-03-31', 1440.00, 0.00, 2160.00, 88, 0, 0.00, 2160.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(89, '2022-23', '4', 141, 'Jh eks0 bdcky', 1920.00, '2022-04-01', '2023-03-31', 1920.00, 0.00, 3840.00, 89, 0, 0.00, 3840.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(90, '2022-23', '4', 142, 'Jh eks0 \'kehe', 300.00, '2022-04-01', '2023-03-31', 600.00, 0.00, 900.00, 90, 0, 0.00, 900.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(91, '2022-23', '4', 143, 'Jherh tg#fUu\'kka', 240.00, '2022-04-01', '2023-03-31', 240.00, 0.00, 480.00, 91, 0, 0.00, 480.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(92, '2022-23', '4', 144, 'Jherh ljoj tgka', 600.00, '2022-04-01', '2023-03-31', 3000.00, 0.00, 3600.00, 92, 0, 0.00, 3600.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(93, '2022-23', '4', 145, 'Jherh #dlkuk [kkrwu', 1200.00, '2022-04-01', '2023-03-31', 4800.00, 0.00, 6000.00, 93, 0, 0.00, 6000.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(94, '2022-23', '4', 146, 'Jherh uktehu ckuks', 480.00, '2022-04-01', '2023-03-31', 960.00, 0.00, 1440.00, 94, 0, 0.00, 1440.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(95, '2022-23', '4', 147, ':ch', 180.00, '2022-04-01', '2023-03-31', 0.00, 0.00, 180.00, 95, 0, 0.00, 180.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(96, '2022-23', '4', 148, 'lqcqgh', 240.00, '2022-04-01', '2023-03-31', 0.00, 0.00, 240.00, 96, 0, 0.00, 240.00, 0.00, '2023-10-23 09:52:16', '2023-10-23 09:52:16'),
(97, '2023-24', '4', 101, 'Jh jke feyu', 144.00, '2023-04-01', '2024-03-31', 144.00, 0.00, 288.00, 97, 0, 0.00, 288.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(98, '2023-24', '4', 102, 'Jh eSdwyky', 180.00, '2023-04-01', '2024-03-31', 540.00, 0.00, 720.00, 98, 0, 0.00, 720.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(99, '2023-24', '4', 103, 'Jh tSljkt', 94.00, '2023-04-01', '2024-03-31', 470.00, 0.00, 564.00, 99, 0, 0.00, 564.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(100, '2023-24', '4', 104, 'Jh fxfjtk \'kadj', 94.00, '2023-04-01', '2024-03-31', 282.00, 0.00, 376.00, 100, 0, 0.00, 376.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(101, '2023-24', '4', 105, 'Jh Hkwjsyky jkey[ku', 130.00, '2023-04-01', '2024-03-31', 1520.00, 0.00, 1650.00, 101, 0, 0.00, 1650.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(102, '2023-24', '4', 106, 'Jh txnh\'k izlkn', 108.00, '2023-04-01', '2024-03-31', 432.00, 0.00, 540.00, 102, 0, 0.00, 540.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(103, '2023-24', '4', 107, 'Jh dYyw', 216.00, '2023-04-01', '2024-03-31', 864.00, 0.00, 1080.00, 103, 0, 0.00, 1080.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(104, '2023-24', '4', 108, 'Jh jkedsoy', 94.00, '2023-04-01', '2024-03-31', 470.00, 0.00, 564.00, 104, 0, 0.00, 564.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(105, '2023-24', '4', 109, 'Jh lq[khjke', 94.00, '2023-04-01', '2024-03-31', 282.00, 0.00, 376.00, 105, 0, 0.00, 376.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(106, '2023-24', '4', 110, 'Jh ckdsayky', 144.00, '2023-04-01', '2024-03-31', 432.00, 0.00, 576.00, 106, 0, 0.00, 576.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(107, '2023-24', '4', 111, 'Jh fot; dqekj', 108.00, '2023-04-01', '2024-03-31', 2064.00, 0.00, 2172.00, 107, 0, 0.00, 2172.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(108, '2023-24', '4', 112, 'Jherh fueZyk nsoh', 216.00, '2023-04-01', '2024-03-31', 648.00, 0.00, 864.00, 108, 0, 0.00, 864.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(109, '2023-24', '4', 113, 'Jh vf[kys\'k dqekj', 216.00, '2023-04-01', '2024-03-31', 864.00, 0.00, 1080.00, 109, 0, 0.00, 1080.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(110, '2023-24', '4', 114, 'Jh vjfoUn dqekj', 216.00, '2023-04-01', '2024-03-31', 864.00, 0.00, 1080.00, 110, 0, 0.00, 1080.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(111, '2023-24', '4', 115, 'Jh jkelwjr', 288.00, '2023-04-01', '2024-03-31', 864.00, 0.00, 1152.00, 111, 0, 0.00, 1152.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(112, '2023-24', '4', 116, 'Jherh fcUns\'ojh nsoh', 1500.00, '2023-04-01', '2024-03-31', 3000.00, 0.00, 4500.00, 112, 0, 0.00, 4500.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(113, '2023-24', '4', 117, 'Jh ,gjkj vgen [kk?', 288.00, '2023-04-01', '2024-03-31', 1728.00, 0.00, 2016.00, 113, 0, 0.00, 2016.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(114, '2023-24', '4', 118, 'Jh f\'koizlkn', 216.00, '2023-04-01', '2024-03-31', 864.00, 0.00, 1080.00, 114, 0, 0.00, 1080.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(115, '2023-24', '4', 119, 'Jherh jktdqekjh', 216.00, '2023-04-01', '2024-03-31', 4278.00, 0.00, 4494.00, 115, 0, 0.00, 4494.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(116, '2023-24', '4', 120, 'Jherh \'kCcks', 144.00, '2023-04-01', '2024-03-31', 2112.00, 0.00, 2256.00, 116, 0, 0.00, 2256.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(117, '2023-24', '4', 121, 'Jh fiUVw', 94.00, '2023-04-01', '2024-03-31', 1357.00, 0.00, 1451.00, 117, 0, 0.00, 1451.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(118, '2023-24', '4', 122, 'Jh eks0 guhQ', 94.00, '2023-04-01', '2024-03-31', 1727.00, 0.00, 1821.00, 118, 0, 0.00, 1821.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(119, '2023-24', '4', 123, 'Jherh vthtqufu\'kk?', 288.00, '2023-04-01', '2024-03-31', 1152.00, 0.00, 1440.00, 119, 0, 0.00, 1440.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(120, '2023-24', '4', 124, 'Jh \'kCcw', 115.00, '2023-04-01', '2024-03-31', 2280.00, 0.00, 2395.00, 120, 0, 0.00, 2395.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(121, '2023-24', '4', 125, 'Jh eks0 guhQ', 94.00, '2023-04-01', '2024-03-31', 188.00, 0.00, 282.00, 121, 0, 0.00, 282.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(122, '2023-24', '4', 126, 'Jh eks0 ;kdwc] eks0 guhQ', 94.00, '2023-04-01', '2024-03-31', 188.00, 0.00, 282.00, 122, 0, 0.00, 282.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(123, '2023-24', '4', 127, 'Jh tSuqmn~nhu', 144.00, '2023-04-01', '2024-03-31', 288.00, 0.00, 432.00, 123, 0, 0.00, 432.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(124, '2023-24', '4', 128, 'Jherh [krhtk', 288.00, '2023-04-01', '2024-03-31', 4464.00, 0.00, 4752.00, 124, 0, 0.00, 4752.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(125, '2023-24', '4', 129, 'Jh dkyh izlkn', 94.00, '2023-04-01', '2024-03-31', 376.00, 0.00, 470.00, 125, 0, 0.00, 470.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(126, '2023-24', '4', 130, 'Jh lbZn vgen', 144.00, '2023-04-01', '2024-03-31', 1152.00, 0.00, 1296.00, 126, 0, 0.00, 1296.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(127, '2023-24', '4', 131, 'Jh eks0 jQh ] eks0 ;klhu] Jherh fdlerh ckuks ]', 240.00, '2023-04-01', '2024-03-31', 720.00, 0.00, 960.00, 127, 0, 0.00, 960.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(128, '2023-24', '4', 132, 'Jh bEfr;kt+ vyh', 240.00, '2023-04-01', '2024-03-31', 720.00, 0.00, 960.00, 128, 0, 0.00, 960.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(129, '2023-24', '4', 133, 'Jh egewn vgen', 240.00, '2023-04-01', '2024-03-31', 720.00, 0.00, 960.00, 129, 0, 0.00, 960.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(130, '2023-24', '4', 134, 'Jh eks0 tQ+j] eks0 vjln', 94.00, '2023-04-01', '2024-03-31', 752.00, 0.00, 846.00, 130, 0, 0.00, 846.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(131, '2023-24', '4', 135, 'Jh eks0 j\'khn', 720.00, '2023-04-01', '2024-03-31', 1440.00, 0.00, 2160.00, 131, 0, 0.00, 2160.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(132, '2023-24', '4', 136, 'Jherh Q[k: fu\'kk?', 180.00, '2023-04-01', '2024-03-31', 360.00, 0.00, 540.00, 132, 0, 0.00, 540.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(133, '2023-24', '4', 137, 'Jherh vk\'kk nsoh', 94.00, '2023-04-01', '2024-03-31', 282.00, 0.00, 376.00, 133, 0, 0.00, 376.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(134, '2023-24', '4', 138, 'Jh lS?;n lqgSy vgen', 1800.00, '2023-04-01', '2024-03-31', 14400.00, 0.00, 16200.00, 134, 0, 0.00, 16200.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(135, '2023-24', '4', 139, 'ukseku vgen fln~nhdh', 288.00, '2023-04-01', '2024-03-31', 576.00, 0.00, 864.00, 135, 0, 0.00, 864.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(136, '2023-24', '4', 140, 'Jherh dkSf\'kY;k vk;Z', 720.00, '2023-04-01', '2024-03-31', 2160.00, 0.00, 2880.00, 136, 0, 0.00, 2880.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(137, '2023-24', '4', 141, 'Jh eks0 bdcky', 1920.00, '2023-04-01', '2024-03-31', 3840.00, 0.00, 5760.00, 137, 0, 0.00, 5760.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(138, '2023-24', '4', 142, 'Jh eks0 \'kehe', 300.00, '2023-04-01', '2024-03-31', 900.00, 0.00, 1200.00, 138, 0, 0.00, 1200.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(139, '2023-24', '4', 143, 'Jherh tg#fUu\'kka', 240.00, '2023-04-01', '2024-03-31', 480.00, 0.00, 720.00, 139, 0, 0.00, 720.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(140, '2023-24', '4', 144, 'Jherh ljoj tgka', 600.00, '2023-04-01', '2024-03-31', 3600.00, 0.00, 4200.00, 140, 0, 0.00, 4200.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(141, '2023-24', '4', 145, 'Jherh #dlkuk [kkrwu', 1200.00, '2023-04-01', '2024-03-31', 6000.00, 0.00, 7200.00, 141, 0, 0.00, 7200.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(142, '2023-24', '4', 146, 'Jherh uktehu ckuks', 480.00, '2023-04-01', '2024-03-31', 1440.00, 0.00, 1920.00, 142, 0, 0.00, 1920.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(143, '2023-24', '4', 147, ':ch', 180.00, '2023-04-01', '2024-03-31', 180.00, 0.00, 360.00, 143, 0, 0.00, 360.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(144, '2023-24', '4', 148, 'lqcqgh', 240.00, '2023-04-01', '2024-03-31', 240.00, 0.00, 480.00, 144, 0, 0.00, 480.00, 0.00, '2023-10-23 09:54:43', '2023-10-23 09:54:43'),
(145, '2021-22', '3', 77, 'Jh [kkykyh', 144.00, '2021-04-01', '2022-03-31', 144.00, 0.00, 288.00, 145, 0, 0.00, 288.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(146, '2021-22', '3', 78, 'Jh gqlSu vyh', 144.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 144.00, 146, 0, 0.00, 144.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(147, '2021-22', '3', 79, 'Jh futkeqbnhu] bLykeqbnhu] ,tkeqbnhu \'kel~qbnhu] de:n~nhu', 144.00, '2021-04-01', '2022-03-31', 144.00, 0.00, 288.00, 147, 0, 0.00, 288.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(148, '2021-22', '3', 80, 'eks0 lkfcj', 288.00, '2021-04-01', '2022-03-31', 576.00, 0.00, 864.00, 148, 0, 0.00, 864.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(149, '2021-22', '3', 81, 'Jh jkeopu', 144.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 144.00, 149, 0, 0.00, 144.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(150, '2021-22', '3', 82, 'Jh eq\'krkd', 94.00, '2021-04-01', '2022-03-31', 470.00, 0.00, 564.00, 150, 0, 0.00, 564.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(151, '2021-22', '3', 83, 'Jh eqbumn~nhu', 144.00, '2021-04-01', '2022-03-31', 1064.00, 0.00, 1208.00, 151, 0, 0.00, 1208.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(152, '2021-22', '3', 84, 'Jh vgen gqlSu', 108.00, '2021-04-01', '2022-03-31', 1923.00, 0.00, 2031.00, 152, 0, 0.00, 2031.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(153, '2021-22', '3', 85, 'Jh easgnh glu', 144.00, '2021-04-01', '2022-03-31', 1224.00, 0.00, 1368.00, 153, 0, 0.00, 1368.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(154, '2021-22', '3', 86, 'Jh uud?', 144.00, '2021-04-01', '2022-03-31', 432.00, 0.00, 576.00, 154, 0, 0.00, 576.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(155, '2021-22', '3', 87, 'Jh cgjSph', 94.00, '2021-04-01', '2022-03-31', 282.00, 0.00, 376.00, 155, 0, 0.00, 376.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(156, '2021-22', '3', 88, 'Jh ?kwjs', 144.00, '2021-04-01', '2022-03-31', 864.00, 0.00, 1008.00, 156, 0, 0.00, 1008.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(157, '2021-22', '3', 89, 'eks0 guhQ', 864.00, '2021-04-01', '2022-03-31', 12984.00, 0.00, 13848.00, 157, 0, 0.00, 13848.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(158, '2021-22', '3', 90, 'Jh eks0 ulhe', 144.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 144.00, 158, 0, 0.00, 144.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(159, '2021-22', '3', 91, 'Jh t+Qj vgen', 432.00, '2021-04-01', '2022-03-31', 5692.00, 0.00, 6124.00, 159, 0, 0.00, 6124.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(160, '2021-22', '3', 92, 'Jh y{eh ujk;u lksudj', 576.00, '2021-04-01', '2022-03-31', 0.00, 0.00, 576.00, 160, 0, 0.00, 576.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(161, '2021-22', '3', 93, 'Jh eks0 fln~nhd', 360.00, '2021-04-01', '2022-03-31', 360.00, 0.00, 720.00, 161, 0, 0.00, 720.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(162, '2021-22', '3', 94, 'Jh f\'koizlkn', 216.00, '2021-04-01', '2022-03-31', 3346.00, 0.00, 3562.00, 162, 0, 0.00, 3562.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(163, '2021-22', '3', 95, 'Jh pkS0eks0 mleku', 576.00, '2021-04-01', '2022-03-31', 1728.00, 0.00, 2304.00, 163, 0, 0.00, 2304.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(164, '2021-22', '3', 96, 'Jh \'kkgeksgEen', 144.00, '2021-04-01', '2022-03-31', 432.00, 0.00, 576.00, 164, 0, 0.00, 576.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(165, '2021-22', '3', 97, 'Jh ykyth jkBkSj', 576.00, '2021-04-01', '2022-03-31', 576.00, 0.00, 1152.00, 165, 0, 0.00, 1152.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(166, '2021-22', '3', 98, 'Jh [kyhy vgen', 144.00, '2021-04-01', '2022-03-31', 144.00, 0.00, 288.00, 166, 0, 0.00, 288.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(167, '2021-22', '3', 99, 'Jh lR;ujk;.k', 216.00, '2021-04-01', '2022-03-31', 1836.00, 0.00, 2052.00, 167, 0, 0.00, 2052.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:55:10'),
(168, '2021-22', '3', 100, 'Jh jkew', 94.00, '2021-04-01', '2022-03-31', 94.00, 0.00, 188.00, 168, 1, 188.00, 0.00, 0.00, '2023-10-23 09:55:10', '2023-10-23 09:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `shoprent_fin_year`
--

CREATE TABLE `shoprent_fin_year` (
  `id` int(100) NOT NULL,
  `fin_year_id` int(100) NOT NULL,
  `fin_year` varchar(100) NOT NULL,
  `is_delete` int(100) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shoprent_payment`
--

CREATE TABLE `shoprent_payment` (
  `id` int(11) NOT NULL,
  `fin_year` varchar(50) NOT NULL,
  `ward_no` int(11) NOT NULL,
  `crn` int(11) NOT NULL,
  `total_tax` double(10,2) NOT NULL,
  `paid_amount` double(10,2) NOT NULL,
  `arrear` double(10,2) NOT NULL,
  `advance` double(10,2) NOT NULL,
  `payment_id` varchar(244) CHARACTER SET utf8mb4 NOT NULL,
  `billno` int(11) NOT NULL,
  `dated` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shoprent_payment`
--

INSERT INTO `shoprent_payment` (`id`, `fin_year`, `ward_no`, `crn`, `total_tax`, `paid_amount`, `arrear`, `advance`, `payment_id`, `billno`, `dated`, `created_at`) VALUES
(1, '2021-22', 4, 101, 676.00, 676.00, 0.00, 0.00, 'SHOPRENT-7982832', 1, '2023-10-23', '2023-10-23 09:49:32'),
(2, '2021-22', 4, 148, 480.00, 480.00, 0.00, 0.00, 'SHOPRENT-2269237', 48, '2023-10-23', '2023-10-23 09:49:48'),
(3, '2021-22', 4, 147, 360.00, 360.00, 0.00, 0.00, 'SHOPRENT-4329346', 47, '2023-10-23', '2023-10-23 09:50:03'),
(4, '2021-22', 3, 100, 188.00, 188.00, 0.00, 0.00, 'SHOPRENT-9465017', 168, '2023-10-23', '2023-10-23 09:56:08');

-- --------------------------------------------------------

--
-- Table structure for table `shoprent_registrations`
--

CREATE TABLE `shoprent_registrations` (
  `id` int(100) NOT NULL,
  `fin_year` varchar(100) NOT NULL,
  `ward_no` int(100) NOT NULL,
  `crn` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `rent` double(10,2) NOT NULL,
  `opening_arrear` double(10,2) NOT NULL,
  `opening_advance` double(10,2) NOT NULL,
  `status` int(100) NOT NULL DEFAULT 1,
  `unique_id` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `aadhaar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_delete` int(111) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shoprent_registrations`
--

INSERT INTO `shoprent_registrations` (`id`, `fin_year`, `ward_no`, `crn`, `name`, `father_name`, `address`, `rent`, `opening_arrear`, `opening_advance`, `status`, `unique_id`, `mobile`, `aadhaar`, `email`, `is_delete`, `created_at`, `updated_at`) VALUES
(2, '2021-22', 1, 1, 'Jh ykycgknqj', 'Jh >x#', 'nks/kV', 108.00, 0.00, 0.00, 1, 'NPDGT-000001', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '2021-22', 1, 2, 'Jh f=yksdh', 'Jh laxe', 'nks/kV', 94.00, 0.00, 0.00, 1, 'NPDGT-000002', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '2021-22', 1, 3, 'Jh jru', 'Jh HkXxw', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000003', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '2021-22', 1, 4, 'Jh ea\'kkjke', 'Jh tks[ku', 'nks/kV', 94.00, 182.00, 0.00, 1, 'NPDGT-000004', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '2021-22', 1, 5, 'Jh f?kjkZ?', 'Jh HkXxw', 'nks/kV', 94.00, 1266.00, 0.00, 1, 'NPDGT-000005', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '2021-22', 1, 6, 'Jh tx#i', 'Jh f?kjkZ?', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000006', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '2021-22', 1, 7, 'Jh ?snhyky', 'Jh jkexqyke', 'nks/kV', 94.00, 1331.00, 0.00, 1, 'NPDGT-000007', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '2021-22', 1, 8, 'Jh tqEeu [kk?', 'Jh gler vyh', 'nks/kV', 144.00, 0.00, 0.00, 1, 'NPDGT-000008', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '2021-22', 1, 9, 'eks0 vuhl [kka', 'Jh tqEeu [kk?', 'nks/kV', 94.00, 0.00, 0.00, 1, 'NPDGT-000009', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '2021-22', 1, 10, 'eks0 \'kehe', 'Jh vthe [kk?', 'nks/kV', 94.00, 798.00, 0.00, 1, 'NPDGT-000010', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '2021-22', 1, 11, 'Jh fnus\'k dqekj] dYyw] jkds\'k dqekj] jkeQsj] /kesZUnz', 'Lo0 eqUus', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000011', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '2021-22', 1, 12, 'Jh l?khnhu', 'Jh cq/kbZ', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000012', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '2021-22', 1, 13, 'Jh I;kjs', 'Jh cgjSph', 'nks/kV', 94.00, 1669.00, 0.00, 1, 'NPDGT-000013', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '2021-22', 1, 14, 'Jh tqXxhyky', 'Jh xq:cD\'k', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000014', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '2021-22', 1, 15, 'Jh enuyky', 'Jh xq#cD\'k', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000015', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '2021-22', 1, 16, 'Jh uxslj', 'Jh eaxjs', 'nks/kV', 115.00, 0.00, 0.00, 1, 'NPDGT-000016', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '2021-22', 1, 17, 'Jherh f\'kodqekjh', 'Jh lrxq# izlkn', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000017', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '2021-22', 1, 18, 'Jh \'k=ksgu', 'Jh nqD[kw', 'nks/kV', 94.00, 470.00, 0.00, 1, 'NPDGT-000018', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '2021-22', 1, 19, 'Jh jkecD\'k', 'Jh nqD[kw', 'nks/kV', 94.00, 470.00, 0.00, 1, 'NPDGT-000019', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '2021-22', 1, 20, 'Jh jke fd\'kksj', 'Jh jkePkUnj', 'nks/kV', 94.00, 876.00, 0.00, 1, 'NPDGT-000020', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '2021-22', 1, 21, 'Jh fcjtw', 'Jh f?kjkZ?', 'nks/kV', 94.00, 1669.00, 0.00, 1, 'NPDGT-000021', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '2021-22', 1, 22, 'Jh jkeleq>', 'Jh yYyk', 'nks/kV', 94.00, 642.00, 0.00, 1, 'NPDGT-000022', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '2021-22', 1, 23, 'Jh jkey[ku', 'Jh tx#i', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000023', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '2021-22', 1, 24, 'Jh ?ku\';ke', 'Jh xjhcs', 'nks/kV', 94.00, 0.00, 0.00, 1, 'NPDGT-000024', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '2021-22', 1, 25, 'Jh lkseu', 'Jh ekrknhu', 'nks/kV', 115.00, 230.00, 0.00, 1, 'NPDGT-000025', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '2021-22', 1, 26, 'Jh igkM+h', 'Jh ekrknhu', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000026', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '2021-22', 1, 27, 'Jh f\'kojke', 'Jh iky', 'nks/kV', 144.00, 288.00, 0.00, 1, 'NPDGT-000027', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '2021-22', 1, 28, 'Jh eksrhyky', 'Jh lksgcrh', 'nks/kV', 144.00, 720.00, 0.00, 1, 'NPDGT-000028', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '2021-22', 1, 29, 'Jh f=yksdh', 'Jh Naxksys', 'nks/kV', 144.00, 432.00, 0.00, 1, 'NPDGT-000029', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '2021-22', 1, 30, 'Jh ekrknhu', 'Jh Naxksys', 'nks/kV', 94.00, 188.00, 0.00, 1, 'NPDGT-000030', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '2021-22', 1, 31, 'Jh t;dqekjh', 'Jh NksVw', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000031', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '2021-22', 1, 32, 'Jh xjhcs', 'Jh jkepju', 'nks/kV', 94.00, 0.00, 0.00, 1, 'NPDGT-000032', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '2021-22', 1, 33, 'Jh pqUuh yky] jke dqekj] dkS\'ky izlkn] fouksn dqekj] lquhy dqekj', 'Lo0 ekssgu yky', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000033', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '2021-22', 1, 34, 'Jh txnh\'k', 'Jh jkevpy', 'nks/kV', 94.00, 0.00, 0.00, 1, 'NPDGT-000034', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '2021-22', 1, 35, 'Jh jke ft;kou', 'Jh feJhyky', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000035', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '2021-22', 1, 36, 'Jh bUnzthr', 'Jh Qdhjs', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000036', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '2021-22', 1, 37, 'Jh dk\'khjke', 'Jh eqjyhnhu', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000037', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '2021-22', 1, 38, 'Jh jkefd\'kksj', 'Jh jke vo/k', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000038', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '2021-22', 1, 39, 'Jh euhjke', 'Jh jkevo/k', 'nks/kV', 108.00, 108.00, 0.00, 1, 'NPDGT-000039', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '2021-22', 2, 40, 'Jh dsrkj', 'Jh euhjke', 'nks/kV', 108.00, 324.00, 0.00, 1, 'NPDGT-000040', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '2021-22', 2, 41, 'Jh jke leq>', 'Jh lkfydjke', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000041', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '2021-22', 2, 42, 'Jh txthou', 'Jh ?kx#', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000042', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '2021-22', 2, 43, 'Jh iquoklh', 'Jh ?kx#', 'nks/kV', 94.00, 798.00, 0.00, 1, 'NPDGT-000043', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '2021-22', 2, 44, 'Jh txjke', 'Jh ds\'ko', 'nks/kV', 94.00, 0.00, 0.00, 1, 'NPDGT-000044', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '2021-22', 2, 45, 'dykorh', 'Jh jkecju', 'nks/kV', 115.00, 978.00, 0.00, 1, 'NPDGT-000045', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '2021-22', 2, 46, 'Jherh pUnzdyk', 'feghyky', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000046', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, '2021-22', 2, 47, 'Jh ijes\'oj', '?ks:', 'nks/kV', 94.00, 498.00, 0.00, 1, 'NPDGT-000047', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, '2021-22', 2, 48, 'Jh jkefd\'kksj', 'Jh jkekuUn', 'nks/kV', 94.00, 769.00, 0.00, 1, 'NPDGT-000048', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, '2021-22', 2, 49, 'Jh euksgj', 'Jh uks[kbZ', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000049', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, '2021-22', 2, 50, 'Jh dfiynso ] guqeku', 'Jh jkegj[k', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000050', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, '2021-22', 2, 51, 'Jh cuokjh yky', 'Jh txnUr', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000051', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, '2021-22', 2, 52, 'Jh pEikyky', 'Jh jkey[ku', 'nks/kV', 94.00, 188.00, 0.00, 1, 'NPDGT-000052', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, '2021-22', 2, 53, 'Jh jkeleq>', 'Jh lqdbZ', 'nks/kV', 94.00, 0.00, 0.00, 1, 'NPDGT-000053', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, '2021-22', 2, 54, 'Jh cuokjh', 'Jh txnUr', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000054', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, '2021-22', 2, 55, 'Jh feV~Bw', 'Jh ckcknhu', 'nks/kV', 94.00, 470.00, 0.00, 1, 'NPDGT-000055', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, '2021-22', 2, 56, 'Jh xjhcsyky', 'Jh jke/khjt', 'nks/kV', 94.00, 564.00, 0.00, 1, 'NPDGT-000056', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, '2021-22', 2, 57, 'Jh eqUusyky', 'Jh csdk:', 'nks/kV', 94.00, 800.00, 0.00, 1, 'NPDGT-000057', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, '2021-22', 2, 58, 'Jh jkenkl', 'Jh jkekuUn', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000058', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, '2021-22', 2, 59, 'Jh nq[kjke', 'Jh txnUr', 'nks/kV', 94.00, 0.00, 0.00, 1, 'NPDGT-000059', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, '2021-22', 2, 60, 'Jh cgjSph', 'Jh tx#i', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000060', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, '2021-22', 2, 61, 'Jh lgnso', 'Jh txslj', 'nks/kV', 94.00, 94.00, 0.00, 1, 'NPDGT-000061', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, '2021-22', 2, 62, 'Jh jkelwjr', 'Jh ca\'khyky', 'nks/kV', 94.00, 1266.00, 0.00, 1, 'NPDGT-000062', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, '2021-22', 2, 63, 'Jh dkEkrk', 'Jh jkexfr', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000063', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, '2021-22', 2, 64, 'Jh gkSflyk izlkn', 'Jh yky cgknqj', 'nks/kV', 94.00, 0.00, 0.00, 1, 'NPDGT-000064', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, '2021-22', 2, 65, 'Jh eSdwyky', 'Jh ?kx#', 'nks/kV', 144.00, 720.00, 0.00, 1, 'NPDGT-000065', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '2021-22', 2, 66, 'Jh larks\"k dqekj', 'Jh jkenqykjs', 'nks/kV', 101.00, 1046.00, 0.00, 1, 'NPDGT-000066', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, '2021-22', 2, 67, 'Jh jkelqUnj', 'Jh fo\'ks\"kj', 'nks/kV', 216.00, 432.00, 0.00, 1, 'NPDGT-000067', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, '2021-22', 2, 68, 'Jh jkey[ku', 'Jh feJhyky', 'nks/kV', 108.00, 0.00, 0.00, 1, 'NPDGT-000068', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, '2021-22', 2, 69, 'Jh csdk#', 'cybZ', 'nks/kV', 94.00, 376.00, 0.00, 1, 'NPDGT-000069', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, '2021-22', 2, 70, 'Jh lUrw', 'Jh feV~Bw', 'nks/kV', 94.00, 188.00, 0.00, 1, 'NPDGT-000070', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '2021-22', 2, 71, 'Jh txnh\'k', 'Jh jkeleq>', 'nks/kV', 144.00, 144.00, 0.00, 1, 'NPDGT-000071', '8576945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, '2021-22', 2, 72, 'Jh jkevo/k', 'Jh f\'koiyVu', 'nks/kV', 94.00, 270.00, 0.00, 1, 'NPDGT-000072', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, '2021-22', 2, 73, 'Jh xtk/kj', 'Jh lksebZ', 'nks/kV', 115.00, 115.00, 0.00, 1, 'NPDGT-000073', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '2021-22', 2, 74, 'Jh f\'kojkt', 'Jh lgrw', 'nks/kV', 94.00, 876.00, 0.00, 1, 'NPDGT-000074', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '2021-22', 2, 75, 'Jh jkenqykjs', 'Jh jkes\'oj izlkn', 'nks/kV', 173.00, 1126.00, 0.00, 1, 'NPDGT-000075', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '2021-22', 2, 76, 'eks0 jQh mQZ eqUuk', 'Jh bczkfge', 'nks/kV', 115.00, 0.00, 0.00, 1, 'NPDGT-000076', '7786945690', '1.11E+11', 'test@gmail.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '2022-23', 3, 77, 'Jh [kkykyh', 'Jh vkfcn', 'nks/kV', 144.00, 288.00, 0.00, 1, 'NPDGT-000077', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '2022-23', 3, 78, 'Jh gqlSu vyh', 'Jh ealwj vyh', 'nks/kV', 144.00, 144.00, 0.00, 1, 'NPDGT-000078', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '2022-23', 3, 79, 'Jh futkeqbnhu] bLykeqbnhu] ,tkeqbnhu \'kel~qbnhu] de:n~nhu', 'Naxk', 'nks/kV', 144.00, 288.00, 0.00, 1, 'NPDGT-000079', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '2022-23', 3, 80, 'eks0 lkfcj', 'eks0 vyh', 'nks/kV', 288.00, 864.00, 0.00, 1, 'NPDGT-000080', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '2022-23', 3, 81, 'Jh jkeopu', 'Jh jkeQy', 'nks/kV', 144.00, 144.00, 0.00, 1, 'NPDGT-000081', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '2022-23', 3, 82, 'Jh eq\'krkd', 'Jh rtEeqy gqlSu', 'nks/kV', 94.00, 564.00, 0.00, 1, 'NPDGT-000082', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '2022-23', 3, 83, 'Jh eqbumn~nhu', 'Jh \'kelqn~nhu', 'nks/kV', 144.00, 1208.00, 0.00, 1, 'NPDGT-000083', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '2022-23', 3, 84, 'Jh vgen gqlSu', '0', 'nks/kV', 108.00, 2031.00, 0.00, 1, 'NPDGT-000084', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '2022-23', 3, 85, 'Jh easgnh glu', 'Jh Qjhn vgen', 'nks/kV', 144.00, 1368.00, 0.00, 1, 'NPDGT-000085', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '2022-23', 3, 86, 'Jh uud?', 'Jh HkxkSrh izlkn', 'nks/kV', 144.00, 576.00, 0.00, 1, 'NPDGT-000086', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '2022-23', 3, 87, 'Jh cgjSph', 'Jh HkXxu', 'nks/kV', 94.00, 376.00, 0.00, 1, 'NPDGT-000087', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '2022-23', 3, 88, 'Jh ?kwjs', 'Jh uudw', 'nks/kV', 144.00, 1008.00, 0.00, 1, 'NPDGT-000088', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '2022-23', 3, 89, 'eks0 guhQ', 'Jh ;wlqQ', 'nks/kV', 864.00, 13848.00, 0.00, 1, 'NPDGT-000089', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '2022-23', 3, 90, 'Jh eks0 ulhe', 'Jh vtheqYyk', 'nks/kV', 144.00, 144.00, 0.00, 1, 'NPDGT-000090', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '2022-23', 3, 91, 'Jh t+Qj vgen', 'Jh eks0 jlwy', 'nks/kV', 432.00, 6124.00, 0.00, 1, 'NPDGT-000091', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '2022-23', 3, 92, 'Jh y{eh ujk;u lksudj', 'Jh HkxkSrh izlkn lksudj', 'nks/kV', 576.00, 576.00, 0.00, 1, 'NPDGT-000092', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '2022-23', 3, 93, 'Jh eks0 fln~nhd', 'Jh \'kCchj', 'nks/kV', 360.00, 720.00, 0.00, 1, 'NPDGT-000093', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '2022-23', 3, 94, 'Jh f\'koizlkn', 'Jh jkevo/k', 'nks/kV', 216.00, 3562.00, 0.00, 1, 'NPDGT-000094', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '2022-23', 3, 95, 'Jh pkS0eks0 mleku', 'Jh pkS0eks0 tqcsj', 'nks/kV', 576.00, 2304.00, 0.00, 1, 'NPDGT-000095', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '2022-23', 3, 96, 'Jh \'kkgeksgEen', 'Jh oyh eksgEen', 'nks/kV', 144.00, 576.00, 0.00, 1, 'NPDGT-000096', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '2022-23', 3, 97, 'Jh ykyth jkBkSj', 'Jh bZ\'ojnhu', 'nks/kV', 576.00, 1152.00, 0.00, 1, 'NPDGT-000097', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '2022-23', 3, 98, 'Jh [kyhy vgen', 'Jh nhu eksgEen', 'nks/kV', 144.00, 288.00, 0.00, 1, 'NPDGT-000098', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, '2022-23', 3, 99, 'Jh lR;ujk;.k', 'Jh yky cgknqj', 'nks/kV', 216.00, 2052.00, 0.00, 1, 'NPDGT-000099', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, '2022-23', 3, 100, 'Jh jkew', 'Jh Nsnh yky', 'nks/kV', 94.00, 0.00, 0.00, 1, 'NPDGT-000100', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, '2024-25', 4, 101, 'Jh jke feyu', 'Jh HkXxu', 'nks/kV', 144.00, 288.00, 0.00, 1, 'NPDGT-000101', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '2024-25', 4, 102, 'Jh eSdwyky', 'Jh n\'kZu yky', 'nks/kV', 180.00, 720.00, 0.00, 1, 'NPDGT-000102', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, '2024-25', 4, 103, 'Jh tSljkt', 'Jh vgoju', 'nks/kV', 94.00, 564.00, 0.00, 1, 'NPDGT-000103', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, '2024-25', 4, 104, 'Jh fxfjtk \'kadj', 'Jh jke ft;kou', 'nks/kV', 94.00, 376.00, 0.00, 1, 'NPDGT-000104', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, '2024-25', 4, 105, 'Jh Hkwjsyky jkey[ku', 'Jh ekrkizlkn', 'nks/kV', 130.00, 1650.00, 0.00, 1, 'NPDGT-000105', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, '2024-25', 4, 106, 'Jh txnh\'k izlkn', 'Jh eqUuh yky', 'nks/kV', 108.00, 540.00, 0.00, 1, 'NPDGT-000106', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, '2024-25', 4, 107, 'Jh dYyw', 'Jh lgnso', 'nks/kV', 216.00, 1080.00, 0.00, 1, 'NPDGT-000107', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, '2024-25', 4, 108, 'Jh jkedsoy', 'Jh ikjl', 'nks/kV', 94.00, 564.00, 0.00, 1, 'NPDGT-000108', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, '2024-25', 4, 109, 'Jh lq[khjke', 'Jh lqdbZ', 'nks/kV', 94.00, 376.00, 0.00, 1, 'NPDGT-000109', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '2024-25', 4, 110, 'Jh ckdsayky', 'Jh nsodyh', 'nks/kV', 144.00, 576.00, 0.00, 1, 'NPDGT-000110', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, '2024-25', 4, 111, 'Jh fot; dqekj', 'Jh tkudh izlkn', 'nks/kV', 108.00, 2172.00, 0.00, 1, 'NPDGT-000111', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, '2024-25', 4, 112, 'Jherh fueZyk nsoh', 'Jh f\'koujk;.k', 'nks/kV', 216.00, 864.00, 0.00, 1, 'NPDGT-000112', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, '2024-25', 4, 113, 'Jh vf[kys\'k dqekj', 'Jh gjh vkse', 'nks/kV', 216.00, 1080.00, 0.00, 1, 'NPDGT-000113', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, '2024-25', 4, 114, 'Jh vjfoUn dqekj', 'Jh lqHkk\"kpUnz', 'nks/kV', 216.00, 1080.00, 0.00, 1, 'NPDGT-000114', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, '2024-25', 4, 115, 'Jh jkelwjr', 'Jh xq# izlkn', 'nks/kV', 288.00, 1152.00, 0.00, 1, 'NPDGT-000115', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, '2024-25', 4, 116, 'Jherh fcUns\'ojh nsoh', 'jkevo/k ;kno', 'nks/kV', 1500.00, 4500.00, 0.00, 1, 'NPDGT-000116', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, '2024-25', 4, 117, 'Jh ,gjkj vgen [kk?', 'Jh gkth tjkZj [kka?', 'nks/kV', 288.00, 2016.00, 0.00, 1, 'NPDGT-000117', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, '2024-25', 4, 118, 'Jh f\'koizlkn', 'Jh gfj\'pUnz', 'nks/kV', 216.00, 1080.00, 0.00, 1, 'NPDGT-000118', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, '2024-25', 4, 119, 'Jherh jktdqekjh', 'Jh fxfjtk \'kadj', 'nks/kV', 216.00, 4494.00, 0.00, 1, 'NPDGT-000119', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, '2024-25', 4, 120, 'Jherh \'kCcks', 'Jh vdhy', 'nks/kV', 144.00, 2256.00, 0.00, 1, 'NPDGT-000120', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, '2024-25', 4, 121, 'Jh fiUVw', 'Jh gfj\'pUnz', 'nks/kV', 94.00, 1451.00, 0.00, 1, 'NPDGT-000121', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, '2024-25', 4, 122, 'Jh eks0 guhQ', 'Jh yqdeku', 'nks/kV', 94.00, 1821.00, 0.00, 1, 'NPDGT-000122', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, '2024-25', 4, 123, 'Jherh vthtqufu\'kk?', 'Jh ,[kykd jlwy', 'nks/kV', 288.00, 1440.00, 0.00, 1, 'NPDGT-000123', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, '2024-25', 4, 124, 'Jh \'kCcw', 'Jh lqHkk\"kpUnz', 'nks/kV', 115.00, 2395.00, 0.00, 1, 'NPDGT-000124', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, '2024-25', 4, 125, 'Jh eks0 guhQ', 'Jh vCnqy jTtkd', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000125', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, '2024-25', 4, 126, 'Jh eks0 ;kdwc] eks0 guhQ', 'Jh xqyke xkSl', 'nks/kV', 94.00, 282.00, 0.00, 1, 'NPDGT-000126', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, '2024-25', 4, 127, 'Jh tSuqmn~nhu', 'Jh eqbumn~nhu', 'nks/kV', 144.00, 432.00, 0.00, 1, 'NPDGT-000127', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, '2024-25', 4, 128, 'Jherh [krhtk', 'Jh vCckl', 'nks/kV', 288.00, 4752.00, 0.00, 1, 'NPDGT-000128', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, '2024-25', 4, 129, 'Jh dkyh izlkn', 'Jh xq#pju', 'nks/kV', 94.00, 470.00, 0.00, 1, 'NPDGT-000129', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, '2024-25', 4, 130, 'Jh lbZn vgen', 'Jh glu vyh', 'nks/kV', 144.00, 1296.00, 0.00, 1, 'NPDGT-000130', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, '2024-25', 4, 131, 'Jh eks0 jQh ] eks0 ;klhu] Jherh fdlerh ckuks ]', 'eks0 jQh', 'nks/kV', 240.00, 960.00, 0.00, 1, 'NPDGT-000131', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, '2024-25', 4, 132, 'Jh bEfr;kt+ vyh', 'Jh mej njkt', 'nks/kV', 240.00, 960.00, 0.00, 1, 'NPDGT-000132', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, '2024-25', 4, 133, 'Jh egewn vgen', 'Jh Qk:[k vgen', 'nks/kV', 240.00, 960.00, 0.00, 1, 'NPDGT-000133', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, '2024-25', 4, 134, 'Jh eks0 tQ+j] eks0 vjln', 'Jh eks0 dej', 'nks/kV', 94.00, 846.00, 0.00, 1, 'NPDGT-000134', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, '2024-25', 4, 135, 'Jh eks0 j\'khn', 'Jh gth HkksyscD\'k', 'nks/kV', 720.00, 2160.00, 0.00, 1, 'NPDGT-000135', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, '2024-25', 4, 136, 'Jherh Q[k: fu\'kk?', 'Jh jchmYyk', 'nks/kV', 180.00, 540.00, 0.00, 1, 'NPDGT-000136', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, '2024-25', 4, 137, 'Jherh vk\'kk nsoh', 'Lo0 Jh yYyw izlkn', 'nks/kV', 94.00, 376.00, 0.00, 1, 'NPDGT-000137', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, '2024-25', 4, 138, 'Jh lS?;n lqgSy vgen', 'Jh bljkmy glu', 'nks/kV', 1800.00, 16200.00, 0.00, 1, 'NPDGT-000138', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, '2024-25', 4, 139, 'ukseku vgen fln~nhdh', 'Lo0 eks0 vlye fln~nhdh', 'nks/kV', 288.00, 864.00, 0.00, 1, 'NPDGT-000139', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, '2024-25', 4, 140, 'Jherh dkSf\'kY;k vk;Z', 'Jh osnjru izdk\'k vk;Z', 'nks/kV', 720.00, 2880.00, 0.00, 1, 'NPDGT-000140', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, '2024-25', 4, 141, 'Jh eks0 bdcky', 'eks0 blgkd', 'nks/kV', 1920.00, 5760.00, 0.00, 1, 'NPDGT-000141', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, '2024-25', 4, 142, 'Jh eks0 \'kehe', 'Jh eks0 mej', 'nks/kV', 300.00, 1200.00, 0.00, 1, 'NPDGT-000142', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, '2024-25', 4, 143, 'Jherh tg#fUu\'kka', 'eks0 dyhe', 'nks/kV', 240.00, 720.00, 0.00, 1, 'NPDGT-000143', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, '2024-25', 4, 144, 'Jherh ljoj tgka', 'eks0 egewn', 'nks/kV', 600.00, 4200.00, 0.00, 1, 'NPDGT-000144', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, '2024-25', 4, 145, 'Jherh #dlkuk [kkrwu', 'eq[rkj [kka', 'nks/kV', 1200.00, 7200.00, 0.00, 1, 'NPDGT-000145', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, '2024-25', 4, 146, 'Jherh uktehu ckuks', 'LoZ0 vkQkd vgen', 'nks/kV', 480.00, 1920.00, 0.00, 1, 'NPDGT-000146', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, '2024-25', 4, 147, ':ch', 'eksgEen bLekbZy', 'nks/kV', 180.00, 360.00, 0.00, 1, 'NPDGT-000147', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, '2024-25', 4, 148, 'lqcqgh', 'bejku vgen', 'nks/kV', 240.00, 480.00, 0.00, 1, 'NPDGT-000148', '7786945690', '1.11E+11', 'test@gmail.com', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `shoprent_ward`
--

CREATE TABLE `shoprent_ward` (
  `id` int(11) NOT NULL,
  `ward_name` varchar(50) NOT NULL,
  `ward_no` int(11) NOT NULL,
  `is_delete` varchar(234) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shoprent_ward`
--

INSERT INTO `shoprent_ward` (`id`, `ward_name`, `ward_no`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'दोघट वार्ड नंबर-1', 1, '0', '2023-09-29 14:04:34', '2023-09-29 08:50:02'),
(2, 'दोघट वार्ड नंबर-2', 2, '0', '2023-09-29 17:37:53', '2023-09-29 12:07:53'),
(3, 'दोघट वार्ड नंबर-3', 3, '0', '2023-09-29 17:37:57', '2023-09-29 12:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `unique_id`
--

CREATE TABLE `unique_id` (
  `id` int(100) NOT NULL,
  `crn` int(100) NOT NULL,
  `uniques` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unique_id`
--

INSERT INTO `unique_id` (`id`, `crn`, `uniques`, `created_at`) VALUES
(1, 1, 'NPDGT-000001', '2023-10-19 16:53:10'),
(2, 2, 'NPDGT-000002', '2023-10-19 16:59:54'),
(3, 3, 'NPDGT-000003', '2023-10-19 16:59:55'),
(4, 4, 'NPDGT-000004', '2023-10-19 16:59:55'),
(5, 5, 'NPDGT-000005', '2023-10-19 16:59:56'),
(6, 6, 'NPDGT-000006', '2023-10-19 16:59:56'),
(7, 7, 'NPDGT-000007', '2023-10-19 16:59:57'),
(8, 8, 'NPDGT-000008', '2023-10-19 16:59:57'),
(9, 9, 'NPDGT-000009', '2023-10-19 16:59:58'),
(10, 10, 'NPDGT-000010', '2023-10-19 16:59:59'),
(11, 11, 'NPDGT-000011', '2023-10-19 16:59:59'),
(12, 12, 'NPDGT-000012', '2023-10-19 17:00:00'),
(13, 13, 'NPDGT-000013', '2023-10-19 17:01:11'),
(14, 14, 'NPDGT-000014', '2023-10-19 17:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `id` int(11) NOT NULL,
  `ward_name` varchar(50) NOT NULL,
  `ward_no` varchar(20) NOT NULL,
  `is_delete` varchar(244) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`id`, `ward_name`, `ward_no`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'दोघट वार्ड नंबर-1', '1', '0', '2023-09-28 17:12:24', '2023-09-29 16:04:08'),
(2, 'दोघट वार्ड नंबर-2', '2', '0', '2023-09-28 17:12:30', '2023-09-28 17:12:30'),
(3, 'दोघट वार्ड नंबर-3', '3', '0', '2023-09-28 17:12:44', '2023-09-28 17:12:44'),
(4, 'दोघट वार्ड नंबर-4', '4', '0', '2023-09-28 17:12:49', '2023-09-28 17:12:49'),
(5, 'दोघट वार्ड नंबर-5', '5', '0', '2023-09-28 17:12:54', '2023-09-28 17:12:54'),
(6, 'दोघट वार्ड नंबर-6', '6', '0', '2023-09-28 17:13:00', '2023-09-29 10:44:52'),
(7, 'दोघट वार्ड नंबर-7', '7', '0', '2023-09-28 17:13:15', '2023-10-05 12:59:33'),
(9, 'दोघट वार्ड नंबर-8', '8', '1', '2023-10-05 13:03:19', '2023-10-05 13:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `watertax_demand`
--

CREATE TABLE `watertax_demand` (
  `id` int(100) NOT NULL,
  `fin_year` varchar(100) NOT NULL,
  `ward_no` int(100) NOT NULL,
  `crn` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `arv_water` double(10,2) NOT NULL,
  `opening_arrear_water` double(10,2) NOT NULL,
  `opening_advance_water` double(10,2) NOT NULL,
  `total_tax_water` double(10,2) NOT NULL,
  `curr_arrear_water` double(10,2) NOT NULL,
  `curr_advance_water` double(10,2) NOT NULL,
  `from_date` varchar(200) NOT NULL,
  `to_date` varchar(200) NOT NULL,
  `billno` int(100) NOT NULL,
  `status` int(100) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watertax_demand`
--

INSERT INTO `watertax_demand` (`id`, `fin_year`, `ward_no`, `crn`, `name`, `arv_water`, `opening_arrear_water`, `opening_advance_water`, `total_tax_water`, `curr_arrear_water`, `curr_advance_water`, `from_date`, `to_date`, `billno`, `status`, `created_at`, `updated_at`) VALUES
(1, '2021-22', 4, 101, 'Jh jke feyu', 144.00, 964.00, 0.00, 1108.00, 0.00, 0.00, '2021-04-01', '2022-03-31', 1, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(2, '2021-22', 4, 102, 'Jh jke feyu', 180.00, 720.00, 0.00, 900.00, 900.00, 0.00, '2021-04-01', '2022-03-31', 2, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(3, '2021-22', 4, 103, 'Jh eSdwyky', 94.00, 564.00, 0.00, 658.00, 658.00, 0.00, '2021-04-01', '2022-03-31', 3, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(4, '2021-22', 4, 104, 'Jh eSdwyky', 94.00, 376.00, 0.00, 470.00, 470.00, 0.00, '2021-04-01', '2022-03-31', 4, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(5, '2021-22', 4, 105, 'Jh tSljkt', 130.00, 1650.00, 0.00, 1780.00, 1780.00, 0.00, '2021-04-01', '2022-03-31', 5, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(6, '2021-22', 4, 106, 'Jh tSljkt', 108.00, 540.00, 0.00, 648.00, 648.00, 0.00, '2021-04-01', '2022-03-31', 6, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(7, '2021-22', 4, 107, 'Jh fxfjtk \'kadj', 216.00, 1080.00, 0.00, 1296.00, 1296.00, 0.00, '2021-04-01', '2022-03-31', 7, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(8, '2021-22', 4, 108, 'Jh fxfjtk \'kadj', 94.00, 564.00, 0.00, 658.00, 658.00, 0.00, '2021-04-01', '2022-03-31', 8, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(9, '2021-22', 4, 109, 'Jh Hkwjsyky jkey[ku', 94.00, 376.00, 0.00, 470.00, 470.00, 0.00, '2021-04-01', '2022-03-31', 9, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(10, '2021-22', 4, 110, 'Jh Hkwjsyky jkey[ku', 144.00, 576.00, 0.00, 720.00, 720.00, 0.00, '2021-04-01', '2022-03-31', 10, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(11, '2021-22', 4, 111, 'Jh txnh\'k izlkn', 108.00, 2172.00, 0.00, 2280.00, 2280.00, 0.00, '2021-04-01', '2022-03-31', 11, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(12, '2021-22', 4, 112, 'Jh txnh\'k izlkn', 216.00, 864.00, 0.00, 1080.00, 1080.00, 0.00, '2021-04-01', '2022-03-31', 12, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(13, '2021-22', 4, 113, 'Jh dYyw', 216.00, 1080.00, 0.00, 1296.00, 1296.00, 0.00, '2021-04-01', '2022-03-31', 13, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(14, '2021-22', 4, 114, 'Jh dYyw', 216.00, 1080.00, 0.00, 1296.00, 1296.00, 0.00, '2021-04-01', '2022-03-31', 14, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(15, '2021-22', 4, 115, 'Jh jkedsoy', 288.00, 1152.00, 0.00, 1440.00, 1440.00, 0.00, '2021-04-01', '2022-03-31', 15, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(16, '2021-22', 4, 116, 'Jh jkedsoy', 1500.00, 4500.00, 0.00, 6000.00, 6000.00, 0.00, '2021-04-01', '2022-03-31', 16, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(17, '2021-22', 4, 117, 'Jh lq[khjke', 288.00, 2016.00, 0.00, 2304.00, 2304.00, 0.00, '2021-04-01', '2022-03-31', 17, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(18, '2021-22', 4, 118, 'Jh lq[khjke', 216.00, 1080.00, 0.00, 1296.00, 1296.00, 0.00, '2021-04-01', '2022-03-31', 18, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(19, '2021-22', 4, 119, 'Jh ckdsayky', 216.00, 4494.00, 0.00, 4710.00, 4710.00, 0.00, '2021-04-01', '2022-03-31', 19, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(20, '2021-22', 4, 120, 'Jh ckdsayky', 144.00, 2256.00, 0.00, 2400.00, 2400.00, 0.00, '2021-04-01', '2022-03-31', 20, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(21, '2021-22', 4, 121, 'Jh fot; dqekj', 94.00, 1451.00, 0.00, 1545.00, 1545.00, 0.00, '2021-04-01', '2022-03-31', 21, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(22, '2021-22', 4, 122, 'Jh fot; dqekj', 94.00, 1821.00, 0.00, 1915.00, 1915.00, 0.00, '2021-04-01', '2022-03-31', 22, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(23, '2021-22', 4, 123, 'Jherh fueZyk nsoh', 288.00, 1440.00, 0.00, 1728.00, 1728.00, 0.00, '2021-04-01', '2022-03-31', 23, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(24, '2021-22', 4, 124, 'Jherh fueZyk nsoh', 115.00, 2395.00, 0.00, 2510.00, 2510.00, 0.00, '2021-04-01', '2022-03-31', 24, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(25, '2021-22', 4, 125, 'Jh vf[kys\'k dqekj', 94.00, 282.00, 0.00, 376.00, 376.00, 0.00, '2021-04-01', '2022-03-31', 25, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(26, '2021-22', 4, 126, 'Jh vf[kys\'k dqekj', 94.00, 282.00, 0.00, 376.00, 376.00, 0.00, '2021-04-01', '2022-03-31', 26, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(27, '2021-22', 4, 127, 'Jh vjfoUn dqekj', 144.00, 432.00, 0.00, 576.00, 576.00, 0.00, '2021-04-01', '2022-03-31', 27, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(28, '2021-22', 4, 128, 'Jh vjfoUn dqekj', 288.00, 4752.00, 0.00, 5040.00, 5040.00, 0.00, '2021-04-01', '2022-03-31', 28, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(29, '2021-22', 4, 129, 'Jh jkelwjr', 94.00, 470.00, 0.00, 564.00, 564.00, 0.00, '2021-04-01', '2022-03-31', 29, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(30, '2021-22', 4, 130, 'Jh jkelwjr', 144.00, 1296.00, 0.00, 1440.00, 1440.00, 0.00, '2021-04-01', '2022-03-31', 30, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(31, '2021-22', 4, 131, 'Jherh fcUns\'ojh nsoh', 240.00, 960.00, 0.00, 1200.00, 1200.00, 0.00, '2021-04-01', '2022-03-31', 31, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(32, '2021-22', 4, 132, 'Jherh fcUns\'ojh nsoh', 240.00, 960.00, 0.00, 1200.00, 1200.00, 0.00, '2021-04-01', '2022-03-31', 32, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(33, '2021-22', 4, 133, 'Jh ,gjkj vgen [kk?', 240.00, 960.00, 0.00, 1200.00, 1200.00, 0.00, '2021-04-01', '2022-03-31', 33, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(34, '2021-22', 4, 134, 'Jh ,gjkj vgen [kk?', 94.00, 846.00, 0.00, 940.00, 940.00, 0.00, '2021-04-01', '2022-03-31', 34, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(35, '2021-22', 4, 135, 'Jh f\'koizlkn', 720.00, 2160.00, 0.00, 2880.00, 2880.00, 0.00, '2021-04-01', '2022-03-31', 35, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(36, '2021-22', 4, 136, 'Jh f\'koizlkn', 180.00, 540.00, 0.00, 720.00, 720.00, 0.00, '2021-04-01', '2022-03-31', 36, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(37, '2021-22', 4, 137, 'Jherh jktdqekjh', 94.00, 376.00, 0.00, 470.00, 470.00, 0.00, '2021-04-01', '2022-03-31', 37, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(38, '2021-22', 4, 138, 'Jherh jktdqekjh', 1800.00, 16200.00, 0.00, 18000.00, 18000.00, 0.00, '2021-04-01', '2022-03-31', 38, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(39, '2021-22', 4, 139, 'Jherh \'kCcks', 288.00, 864.00, 0.00, 1152.00, 1152.00, 0.00, '2021-04-01', '2022-03-31', 39, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(40, '2021-22', 4, 140, 'Jherh \'kCcks', 720.00, 2880.00, 0.00, 3600.00, 3600.00, 0.00, '2021-04-01', '2022-03-31', 40, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(41, '2021-22', 4, 141, 'Jh fiUVw', 1920.00, 5760.00, 0.00, 7680.00, 7680.00, 0.00, '2021-04-01', '2022-03-31', 41, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(42, '2021-22', 4, 142, 'Jh fiUVw', 300.00, 1200.00, 0.00, 1500.00, 1500.00, 0.00, '2021-04-01', '2022-03-31', 42, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(43, '2021-22', 4, 143, 'Jh eks0 guhQ', 240.00, 720.00, 0.00, 960.00, 960.00, 0.00, '2021-04-01', '2022-03-31', 43, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(44, '2021-22', 4, 144, 'Jh eks0 guhQ', 600.00, 4200.00, 0.00, 4800.00, 4800.00, 0.00, '2021-04-01', '2022-03-31', 44, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(45, '2021-22', 4, 145, 'Jherh vthtqufu\'kk?', 1200.00, 7200.00, 0.00, 8400.00, 8400.00, 0.00, '2021-04-01', '2022-03-31', 45, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(46, '2021-22', 4, 146, 'Jherh vthtqufu\'kk?', 480.00, 1920.00, 0.00, 2400.00, 2400.00, 0.00, '2021-04-01', '2022-03-31', 46, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(47, '2021-22', 4, 147, 'Jh \'kCcw', 180.00, 720.00, 0.00, 900.00, 900.00, 0.00, '2021-04-01', '2022-03-31', 47, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44'),
(48, '2021-22', 4, 148, 'Jh \'kCcw', 240.00, 960.00, 0.00, 1200.00, 1200.00, 0.00, '2021-04-01', '2022-03-31', 48, 1, '2023-10-21 16:28:44', '2023-10-21 16:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `watertax_payment`
--

CREATE TABLE `watertax_payment` (
  `id` int(11) NOT NULL,
  `fin_year` varchar(20) NOT NULL,
  `ward_no` int(11) NOT NULL,
  `crn` int(11) NOT NULL,
  `total_tax` double(10,2) NOT NULL,
  `paid_amount` double(10,2) NOT NULL,
  `arrear` double(10,2) NOT NULL,
  `advance` double(10,2) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `billno` int(11) NOT NULL,
  `dated` date NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watertax_payment`
--

INSERT INTO `watertax_payment` (`id`, `fin_year`, `ward_no`, `crn`, `total_tax`, `paid_amount`, `arrear`, `advance`, `payment_id`, `billno`, `dated`, `created_at`) VALUES
(1, '2021-22', 4, 101, 1108.00, 100.00, 1008.00, 0.00, 'WATERTAX-3085491', 1, '2023-10-23', '2023-10-23 12:24:48'),
(2, '2021-22', 4, 101, 1008.00, 1008.00, 0.00, 0.00, 'WATERTAX-9661453', 1, '2023-10-23', '2023-10-23 12:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `water_registrations`
--

CREATE TABLE `water_registrations` (
  `id` int(255) NOT NULL,
  `fin_year` varchar(255) NOT NULL,
  `ward_no` varchar(255) NOT NULL,
  `house_type_id` varchar(255) NOT NULL,
  `house_detail_id` varchar(255) NOT NULL,
  `crn` int(50) NOT NULL,
  `house_number` varchar(255) NOT NULL,
  `demand_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `aadhaar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `arv_water` double(10,2) NOT NULL,
  `opening_arrear_water` double(10,2) NOT NULL,
  `opening_advance_water` double(10,2) NOT NULL,
  `billno` int(255) NOT NULL DEFAULT 0,
  `status` int(255) NOT NULL DEFAULT 1,
  `is_delete` varchar(255) NOT NULL DEFAULT '0',
  `created_at` datetime(4) NOT NULL DEFAULT current_timestamp(4),
  `updated_at` datetime(4) NOT NULL DEFAULT current_timestamp(4),
  `unique_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `water_registrations`
--

INSERT INTO `water_registrations` (`id`, `fin_year`, `ward_no`, `house_type_id`, `house_detail_id`, `crn`, `house_number`, `demand_number`, `name`, `father_name`, `address`, `mobile`, `aadhaar`, `email`, `arv_water`, `opening_arrear_water`, `opening_advance_water`, `billno`, `status`, `is_delete`, `created_at`, `updated_at`, `unique_id`) VALUES
(2, '2021-22', '1', '1', '1', 1, '101', '101', 'Jh ykycgknqj', 'Jh >x#', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 108.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000001'),
(3, '2021-22', '1', '1', '1', 2, '102', '102', 'Jh f=yksdh', 'Jh laxe', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000002'),
(4, '2021-22', '1', '1', '1', 3, '103', '103', 'Jh jru', 'Jh HkXxw', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000003'),
(5, '2021-22', '1', '2', '2', 4, '104', '104', 'Jh ea\'kkjke', 'Jh tks[ku', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 182.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000004'),
(6, '2021-22', '1', '2', '2', 5, '105', '105', 'Jh f?kjkZ?', 'Jh HkXxw', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 1266.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000005'),
(7, '2021-22', '1', '2', '2', 6, '106', '106', 'Jh tx#i', 'Jh f?kjkZ?', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000006'),
(8, '2021-22', '1', '2', '2', 7, '107', '107', 'Jh ?snhyky', 'Jh jkexqyke', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 1331.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000007'),
(9, '2021-22', '1', '2', '2', 8, '108', '108', 'Jh tqEeu [kk?', 'Jh gler vyh', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000008'),
(10, '2021-22', '1', '2', '2', 9, '109', '109', 'eks0 vuhl [kka', 'Jh tqEeu [kk?', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000009'),
(11, '2021-22', '1', '2', '2', 10, '110', '110', 'eks0 \'kehe', 'Jh vthe [kk?', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 798.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000010'),
(12, '2021-22', '1', '2', '2', 11, '111', '111', 'Jh fnus\'k dqekj] dYyw] jkds\'k dqekj] jkeQsj] /kesZUnz', 'Lo0 eqUus', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000011'),
(13, '2021-22', '1', '2', '2', 12, '112', '112', 'Jh l?khnhu', 'Jh cq/kbZ', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000012'),
(14, '2021-22', '1', '2', '2', 13, '113', '113', 'Jh I;kjs', 'Jh cgjSph', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 1669.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000013'),
(15, '2021-22', '1', '2', '2', 14, '114', '114', 'Jh tqXxhyky', 'Jh xq:cD\'k', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000014'),
(16, '2021-22', '1', '1', '1', 15, '115', '115', 'Jh enuyky', 'Jh xq#cD\'k', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000015'),
(17, '2021-22', '1', '1', '1', 16, '116', '116', 'Jh uxslj', 'Jh eaxjs', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 115.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000016'),
(18, '2021-22', '1', '1', '1', 17, '117', '117', 'Jherh f\'kodqekjh', 'Jh lrxq# izlkn', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000017'),
(19, '2021-22', '1', '1', '1', 18, '118', '118', 'Jh \'k=ksgu', 'Jh nqD[kw', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 470.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000018'),
(20, '2021-22', '1', '1', '1', 19, '119', '119', 'Jh jkecD\'k', 'Jh nqD[kw', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 470.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000019'),
(21, '2021-22', '1', '1', '1', 20, '120', '120', 'Jh jke fd\'kksj', 'Jh jkePkUnj', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 876.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000020'),
(22, '2021-22', '1', '1', '1', 21, '121', '121', 'Jh fcjtw', 'Jh f?kjkZ?', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 1669.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000021'),
(23, '2021-22', '1', '1', '1', 22, '122', '122', 'Jh jkeleq>', 'Jh yYyk', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 642.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000022'),
(24, '2021-22', '1', '1', '1', 23, '123', '123', 'Jh jkey[ku', 'Jh tx#i', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000023'),
(25, '2021-22', '1', '1', '1', 24, '124', '124', 'Jh ?ku\';ke', 'Jh xjhcs', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000024'),
(26, '2021-22', '1', '1', '1', 25, '125', '125', 'Jh lkseu', 'Jh ekrknhu', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 115.00, 230.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000025'),
(27, '2021-22', '1', '2', '1', 26, '126', '126', 'Jh igkM+h', 'Jh ekrknhu', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000026'),
(28, '2021-22', '1', '2', '1', 27, '127', '127', 'Jh f\'kojke', 'Jh iky', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 288.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000027'),
(29, '2021-22', '1', '2', '1', 28, '128', '128', 'Jh eksrhyky', 'Jh lksgcrh', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 720.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000028'),
(30, '2021-22', '1', '2', '1', 29, '129', '129', 'Jh f=yksdh', 'Jh Naxksys', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 432.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000029'),
(31, '2021-22', '1', '2', '1', 30, '130', '130', 'Jh ekrknhu', 'Jh Naxksys', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 188.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000030'),
(32, '2021-22', '1', '2', '1', 31, '131', '131', 'Jh t;dqekjh', 'Jh NksVw', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000031'),
(33, '2021-22', '1', '2', '1', 32, '132', '132', 'Jh xjhcs', 'Jh jkepju', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000032'),
(34, '2021-22', '1', '2', '1', 33, '133', '133', 'Jh pqUuh yky] jke dqekj] dkS\'ky izlkn] fouksn dqekj] lquhy dqekj', 'Lo0 ekssgu yky', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000033'),
(35, '2021-22', '1', '2', '1', 34, '134', '134', 'Jh txnh\'k', 'Jh jkevpy', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000034'),
(36, '2021-22', '1', '2', '1', 35, '135', '135', 'Jh jke ft;kou', 'Jh feJhyky', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000035'),
(37, '2021-22', '1', '2', '1', 36, '136', '136', 'Jh bUnzthr', 'Jh Qdhjs', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000036'),
(38, '2021-22', '1', '2', '1', 37, '137', '137', 'Jh dk\'khjke', 'Jh eqjyhnhu', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000037'),
(39, '2021-22', '1', '2', '1', 38, '138', '138', 'Jh jkefd\'kksj', 'Jh jke vo/k', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000038'),
(40, '2021-22', '1', '2', '1', 39, '139', '139', 'Jh euhjke', 'Jh jkevo/k', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 108.00, 108.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000039'),
(41, '2021-22', '2', '1', '1', 40, '140', '140', 'Jh dsrkj', 'Jh euhjke', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 108.00, 324.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000040'),
(42, '2021-22', '2', '1', '1', 41, '141', '141', 'Jh jke leq>', 'Jh lkfydjke', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000041'),
(43, '2021-22', '2', '1', '1', 42, '142', '142', 'Jh txthou', 'Jh ?kx#', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000042'),
(44, '2021-22', '2', '1', '1', 43, '143', '143', 'Jh iquoklh', 'Jh ?kx#', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 798.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000043'),
(45, '2021-22', '2', '1', '1', 44, '144', '144', 'Jh txjke', 'Jh ds\'ko', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000044'),
(46, '2021-22', '2', '1', '1', 45, '145', '145', 'dykorh', 'Jh jkecju', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 115.00, 978.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000045'),
(47, '2021-22', '2', '1', '1', 46, '146', '146', 'Jherh pUnzdyk', 'feghyky', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000046'),
(48, '2021-22', '2', '1', '1', 47, '147', '147', 'Jh ijes\'oj', '?ks:', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 498.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000047'),
(49, '2021-22', '2', '1', '1', 48, '148', '148', 'Jh jkefd\'kksj', 'Jh jkekuUn', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 769.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000048'),
(50, '2021-22', '2', '1', '1', 49, '149', '149', 'Jh euksgj', 'Jh uks[kbZ', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000049'),
(51, '2021-22', '2', '1', '1', 50, '150', '150', 'Jh dfiynso ] guqeku', 'Jh jkegj[k', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000050'),
(52, '2021-22', '2', '1', '1', 51, '151', '151', 'Jh cuokjh yky', 'Jh txnUr', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000051'),
(53, '2021-22', '2', '1', '1', 52, '152', '152', 'Jh pEikyky', 'Jh jkey[ku', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 188.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000052'),
(54, '2021-22', '2', '1', '1', 53, '153', '153', 'Jh jkeleq>', 'Jh lqdbZ', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000053'),
(55, '2021-22', '2', '1', '1', 54, '154', '154', 'Jh cuokjh', 'Jh txnUr', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000054'),
(56, '2021-22', '2', '1', '1', 55, '155', '155', 'Jh feV~Bw', 'Jh ckcknhu', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 470.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000055'),
(57, '2021-22', '2', '1', '1', 56, '156', '156', 'Jh xjhcsyky', 'Jh jke/khjt', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 564.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000056'),
(58, '2021-22', '2', '1', '1', 57, '157', '157', 'Jh eqUusyky', 'Jh csdk:', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 800.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000057'),
(59, '2021-22', '2', '1', '1', 58, '158', '158', 'Jh jkenkl', 'Jh jkekuUn', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000058'),
(60, '2021-22', '2', '1', '1', 59, '159', '159', 'Jh nq[kjke', 'Jh txnUr', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000059'),
(61, '2021-22', '2', '1', '1', 60, '160', '160', 'Jh cgjSph', 'Jh tx#i', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000060'),
(62, '2021-22', '2', '1', '1', 61, '161', '161', 'Jh lgnso', 'Jh txslj', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000061'),
(63, '2021-22', '2', '1', '1', 62, '162', '162', 'Jh jkelwjr', 'Jh ca\'khyky', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 1266.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000062'),
(64, '2021-22', '2', '1', '1', 63, '163', '163', 'Jh dkEkrk', 'Jh jkexfr', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000063'),
(65, '2021-22', '2', '1', '1', 64, '164', '164', 'Jh gkSflyk izlkn', 'Jh yky cgknqj', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000064'),
(66, '2021-22', '2', '1', '1', 65, '165', '165', 'Jh eSdwyky', 'Jh ?kx#', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 144.00, 720.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000065'),
(67, '2021-22', '2', '1', '1', 66, '166', '166', 'Jh larks\"k dqekj', 'Jh jkenqykjs', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 101.00, 1046.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000066'),
(68, '2021-22', '2', '1', '1', 67, '167', '167', 'Jh jkelqUnj', 'Jh fo\'ks\"kj', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 216.00, 432.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000067'),
(69, '2021-22', '2', '1', '1', 68, '168', '168', 'Jh jkey[ku', 'Jh feJhyky', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 108.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000068'),
(70, '2021-22', '2', '2', '2', 69, '169', '169', 'Jh csdk#', 'cybZ', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 376.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000069'),
(71, '2021-22', '2', '2', '2', 70, '170', '170', 'Jh lUrw', 'Jh feV~Bw', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 94.00, 188.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000070'),
(72, '2021-22', '2', '2', '2', 71, '171', '171', 'Jh txnh\'k', 'Jh jkeleq>', 'nks/kV', '8576945690', '1.11111E+11', 'test@gmail.com', 144.00, 144.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000071'),
(73, '2021-22', '2', '2', '2', 72, '172', '172', 'Jh jkevo/k', 'Jh f\'koiyVu', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 270.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000072'),
(74, '2021-22', '2', '2', '2', 73, '173', '173', 'Jh xtk/kj', 'Jh lksebZ', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 115.00, 115.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000073'),
(75, '2021-22', '2', '2', '2', 74, '174', '174', 'Jh f\'kojkt', 'Jh lgrw', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 876.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000074'),
(76, '2021-22', '2', '2', '2', 75, '175', '175', 'Jh jkenqykjs', 'Jh jkes\'oj izlkn', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 173.00, 1126.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000075'),
(77, '2021-22', '2', '2', '2', 76, '176', '176', 'eks0 jQh mQZ eqUuk', 'Jh bczkfge', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 115.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000076'),
(78, '2021-22', '3', '2', '2', 77, '177', '177', 'Jh [kkykyh', 'Jh vkfcn', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 144.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000077'),
(79, '2021-22', '3', '2', '2', 78, '178', '178', 'Jh gqlSu vyh', 'Jh ealwj vyh', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000078'),
(80, '2021-22', '3', '2', '2', 79, '179', '179', 'Jh futkeqbnhu] bLykeqbnhu] ,tkeqbnhu \'kel~qbnhu] de:n~nhu', 'Naxk', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 144.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000079'),
(81, '2021-22', '3', '2', '2', 80, '180', '180', 'eks0 lkfcj', 'eks0 vyh', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 288.00, 576.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000080'),
(82, '2021-22', '3', '2', '2', 81, '181', '181', 'Jh jkeopu', 'Jh jkeQy', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000081'),
(83, '2021-22', '3', '2', '2', 82, '182', '182', 'Jh eq\'krkd', 'Jh rtEeqy gqlSu', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 470.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000082'),
(84, '2021-22', '3', '2', '2', 83, '183', '183', 'Jh eqbumn~nhu', 'Jh \'kelqn~nhu', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 1064.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000083'),
(85, '2021-22', '3', '2', '2', 84, '184', '184', 'Jh vgen gqlSu', '0', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 108.00, 1923.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000084'),
(86, '2021-22', '3', '2', '2', 85, '185', '185', 'Jh easgnh glu', 'Jh Qjhn vgen', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 1224.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000085'),
(87, '2021-22', '3', '2', '2', 86, '186', '186', 'Jh uud?', 'Jh HkxkSrh izlkn', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 432.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000086'),
(88, '2021-22', '3', '2', '2', 87, '187', '187', 'Jh cgjSph', 'Jh HkXxu', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 282.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000087'),
(89, '2021-22', '3', '2', '2', 88, '188', '188', 'Jh ?kwjs', 'Jh uudw', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 864.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000088'),
(90, '2021-22', '3', '2', '2', 89, '189', '189', 'eks0 guhQ', 'Jh ;wlqQ', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 864.00, 12984.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000089'),
(91, '2021-22', '3', '2', '2', 90, '190', '190', 'Jh eks0 ulhe', 'Jh vtheqYyk', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000090'),
(92, '2021-22', '3', '2', '2', 91, '191', '191', 'Jh t+Qj vgen', 'Jh eks0 jlwy', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 432.00, 5692.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000091'),
(93, '2021-22', '3', '2', '2', 92, '192', '192', 'Jh y{eh ujk;u lksudj', 'Jh HkxkSrh izlkn lksudj', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 576.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000092'),
(94, '2021-22', '3', '2', '2', 93, '193', '193', 'Jh eks0 fln~nhd', 'Jh \'kCchj', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 360.00, 360.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000093'),
(95, '2021-22', '3', '2', '2', 94, '194', '194', 'Jh f\'koizlkn', 'Jh jkevo/k', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 216.00, 3346.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000094'),
(96, '2021-22', '3', '2', '2', 95, '195', '195', 'Jh pkS0eks0 mleku', 'Jh pkS0eks0 tqcsj', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 576.00, 1728.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000095'),
(97, '2021-22', '3', '2', '2', 96, '196', '196', 'Jh \'kkgeksgEen', 'Jh oyh eksgEen', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 432.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000096'),
(98, '2021-22', '3', '2', '2', 97, '197', '197', 'Jh ykyth jkBkSj', 'Jh bZ\'ojnhu', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 576.00, 576.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000097'),
(99, '2021-22', '3', '2', '2', 98, '198', '198', 'Jh [kyhy vgen', 'Jh nhu eksgEen', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 144.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000098'),
(100, '2021-22', '3', '2', '2', 99, '199', '199', 'Jh lR;ujk;.k', 'Jh yky cgknqj', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 216.00, 1836.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000099'),
(101, '2021-22', '3', '2', '2', 100, '200', '200', 'Jh jkew', 'Jh Nsnh yky', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 94.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000100'),
(102, '2022-23', '4', '2', '2', 101, '201', '201', 'Jh jke feyu', 'Jh HkXxu', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 0.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000101'),
(103, '2022-23', '4', '2', '2', 102, '202', '202', 'Jh eSdwyky', 'Jh n\'kZu yky', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 180.00, 900.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000102'),
(104, '2022-23', '4', '2', '2', 103, '203', '203', 'Jh tSljkt', 'Jh vgoju', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 658.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000103'),
(105, '2022-23', '4', '2', '2', 104, '204', '204', 'Jh fxfjtk \'kadj', 'Jh jke ft;kou', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 470.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000104'),
(106, '2022-23', '4', '2', '2', 105, '205', '205', 'Jh Hkwjsyky jkey[ku', 'Jh ekrkizlkn', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 130.00, 1780.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000105'),
(107, '2022-23', '4', '2', '2', 106, '206', '206', 'Jh txnh\'k izlkn', 'Jh eqUuh yky', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 108.00, 648.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000106'),
(108, '2022-23', '4', '2', '2', 107, '207', '207', 'Jh dYyw', 'Jh lgnso', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 216.00, 1296.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000107'),
(109, '2022-23', '4', '2', '2', 108, '208', '208', 'Jh jkedsoy', 'Jh ikjl', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 658.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000108'),
(110, '2022-23', '4', '2', '2', 109, '209', '209', 'Jh lq[khjke', 'Jh lqdbZ', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 470.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000109'),
(111, '2022-23', '4', '2', '2', 110, '210', '210', 'Jh ckdsayky', 'Jh nsodyh', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 720.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000110'),
(112, '2022-23', '4', '2', '2', 111, '211', '211', 'Jh fot; dqekj', 'Jh tkudh izlkn', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 108.00, 2280.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000111'),
(113, '2022-23', '4', '2', '2', 112, '212', '212', 'Jherh fueZyk nsoh', 'Jh f\'koujk;.k', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 216.00, 1080.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000112'),
(114, '2022-23', '4', '2', '2', 113, '213', '213', 'Jh vf[kys\'k dqekj', 'Jh gjh vkse', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 216.00, 1296.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000113'),
(115, '2022-23', '4', '2', '2', 114, '214', '214', 'Jh vjfoUn dqekj', 'Jh lqHkk\"kpUnz', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 216.00, 1296.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000114'),
(116, '2022-23', '4', '2', '2', 115, '215', '215', 'Jh jkelwjr', 'Jh xq# izlkn', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 288.00, 1440.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000115'),
(117, '2022-23', '4', '2', '2', 116, '216', '216', 'Jherh fcUns\'ojh nsoh', 'jkevo/k ;kno', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 1500.00, 6000.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000116'),
(118, '2022-23', '4', '2', '2', 117, '217', '217', 'Jh ,gjkj vgen [kk?', 'Jh gkth tjkZj [kka?', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 288.00, 2304.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000117'),
(119, '2022-23', '4', '2', '2', 118, '218', '218', 'Jh f\'koizlkn', 'Jh gfj\'pUnz', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 216.00, 1296.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000118'),
(120, '2022-23', '4', '2', '2', 119, '219', '219', 'Jherh jktdqekjh', 'Jh fxfjtk \'kadj', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 216.00, 4710.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000119'),
(121, '2022-23', '4', '2', '2', 120, '220', '220', 'Jherh \'kCcks', 'Jh vdhy', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 2400.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000120'),
(122, '2022-23', '4', '2', '2', 121, '221', '221', 'Jh fiUVw', '0', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 1545.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000121'),
(123, '2022-23', '4', '2', '2', 122, '222', '222', 'Jh eks0 guhQ', 'Jh yqdeku', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 1915.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000122'),
(124, '2022-23', '4', '2', '2', 123, '223', '223', 'Jherh vthtqufu\'kk?', 'Jh ,[kykd jlwy', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 288.00, 1728.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000123'),
(125, '2022-23', '4', '2', '2', 124, '224', '224', 'Jh \'kCcw', '0', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 115.00, 2510.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000124'),
(126, '2022-23', '4', '2', '2', 125, '225', '225', 'Jh eks0 guhQ', 'Jh vCnqy jTtkd', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 376.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000125'),
(127, '2022-23', '4', '2', '2', 126, '226', '226', 'Jh eks0 ;kdwc] eks0 guhQ', 'Jh xqyke xkSl', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 376.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000126'),
(128, '2022-23', '4', '2', '2', 127, '227', '227', 'Jh tSuqmn~nhu', 'Jh eqbumn~nhu', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 576.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000127'),
(129, '2022-23', '4', '2', '2', 128, '228', '228', 'Jherh [krhtk', 'Jh vCckl', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 288.00, 5040.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000128'),
(130, '2022-23', '4', '2', '2', 129, '229', '229', 'Jh dkyh izlkn', 'Jh xq#pju', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 564.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000129'),
(131, '2022-23', '4', '2', '2', 130, '230', '230', 'Jh lbZn vgen', 'Jh glu vyh', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 144.00, 1440.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000130'),
(132, '2022-23', '4', '2', '2', 131, '231', '231', 'Jh eks0 jQh ] eks0 ;klhu] Jherh fdlerh ckuks ]', 'eks0 jQh', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 240.00, 1200.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000131'),
(133, '2022-23', '4', '2', '2', 132, '232', '232', 'Jh bEfr;kt+ vyh', 'Jh mej njkt', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 240.00, 1200.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000132'),
(134, '2022-23', '4', '2', '2', 133, '233', '233', 'Jh egewn vgen', 'Jh Qk:[k vgen', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 240.00, 1200.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000133'),
(135, '2022-23', '4', '2', '2', 134, '234', '234', 'Jh eks0 tQ+j] eks0 vjln', 'Jh eks0 dej', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 940.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000134'),
(136, '2022-23', '4', '2', '2', 135, '235', '235', 'Jh eks0 j\'khn', 'Jh gth HkksyscD\'k', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 720.00, 2880.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000135'),
(137, '2022-23', '4', '2', '2', 136, '236', '236', 'Jherh Q[k: fu\'kk?', 'Jh jchmYyk', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 180.00, 720.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000136'),
(138, '2022-23', '4', '2', '2', 137, '237', '237', 'Jherh vk\'kk nsoh', 'Lo0 Jh yYyw izlkn', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 94.00, 470.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000137'),
(139, '2022-23', '4', '2', '2', 138, '238', '238', 'Jh lS?;n lqgSy vgen', 'Jh bljkmy glu', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 1800.00, 18000.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000138'),
(140, '2022-23', '4', '2', '2', 139, '239', '239', 'ukseku vgen fln~nhdh', 'Lo0 eks0 vlye fln~nhdh', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 288.00, 1152.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000139'),
(141, '2022-23', '4', '1', '1', 140, '240', '240', 'Jherh dkSf\'kY;k vk;Z', 'Jh osnjru izdk\'k vk;Z', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 720.00, 3600.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000140'),
(142, '2022-23', '4', '1', '1', 141, '241', '241', 'Jh eks0 bdcky', 'eks0 blgkd', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 1920.00, 7680.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000141'),
(143, '2022-23', '4', '1', '1', 142, '242', '242', 'Jh eks0 \'kehe', 'Jh eks0 mej', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 300.00, 1500.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000142'),
(144, '2022-23', '4', '1', '1', 143, '243', '243', 'Jherh tg#fUu\'kka', 'eks0 dyhe', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 240.00, 960.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000143'),
(145, '2022-23', '4', '1', '1', 144, '244', '244', 'Jherh ljoj tgka', 'eks0 egewn', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 600.00, 4800.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000144'),
(146, '2022-23', '4', '1', '1', 145, '245', '245', 'Jherh #dlkuk [kkrwu', 'eq[rkj [kka', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 1200.00, 8400.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000145'),
(147, '2022-23', '4', '1', '1', 146, '246', '246', 'Jherh uktehu ckuks', 'LoZ0 vkQkd vgen', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 480.00, 2400.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000146'),
(148, '2022-23', '4', '1', '1', 147, '247', '247', ':ch', 'eksgEen bLekbZy', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 180.00, 900.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000147'),
(149, '2022-23', '4', '1', '1', 148, '248', '248', 'lqcqgh', 'bejku vgen', 'nks/kV', '7786945690', '1.11111E+11', 'test@gmail.com', 240.00, 1200.00, 0.00, 0, 1, '0', '0000-00-00 00:00:00.0000', '0000-00-00 00:00:00.0000', 'NPDGT-000148');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fin_year`
--
ALTER TABLE `fin_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `housetax_demand`
--
ALTER TABLE `housetax_demand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `housetax_payment`
--
ALTER TABLE `housetax_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house_detail`
--
ALTER TABLE `house_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_detail_id` (`house_detail_id`);

--
-- Indexes for table `house_type`
--
ALTER TABLE `house_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_caste`
--
ALTER TABLE `license_caste`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_category`
--
ALTER TABLE `license_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_gender`
--
ALTER TABLE `license_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_mrt`
--
ALTER TABLE `license_mrt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_registration`
--
ALTER TABLE `license_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_type`
--
ALTER TABLE `license_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publiccompliance`
--
ALTER TABLE `publiccompliance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seever_demand`
--
ALTER TABLE `seever_demand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seever_payment`
--
ALTER TABLE `seever_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seever_registrations`
--
ALTER TABLE `seever_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoprent_demand`
--
ALTER TABLE `shoprent_demand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoprent_fin_year`
--
ALTER TABLE `shoprent_fin_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoprent_payment`
--
ALTER TABLE `shoprent_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoprent_registrations`
--
ALTER TABLE `shoprent_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoprent_ward`
--
ALTER TABLE `shoprent_ward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unique_id`
--
ALTER TABLE `unique_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watertax_demand`
--
ALTER TABLE `watertax_demand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watertax_payment`
--
ALTER TABLE `watertax_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `water_registrations`
--
ALTER TABLE `water_registrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fin_year`
--
ALTER TABLE `fin_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `housetax_demand`
--
ALTER TABLE `housetax_demand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `housetax_payment`
--
ALTER TABLE `housetax_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `house_detail`
--
ALTER TABLE `house_detail`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `house_type`
--
ALTER TABLE `house_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `license_caste`
--
ALTER TABLE `license_caste`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `license_category`
--
ALTER TABLE `license_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_gender`
--
ALTER TABLE `license_gender`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_mrt`
--
ALTER TABLE `license_mrt`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_registration`
--
ALTER TABLE `license_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `license_type`
--
ALTER TABLE `license_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `publiccompliance`
--
ALTER TABLE `publiccompliance`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `seever_demand`
--
ALTER TABLE `seever_demand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `seever_payment`
--
ALTER TABLE `seever_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seever_registrations`
--
ALTER TABLE `seever_registrations`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `shoprent_demand`
--
ALTER TABLE `shoprent_demand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `shoprent_fin_year`
--
ALTER TABLE `shoprent_fin_year`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shoprent_payment`
--
ALTER TABLE `shoprent_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shoprent_registrations`
--
ALTER TABLE `shoprent_registrations`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `shoprent_ward`
--
ALTER TABLE `shoprent_ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `unique_id`
--
ALTER TABLE `unique_id`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ward`
--
ALTER TABLE `ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `watertax_demand`
--
ALTER TABLE `watertax_demand`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `watertax_payment`
--
ALTER TABLE `watertax_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `water_registrations`
--
ALTER TABLE `water_registrations`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
