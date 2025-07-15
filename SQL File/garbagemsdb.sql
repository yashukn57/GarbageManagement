-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 08:15 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garbagemsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Yashwanth K N', 'yashu', 8979555557, 'yashukn057@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-07-02 12:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblbin`
--

CREATE TABLE `tblbin` (
  `ID` int(5) NOT NULL,
  `BinID` varchar(50) DEFAULT NULL,
  `Area` varchar(250) DEFAULT NULL,
  `Locality` varchar(250) DEFAULT NULL,
  `Landmark` varchar(250) DEFAULT NULL,
  `LoadType` varchar(100) DEFAULT NULL,
  `CyclePeriod` varchar(100) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `DriverAssignee` varchar(150) DEFAULT NULL,
  `AssignDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbin`
--

INSERT INTO `tblbin` (`ID`, `BinID`, `Area`, `Locality`, `Landmark`, `LoadType`, `CyclePeriod`, `Address`, `DriverAssignee`, `AssignDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 'Bin-123', 'Sullia', 'KVGCE', 'near boys hostel', 'Medium', 'Alternate', 'Sullia DK', 'driver1', '2024-07-11 11:05:10', 'Garbage collected', 'Completed', '2024-07-12 06:30:00'),
(2, 'B-123', 'Sullia', 'KVGDC', 'near canteen', 'High', 'Daily', 'Sullia DK', 'driver1', '2024-07-08 11:06:27', 'completed', 'Completed', '2024-07-09 10:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomtracking`
--

CREATE TABLE `tblcomtracking` (
  `ID` int(5) NOT NULL,
  `ComplainNumber` int(10) DEFAULT NULL,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomtracking`
--

INSERT INTO `tblcomtracking` (`ID`, `ComplainNumber`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, 526529361, 'Assign to driver', 'Approved', '2024-07-10 14:03:07'),
(2, 526529361, 'Driver is on the way', 'On the way', '2024-07-02 11:57:34'),
(3, 526529361, 'On the way', 'On the way', '2024-07-06 12:06:36'),
(4, 526529361, 'Completed', 'Completed', '2024-07-06 12:10:31'),
(5, 699612318, 'your complain hass been approved', 'Approved', '2024-07-07 10:42:01'),
(6, 699612318, 'On the way for collecting the garbage', 'On the way', '2027-07-14 06:18:28'),
(7, 792381847, 'Assign to driver', 'Approved', '2024-07-14 12:21:18'),
(8, 792381847, 'On the way for pickup garbage', 'On the way', '2024-07-14 12:22:54'),
(9, 792381847, 'Completed', 'Completed', '2024-07-14 12:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbldriver`
--

CREATE TABLE `tbldriver` (
  `ID` int(10) NOT NULL,
  `DriverID` varchar(20) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldriver`
--

INSERT INTO `tbldriver` (`ID`, `DriverID`, `Name`, `MobileNumber`, `Email`, `Address`, `Password`, `JoiningDate`) VALUES
(1, 'driver1', 'Abhi', 9654654654, 'abhi23@gmail.com', 'J-234, near reliance KR Pete', 'f925916e2754e5e03f75dd58a5733251', '2024-07-01 13:29:39'),
(2, 'driver2', 'Preetham', 9879879879, 'preethu@gmail.com', 'H-987,Khushalanagar', '202cb962ac59075b964b07152d234b70', '2024-07-01 05:57:02'),
(4, 'driver3', 'Mahesh', 9879789799, 'mahesh@gmail.com', 'Sullia', '202cb962ac59075b964b07152d234b70', '2024-07-05 05:19:18'),
(6, 'driver6', 'John', 9234567890, 'john@gmail.com', 'Madikeri', 'f925916e2754e5e03f75dd58a5733251', '2024-07-06 17:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbllodgedcomplain`
--

CREATE TABLE `tbllodgedcomplain` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `ComplainNumber` int(10) DEFAULT NULL,
  `Area` varchar(250) DEFAULT NULL,
  `Locality` varchar(250) DEFAULT NULL,
  `Landmark` varchar(250) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Photo` varchar(250) DEFAULT NULL,
  `Note` mediumtext DEFAULT NULL,
  `ComplainDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `AssignTo` varchar(100) DEFAULT NULL,
  `AssignDate` date DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllodgedcomplain`
--

INSERT INTO `tbllodgedcomplain` (`ID`, `UserID`, `ComplainNumber`, `Area`, `Locality`, `Landmark`, `Address`, `Photo`, `Note`, `ComplainDate`, `Remark`, `Status`, `AssignTo`, `AssignDate`, `UpdationDate`) VALUES
(1, 1, 526529361, 'KVG CE', 'Kuranjibhag', 'near Boys hostel', 'Sullia', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', NULL, '2024-07-22 12:30:45', 'Completed', 'Completed', 'driver1', '2024-07-26', '2024-07-27 10:43:11'),
(2, 2, 699612318, 'KVGCE', 'Kuranjibhag', 'nera canteen', 'Sullia', '006d51ca52039abf7231ba02bba35d681658493414.jpg', 'There is more than one week no one come to pic this garbage', '2024-07-02 12:36:54', 'On the way for collecting the garbage', 'On the way', 'driver1', '2024-07-05', '2024-07-14 06:18:28'),
(3, 2, 526529312, 'KVGDC', 'Kurannjibhag', 'near canteen', 'Sullia', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', NULL, '2024-07-02 12:30:45', 'Completed', 'Completed', 'driver1', '2024-07-09', '2024-07-07 10:43:16'),
(4, 3, 792381847, 'KVGDC', 'KVGDC Locality', 'near sm', 'Sullia', '07c17b1eaf2560b85252e48de9ba4efd1658493045.jpg', 'NA', '2024-07-14 12:19:45', 'Completed', 'Completed', 'driver1', '2024-07-14', '2024-07-14 12:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;\"><b>\"Location Based Garbage Collection for Smart City\"</b>&nbsp;</span><div><font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">It helps garbage collector to maintain and view lodged complain against garbage.</span></font></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'KVGCE-Sullia', 'yashukn057@gmail.com', 8792036007, NULL);


-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `BinID` varchar(250) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `BinID`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 'Bin-123', 'on the way', 'On The Way', '2022-07-27 10:54:01'),
(2, 'Bin-123', 'Garbage collected', 'Completed', '2022-07-27 10:53:56'),
(3, 'B-123', 'otw', 'On The Way', '2022-07-27 10:53:22'),
(4, 'B-123', 'completed', 'Completed', '2022-07-27 10:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `UserName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `UserName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Abhi', 'abhi', 7894566123, 'abhi@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-07-02 11:16:53'),
(2, 'Vistruth', 'vishu', 7946547897, 'vish@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-07-12 12:34:42'),
(3, 'Joh Doe', 'John123', 1231231230, 'john@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-07-14 12:18:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbin`
--
ALTER TABLE `tblbin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcomtracking`
--
ALTER TABLE `tblcomtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldriver`
--
ALTER TABLE `tbldriver`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllodgedcomplain`
--
ALTER TABLE `tbllodgedcomplain`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbin`
--
ALTER TABLE `tblbin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcomtracking`
--
ALTER TABLE `tblcomtracking`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbldriver`
--
ALTER TABLE `tbldriver`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbllodgedcomplain`
--
ALTER TABLE `tbllodgedcomplain`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
