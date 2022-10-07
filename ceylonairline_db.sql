-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2022 at 10:15 AM
-- Server version: 10.5.13-MariaDB-0ubuntu0.21.04.1
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phoenixairline_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `id` varchar(5) NOT NULL,
  `manufacturer` varchar(20) NOT NULL,
  `model` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`id`, `manufacturer`, `model`) VALUES
('AC100', 'Airbus', 'A220'),
('AC150', 'Boeing', '737'),
('AC200', 'Airbus', 'A300'),
('AC250', 'Boeing', '747'),
('AC300', 'Airbus', 'A380'),
('AC350', 'Boeing', '777'),
('F110', 'Bombardier', 'Global7500'),
('N333', 'Embraer', 'E190'),
('P500', 'MAC', 'MRJ90ER'),
('P600', 'MAC', 'MRJ70STD');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` varchar(3) NOT NULL,
  `type` varchar(8) NOT NULL,
  `additional_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `type`, `additional_cost`) VALUES
('101', 'First', 1.9),
('102', 'Business', 1.5),
('103', 'Economy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `takeoff_airport` varchar(50) NOT NULL,
  `takeoff_time` varchar(50) NOT NULL,
  `takeoff_date` varchar(50) NOT NULL,
  `landing_airport` varchar(50) NOT NULL,
  `landing_time` varchar(50) NOT NULL,
  `landing_date` varchar(50) NOT NULL,
  `gate` varchar(3) NOT NULL,
  `cost` float NOT NULL,
  `aircraft_flight` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `takeoff_airport`, `takeoff_time`, `takeoff_date`, `landing_airport`, `landing_time`, `landing_date`, `gate`, `cost`, `aircraft_flight`) VALUES
(1, 'AAL', '1:23 AM', '05/06/2022', 'ABV', '8:27 AM', '05/06/2022', '3', 56700, 'AC300'),
(2, 'CMB', '5:48 PM', '19/06/2022', 'CWL', '7:16 AM', '20/06/2022', '5', 176999, 'AC350'),
(3, 'London', '1:00PM', '2022/03/21', 'Colombo', '10:00AM', '2022/03/22', 'B4', 15000, 'AC100'),
(4, 'CMB', '10:00AM', '2022/02/23', 'London', '11:00PM', '2022/02/25', 'B2', 10000, 'AC100');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `user_reservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `total_price`, `user_reservation`) VALUES
(1, 5000, 1001),
(3, 6000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `id` int(11) NOT NULL,
  `seat_name` varchar(5) NOT NULL,
  `aircraft_seat` varchar(5) NOT NULL,
  `class_seat` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`id`, `seat_name`, `aircraft_seat`, `class_seat`) VALUES
(1, '1A', 'AC100', '101'),
(2, '1B', 'AC100', '101'),
(3, '1C', 'AC100', '101'),
(4, '2A', 'AC100', '102'),
(5, '2B', 'AC100', '102'),
(6, '2C', 'AC100', '102'),
(7, '3A', 'AC100', '103'),
(8, '3B', 'AC100', '103'),
(9, '3C', 'AC100', '103'),
(10, '12D', 'AC150', '102'),
(11, '15J', 'F110', '103'),
(12, '14D', 'AC300', '101'),
(13, '5G', 'P500', '103'),
(14, '1J', 'AC250', '103'),
(15, '1K', 'AC350', '103'),
(16, '9A', 'P600', '103'),
(17, '9B', 'AC250', '101'),
(18, '9C', 'AC200', '103'),
(19, '9D', 'AC100', '103'),
(20, '9E', 'P500', '103'),
(21, '9F', 'N333', '102'),
(22, '13F', 'AC150', '103'),
(23, '2C', 'P600', '101'),
(24, '9H', 'AC350', '101'),
(25, '6F', 'AC250', '102'),
(26, '3B', 'AC200', '102'),
(27, '7D', 'P600', '103'),
(28, '5A', 'N333', '103'),
(29, '1F', 'P600', '103'),
(30, '2A', 'AC350', '103');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `login_time` varchar(100) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `user_session` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `login_time`, `ip_address`, `user_session`) VALUES
(1, 'Mon May 23 15:31:44 IST 2022', '127.0.0.1', 1000),
(2, 'Mon May 23 19:36:09 IST 2022', '0:0:0:0:0:0:0:1', 1004),
(3, 'Mon May 23 19:47:06 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(4, 'Mon May 23 19:49:50 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(5, 'Mon May 23 19:56:08 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(6, 'Mon May 23 20:42:38 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(7, 'Mon May 23 20:44:53 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(8, 'Mon May 23 20:49:24 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(9, 'Mon May 23 20:50:38 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(10, 'Mon May 23 20:53:56 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(11, 'Mon May 23 20:57:41 IST 2022', '0:0:0:0:0:0:0:1', 1000),
(12, 'Mon May 23 22:34:20 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(13, 'Mon May 23 22:49:48 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(14, 'Tue May 24 08:39:38 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(15, 'Tue May 24 08:46:25 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(16, 'Tue May 24 08:55:28 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(17, 'Tue May 24 09:14:16 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(18, 'Tue May 24 09:34:20 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(19, 'Tue May 24 10:33:11 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(20, 'Tue May 24 10:41:20 IST 2022', '0:0:0:0:0:0:0:1', 1001),
(21, 'Wed May 25 07:25:27 IST 2022', '127.0.0.1', 1000),
(22, 'Wed May 25 07:29:22 IST 2022', '127.0.0.1', 1000),
(23, 'Wed May 25 07:34:40 IST 2022', '127.0.0.1', 1003),
(24, 'Wed May 25 07:37:25 IST 2022', '127.0.0.1', 1003),
(25, 'Wed May 25 07:57:37 IST 2022', '127.0.0.1', 1001),
(26, 'Wed May 25 08:38:01 IST 2022', '127.0.0.1', 1002),
(28, 'Wed May 25 08:39:55 IST 2022', '127.0.0.1', 1002),
(29, 'Wed May 25 08:40:30 IST 2022', '127.0.0.1', 1004),
(30, 'Wed May 25 08:43:34 IST 2022', '127.0.0.1', 1001),
(31, 'Wed May 25 09:00:03 IST 2022', '127.0.0.1', 1001),
(32, 'Wed May 25 09:05:38 IST 2022', '127.0.0.1', 1001),
(33, 'Wed May 25 09:09:32 IST 2022', '127.0.0.1', 1001),
(34, 'Wed May 25 09:24:36 IST 2022', '127.0.0.1', 1001),
(35, 'Wed May 25 09:27:51 IST 2022', '127.0.0.1', 1004),
(37, 'Wed May 25 09:51:03 IST 2022', '127.0.0.1', 1004);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `reservation_ticket` int(11) NOT NULL,
  `flight_ticket` int(11) NOT NULL,
  `seat_ticket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `price`, `reservation_ticket`, `flight_ticket`, `seat_ticket`) VALUES
