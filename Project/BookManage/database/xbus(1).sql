-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2013 at 09:39 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xbus`
--
CREATE DATABASE IF NOT EXISTS `xbus` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `xbus`;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `numberphone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `code`, `name`, `address`, `numberphone`, `email`, `status`) VALUES
(1, 'F01', 'FPT', 'Quận 9, TPHCM', '08 85245621', 'hotro@fpt.com', 1),
(2, 'V01', 'VNG', 'Quận 11 , TPHCM', '08 53342233', 'hotro@zing.vn', 1),
(3, 'V02', 'Vietel', 'Tân Bình , TPHCM', '08 3522415', 'thongtin@viettel.com', 1),
(4, 'T01', 'TQW', 'Quận 12, TPHCM', '08 3544231', 'hotro@gmail.com', 1),
(5, 'G01', 'Globel Cybersoft', 'Quận 12', '08 8232231', 'hotro@gmail.com', 1),
(8, '', 'hihi', '', '', 'hi@gmail.com', 0),
(9, '', 'hi', '', '', 'hi@gmail.com', 0),
(10, '', 'hi', '', '', 'hi@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `numberphone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) NOT NULL,
  `updatetime` datetime NOT NULL,
  `latitude` int(20) NOT NULL,
  `longtitude` int(20) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `code`, `numberphone`, `email`, `address`, `image`, `updatetime`, `latitude`, `longtitude`, `status`) VALUES
