-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 08:07 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `friends_mf`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `account_no` varchar(50) NOT NULL,
  `total_money` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `customer_id`, `account_no`, `total_money`) VALUES
(7, 14, '789456', 150000),
(8, 15, '145698', 5000),
(9, 16, '0583620', 2000),
(10, 17, '1234422', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `date_birth` varchar(255) NOT NULL,
  `nid` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `user_name`, `father_name`, `mother_name`, `gender`, `date_birth`, `nid`, `address`, `contact`, `mail`, `password`) VALUES
(14, 'abul', 'kalam', 'abul34.kalam', 'karim mia', 'sokhina bibi', 'male', '12/04/1988', '65465465', 'address address address address', '0125478', 'abul@gmail.com', '123456'),
(15, 'mridul', 'hasan', 'mridul', 'moinul', 'slipi begum', 'male', '10/10/1980', '45654', 'asfasdfdddzsds', '54555111', 'mridul@gmail.com', '456123'),
(16, 'himel', 'mojumdar', 'himel1', 'rafiq mozumdar', 'aysha khatun', 'male', '18/4/1990', '54564154', 'some address', '017894561', 'himel@gmail.com', '123456'),
(17, 'jibon', 'chawdhuri', 'jibon12', 'manik chawdhuri', 'jomila bibi', 'male', '11/01/1987', '52146', 'asdfghjkliopquwer', '010256987', 'jibon@gmail.com', '456789');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `interest` float NOT NULL,
  `duration` varchar(255) NOT NULL,
  `loan_id` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `name`, `amount`, `interest`, `duration`, `loan_id`, `details`) VALUES
(2, 'Home Loan', '4000000', 5, '5', 'HL01', 'This is a Home Loan'),
(3, 'Car Loan', '3000000', 8, '3', 'CL01', 'This is a Car Loan'),
(4, 'Study', '500000', 1, '8', 'SL01', 'This is Study loan');

-- --------------------------------------------------------

--
-- Table structure for table `map_account_loans`
--

CREATE TABLE `map_account_loans` (
  `id` int(11) NOT NULL,
  `accounts_id` int(11) NOT NULL,
  `loans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map_account_loans`
--

INSERT INTO `map_account_loans` (`id`, `accounts_id`, `loans_id`) VALUES
(1, 8, 2),
(2, 7, 3),
(3, 9, 2),
(8, 9, 3),
(9, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nominees`
--

CREATE TABLE `nominees` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `date_birth` varchar(255) NOT NULL,
  `nid` varchar(255) NOT NULL,
  `relation_customer` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nominees`
--

INSERT INTO `nominees` (`id`, `customer_id`, `first_name`, `last_name`, `father_name`, `mothers_name`, `gender`, `date_birth`, `nid`, `relation_customer`, `contact`) VALUES
(2, 14, 'saidul', 'islam', 'mokjbul hossen', 'monira akhter', 'male', '12/04/1988', '646546', 'friend', '6465464'),
(3, 15, 'shipon', 'hasan', 'moinul', 'shilpi begum', 'male', '22/4/1985', '6546556465', 'Brother', '01235478'),
(4, 16, 'nishi ', 'mazumdar', 'rafiq mozumdar', 'aysha khatun', 'female', '12/06/1993', '5485415', 'Sister', '654545'),
(5, 17, 'rafiq', 'mia', 'robi mia', 'jomiron begum', 'male', '15/2/1987', '3245235', 'friend', '010587954');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_no` (`account_no`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map_account_loans`
--
ALTER TABLE `map_account_loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_id` (`accounts_id`),
  ADD KEY `loans_id` (`loans_id`);

--
-- Indexes for table `nominees`
--
ALTER TABLE `nominees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custormer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `map_account_loans`
--
ALTER TABLE `map_account_loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `nominees`
--
ALTER TABLE `nominees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `map_account_loans`
--
ALTER TABLE `map_account_loans`
  ADD CONSTRAINT `map_account_loans_ibfk_1` FOREIGN KEY (`accounts_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `map_account_loans_ibfk_2` FOREIGN KEY (`loans_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nominees`
--
ALTER TABLE `nominees`
  ADD CONSTRAINT `nominees_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
