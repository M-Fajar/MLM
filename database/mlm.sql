-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2021 at 04:14 AM
-- Server version: 10.3.28-MariaDB-log-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magirtzm_mlm2`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `wallet` decimal(10,2) NOT NULL,
  `income` decimal(10,2) NOT NULL,
  `total_income` decimal(10,2) NOT NULL,
  `total_withdrawl` decimal(10,2) NOT NULL,
  `expenditure` decimal(10,2) NOT NULL,
  `pending` decimal(10,2) NOT NULL,
  `last_added_money` decimal(10,2) NOT NULL,
  `total_added_money` decimal(10,2) NOT NULL,
  `last_withdrawl` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `user_id`, `wallet`, `income`, `total_income`, `total_withdrawl`, `expenditure`, `pending`, `last_added_money`, `total_added_money`, `last_withdrawl`) VALUES
(1, '1006090', 5378.00, 400.00, 400.00, 1327.00, 2940.00, 1699.00, 9.00, 11009.00, 65.00),
(2, '1006091', 80.00, 80.00, 80.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(3, '1006092', 60.00, 60.00, 60.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(4, '1006093', 20.00, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(5, '1006094', 40.00, 40.00, 40.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(6, '1006095', 20.00, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(7, '1006096', 20.00, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(8, '1006097', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(9, '1006098', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(10, '1006099', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(11, '1006100', 20.00, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(12, '1006101', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(13, '1006102', 20.00, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(14, '1006103', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(15, '1006104', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(16, '1006105', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(17, '1006106', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(18, '1006107', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(19, '1006108', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(20, '1006109', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(21, '1006110', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `blocked_users`
--

CREATE TABLE `blocked_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `blocked_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blocked_users`
--

INSERT INTO `blocked_users` (`id`, `user_id`, `blocked_date`) VALUES
(2, '1006101', '1617812760');

-- --------------------------------------------------------

--
-- Table structure for table `capping`
--

CREATE TABLE `capping` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `income` decimal(10,2) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capping`
--

INSERT INTO `capping` (`id`, `user_id`, `income`, `date`) VALUES
(1, '1006090', 330.00, '07-04-2021'),
(2, '1006092', 60.00, '07-04-2021'),
(3, '1006091', 60.00, '07-04-2021'),
(4, '1006096', 20.00, '07-04-2021'),
(5, '1006095', 20.00, '07-04-2021'),
(6, '1006094', 40.00, '07-04-2021'),
(7, '1006093', 20.00, '07-04-2021'),
(8, '1006090', 70.00, '08-04-2021'),
(9, '1006091', 20.00, '08-04-2021'),
(10, '1006100', 20.00, '08-04-2021'),
(11, '1006102', 20.00, '08-04-2021');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_summary`
--

CREATE TABLE `deposit_summary` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposit_summary`
--

INSERT INTO `deposit_summary` (`id`, `user_id`, `amount`, `payment_method`, `date`) VALUES
(1, '1006090', 999.00, 'paytm', '1617787333'),
(2, '1006090', 9999.00, 'paytm', '1617789697'),
(3, '1006090', 2.00, 'paytm', '1617853578'),
(4, '1006090', 9.00, 'paytm', '1617861954');

-- --------------------------------------------------------

--
-- Table structure for table `income_history`
--

CREATE TABLE `income_history` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` varchar(255) NOT NULL,
  `agent_id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `income_history`
--

INSERT INTO `income_history` (`id`, `user_id`, `amount`, `date`, `agent_id`, `description`, `category`) VALUES
(1, '1006090', 10.00, '1617789976', '1006091', 'credit', 2),
(2, '1006090', 10.00, '1617790096', '1006092', 'credit', 2),
(3, '1006090', 20.00, '1617790096', '', 'credit', 1),
(4, '1006090', 10.00, '1617790224', '1006093', 'credit', 2),
(5, '1006090', 10.00, '1617790255', '1006094', 'credit', 2),
(6, '1006092', 20.00, '1617790255', '', 'credit', 1),
(7, '1006090', 10.00, '1617790307', '1006095', 'credit', 2),
(8, '1006090', 20.00, '1617790307', '', 'credit', 1),
(9, '1006090', 10.00, '1617790351', '1006096', 'credit', 2),
(10, '1006091', 20.00, '1617790351', '', 'credit', 1),
(11, '1006090', 20.00, '1617790351', '', 'credit', 1),
(12, '1006090', 10.00, '1617790988', '1006097', 'credit', 2),
(13, '1006090', 10.00, '1617791044', '1006098', 'credit', 2),
(14, '1006096', 20.00, '1617791044', '', 'credit', 1),
(15, '1006090', 10.00, '1617791096', '1006099', 'credit', 2),
(16, '1006091', 20.00, '1617791096', '', 'credit', 1),
(17, '1006090', 10.00, '1617791935', '1006100', 'credit', 2),
(18, '1006095', 20.00, '1617791935', '', 'credit', 1),
(19, '1006091', 20.00, '1617791935', '', 'credit', 1),
(20, '1006090', 10.00, '1617792062', '1006101', 'credit', 2),
(21, '1006090', 20.00, '1617792062', '', 'credit', 1),
(22, '1006090', 10.00, '1617792541', '1006102', 'credit', 2),
(23, '1006092', 20.00, '1617792541', '', 'credit', 1),
(24, '1006090', 20.00, '1617792541', '', 'credit', 1),
(25, '1006090', 10.00, '1617792572', '1006103', 'credit', 2),
(26, '1006094', 20.00, '1617792572', '', 'credit', 1),
(27, '1006090', 20.00, '1617792572', '', 'credit', 1),
(28, '1006090', 10.00, '1617792949', '1006104', 'credit', 2),
(29, '1006093', 20.00, '1617792949', '', 'credit', 1),
(30, '1006092', 20.00, '1617792949', '', 'credit', 1),
(31, '1006090', 20.00, '1617792949', '', 'credit', 1),
(32, '1006090', 10.00, '1617793042', '1006105', 'credit', 2),
(33, '1006090', 10.00, '1617813275', '1006106', 'credit', 2),
(34, '1006090', 20.00, '1617813275', '', 'credit', 1),
(35, '1006090', 10.00, '1617813849', '1006107', 'credit', 2),
(36, '1006094', 20.00, '1617813849', '', 'credit', 1),
(37, '1006090', 10.00, '1617851870', '1006108', 'credit', 2),
(38, '1006091', 20.00, '1617851870', '', 'credit', 1),
(39, '1006090', 20.00, '1617851870', '', 'credit', 1),
(40, '1006090', 10.00, '1617852008', '1006109', 'credit', 2),
(41, '1006100', 20.00, '1617852008', '', 'credit', 1),
(42, '1006090', 10.00, '1617861893', '1006110', 'credit', 2),
(43, '1006102', 20.00, '1617861893', '', 'credit', 1),
(44, '1006090', 20.00, '1617861893', '', 'credit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_session`
--