(1, 'Trần Thanh Tùng', 'e10adc3949ba59abbe56e057f20f883e', '', '0987222122', 'tungkontin@gmail.com', 'Kon Tum', '', '0000-00-00 00:00:00', 0, 0, 1),
(2, 'Nguyễn Tứ Xuyên', 'e10adc3949ba59abbe56e057f20f883e', '', '0976522234', 'ntxuyen@gmail.com', 'Long Khánh, Đồng Nai', '', '0000-00-00 00:00:00', 0, 0, 1),
(3, 'Trần Đình Đoàn', 'e10adc3949ba59abbe56e057f20f883e', '', '01647120321', 'ngonlua90@gmail.com', 'Gia Lai', '', '0000-00-00 00:00:00', 0, 0, 1),
(5, 'Lý Vĩnh Tường', 'e10adc3949ba59abbe56e057f20f883e', '', '678910', 'tuong@vng.com', 'Tan Binh', '', '0000-00-00 00:00:00', 1, 1, 1),
(6, 'Trà Lê Tiến Đạt', 'e10adc3949ba59abbe56e057f20f883e', '', '01223342231', 'chemgio@gmail.com', 'KTX xã hội hóa', '', '0000-00-00 00:00:00', 0, 0, 1),
(13, 'xuyen', 'e10adc3949ba59abbe56e057f20f883e', 'cHHx', '0200072122', 'xuyen@gmail.com', 'TpHoChiMinh', '', '0000-00-00 00:00:00', 0, 0, 0),
(14, 'xuyen', 'e10adc3949ba59abbe56e057f20f883e', '', '0200172122', 'xuyen@gmail.com', 'TpHoChiMinh', '', '0000-00-00 00:00:00', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `numberphone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) NOT NULL,
  `company` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `code`, `username`, `birthday`, `numberphone`, `email`, `address`, `image`, `company`, `status`) VALUES
(1, 'V02D01', 'Hoàng Mình Trí', '0000-00-00', '', '', '', '', 3, 1),
(2, 'F01D01', 'Nguyễn Văn Thành', '0000-00-00', '', '', '', '', 1, 1),
(3, 'F01D02', 'Trần Xuân Vũ', '0000-00-00', '', '', '', '', 1, 1),
(4, 'F01D03', 'Lê Thanh Nam', '0000-00-00', '', '', '', '', 1, 1),
(5, 'F01D04', 'Nguyễn Văn Long', '0000-00-00', '', '', '', '', 1, 1),
(6, 'V01D01', 'Lê Việt Anh', '2005-06-01', '', '', '', '', 2, 1),
(7, 'V01D02', 'Nguyễn Hoàng Lộc', '0000-00-00', '', '', '', '', 2, 1),
(8, 'F01D07', 'Huỳnh Tấn Phát', '0000-00-00', '', '', '', '', 1, 1),
(9, 'F01D05', 'Lê Văn ', '0000-00-00', '', '', '', '', 1, 1),
(10, 'F01D06', 'Vũ Văn Xương', '0000-00-00', '', '', '', '', 1, 1),
(11, 'V01D03', 'Lê Ngọc Tân', '0000-00-00', '', '', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `point`
--

CREATE TABLE IF NOT EXISTS `point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `latitude` int(20) NOT NULL,
  `longtitude` int(20) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `point`
--

INSERT INTO `point` (`id`, `code`, `name`, `latitude`, `longtitude`, `status`) VALUES
(1, '', 'Trường Sa', 0, 0, 1),
(2, '', 'Hoàng sa', 0, 0, 1),
(3, '', 'Sài Gòn', 0, 0, 1),
(4, '', 'Long Khánh', 0, 0, 1),
(5, '', 'Phan Thiết', 0, 0, 1),
(6, '', 'Vũng Tàu', 0, 0, 1),
(7, '', 'Cà Mau', 0, 0, 1),
(8, '', 'Đà Nẵng', 0, 0, 1),
(9, '', 'Quảng Ngãi', 0, 0, 1),
(10, '', 'Quy Nhơn', 0, 0, 1),
(11, '', 'Khánh Hòa', 0, 0, 1),
(12, '', 'Hà Nội', 0, 0, 1),
(13, '', 'Ninh Bình', 0, 0, 1),
(14, '', 'Nghệ An', 0, 0, 1),
(15, '', 'Huế', 0, 0, 1),
(17, '1', 'Sài Gòn', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pointroute`
--

CREATE TABLE IF NOT EXISTS `pointroute` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `route` int(10) NOT NULL,
  `point` int(10) NOT NULL,
  `nextpoint` int(10) NOT NULL,
  `prevpoint` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE IF NOT EXISTS `quantity` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `quantity` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE IF NOT EXISTS `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `user`, `code`, `price`, `status`) VALUES
(1, 1, 'F01R01', 50, 1),
(2, 2, 'V01R01', 70, 2),
(3, 1, 'F01R03', 80, 1),
(4, 2, 'V01R04', 60, 0),
(5, 2, 'V01R05', 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE IF NOT EXISTS `seat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `position` int(10) NOT NULL,
  `trip` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=202 ;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`id`, `position`, `trip`, `status`) VALUES
(11, 1, 15, 1),
(12, 2, 15, 1),
(13, 3, 15, 1),
(14, 4, 15, 1),
(15, 5, 15, 1),
(16, 6, 15, 1),
(17, 7, 15, 1),
(18, 1, 2, 1),
(19, 2, 2, 0),
(20, 3, 2, 0),
(21, 4, 2, 0),
(22, 5, 2, 0),
(23, 6, 2, 0),
(24, 7, 2, 0),
(25, 8, 2, 0),
(26, 9, 2, 0),
(27, 10, 2, 0),
(28, 11, 2, 0),
(29, 12, 2, 0),
(30, 13, 2, 0),
(31, 14, 2, 0),
(32, 15, 2, 0),
(33, 16, 2, 0),
(34, 17, 2, 0),
(35, 18, 2, 0),
(36, 19, 2, 0),
(37, 20, 2, 0),
(38, 21, 2, 0),
(39, 22, 2, 0),
(40, 23, 2, 0),
(41, 24, 2, 0),
(42, 25, 2, 0),
(43, 26, 2, 0),
(44, 27, 2, 0),
(45, 28, 2, 0),
(46, 29, 2, 0),
(47, 30, 2, 0),
(48, 31, 2, 0),
(49, 32, 2, 0),
(50, 33, 2, 0),
(51, 34, 2, 0),
(52, 35, 2, 0),
(53, 36, 2, 0),
(54, 37, 2, 0),
(55, 38, 2, 0),
(56, 39, 2, 0),
(57, 40, 2, 0),
(58, 1, 2, 1),
(59, 2, 2, 0),
(60, 3, 2, 0),
(61, 4, 2, 0),
(62, 5, 2, 0),
(63, 6, 2, 0),
(64, 7, 2, 0),
(65, 8, 2, 0),
(66, 9, 2, 0),
(67, 10, 2, 0),
(68, 11, 2, 0),
(69, 12, 2, 0),
(70, 13, 2, 0),
(71, 14, 2, 0),
(72, 15, 2, 0),
(73, 16, 2, 0),
(74, 17, 2, 0),
(75, 18, 2, 0),
(76, 19, 2, 0),
(77, 20, 2, 0),
(78, 21, 2, 0),
(79, 22, 2, 0),
(80, 23, 2, 0),
(81, 24, 2, 0),
(82, 25, 2, 0),
(83, 26, 2, 0),
(84, 27, 2, 0),
(85, 28, 2, 0),
(86, 29, 2, 0),
(87, 30, 2, 0),
(88, 31, 2, 0),
(89, 32, 2, 0),
(90, 33, 2, 0),
(91, 34, 2, 0),
(92, 35, 2, 0),
(93, 36, 2, 0),
(94, 37, 2, 0),
(95, 38, 2, 0),
(96, 39, 2, 0),
(97, 40, 2, 0),
(98, 41, 2, 0),
(99, 42, 2, 0),
(100, 43, 2, 0),
(101, 44, 2, 0),
(102, 45, 2, 0),
(103, 46, 2, 0),
(104, 47, 2, 0),
(105, 48, 2, 0),
(106, 49, 2, 0),
(107, 50, 2, 0),
(108, 51, 2, 0),
(109, 52, 2, 0),
(110, 1, 2, 1),
(111, 2, 2, 0),
(112, 3, 2, 0),
(113, 4, 2, 0),
(114, 5, 2, 0),
(115, 6, 2, 0),
(116, 7, 2, 0),
(117, 8, 2, 0),
(118, 9, 2, 0),
(119, 10, 2, 0),
(120, 11, 2, 0),
(121, 12, 2, 0),
(122, 13, 2, 0),
(123, 14, 2, 0),
(124, 15, 2, 0),
(125, 16, 2, 0),
(126, 17, 2, 0),
(127, 18, 2, 0),
(128, 19, 2, 0),
(129, 20, 2, 0),
(130, 21, 2, 0),
(131, 22, 2, 0),
(132, 23, 2, 0),
(133, 24, 2, 0),
(134, 25, 2, 0),
(135, 26, 2, 0),
(136, 27, 2, 0),
(137, 28, 2, 0),
(138, 29, 2, 0),
(139, 30, 2, 0),
(140, 31, 2, 0),
(141, 32, 2, 0),
(142, 33, 2, 0),
(143, 34, 2, 0),
(144, 35, 2, 0),
(145, 36, 2, 0),
(146, 37, 2, 0),
(147, 38, 2, 0),
(148, 39, 2, 0),
(149, 40, 2, 0),
(150, 1, 3, 1),
(151, 2, 3, 0),
(152, 3, 3, 0),
(153, 4, 3, 0),
(154, 5, 3, 0),
(155, 6, 3, 0),
(156, 7, 3, 0),
(157, 8, 3, 0),
(158, 9, 3, 0),
(159, 10, 3, 0),
(160, 11, 3, 0),
(161, 12, 3, 0),
(162, 13, 3, 0),
(163, 14, 3, 0),
(164, 15, 3, 0),
(165, 16, 3, 0),
(166, 17, 3, 0),
(167, 18, 3, 0),
(168, 19, 3, 0),
(169, 20, 3, 0),
(170, 21, 3, 0),
(171, 22, 3, 0),
(172, 23, 3, 0),
(173, 24, 3, 0),
(174, 25, 3, 0),
(175, 26, 3, 0),
(176, 27, 3, 0),
(177, 28, 3, 0),
(178, 29, 3, 0),
(179, 30, 3, 0),
(180, 31, 3, 0),
(181, 32, 3, 0),
(182, 33, 3, 0),
(183, 34, 3, 0),
(184, 35, 3, 0),
(185, 36, 3, 0),
(186, 37, 3, 0),
(187, 38, 3, 0),
(188, 39, 3, 0),
(189, 40, 3, 0),
(190, 41, 3, 0),
(191, 42, 3, 0),
(192, 43, 3, 0),
(193, 44, 3, 0),
(194, 45, 3, 0),
(195, 46, 3, 0),
(196, 47, 3, 0),
(197, 48, 3, 0),
(198, 49, 3, 0),
(199, 50, 3, 0),
(200, 51, 3, 0),
(201, 52, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(10) NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(0, 'disable'),
(1, 'enable'),
(2, 'ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `trip` int(10) NOT NULL,
  `customer` int(10) NOT NULL,
  `seat` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `code`, `trip`, `customer`, `seat`, `status`) VALUES
(1, '', 3, 3, 1, 0),
(2, '', 2, 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE IF NOT EXISTS `transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `numberplate` varchar(30) NOT NULL,
  `quantity` int(10) NOT NULL,
  `aircondition` int(10) NOT NULL,
  `company` int(10) NOT NULL,
  `type` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`id`, `code`, `numberplate`, `quantity`, `aircondition`, `company`, `type`, `status`) VALUES
(1, 'F01C01', '29-Z9-2929', 4, 1, 1, 0, 1),
(2, 'T01C01', '60-R2-7777', 4, 1, 4, 0, 2),
(3, 'V01C02', '47-V7-5236', 12, 1, 2, 0, 1),
(4, 'V02C02', '54-U7-1234', 7, 0, 3, 0, 0),
(5, 'G01C01', '78-M1-2952', 4, 0, 5, 0, 0),
(6, 'F01C03', '92-L1-1231', 4, 0, 1, 0, 1),
(7, 'T01C02', '78-C1-3052', 7, 0, 4, 0, 1),
(8, 'V02C01', '52-M1-1234', 4, 0, 3, 0, 2),
(9, 'G01C02', '78-M1-4052', 12, 0, 5, 0, 1),
(10, 'V01C03', '92-M1-3434', 7, 0, 2, 0, 1),
(11, 'F01C02', '29-Z9-2930', 7, 0, 1, 0, 1),
(12, 'V01C01', '29-Z9-2931', 4, 0, 2, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE IF NOT EXISTS `trip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `transport` int(10) NOT NULL,
  `driver` int(10) NOT NULL,
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL,
  `route` int(10) NOT NULL,
  `updatetime` datetime NOT NULL,
  `latitude` int(20) NOT NULL,
  `longtitude` int(20) NOT NULL,
  `surtax` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`id`, `code`, `transport`, `driver`, `starttime`, `endtime`, `route`, `updatetime`, `latitude`, `longtitude`, `surtax`, `quantity`, `status`) VALUES
(2, 'F01R01T02', 2, 2, '2014-10-05 05:37:20', '2015-10-05 05:37:20', 1, '0000-00-00 00:00:00', 0, 0, 10, 1, 1),
(3, 'F01R01T09', 1, 2, '2014-12-09 09:41:44', '2015-01-09 09:41:44', 1, '0000-00-00 00:00:00', 0, 0, 10, 1, 1),
(4, 'F01R03T03', 3, 1, '2013-09-11 15:30:28', '2014-04-09 12:28:00', 3, '0000-00-00 00:00:00', 0, 0, 20, 2, 1),
(5, 'V01R05T03', 6, 6, '2013-07-17 17:41:39', '2013-10-12 15:29:32', 5, '0000-00-00 00:00:00', 0, 0, 15, 0, 1),
(6, 'F01R01T07', 3, 3, '2013-10-11 11:29:32', '2014-07-18 14:42:34', 1, '0000-00-00 00:00:00', 0, 0, 10, 0, 1),
(7, 'V01R01T03', 2, 3, '2014-10-05 05:37:20', '2019-10-05 05:37:20', 2, '0000-00-00 00:00:00', 0, 0, 6, 0, 1),
(8, 'F01R03T01', 6, 6, '2014-10-05 05:37:20', '2019-10-05 05:37:20', 3, '0000-00-00 00:00:00', 0, 0, 7, 0, 1),
(9, 'V01R01T01', 6, 4, '2014-10-05 05:37:20', '2019-10-05 05:37:20', 2, '0000-00-00 00:00:00', 0, 0, 6, 0, 1),
(10, 'V01R04T03', 7, 9, '2014-10-05 05:37:20', '2019-10-05 05:37:20', 4, '0000-00-00 00:00:00', 0, 0, 20, 0, 1),
(11, 'V01R04T01', 9, 11, '2014-10-05 05:37:20', '2019-10-05 05:37:20', 4, '0000-00-00 00:00:00', 0, 0, 10, 0, 1),
(12, 'V01R01T02', 3, 11, '2014-10-05 05:37:20', '2019-10-05 05:37:20', 2, '0000-00-00 00:00:00', 0, 0, 0, 0, 1),
(13, 'F01R03T04', 7, 9, '2014-10-05 05:37:20', '2019-10-05 05:37:20', 3, '0000-00-00 00:00:00', 0, 0, 10, 0, 1),
(14, 'V01R01T04', 3, 9, '2014-10-05 05:37:20', '2019-10-05 05:37:20', 2, '0000-00-00 00:00:00', 0, 0, 5, 0, 1),
(15, 'F01R01T01', 8, 4, '2020-10-05 05:37:20', '2030-10-05 05:37:20', 1, '0000-00-00 00:00:00', 0, 0, 0, 0, 1),
(16, 'F01R01T11', 8, 10, '2020-10-05 05:37:20', '2030-10-05 05:37:20', 1, '0000-00-00 00:00:00', 0, 0, 0, 0, 1),
(17, 'V01R05T01', 3, 10, '2020-10-05 05:37:20', '2030-10-05 05:37:20', 5, '0000-00-00 00:00:00', 0, 0, 0, 0, 1),
(18, 'F01R01T01', 3, 4, '2020-10-05 05:37:20', '2030-10-05 05:37:20', 1, '0000-00-00 00:00:00', 0, 0, 0, 0, 1),
(19, 'F01R03T02', 12, 8, '2020-10-05 05:37:20', '2030-10-05 05:37:20', 3, '0000-00-00 00:00:00', 0, 0, 3, 0, 1),
(20, 'V01R04T02', 12, 7, '2020-10-05 05:37:20', '2030-10-05 05:37:20', 4, '0000-00-00 00:00:00', 0, 0, 3, 0, 1),
(21, 'F01R01T03', 11, 4, '2020-10-05 05:37:20', '2030-10-05 05:37:20', 1, '0000-00-00 00:00:00', 0, 0, 3, 0, 1),
(22, 'V01R05T02', 10, 5, '2020-10-05 05:37:20', '2030-10-05 05:37:20', 5, '0000-00-00 00:00:00', 0, 0, 5, 0, 1),
(23, 'F01R01T16', 9, 5, '2020-10-05 05:37:20', '2030-10-05 05:37:20', 1, '0000-00-00 00:00:00', 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `numberphone` varchar(20) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `company` int(10) NOT NULL,
  `userpower` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `code`, `username`, `account`, `password`, `numberphone`, `address`, `email`, `image`, `company`, `userpower`, `status`) VALUES
(1, 'F01U05', 'Nguyễn Tứ Xuyên', 'xuyen', 'e10adc3949ba59abbe56e057f20f883e', '0934085145', 'Biên Hòa Đồng Nai', 'xuyen@gmail.com', '', 1, 1, 1),
(2, 'V01U01', 'Nguyễn Thái Nhân', 'nhan', 'e10adc3949ba59abbe56e057f20f883e', '01647120384', 'Quy Nhơn, Bình Định', 'ntnhan90@gmail.com', 'asdf', 2, 1, 1),
(3, 'V01U02', 'Nguyễn Văn Long', '', 'e10adc3949ba59abbe56e057f20f883e', '0923431111', 'TP Hồ Chí Minh', 'ntnhan90@gmail.com', '', 2, 1, 1),
(4, 'F01U02', 'Nguyễn Viết Nguyên', '', 'e10adc3949ba59abbe56e057f20f883e', '0915312311', 'Quy Nhơn, Bình Định', 'xuyen@gmail.com', '', 1, 2, 1),
(5, 'V01U03', 'Trần Đình Đoàn', '', 'e10adc3949ba59abbe56e057f20f883e', '0952312311', 'TP Hồ Chí Minh', 'ntnhan90@gmail.com', '', 2, 2, 1),
(6, 'V02U01', 'Phan Văn Trị', '', 'e10adc3949ba59abbe56e057f20f883e', '0912312411', 'Quy Nhơn, Bình Định', 'xuyen@gmail.com', '', 3, 2, 1),
(7, 'T01U01', 'Lê Minh Xuân', '', 'e10adc3949ba59abbe56e057f20f883e', '0912312311', 'TP Hồ Chí Minh', 'ntnhan90@gmail.com', '', 4, 2, 1),
(8, 'V02U02', 'Nguyễn Minh Nhật', '', 'e10adc3949ba59abbe56e057f20f883e', '0915312311', 'Quy Nhơn, Bình Định', 'xuyen@gmail.com', '', 3, 2, 1),
(9, 'G01U01', 'Huỳnh Văn Tuấn', '', 'e10adc3949ba59abbe56e057f20f883e', '0912322311', 'TP Hồ Chí Minh', 'ntnhan90@gmail.com', '', 5, 2, 1),
(10, 'G01U02', 'Hoàng Minh Trí', '', 'e10adc3949ba59abbe56e057f20f883e', '0912312312', 'Quy Nhơn, Bình Định', 'xuyen@gmail.com', '', 5, 2, 1),
(11, 'T01U02', 'Lê Thái', '', 'e10adc3949ba59abbe56e057f20f883e', '0923431112', 'Bien Hoa', 'antnhan90@gmail.com', '', 4, 2, 1),
(12, 'V02U03', 'Trần Công', '', 'e10adc3949ba59abbe56e057f20f883e', '0912342311', 'Quy Nhơn, Bình Định', 'xuyen@gmail.com', '', 2, 1, 1),
(13, 'F01U03', 'Thái Văn Toàn', '', 'e10adc3949ba59abbe56e057f20f883e', '0912223311', 'Biên Hòa Đồng Nai', 'ntnhan90@gmail.com', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userpower`
--

CREATE TABLE IF NOT EXISTS `userpower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `userpower`
--

INSERT INTO `userpower` (`id`, `name`, `status`) VALUES
(1, 'Staff', 1),
(2, 'Admin', 1),
(7, 'Mod', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
