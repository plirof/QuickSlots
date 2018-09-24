-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 24, 2018 at 05:30 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `allowed`
--

DROP TABLE IF EXISTS `allowed`;
CREATE TABLE `allowed` (
  `course_id` char(10) NOT NULL,
  `batch_name` varchar(30) NOT NULL,
  `batch_dept` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allowed`
--

INSERT INTO `allowed` (`course_id`, `batch_name`, `batch_dept`) VALUES
('Î¨Î¨Î Î›Î—', 'BATCH1', 'DIM1'),
('Î¨Î¨Î‘1', 'BATCH1', 'DIM1'),
('Î¨Î¨Î’1', 'BATCH1', 'DIM1');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
CREATE TABLE `batches` (
  `batch_name` varchar(30) NOT NULL,
  `batch_dept` char(5) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`batch_name`, `batch_dept`, `size`) VALUES
('BATCH1', 'DIM1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `Name` varchar(30) NOT NULL,
  `value` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `course_id` char(10) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `fac_id` char(25) NOT NULL,
  `allow_conflict` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `fac_id`, `allow_conflict`) VALUES
('Î¨Î¨Î Î›Î—', 'Î Î›Î—Î¡ÎŸÎ¦ÎŸÎ¡Î™ÎšÎ—Î¨Î¨', 'dean', 0),
('Î¨Î¨Î‘1', 'Î¨Î¨Î¨Î¨Î‘1', 'dean', 0),
('Î¨Î¨Î’1', 'Î¨Î¨Î¨Î¨Î¨Î¨Î’1', 'dean', 0);

-- --------------------------------------------------------

--
-- Table structure for table `depts`
--

DROP TABLE IF EXISTS `depts`;
CREATE TABLE `depts` (
  `dept_code` char(5) NOT NULL,
  `dept_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `depts`
--

INSERT INTO `depts` (`dept_code`, `dept_name`) VALUES
('1', 'dept1'),
('2', 'dept2'),
('DIM1', 'Î”Î—ÎœÎŸÎ¤Î™ÎšÎŸ1');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `uName` char(25) NOT NULL,
  `fac_name` varchar(50) NOT NULL,
  `pswd` char(64) NOT NULL,
  `level` enum('dean','hod','faculty','') NOT NULL DEFAULT 'faculty',
  `dept_code` char(5) NOT NULL,
  `dateRegd` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`uName`, `fac_name`, `pswd`, `level`, `dept_code`, `dateRegd`) VALUES
('dean', 'dean', 'dean', 'dean', '2', ''),
('sch1', 'sch1-faculty1', 'sch1', 'faculty', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `room_name` varchar(25) NOT NULL,
  `capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_name`, `capacity`) VALUES
('Î Î›Î—Î¡', 30),
('Î£Î¤1', 30),
('ÎœÎŸÎ¥Î£', 30),
('Î‘1', 30),
('Î‘2', 30),
('Î’1', 30),
('Î’2', 30),
('Î“1', 30),
('Î“2', 30),
('Î“Î¥ÎœÎ', 30),
('Î”1', 30),
('Î•1', 30);

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

