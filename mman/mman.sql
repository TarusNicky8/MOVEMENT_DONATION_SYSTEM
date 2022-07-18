-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2017 at 03:58 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mman`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Bank_Name` varchar(200) DEFAULT NULL,
  `Account_Number` varchar(200) DEFAULT NULL,
  `Branch` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `Bank_Name`, `Account_Number`, `Branch`) VALUES
(1, 'LIPA NA MPESA', '11111110', 'Safaricom'),
(2, 'COPARATIVE BANK', '0213289993', 'Eldy'),
(3, 'NATIONAL BANK', '099887765666', 'Eldy'),
(4, 'COMMERCIAL BANK', '3476374654623', 'Eldy'),
(5, 'STARDAND CHARTER', '345646332', 'Eldy'),
(6, 'EQUIT BANK', '21242423432', 'Eldy');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(128) NOT NULL,
  PRIMARY KEY (`activity_log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, '', '2017-01-10 16:41:42', 'Added member 0723437369'),
(2, 'admin', '2017-01-11 10:19:34', 'Edited Member Kithinji'),
(3, 'admin', '2017-01-11 10:23:28', 'Edited Member Kithinji'),
(4, 'admin', '2017-01-11 10:26:45', 'Edited Member Kithinji'),
(5, 'admin', '2017-01-11 10:28:02', 'Edited Member Kithinji'),
(6, 'admin', '2017-01-11 10:29:31', 'Edited Member Kithinji'),
(7, 'admin', '2017-01-11 10:32:58', 'Edited Member Kithinji'),
(8, 'admin', '2017-01-11 10:33:24', 'Edited Member Kithinji'),
(9, 'admin', '2017-01-11 10:34:24', 'Added member 0725873436'),
(10, 'admin', '2017-01-11 11:13:12', 'Edited Visitor Kithinji'),
(11, 'admin', '2017-01-11 11:16:00', 'Edited Visitor Kithinji'),
(12, 'admin', '2017-01-11 19:19:32', 'Added member 0725873436'),
(13, 'admin', '2017-01-11 19:20:31', 'Added member 725873436'),
(14, '', '2017-01-12 06:05:26', 'Added member 00000000000'),
(15, '', '2017-02-15 05:54:40', 'Added member 0733997722'),
(16, 'admin', '2017-02-20 12:30:16', 'Edited member Kithinji');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(128) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `adminthumbnails` varchar(300) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `adminthumbnails`) VALUES
(1, 'Kithinji', 'Godfrey', 'admin', 'admin', 'uploads/me.jpg'),
(2, 'admin', 'admin', 'master', '1234', 'images/NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `times` date NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`announcement_id`, `title`, `content`, `times`) VALUES
(1, 'notice', 'ALL FEES SHOULD BE PAID THROUGH THE ACCOUNTS GIVEN. NO CASH WILL BE ACCEPTED', '2016-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `Title` text NOT NULL,
  `Date` date NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `Title`, `Date`, `content`) VALUES
(1, 'kenya', '2017-02-24', 'Prayer day'),
(2, 'geegeg', '2017-02-24', 'egegegeg'),
(3, 'kenya', '2017-02-24', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `giving`
--

CREATE TABLE IF NOT EXISTS `giving` (
  `givingid` int(10) NOT NULL AUTO_INCREMENT,
  `Amount` varchar(100) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `na` varchar(10) DEFAULT NULL,
  `ya` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`givingid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `giving`
--

INSERT INTO `giving` (`givingid`, `Amount`, `Trcode`, `paytime`, `na`, `ya`) VALUES
(1, '1000', 'KKKSJKJS', '2016-10-23 19:13:02', '0725873436', 'Church Mission'),
(2, '2000', 'KAJHDJHJD', '2016-10-23 19:42:17', '0725873436', 'Mjengo'),
(4, '2000', 'KAJHDJHJD', '2016-10-23 19:47:43', '0725873436', 'Mjengo'),
(5, '5500', 'WEADADADD', '2017-01-11 10:35:31', '0725873436', 'Godfrey Kithinji'),
(6, '3000', 'ttytegfdg', '2017-01-11 10:38:41', '0725873436', 'Rent');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `keyu` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`keyu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`keyu`, `fname`, `sname`, `lname`, `Gender`, `Birthday`, `Residence`, `pob`, `ministry`, `mobile`, `email`, `thumbnail`, `password`, `id`, `date`) VALUES
(1, 'Godfrey', 'Kithinji', 'Mutia', 'Male', '1992-02-24', 'Huruma', 'Meru', 'Praise and Worship', '0725873436', 'godkith@gmail.com', 'uploads/none.jpg', '1234', '0725873436', '2017-01-11 11:34:34'),
(3, 'SIMON', 'Obonyo', 'MUSAU', 'other', '1903-12-01', 'Kiambiu', 'Kiambuu', 'Praise and Worship', '0720571204', 'email', 'uploads/none.png', '1234', '0720571204', '2017-01-11 11:34:34'),
(4, 'Moses', 'Nkoitoi', 'Tiameti', 'Male', '1990-12-19', 'Kiambiu', 'Nairobi', 'Hostessing', '0723437369', 'godkde9@gmail.com', 'uploads/none.png', '0000', '0723437369', '2017-01-11 11:34:34'),
(5, 'GEOFFREY', 'Obonyo', 'MUSAU', 'Male', '2000-03-03', 'Kiambiu', 'Kiambuu', 'Ushering', '00000000000', 'kifrey24@gmail.com', 'uploads/none.png', '0000', '0000000000', '2017-01-12 06:05:26'),
(6, 'baraka', 'abraham', 'abraham', 'Male', '1987-01-16', 'kiambu', 'kiambu', 'Sunday School', '0733997722', 'barakaabraham@gmail.com', 'uploads/none.png', '0000', '0733997722', '2017-02-15 05:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `offering`
--

CREATE TABLE IF NOT EXISTS `offering` (
  `offeringid` int(10) NOT NULL AUTO_INCREMENT,
  `Amount` varchar(100) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `na` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`offeringid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `offering`
--

INSERT INTO `offering` (`offeringid`, `Amount`, `Trcode`, `paytime`, `na`) VALUES
(1, '2000', 'KAJHDJHJD', '2016-10-23 19:55:47', '0725873436'),
(2, '8000', 'WEADADADD', '2017-01-11 10:05:39', '0725873436'),
(3, '8000', 'WWEDDDDDS', '2017-01-11 12:24:29', '0725873436');

-- --------------------------------------------------------

--
-- Table structure for table `sundays`
--

CREATE TABLE IF NOT EXISTS `sundays` (
  `keyu` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`keyu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sundays`
--

INSERT INTO `sundays` (`keyu`, `fname`, `sname`, `lname`, `Gender`, `Birthday`, `Residence`, `pob`, `ministry`, `mobile`, `thumbnail`, `id`) VALUES
(1, 'Godfrey', 'Kithinji', 'Kithinji', '', '2015-09-01', 'Nairobi', 'Nairobi', 'SoftMaven Technologies', '725873436', 'uploads/none.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teens`
--

CREATE TABLE IF NOT EXISTS `teens` (
  `keyu` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`keyu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `teens`
--

INSERT INTO `teens` (`keyu`, `fname`, `sname`, `lname`, `Gender`, `Birthday`, `Residence`, `pob`, `ministry`, `mobile`, `thumbnail`, `id`) VALUES
(1, 'Aron', 'Mwingirwa', 'Mutia', '', '2007-03-12', 'Meru', 'meru', 'kithinji Godfrey', '0725873436', 'uploads/none.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tithe`
--

CREATE TABLE IF NOT EXISTS `tithe` (
  `titheid` int(10) NOT NULL AUTO_INCREMENT,
  `Amount` varchar(100) DEFAULT NULL,
  `Trcode` varchar(100) DEFAULT NULL,
  `paytime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `na` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`titheid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tithe`
--

INSERT INTO `tithe` (`titheid`, `Amount`, `Trcode`, `paytime`, `na`) VALUES
(1, '1000', 'KMSMBNJDW', '2016-10-23 15:38:57', '0725873436'),
(2, '2000', 'KAJHDJHJD', '2016-10-23 19:52:58', '0725873436'),
(3, '8000', 'WEADADADD', '2017-01-11 09:57:26', '0725873436');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(128) NOT NULL,
  `admin_id` int(128) NOT NULL,
  `student_id` varchar(128) NOT NULL,
  PRIMARY KEY (`user_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE IF NOT EXISTS `visitor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Birthday` varchar(100) DEFAULT NULL,
  `Residence` varchar(100) DEFAULT NULL,
  `pob` varchar(100) DEFAULT NULL,
  `ministry` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `fname`, `sname`, `lname`, `Gender`, `Birthday`, `Residence`, `pob`, `ministry`, `mobile`, `thumbnail`) VALUES
(1, 'Godfrey', 'Kithinji', 'Mutia', 'Male', '1989-01-31', 'Nairobi', 'Nairobi', 'Sunday Service', '0725873436', 'uploads/none.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
