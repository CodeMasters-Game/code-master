-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 06:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codemasters_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `player_id` int(255) NOT NULL,
  `myitem_id` int(255) NOT NULL,
  `myitem_no` int(255) NOT NULL,
  `myitem_name` varchar(255) NOT NULL,
  `myitem_price` int(255) NOT NULL,
  `myitem_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`player_id`, `myitem_id`, `myitem_no`, `myitem_name`, `myitem_price`, `myitem_image`) VALUES
(16, 4, 3, 'Hero Border', 1999, 'shop3.png'),
(16, 5, 2, 'Mulawin Border', 1999, 'shop2.png'),
(16, 6, 4, 'Ube Border', 1999, 'shop4.png'),
(16, 7, 4, 'Ube Border', 1999, 'shop4.png'),
(16, 8, 1, 'Voltes-5 Border', 1999, 'shop1.png'),
(16, 9, 6, 'Rose Border', 1999, 'shop6.png');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `user-id` int(255) NOT NULL,
  `user-name` varchar(255) NOT NULL,
  `user-email` varchar(255) NOT NULL,
  `user-password` varchar(255) NOT NULL,
  `user-level` int(255) NOT NULL,
  `user-rank` int(255) NOT NULL,
  `rank-star` int(255) NOT NULL,
  `user-diamonds` int(255) NOT NULL,
  `user-exp` int(255) NOT NULL,
  `user-points` int(255) NOT NULL,
  `user-totalTries` int(255) NOT NULL,
  `user-avatarBorder` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`user-id`, `user-name`, `user-email`, `user-password`, `user-level`, `user-rank`, `rank-star`, `user-diamonds`, `user-exp`, `user-points`, `user-totalTries`, `user-avatarBorder`) VALUES
(16, 'sample1', 'sample1@gmail.com', '$2y$10$XsIWbhbSZx.QFOrlC0BCxePLnpcsq5AeX41MZnSsmMs2BKdQL1eAK', 27, 5, 0, 9800, 40, 41, 88, 'shop3.png'),
(17, 'sample2', 'sample2@gmail.com', '$2y$10$9dU4gVtxyuNyLnnt.gqMwuOxZZgn0DJB3VAuyYhdGNz1AL7CXTToa', 1, 1, 0, 1000, 0, 1, 1, 'border1.png'),
(18, 'sample3', 'sample3@gmail.com', '$2y$10$pfnzmtofGT1KOU/LIbsqleOAegjtETiX1I0Vl.lqiT7yY5uC0CLXS', 1, 1, 0, 1000, 0, 1, 1, 'border1.png'),
(19, 'sample4', 'sample4@gmail.com', '$2y$10$4VeeC3D3sA1QfclnVAagaO0oJsWyOe47MAMW9MWxZmvt4df84O5Ui', 1, 1, 0, 1000, 0, 1, 1, 'border1.png'),
(20, 'sample5', 'sample5@gmail.com', '$2y$10$pbuohDlQlbpNNcOceARkXOII1TPgBuCvob3f7CtWj/JeNFvOV3H6u', 1, 1, 0, 1000, 0, 1, 1, 'border1.png'),
(21, 'sample6', 'sample6@gmail.com', '$2y$10$0vvtAzXwNmwyNontZ85e2OIs5zlcRgLuWVtDMHEkrl.6.gnJEDXjy', 1, 1, 0, 1000, 0, 1, 1, 'border1.png');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `item_no` int(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` int(255) NOT NULL,
  `item_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`item_no`, `item_name`, `item_price`, `item_image`) VALUES
(1, 'Voltes-5 Border', 1999, 'shop1.png'),
(2, 'Mulawin Border', 1999, 'shop2.png'),
(3, 'Hero Border', 1999, 'shop3.png'),
(4, 'Ube Border', 1999, 'shop4.png'),
(5, 'Gods Border', 1999, 'shop5.png'),
(6, 'Rose Border', 1999, 'shop6.png'),
(7, 'LOL Border', 1999, 'shop7.png'),
(8, 'Glow Border', 1999, 'shop8.png'),
(9, 'NEXT Border', 1999, 'shop9.png'),
(10, 'Toro Border', 1999, 'shop10.png'),
(11, '515 Border', 1999, 'shop11.png'),
(12, 'Book Border', 1999, 'shop12.png');

-- --------------------------------------------------------

--
-- Table structure for table `tailwind-answers`
--

CREATE TABLE `tailwind-answers` (
  `level_no` int(255) NOT NULL,
  `level_answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tailwind-answers`
--

INSERT INTO `tailwind-answers` (`level_no`, `level_answer`) VALUES
(1, 'justify-center'),
(2, 'justify-end'),
(3, 'justify-between'),
(4, 'justify-evenly');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`myitem_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`user-id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`item_no`);

--
-- Indexes for table `tailwind-answers`
--
ALTER TABLE `tailwind-answers`
  ADD PRIMARY KEY (`level_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `myitem_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `user-id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `item_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tailwind-answers`
--
ALTER TABLE `tailwind-answers`
  MODIFY `level_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
