-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 11:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kar-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_number` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `account_balance` double(11,2) NOT NULL,
  `account_type` varchar(20) DEFAULT NULL,
  `investment_account_type` varchar(20) NOT NULL,
  `last_transaction_date` datetime NOT NULL DEFAULT current_timestamp(),
  `account_status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_number`, `user_name`, `account_balance`, `account_type`, `investment_account_type`, `last_transaction_date`, `account_status`) VALUES
(1, 'maneesh', 100.00, 'Checking', '', '2022-12-16 10:28:30', 1),
(2, 'naresh', 2900.00, 'Investment', 'Individual', '2022-12-16 10:28:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `address`) VALUES
(1, 'LTIMindtree', 'vidhannagar, kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_logs`
--

CREATE TABLE `transaction_logs` (
  `trans_id` int(11) NOT NULL,
  `account_number` int(11) NOT NULL,
  `trans_amount` double(11,2) NOT NULL DEFAULT 0.00,
  `transaction_type` varchar(20) NOT NULL,
  `transaction_date` datetime NOT NULL DEFAULT current_timestamp(),
  `trans_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_logs`
--

INSERT INTO `transaction_logs` (`trans_id`, `account_number`, `trans_amount`, `transaction_type`, `transaction_date`, `trans_status`) VALUES
(1, 2, 2000.00, 'Deposit', '2022-12-14 15:36:23', 'Success'),
(2, 1, 1000.00, 'Transfer', '2022-12-14 15:38:55', 'Success'),
(3, 2, 2000.00, 'Deposit', '2022-12-15 02:40:19', 'Success'),
(4, 2, 500.00, 'Withdrawal', '2022-12-16 05:39:14', 'Success'),
(5, 8, 2000.00, 'Deposit', '2022-12-16 05:54:10', 'Success'),
(6, 1, 1000.00, 'Transfer', '2022-12-16 05:54:22', 'Success'),
(7, 1, 2000.00, 'Deposit', '2022-12-16 09:54:11', 'Success'),
(8, 1, 2000.00, 'Deposit', '2022-12-16 09:54:18', 'Success'),
(9, 1, 5000.00, 'Withdrawal', '2022-12-16 09:54:39', 'Success'),
(10, 1, 2000.00, 'Withdrawal', '2022-12-16 09:54:59', 'Success'),
(11, 1, 2000.00, 'Deposit', '2022-12-16 09:55:43', 'Success'),
(12, 1, 500.00, 'Withdrawal', '2022-12-16 09:56:20', 'Success'),
(13, 1, 500.00, 'Withdrawal', '2022-12-16 09:56:29', 'Success'),
(14, 1, 500.00, 'Withdrawal', '2022-12-16 09:56:33', 'Success'),
(15, 1, 500.00, 'Withdrawal', '2022-12-16 09:56:46', 'Success'),
(16, 1, 1000.00, 'Transfer', '2022-12-16 09:57:15', 'Success'),
(17, 1, 1000.00, 'Transfer', '2022-12-16 09:57:24', 'Success'),
(18, 1, 1000.00, 'Transfer', '2022-12-16 09:58:15', 'Success'),
(19, 1, 2000.00, 'Deposit', '2022-12-16 10:19:54', 'Success'),
(20, 1, 500.00, 'Withdrawal', '2022-12-16 10:19:58', 'Success'),
(21, 2, 1000.00, 'Transfer', '2022-12-16 10:20:13', 'Success'),
(22, 2, 1000.00, 'Transfer', '2022-12-16 10:20:16', 'Success'),
(23, 1, 500.00, 'Withdrawal', '2022-12-16 10:27:24', 'Success'),
(24, 1, 100.00, 'Transfer', '2022-12-16 10:28:30', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '1=active,0=inactive',
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_number`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_logs`
--
ALTER TABLE `transaction_logs`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction_logs`
--
ALTER TABLE `transaction_logs`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
