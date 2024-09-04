-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2024 at 12:09 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `andr_healthhub`
--
CREATE DATABASE IF NOT EXISTS `andr_healthhub` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `andr_healthhub`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `userid` varchar(200) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `pwd`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bedbook`
--

CREATE TABLE IF NOT EXISTS `bedbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `userid` varchar(200) NOT NULL,
  `hid` varchar(200) NOT NULL,
  `bedid` varchar(50) NOT NULL,
  `bstatus` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bedbook`
--

INSERT INTO `bedbook` (`id`, `dt`, `userid`, `hid`, `bedid`, `bstatus`) VALUES
(1, '2024-04-24', 'sam', 'jawahar@gmail.com', 'B1', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE IF NOT EXISTS `beds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `huserid` varchar(200) NOT NULL,
  `bedno` varchar(20) NOT NULL,
  PRIMARY KEY (`huserid`,`bedno`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`id`, `huserid`, `bedno`) VALUES
(1, 'jawahar@gmail.com', 'B1'),
(2, 'jawahar@gmail.com', 'B2'),
(3, 'jawahar@gmail.com', 'B3'),
(4, 'jawahar@gmail.com', 'B4'),
(5, 'jawahar@gmail.com', 'M1'),
(6, 'jawahar@gmail.com', 'M2'),
(7, 'gr@gmail.com', 'A1'),
(8, 'gr@gmail.com', 'A2'),
(9, 'gr@gmail.com', 'A3'),
(10, 'gr@gmail.com', 'A4'),
(11, 'gr@gmail.com', 'A5');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE IF NOT EXISTS `blood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bgname` varchar(100) NOT NULL,
  PRIMARY KEY (`bgname`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`id`, `bgname`) VALUES
(1, 'A+ve'),
(2, 'A-ve'),
(3, 'AB+ve'),
(4, 'AB-ve'),
(5, 'O+ve'),
(6, 'O-ve'),
(7, 'A1B+ve');

-- --------------------------------------------------------

--
-- Table structure for table `bloodbook`
--

CREATE TABLE IF NOT EXISTS `bloodbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `userid` varchar(200) NOT NULL,
  `hid` varchar(200) NOT NULL,
  `bloodid` varchar(50) NOT NULL,
  `bunits` int(11) NOT NULL,
  `bstatus` varchar(20) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bloodbook`
--

INSERT INTO `bloodbook` (`id`, `dt`, `userid`, `hid`, `bloodid`, `bunits`, `bstatus`) VALUES
(1, '2024-04-26', 'sam', 'jawahar@gmail.com', '1', 1, 'accept');

-- --------------------------------------------------------

--
-- Table structure for table `bloodstock`
--

CREATE TABLE IF NOT EXISTS `bloodstock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `huserid` varchar(200) NOT NULL,
  `bgname` varchar(50) NOT NULL,
  `bunits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `bloodstock`
--

INSERT INTO `bloodstock` (`id`, `huserid`, `bgname`, `bunits`) VALUES
(1, 'jawahar@gmail.com', 'A+ve', 14),
(2, 'jawahar@gmail.com', 'O+ve', 5),
(3, 'jawahar@gmail.com', 'O-ve', 2),
(4, 'jawahar@gmail.com', 'A1B+ve', 1),
(5, 'gr@gmail.com', 'A+ve', 10),
(6, 'gr@gmail.com', 'A-ve', 5),
(7, 'gr@gmail.com', 'O+ve', 20);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `cname` varchar(200) NOT NULL,
  PRIMARY KEY (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cname`) VALUES
('Madurai'),
('Sivakasi'),
('Trichy');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE IF NOT EXISTS `hospitals` (
  `hname` varchar(100) NOT NULL,
  `addr` varchar(300) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`hname`, `addr`, `cname`, `mobile`, `userid`, `pwd`) VALUES
('GR Hospital', '994,South Street,\r\nKK Nagar,', 'Madurai', '8928493289', 'gr@gmail.com', 'g'),
('Jawahar Hospitals', '343,South Street', 'Madurai', '8889989892', 'jawahar@gmail.com', 'j'),
('MH Hospitals', '343,South Car Street,\r\nAnna Nagar', 'Madurai', '8890193209', 'mh@gmail.com', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `newuser`
--

CREATE TABLE IF NOT EXISTS `newuser` (
  `uname` varchar(200) NOT NULL,
  `addr` varchar(500) NOT NULL,
  `city` varchar(20) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newuser`
--

INSERT INTO `newuser` (`uname`, `addr`, `city`, `occupation`, `mobile`, `userid`, `pwd`) VALUES
('Samuel', '343,Church Road', 'Madurai', 'Business', '8977655908', 'sam', 's');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