(1, 100, 1, 1, 29),
(2, 200, 3, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(64) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(7) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `phone`, `address`, `role`, `is_active`) VALUES
(1000, 'Nimal', 'Samarakoon', 'nimal@gmail.com', 'nimalsam', 'password', '0094702527844', '250/40, Samanala Uyana, Koskandawala, Yakkala, Sri Lanka', 'client', 1),
(1001, 'Ruwani', 'Gunathilake', 'ruwani34@hotmail.com', 'ruwi', 'password', '0094762345643', 'Nugegoda', 'client', 1),
(1002, 'Sandun', 'Amarasinghe', 'amarasinghesan@gmail.com', 'amare', 'password', '0094771232412', 'Naiwala', 'staffg1', 0),
(1003, 'Vidura', 'Gunathilake', 'vdugun@gmail.com', 'viduwa', 'password', '0094716756342', 'Balapitiya', 'staffg2', 1),
(1004, 'Kasun', 'Gunathilake', 'kasu342@gmail.com', 'kasu', 'password', '0094705678987', 'Boralesgamuwa', 'staffg1', 1),
(1005, 'Hiruni', 'Weerasinghe', 'hiru@gmail.com', 'hiru', 'password', '0094713243546', 'Ganemulla', 'staffg2', 0),
(1006, 'Piyumi', 'Senanayake', 'piyu@gmail.com', 'piyu', 'password', '0094778765432', 'Colombo', 'admin', 1),
(1007, 'Ruwan', 'Kamal', 'maleesha@gmail.com', 'kam', '1234', NULL, NULL, 'client', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aircraft_flight` (`aircraft_flight`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_reservation` (`user_reservation`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aircraft_seat` (`aircraft_seat`),
  ADD KEY `class_seat` (`class_seat`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_session` (`user_session`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservation_ticket` (`reservation_ticket`),
  ADD KEY `flight_ticket` (`flight_ticket`),
  ADD KEY `seat_ticket` (`seat_ticket`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `aircraft_flight` FOREIGN KEY (`aircraft_flight`) REFERENCES `aircraft` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `user_reservation` FOREIGN KEY (`user_reservation`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `aircraft_seat` FOREIGN KEY (`aircraft_seat`) REFERENCES `aircraft` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_seat` FOREIGN KEY (`class_seat`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `user_session` FOREIGN KEY (`user_session`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `flight_ticket` FOREIGN KEY (`flight_ticket`) REFERENCES `flight` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservation_ticket` FOREIGN KEY (`reservation_ticket`) REFERENCES `reservation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seat_ticket` FOREIGN KEY (`seat_ticket`) REFERENCES `seat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
