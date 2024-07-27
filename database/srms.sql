-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2024 at 07:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'c20ad4d76fe97759aa27a0c99bff6710', '2024-07-27 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'IT', 1, 'A', '2024-07-27 10:30:57', NULL),
(2, 'IT', 2, 'B', '2024-07-27 10:30:57', NULL),
(3, 'MECH', 7, '', '2024-07-27 10:30:57', NULL),
(4, 'EEE', 4, '', '2024-07-27 10:30:57', NULL),
(5, 'CSE', 6, 'A', '2024-07-27 10:30:57', NULL),
(6, 'CSE', 6, 'B', '2024-07-27 10:30:57', NULL),
(7, 'AIML', 7, '', '2024-07-27 10:30:57', NULL),
(8, 'AIDS', 8, '', '2024-07-27 10:30:57', NULL),
(9, 'CSBS', 10, '', '2024-07-27 10:30:57', NULL),
(10, 'ECE', 8, 'A', '2024-07-27 10:30:57', NULL),
(11, 'ECE', 10, 'B', '2024-07-27 10:30:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(5, 'holiday', 'due to rain', '2024-05-27 04:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`, `grade`, `credit`) VALUES
(2, 1, 2, 1, 100, '2022-01-01 10:30:57', NULL, 10, 4),
(3, 1, 2, 2, 80, '2022-01-01 10:30:57', NULL, 8, 3),
(4, 1, 2, 3, 78, '2022-01-01 10:30:57', NULL, 8, 3),
(5, 1, 2, 4, 60, '2022-01-01 10:30:57', NULL, 6, 3),
(6, 1, 2, 5, 90, '2022-01-01 10:30:57', NULL, 9, 3),
(7, 1, 2, 6, 75, '2022-01-01 10:30:57', NULL, 8, 3),
(8, 1, 2, 7, 56, '2022-01-01 10:30:57', NULL, 6, 2),
(9, 1, 2, 11, 80, '2022-01-01 10:30:57', NULL, 8, 1),
(10, 6, 1, 1, 54, '2022-01-01 10:30:57', NULL, 6, 4),
(11, 6, 1, 2, 85, '2022-01-01 10:30:57', NULL, 9, 3),
(12, 6, 1, 3, 55, '2022-01-01 10:30:57', NULL, 6, 3),
(13, 6, 1, 4, 65, '2022-01-01 10:30:57', NULL, 7, 3),
(14, 6, 1, 5, 75, '2022-01-01 10:30:57', NULL, 8, 3),
(15, 6, 1, 6, 56, '2022-01-01 10:30:57', NULL, 6, 3),
(16, 6, 1, 7, 52, '2022-01-01 10:30:57', NULL, 6, 2),
(17, 6, 1, 11, 80, '2022-01-01 10:30:57', NULL, 8, 1),
(18, 3, 11, 1, 80, '2022-01-01 15:20:18', NULL, 8, 4),
(19, 3, 11, 3, 70, '2022-01-01 15:20:18', NULL, 7, 3),
(20, 3, 11, 7, 90, '2022-01-01 15:20:18', NULL, 9, 2),
(21, 3, 11, 9, 60, '2022-01-01 15:20:18', NULL, 6, 3),
(22, 4, 2, 1, 100, '2022-01-01 10:30:57', NULL, 10, 4),
(23, 4, 2, 2, 80, '2022-01-01 10:30:57', NULL, 8, 3),
(24, 4, 2, 3, 78, '2022-01-01 10:30:57', NULL, 8, 3),
(25, 4, 2, 4, 60, '2022-01-01 10:30:57', NULL, 6, 3),
(26, 4, 2, 5, 90, '2022-01-01 10:30:57', NULL, 9, 3),
(27, 4, 2, 6, 75, '2022-01-01 10:30:57', NULL, 8, 3),
(28, 4, 2, 7, 56, '2022-01-01 10:30:57', NULL, 6, 2),
(29, 4, 2, 11, 80, '2022-01-01 10:30:57', NULL, 8, 1),
(30, 5, 1, 1, 54, '2022-01-01 10:30:57', NULL, 6, 4),
(31, 5, 1, 2, 85, '2022-01-01 10:30:57', NULL, 9, 3),
(32, 5, 1, 3, 55, '2022-01-01 10:30:57', NULL, 6, 3),
(33, 5, 1, 4, 65, '2022-01-01 10:30:57', NULL, 7, 3),
(34, 5, 1, 5, 75, '2022-01-01 10:30:57', NULL, 8, 3),
(35, 5, 1, 6, 56, '2022-01-01 10:30:57', NULL, 6, 3),
(36, 5, 1, 7, 52, '2022-01-01 10:30:57', NULL, 6, 2),
(37, 5, 1, 11, 80, '2022-01-01 10:30:57', NULL, 8, 1),
(38, 3, 11, 10, 90, '2022-01-01 15:20:18', NULL, 9, 3),
(39, 3, 11, 11, 60, '2022-01-01 15:20:18', NULL, 6, 1),
(40, 2, 5, 1, 100, '2022-01-01 10:30:57', NULL, 10, 4),
(41, 2, 5, 2, 80, '2022-01-01 10:30:57', NULL, 8, 3),
(42, 2, 5, 3, 78, '2022-01-01 10:30:57', NULL, 8, 3),
(43, 2, 5, 4, 60, '2022-01-01 10:30:57', NULL, 6, 3),
(44, 2, 5, 7, 90, '2022-01-01 10:30:57', NULL, 9, 2),
(45, 2, 5, 8, 75, '2022-01-01 10:30:57', NULL, 8, 3),
(46, 2, 5, 11, 56, '2022-01-01 10:30:57', NULL, 6, 1),
(47, 7, 6, 1, 100, '2022-01-01 10:30:57', NULL, 10, 4),
(48, 7, 6, 2, 80, '2022-01-01 10:30:57', NULL, 8, 5),
(49, 7, 6, 3, 78, '2022-01-01 10:30:57', NULL, 8, 5),
(50, 7, 6, 4, 60, '2022-01-01 10:30:57', NULL, 6, 5),
(51, 7, 6, 7, 90, '2022-01-01 10:30:57', NULL, 9, 2),
(52, 7, 6, 8, 75, '2022-01-01 10:30:57', NULL, 8, 3),
(53, 7, 6, 11, 56, '2022-01-01 10:30:57', NULL, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'yuvarajan', 'ITB2262', 'yuvan2997@gmail.com', 'Male', '1995-03-03', 2, '2024-07-27 16:14:00', NULL, 1),
(2, 'viswa', 'CSA2260', 'viswa12@gmail.co', 'Male', '1995-02-02', 5, '2024-07-27 16:14:00', NULL, 0),
(3, 'naveen', 'ECB2215', 'naveen@gmail.com', 'Male', '2014-08-06', 11, '2024-07-27 16:14:00', NULL, 1),
(4, 'sriram', 'ITB2250', 'sriram2341@gmail.com', 'Male', '2001-02-03', 2, '2024-07-27 16:14:00', NULL, 1),
(5, 'sriram', 'ITA2247', 'sriram01@gmail.com', 'Male', '2002-02-03', 1, '2024-07-27 16:14:00', NULL, 1),
(6, 'Shiva guru', 'ITA2243', 'shiv34534@gmail.com', 'Male', '2007-01-12', 1, '2024-07-27 16:14:00', NULL, 1),
(7, 'ROMESH', 'CSB2232', 'romesh2004@gmail.com', 'Female', '2024-05-10', 6, '2024-05-27 08:33:48', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 1, 1, 1, '2024-07-27 10:30:57', '2024-07-27 16:58:34'),
(2, 1, 2, 1, '2024-07-27 10:30:57', NULL),
(3, 1, 3, 1, '2024-07-27 15:59:25', NULL),
(4, 1, 4, 1, '2024-07-27 15:59:25', NULL),
(5, 1, 5, 1, '2024-07-27 15:59:25', NULL),
(6, 1, 6, 1, '2024-07-27 15:59:25', NULL),
(7, 2, 1, 1, '2024-07-27 15:59:25', NULL),
(8, 2, 2, 1, '2024-07-27 15:59:25', NULL),
(9, 2, 3, 1, '2024-07-27 15:59:25', NULL),
(10, 2, 4, 1, '2024-07-27 15:59:25', NULL),
(11, 2, 5, 1, '2024-07-27 15:59:25', NULL),
(12, 2, 6, 1, '2024-07-27 15:59:25', NULL),
(13, 5, 1, 1, '2024-07-27 15:59:25', NULL),
(14, 5, 2, 1, '2024-07-27 15:59:25', NULL),
(15, 5, 3, 1, '2024-07-27 15:59:25', NULL),
(16, 5, 4, 1, '2024-07-27 15:59:25', NULL),
(17, 5, 7, 1, '2024-07-27 15:59:25', NULL),
(18, 5, 8, 1, '2024-07-27 15:59:25', NULL),
(19, 5, 11, 1, '2024-07-27 15:59:25', NULL),
(20, 10, 1, 1, '2024-07-27 15:59:25', NULL),
(21, 0, 3, 1, '2022-01-01 10:30:57', '2024-07-27 16:03:13'),
(22, 10, 7, 0, '2022-01-01 10:30:57', NULL),
(23, 10, 9, 1, '2022-01-01 10:30:57', NULL),
(24, 10, 10, 1, '2022-01-01 10:30:57', NULL),
(25, 10, 11, 1, '2022-01-01 10:30:57', NULL),
(26, 11, 1, 1, '2022-01-01 10:30:57', NULL),
(27, 11, 3, 0, '2022-01-01 10:30:57', NULL),
(28, 11, 7, 1, '2022-01-01 15:18:40', NULL),
(29, 11, 9, 1, '2022-01-01 15:18:43', NULL),
(30, 11, 10, 1, '2022-01-01 15:18:48', NULL),
(31, 11, 11, 1, '2022-01-01 15:18:54', NULL),
(32, 1, 7, 1, '2022-01-01 10:30:57', NULL),
(33, 1, 11, 1, '2022-01-01 10:30:57', NULL),
(34, 2, 7, 1, '2022-01-01 10:30:57', NULL),
(35, 2, 11, 1, '2022-01-01 10:30:57', NULL),
(36, 6, 1, 1, '2022-01-01 10:30:57', NULL),
(37, 6, 2, 1, '2022-01-01 10:30:57', NULL),
(38, 6, 3, 1, '2022-01-01 10:30:57', NULL),
(39, 6, 4, 1, '2022-01-01 10:30:57', NULL),
(40, 6, 7, 1, '2022-01-01 10:30:57', NULL),
(41, 6, 8, 1, '2022-01-01 10:30:57', NULL),
(42, 6, 11, 1, '2022-01-01 10:30:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'probability and statistics', 'UMA1410', '2024-07-27 10:30:57', NULL),
(2, 'Database management system', 'UIT1401', '2024-07-27 10:30:57', NULL),
(3, 'Introduction To Artificial Intelligence ', 'UAI1402', '2024-07-27 10:30:57', NULL),
(4, 'Operating Systems', 'UCS1404', '2024-07-27 10:30:57', NULL),
(5, 'web based internet programming', 'UIT1404', '2024-07-27 10:30:57', NULL),
(6, 'MINIproject', 'UIT1405', '2024-07-27 10:30:57', NULL),
(7, 'ip lab', 'UHS1411', '2024-07-27 10:30:57', NULL),
(8, 'soft Engineering', 'UCS1402', '2024-07-27 10:30:57', NULL),
(9, 'digital principles and system design', 'UEC1403', '2024-07-27 10:30:57', NULL),
(10, 'communication system', 'UEC1402', '2024-07-27 10:30:57', NULL),
(12, 'Professional skill', 'UHS1452', '2024-07-27 10:30:57', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
