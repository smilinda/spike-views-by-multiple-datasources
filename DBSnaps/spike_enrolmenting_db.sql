-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 08, 2021 at 01:05 PM
-- Server version: 5.7.27-log
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spike_enrolmenting_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_envolment`
--

CREATE TABLE `course_envolment` (
  `id` int(11) NOT NULL,
  `student_xid` char(36) DEFAULT NULL,
  `course_xid` char(36) DEFAULT NULL,
  `registeredDate` datetime DEFAULT NULL,
  `registeredBy` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `envolment_by_view`
-- (See below for the actual view)
--
CREATE TABLE `envolment_by_view` (
`student_xid` char(36)
,`registeredBy` varchar(36)
,`registeredDate` datetime
);

-- --------------------------------------------------------

--
-- Structure for view `envolment_by_view`
--
DROP TABLE IF EXISTS `envolment_by_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `envolment_by_view`  AS  select `course_envolment`.`student_xid` AS `student_xid`,`course_envolment`.`registeredBy` AS `registeredBy`,`course_envolment`.`registeredDate` AS `registeredDate` from `course_envolment` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_envolment`
--
ALTER TABLE `course_envolment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_envolment`
--
ALTER TABLE `course_envolment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
