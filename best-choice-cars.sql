CREATE DATABASE `best-choice-cars`;

USE `best-choice-cars`;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2021 at 08:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `best-choice-cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand`) VALUES
(1, 'Hyundai'),
(2, 'Honda'),
(3, 'Maruti Suzuki'),
(4, 'Tata');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `brand` text NOT NULL,
  `model` varchar(10) NOT NULL,
  `year` int(11) NOT NULL,
  `num_of_kms` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `fuel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `b_id`, `brand`, `model`, `year`, `num_of_kms`, `price`, `fuel`) VALUES
(1, 1, 'Hyundai', 'i10', 2019, 10000, 300000, 'Petrol'),
(2, 1, 'Hyundai', 'i20', 2018, 20000, 200000, 'Diesel'),
(3, 1, 'Hyundai', 'Verna', 2019, 15000, 250000, 'Petrol'),
(4, 4, 'Tata', 'Bolt', 2019, 15000, 250000, 'Petrol'),
(5, 3, 'Maruti Suzuki', 'Ciaz', 2019, 5000, 600000, 'Petrol'),
(6, 2, 'Honda', 'Jazz', 2018, 20000, 200000, 'Diesel'),
(7, 2, 'Honda', 'City', 2019, 15000, 400000, 'Diesel'),
(8, 3, 'Maruti Suzuki', 'Ertiga', 2018, 10000, 500000, 'Petrol'),
(9, 4, 'Tata', 'Nexon', 2019, 5000, 600000, 'Petrol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cars_ibfk_1` (`b_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `brands` (`brand_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
