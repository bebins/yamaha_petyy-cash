-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2023 at 08:26 AM
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
-- Table structure for table `a_project`
--

CREATE TABLE `a_project` (
  `ID` int(20) NOT NULL,
  `INVOICEDATE` date NOT NULL,
  `CHASSISNO` varchar(50) NOT NULL,
  `VEHICLEMODEL` varchar(50) NOT NULL,
  `CUSTOMERNAME` varchar(50) NOT NULL,
  `PAYMENTTYPE` varchar(50) NOT NULL,
  `BRANCHESDEALERS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `a_project`
--

INSERT INTO `a_project` (`ID`, `INVOICEDATE`, `CHASSISNO`, `VEHICLEMODEL`, `CUSTOMERNAME`, `PAYMENTTYPE`, `BRANCHESDEALERS`) VALUES
(1, '2023-01-12', 'ME1RG6842P0002535', 'R15', 'ALBERT', 'HDFC BANK LTD', 'Kuzhithurai'),
(2, '2023-08-12', 'ME1RG6842P0002566', 'TVS', 'ANU', 'HDFC BANK LTD', 'Karungal'),
(3, '2023-08-10', 'ME1RG6842P0002577', 'YAMAHA', 'ARUN', 'HDFC BANK LTD', 'Kuzhithurai'),
(4, '2010-01-01', 'ME1RG6842P0002599', 'YAMAHA', 'ISH', 'HDFC BANK LTD', 'Pammam'),
(5, '2008-02-17', 'ME1RG6842P0002535', 'TVS', 'JK', 'HDFC BANK LTD', 'Triumph Motors'),
(14, '2023-08-10', 'ME1RG6842P0002566', 'R15', 'KAMAL', 'HDFC BANK LTD', 'Pammam'),
(15, '2020-01-01', 'ME1RG6842P0002566', 'R15', 'ABI', 'HDFC BANK LTD', 'Karungal'),
(16, '2023-08-10', 'ME1RG6842P0002535', 'HERO', 'ARJUN', 'HDFC BANK LTD', 'Karungal'),
(17, '2009-01-01', 'ME1RG6842P0002522', 'YAMAHA', 'KARAN', 'HDFC BANK LTD', 'Karungal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_project`
--
ALTER TABLE `a_project`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_project`
--
ALTER TABLE `a_project`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
