-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2023 at 12:44 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `police_complaint`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`uname`, `pwd`) VALUES
('tnpolice', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `fir`
--

CREATE TABLE IF NOT EXISTS `fir` (
  `fir_id` int(11) NOT NULL AUTO_INCREMENT,
  `district` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `occurency_date` varchar(10) NOT NULL,
  `occurency_place` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `files` varchar(20) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`fir_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `fir`
--

INSERT INTO `fir` (`fir_id`, `district`, `name`, `gender`, `dob`, `address`, `mobile`, `email`, `subject`, `occurency_date`, `occurency_place`, `description`, `files`, `status`) VALUES
(1, 'Cudddalore', 'sdsw', 'Male', '1/1/2021', '16,new street,chidambaram', '9876543210', 'abcd@gmail.com', 'PERSON MISSING (???? ?????????', '4562', 'aedafe', 'afadefr', NULL, NULL),
(3, 'Cudddalore', 'sdsw', 'Male', '452345', '16,new street,chidambaram', '9876543210', 'abcd@gmail.com', 'PERSON MISSING (???? ?????????', '4562', 'aedafe', 'afadefr', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `missing`
--

CREATE TABLE IF NOT EXISTS `missing` (
  `date` varchar(12) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` varchar(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `identification` varchar(100) NOT NULL,
  `location` varchar(20) NOT NULL,
  `fid` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `missing`
--

INSERT INTO `missing` (`date`, `name`, `age`, `gender`, `identification`, `location`, `fid`) VALUES
('2023-03-08', 'Akash', '22', 'Male', 'Stylisg Personality', 'Chidambaram', 0),
('2023-02-26', 'manoj', '22', 'Male', 'u53ue5uyh', 'Chidambaram', 0),
('2023-03-15', 'hari', '23', 'Male', 'Stylish Personality', 'Chidambaram', 0),
('2023-03-29', 'Mohan', '26', 'Male', 'Stylish Personality', 'Chidambaram', 0),
('2023-03-23', 'Jeeva', '20', 'Male', 'Stylish Personality', 'Chidambaram', 0),
('2023-03-09', 'manoj', '22', 'Male', 'Stylish personality', 'Chidambaram', 290),
('2023-03-09', 'manoj', '22', 'Male', 'Stylish personality', 'Chidambaram', 997),
('2023-03-09', 'manoj', '22', 'Male', 'Stylish personality', 'Chidambaram', 712),
('2023-03-15', 'xyz', '23', 'Male', 'stylist', 'cdm', 337);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `fir_id` varchar(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `post` varchar(25) NOT NULL,
  `date` varchar(12) NOT NULL,
  `place` varchar(17) NOT NULL,
  `remarks` varchar(150) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`fir_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`fir_id`, `name`, `post`, `date`, `place`, `remarks`, `status`) VALUES
('1', 'Akash IPS', 'Superdant of Police', '2023-03-15', 'Chennai', 'soon..', 'process going..');

-- --------------------------------------------------------

--
-- Table structure for table `wanted`
--

CREATE TABLE IF NOT EXISTS `wanted` (
  `name` varchar(20) NOT NULL,
  `age` varchar(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `crime_type` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `fid` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wanted`
--

INSERT INTO `wanted` (`name`, `age`, `gender`, `crime_type`, `photo`, `fid`) VALUES
('manoj', '22', 'Male', 'Theft', '', NULL),
('akash', '22', 'Male', 'Theft', '', NULL),
('hari', '22', 'Male', 'Theft', '', NULL),
('jeeva', '22', 'Male', 'Theft', '', NULL),
('Mohan', '22', 'Male', 'Theft', '', NULL),
('xyz', '33', 'Male', 'stylish person', 'Manoj.jpg', 337);
