-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 15, 2024 at 03:09 PM
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
-- Database: `vacation tagging system`
--

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `ID` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `vacation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`ID`, `users_id`, `vacation_id`) VALUES
(243, 3, 42),
(244, 3, 49),
(245, 3, 44),
(246, 3, 43),
(247, 3, 52),
(248, 3, 41),
(249, 3, 46),
(250, 3, 48),
(251, 3, 45),
(252, 3, 40);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `password` float NOT NULL,
  `role` varchar(200) NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `first_name`, `last_name`, `email`, `password`, `role`) VALUES
(1, 'admiNiv', 'adminMay', 'nivmaymon6@gmail.com', 123456, 'admin'),
(2, 'niv', 'maymon', 'niv@gmail.com', 111111, 'User'),
(3, 'moriya', 'alkoby', 'moriya@gmail.com', 11111, 'User'),
(4, 'דשד', 'שדשד', 'saass@asd.com', 4545450, 'User'),
(5, 'שדדש', 'שדשד', 'some@body.com', 1111, 'User'),
(6, 'shimon', 'klein', 'shimon@gmail.com', 1235, 'User'),
(7, 'NN', 'EWW', 'N@EW.COM', 0, 'User'),
(8, 'asdasdad', 'asdasdasd', 'aas@asas.com', 121212, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
  `ID` int(11) NOT NULL,
  `vacation_destination` varchar(200) NOT NULL,
  `vacation_Description` text NOT NULL,
  `vacation_start_date` date NOT NULL DEFAULT current_timestamp(),
  `vacation_end_date` date NOT NULL DEFAULT current_timestamp(),
  `price` float NOT NULL,
  `img_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vacation`
--

INSERT INTO `vacation` (`ID`, `vacation_destination`, `vacation_Description`, `vacation_start_date`, `vacation_end_date`, `price`, `img_name`) VALUES
(40, 'tokyo', 'fly to tokyo', '2024-01-01', '2024-01-01', 5000, '393407462.jpeg'),
(41, 'russia', 'fly to russia', '2024-12-27', '2025-01-11', 43, '753672156.jpeg'),
(42, 'china', 'fly to china', '2025-01-27', '2025-01-30', 430, '549446863.jpeg'),
(43, 'tel-aviv', 'fly to tel-aviv', '2025-01-02', '2025-01-30', 100, '639266007.jpeg'),
(44, 'eilat', 'fly to eilat', '2024-12-01', '2024-12-09', 10000, '494495053.webp'),
(45, 'thiland', 'fly to thiland', '2024-12-20', '2025-03-20', 10000, '133788659.jpeg'),
(46, 'mexico', 'fly to mexico', '2024-12-20', '2025-01-20', 9999, '554682815.avif'),
(47, 'argentina', 'fly to argentina', '2024-12-22', '2025-01-22', 10000, '697468771.jpeg'),
(48, 'afula', 'fly to afula', '2024-12-20', '2024-12-22', 100, '16557602.jpeg'),
(49, 'new york', 'fly to new york', '2025-01-20', '2025-02-23', 225, '968507559.jpeg'),
(50, 'jamayca', 'fly to jamayca', '2025-01-04', '2025-02-01', 2250, '821622507.jpeg'),
(51, 'dobai', 'fly to dobai', '2024-12-29', '2025-02-01', 10000, '86922551.jpeg'),
(52, 'LA', 'fly to LA', '2024-12-29', '2025-02-01', 10000, '873963727.jpeg'),
(53, 'natanya', 'fly to natanya', '2024-12-17', '2024-12-20', 1000, '911768094.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `vacation_id` (`vacation_id`),
  ADD KEY `users_id_2` (`users_id`),
  ADD KEY `vacation_id_2` (`vacation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vacation`
--
ALTER TABLE `vacation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followers_ibfk_2` FOREIGN KEY (`vacation_id`) REFERENCES `vacation` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
