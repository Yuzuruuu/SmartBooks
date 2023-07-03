-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2023 at 03:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `IACompsci`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cash_Flow`
--

CREATE TABLE `Cash_Flow` (
  `ID` int(11) NOT NULL,
  `Company_Name` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Currency` varchar(255) NOT NULL,
  `Cash` int(255) NOT NULL,
  `Operation_Expense` int(255) NOT NULL,
  `Operation_Income` int(255) NOT NULL,
  `Investing_Expense` int(255) NOT NULL,
  `Investing_Income` int(255) NOT NULL,
  `Financing_Expense` int(255) NOT NULL,
  `Financing_Income` int(255) NOT NULL,
  `Total` int(255) NOT NULL,
  `Document_Num` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Cash_Memo`
--

CREATE TABLE `Cash_Memo` (
  `ID` int(255) NOT NULL,
  `Company_Name` varchar(255) NOT NULL,
  `Mobile_Number` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Writer` varchar(255) NOT NULL,
  `Currency` varchar(255) NOT NULL,
  `Q1` int(255) NOT NULL,
  `P1` varchar(255) NOT NULL,
  `Pr1` int(255) NOT NULL,
  `Q2` int(255) NOT NULL,
  `P2` varchar(255) NOT NULL,
  `Pr2` int(255) NOT NULL,
  `Q3` int(255) NOT NULL,
  `P3` varchar(255) NOT NULL,
  `Pr3` int(255) NOT NULL,
  `Total` int(255) NOT NULL,
  `Document_Num` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Income_Statement`
--

CREATE TABLE `Income_Statement` (
  `ID` int(255) NOT NULL,
  `Company_Name` varchar(255) NOT NULL,
  `Time_Range` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Currency` varchar(255) NOT NULL,
  `Total_Revenue` int(255) NOT NULL,
  `COGS` int(255) NOT NULL,
  `Operating_Expense` int(255) NOT NULL,
  `Operating_Income` int(255) NOT NULL,
  `Other_Income` int(255) NOT NULL,
  `Interest` int(255) NOT NULL,
  `Tax_Rate` int(255) NOT NULL,
  `Net_Income` int(255) NOT NULL,
  `EBIT` int(255) NOT NULL,
  `Document_Num` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Income_Statement`
--

INSERT INTO `Income_Statement` (`ID`, `Company_Name`, `Time_Range`, `Date`, `Currency`, `Total_Revenue`, `COGS`, `Operating_Expense`, `Operating_Income`, `Other_Income`, `Interest`, `Tax_Rate`, `Net_Income`, `EBIT`, `Document_Num`) VALUES
(4, 'Test', 'Monthly', '2023-03-27', '$', 2424, 12, 121, 1212, 121, 1212, 10, 2412, 2412, '33330');

-- --------------------------------------------------------

--
-- Table structure for table `Receipt`
--

CREATE TABLE `Receipt` (
  `ID` int(255) NOT NULL,
  `Company_Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `MobileNumber` varchar(255) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Writer` varchar(255) NOT NULL,
  `Amount` varchar(255) NOT NULL,
  `Purpose` varchar(255) NOT NULL,
  `Payment` varchar(255) NOT NULL,
  `Signature` longblob NOT NULL,
  `Document_Num` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Table_Record`
--

CREATE TABLE `Table_Record` (
  `ID` int(255) NOT NULL,
  `Document` varchar(255) NOT NULL,
  `Number` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Table_Record`
--

INSERT INTO `Table_Record` (`ID`, `Document`, `Number`, `Name`) VALUES
(1, 'Income Statement', '33330', 'Test ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cash_Flow`
--
ALTER TABLE `Cash_Flow`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Cash_Memo`
--
ALTER TABLE `Cash_Memo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Income_Statement`
--
ALTER TABLE `Income_Statement`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Receipt`
--
ALTER TABLE `Receipt`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Table_Record`
--
ALTER TABLE `Table_Record`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cash_Flow`
--
ALTER TABLE `Cash_Flow`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Cash_Memo`
--
ALTER TABLE `Cash_Memo`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Income_Statement`
--
ALTER TABLE `Income_Statement`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Receipt`
--
ALTER TABLE `Receipt`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Table_Record`
--
ALTER TABLE `Table_Record`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
