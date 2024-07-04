-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2024 at 03:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `encrypted_data`
--

CREATE TABLE `encrypted_data` (
  `id` int NOT NULL,
  `encrypted_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `encrypted_data`
--

INSERT INTO `encrypted_data` (`id`, `encrypted_data`) VALUES
(1, 'dm5R9ZmCMlCMcr8W/ZzI8+LXDvgccm1G2YXv4bnKSxz180Kg7Ty46xB0rg25QDBsZuVKkmdXdAhSGtxlqfctRA=='),
(2, 'b9L0ZKLrNNdFtiAyIlipkS2r3XGXtna54u9kWnVQLHuSwkf6a2TsQ2O6EiIP01BnAmIdvWiG/8qAZOFJDklbQw=='),
(3, 'ViGw7Rer3JgN02PMV7DIf2nVzCYWwpUveZ2A8c69DEkMmbRrRoiptGrq6A9bKDE0h3xjq0cHo7I2IS6tAu/EmQ=='),
(4, 'OKsnIiSqMroHR7LTPhukxr9xgJm+/u0wWkqnuS5KQXsrQ2kV975Yi8/hSgPrx2S7qXf+qTss/u8MT61zUePezQ=='),
(5, 'HfaeMOj1yXKJqFITf/DW5aW7KVoa2wopOa8MKiYJYHJ/eTyjNFxfFyLibNFRFQHMzrXds/GzpGr4oOIoNvxocA==');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `encrypted_data`
--
ALTER TABLE `encrypted_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `encrypted_data`
--
ALTER TABLE `encrypted_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