CREATE TABLE `login_session` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `loggedin_at` varchar(255) NOT NULL,
  `valid_till` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_session`
--

INSERT INTO `login_session` (`id`, `user_id`, `session_id`, `loggedin_at`, `valid_till`) VALUES
(1, '1006090', '97d9abb466d4439898b00666124b56b3', '1617637494', '1620229494'),
(3, '1006105', '4a04b57c9f8f4063babeccc4b3065087', '1617810104', '2592000'),
(4, '1006105', '252e4f32606d4492bf1b731efc6a0149', '1617810121', '2592000'),
(5, '1006104', 'ddfc8203414848a9abde46cf47864f99', '1617810126', '2592000'),
(6, '1006105', '8a64412766324c77ac48b31059b7f2e9', '1617810148', '2592000'),
(7, '1006105', '2cc8b4648a054269abf5a9c2a035d328', '1617810153', '2592000'),
(8, '1006105', '8e310cf9efbf4851bea89a672bd4f6a3', '1617810165', '2592000'),
(9, '1006105', 'e24803c98c92403fb525b9f5ff784555', '1617810176', '2592000'),
(10, '1006105', 'c646bddfef3d4c139c907037361d735d', '1617810206', '1620402206'),
(17, '1006090', '6408c9e5e4d54367ac28b0621f7bc497', '1617811036', '1620403036'),
(18, '1006090', '7e0c2c831a214fd7a09f404c642b0400', '1617812150', '1620404150'),
(19, '1006090', '7653aacda76d49d5a7611600c8efa04c', '1617812214', '1617814014'),
(20, '1006090', '0126db4f48214dbaab3779a8a864735f', '1617812390', '1620404390'),
(21, '1006090', '44dea29915b24d9093b5f8ff7ad6ed55', '1617812399', '1620404399'),
(22, '1006090', 'c2178335be3b434fb6bc4c704ac042da', '1617812673', '1617814473'),
(23, '1006100', 'ff0ff6a461634761835cee1461d5f1ed', '1617812763', '1620404763'),
(24, '1006090', '23f35e35d7e14b8e937b0e32233c2cf2', '1617812782', '1617814582'),
(25, '1006090', '8ad63ba6d31a44f1b89b353cd738e00b', '1617813193', '1620405193'),
(26, '1006090', 'e5311165aa1043a4b88a24ded6518416', '1617813334', '1620405334'),
(27, '1006090', '9b161da3b59c4720b84bc345d34d397a', '1617813379', '1620405379'),
(28, '1006090', '94fbf433faf34daeb26e6cacd26373fa', '1617814061', '1620406061'),
(29, '1006090', '01cf0b9f17774947899825c90480f5d5', '1617820404', '1617822204'),
(31, '1006090', 'e253af502639431d85af885dc34b73e8', '1617846200', '1617848000'),
(32, '1006090', 'da90a2a111fe41078964335a5a4beac3', '1617849775', '1617851575'),
(33, '1006090', '6f4495814a714d19a62e2a9f3c7f2a37', '1617856982', '1620448982'),
(34, '1006090', '1b9622346c71498588abc70fab2a943c', '1617907178', '1617908978'),
(35, '1006090', 'b3f2ee04187943eab18dc86390afb227', '1618042058', '1620634058'),
(36, '1006090', '444094b577b641a084d43e8b7d002aff', '1618042221', '1620634221');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `otp_id` int(11) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `otp_email` varchar(255) NOT NULL,
  `otp_inserted_date` varchar(255) NOT NULL,
  `otp_valid_date` varchar(255) NOT NULL,
  `otp_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`otp_id`, `otp`, `otp_email`, `otp_inserted_date`, `otp_valid_date`, `otp_status`) VALUES
