-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 12, 2021 at 06:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poolgrab`
--

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `id` int(11) NOT NULL,
  `uid` varchar(11) NOT NULL,
  `poolname` varchar(200) NOT NULL,
  `pooladdress` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `telephone` varchar(200) NOT NULL,
  `pooldes` varchar(200) NOT NULL,
  `purpose` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `poolsize` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `billing` varchar(200) NOT NULL,
  `cycle` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL,
  `video` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`id`, `uid`, `poolname`, `pooladdress`, `city`, `telephone`, `pooldes`, `purpose`, `age`, `poolsize`, `type`, `billing`, `cycle`, `price`, `img1`, `img2`, `img3`, `video`, `time`, `start_time`, `end_time`) VALUES
(1, '1', 'villa', 'P345 ', 'Ali town Jaranwala road Faisalabad', '031218888888', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', '2021-02-12 17:38:32', NULL),
(2, '1', 'opoop', 'C 112', 'Eden garder Faisalabad', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', 'ok', '2021-02-12 17:39:24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
