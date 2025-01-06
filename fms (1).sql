-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2024 at 03:51 AM
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
-- Database: `fms`
--

-- --------------------------------------------------------

--
-- Table structure for table `festivals`
--

CREATE TABLE `festivals` (
  `fid` int(11) NOT NULL,
  `festivalname` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `expenses` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `festivals`
--

INSERT INTO `festivals` (`fid`, `festivalname`, `date`, `expenses`) VALUES
(12, 'myfestival', '2025-12-12', 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `MID` int(50) NOT NULL,
  `musicname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`MID`, `musicname`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Jazz'),
(4, 'Classical'),
(5, 'Hip Hop'),
(6, 'R&B'),
(7, 'Electronic'),
(8, 'Country'),
(9, 'Blues'),
(10, 'Reggae'),
(11, 'Metal'),
(12, 'Folk'),
(13, 'Punk'),
(14, 'Latin'),
(15, 'Soul'),
(16, 'Funk'),
(17, 'Disco'),
(18, 'Indie'),
(19, 'Gospel'),
(20, 'Opera');

-- --------------------------------------------------------

--
-- Table structure for table `performances`
--

CREATE TABLE `performances` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `festival` varchar(100) NOT NULL,
  `nameofcreator` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `schedule` datetime NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL,
  `type_of_music` varchar(50) NOT NULL,
  `band_member_1` varchar(50) DEFAULT NULL,
  `band_member_2` varchar(50) DEFAULT NULL,
  `band_member_3` varchar(50) DEFAULT NULL,
  `band_member_4` varchar(50) DEFAULT NULL,
  `band_member_5` varchar(50) DEFAULT NULL,
  `band_member_6` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `performances`
--

INSERT INTO `performances` (`id`, `name`, `festival`, `nameofcreator`, `description`, `comment`, `schedule`, `status`, `type_of_music`, `band_member_1`, `band_member_2`, `band_member_3`, `band_member_4`, `band_member_5`, `band_member_6`) VALUES
(24, 'artist1', 'myfestival', 'panos', 'mymusic', 'good', '2025-12-12 15:40:00', 'approved', 'Rock', 'paul', 'george', 'jimmy', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` enum('staff','artist','organiser') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `roles`) VALUES
(1, 'art1', '123', 'artist'),
(2, 'org1', '123', 'organiser'),
(3, 'st1', '123', 'staff'),
(19, 'artist1', '123', 'artist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `festivals`
--
ALTER TABLE `festivals`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `performances`
--
ALTER TABLE `performances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `festivals`
--
ALTER TABLE `festivals`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `performances`
--
ALTER TABLE `performances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
