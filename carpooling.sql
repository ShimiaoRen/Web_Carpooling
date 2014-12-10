-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 21, 2013 at 06:13 PM
-- Server version: 5.0.96-community-nt
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carpooling`
--
CREATE DATABASE IF NOT EXISTS `carpooling` DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci;
USE `carpooling`;

-- --------------------------------------------------------

--
-- Table structure for table `driverapply`
--

CREATE TABLE IF NOT EXISTS `driverapply` (
  `passengerpostID` varchar(50) NOT NULL,
  `passengeremail` varchar(50) NOT NULL,
  `driveremail` varchar(50) NOT NULL,
  PRIMARY KEY  (`passengerpostID`,`driveremail`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `driverapply`
--

INSERT INTO `driverapply` (`passengerpostID`, `passengeremail`, `driveremail`) VALUES
('2', 'k@pitt.edu', 'z@pitt.edu');

-- --------------------------------------------------------

--
-- Table structure for table `passengerapply`
--

CREATE TABLE IF NOT EXISTS `passengerapply` (
  `driverpostID` varchar(50) NOT NULL,
  `passengeremail` varchar(50) NOT NULL,
  `driveremail` varchar(50) NOT NULL,
  PRIMARY KEY  (`driverpostID`,`passengeremail`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `passengerapply`
--

INSERT INTO `passengerapply` (`driverpostID`, `passengeremail`, `driveremail`) VALUES
('4', 'z@pitt.edu', 'k@pitt.edu'),
('5', 'k@pitt.edu', 'z@pitt.edu');

-- --------------------------------------------------------

--
-- Table structure for table `postasdriver`
--

CREATE TABLE IF NOT EXISTS `postasdriver` (
  `postID` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `departure` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `departuredate` varchar(50) NOT NULL,
  `estimatedleavingtime` varchar(50) NOT NULL,
  `availableseats` varchar(50) NOT NULL,
  `cartype` varchar(50) NOT NULL,
  `estimatedtotalcost` varchar(50) NOT NULL,
  `estimatedcostperpassenger` varchar(50) NOT NULL,
  `phone` varchar(50) default NULL,
  `memo` varchar(100) default NULL,
  `numberofappliedpassengers` varchar(50) default NULL,
  PRIMARY KEY  (`postID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `postasdriver`
--

INSERT INTO `postasdriver` (`postID`, `email`, `departure`, `destination`, `departuredate`, `estimatedleavingtime`, `availableseats`, `cartype`, `estimatedtotalcost`, `estimatedcostperpassenger`, `phone`, `memo`, `numberofappliedpassengers`) VALUES
('1', 'k@pitt.edu', 'Pittsburgh,PA', 'Los Angeles,CA', '2013-11-20', 'not sure', '1', 'not sure', '12', '12', '2403572432', 'nothing', '0'),
('2', 'k@pitt.edu', 'Pittsburgh,PA', 'Los Angeles,CA', '2013-11-13', 'not sure', '1', 'not sure', '100', '20', '2403572432', '', '0'),
('3', 'k@pitt.edu', 'Los Angeles,CA', 'New York', '2013-11-20', 'noon', '3', 'SUV', '30', '10', '2403572432', 'hahahah', '0'),
('4', 'k@pitt.edu', 'Pittsburgh,PA', 'New York', '2013-11-5', 'not sure', '1', 'SUV', '20', '20', '', '', '1'),
('5', 'z@pitt.edu', 'New York', 'Los Angeles,CA', '2013-11-18', 'noon', '3', 'MPV', '20', '20', '2403572432', '', '1'),
('6', 'm@pitt.edu', 'Pittsburgh,PA', 'Los Angeles,CA', '2013-11-20', 'not sure', '1', 'not sure', '20', '10', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `postaspassenger`
--

CREATE TABLE IF NOT EXISTS `postaspassenger` (
  `postID` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `departure` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `departuredate` varchar(50) NOT NULL,
  `estimatedleavingtime` varchar(50) NOT NULL,
  `needseats` varchar(50) NOT NULL,
  `expectedcartype` varchar(50) NOT NULL,
  `expectedcost` varchar(50) NOT NULL,
  `phone` varchar(50) default NULL,
  `memo` varchar(100) default NULL,
  `numberofapplieddrivers` varchar(50) default NULL,
  PRIMARY KEY  (`postID`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `postaspassenger`
--

INSERT INTO `postaspassenger` (`postID`, `email`, `departure`, `destination`, `departuredate`, `estimatedleavingtime`, `needseats`, `expectedcartype`, `expectedcost`, `phone`, `memo`, `numberofapplieddrivers`) VALUES
('1', 'z@pitt.edu', 'Pittsburgh,PA', 'Los Angeles,CA', '2013-11-13', 'morning', '2', 'MPV', '10', '', '', '0'),
('2', 'k@pitt.edu', 'Los Angeles,CA', 'Pittsburgh,PA', '2013-11-26', 'not sure', '1', 'doesn''t matter', '10', '1111111111', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `driverlicense` varchar(50) default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `sex`, `password`, `dob`, `driverlicense`) VALUES
('kimi', 'k@pitt.edu', 'male', '1', '2013-11-13', '12345678'),
('mike', 'm@pitt.edu', 'male', '1', '1990-11-14', '12345678'),
('zoe', 'z@pitt.edu', 'male', '2', '1990-9-15', '11111111');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
