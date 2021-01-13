-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 13, 2021 at 07:13 PM
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
-- Database: `spike_report`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_envolmenting_report_view`
-- (See below for the actual view)
--
CREATE TABLE `student_envolmenting_report_view` (
`xid` char(36)
,`name` varchar(50)
,`registeredBy` varchar(36)
,`registeredDate` datetime
);

-- --------------------------------------------------------

--
-- Structure for view `student_envolmenting_report_view`
--
DROP TABLE IF EXISTS `student_envolmenting_report_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_envolmenting_report_view`  AS  select `sv`.`xid` AS `xid`,any_value(`sv`.`name`) AS `name`,any_value(`ev`.`registeredBy`) AS `registeredBy`,any_value(`ev`.`registeredDate`) AS `registeredDate` from (`spike_registration_db`.`student_view` `sv` join `spike_enrolmenting_db`.`envolment_by_view` `ev` on((`sv`.`xid` = `ev`.`student_xid`))) group by `sv`.`xid` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