DROP TABLE IF EXISTS `slots`;
CREATE TABLE `slots` (
  `table_name` varchar(30) NOT NULL,
  `day` int(1) UNSIGNED NOT NULL,
  `slot_num` int(2) UNSIGNED NOT NULL,
  `state` enum('active','disabled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`table_name`, `day`, `slot_num`, `state`) VALUES
('Î Î¡ÎŸÎ“Î¡180923', 1, 1, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 2, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 3, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 4, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 5, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 6, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 7, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 8, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 9, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 1, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 2, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 3, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 4, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 5, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 6, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 7, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 8, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 9, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 3, 1, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 3, 2, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 3, 3, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 3, 4, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 3, 5, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 3, 6, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 3, 7, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 3, 8, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 3, 9, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 4, 1, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 4, 2, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 4, 3, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 4, 4, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 4, 5, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 4, 6, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 4, 7, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 4, 8, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 4, 9, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 5, 1, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 5, 2, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 5, 3, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 5, 4, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 5, 5, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 5, 6, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 5, 7, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 5, 8, 'active'),
('Î Î¡ÎŸÎ“Î¡180923', 5, 9, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `slot_allocs`
--

DROP TABLE IF EXISTS `slot_allocs`;
CREATE TABLE `slot_allocs` (
  `table_name` varchar(30) NOT NULL,
  `day` int(1) UNSIGNED NOT NULL,
  `slot_num` int(2) UNSIGNED NOT NULL,
  `room` varchar(25) NOT NULL,
  `course_id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slot_allocs`
--

INSERT INTO `slot_allocs` (`table_name`, `day`, `slot_num`, `room`, `course_id`) VALUES
('Î Î¡ÎŸÎ“Î¡180923', 1, 4, 'Î Î›Î—Î¡', 'Î¨Î¨Î Î›Î—'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 1, 'Î“Î¥ÎœÎ', 'Î¨Î¨Î Î›Î—'),
('Î Î¡ÎŸÎ“Î¡180923', 2, 4, 'Î Î›Î—Î¡', 'Î¨Î¨Î Î›Î—'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 1, 'Î Î›Î—Î¡', 'Î¨Î¨Î‘1'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 2, 'Î Î›Î—Î¡', 'Î¨Î¨Î‘1'),
('Î Î¡ÎŸÎ“Î¡180923', 1, 3, 'Î”1', 'Î¨Î¨Î‘1');

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

DROP TABLE IF EXISTS `timetables`;
CREATE TABLE `timetables` (
  `table_name` varchar(30) NOT NULL,
  `days` int(11) NOT NULL DEFAULT '5',
  `slots` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '90',
  `start_hr` char(2) NOT NULL DEFAULT '08',
  `start_min` char(2) NOT NULL DEFAULT '30',
  `start_mer` enum('AM','PM') NOT NULL DEFAULT 'AM',
  `allowConflicts` tinyint(1) NOT NULL DEFAULT '0',
  `frozen` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timetables`
--

INSERT INTO `timetables` (`table_name`, `days`, `slots`, `duration`, `start_hr`, `start_min`, `start_mer`, `allowConflicts`, `frozen`, `active`) VALUES
('Î Î¡ÎŸÎ“Î¡180923', 5, 9, 40, '08', '15', 'AM', 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowed`
--
ALTER TABLE `allowed`
  ADD PRIMARY KEY (`course_id`,`batch_name`,`batch_dept`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `batch_name` (`batch_name`,`batch_dept`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_name`,`batch_dept`),
  ADD KEY `batches_department` (`batch_dept`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `fac_id` (`fac_id`);

--
-- Indexes for table `depts`
--
ALTER TABLE `depts`
  ADD PRIMARY KEY (`dept_code`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`uName`),
  ADD KEY `dept_code` (`dept_code`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_name`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`table_name`,`day`,`slot_num`);

--
-- Indexes for table `slot_allocs`
--
ALTER TABLE `slot_allocs`
  ADD PRIMARY KEY (`table_name`,`day`,`slot_num`,`room`),
  ADD KEY `fk_course_id` (`course_id`),
  ADD KEY `fk_room` (`room`),
  ADD KEY `fk_slot` (`day`,`slot_num`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`table_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allowed`
--
ALTER TABLE `allowed`
  ADD CONSTRAINT `batch` FOREIGN KEY (`batch_name`,`batch_dept`) REFERENCES `batches` (`batch_name`, `batch_dept`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `batches`
--
ALTER TABLE `batches`
  ADD CONSTRAINT `batches_department` FOREIGN KEY (`batch_dept`) REFERENCES `depts` (`dept_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`uName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`dept_code`) REFERENCES `depts` (`dept_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slots`
--
ALTER TABLE `slots`
  ADD CONSTRAINT `fk_timetable` FOREIGN KEY (`table_name`) REFERENCES `timetables` (`table_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slot_allocs`
--
ALTER TABLE `slot_allocs`
  ADD CONSTRAINT `fk_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_room` FOREIGN KEY (`room`) REFERENCES `rooms` (`room_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_slot` FOREIGN KEY (`table_name`,`day`,`slot_num`) REFERENCES `slots` (`table_name`, `day`, `slot_num`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
