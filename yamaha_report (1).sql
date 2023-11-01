-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2023 at 08:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Table structure for table `yamaha_report`
--

CREATE TABLE `yamaha_report` (
  `Invoice Date` varchar(10) DEFAULT NULL,
  `Chassis No` int(5) DEFAULT NULL,
  `Vehicle Model` int(4) DEFAULT NULL,
  `Customer Name` int(3) DEFAULT NULL,
  `Payment Type` int(3) DEFAULT NULL,
  `Branches/Sub Dlrs` varchar(8) DEFAULT NULL,
  `zzz` varchar(5) DEFAULT NULL,
  `qwert` varchar(5) DEFAULT NULL,
  `ID` varchar(4) DEFAULT NULL,
  `w` varchar(4) DEFAULT NULL,
  `qrQWE` varchar(3) DEFAULT NULL,
  `sadf` varchar(3) DEFAULT NULL,
  `DF` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `yamaha_report`
--

INSERT INTO `yamaha_report` (`Invoice Date`, `Chassis No`, `Vehicle Model`, `Customer Name`, `Payment Type`, `Branches/Sub Dlrs`, `zzz`, `qwert`, `ID`, `w`, `qrQWE`, `sadf`, `DF`) VALUES
('2000-11-04', 11111, 1111, 111, 111, 'Karungal', 'asd', 'addad', 'sdsv', 'sdad', 'SDv', 'SD', 'SD'),
('2000-11-04', 11, 111, 11, 11, '11', 'addad', 'saa', 'saf', 'SDF', 'SDF', 'SFD', 'FSD');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
