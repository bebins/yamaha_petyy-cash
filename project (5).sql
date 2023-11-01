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
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `ID` int(50) NOT NULL,
  `CHASSISNO` varchar(50) NOT NULL,
  `VEHICLEMODEL` varchar(50) NOT NULL,
  `CUSTOMERNAME` varchar(50) NOT NULL,
  `PAYMENTTYPE` varchar(50) NOT NULL,
  `BRANCHESDEALERS` varchar(50) NOT NULL,
  `EXCHANGE` varchar(50) NOT NULL,
  `VEHICLECOST` varchar(50) NOT NULL,
  `INVOICEDATE` date NOT NULL,
  `ROADSIDEASSISTANCE` varchar(50) NOT NULL,
  `IPRECEIVABLE` varchar(50) NOT NULL,
  `IPRECEIVED` varchar(50) NOT NULL,
  `CASH` varchar(50) NOT NULL,
  `FINANCERECEIVABLE` varchar(50) NOT NULL,
  `FINANCERECEIVEDDATE` date NOT NULL,
  `FINANCERECEIVED` varchar(50) NOT NULL,
  `TOTALAMOUNTRECIEVED` varchar(50) NOT NULL,
  `FOLDERCLOSINGDATE` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `EXTRAFITTING` varchar(50) NOT NULL,
  `BASICEXTRA` varchar(50) NOT NULL,
  `EXTENDEDWARRANTY` varchar(50) NOT NULL,
  `CASHDISCOUNT` varchar(50) NOT NULL,
  `PETROL` varchar(50) NOT NULL,
  `VEHICLECOVER` varchar(50) NOT NULL,
  `TOTALPRICE` varchar(50) NOT NULL,
  `MECHANICCOMMISSION` varchar(50) NOT NULL,
  `CUSTOMERSIDEINSURANCE` varchar(50) NOT NULL,
  `DISCOUNT` varchar(50) NOT NULL,
  `Del_status` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`ID`, `CHASSISNO`, `VEHICLEMODEL`, `CUSTOMERNAME`, `PAYMENTTYPE`, `BRANCHESDEALERS`, `EXCHANGE`, `VEHICLECOST`, `INVOICEDATE`, `ROADSIDEASSISTANCE`, `IPRECEIVABLE`, `IPRECEIVED`, `CASH`, `FINANCERECEIVABLE`, `FINANCERECEIVEDDATE`, `FINANCERECEIVED`, `TOTALAMOUNTRECIEVED`, `FOLDERCLOSINGDATE`, `STATUS`, `EXTRAFITTING`, `BASICEXTRA`, `EXTENDEDWARRANTY`, `CASHDISCOUNT`, `PETROL`, `VEHICLECOVER`, `TOTALPRICE`, `MECHANICCOMMISSION`, `CUSTOMERSIDEINSURANCE`, `DISCOUNT`, `Del_status`) VALUES
(14, 'ME1RG6842P00025', 'R15', 'ANISH ALBERT', 'HDFC BANK LTD', 'Triumph Motors', 'N/A', '152603', '2023-08-07', '20', '116666', '50000', '20000', '60000', '2023-08-01', '100', '1000000', '2023-08-10', '010101', '10000000', '100000', '1000000', '11111111111', '400', '510', '1', '1', '1', '111', 1),
(18, 'ME1RG6842P0002566', 'bajaj', 'Bebin', 'HDFC BANK LTD', 'Karungal', '7', '8', '2023-08-07', '', '10', '11', '12', '13', '2023-08-14', '15', '16', '2023-08-17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', 1),
(20, 'ME1RG6842P0002535', 'R15', 'ANISH ALBERT', 'HDFC BANK Ltd', 'Puthukadai', 'N/A', '100', '2023-08-07', '20', '100', '50', '50', '0', '2023-08-25', '100', '150', '2023-08-02', 'Open', '10000000', '555555', '02', '10', '10', '10', '10', '10', '10', '101', 1),
(21, 'ME1RG6842P0002566', 'bajaj', 'Bebin', 'HDFC BANK LTD', 'Pammam', 'N/A', '152603', '2023-08-07', '007', '116666', '50000', '66666', '-35937', '2023-08-24', '20', '50020', '2023-08-19', 'Open', '10000000', '555555', '20', '56', '20', '20', '700', '20', '202', '0', 1),
(23, 'ME1RG6842P0002535', 'R15', 'ANISH ALBERT', 'HDFC BANK LTD', 'Karungal', '77', '77', '2023-08-07', '77', '77', '77', '0', '0', '2023-08-05', '77', '154', '2023-08-11', 'Closed', '77', '777', '77', '77', '7', '7', '77', '77', '77', '1099', 1),
(24, 'ME1RG6842P0002599', 'hero', 'Anusa', 'HDFC BANK LTD', 'Pammam', '22', '2', '2023-07-01', '22', '22', '2', '20', '20', '2023-08-11', '220', '222', '2023-08-11', 'Open', '1010', '2', '2', '22', '22', '2', '2', '2', '2', '1062', 1),
(25, 'ME1RG6842P0002599', 'hero', 'Anusa', 'HDFC BANK LTD', 'Kuzhithurai', '22', '2', '2023-07-01', '22', '22', '2', '20', '40', '2023-08-11', '220', '20', '2023-08-11', 'Open', '1010', '2', '2', '22', '22', '2', '2', '2', '2', '104', 1),
(26, '1111', 'dddd', 'ddd', 'hdfc', 'Karungal', '78', '78', '2023-08-03', '7878', '78', '78878', '-78800', '0', '2023-08-11', '877', '79755', '2023-08-11', 'Open', '78', '78', '7878', '-17878', '78', '78', '78', '78', '7787', '-9610', 1),
(27, 'ME1RG6842P0002535', 'R15', 'ANISH ALBERT', 'HDFC BANK LTD', 'Oliver', '20', '20', '2023-08-07', '2020', '2', '02', '0', '-18', '2023-08-14', '20', '22', '2023-08-14', 'Open', '20', '20', '20', '20', '20', '2', '222', '2', '2', '105', 1),
(28, 'ME1RG6842P0002535', 'R15', 'ANISH ALBERT', 'HDFC BANK LTD', 'Karungal', '20', '20', '2023-08-07', '02', '20', '20', '0', '0', '2023-08-14', '02', '22', '2023-08-14', 'Open', '20', '20', '2', '2', '20', '20', '20', '20', 'test', '10465', 1),
(29, 'ME1RG6842P0002535', 'R15', 'ANISH ALBERT', 'HDFC BANK LTD', 'Karungal', '20', '02', '2023-08-07', '02', '02', '02', '0', '0', '2023-08-14', '20', '22', '2023-08-14', 'Open', '20', '20', '02', '20', '20', '20', '20', '20', '02', '128', 1),
(30, 'ME1RG6842P0002535', 'R15', 'ANISH ALBERT', 'HDFC BANK LTD', 'Karungal', '77', '77', '2023-08-07', '77', '77', '77', '0', '0', '2023-08-05', '77', '154', '2023-08-11', 'Closed', '77', '777', '77', '77', '7', '7', '77', '77', '77', '1099', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