(1, '11960', 'princeraj9137@gmail.com', '1617789932', '1617790832', 1),
(2, '23812', 'princeraj9137@gmail.com', '1617790081', '1617790981', 1),
(3, '87232', 'princeraj9137@gmail.com', '1617790139', '1617791039', 1),
(4, '69231', 'princeraj9137@gmail.com', '1617790235', '1617791135', 1),
(5, '74043', 'princeraj9137@gmail.com', '1617790287', '1617791187', 1),
(6, '40492', 'princeraj9137@gmail.com', '1617790317', '1617791217', 1),
(7, '72105', 'princeraj9137@gmail.com', '1617790958', '1617791858', 1),
(8, '25257', 'princeraj9137@gmail.com', '1617791005', '1617791905', 1),
(9, '80342', 'princeraj9137@gmail.com', '1617791079', '1617791979', 1),
(10, '78833', 'princeraj9137@gmail.com', '1617791891', '1617792791', 1),
(11, '68968', 'princeraj9137@gmail.com', '1617792014', '1617792914', 1),
(12, '51166', 'princeraj9137@gmail.com', '1617792441', '1617793341', 1),
(13, '81551', 'princeraj9137@gmail.com', '1617792552', '1617793452', 1),
(14, '30835', 'princeraj9137@gmail.com', '1617792907', '1617793807', 1),
(15, '96004', 'princeraj9137@gmail.com', '1617792957', '1617793857', 1),
(16, '47832', 'jaickykumar790@gmail.com', '1617813240', '1617814140', 1),
(17, '68439', 'princeraj9137@gmail.com', '1617813802', '1617814702', 1),
(18, '68387', 'princeraj9137@gmail.com', '1617851776', '1617852676', 1),
(19, '33186', 'princeraj9137@gmail.com', '1617851982', '1617852882', 1),
(20, '93673', 'princeraj9137@gmail.com', '1617861837', '1617862737', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pair_count`
--

CREATE TABLE `pair_count` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `pair_count` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pair_count`
--

INSERT INTO `pair_count` (`id`, `user_id`, `date`, `pair_count`) VALUES
(1, '1006095', '1617733800', '1'),
(2, '1006091', '1617733800', '1'),
(3, '1006090', '1617733800', '3'),
(4, '1006092', '1617733800', '2'),
(5, '1006090', '1617733800', '4'),
(6, '1006094', '1617733800', '2'),
(7, '1006093', '1617733800', '1'),
(8, '1006091', '1617820200', '1'),
(9, '1006090', '1617820200', '2'),
(10, '1006100', '1617820200', '1'),
(11, '1006102', '1617820200', '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment_session`
--

CREATE TABLE `payment_session` (
  `payment_id` int(255) NOT NULL,
  `payer_user_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `payable_amount` varchar(255) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_session`
--

INSERT INTO `payment_session` (`payment_id`, `payer_user_id`, `order_id`, `payable_amount`, `paid_amount`, `payment_date`, `status`) VALUES
(1, '1006090', 'ORDS25533465', '999', '999.00', '2021-04-07 14:52:13.0', 'TXN_SUCCESS'),
(2, '1006090', 'ORDS28727036', '999', '', '', 'inactive'),
(3, '1006090', 'ORDS96218937', '9999', '9999.00', '2021-04-07 15:31:37.0', 'TXN_SUCCESS'),
(4, '1006090', 'ORDS72342687', '2', '2.00', '2021-04-08 09:16:18.0', 'TXN_SUCCESS'),
(5, '1006090', 'ORDS68089667', '9', '9.00', '2021-04-08 11:35:54.0', 'TXN_SUCCESS');

-- --------------------------------------------------------

--
-- Table structure for table `pins`
--

CREATE TABLE `pins` (
  `pin_id` int(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `pin_creator` varchar(255) NOT NULL,
  `date_created` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `activation_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pins`
--

INSERT INTO `pins` (`pin_id`, `pin`, `pin_creator`, `date_created`, `status`, `activation_date`) VALUES
(1, 'XMPTJI37', '1006090', '1617789354', 'active', '1617789976'),
(2, 'FZK8Q97D', '1006090', '1617789354', 'active', '1617790096'),
(3, 'EVASRGH5', '1006090', '1617789354', 'active', '1617790255'),
(4, 'DQAZ9W1T', '1006090', '1617789354', 'active', '1617790307'),
(5, '4IZ37VXD', '1006090', '1617789354', 'active', '1617790351'),
(6, 'YKNWM2ZE', '1006090', '1617789354', 'active', '1617790988'),
(7, 'M2HTXBUS', '1006090', '1617789354', 'active', '1617791044'),
(8, '3SI6P87W', '1006090', '1617789354', 'active', '1617790224'),
(9, 'WC78YFAZ', '1006090', '1617789354', 'active', '1617791096'),
(10, '4WA2PD1R', '1006090', '1617789382', 'active', '1617791935'),
(11, 'DGERLIZS', '1006090', '1617789382', 'active', '1617792062'),
(12, 'KMRXC87Z', '1006090', '1617789382', 'active', '1617792572'),
(13, 'UL485ZVE', '1006090', '1617789382', 'active', '1617792541'),
(14, 'Z6H3KEM1', '1006090', '1617789382', 'active', '1617792949'),
(15, 'CZ8RG6DA', '1006090', '1617789388', 'active', '1617793042'),
(16, 'PC1ZBJ96', '1006090', '1617789388', 'active', '1617813275'),
(17, 'ANT83FLD', '1006090', '1617789397', 'active', '1617813849'),
(18, '8T1JV3XN', '1006090', '1617789716', 'active', '1617851870'),
(19, 'G6BMQH8V', '1006090', '1617789716', 'active', '1617852008'),
(20, 'FZNI2SEY', '1006090', '1617789716', 'active', '1617861893'),
(21, 'HLS6IUKT', '1006090', '1617789716', 'inactive', 'Not active'),
(22, 'CXUKSTRL', '1006090', '1617789716', 'inactive', 'Not active'),
(23, 'MZIFUDK5', '1006090', '1617789716', 'inactive', 'Not active'),
(24, 'PQZJ8BTR', '1006090', '1617789716', 'inactive', 'Not active'),
(25, 'HT6U7Z2M', '1006090', '1617789716', 'inactive', 'Not active'),
(26, '12VQ8PMA', '1006090', '1617789716', 'inactive', 'Not active'),
(27, 'QKHGWP12', '1006090', '1617789720', 'inactive', 'Not active'),
(28, '2NLMETU1', '1006090', '1617789720', 'inactive', 'Not active'),
(29, 'YCB4L5SW', '1006090', '1617789720', 'inactive', 'Not active'),
(30, 'WKZ96P2J', '1006090', '1617789720', 'inactive', 'Not active'),
(31, 'CND4BY89', '1006090', '1617789720', 'inactive', 'Not active'),
(32, '5P3G9LW7', '1006090', '1617789720', 'inactive', 'Not active'),
(33, 'PDC3EWSR', '1006090', '1617789720', 'inactive', 'Not active'),
(34, 'LWV2BMTU', '1006090', '1617789720', 'inactive', 'Not active'),
(35, 'NQIC1HXZ', '1006090', '1617789720', 'inactive', 'Not active'),
(36, 'HTWNUX1C', '1006090', '1617789724', 'inactive', 'Not active'),
(37, 'N9KH6QYL', '1006090', '1617789724', 'inactive', 'Not active'),
(38, 'H75KRJBD', '1006090', '1617789724', 'inactive', 'Not active'),
(39, 'U28BZCDM', '1006090', '1617789724', 'inactive', 'Not active'),
(40, 'JX2H8DZL', '1006090', '1617789724', 'inactive', 'Not active'),
(41, 'B8TGNXW9', '1006090', '1617789724', 'inactive', 'Not active'),
(42, 'UD2P1463', '1006090', '1617789724', 'inactive', 'Not active'),
(43, 'BRWU5K2G', '1006090', '1617789724', 'inactive', 'Not active'),
(44, '7APS4M1F', '1006090', '1617789724', 'inactive', 'Not active'),
(45, 'JML8TRZD', '1006090', '1617789729', 'inactive', 'Not active'),
(46, 'T9MWR4FQ', '1006090', '1617789729', 'inactive', 'Not active'),
(47, 'PVD1BETF', '1006090', '1617789729', 'inactive', 'Not active'),
(48, '1FIW6KDA', '1006090', '1617789729', 'inactive', 'Not active'),
(49, '6TFPMX5U', '1006090', '1617789729', 'inactive', 'Not active'),
(50, 'T7Z38VKB', '1006090', '1617789729', 'inactive', 'Not active'),
(51, 'NZC6E4T7', '1006090', '1617789729', 'inactive', 'Not active'),
(52, '17W3G5NI', '1006090', '1617789729', 'inactive', 'Not active'),
(53, 'M7RNDZXE', '1006090', '1617789729', 'inactive', 'Not active'),
(54, 'RS2JAK7Q', '1006090', '1617865107', 'inactive', 'Not active'),
(55, '3UMY57ER', '1006090', '1617865107', 'inactive', 'Not active'),
(56, 'QLS5W8ED', '1006090', '1617865107', 'inactive', 'Not active'),
(57, 'PEB973W8', '1006090', '1617865107', 'inactive', 'Not active'),
(58, 'YWVN9RIG', '1006090', '1617865107', 'inactive', 'Not active'),
(59, 'DWHQNI2R', '1006090', '1617865107', 'inactive', 'Not active'),
(60, 'GCLJSMKH', '1006090', '1617865107', 'inactive', 'Not active');

-- --------------------------------------------------------

--
-- Table structure for table `pin_transfer_history`
--

CREATE TABLE `pin_transfer_history` (
  `serial_number` int(255) NOT NULL,
  `pin_creator` varchar(255) NOT NULL,
  `pin_count` varchar(255) NOT NULL,
  `expenditue` decimal(10,2) NOT NULL,
  `date_created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pin_transfer_history`
--

INSERT INTO `pin_transfer_history` (`serial_number`, `pin_creator`, `pin_count`, `expenditue`, `date_created`) VALUES
(1, '1006090', '9', 441.00, '1617789354'),
(2, '1006090', '5', 245.00, '1617789382'),
(3, '1006090', '2', 98.00, '1617789388'),
(4, '1006090', '1', 49.00, '1617789397'),
(5, '1006090', '9', 441.00, '1617789716'),
(6, '1006090', '9', 441.00, '1617789720'),
(7, '1006090', '9', 441.00, '1617789724'),
(8, '1006090', '9', 441.00, '1617789729'),
(9, '1006090', '7', 343.00, '1617865107');

-- --------------------------------------------------------

--
-- Table structure for table `rewards_tbl`
--

CREATE TABLE `rewards_tbl` (
  `reward_id` int(255) NOT NULL,
  `matching_pair` varchar(255) NOT NULL,
  `reward` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rewards_tbl`
--

INSERT INTO `rewards_tbl` (`reward_id`, `matching_pair`, `reward`) VALUES
(1, '15', '150'),
(2, '50', '600'),
(3, '100', '1,300'),
(4, '500', '7,000'),
(5, '1000', '15,000');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(255) NOT NULL,
  `ticket_id` varchar(255) NOT NULL,
  `ticket_creator` varchar(255) NOT NULL,
  `ticket_subject` varchar(255) NOT NULL,
  `ticket_create_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `ticket_closed_by` varchar(255) NOT NULL,
  `ticket_close_date` varchar(255) NOT NULL,
  `last_reply_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_id`, `ticket_creator`, `ticket_subject`, `ticket_create_date`, `status`, `ticket_closed_by`, `ticket_close_date`, `last_reply_date`) VALUES
(1, '5472419930', '1006090', 'testing', '1617790802', 'closed', '1006090', '1617865409', ''),
(2, '9395781091', '1006090', 'Hello', '1617813477', 'closed', '1006090', '1617864344', '1617861716'),
(3, '7754268020', '1006090', 'hello', '1617865442', 'open', '', '', '1617865487'),
(4, '6674119658', '1006090', 'Hello', '1617881555', 'closed', '1006090', '1617881596', '');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(255) NOT NULL,
  `ticket_id` varchar(255) NOT NULL,
  `ticket_creator` varchar(255) NOT NULL,
  `ticket_message` varchar(2000) NOT NULL,
  `ticket_date` varchar(255) NOT NULL,
  `ticket_files` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_messages`
--

INSERT INTO `ticket_messages` (`id`, `ticket_id`, `ticket_creator`, `ticket_message`, `ticket_date`, `ticket_files`) VALUES
(1, '5472419930', '1006090', 'testing', '1617790802', ''),
(2, '5472419930', '1006090', 'hello', '1617790851', ''),
(3, '9395781091', '1006090', 'Hello', '1617813477', ''),
(4, '9395781091', '1006090', 'Hello', '1617814400', ''),
(5, '9395781091', '1006090', 'Hello', '1617814531', ''),
(6, '9395781091', '1006090', 'Hello', '1617861716', ''),
(7, '7754268020', '1006090', 'hello', '1617865442', '72f36b8f-0cb8-4852-839e-9b4df7fba4da.png,'),
(8, '7754268020', '1006090', 'hello', '1617865487', ''),
(9, '6674119658', '1006090', 'Hello', '1617881555', '');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `token_id` int(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `token_creator` varchar(255) NOT NULL,
  `token_inserted_date` varchar(255) NOT NULL,
  `token_valid_date` varchar(255) NOT NULL,
  `token_purpose` varchar(255) NOT NULL,
  `token_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `transaction_id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_charge` decimal(10,2) NOT NULL,
  `net_amount` decimal(10,2) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `category` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`transaction_id`, `user_id`, `amount`, `transaction_charge`, `net_amount`, `description`, `category`, `date`, `status`) VALUES
(1, '1006090', 999.00, 0.00, 999.00, 'credit by paytm', 'deposit', '1617787333', 'credit'),
(2, '1006090', 19.00, 10.95, 8.05, '564261 256786  72897 912', 'withdraw', '1617787539', 'debit'),
(3, '1006090', 111.00, 5.55, 105.45, '564261 256786  72897 912', 'withdraw', '1617789228', 'debit'),
(4, '1006090', 441.00, 0.00, 441.00, 'bought 9 pins ', 'pin', '1617789354', 'debit'),
(5, '1006090', 245.00, 0.00, 245.00, 'bought 5 pins ', 'pin', '1617789382', 'debit'),
(6, '1006090', 98.00, 0.00, 98.00, 'bought 2 pins ', 'pin', '1617789388', 'debit'),
(7, '1006090', 49.00, 0.00, 49.00, 'bought 1 pin ', 'pin', '1617789397', 'debit'),
(8, '1006090', 9999.00, 0.00, 9999.00, 'credit by paytm', 'deposit', '1617789697', 'credit'),
(9, '1006090', 441.00, 0.00, 441.00, 'bought 9 pins ', 'pin', '1617789716', 'debit'),
(10, '1006090', 441.00, 0.00, 441.00, 'bought 9 pins ', 'pin', '1617789720', 'debit'),
(11, '1006090', 441.00, 0.00, 441.00, 'bought 9 pins ', 'pin', '1617789724', 'debit'),
(12, '1006090', 441.00, 0.00, 441.00, 'bought 9 pins ', 'pin', '1617789729', 'debit'),
(13, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617789976', 'credit'),
(14, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617790096', 'credit'),
(15, '1006090', 20.00, 0.00, 20.00, 'pair income', '', '1617790096', 'credit'),
(16, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617790224', 'credit'),
(17, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617790255', 'credit'),
(18, '1006092', 20.00, 0.00, 20.00, 'pair income', '', '1617790255', 'credit'),
(19, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617790307', 'credit'),
(20, '1006090', 20.00, 0.00, 20.00, 'pair income', '', '1617790307', 'credit'),
(21, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617790351', 'credit'),
(22, '1006091', 20.00, 0.00, 20.00, 'pair income', '', '1617790351', 'credit'),
(23, '1006090', 20.00, 0.00, 20.00, 'pair income', '', '1617790351', 'credit'),
(24, '1006090', 1000.00, 50.00, 950.00, '<a href=\"http://localhost/mlm/assets/images/users/0472021153407c44b0549-bd49-4b0f-a899-b392f92c52fdpayment.jpg\" >QR Code</a>', 'withdraw', '1617790729', 'debit'),
(25, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617790988', 'credit'),
(26, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617791044', 'credit'),
(27, '1006096', 20.00, 0.00, 20.00, 'pair income', '', '1617791044', 'credit'),
(28, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617791096', 'credit'),
(29, '1006091', 20.00, 0.00, 20.00, 'pair income', '', '1617791096', 'credit'),
(30, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617791935', 'credit'),
(31, '1006095', 20.00, 0.00, 20.00, 'pair income', '', '1617791935', 'credit'),
(32, '1006091', 20.00, 0.00, 20.00, 'pair income', '', '1617791935', 'credit'),
(33, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617792062', 'credit'),
(34, '1006090', 20.00, 0.00, 20.00, 'pair income', '', '1617792062', 'credit'),
(35, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617792541', 'credit'),
(36, '1006092', 20.00, 0.00, 20.00, 'pair income', '', '1617792541', 'credit'),
(37, '1006090', 20.00, 0.00, 20.00, 'pair income', '', '1617792541', 'credit'),
(38, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617792572', 'credit'),
(39, '1006094', 20.00, 0.00, 20.00, 'pair income', '', '1617792572', 'credit'),
(40, '1006090', 20.00, 0.00, 20.00, 'pair income', '', '1617792572', 'credit'),
(41, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617792949', 'credit'),
(42, '1006093', 20.00, 0.00, 20.00, 'pair income', '', '1617792949', 'credit'),
(43, '1006092', 20.00, 0.00, 20.00, 'pair income', '', '1617792949', 'credit'),
(44, '1006090', 20.00, 0.00, 20.00, 'pair income', '', '1617792949', 'credit'),
(45, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617793042', 'credit'),
(46, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617813275', 'credit'),
(47, '1006090', 20.00, 0.00, 20.00, 'pair income', '', '1617813275', 'credit'),
(48, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617813849', 'credit'),
(49, '1006094', 20.00, 0.00, 20.00, 'pair income', '', '1617813849', 'credit'),
(50, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617851870', 'credit'),
(51, '1006091', 20.00, 0.00, 20.00, 'pair income', '', '1617851870', 'credit'),
(52, '1006090', 20.00, 0.00, 20.00, 'pair income', '', '1617851870', 'credit'),
(53, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617852008', 'credit'),
(54, '1006100', 20.00, 0.00, 20.00, 'pair income', '', '1617852008', 'credit'),
(55, '1006090', 2.00, 0.00, 2.00, 'credit by paytm', 'deposit', '1617853578', 'credit'),
(56, '1006090', 33.00, 11.65, 21.35, '<a href=\"https://jamsrworld.com/demo/mlm2/assets/images/users/0472021153407c44b0549-bd49-4b0f-a899-b392f92c52fdpayment.jpg\" >QR Code</a>', 'withdraw', '1617853652', 'debit'),
(57, '1006090', 10.00, 0.00, 10.00, 'referral income', '', '1617861893', 'credit'),
(58, '1006102', 20.00, 0.00, 20.00, 'pair income', '', '1617861893', 'credit'),
(59, '1006090', 20.00, 0.00, 20.00, 'pair income', '', '1617861893', 'credit'),
(60, '1006090', 9.00, 0.00, 9.00, 'credit by paytm', 'deposit', '1617861954', 'credit'),
(61, '1006090', 99.00, 14.95, 84.05, '1234567890', 'withdraw', '1617862070', 'debit'),
(62, '1006090', 65.00, 13.25, 51.75, '1234567890', 'withdraw', '1617863790', 'debit'),
(63, '1006090', 343.00, 0.00, 343.00, 'bought 7 pins ', 'pin', '1617865107', 'debit');

-- --------------------------------------------------------

--
-- Table structure for table `tree`
--

CREATE TABLE `tree` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `referral_id` varchar(255) NOT NULL,
  `placement_id` varchar(255) NOT NULL,
  `placement_type` varchar(255) NOT NULL,
  `left_count` int(255) NOT NULL,
  `right_count` int(255) NOT NULL,
  `left_id` bigint(255) NOT NULL,
  `right_id` bigint(255) NOT NULL,
  `pair_count` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tree`
--

INSERT INTO `tree` (`id`, `user_id`, `referral_id`, `placement_id`, `placement_type`, `left_count`, `right_count`, `left_id`, `right_id`, `pair_count`) VALUES
(1, '1006090', '0', '0', 'left', 10, 10, 1006091, 1006092, 10),
(2, '1006091', '1006090', '1006090', 'left', 4, 5, 1006096, 1006095, 4),
(3, '1006092', '1006090', '1006090', 'right', 6, 3, 1006094, 1006093, 3),
(4, '1006093', '1006090', '1006092', 'right', 1, 1, 1006104, 1006101, 1),
(5, '1006094', '1006090', '1006092', 'left', 2, 3, 1006103, 1006102, 2),
(6, '1006095', '1006090', '1006091', 'right', 1, 3, 1006099, 1006100, 1),
(7, '1006096', '1006090', '1006091', 'left', 2, 1, 1006098, 1006097, 1),
(8, '1006097', '1006090', '1006096', 'right', 0, 0, 0, 0, 0),
(9, '1006098', '1006090', '1006096', 'left', 1, 0, 1006105, 0, 0),
(10, '1006099', '1006090', '1006095', 'left', 0, 0, 0, 0, 0),
(11, '1006100', '1006090', '1006095', 'right', 1, 1, 1006109, 1006108, 1),
(12, '1006101', '1006090', '1006093', 'right', 0, 0, 0, 0, 0),
(13, '1006102', '1006090', '1006094', 'right', 1, 1, 1006110, 1006106, 1),
(14, '1006103', '1006090', '1006094', 'left', 1, 0, 1006107, 0, 0),
(15, '1006104', '1006090', '1006093', 'left', 0, 0, 0, 0, 0),
(16, '1006105', '1006090', '1006098', 'left', 0, 0, 0, 0, 0),
(17, '1006106', '1006090', '1006102', 'right', 0, 0, 0, 0, 0),
(18, '1006107', '1006090', '1006103', 'left', 0, 0, 0, 0, 0),
(19, '1006108', '1006090', '1006100', 'right', 0, 0, 0, 0, 0),
(20, '1006109', '1006090', '1006100', 'left', 0, 0, 0, 0, 0),
(21, '1006110', '1006090', '1006102', 'left', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_pincode` varchar(255) NOT NULL,
  `user_contact_email` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `account_image` varchar(255) NOT NULL,
  `user_registration_date` varchar(255) NOT NULL,
  `user_account_number` varchar(255) NOT NULL,
  `user_upi` varchar(255) NOT NULL,
  `referal_code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `user_password`, `first_name`, `last_name`, `user_phone`, `user_address`, `user_pincode`, `user_contact_email`, `user_image`, `account_image`, `user_registration_date`, `user_account_number`, `user_upi`, `referal_code`, `status`) VALUES
(1, '1006090', 'admin', '$2y$10$GZY1UH.PbMzz0yGv3vX5V.MQJuJxHHPsPy1W.ABqnq4CwV9vbDg.q', 'Admin', 'Kumar', '911234567890', 'Sasaram', '821115', 'princeraj9137@gmail.com', '0472021154351a7576727-4b70-427c-a532-b050d9d2af64avatar.jpg', '0472021153407c44b0549-bd49-4b0f-a899-b392f92c52fdpayment.jpg', '1617786872', '1234567890', 'GHEY73637', '', 'active'),
(2, '1006091', 'XMPTJI37', '$2y$10$QL/JQKYP5V09fUineipngOxngOf2KGF./2d/gOrBhsw6qJrffwRCa', 'XMPTJI', 'XMPTJI', '123333333333', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617789976', '', '', 'XMPTJI37', 'active'),
(3, '1006092', 'FZK8Q97D', '$2y$10$5T8IAHWNumDgmqT4sz9VfO34dOiNS7eHNeSlEAvAJxyZoPxZ8WA9y', 'FZKQD', 'FZKQD', '1234567788999', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617790096', '', '', 'FZK8Q97D', 'active'),
(4, '1006093', '3SI6P87W', '$2y$10$Eo8KvcwvcVJXBCROLfoqVuK4vSpwKdO.011jqf4ZW/xeU2DQTkoIq', 'SIPW', 'SIPW', '1233445454554', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617790224', '', '', '3SI6P87W', 'active'),
(5, '1006094', 'EVASRGH5', '$2y$10$1mJNLSYXTRetfkbuKNvgk.lqUeb8KmkLnSWdmFU7sSNf8Ir6fKVHq', 'EVASRGH', 'EVASRGH', '3243523555523', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617790255', '', '', 'EVASRGH5', 'active'),
(6, '1006095', 'DQAZ9W1T', '$2y$10$8XwCiS2yuPVkwKDpFm/iKugObcyl6LeaiNyggDyDkJDF4JGgNS.Om', 'DQAZWT', 'DQAZWT', '1221334244243', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617790307', '', '', 'DQAZ9W1T', 'active'),
(7, '1006096', '4IZ37VXD', '$2y$10$TIq5rkDqJTtwfWzWSWcI.eCdfKaxYoh/QOfReUjAiRm76MSMlBrai', 'IZVXD', 'IZVXD', '4375643346435', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617790351', '', '', '4IZ37VXD', 'active'),
(8, '1006097', 'YKNWM2ZE', '$2y$10$XwCFoWSmTPQRtvLEgaNRM.XW09bhZvkUigVb3cFcDbuhwePJzQ.KW', 'YKNWMZE', 'YKNWMZE', '3425553245235', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617790988', '', '', 'YKNWM2ZE', 'active'),
(9, '1006098', 'M2HTXBUS', '$2y$10$.eadujnfjQuMNXQBSWxm0O0ttRvDUmAbAA78eTHfHfFe96gD6QwF.', 'MHTXBUS', 'MHTXBUS', '5436262452346', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617791044', '', '', 'M2HTXBUS', 'active'),
(10, '1006099', 'WC78YFAZ', '$2y$10$y.aB/bkKlJwt4h9kU2nQg.CYKNCSVvy4H0jNMmVI5wc9mBXlKGixi', 'WCYFAZ', 'WCYFAZ', '3124234143241', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617791096', '', '', 'WC78YFAZ', 'active'),
(11, '1006100', '4WA2PD1R', '$2y$10$o.tmTl.z9Of5hDA4KnVZjuZjDWJ9E4BGTsVecUK7Ez8RHv8U6uvfi', 'WAPDR', 'WAPDR', '2345525323453', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617791935', '', '', '4WA2PD1R', 'active'),
(12, '1006101', 'DGERLIZS', '$2y$10$MtYrLmmnSRgodL.8yWUcLuT4ksJgMPQVz1cpwQ8ylmkt8jog0JDPC', 'DGERLIZS', 'DGERLIZS', '3452342523423', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617792062', '', '', 'DGERLIZS', 'block'),
(13, '1006102', 'UL485ZVE', '$2y$10$LmbI0rQSPQqe.NDgHloNCO/D6ydoOrVcBqMdJVGQ4zFmo54RNq/oq', 'WAPDR', 'ULZVE', '5243623456234', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617792541', '', '', 'UL485ZVE', 'active'),
(14, '1006103', 'KMRXC87Z', '$2y$10$/Sex8kUSxQv1BEpbcJc5De/oCcSyVf/lv2OL142zAWmDZMPF99NxG', 'KMRXCZ', 'KMRXCZ', '5346234232342', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617792572', '', '', 'KMRXC87Z', 'active'),
(15, '1006104', 'Z6H3KEM1', '$2y$10$NQtJ6IiI5m2/02hSENe1e.KDVv255m0rk/YE.ESPMlRjs9P0NJiW.', 'ZHKEM', 'ZHKEM', '5634456565645', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617792949', '', '', 'Z6H3KEM1', 'active'),
(16, '1006105', 'CZ8RG6DA', '$2y$10$pT/Cem7cmIL/zDB9h3z33e191uLaSKPP.8XQIwDvkz.zlBFugdFNm', 'CZRGDA', 'CZRGDA', '6566345643636', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617793042', '', '', 'CZ8RG6DA', 'active'),
(17, '1006106', 'PC1ZBJ96', '$2y$10$/SqYpyCfoyVGjAAHfErmoexJvXiMCE9GCMdY2s3QBGjfcmddjmAHm', 'PCZBJ', 'PCZBJ', '6666666666666', '', '', 'jaickykumar790@gmail.com', 'avatar.jpg', '', '1617813275', '', '', 'PC1ZBJ96', 'active'),
(18, '1006107', 'ANT83FLD', '$2y$10$umCQHiC4dULvrO66vnjUFO8IgXMQxtITAs/DeX078pieZ.5TUwC2C', 'ANTFLD', 'ANTFLD', '8367234672465', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617813849', '', '', 'ANT83FLD', 'active'),
(19, '1006108', '8T1JV3XN', '$2y$10$f53MMzdHfyOyhnZTUIOP1u8zryCeBamdNpMhH/dvF28U2BrdZ7lZ2', 'TJVXN', 'TJVXN', '3452354235234', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617851870', '', '', '8T1JV3XN', 'active'),
(20, '1006109', 'G6BMQH8V', '$2y$10$vgvA0eLaMmJsV0mm8ILeUOLif8/zeD1lEySN2HziVmGFiFEvrbH2e', 'GBMQHV', 'GBMQHV', '4563546433643', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617852008', '', '', 'G6BMQH8V', 'active'),
(21, '1006110', 'FZNI2SEY', '$2y$10$coEhT5//HieFUb7hmvmOE.0jq0iJG1J81e8ZUP4OzIq4MVahUkIqC', 'FZNISEY', 'FZNISEY', '1234567788999', '', '', 'princeraj9137@gmail.com', 'avatar.jpg', '', '1617861893', '', '', 'FZNI2SEY', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `users_rewards`
--

CREATE TABLE `users_rewards` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `reward` varchar(255) NOT NULL,
  `reward_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_logs`
--

CREATE TABLE `wallet_logs` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `wallet` decimal(50,2) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_request`
--

CREATE TABLE `withdraw_request` (
  `withdraw_id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `charge` decimal(10,2) NOT NULL,
  `other_charge` decimal(10,2) NOT NULL,
  `payable` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `requested_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdraw_request`
--

INSERT INTO `withdraw_request` (`withdraw_id`, `user_id`, `amount`, `charge`, `other_charge`, `payable`, `payment_method`, `requested_date`, `status`, `payment_date`) VALUES
(1, '1006090', 19.00, 0.95, 10.00, 8.05, 'paytm||564261 256786  72897 912', '1617787531', 'success', '1617787539'),
(2, '1006090', 111.00, 5.55, 0.00, 105.45, 'paytm||564261 256786  72897 912', '1617788973', 'success', '1617789228'),
(3, '1006090', 1000.00, 50.00, 0.00, 950.00, 'qr||0472021153407c44b0549-bd49-4b0f-a899-b392f92c52fdpayment.jpg', '1617790660', 'success', '1617790729'),
(4, '1006090', 33.00, 1.65, 10.00, 21.35, 'qr||0472021153407c44b0549-bd49-4b0f-a899-b392f92c52fdpayment.jpg', '1617853638', 'success', '1617853652'),
(5, '1006090', 99.00, 4.95, 10.00, 84.05, 'paytm||1234567890', '1617861993', 'success', '1617862070'),
(6, '1006090', 65.00, 3.25, 10.00, 51.75, 'paytm||1234567890', '1617862478', 'success', '1617863790'),
(7, '1006090', 666.00, 33.30, 0.00, 632.70, '', '1617862844', 'pending', ''),
(8, '1006090', 999.00, 49.95, 0.00, 949.05, '', '1617862872', 'pending', ''),
(9, '1006090', 99.00, 4.95, 10.00, 84.05, '', '1617865207', 'pending', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocked_users`
--
ALTER TABLE `blocked_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capping`
--
ALTER TABLE `capping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_summary`
--
ALTER TABLE `deposit_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_history`
--
ALTER TABLE `income_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_session`
--
ALTER TABLE `login_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `pair_count`
--
ALTER TABLE `pair_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_session`
--
ALTER TABLE `payment_session`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pins`
--
ALTER TABLE `pins`
  ADD PRIMARY KEY (`pin_id`);

--
-- Indexes for table `pin_transfer_history`
--
ALTER TABLE `pin_transfer_history`
  ADD PRIMARY KEY (`serial_number`);

--
-- Indexes for table `rewards_tbl`
--
ALTER TABLE `rewards_tbl`
  ADD PRIMARY KEY (`reward_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_rewards`
--
ALTER TABLE `users_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_logs`
--
ALTER TABLE `wallet_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blocked_users`
--
ALTER TABLE `blocked_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `capping`
--
ALTER TABLE `capping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deposit_summary`
--
ALTER TABLE `deposit_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `income_history`
--
ALTER TABLE `income_history`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `login_session`
--
ALTER TABLE `login_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pair_count`
--
ALTER TABLE `pair_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_session`
--
ALTER TABLE `payment_session`
  MODIFY `payment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pins`
--
ALTER TABLE `pins`
  MODIFY `pin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `pin_transfer_history`
--
ALTER TABLE `pin_transfer_history`
  MODIFY `serial_number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rewards_tbl`
--
ALTER TABLE `rewards_tbl`
  MODIFY `reward_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tree`
--
ALTER TABLE `tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_rewards`
--
ALTER TABLE `users_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_logs`
--
ALTER TABLE `wallet_logs`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  MODIFY `withdraw_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
