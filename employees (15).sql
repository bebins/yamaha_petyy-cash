-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2023 at 03:07 PM
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
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(50) NOT NULL,
  `INVOICEDATE` varchar(50) NOT NULL,
  `CHASSISNO` varchar(50) NOT NULL,
  `VEHICLEMODEL` varchar(50) NOT NULL,
  `CUSTOMERNAME` varchar(50) NOT NULL,
  `PAYMENTTYPE` varchar(50) NOT NULL,
  `BRANCHESDEALERS` varchar(50) NOT NULL,
  `EXCHANGE` varchar(50) NOT NULL,
  `VEHICLECOST` varchar(50) NOT NULL,
  `ROADSIDEASSISTANCE` varchar(50) NOT NULL,
  `IPRECEIVABLE` varchar(50) NOT NULL,
  `IPRECEIVED` varchar(50) NOT NULL,
  `CASH` varchar(50) NOT NULL,
  `FINANCERECEIVABLE` varchar(50) NOT NULL,
  `FINANCERECEIVEDDATE` varchar(55) NOT NULL,
  `FINANCERECEIVED` varchar(55) NOT NULL,
  `TOTALAMOUNTRECIEVED` varchar(55) NOT NULL,
  `FOLDERCLOSINGDATE` varchar(55) NOT NULL,
  `STATUS` varchar(55) NOT NULL,
  `EXTRAFITTING` varchar(55) NOT NULL,
  `BASICEXTRA` varchar(55) NOT NULL,
  `EXTENDEDWARRANTY` varchar(55) NOT NULL,
  `CASHDISCOUNT` varchar(55) NOT NULL,
  `PETROL` varchar(55) NOT NULL,
  `VEHICLECOVER` varchar(55) NOT NULL,
  `TOTALPRICE` varchar(55) NOT NULL,
  `MECHANICCOMMISSION` varchar(55) NOT NULL,
  `CUSTOMERSIDEINSURANCE` varchar(55) NOT NULL,
  `DISCOUNT` varchar(55) NOT NULL,
  `RTOCONFIRMATION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `INVOICEDATE`, `CHASSISNO`, `VEHICLEMODEL`, `CUSTOMERNAME`, `PAYMENTTYPE`, `BRANCHESDEALERS`, `EXCHANGE`, `VEHICLECOST`, `ROADSIDEASSISTANCE`, `IPRECEIVABLE`, `IPRECEIVED`, `CASH`, `FINANCERECEIVABLE`, `FINANCERECEIVEDDATE`, `FINANCERECEIVED`, `TOTALAMOUNTRECIEVED`, `FOLDERCLOSINGDATE`, `STATUS`, `EXTRAFITTING`, `BASICEXTRA`, `EXTENDEDWARRANTY`, `CASHDISCOUNT`, `PETROL`, `VEHICLECOVER`, `TOTALPRICE`, `MECHANICCOMMISSION`, `CUSTOMERSIDEINSURANCE`, `DISCOUNT`, `RTOCONFIRMATION`) VALUES
(4, '2023-08-01', 'ME1SEK777P0010440', 'RAY ZR STREET RALLY(COPPER)OBDII-BKX3/BKX7', 'TITAS KERAGORI', 'INDUSIND BANK', 'Kuzhithurai', '20', '115202', '11', '12000', '12000', '0', '20', '2023-08-19', '103250', '115250', '2023-09-09', 'Closed', '01', 'Open', '555', 'Open', '416', 'Open', '114647', 'Open', '20', '1906', 'Yes'),
(5, '2023-08-07', 'ME1SEK747P0010769', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'S KARNAN', 'CASH', 'Kuzhithurai', '20', '1133', '02', '113378', '113378', '0', '112245', '2023-08-19', '20', '113398', '2023-08-19', 'Open', '10', '10', '555', '10', '208', '510', '112823', '10', '10', '1313', 'No'),
(6, '2023-08-07', 'ME1RG66U5P0005248', 'FZ-S FI V4 0 DLX (RED BLACK GREY)OBDII-BFH3/D631', 'AJIN.V', 'CASH', 'Triumph Motors', '#N/A', '20', '20', '20', '02', '18', '0', '2023-08-19', '20', '22', '2023-08-19', 'Open', '20', '20', '20', '02', '200', '0', '00', '220', '00', '482', 'No'),
(7, '2023-08-07', 'ME1SEK747P0011129', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'SELVARAJ MICHEAL', 'CASH', 'Pammam', '11', '113378', '11', '11', '113378', '-113367', '-113367', '1111-11-11', '11', '113389', '2023-08-19', 'Open', '11', '11', '11', '11', '400', '510', '113378', '11', '11', '965', 'Yes'),
(8, '2023-08-07', 'ME1SEK757P0020689', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'SURESH KUMAR', 'INDUSIND BANK', 'Karungal', '20', '110684', '20', '400012', '40004', '360008', '289328', '2023-08-19', '72410', '112414', '2023-08-19', 'Open', '555', '0', '0', '0', '409', '510', '110602', '02', '222', '1476', 'Yes'),
(9, '2023-08-07', 'ME1SEK747P0010769', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'S KARNAN', 'CASH', 'Kuzhithurai', '20224', '1133782', '22', '1133784141', '1133784', '1132650357', '1132650359', '2023-08-21', '44', '1133828', '2023-08-21', 'Closed', '3.', '3', '555', '3', '2083', '510', '112823', '55', 'tes', '3212', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `amc`
--

CREATE TABLE `amc` (
  `ID` int(30) NOT NULL,
  `S.NO` int(11) NOT NULL,
  `MONTH` varchar(100) NOT NULL,
  `YEAR` varchar(30) NOT NULL,
  `TARGET` varchar(30) NOT NULL,
  `ACHIEVED` varchar(30) NOT NULL,
  `BRANCH` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amc`
