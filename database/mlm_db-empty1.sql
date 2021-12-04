-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 10:59 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlm_db`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `user_id`, `wallet`, `income`, `total_income`, `total_withdrawl`, `expenditure`, `pending`, `last_added_money`, `total_added_money`, `last_withdrawl`) VALUES
(1, '1006091', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `blocked_users`
--

CREATE TABLE `blocked_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `blocked_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `capping`
--

CREATE TABLE `capping` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `income` decimal(10,2) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `login_session`
--

INSERT INTO `login_session` (`id`, `user_id`, `session_id`, `loggedin_at`, `valid_till`) VALUES
(1, '1006090', '6f8a911c779f426d9f6a85b0d3b03288', '1622017090', '1622018890'),
(3, '1006091', '5523220d3f614df48358bab570fc234e', '1623229013', '1623230813');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pair_count`
--

CREATE TABLE `pair_count` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `pair_count` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pair_count`
--

INSERT INTO `pair_count` (`id`, `user_id`, `date`, `pair_count`) VALUES
(1, '1006090', '1623171600', '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pins`
--

INSERT INTO `pins` (`pin_id`, `pin`, `pin_creator`, `date_created`, `status`, `activation_date`) VALUES
(1, 'ZFMRYBE6', '1006090', '1623228856', 'active', '1623228953'),
(2, 'XZSENDRJ', '1006090', '1623228856', 'inactive', 'Not active'),
(3, '941W5TIF', '1006090', '1623228856', 'inactive', 'Not active'),
(4, 'YXSMV1ZN', '1006090', '1623228856', 'inactive', 'Not active'),
(5, 'FHZ2L7YJ', '1006090', '1623228856', 'inactive', 'Not active'),
(6, 'LSV54B2F', '1006090', '1623228856', 'inactive', 'Not active'),
(7, 'RUJZC6B4', '1006090', '1623228856', 'inactive', 'Not active'),
(8, '5I6CJKQL', '1006090', '1623228856', 'inactive', 'Not active'),
(9, 'PDGA456J', '1006090', '1623228856', 'inactive', 'Not active'),
(10, 'WSG5FM3C', '1006090', '1623228856', 'inactive', 'Not active');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pin_transfer_history`
--

INSERT INTO `pin_transfer_history` (`serial_number`, `pin_creator`, `pin_count`, `expenditue`, `date_created`) VALUES
(1, '1006090', '10', '0.00', '1623228856');

-- --------------------------------------------------------

--
-- Table structure for table `rewards_tbl`
--

CREATE TABLE `rewards_tbl` (
  `reward_id` int(255) NOT NULL,
  `matching_pair` varchar(255) NOT NULL,
  `reward` varchar(1000) NOT NULL,
  `level` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rewards_tbl`
--

INSERT INTO `rewards_tbl` (`reward_id`, `matching_pair`, `reward`, `level`) VALUES
(1, '200', '4000000', 'Basic'),
(2, '1000', '20000000', 'Bronze'),
(3, '2000', '40000000', 'Silver'),
(4, '4000', '80000000', 'Gold'),
(5, '14000', '280000000', 'Platinum'),
(6, '21000', '280000000', 'Diamond'),
(7, '28000', '280000000', 'White Pearl'),
(8, '35000', '280000000', 'Gold Pearl'),
(9, '42000', '280000000', 'Black Pearl');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_plan`
--

CREATE TABLE `subscribe_plan` (
  `id` int(255) NOT NULL,
  `plan_name` varchar(15) NOT NULL,
  `price` int(11) NOT NULL,
  `ref_commision` int(3) NOT NULL,
  `bonus_bv` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subscribe_plan`
--

INSERT INTO `subscribe_plan` (`id`, `plan_name`, `price`, `ref_commision`, `bonus_bv`) VALUES
(1, 'PEMULA', 1400000, 10, 1),
(2, 'SENIOR', 3800000, 10, 3),
(3, 'EXPERT', 8600000, 10, 7),
(4, 'PROFESIONAL', 18200000, 10, 15);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`transaction_id`, `user_id`, `amount`, `transaction_charge`, `net_amount`, `description`, `category`, `date`, `status`) VALUES
(1, '1006090', '0.00', '0.00', '0.00', 'bought 10 pins ', 'pin', '1623228856', 'debit');

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
  `pair_count` int(255) NOT NULL,
  `bv_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tree`
