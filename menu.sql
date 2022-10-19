-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 01:03 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(64) NOT NULL,
  `nama_menu` varchar(64) NOT NULL,
  `tall` int(64) NOT NULL,
  `grande` int(64) NOT NULL,
  `venti` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama_menu`, `tall`, `grande`, `venti`) VALUES
(1, 'Caramel Java Chip', 53000, 58000, 62000),
(2, 'Mocha', 48000, 53000, 58000),
(3, 'Dark Mocha', 53000, 58000, 62000),
(4, 'Java Chip', 53000, 58000, 62000),
(5, 'Coffe', 39000, 43000, 46000),
(6, 'Asian Dolce', 48000, 53000, 58000),
(7, 'Vanilla Cream', 46000, 51000, 55000),
(8, 'Chocolate Chip Cream', 53000, 58000, 62000),
(9, 'Green Tea Cream', 53000, 58000, 62000),
(10, 'Mango Passion Fruit', 39000, 43000, 46000),
(11, 'Raspberry Black Currant', 39000, 43000, 46000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