--

INSERT INTO `amc` (`ID`, `S.NO`, `MONTH`, `YEAR`, `TARGET`, `ACHIEVED`, `BRANCH`) VALUES
(1, 0, 'May', '2022', '700', '700', 'Palakkad'),
(2, 0, 'July', '2023', '450', '540', 'Pammam'),
(4, 0, 'June', '2022', '2111', '111', 'karungal'),
(5, 0, 'May', '2023', '888', '88', 'karungal'),
(8, 0, 'June', '2023', '30000', '1000', 'kuzhithurai');

-- --------------------------------------------------------

--
-- Table structure for table `a_project`
--

CREATE TABLE `a_project` (
  `ID` int(20) NOT NULL,
  `INVOICEDATE` varchar(50) NOT NULL,
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
(26, '2023-08-07', 'ME1RG7353P0008269', 'FZX OBD II BLACK & COPPER - BKH1/BKH2', 'CHRISTO EMILIN RAJ.E', 'CASH', 'Triumph Motors'),
(27, '2023-08-07', 'ME1SEK757P0017407', 'RAY ZR DISC DLX (RAC BLUE DB)-BKX1_S/BKX5_S', 'ANUSHA M', 'CASH', 'Pammam'),
(28, '2023-08-07', 'ME1SEK777P0012773', 'RAY ZR S R (GRAY, MATBK)OBDII-BKX3_S/BKX7_S', 'AJITH MANAS G', 'INDUSIND BANK', 'Pammam'),
(29, '2023-08-07', 'ME1SEK747P0008218', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'AJAY T', 'MUTHOOT CAPITAL SERVICE LTD', 'Pammam'),
(30, '2023-08-07', 'ME1SEK747P0011129', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'SELVARAJ MICHEAL', 'CASH', 'Pammam'),
(31, '2023-08-07', 'ME1SEK757P0020689', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'SURESH KUMAR', 'INDUSIND BANK', 'Karungal'),
(32, '2023-08-07', 'ME1RG67K7P0001075', 'R15V 4 OBDII (RED)-BGN1/BPDE', 'LEKHA KUMARI V', 'HDFC BANK LTD', 'Kuzhithurai'),
(33, '2023-08-08', 'ME1SEK747P0009344', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'AKSHAYEE S P', 'IDFC FIRST BANK LTD', 'Oliver'),
(34, '2023-08-08', 'ME1SEK757P0019493', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'S. THADEUSE', 'INDUSIND BANK', 'MM Motors'),
(35, '2023-08-08', 'ME1SEK758P0021430', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'G CHRISTURAJ', 'L AND T FINANCE LIMITED', 'Kuzhithurai'),
(36, '2023-08-08', 'ME1SEK757P0020865', 'RAY ZR DISC DLX (RAC BLUE DB)-BKX1_S/BKX5_S', 'SUNIL CICIL RAJ', 'L AND T FINANCE LIMITED', 'Kuzhithurai'),
(37, '2023-08-08', 'ME1SEK757P0020438', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'RAJESH R', 'HDFC BANK LTD', 'Kuzhithurai'),
(38, '2023-08-08', 'ME1SEK747P0010773', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'SELIN DIVYA SELVARAJ', 'CASH', 'Pammam'),
(39, '2023-08-09', 'ME1SEK717P0010719', 'FASCINO DISC(DARKMATBLUE COOL BLUE)OBDII-BGP4/BGPE', 'RAJESWARI RAJESH', 'INDUSIND BANK', 'Karungal'),
(40, '2023-08-09', 'ME1RG67B6P0014913', 'R15V 4 OBDII (RED)-BGN1/BPDE', 'SASI KUMAR N', 'L AND T FINANCE LIMITED', 'Karungal'),
(41, '2023-08-09', 'ME1SEK757P0019480', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'SUTHAN KAWASKAR S', 'INDUSIND BANK', 'Karungal'),
(42, '2023-08-09', 'ME1RG66U7P0012669', 'FZ-S FI V4 0 DLX (RED BLACK GREY)OBDII-BFH3/D631', 'ANTRO MANOJ L', 'CASH', 'Karungal'),
(43, '2023-08-09', 'ME1SEK777P0010660', 'RAY ZR S R (GRAY, MATBK)OBDII-BKX3_S/BKX7_S', 'ABITHA.X', 'INDUSIND BANK', 'Puthukadai'),
(44, '2023-08-02', 'ME1SEK757P0017390', 'RAY ZR DISC DLX (RAC BLUE DB)-BKX1_S/BKX5_S', 'AROCKIA SIBIN I', 'HDFC BANK LTD', 'Karungal'),
(45, '2023-08-02', 'ME1SEK757P0014450', 'RAY ZR DISC DLX (RAC BLUE DB)-BKX1_S/BKX5_S', 'RAJESH RAJAN', 'INDUSIND BANK', 'Karungal'),
(46, '2023-08-09', 'ME1SEK757P0020601', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'C CHRISTAL RANI', 'CASH', 'Kuzhithurai'),
(47, '2023-08-09', 'ME1SEK757P0013799', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'SANTHIYA R.S', 'CASH', 'Triumph Motors'),
(48, '2023-08-09', 'ME1RG66L2P0006623', 'FZ-S FI V4 0 DLX (RED BLACK GREY)OBDII-BFH3/D631', 'RAJAN SINGARAYAN', 'INDUSIND BANK', 'Karungal'),
(49, '2023-08-09', 'ME1SEK727P0005137', 'FASCINO DRUM DLX (DBLUE COOL BLUE)OBDII-BGPA/BGPF', 'AUGUSTIN ARULDHAS SELVI', 'CASH', 'Karungal'),
(50, '2023-08-09', 'ME1SEK757P0020686', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'JENIN JESSON JUSTIN', 'CASH', 'Karungal'),
(51, '2023-08-09', 'ME1RG66U7P0020582', 'FZ-S FI V4 0 DLX (RED BLACK GREY)OBDII-BFH3/D631', 'EVELIN ANTONY', 'L AND T FINANCE LIMITED', 'Kuzhithurai'),
(52, '2023-08-09', 'ME1SEK747P0009498', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'B.JAMUNA', 'INDUSIND BANK', 'Triumph Motors'),
(53, '2023-08-10', 'ME1SEK747P0008326', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'MARY BINISHA', 'HDFC BANK LTD', 'MM Motors'),
(54, '2023-08-10', 'ME1SEK757P0020271', 'RAY ZR DISC DLX (RAC BLUE DB)-BKX1_S/BKX5_S', 'ESAPELA', 'MUTHOOT CAPITAL SERVICE LTD', 'MM Motors'),
(55, '2023-08-10', 'ME1SG7527P0003740', 'AEROX 155 (BK,GY,BLUE,MOTOGP,MONSTER, MET)-BLVI', 'ANTONY JOSEPH', 'CASH', 'Puthukadai'),
(56, '2023-08-10', 'ME1SEK757P0020196', 'RAY ZR DISC DLX (RAC BLUE DB)-BKX1_S/BKX5_S', 'AJAY.C', 'CASH', 'Puthukadai'),
(57, '2023-08-11', 'ME1SEK717P0012033', 'FASCINO DISC(BK RED YELLOW ASTBLUE)OBDII-BGP2/BGPD', 'A VIJIN ROBINSON', 'CASH', 'Pammam'),
(58, '2023-08-11', 'ME1SG7527P0003907', 'AEROX 155 (BK,GY,BLUE,MOTOGP,MONSTER, MET)-BLVI', 'L SURESH KUMAR', 'CASH', 'Pammam'),
(59, '2023-08-11', 'ME1SEK777P0012839', 'RAY ZR STREET RALLY(COPPER)OBDII-BKX3/BKX7', 'J VIBIN', 'CASH', 'Kuzhithurai'),
(60, '2023-08-11', 'ME1SEK748P0011668', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'JEEVA VINCENT', 'CASH', 'Karungal'),
(61, '2023-08-11', 'ME1SEK747P0008810', 'FASCINO SPL(DARK MAT BLUE)OBDII-BGP3_S/BGPH_S', 'RAJABAI S', 'HDFC BANK LTD', 'Pammam'),
(62, '2023-08-11', 'ME1SEK758P0022785', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'CHANDRAN RAJENDRAN', 'INDUSIND BANK', 'Kuzhithurai'),
(63, '2023-08-11', 'ME1SEK728P0006333', 'FASCINO DRUM DLX (DBLUE COOL BLUE)OBDII-BGPA/BGPF', 'NISHANTH NARAYANAN', 'INDUSIND BANK', 'Triumph Motors'),
(64, '2023-08-12', 'ME1RG66K3P0008895', 'FZ 16 BLACK RACINGBLUE OBDII-BFJ1', 'RAVEENDRAN VIJAYAKUMAR SARASWATHY', 'CHOLAMANDALAM INVESTMENT AND FINANCE COMPANY LTD', 'Oliver'),
(65, '2023-08-12', 'ME1SEK728P0006084', 'FASCINO DRUM(BK RED YELLOW ASTBLUE)OBDII-BGP1/BGPC', 'SULOCHANA THANKAPPAN', 'K KALAIVANI AUTO FINANCE', 'Oliver'),
(66, '2023-08-12', 'ME1RG67G5P0009499', 'R 15 (RACING BLUE,WHITE)OBDII- BGN2/BPDF', 'NISHAD V M', 'CASH', 'Kuzhithurai'),
(67, '2023-08-14', 'ME1SEK777P0012795', 'RAY ZR S R (GRAY, MATBK)OBDII-BKX3_S/BKX7_S', 'ALEN P.S', 'CASH', 'MM Motors'),
(68, '2023-08-14', 'ME1SEK747P0010291', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'VEENA SUBBIYAN', 'INDUSIND BANK', 'Triumph Motors'),
(69, '2023-08-14', 'ME1SEK757P0015965', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'SAJINA S', 'INDUSIND BANK', 'Pammam'),
(70, '2023-08-14', 'ME1SEK757P0020846', 'RAY ZR DISC DLX (RAC BLUE DB)-BKX1_S/BKX5_S', 'FRANKLIN YESURAJ', 'HDFC BANK LTD', 'Karungal'),
(71, '2023-08-14', 'ME1RG66U7P0015478', 'FZ-S FI V4 0 DLX (RED BLACK GREY)OBDII-BFH3/D631', 'SHIBY BALAKRISHNAN SHEELA', 'CASH', 'Pammam'),
(72, '2023-08-14', 'ME1RG67B2P0002105', 'R 15 V4 ( DARK NIGHT BLACK)OBDII-BGN1_S/BPDE_S', 'SHAJAN THATHEYOUSE', 'CASH', 'MM Motors'),
(73, '2023-08-14', 'ME1SEK727P0004262', 'FASCINO DRUM(BK RED YELLOW ASTBLUE)OBDII-BGP1/BGPC', 'TELMA JEES A', 'HDFC BANK LTD', 'MM Motors'),
(74, '2023-08-14', 'ME1SEK778P0014036', 'RAY ZR S R (GRAY, MATBK)OBDII-BKX3_S/BKX7_S', 'ASHIK A', 'CASH', 'Kuzhithurai'),
(75, '2023-08-14', 'ME1SEK717P0007098', 'FASCINO DISC(BK RED YELLOW ASTBLUE)OBDII-BGP2/BGPD', 'GEETHU NIRESH', 'CASH', 'Kuzhithurai'),
(3543, '2023-08-20', 'ME1RG6842P0002999', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'ANU', 'CASH', 'Puthukadai');

-- --------------------------------------------------------

--
-- Table structure for table `cc`
--

CREATE TABLE `cc` (
  `ID` int(11) NOT NULL,
  `S.NO` int(11) NOT NULL,
  `MONTH` varchar(100) NOT NULL,
  `YEAR` varchar(30) NOT NULL,
  `TARGET` varchar(30) NOT NULL,
  `ACHIEVED` varchar(30) NOT NULL,
  `BRANCH` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cc`
--

INSERT INTO `cc` (`ID`, `S.NO`, `MONTH`, `YEAR`, `TARGET`, `ACHIEVED`, `BRANCH`) VALUES
(6, 0, 'May', '2023', '30000', '30000', 'kuzhithurai'),
(7, 0, 'June', '2022', '2000', '1000', 'kuzhithurai'),
(8, 0, 'May', '2022', '30000', '30000', 'karungal'),
(9, 0, 'June', '2023', '2000', '2000', 'Pammam'),
(10, 0, 'January', '2022', '30000', '1000', 'Palakkad');

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `ID` int(50) NOT NULL,
  `DATE` date NOT NULL,
  `CUSTOMERCODE` varchar(50) NOT NULL,
  `CUSTOMERNAME` varchar(50) NOT NULL,
  `ADD1` varchar(50) NOT NULL,
  `ADD2` varchar(50) NOT NULL,
  `PHONE` varchar(50) NOT NULL,
  `VEHICLECODE` varchar(50) NOT NULL,
  `VEHICLENAME` varchar(50) NOT NULL,
  `FCODE` varchar(50) NOT NULL,
  `FNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`ID`, `DATE`, `CUSTOMERCODE`, `CUSTOMERNAME`, `ADD1`, `ADD2`, `PHONE`, `VEHICLECODE`, `VEHICLENAME`, `FCODE`, `FNAME`) VALUES
(1, '2023-09-01', '001', 'Akash', '4', '5', '9807645331', '7', 'YAMAHA15 V3', '9', '11'),
(2, '0000-00-00', '002', 'PriyaChopra', '4', '5', '6', '7', '8', '9', '10');

-- --------------------------------------------------------

--
-- Table structure for table `daybook`
--

CREATE TABLE `daybook` (
  `ID` int(50) NOT NULL,
  `DATE` date NOT NULL,
  `TYPES` varchar(50) NOT NULL,
  `CUSTOMERNAME` varchar(50) NOT NULL,
  `CUSTOMERCODE` varchar(30) NOT NULL,
  `PHONENUMBER` varchar(30) NOT NULL,
  `RECEIPT` varchar(50) NOT NULL,
  `VEHICLENAME` varchar(50) NOT NULL,
  `SERVICE` varchar(50) NOT NULL,
  `MODE` varchar(50) NOT NULL,
  `NEFTOPTION` varchar(30) NOT NULL,
  `FINANCEOPTION` varchar(30) NOT NULL,
  `HDFC` varchar(40) NOT NULL,
  `IDFC` varchar(30) NOT NULL,
  `IBC` varchar(30) NOT NULL,
  `REFERENCE` varchar(50) NOT NULL,
  `PARTICULAR` varchar(30) NOT NULL,
  `VOUCHER` varchar(30) NOT NULL,
  `HDFCCA` varchar(25) NOT NULL,
  `HDRCC` varchar(25) NOT NULL,
  `INV` varchar(25) NOT NULL,
  `CREDIT` varchar(50) NOT NULL,
  `DEBIT` varchar(50) NOT NULL,
  `CLOSINGBALANCE` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daybook`
--

INSERT INTO `daybook` (`ID`, `DATE`, `TYPES`, `CUSTOMERNAME`, `CUSTOMERCODE`, `PHONENUMBER`, `RECEIPT`, `VEHICLENAME`, `SERVICE`, `MODE`, `NEFTOPTION`, `FINANCEOPTION`, `HDFC`, `IDFC`, `IBC`, `REFERENCE`, `PARTICULAR`, `VOUCHER`, `HDFCCA`, `HDRCC`, `INV`, `CREDIT`, `DEBIT`, `CLOSINGBALANCE`, `deleted`) VALUES
(244, '2023-10-13', '', 'Akash', '', '', '', '', '', 'Cash', '', '', '', '', '', '', '', '', '', '', '', '1000', '0', '1000', 0),
(253, '2023-10-13', '', 'Akash', '', '', '', '', '', 'Cash', '', '', '', '', '', '', '', '', '', '', '', '2000', '0', '3000', 0),
(254, '2023-10-13', '', 'Akash', '', '', '', '', '', 'Cash', '', '', '', '', '', '', '', '', '', '', '', '400', '0', '3400', 0),
(261, '2023-10-13', '', 'Akash', '', '', '', '', '', 'Cash', '', '', '', '', '', '', '', '', '', '', '', '20', '0', '3420', 0),
(262, '2023-10-13', '', 'frfrf', '', '', '', '', '', 'Neft', '', '', '', '', '', 'hyyh', '', '', '', '', '', '400', '0', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `merged_table`
--

CREATE TABLE `merged_table` (
  `id` int(11) NOT NULL,
  `INVOICEDATE` date DEFAULT NULL,
  `CHASSISNO` varchar(255) DEFAULT NULL,
  `VEHICLEMODEL` varchar(255) DEFAULT NULL,
  `CUSTOMERNAME` varchar(255) DEFAULT NULL,
  `PAYMENTTYPE` varchar(255) DEFAULT NULL,
  `BRANCHESDEALERS` varchar(255) DEFAULT NULL,
  `EXCHANGE` varchar(255) DEFAULT NULL,
  `VEHICLECOST` varchar(255) DEFAULT NULL,
  `ROADSIDEASSISTANCE` varchar(255) DEFAULT NULL,
  `IPRECEIVABLE` varchar(255) DEFAULT NULL,
  `IPRECEIVED` varchar(255) DEFAULT NULL,
  `CASH` varchar(255) DEFAULT NULL,
  `FINANCERECEIVABLE` varchar(255) DEFAULT NULL,
  `FINANCERECEIVEDDATE` date DEFAULT NULL,
  `FINANCERECEIVED` varchar(255) DEFAULT NULL,
  `TOTALAMOUNTRECIEVED` varchar(255) DEFAULT NULL,
  `FOLDERCLOSINGDATE` date DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `EXTRAFITTING` decimal(10,2) DEFAULT NULL,
  `BASICEXTRA` decimal(10,2) DEFAULT NULL,
  `EXTENDEDWARRANTY` decimal(10,2) DEFAULT NULL,
  `CASHDISCOUNT` decimal(10,2) DEFAULT NULL,
  `PETROL` decimal(10,2) DEFAULT NULL,
  `VEHICLECOVER` varchar(255) DEFAULT NULL,
  `TOTALPRICE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_table`
--

CREATE TABLE `new_table` (
  `SAMPLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(30) NOT NULL,
  `Material Code` varchar(30) NOT NULL,
  `Accessories` varchar(30) NOT NULL,
  `Models` varchar(30) NOT NULL,
  `Pro Plus` varchar(30) NOT NULL,
  `Ex showroom` varchar(30) NOT NULL,
  `On Road Price` varchar(30) NOT NULL,
  `LT/RT` varchar(30) NOT NULL,
  `Insurance` varchar(30) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `expire/not` varchar(50) NOT NULL,
  `is_deleted` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Material Code`, `Accessories`, `Models`, `Pro Plus`, `Ex showroom`, `On Road Price`, `LT/RT`, `Insurance`, `Status`, `expire/not`, `is_deleted`) VALUES
(1, 'MAT001', '11', '11', '11', '11', '11', '11', '11', 'Inactive', 'expired', ''),
(2, 'MAT002', '222', '22', '22', '222', '222', '222', '22', 'Inactive', 'expired', ''),
(3, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', 'expired', '1'),
(4, 'MAT003', '55', '55', '55', '55', '55', '5', '5', 'Inactive', 'expired', ''),
(5, 'www', '10', '10', '10', '99', '99', '99', '99', 'Inactive', '', ''),
(6, 'www', '10', '10', '10', '99', '99', '99', '99', 'Inactive', '', ''),
(7, 'MAT014', '10', '10', '10', '99', '99', '99', '99', 'Inactive', '', ''),
(8, 'MAT011', '10', '10', '10', '99', '99', '99', '99', 'Inactive', 'expired', ''),
(9, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', '', ''),
(10, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', '', ''),
(11, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', 'expired', ''),
(12, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', 'expired', ''),
(13, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', 'expired', ''),
(14, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', 'expired', ''),
(15, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', '', ''),
(16, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', 'expired', ''),
(17, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', '', ''),
(18, '555', '5', '55', '5', '55', '5', '5', '5', 'Inactive', 'expired', ''),
(19, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', 'expired', ''),
(20, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', '', ''),
(21, 'eee', '10', '10', '10', '99', '99', '99', '99', 'Inactive', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `ID` int(50) NOT NULL,
  `CHASSISNO` varchar(50) NOT NULL,
  `VEHICLEMODEL` text NOT NULL,
  `CUSTOMERNAME` text NOT NULL,
  `PAYMENTTYPE` text NOT NULL,
  `BRANCHESDEALERS` text NOT NULL,
  `EXCHANGE` text NOT NULL,
  `VEHICLECOST` varchar(50) NOT NULL,
  `INVOICEDATE` varchar(50) NOT NULL,
  `ROADSIDEASSISTANCE` varchar(50) NOT NULL,
  `IPRECEIVABLE` varchar(50) NOT NULL,
  `IPRECEIVED` varchar(50) NOT NULL,
  `CASH` text NOT NULL,
  `FINANCERECEIVABLE` text NOT NULL,
  `FINANCERECEIVEDDATE` varchar(50) NOT NULL,
  `FINANCERECEIVED` varchar(50) NOT NULL,
  `TOTALAMOUNTRECIEVED` varchar(50) NOT NULL,
  `FOLDERCLOSINGDATE` varchar(50) NOT NULL,
  `STATUS` text NOT NULL,
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
  `RTOCONFIRMATION` varchar(50) NOT NULL,
  `FILERECEIVEDDATE` varchar(50) NOT NULL,
  `FORM20DATE` varchar(50) NOT NULL,
  `FORM20RECEIVEDDATE` varchar(50) NOT NULL,
  `ACCOUNTSCONFIRMATION` varchar(50) NOT NULL,
  `REGISTRATIONDATE` varchar(55) NOT NULL,
  `REGISTRATIONNUMBER` varchar(55) NOT NULL,
  `RCSTATUS` text NOT NULL,
  `RCRECDATE` varchar(55) NOT NULL,
  `REMARKS` varchar(55) NOT NULL,
  `Ex showroom` text NOT NULL,
  `LT/RT` varchar(10) NOT NULL,
  `Insurance` varchar(10) NOT NULL,
  `Accessories` varchar(10) NOT NULL,
  `Pro Plus` varchar(10) NOT NULL,
  `On Road Price` varchar(10) NOT NULL,
  `SCHEME NAME` text NOT NULL,
  `SCHEME AMT` text NOT NULL,
  `SCHEME CODE` text NOT NULL,
  `MODEL` text NOT NULL,
  `BASIC FITTINGS` text NOT NULL,
  `Del_status` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`ID`, `CHASSISNO`, `VEHICLEMODEL`, `CUSTOMERNAME`, `PAYMENTTYPE`, `BRANCHESDEALERS`, `EXCHANGE`, `VEHICLECOST`, `INVOICEDATE`, `ROADSIDEASSISTANCE`, `IPRECEIVABLE`, `IPRECEIVED`, `CASH`, `FINANCERECEIVABLE`, `FINANCERECEIVEDDATE`, `FINANCERECEIVED`, `TOTALAMOUNTRECIEVED`, `FOLDERCLOSINGDATE`, `STATUS`, `EXTRAFITTING`, `BASICEXTRA`, `EXTENDEDWARRANTY`, `CASHDISCOUNT`, `PETROL`, `VEHICLECOVER`, `TOTALPRICE`, `MECHANICCOMMISSION`, `CUSTOMERSIDEINSURANCE`, `DISCOUNT`, `RTOCONFIRMATION`, `FILERECEIVEDDATE`, `FORM20DATE`, `FORM20RECEIVEDDATE`, `ACCOUNTSCONFIRMATION`, `REGISTRATIONDATE`, `REGISTRATIONNUMBER`, `RCSTATUS`, `RCRECDATE`, `REMARKS`, `Ex showroom`, `LT/RT`, `Insurance`, `Accessories`, `Pro Plus`, `On Road Price`, `SCHEME NAME`, `SCHEME AMT`, `SCHEME CODE`, `MODEL`, `BASIC FITTINGS`, `Del_status`) VALUES
(24, 'ME1SEK747P0010769', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'S KARNAN', 'CASH', 'Kuzhithurai', '20', '113378', '2023-08-07', '02', '113378', '113378', '020', '20', '2023-08-21', '02', '113378', '2002-02-20', 'CLOSED', '20', 'Open', '555', 'Open', '208', 'Open', '112823', 'Open', '20', '02', 'Yes', '20-04-2012', '2023-08-21', '2000-02-20', 'yes', '20', '20', 'pending', '2023-08-21', '14', '', '', '', '', '', '', '', '', '', '', '', 1),
(25, 'ME1RG66U5P0005248', 'FZ-S FI V4 0 DLX (RED BLACK GREY)OBDII-BFH3/D631', 'AJIN.V', 'CASH', 'Triumph Motors', '#N/A', '113378', '2023-08-07', '10', '202', '20', '18', '20', '2023-08-25', '20', '20', '2013-11-04', '20', '20', 'Open', '555', 'Open', '35', 'Open', '11112', 'Open', '20', '124', 'Yes', '20-04-2012', '2023-08-22', '2012-02-20', 'yes', '32', '202', '10', '2023-08-22', 'N/A', '', '', '', '', '', '', '', '', '', '', '', 1),
(26, 'ME1RG7353P0008269', 'FZX OBD II BLACK & COPPER - BKH1/BKH2', 'CHRISTO EMILIN RAJ.E', 'CASH', 'Triumph Motors', '#N/A', '', '2023-08-07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(28, 'ME1SEK777P0012773', 'RAY ZR S R (GRAY, MATBK)OBDII-BKX3_S/BKX7_S', 'AJITH MANAS G', 'INDUSIND BANK', 'Puthukadai', '', '', '2023-08-07', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(29, 'ME1SEK747P0008218', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'AJAY T', 'MUTHOOT CAPITAL SERVICE LTD', 'MM Motors', '', '', '2023-08-07', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(30, 'ME1SEK747P0011129', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'SELVARAJ MICHEAL', 'CASH', 'Pammam', '', '113378', '2023-08-07', '', '113378', '113378', '', '', '', '', '113378', '10-08-2023', 'CLOSED', '', '', '', '', '400', '510', '113378', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(31, 'ME1SEK757P0020689', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'SURESH KUMAR', 'INDUSIND BANK', 'Puthukadai', '20', '110684', '2023-08-07', '20', '40000', '40000', '0', '0', '2023-08-21', '72410', '112410', '2023-08-21', 'Open', '0', '0', '0', '0', '409', '510', '110684', '20', 'testt', '939', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(33, 'ME1SEK747P0009344', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'AKSHAYEE S P', 'IDFC FIRST BANK LTD', 'Oliver Motors', '#N/A', '', '2023-08-08', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(35, 'ME1SEK758P0021430', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'G CHRISTURAJ', 'L AND T FINANCE LIMITED', 'Kuzhithurai', '', '110684', '2023-08-08', '', '15500', '15500', '0', '', '09-08-2023', '96957', '112457', '09-08-2023', 'CLOSED', '', '', '', '', '', '', '110684', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(40, 'ME1RG67B6P0014913', 'R15V 4 OBDII (RED)-BGN1/BPDE', 'SASI KUMAR N', 'L AND T FINANCE LIMITED', 'Karungal', 'N/A', '215982', '2023-08-09', '20', '33000', '33', '33000', '03', '2023-08-22', '184012', '184012', '2012-02-12', 'Open', '0', '0', '0', '0', '512', '510', '215982', '63', '33', '126', '', '', '', '', '', '', '', '', '', '', '11', '11', '11', '11', '11', '11', '111', '11', '111', '111', '11111', 1),
(44, 'ME1SEK757P0017390', 'RAY ZR DISC DLX (RAC BLUE DB)-BKX1_S/BKX5_S', 'AROCKIA SIBIN I', 'HDFC BANK LTD', 'Karungal', '', '11796', '2023-08-02', '', '33000', '3000', '30000', '0', '07-08-2023', '81161', '84161', '', '', '0', '0', '0', '0', '0', '', '11796', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(46, 'ME1SEK757P0020601', 'RAY ZR DISC (RED AST BLUE BLACK)OBDII-BKX1/BKX5', 'C CHRISTAL RANI', 'CASH', 'Kuzhithurai', '', '110684', '2023-08-09', '', '110684', '110684', '0', '', '09-08-2023', '', '110684', '10-08-2023', 'CLOSED', '', '', '555', '', '104', '510', '110129', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(49, 'ME1SEK727P0005137', 'FASCINO DRUM DLX (DBLUE COOL BLUE)OBDII-BGPA/BGPF', 'AUGUSTIN ARULDHAS SELVI', 'CASH', 'Karungal', '', '103017', '2023-08-09', '', '102462', '102462', '0', '0', '00-01-1900', '0', '102462', '09-08-2023', 'CLOSED', '0', '0', '555', '0', '409', '510', '102462', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(3544, 'ME1SEK747P0010769', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'S KARNAN', 'CASH', 'Kuzhithurai', '20', '113378', '2023-08-07', '20', '1133782', '113378', '1020404', '1020404', '2023-08-21', '2', '113380', '2023-08-21', 'Closed', '333', '33', '5553', '33', '208', '510', '112823', '3', '3', '6673', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(3546, 'ME1RG66U5P0005248', 'FZ-S FI V4 0 DLX (RED BLACK GREY)OBDII-BFH3/D631', 'AJIN.V', 'CASH', 'Triumph Motors', '#N/A', '20', '2023-08-07', '20', '20', '20', '0', '0', '2023-08-21', '02', '22', '2023-08-21', 'Open', '10', '011', '010', '011', '10', '11', '111', '11', 'tesss', '74', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(3550, 'ME1SEK747P0010769', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'S KARNAN', 'CASH', 'Kuzhithurai', '', '', '2023-08-07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-08-21', '2023-08-21', '', '', '2023-08-21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(3551, 'ME1SEK757P0017407', 'RAY ZR DISC DLX (RAC BLUE DB)-BKX1_S/BKX5_S', 'ANUSHA M', 'CASH', 'Pammam', '10', '01', '2023-08-07', '10', '01', '10', '01', '01', '2023-08-21', '01', '52', '5225-02-05', '5', '25', 'Open', '5', 'Open', '5', 'Open', '5', 'Open', '5', '5', 'Yes', '2023-08-21', '2023-08-21', '2023-08-21', 'yes', '2023-08-21', '20', '20', '2023-08-21', 'testt', '', '', '', '', '', '', '', '', '', '', '', 1),
(3553, 'ME1RG6842P0002535', 'R15', 'ANU', 'HDFC BANK LTD', 'Karungal', '', '', '2023-08-21', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(3554, 'ME1SEK757P0017407', 'RAY ZR DISC DLX (RAC BLUE DB)-BKX1_S/BKX5_S', 'ANUSHA M', 'CASH', 'Pammam', '10', '01', '2023-08-07', '10', '01', '10', '01', '01', '2023-08-21', '01', '52', '5225-02-05', 'Closed', '25', 'Open', '5', '20', '5', 'Open', '5', 'Open', '5', '55', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(3555, 'ME1SEK747P0010769', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'S KARNAN', 'CASH', 'Kuzhithurai', '20', '113378', '2023-08-07', '02', '113378', '113378', '020', '20', '2023-08-21', '02', '113378', '2002-02-20', 'Closed', '20', 'Open', '555', '100', '208', 'Open', '112823', 'Open', '20', '883', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(3556, 'ME1RG6842P0002589', 'FASCINO SPL(MATT RED MATBLACK)OBDII-BGP3/BGPH', 'sudar', 'hdfc', 'Oliver Motors', '', '', '2023-07-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
(3557, 'MGS98534384444', 'YAMAHA', 'ARJUN', 'CASH', 'MM Motors', '', '', '2023-08-02', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rto`
--

CREATE TABLE `rto` (
  `ID` int(50) NOT NULL,
  `INVOICEDATE` date NOT NULL,
  `CHASSISNO` varchar(50) NOT NULL,
  `VEHICLEMODEL` varchar(50) NOT NULL,
  `CUSTOMERNAME` varchar(50) NOT NULL,
  `PAYMENTTYPE` varchar(50) NOT NULL,
  `BRANCHESDEALERS` varchar(50) NOT NULL,
  `FILERECEIVEDDATE` date NOT NULL,
  `FORM20DATE` date NOT NULL,
  `FORM20RECEIVEDDATE` date NOT NULL,
  `ACCOUNTSCONFIRMATION` varchar(50) NOT NULL,
  `REGISTRATIONDATE` date NOT NULL,
  `REGISTRATIONNUMBER` varchar(50) NOT NULL,
  `RCSTATUS` varchar(50) NOT NULL,
  `RCRECDATE` date NOT NULL,
  `REMARKS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rto`
--

INSERT INTO `rto` (`ID`, `INVOICEDATE`, `CHASSISNO`, `VEHICLEMODEL`, `CUSTOMERNAME`, `PAYMENTTYPE`, `BRANCHESDEALERS`, `FILERECEIVEDDATE`, `FORM20DATE`, `FORM20RECEIVEDDATE`, `ACCOUNTSCONFIRMATION`, `REGISTRATIONDATE`, `REGISTRATIONNUMBER`, `RCSTATUS`, `RCRECDATE`, `REMARKS`) VALUES
(5, '2008-02-17', 'ME1RG6842P0002535', 'TVS', 'JK', 'HDFC BANK LTD', 'Triumph Motors', '2023-08-17', '2023-08-17', '2023-08-17', '414', '2023-08-17', '41', '41', '0000-00-00', '14'),
(6, '2008-02-17', 'ME1RG6842P0002535', 'TVS', 'JOHN', 'HDFC BANK LTD', 'Pammam', '2023-08-17', '2023-08-17', '2023-08-17', '99', '2023-08-17', '99', '9', '2023-08-17', '99'),
(7, '2008-02-17', 'ME1RG6842P0002535', 'TVS', 'ARUN', 'HDFC BANK LTD', 'karungal', '2023-08-17', '2023-08-17', '2023-08-17', 'Yes', '2023-08-17', '20', '20', '2023-08-17', '20'),
(8, '2008-02-17', 'ME1RG6842P0002535', 'TVS', 'ROBERT', 'HDFC BANK LTD', 'Triumph Motors', '2023-08-17', '2023-08-17', '2023-08-17', 'Yes', '2023-08-17', '88', '88', '2023-08-17', '89999');

-- --------------------------------------------------------

--
-- Table structure for table `save`
--

CREATE TABLE `save` (
  `ID` int(11) NOT NULL,
  `S.NO` int(30) NOT NULL,
  `MONTH` varchar(30) NOT NULL,
  `YEAR` varchar(20) NOT NULL,
  `TARGET` varchar(20) NOT NULL,
  `ACHIEVED` varchar(50) NOT NULL,
  `BRANCH` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `save`
--

INSERT INTO `save` (`ID`, `S.NO`, `MONTH`, `YEAR`, `TARGET`, `ACHIEVED`, `BRANCH`) VALUES
(8, 0, 'April', '2023', '11', '11', 'kuzhithurai'),
(26, 0, 'September', '2022', '44', '44', 'kuzhithurai'),
(28, 0, 'May', '2022', '30000', '3002', 'kuzhithurai'),
(29, 0, 'May', '2023', '2000', '1000', 'Palakkad'),
(30, 0, 'January', '2023', '2000', '1000', 'karungal'),
(31, 0, 'January', '2022', '2000', '2000', 'Pammam');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `place`, `status`) VALUES
(1, 'yamaha1', '123456', 'Kuzhithurai', 'Employee'),
(2, 'yamaha2', '123456', 'Pammam', 'Employee'),
(3, 'yamaha3', '123456', 'Karungal', 'Employee'),
(4, 'yamaha4', '123456', 'Puthukadai', 'Employee'),
(5, 'yamaha5', '123456', 'Oliver', 'Employee'),
(6, 'yamaha6', '123456', 'Triumph Motors', 'Employee'),
(7, 'yamaha7', '123456', 'MM Motors', 'Employee'),
(8, 'Aishwarya_Motors', '123456_admin', 'Nagercoil', 'Admin'),
(9, 'aishwarrya@gmail.com', 'Admin@12345', 'Nagercoil', 'Admin1'),
(10, 'rto', '123456', '', 'Rto'),
(11, 'account', '123456', '', 'Account'),
(12, 'yamaha', '123456', '', 'NewYamaha');

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `amc`
--
ALTER TABLE `amc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `a_project`
--
ALTER TABLE `a_project`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cc`
--
ALTER TABLE `cc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `daybook`
--
ALTER TABLE `daybook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `merged_table`
--
ALTER TABLE `merged_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rto`
--
ALTER TABLE `rto`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `save`
--
ALTER TABLE `save`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `amc`
--
ALTER TABLE `amc`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `a_project`
--
ALTER TABLE `a_project`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3544;

--
-- AUTO_INCREMENT for table `cc`
--
ALTER TABLE `cc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `daybook`
--
ALTER TABLE `daybook`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `merged_table`
--
ALTER TABLE `merged_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3558;

--
-- AUTO_INCREMENT for table `rto`
--
ALTER TABLE `rto`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `save`
--
ALTER TABLE `save`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