--

INSERT INTO `tree` (`id`, `user_id`, `referral_id`, `placement_id`, `placement_type`, `left_count`, `right_count`, `left_id`, `right_id`, `pair_count`, `bv_count`) VALUES
(1, '1006091', '1006090', '1006090', 'left', 0, 0, 0, 0, 0, 0);

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
  `status` varchar(255) NOT NULL,
  `account_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `user_password`, `first_name`, `last_name`, `user_phone`, `user_address`, `user_pincode`, `user_contact_email`, `user_image`, `account_image`, `user_registration_date`, `user_account_number`, `user_upi`, `referal_code`, `status`, `account_type`) VALUES
(1, '1006090', 'admin', '$2y$10$2GiBypcuFmttrNeXZemN/.HVn2HaNhR7Hq4eVTR3AevEQqGJB7mZC', 'Admin', 'Kumar', '911234567890', 'Sasaram', '821115', 'princeraj9137@gmail.com', '052620211518517bb9f02a-02aa-4308-b9be-2a93eb43bcf2avatar.jpg', '0472021153407c44b0549-bd49-4b0f-a899-b392f92c52fdpayment.jpg', '1617786872', '1234567890', 'GHEY73637', '', 'active', NULL),
(2, '1006091', 'indosukarno', '$2y$10$UaZylhPfgMSbgfW.OV37IORr97Hh0eNTOGD6AjxYEhh5K2rLp2SaS', 'Indo', 'Sukarno', '6285694258606', '', '', 'vonspinger@gmail.com', 'avatar.jpg', '', '1623228953', '', '', 'ZFMRYBE6', 'active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_plan`
--

CREATE TABLE `users_plan` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `plan_id` int(255) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_logs`
--

CREATE TABLE `wallet_logs` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `wallet` decimal(50,2) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blocked_users`
--
ALTER TABLE `blocked_users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `capping`
--
ALTER TABLE `capping`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `deposit_summary`
--
ALTER TABLE `deposit_summary`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `income_history`
--
ALTER TABLE `income_history`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `login_session`
--
ALTER TABLE `login_session`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`otp_id`) USING BTREE;

--
-- Indexes for table `pair_count`
--
ALTER TABLE `pair_count`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payment_session`
--
ALTER TABLE `payment_session`
  ADD PRIMARY KEY (`payment_id`) USING BTREE;

--
-- Indexes for table `pins`
--
ALTER TABLE `pins`
  ADD PRIMARY KEY (`pin_id`) USING BTREE;

--
-- Indexes for table `pin_transfer_history`
--
ALTER TABLE `pin_transfer_history`
  ADD PRIMARY KEY (`serial_number`) USING BTREE;

--
-- Indexes for table `rewards_tbl`
--
ALTER TABLE `rewards_tbl`
  ADD PRIMARY KEY (`reward_id`) USING BTREE;

--
-- Indexes for table `subscribe_plan`
--
ALTER TABLE `subscribe_plan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`token_id`) USING BTREE;

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`transaction_id`) USING BTREE;

--
-- Indexes for table `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_plan`
--
ALTER TABLE `users_plan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_rewards`
--
ALTER TABLE `users_rewards`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `wallet_logs`
--
ALTER TABLE `wallet_logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  ADD PRIMARY KEY (`withdraw_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blocked_users`
--
ALTER TABLE `blocked_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `capping`
--
ALTER TABLE `capping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit_summary`
--
ALTER TABLE `deposit_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income_history`
--
ALTER TABLE `income_history`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_session`
--
ALTER TABLE `login_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pair_count`
--
ALTER TABLE `pair_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_session`
--
ALTER TABLE `payment_session`
  MODIFY `payment_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pins`
--
ALTER TABLE `pins`
  MODIFY `pin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pin_transfer_history`
--
ALTER TABLE `pin_transfer_history`
  MODIFY `serial_number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rewards_tbl`
--
ALTER TABLE `rewards_tbl`
  MODIFY `reward_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscribe_plan`
--
ALTER TABLE `subscribe_plan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tree`
--
ALTER TABLE `tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_plan`
--
ALTER TABLE `users_plan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

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
  MODIFY `withdraw_id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
