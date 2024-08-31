-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2024 at 07:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkeasy`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `parkingname` varchar(300) NOT NULL,
  `partneremail` varchar(300) NOT NULL,
  `useremail` varchar(300) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `floor_no` int(11) NOT NULL,
  `slot_no` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `id` int(8) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`parkingname`, `partneremail`, `useremail`, `total_cost`, `floor_no`, `slot_no`, `start`, `end`, `id`, `status`) VALUES
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 1, 4, '2024-06-15 10:00:00', '2024-06-15 12:00:00', 2, 'approved'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 625, 1, 7, '2024-06-15 01:12:13', '2024-06-16 02:12:13', 4, 'approved'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 650, 2, 3, '2024-06-15 01:13:38', '2024-06-16 03:13:38', 5, 'approved'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 725, 2, 9, '2024-06-15 01:23:10', '2024-06-16 06:23:10', 7, 'rejected'),
('vr mall', 'sk@gmail.com', 'gvg', 1420, 1, 12, '2024-06-15 01:31:00', '2024-06-18 00:31:00', 13, 'approved'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 725, 2, 9, '2024-06-15 01:35:00', '2024-06-16 06:35:00', 15, 'approved'),
('Palazzo', 'sk@gmail.com', 'gvg', 12875, 1, 15, '2024-06-15 01:37:00', '2024-06-16 02:37:00', 16, 'pending'),
('Palazzo', 'sk@gmail.com', 'gvg', 14420, 1, 15, '2024-06-15 01:37:00', '2024-06-21 05:37:00', 17, 'pending'),
('Palazzo', 'sk@gmail.com', 'gvg', 12360, 1, 15, '2024-06-15 10:40:00', '2024-06-16 10:40:00', 18, 'pending'),
('vr mall', 'sk@gmail.com', 'gvg', 960, 2, 4, '2024-06-15 01:49:00', '2024-06-17 01:49:00', 19, 'pending'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 650, 1, 8, '2024-06-15 02:01:00', '2024-06-16 04:01:00', 20, 'pending'),
('vr mall', 'sk@gmail.com', 'gvg', 480, 1, 1, '2024-06-20 19:21:00', '2024-06-21 19:21:00', 21, 'pending'),
('Palazzo', 'sk@gmail.com', 'gvg', 515, 1, 3, '2024-06-21 08:40:00', '2024-06-21 09:40:00', 22, 'pending'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 1, 3, '2024-06-22 22:23:00', '2024-06-22 23:23:00', 23, 'approved'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 1, 4, '2024-06-22 22:56:00', '2024-06-22 23:56:00', 24, 'pending'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 675, 1, 1, '2024-07-10 13:28:00', '2024-07-11 16:28:00', 26, 'approved'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 300, 1, 9, '2024-07-13 11:30:00', '2024-07-13 23:30:00', 27, 'pending'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 300, 1, 9, '2024-07-13 11:28:00', '2024-07-13 23:28:00', 28, 'pending'),
('SCON', 'sk@gmail.com', 'gvg', 25, 1, 1, '2024-07-15 12:06:00', '2024-07-15 13:06:00', 29, 'approved'),
('vijayshanthi', 'sk@gmail.com', 'gvg', 25, 1, 1, '2024-07-19 10:33:00', '2024-07-19 11:33:00', 30, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `floors` int(11) NOT NULL,
  `plots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`plots`)),
  `email` varchar(25) NOT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`id`, `name`, `cost`, `floors`, `plots`, `email`, `status`) VALUES
(4, 'vijayshanthi', 25.00, 2, '[10,12]', 'sk@gmail.com', 'approved'),
(5, 'Palazzo', 515.00, 2, '[25,12]', 'sk@gmail.com', 'approved'),
(6, 'vr mall', 20.00, 2, '[12,15]', 'sk@gmail.com', 'approved'),
(7, 'SCON', 25.00, 3, '[10,15,20]', 'sk@gmail.com', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `mobile` int(10) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `name` varchar(25) NOT NULL,
  `upiid` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`email`, `password`, `mobile`, `gender`, `name`, `upiid`) VALUES
('gvg', 'vvv', 55, 'Male', 'vbg', 'vijya@oksbi'),
('sk@gmail.com', '123', 71, 'mle', 'superman', 'ok@sbi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `mobile` int(10) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `Name` text NOT NULL,
  `upiid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`, `mobile`, `gender`, `Name`, `upiid`) VALUES
('gvg', 'ggg', 66566, 'Male', 'fr', 'hello@oksbi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
