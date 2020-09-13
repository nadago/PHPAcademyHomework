-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 13, 2020 at 11:15 PM
-- Server version: 5.7.25
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `first_name`, `last_name`, `position`, `gender`) VALUES
(1, 'Douglas', 'Wotherspoon', 'Product Management', 'M'),
(2, 'Carmen', 'Klimkiewich', 'Courier', 'F'),
(3, 'Oliviero', 'Mackleden', 'Courier', 'M'),
(4, 'Kandy', 'Ding', 'Accounting', 'F'),
(5, 'Torrin', 'Lambkin', 'Accounting', 'M'),
(6, 'Lusa', 'Eads', 'Courier', 'F'),
(7, 'Layney', 'Gellan', 'Marketing', 'F'),
(8, 'Rory', 'Nelane', 'Courier', 'M'),
(9, 'Nicolle', 'Astupenas', 'Support', 'F'),
(10, 'Eudora', 'Kenyam', 'Courier', 'F'),
(11, 'Adams', 'Stevani', 'Courier', 'M'),
(13, 'Tilly', 'McAtamney', 'Courier', 'F'),
(14, 'Dee dee', 'Ambrus', 'Sales', 'F'),
(15, 'Kettie', 'Rickets', 'Support', 'F'),
(16, 'Gradey', 'Anelay', 'Courier', 'M'),
(17, 'Alfie', 'FitzAlan', 'Courier', 'F'),
(18, 'Adriano', 'Tessington', 'Courier', 'M'),
(19, 'Thatch', 'Lunam', 'Courier', 'M'),
(20, 'Annaliese', 'Partkya', 'Courier', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `employee_licence`
--

CREATE TABLE `employee_licence` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `licence_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_licence`
--

INSERT INTO `employee_licence` (`id`, `employee_id`, `licence_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2),
(5, 2, 3),
(6, 3, 1),
(7, 4, 2),
(8, 5, 2),
(9, 6, 2),
(10, 7, 1),
(11, 7, 2),
(12, 8, 2),
(13, 8, 3),
(14, 9, 2),
(15, 10, 2),
(16, 11, 1),
(18, 13, 1),
(19, 14, 2),
(20, 15, 2),
(21, 16, 2),
(22, 17, 1),
(23, 17, 2),
(24, 17, 3),
(25, 18, 2),
(26, 19, 1),
(27, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_vehicle`
--

CREATE TABLE `employee_vehicle` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `parking_violations` int(11) DEFAULT NULL,
  `traffic_fees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_vehicle`
--

INSERT INTO `employee_vehicle` (`id`, `employee_id`, `vehicle_id`, `parking_violations`, `traffic_fees`) VALUES
(1, 2, 3, 0, 50),
(2, 2, 4, 2, 87),
(3, 3, 1, 1, 45),
(4, 6, 5, 2, 50),
(5, 6, 6, 1, 20),
(6, 8, 5, 1, 20),
(7, 8, 6, 3, 180),
(8, 10, 4, 4, 250),
(9, 10, 6, 0, 54),
(12, 13, 8, 1, 120),
(13, 16, 9, 5, 420),
(14, 17, 1, 4, 320),
(15, 17, 2, 1, 50),
(16, 17, 10, 0, 0),
(17, 18, 9, 1, 0),
(18, 19, 1, 3, 360),
(19, 20, 8, 3, 280);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `type`) VALUES
(1, 'cellphone'),
(3, 'courier bag');

-- --------------------------------------------------------

--
-- Table structure for table `licence`
--

CREATE TABLE `licence` (
  `licence_id` tinyint(4) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licence`
--

INSERT INTO `licence` (`licence_id`, `type`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(7, 'G');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `make` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` date DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `type`, `make`, `model`, `year`, `country`) VALUES
(1, 'motorbyke', 'Toyota', 'Camry', '1998-12-01', 'Japan'),
(2, 'minitruck', 'Chrysler', 'Voyager', '2002-05-30', 'USA'),
(3, 'minitruck', 'Audi', 'S5', '2009-08-24', 'Germany'),
(4, 'minivan', 'Mazda', '626', '1986-01-12', 'Japan'),
(5, 'minivan', 'Mercedes-Benz', 'R-Class', '2008-04-15', 'Germany'),
(6, 'minivan', 'Volkswagen', 'Passat', '1997-06-24', 'Germany'),
(8, 'motorbyke', 'Morgan', 'Aero 8', '2008-11-11', 'USA'),
(9, 'minivan', 'Mitsubishi', 'Diamante', '1998-05-06', 'Japan'),
(10, 'minivan', 'Cadillac', 'CTS', '2007-09-15', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_registrations`
--

CREATE TABLE `vehicle_registrations` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `licence_id` tinyint(4) DEFAULT NULL,
  `vehicle_ssn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_registrations`
--

INSERT INTO `vehicle_registrations` (`id`, `vehicle_id`, `licence_id`, `vehicle_ssn`) VALUES
(1, 1, 1, 'JN1BJ0HP2FM480796'),
(2, 2, 3, 'WBA3N9C52EF264218'),
(3, 3, 3, '1YVHZ8BH9D5690781'),
(4, 4, 2, 'WBAFR9C50DD778516'),
(5, 5, 2, '2C3CCAEG4FH835172'),
(6, 6, 2, 'WAUVT64B04N870073'),
(7, 7, 1, 'JH4CL96818C544246'),
(8, 8, 1, '1GYUKKEF3AR247346'),
(9, 9, 2, '3LNDL2L34CR736322'),
(10, 10, 2, 'BCFEBBBK2BG423491');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employee_licence`
--
ALTER TABLE `employee_licence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `licence_id` (`licence_id`);

--
-- Indexes for table `employee_vehicle`
--
ALTER TABLE `employee_vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licence`
--
ALTER TABLE `licence`
  ADD PRIMARY KEY (`licence_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `vehicle_registrations`
--
ALTER TABLE `vehicle_registrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employee_licence`
--
ALTER TABLE `employee_licence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `employee_vehicle`
--
ALTER TABLE `employee_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `licence`
--
ALTER TABLE `licence`
  MODIFY `licence_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vehicle_registrations`
--
ALTER TABLE `vehicle_registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_licence`
--
ALTER TABLE `employee_licence`
  ADD CONSTRAINT `employee_licence_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_licence_ibfk_2` FOREIGN KEY (`licence_id`) REFERENCES `licence` (`licence_id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_vehicle`
--
ALTER TABLE `employee_vehicle`
  ADD CONSTRAINT `employee_vehicle_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_vehicle_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
