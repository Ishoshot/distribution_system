-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2019 at 07:02 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distribution`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(2) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `salt` varchar(32) NOT NULL,
  `group` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `salt`, `group`) VALUES
(41, 'admin', 'd5a5452313755a1cc9b9d0bca5b78349ba6027353ef9ac82421abc3b9a9e4360', '|\":º€ìÀ\"³Û¿—N…êžKÔ–ÅY”W¡Ý.', 2),
(43, 'distribution', 'ca87554e6c81f154529f4194f1281d3218e4de4772ae52e1b87ebfeb0d0971bc', 'Õ3´ñ	&ð±\n}MÑ×^æZŒÉÊD{‡¡Y0?!GH', 2),
(45, 'hh', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permissions` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standard user', ''),
(2, 'Administrator', '{\r\n\"admin\": 1,\r\n\"moderator\": 1\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl20172018`
--

CREATE TABLE `tbl20172018` (
  `id` int(5) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `othername` varchar(30) NOT NULL,
  `matric_no` varchar(30) NOT NULL,
  `programme` varchar(30) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl20182019`
--

CREATE TABLE `tbl20182019` (
  `id` int(7) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `othername` varchar(30) NOT NULL,
  `matric_no` varchar(30) NOT NULL,
  `programme` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl20182019`
--

INSERT INTO `tbl20182019` (`id`, `surname`, `firstname`, `othername`, `matric_no`, `programme`, `level`) VALUES
(1, 'Adesanya', 'Folorunso', ' Opeyemi', '14/69/0001', 'FT', 'HND'),
(2, 'Seshie ', 'Victoria', 'Senami', '14/69/0002', 'FT', 'HND'),
(3, 'Otubela', 'Sodiq', 'Babatunde', '14/69/0003', 'FT', 'HND'),
(4, 'Badejo ', 'Sunday ', 'Micheal', '14/69/0004', 'FT', 'HND'),
(5, 'Okeyode ', 'Damilare ', 'Olamilekan', '14/69/0005', 'FT', 'HND'),
(6, 'Adegoke', 'Opeyemi', 'Kemisola', '14/69/0006', 'FT', 'HND'),
(7, 'Soliu ', 'Azeez', 'Olamilekan', '14/69/0007', 'FT', 'HND'),
(8, 'Adebajo', 'Kehinde ', 'Alice', '14/69/0008', 'FT', 'HND'),
(9, 'Adebajo', 'Ololade', 'Zarnny', '14/69/0009', 'FT', 'HND'),
(10, 'Modupe', 'Qadiri', 'Kiamor', '14/69/0010', 'FT', 'HND'),
(11, 'Alicia ', 'Kehinde ', 'lolade', '14/69/0011', 'FT', 'HND'),
(12, 'Faleti', 'docars', 'popoola', '14/69/0012', 'FT', 'HND'),
(13, 'Popoola', 'Ileri', 'promise', '14/69/0013', 'FT', 'HND'),
(14, 'Qadiri', 'Alice', 'Zarnny', '14/69/0014', 'FT', 'HND'),
(15, 'Rita', 'Dorcas', 'Azeez', '14/69/0015', 'FT', 'HND'),
(16, 'Adesanya', 'lolade', 'Kemisola', '14/69/0016', 'FT', 'HND'),
(17, 'ogunsanya', 'kilani', 'Olamilekan', '14/69/0017', 'FT', 'HND'),
(18, 'Popoola', 'niniola', 'Alice', '14/69/0018', 'FT', 'HND'),
(19, 'Niniola', 'Dorcas', 'Rita', '14/69/0019', 'FT', 'HND'),
(20, 'Dada ', 'niniola', 'promise', '14/69/0020', 'FT', 'HND'),
(21, 'Adebowale', 'Babatunde', 'Ismail', '14/69/0021', 'FT', 'HND'),
(22, 'Adewunmi', 'raphael', 'olatunji', '14/69/0022', 'FT', 'HND'),
(23, 'Soliu ', 'kamul', 'Ismail', '14/69/0023', 'FT', 'HND'),
(24, 'Babatunde', 'Seun', 'lolade', '14/69/0024', 'FT', 'HND'),
(25, 'Kolade ', 'Bukola', 'Toyosi', '14/69/0025', 'FT', 'HND'),
(26, 'Amosun', 'Tosin', 'Olamilekan', '14/69/0026', 'FT', 'HND'),
(27, 'Johnson', 'Ileri', 'Olagbemide', '14/69/0027', 'FT', 'HND'),
(28, 'Arowolo', 'Shukurat', 'Opeyemi', '14/69/0028', 'FT', 'HND'),
(29, 'Odumosu', 'Abdulwahab', 'Damilare', '14/69/0029', 'FT', 'HND'),
(30, 'Shodeinde', 'Ahmed', 'Abisayo', '14/69/0030', 'FT', 'HND'),
(31, 'Modupe', 'Johnson', 'Alice', '14/69/0031', 'FT', 'HND'),
(32, 'Dorcas', 'Zarnny', 'promise', '14/69/0032', 'FT', 'HND'),
(33, 'Zarnny', 'Abdulwahab', 'Amosun', '14/69/0033', 'FT', 'HND'),
(34, 'Olamilekan', 'Arowolo', 'Ileri', '14/69/0034', 'FT', 'HND'),
(35, 'Abass', 'Ibrahim', 'Olamilekan', '14/69/0035', 'FT', 'HND'),
(36, 'Olamilekan', 'Ileri', 'Niniola', '14/69/0036', 'FT', 'HND'),
(37, 'Adebowale', 'kilani', 'Alicia ', '14/69/0037', 'FT', 'HND'),
(38, 'Senami', 'Azeez', 'Johnson', '14/69/0038', 'FT', 'HND'),
(39, 'Ileri', 'Seshie ', 'Shukurat', '14/69/0039', 'FT', 'HND'),
(40, 'Adesanya', 'Adebowale', 'Ishola', '14/69/0040', 'FT', 'HND'),
(41, 'Sanusi', 'Ahmed', 'Solarin', '14/69/0041', 'FT', 'HND'),
(42, 'Olamilekan', 'Marvelous', 'Oluwanike', '14/69/0042', 'FT', 'HND'),
(43, 'Adesanya', 'Folorunso', ' Opeyemi', '16/69/0001', 'FT', 'ND'),
(44, 'Seshie ', 'Victoria', 'Senami', '16/69/0002', 'FT', 'ND'),
(45, 'Otubela', 'Sodiq', 'Babatunde', '16/69/0003', 'FT', 'ND'),
(46, 'Badejo ', 'Sunday ', 'Micheal', '16/69/0004', 'FT', 'ND'),
(47, 'Okeyode ', 'Damilare ', 'Olamilekan', '16/69/0005', 'FT', 'ND'),
(48, 'Adegoke', 'Opeyemi', 'Kemisola', '16/69/0006', 'FT', 'ND'),
(49, 'Soliu ', 'Azeez', 'Olamilekan', '16/69/0007', 'FT', 'ND'),
(50, 'Adebajo', 'Kehinde ', 'Alice', '16/69/0008', 'FT', 'ND'),
(51, 'Adebajo', 'Ololade', 'Zarnny', '16/69/0009', 'FT', 'ND'),
(52, 'Modupe', 'Qadiri', 'Kiamor', '16/69/0010', 'FT', 'ND'),
(53, 'Alicia ', 'Kehinde ', 'lolade', '16/69/0011', 'FT', 'ND'),
(54, 'Faleti', 'docars', 'popoola', '16/69/0012', 'FT', 'ND'),
(55, 'Popoola', 'Ileri', 'promise', '16/69/0013', 'FT', 'ND'),
(56, 'Qadiri', 'Alice', 'Zarnny', '16/69/0014', 'FT', 'ND'),
(57, 'Rita', 'Dorcas', 'Azeez', '16/69/0015', 'FT', 'ND'),
(58, 'Adesanya', 'lolade', 'Kemisola', '16/69/0016', 'FT', 'ND'),
(59, 'ogunsanya', 'kilani', 'Olamilekan', '16/69/0017', 'FT', 'ND'),
(60, 'Popoola', 'niniola', 'Alice', '16/69/0018', 'FT', 'ND'),
(61, 'Niniola', 'Dorcas', 'Rita', '16/69/0019', 'FT', 'ND'),
(62, 'Dada ', 'niniola', 'promise', '16/69/0020', 'FT', 'ND'),
(63, 'Adebowale', 'Babatunde', 'Ismail', '16/69/0021', 'FT', 'ND'),
(64, 'Adewunmi', 'raphael', 'olatunji', '16/69/0022', 'FT', 'ND'),
(65, 'Soliu ', 'kamul', 'Ismail', '16/69/0023', 'FT', 'ND'),
(66, 'Babatunde', 'Seun', 'lolade', '16/69/0024', 'FT', 'ND'),
(67, 'Kolade ', 'Bukola', 'Toyosi', '16/69/0025', 'FT', 'ND'),
(68, 'Amosun', 'Tosin', 'Olamilekan', '16/69/0026', 'FT', 'ND'),
(69, 'Johnson', 'Ileri', 'Olagbemide', '16/69/0027', 'FT', 'ND'),
(70, 'Arowolo', 'Shukurat', 'Opeyemi', '16/69/0028', 'FT', 'ND'),
(71, 'Odumosu', 'Abdulwahab', 'Damilare', '16/69/0029', 'FT', 'ND'),
(72, 'Shodeinde', 'Ahmed', 'Abisayo', '16/69/0030', 'FT', 'ND'),
(73, 'Modupe', 'Johnson', 'Alice', '16/69/0031', 'FT', 'ND'),
(74, 'Dorcas', 'Zarnny', 'promise', '16/69/0032', 'FT', 'ND'),
(75, 'Zarnny', 'Abdulwahab', 'Amosun', '16/69/0033', 'FT', 'ND'),
(76, 'Olamilekan', 'Arowolo', 'Ileri', '16/69/0034', 'FT', 'ND'),
(77, 'Abass', 'Ibrahim', 'Olamilekan', '16/69/0035', 'FT', 'ND'),
(78, 'Olamilekan', 'Ileri', 'Niniola', '16/69/0036', 'FT', 'ND'),
(79, 'Adebowale', 'kilani', 'Alicia ', '16/69/0037', 'FT', 'ND'),
(80, 'Senami', 'Azeez', 'Johnson', '16/69/0038', 'FT', 'ND'),
(81, 'Ileri', 'Seshie ', 'Shukurat', '16/69/0039', 'FT', 'ND'),
(82, 'Adesanya', 'Adebowale', 'Ishola', '16/69/0040', 'FT', 'ND'),
(83, 'Sanusi', 'Ahmed', 'Solarin', '16/69/0041', 'FT', 'ND'),
(84, 'Olamilekan', 'Marvelous', 'Oluwanike', '16/69/0042', 'FT', 'ND'),
(85, 'Adesanya', 'Folorunso', ' Opeyemi', '14/71/0001', 'PT', 'HND'),
(86, 'Seshie ', 'Victoria', 'Senami', '14/71/0002', 'PT', 'HND'),
(87, 'Otubela', 'Sodiq', 'Babatunde', '14/71/0003', 'PT', 'HND'),
(88, 'Badejo ', 'Sunday ', 'Micheal', '14/71/0004', 'PT', 'HND'),
(89, 'Okeyode ', 'Damilare ', 'Olamilekan', '14/71/0005', 'PT', 'HND'),
(90, 'Adegoke', 'Opeyemi', 'Kemisola', '14/71/0006', 'PT', 'HND'),
(91, 'Soliu ', 'Azeez', 'Olamilekan', '14/71/0007', 'PT', 'HND'),
(92, 'Adebajo', 'Kehinde ', 'Alice', '14/71/0008', 'PT', 'HND'),
(93, 'Adebajo', 'Ololade', 'Zarnny', '14/71/0009', 'PT', 'HND'),
(94, 'Modupe', 'Qadiri', 'Kiamor', '14/71/0010', 'PT', 'HND'),
(95, 'Alicia ', 'Kehinde ', 'lolade', '14/71/0011', 'PT', 'HND'),
(96, 'Faleti', 'docars', 'popoola', '14/71/0012', 'PT', 'HND'),
(97, 'Popoola', 'Ileri', 'promise', '14/71/0013', 'PT', 'HND'),
(98, 'Qadiri', 'Alice', 'Zarnny', '14/71/0014', 'PT', 'HND'),
(99, 'Rita', 'Dorcas', 'Azeez', '14/71/0015', 'PT', 'HND'),
(100, 'Adesanya', 'lolade', 'Kemisola', '14/71/0016', 'PT', 'HND'),
(101, 'ogunsanya', 'kilani', 'Olamilekan', '14/71/0017', 'PT', 'HND'),
(102, 'Popoola', 'niniola', 'Alice', '14/71/0018', 'PT', 'HND'),
(103, 'Niniola', 'Dorcas', 'Rita', '14/71/0019', 'PT', 'HND'),
(104, 'Dada ', 'niniola', 'promise', '14/71/0020', 'PT', 'HND'),
(105, 'Adebowale', 'Babatunde', 'Ismail', '14/71/0021', 'PT', 'HND'),
(106, 'Adewunmi', 'raphael', 'olatunji', '14/71/0022', 'PT', 'HND'),
(107, 'Soliu ', 'kamul', 'Ismail', '14/71/0023', 'PT', 'HND'),
(108, 'Babatunde', 'Seun', 'lolade', '14/71/0024', 'PT', 'HND'),
(109, 'Kolade ', 'Bukola', 'Toyosi', '14/71/0025', 'PT', 'HND'),
(110, 'Amosun', 'Tosin', 'Olamilekan', '14/71/0026', 'PT', 'HND'),
(111, 'Johnson', 'Ileri', 'Olagbemide', '14/71/0027', 'PT', 'HND'),
(112, 'Arowolo', 'Shukurat', 'Opeyemi', '14/71/0028', 'PT', 'HND'),
(113, 'Odumosu', 'Abdulwahab', 'Damilare', '14/71/0029', 'PT', 'HND'),
(114, 'Shodeinde', 'Ahmed', 'Abisayo', '14/71/0030', 'PT', 'HND'),
(115, 'Modupe', 'Johnson', 'Alice', '14/71/0031', 'PT', 'HND'),
(116, 'Dorcas', 'Zarnny', 'promise', '14/71/0032', 'PT', 'HND'),
(117, 'Zarnny', 'Abdulwahab', 'Amosun', '14/71/0033', 'PT', 'HND'),
(118, 'Olamilekan', 'Arowolo', 'Ileri', '14/71/0034', 'PT', 'HND'),
(119, 'Abass', 'Ibrahim', 'Olamilekan', '14/71/0035', 'PT', 'HND'),
(120, 'Olamilekan', 'Ileri', 'Niniola', '14/71/0036', 'PT', 'HND'),
(121, 'Adebowale', 'kilani', 'Alicia ', '14/71/0037', 'PT', 'HND'),
(122, 'Senami', 'Azeez', 'Johnson', '14/71/0038', 'PT', 'HND'),
(123, 'Ileri', 'Seshie ', 'Shukurat', '14/71/0039', 'PT', 'HND'),
(124, 'Adesanya', 'Adebowale', 'Ishola', '14/71/0040', 'PT', 'HND'),
(125, 'Sanusi', 'Ahmed', 'Solarin', '14/71/0041', 'PT', 'HND'),
(126, 'Olamilekan', 'Marvelous', 'Oluwanike', '14/71/0042', 'PT', 'HND'),
(127, 'Adesanya', 'Folorunso', ' Opeyemi', '16/85/0001', 'PT', 'ND'),
(128, 'Seshie ', 'Victoria', 'Senami', '16/85/0002', 'PT', 'ND'),
(129, 'Otubela', 'Sodiq', 'Babatunde', '16/85/0003', 'PT', 'ND'),
(130, 'Badejo ', 'Sunday ', 'Micheal', '16/85/0004', 'PT', 'ND'),
(131, 'Okeyode ', 'Damilare ', 'Olamilekan', '16/85/0005', 'PT', 'ND'),
(132, 'Adegoke', 'Opeyemi', 'Kemisola', '16/85/0006', 'PT', 'ND'),
(133, 'Soliu ', 'Azeez', 'Olamilekan', '16/85/0007', 'PT', 'ND'),
(134, 'Adebajo', 'Kehinde ', 'Alice', '16/85/0008', 'PT', 'ND'),
(135, 'Adebajo', 'Ololade', 'Zarnny', '16/85/0009', 'PT', 'ND'),
(136, 'Modupe', 'Qadiri', 'Kiamor', '16/85/0010', 'PT', 'ND'),
(137, 'Alicia ', 'Kehinde ', 'lolade', '16/85/0011', 'PT', 'ND'),
(138, 'Faleti', 'docars', 'popoola', '16/85/0012', 'PT', 'ND'),
(139, 'Popoola', 'Ileri', 'promise', '16/85/0013', 'PT', 'ND'),
(140, 'Qadiri', 'Alice', 'Zarnny', '16/85/0014', 'PT', 'ND'),
(141, 'Rita', 'Dorcas', 'Azeez', '16/85/0015', 'PT', 'ND'),
(142, 'Adesanya', 'lolade', 'Kemisola', '16/85/0016', 'PT', 'ND'),
(143, 'ogunsanya', 'kilani', 'Olamilekan', '16/85/0017', 'PT', 'ND'),
(144, 'Popoola', 'niniola', 'Alice', '16/85/0018', 'PT', 'ND'),
(145, 'Niniola', 'Dorcas', 'Rita', '16/85/0019', 'PT', 'ND'),
(146, 'Dada ', 'niniola', 'promise', '16/85/0020', 'PT', 'ND'),
(147, 'Adebowale', 'Babatunde', 'Ismail', '16/85/0021', 'PT', 'ND'),
(148, 'Adewunmi', 'raphael', 'olatunji', '16/85/0022', 'PT', 'ND'),
(149, 'Soliu ', 'kamul', 'Ismail', '16/85/0023', 'PT', 'ND'),
(150, 'Babatunde', 'Seun', 'lolade', '16/85/0024', 'PT', 'ND'),
(151, 'Kolade ', 'Bukola', 'Toyosi', '16/85/0025', 'PT', 'ND'),
(152, 'Amosun', 'Tosin', 'Olamilekan', '16/85/0026', 'PT', 'ND'),
(153, 'Johnson', 'Ileri', 'Olagbemide', '16/85/0027', 'PT', 'ND'),
(154, 'Arowolo', 'Shukurat', 'Opeyemi', '16/85/0028', 'PT', 'ND'),
(155, 'Odumosu', 'Abdulwahab', 'Damilare', '16/85/0029', 'PT', 'ND'),
(156, 'Shodeinde', 'Ahmed', 'Abisayo', '16/85/0030', 'PT', 'ND'),
(157, 'Modupe', 'Johnson', 'Alice', '16/85/0031', 'PT', 'ND'),
(158, 'Dorcas', 'Zarnny', 'promise', '16/85/0032', 'PT', 'ND'),
(159, 'Zarnny', 'Abdulwahab', 'Amosun', '16/85/0033', 'PT', 'ND'),
(160, 'Olamilekan', 'Arowolo', 'Ileri', '16/85/0034', 'PT', 'ND'),
(161, 'Abass', 'Ibrahim', 'Olamilekan', '16/85/0035', 'PT', 'ND'),
(162, 'Olamilekan', 'Ileri', 'Niniola', '16/85/0036', 'PT', 'ND'),
(163, 'Adebowale', 'kilani', 'Alicia ', '16/85/0037', 'PT', 'ND'),
(164, 'Senami', 'Azeez', 'Johnson', '16/85/0038', 'PT', 'ND'),
(165, 'Ileri', 'Seshie ', 'Shukurat', '16/85/0039', 'PT', 'ND'),
(166, 'Adesanya', 'Adebowale', 'Ishola', '16/85/0040', 'PT', 'ND'),
(167, 'Sanusi', 'Ahmed', 'Solarin', '16/85/0041', 'PT', 'ND'),
(168, 'Olamilekan', 'Marvelous', 'Oluwanike', '16/85/0042', 'PT', 'ND'),
(169, 'Adesanya', 'Folorunso', ' Opeyemi', '16/69/0001', 'FT', 'ND'),
(170, 'Seshie ', 'Victoria', 'Senami', '16/69/0002', 'FT', 'ND'),
(171, 'Otubela', 'Sodiq', 'Babatunde', '16/69/0003', 'FT', 'ND'),
(172, 'Badejo ', 'Sunday ', 'Micheal', '16/69/0004', 'FT', 'ND'),
(173, 'Okeyode ', 'Damilare ', 'Olamilekan', '16/69/0005', 'FT', 'ND'),
(174, 'Adegoke', 'Opeyemi', 'Kemisola', '16/69/0006', 'FT', 'ND'),
(175, 'Soliu ', 'Azeez', 'Olamilekan', '16/69/0007', 'FT', 'ND'),
(176, 'Adebajo', 'Kehinde ', 'Alice', '16/69/0008', 'FT', 'ND'),
(177, 'Adebajo', 'Ololade', 'Zarnny', '16/69/0009', 'FT', 'ND'),
(178, 'Modupe', 'Qadiri', 'Kiamor', '16/69/0010', 'FT', 'ND'),
(179, 'Alicia ', 'Kehinde ', 'lolade', '16/69/0011', 'FT', 'ND'),
(180, 'Faleti', 'docars', 'popoola', '16/69/0012', 'FT', 'ND'),
(181, 'Popoola', 'Ileri', 'promise', '16/69/0013', 'FT', 'ND'),
(182, 'Qadiri', 'Alice', 'Zarnny', '16/69/0014', 'FT', 'ND'),
(183, 'Rita', 'Dorcas', 'Azeez', '16/69/0015', 'FT', 'ND'),
(184, 'Adesanya', 'lolade', 'Kemisola', '16/69/0016', 'FT', 'ND'),
(185, 'ogunsanya', 'kilani', 'Olamilekan', '16/69/0017', 'FT', 'ND'),
(186, 'Popoola', 'niniola', 'Alice', '16/69/0018', 'FT', 'ND'),
(187, 'Niniola', 'Dorcas', 'Rita', '16/69/0019', 'FT', 'ND'),
(188, 'Dada ', 'niniola', 'promise', '16/69/0020', 'FT', 'ND'),
(189, 'Adebowale', 'Babatunde', 'Ismail', '16/69/0021', 'FT', 'ND'),
(190, 'Adewunmi', 'raphael', 'olatunji', '16/69/0022', 'FT', 'ND'),
(191, 'Soliu ', 'kamul', 'Ismail', '16/69/0023', 'FT', 'ND'),
(192, 'Babatunde', 'Seun', 'lolade', '16/69/0024', 'FT', 'ND'),
(193, 'Kolade ', 'Bukola', 'Toyosi', '16/69/0025', 'FT', 'ND'),
(194, 'Amosun', 'Tosin', 'Olamilekan', '16/69/0026', 'FT', 'ND'),
(195, 'Johnson', 'Ileri', 'Olagbemide', '16/69/0027', 'FT', 'ND'),
(196, 'Arowolo', 'Shukurat', 'Opeyemi', '16/69/0028', 'FT', 'ND'),
(197, 'Odumosu', 'Abdulwahab', 'Damilare', '16/69/0029', 'FT', 'ND'),
(198, 'Shodeinde', 'Ahmed', 'Abisayo', '16/69/0030', 'FT', 'ND'),
(199, 'Modupe', 'Johnson', 'Alice', '16/69/0031', 'FT', 'ND'),
(200, 'Dorcas', 'Zarnny', 'promise', '16/69/0032', 'FT', 'ND'),
(201, 'Zarnny', 'Abdulwahab', 'Amosun', '16/69/0033', 'FT', 'ND'),
(202, 'Olamilekan', 'Arowolo', 'Ileri', '16/69/0034', 'FT', 'ND'),
(203, 'Abass', 'Ibrahim', 'Olamilekan', '16/69/0035', 'FT', 'ND'),
(204, 'Olamilekan', 'Ileri', 'Niniola', '16/69/0036', 'FT', 'ND'),
(205, 'Adebowale', 'kilani', 'Alicia ', '16/69/0037', 'FT', 'ND'),
(206, 'Senami', 'Azeez', 'Johnson', '16/69/0038', 'FT', 'ND'),
(207, 'Ileri', 'Seshie ', 'Shukurat', '16/69/0039', 'FT', 'ND'),
(208, 'Adesanya', 'Adebowale', 'Ishola', '16/69/0040', 'FT', 'ND'),
(209, 'Sanusi', 'Ahmed', 'Solarin', '16/69/0041', 'FT', 'ND'),
(210, 'Olamilekan', 'Marvelous', 'Oluwanike', '16/69/0042', 'FT', 'ND');

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectseminar`
--

CREATE TABLE `tblprojectseminar` (
  `alloc_id` int(3) NOT NULL,
  `sup_id` int(3) NOT NULL,
  `title` varchar(10) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `matric_no` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `category` varchar(20) NOT NULL,
  `programme` varchar(30) NOT NULL,
  `session` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblprojectseminar`
--

INSERT INTO `tblprojectseminar` (`alloc_id`, `sup_id`, `title`, `surname`, `matric_no`, `level`, `category`, `programme`, `session`) VALUES
(1, 9, 'mrs.', 'Oyelowo', '16/69/0004', 'ND', 'prject/seminar', 'FT', 's20182019'),
(2, 6, 'mrs.', 'Lawal', '16/69/0019', 'ND', 'prject/seminar', 'FT', 's20182019'),
(3, 6, 'mrs.', 'Lawal', '16/69/0017', 'ND', 'prject/seminar', 'FT', 's20182019'),
(4, 5, 'mr.', 'Adetona', '16/69/0023', 'ND', 'prject/seminar', 'FT', 's20182019'),
(5, 7, 'mr.', 'Logunleko', '16/69/0024', 'ND', 'prject/seminar', 'FT', 's20182019'),
(6, 11, 'mrs.', 'Alaran', '16/69/0025', 'ND', 'prject/seminar', 'FT', 's20182019'),
(7, 7, 'mr.', 'Logunleko', '16/69/0012', 'ND', 'prject/seminar', 'FT', 's20182019'),
(8, 2, 'mr.', 'Adeleke', '16/69/0013', 'ND', 'prject/seminar', 'FT', 's20182019'),
(9, 1, 'mr.', 'Kola', '16/69/0003', 'ND', 'prject/seminar', 'FT', 's20182019'),
(10, 3, 'mr.', 'Orunsolu', '16/69/0038', 'ND', 'prject/seminar', 'FT', 's20182019'),
(11, 10, 'mrs.', 'Adebayo', '16/69/0001', 'ND', 'prject/seminar', 'FT', 's20182019'),
(12, 4, 'mr.', 'Kareem', '16/69/0040', 'ND', 'prject/seminar', 'FT', 's20182019'),
(13, 13, 'mr.', 'Adebeshin', '16/69/0027', 'ND', 'prject/seminar', 'FT', 's20182019'),
(14, 1, 'mr.', 'Kola', '16/69/0020', 'ND', 'prject/seminar', 'FT', 's20182019'),
(15, 2, 'mr.', 'Adeleke', '16/69/0032', 'ND', 'prject/seminar', 'FT', 's20182019'),
(16, 5, 'mr.', 'Adetona', '16/69/0009', 'ND', 'prject/seminar', 'FT', 's20182019'),
(17, 9, 'mrs.', 'Oyelowo', '16/69/0007', 'ND', 'prject/seminar', 'FT', 's20182019'),
(18, 12, 'mr.', 'Olaitan', '16/69/0010', 'ND', 'prject/seminar', 'FT', 's20182019'),
(19, 3, 'mr.', 'Orunsolu', '16/69/0014', 'ND', 'prject/seminar', 'FT', 's20182019'),
(20, 1, 'mr.', 'Kola', '16/69/0041', 'ND', 'prject/seminar', 'FT', 's20182019'),
(21, 5, 'mr.', 'Adetona', '16/69/0042', 'ND', 'prject/seminar', 'FT', 's20182019'),
(22, 7, 'mr.', 'Logunleko', '16/69/0034', 'ND', 'prject/seminar', 'FT', 's20182019'),
(23, 11, 'mrs.', 'Alaran', '16/69/0008', 'ND', 'prject/seminar', 'FT', 's20182019'),
(24, 10, 'mrs.', 'Adebayo', '16/69/0016', 'ND', 'prject/seminar', 'FT', 's20182019'),
(25, 9, 'mrs.', 'Oyelowo', '16/69/0021', 'ND', 'prject/seminar', 'FT', 's20182019'),
(26, 7, 'mr.', 'Logunleko', '16/69/0026', 'ND', 'prject/seminar', 'FT', 's20182019'),
(27, 5, 'mr.', 'Adetona', '16/69/0015', 'ND', 'prject/seminar', 'FT', 's20182019'),
(28, 2, 'mr.', 'Adeleke', '16/69/0039', 'ND', 'prject/seminar', 'FT', 's20182019'),
(29, 7, 'mr.', 'Logunleko', '16/69/0005', 'ND', 'prject/seminar', 'FT', 's20182019'),
(30, 3, 'mr.', 'Orunsolu', '16/69/0031', 'ND', 'prject/seminar', 'FT', 's20182019'),
(31, 4, 'mr.', 'Kareem', '16/69/0018', 'ND', 'prject/seminar', 'FT', 's20182019'),
(32, 2, 'mr.', 'Adeleke', '16/69/0035', 'ND', 'prject/seminar', 'FT', 's20182019'),
(33, 12, 'mr.', 'Olaitan', '16/69/0022', 'ND', 'prject/seminar', 'FT', 's20182019'),
(34, 1, 'mr.', 'Kola', '16/69/0037', 'ND', 'prject/seminar', 'FT', 's20182019'),
(35, 7, 'mr.', 'Logunleko', '16/69/0006', 'ND', 'prject/seminar', 'FT', 's20182019'),
(36, 5, 'mr.', 'Adetona', '16/69/0011', 'ND', 'prject/seminar', 'FT', 's20182019'),
(37, 4, 'mr.', 'Kareem', '16/69/0033', 'ND', 'prject/seminar', 'FT', 's20182019'),
(38, 5, 'mr.', 'Adetona', '16/69/0030', 'ND', 'prject/seminar', 'FT', 's20182019'),
(39, 7, 'mr.', 'Logunleko', '16/69/0002', 'ND', 'prject/seminar', 'FT', 's20182019'),
(40, 11, 'mrs.', 'Alaran', '16/69/0036', 'ND', 'prject/seminar', 'FT', 's20182019'),
(41, 4, 'mr.', 'Kareem', '16/69/0029', 'ND', 'prject/seminar', 'FT', 's20182019'),
(42, 7, 'mr.', 'Logunleko', '16/69/0028', 'ND', 'prject/seminar', 'FT', 's20182019'),
(43, 13, 'mr.', 'Adebeshin', '16/85/0019', 'ND', 'prject/seminar', 'PT', 's20182019'),
(44, 2, 'mr.', 'Adeleke', '16/85/0016', 'ND', 'prject/seminar', 'PT', 's20182019'),
(45, 3, 'mr.', 'Orunsolu', '16/85/0005', 'ND', 'prject/seminar', 'PT', 's20182019'),
(46, 1, 'mr.', 'Kola', '16/85/0026', 'ND', 'prject/seminar', 'PT', 's20182019'),
(47, 4, 'mr.', 'Kareem', '16/85/0041', 'ND', 'prject/seminar', 'PT', 's20182019'),
(48, 11, 'mrs.', 'Alaran', '16/85/0036', 'ND', 'prject/seminar', 'PT', 's20182019'),
(49, 13, 'mr.', 'Adebeshin', '16/85/0008', 'ND', 'prject/seminar', 'PT', 's20182019'),
(50, 5, 'mr.', 'Adetona', '16/85/0037', 'ND', 'prject/seminar', 'PT', 's20182019'),
(51, 6, 'mrs.', 'Lawal', '16/85/0027', 'ND', 'prject/seminar', 'PT', 's20182019'),
(52, 13, 'mr.', 'Adebeshin', '16/85/0014', 'ND', 'prject/seminar', 'PT', 's20182019'),
(53, 5, 'mr.', 'Adetona', '16/85/0035', 'ND', 'prject/seminar', 'PT', 's20182019'),
(54, 7, 'mr.', 'Logunleko', '16/85/0010', 'ND', 'prject/seminar', 'PT', 's20182019'),
(55, 6, 'mrs.', 'Lawal', '16/85/0004', 'ND', 'prject/seminar', 'PT', 's20182019'),
(56, 10, 'mrs.', 'Adebayo', '16/85/0030', 'ND', 'prject/seminar', 'PT', 's20182019'),
(57, 5, 'mr.', 'Adetona', '16/85/0040', 'ND', 'prject/seminar', 'PT', 's20182019'),
(58, 7, 'mr.', 'Logunleko', '16/85/0012', 'ND', 'prject/seminar', 'PT', 's20182019'),
(59, 10, 'mrs.', 'Adebayo', '16/85/0007', 'ND', 'prject/seminar', 'PT', 's20182019'),
(60, 8, 'mr.', 'Arilekolasi', '16/85/0038', 'ND', 'prject/seminar', 'PT', 's20182019'),
(61, 6, 'mrs.', 'Lawal', '16/85/0011', 'ND', 'prject/seminar', 'PT', 's20182019'),
(62, 12, 'mr.', 'Olaitan', '16/85/0022', 'ND', 'prject/seminar', 'PT', 's20182019'),
(63, 3, 'mr.', 'Orunsolu', '16/85/0013', 'ND', 'prject/seminar', 'PT', 's20182019'),
(64, 2, 'mr.', 'Adeleke', '16/85/0021', 'ND', 'prject/seminar', 'PT', 's20182019'),
(65, 1, 'mr.', 'Kola', '16/85/0006', 'ND', 'prject/seminar', 'PT', 's20182019'),
(66, 11, 'mrs.', 'Alaran', '16/85/0039', 'ND', 'prject/seminar', 'PT', 's20182019'),
(67, 1, 'mr.', 'Kola', '16/85/0001', 'ND', 'prject/seminar', 'PT', 's20182019'),
(68, 12, 'mr.', 'Olaitan', '16/85/0042', 'ND', 'prject/seminar', 'PT', 's20182019'),
(69, 8, 'mr.', 'Arilekolasi', '16/85/0023', 'ND', 'prject/seminar', 'PT', 's20182019'),
(70, 9, 'mrs.', 'Oyelowo', '16/85/0028', 'ND', 'prject/seminar', 'PT', 's20182019'),
(71, 4, 'mr.', 'Kareem', '16/85/0032', 'ND', 'prject/seminar', 'PT', 's20182019'),
(72, 4, 'mr.', 'Kareem', '16/85/0020', 'ND', 'prject/seminar', 'PT', 's20182019'),
(73, 1, 'mr.', 'Kola', '16/85/0034', 'ND', 'prject/seminar', 'PT', 's20182019'),
(74, 4, 'mr.', 'Kareem', '16/85/0015', 'ND', 'prject/seminar', 'PT', 's20182019'),
(75, 6, 'mrs.', 'Lawal', '16/85/0033', 'ND', 'prject/seminar', 'PT', 's20182019'),
(76, 3, 'mr.', 'Orunsolu', '16/85/0018', 'ND', 'prject/seminar', 'PT', 's20182019'),
(77, 6, 'mrs.', 'Lawal', '16/85/0025', 'ND', 'prject/seminar', 'PT', 's20182019'),
(78, 11, 'mrs.', 'Alaran', '16/85/0003', 'ND', 'prject/seminar', 'PT', 's20182019'),
(79, 1, 'mr.', 'Kola', '16/85/0029', 'ND', 'prject/seminar', 'PT', 's20182019'),
(80, 1, 'mr.', 'Kola', '16/85/0002', 'ND', 'prject/seminar', 'PT', 's20182019'),
(81, 10, 'mrs.', 'Adebayo', '16/85/0031', 'ND', 'prject/seminar', 'PT', 's20182019'),
(82, 2, 'mr.', 'Adeleke', '16/85/0024', 'ND', 'prject/seminar', 'PT', 's20182019'),
(83, 13, 'mr.', 'Adebeshin', '16/85/0009', 'ND', 'prject/seminar', 'PT', 's20182019'),
(84, 1, 'mr.', 'Kola', '16/85/0017', 'ND', 'prject/seminar', 'PT', 's20182019'),
(85, 13, 'mr.', 'Adebeshin', '14/69/0017', 'HND', 'prject/seminar', 'FT', 's20182019'),
(86, 3, 'mr.', 'Orunsolu', '14/69/0037', 'HND', 'prject/seminar', 'FT', 's20182019'),
(87, 1, 'mr.', 'Kola', '14/69/0010', 'HND', 'prject/seminar', 'FT', 's20182019'),
(88, 13, 'mr.', 'Adebeshin', '14/69/0036', 'HND', 'prject/seminar', 'FT', 's20182019'),
(89, 9, 'mrs.', 'Oyelowo', '14/69/0029', 'HND', 'prject/seminar', 'FT', 's20182019'),
(90, 10, 'mrs.', 'Adebayo', '14/69/0018', 'HND', 'prject/seminar', 'FT', 's20182019'),
(91, 8, 'mr.', 'Arilekolasi', '14/69/0020', 'HND', 'prject/seminar', 'FT', 's20182019'),
(92, 12, 'mr.', 'Olaitan', '14/69/0005', 'HND', 'prject/seminar', 'FT', 's20182019'),
(93, 4, 'mr.', 'Kareem', '14/69/0034', 'HND', 'prject/seminar', 'FT', 's20182019'),
(94, 12, 'mr.', 'Olaitan', '14/69/0013', 'HND', 'prject/seminar', 'FT', 's20182019'),
(95, 12, 'mr.', 'Olaitan', '14/69/0032', 'HND', 'prject/seminar', 'FT', 's20182019'),
(96, 8, 'mr.', 'Arilekolasi', '14/69/0009', 'HND', 'prject/seminar', 'FT', 's20182019'),
(97, 12, 'mr.', 'Olaitan', '14/69/0022', 'HND', 'prject/seminar', 'FT', 's20182019'),
(98, 8, 'mr.', 'Arilekolasi', '14/69/0004', 'HND', 'prject/seminar', 'FT', 's20182019'),
(99, 10, 'mrs.', 'Adebayo', '14/69/0019', 'HND', 'prject/seminar', 'FT', 's20182019'),
(100, 10, 'mrs.', 'Adebayo', '14/69/0007', 'HND', 'prject/seminar', 'FT', 's20182019'),
(101, 3, 'mr.', 'Orunsolu', '14/69/0042', 'HND', 'prject/seminar', 'FT', 's20182019'),
(102, 13, 'mr.', 'Adebeshin', '14/69/0033', 'HND', 'prject/seminar', 'FT', 's20182019'),
(103, 9, 'mrs.', 'Oyelowo', '14/69/0002', 'HND', 'prject/seminar', 'FT', 's20182019'),
(104, 8, 'mr.', 'Arilekolasi', '14/69/0001', 'HND', 'prject/seminar', 'FT', 's20182019'),
(105, 5, 'mr.', 'Adetona', '14/69/0014', 'HND', 'prject/seminar', 'FT', 's20182019'),
(106, 10, 'mrs.', 'Adebayo', '14/69/0025', 'HND', 'prject/seminar', 'FT', 's20182019'),
(107, 8, 'mr.', 'Arilekolasi', '14/69/0027', 'HND', 'prject/seminar', 'FT', 's20182019'),
(108, 12, 'mr.', 'Olaitan', '14/69/0011', 'HND', 'prject/seminar', 'FT', 's20182019'),
(109, 6, 'mrs.', 'Lawal', '14/69/0026', 'HND', 'prject/seminar', 'FT', 's20182019'),
(110, 12, 'mr.', 'Olaitan', '14/69/0024', 'HND', 'prject/seminar', 'FT', 's20182019'),
(111, 7, 'mr.', 'Logunleko', '14/69/0008', 'HND', 'prject/seminar', 'FT', 's20182019'),
(112, 7, 'mr.', 'Logunleko', '14/69/0041', 'HND', 'prject/seminar', 'FT', 's20182019'),
(113, 10, 'mrs.', 'Adebayo', '14/69/0003', 'HND', 'prject/seminar', 'FT', 's20182019'),
(114, 9, 'mrs.', 'Oyelowo', '14/69/0015', 'HND', 'prject/seminar', 'FT', 's20182019'),
(115, 13, 'mr.', 'Adebeshin', '14/69/0035', 'HND', 'prject/seminar', 'FT', 's20182019'),
(116, 4, 'mr.', 'Kareem', '14/69/0021', 'HND', 'prject/seminar', 'FT', 's20182019'),
(117, 9, 'mrs.', 'Oyelowo', '14/69/0028', 'HND', 'prject/seminar', 'FT', 's20182019'),
(118, 10, 'mrs.', 'Adebayo', '14/69/0012', 'HND', 'prject/seminar', 'FT', 's20182019'),
(119, 5, 'mr.', 'Adetona', '14/69/0031', 'HND', 'prject/seminar', 'FT', 's20182019'),
(120, 9, 'mrs.', 'Oyelowo', '14/69/0023', 'HND', 'prject/seminar', 'FT', 's20182019'),
(121, 10, 'mrs.', 'Adebayo', '14/69/0040', 'HND', 'prject/seminar', 'FT', 's20182019'),
(122, 11, 'mrs.', 'Alaran', '14/69/0006', 'HND', 'prject/seminar', 'FT', 's20182019'),
(123, 12, 'mr.', 'Olaitan', '14/69/0030', 'HND', 'prject/seminar', 'FT', 's20182019'),
(124, 5, 'mr.', 'Adetona', '14/69/0039', 'HND', 'prject/seminar', 'FT', 's20182019'),
(125, 5, 'mr.', 'Adetona', '14/69/0016', 'HND', 'prject/seminar', 'FT', 's20182019'),
(126, 12, 'mr.', 'Olaitan', '14/69/0038', 'HND', 'prject/seminar', 'FT', 's20182019'),
(127, 11, 'mrs.', 'Alaran', '14/71/0015', 'HND', 'prject/seminar', 'PT', 's20182019'),
(128, 7, 'mr.', 'Logunleko', '14/71/0042', 'HND', 'prject/seminar', 'PT', 's20182019'),
(129, 1, 'mr.', 'Kola', '14/71/0008', 'HND', 'prject/seminar', 'PT', 's20182019'),
(130, 6, 'mrs.', 'Lawal', '14/71/0032', 'HND', 'prject/seminar', 'PT', 's20182019'),
(131, 3, 'mr.', 'Orunsolu', '14/71/0035', 'HND', 'prject/seminar', 'PT', 's20182019'),
(132, 12, 'mr.', 'Olaitan', '14/71/0011', 'HND', 'prject/seminar', 'PT', 's20182019'),
(133, 11, 'mrs.', 'Alaran', '14/71/0006', 'HND', 'prject/seminar', 'PT', 's20182019'),
(134, 5, 'mr.', 'Adetona', '14/71/0003', 'HND', 'prject/seminar', 'PT', 's20182019'),
(135, 1, 'mr.', 'Kola', '14/71/0019', 'HND', 'prject/seminar', 'PT', 's20182019'),
(136, 12, 'mr.', 'Olaitan', '14/71/0025', 'HND', 'prject/seminar', 'PT', 's20182019'),
(137, 4, 'mr.', 'Kareem', '14/71/0041', 'HND', 'prject/seminar', 'PT', 's20182019'),
(138, 1, 'mr.', 'Kola', '14/71/0010', 'HND', 'prject/seminar', 'PT', 's20182019'),
(139, 1, 'mr.', 'Kola', '14/71/0036', 'HND', 'prject/seminar', 'PT', 's20182019'),
(140, 10, 'mrs.', 'Adebayo', '14/71/0012', 'HND', 'prject/seminar', 'PT', 's20182019'),
(141, 2, 'mr.', 'Adeleke', '14/71/0028', 'HND', 'prject/seminar', 'PT', 's20182019'),
(142, 9, 'mrs.', 'Oyelowo', '14/71/0031', 'HND', 'prject/seminar', 'PT', 's20182019'),
(143, 8, 'mr.', 'Arilekolasi', '14/71/0029', 'HND', 'prject/seminar', 'PT', 's20182019'),
(144, 10, 'mrs.', 'Adebayo', '14/71/0040', 'HND', 'prject/seminar', 'PT', 's20182019'),
(145, 2, 'mr.', 'Adeleke', '14/71/0027', 'HND', 'prject/seminar', 'PT', 's20182019'),
(146, 7, 'mr.', 'Logunleko', '14/71/0017', 'HND', 'prject/seminar', 'PT', 's20182019'),
(147, 12, 'mr.', 'Olaitan', '14/71/0004', 'HND', 'prject/seminar', 'PT', 's20182019'),
(148, 7, 'mr.', 'Logunleko', '14/71/0018', 'HND', 'prject/seminar', 'PT', 's20182019'),
(149, 12, 'mr.', 'Olaitan', '14/71/0021', 'HND', 'prject/seminar', 'PT', 's20182019'),
(150, 7, 'mr.', 'Logunleko', '14/71/0002', 'HND', 'prject/seminar', 'PT', 's20182019'),
(151, 7, 'mr.', 'Logunleko', '14/71/0033', 'HND', 'prject/seminar', 'PT', 's20182019'),
(152, 2, 'mr.', 'Adeleke', '14/71/0034', 'HND', 'prject/seminar', 'PT', 's20182019'),
(153, 11, 'mrs.', 'Alaran', '14/71/0026', 'HND', 'prject/seminar', 'PT', 's20182019'),
(154, 4, 'mr.', 'Kareem', '14/71/0020', 'HND', 'prject/seminar', 'PT', 's20182019'),
(155, 13, 'mr.', 'Adebeshin', '14/71/0023', 'HND', 'prject/seminar', 'PT', 's20182019'),
(156, 11, 'mrs.', 'Alaran', '14/71/0009', 'HND', 'prject/seminar', 'PT', 's20182019'),
(157, 2, 'mr.', 'Adeleke', '14/71/0005', 'HND', 'prject/seminar', 'PT', 's20182019'),
(158, 13, 'mr.', 'Adebeshin', '14/71/0038', 'HND', 'prject/seminar', 'PT', 's20182019'),
(159, 4, 'mr.', 'Kareem', '14/71/0014', 'HND', 'prject/seminar', 'PT', 's20182019'),
(160, 2, 'mr.', 'Adeleke', '14/71/0024', 'HND', 'prject/seminar', 'PT', 's20182019'),
(161, 13, 'mr.', 'Adebeshin', '14/71/0001', 'HND', 'prject/seminar', 'PT', 's20182019'),
(162, 1, 'mr.', 'Kola', '14/71/0022', 'HND', 'prject/seminar', 'PT', 's20182019'),
(163, 4, 'mr.', 'Kareem', '14/71/0030', 'HND', 'prject/seminar', 'PT', 's20182019'),
(164, 12, 'mr.', 'Olaitan', '14/71/0016', 'HND', 'prject/seminar', 'PT', 's20182019'),
(165, 11, 'mrs.', 'Alaran', '14/71/0039', 'HND', 'prject/seminar', 'PT', 's20182019'),
(166, 5, 'mr.', 'Adetona', '14/71/0037', 'HND', 'prject/seminar', 'PT', 's20182019'),
(167, 2, 'mr.', 'Adeleke', '14/71/0013', 'HND', 'prject/seminar', 'PT', 's20182019'),
(168, 3, 'mr.', 'Orunsolu', '14/71/0007', 'HND', 'prject/seminar', 'PT', 's20182019');

-- --------------------------------------------------------

--
-- Table structure for table `tblsiwes`
--

CREATE TABLE `tblsiwes` (
  `alloc_id` int(3) NOT NULL,
  `sup_id` int(3) NOT NULL,
  `title` varchar(10) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `matric_no` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `category` varchar(20) NOT NULL,
  `session` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsiwes`
--

INSERT INTO `tblsiwes` (`alloc_id`, `sup_id`, `title`, `surname`, `matric_no`, `level`, `category`, `session`) VALUES
(1, 2, 'mr.', 'Adeleke', '16/69/0015', 'ND', 'siwes', 's20182019'),
(2, 8, 'mr.', 'Arilekolasi', '16/69/0042', 'ND', 'siwes', 's20182019'),
(3, 8, 'mr.', 'Arilekolasi', '16/69/0027', 'ND', 'siwes', 's20182019'),
(4, 13, 'mr.', 'Adebeshin', '16/69/0001', 'ND', 'siwes', 's20182019'),
(5, 5, 'mr.', 'Adetona', '16/69/0021', 'ND', 'siwes', 's20182019'),
(6, 6, 'mrs.', 'Lawal', '16/69/0032', 'ND', 'siwes', 's20182019'),
(7, 10, 'mrs.', 'Adebayo', '16/69/0038', 'ND', 'siwes', 's20182019'),
(8, 3, 'mr.', 'Orunsolu', '16/69/0025', 'ND', 'siwes', 's20182019'),
(9, 7, 'mr.', 'Logunleko', '16/69/0010', 'ND', 'siwes', 's20182019'),
(10, 1, 'mr.', 'Kola', '16/69/0006', 'ND', 'siwes', 's20182019'),
(11, 11, 'mrs.', 'Alaran', '16/69/0037', 'ND', 'siwes', 's20182019'),
(12, 5, 'mr.', 'Adetona', '16/69/0022', 'ND', 'siwes', 's20182019'),
(13, 12, 'mr.', 'Olaitan', '16/69/0033', 'ND', 'siwes', 's20182019'),
(14, 8, 'mr.', 'Arilekolasi', '16/69/0030', 'ND', 'siwes', 's20182019'),
(15, 3, 'mr.', 'Orunsolu', '16/69/0031', 'ND', 'siwes', 's20182019'),
(16, 11, 'mrs.', 'Alaran', '16/69/0003', 'ND', 'siwes', 's20182019'),
(17, 7, 'mr.', 'Logunleko', '16/69/0028', 'ND', 'siwes', 's20182019'),
(18, 3, 'mr.', 'Orunsolu', '16/69/0023', 'ND', 'siwes', 's20182019'),
(19, 3, 'mr.', 'Orunsolu', '16/69/0026', 'ND', 'siwes', 's20182019'),
(20, 4, 'mr.', 'Kareem', '16/69/0005', 'ND', 'siwes', 's20182019'),
(21, 13, 'mr.', 'Adebeshin', '16/69/0024', 'ND', 'siwes', 's20182019'),
(22, 9, 'mrs.', 'Oyelowo', '16/69/0013', 'ND', 'siwes', 's20182019'),
(23, 11, 'mrs.', 'Alaran', '16/69/0034', 'ND', 'siwes', 's20182019'),
(24, 7, 'mr.', 'Logunleko', '16/69/0017', 'ND', 'siwes', 's20182019'),
(25, 1, 'mr.', 'Kola', '16/69/0029', 'ND', 'siwes', 's20182019'),
(26, 5, 'mr.', 'Adetona', '16/69/0040', 'ND', 'siwes', 's20182019'),
(27, 12, 'mr.', 'Olaitan', '16/69/0011', 'ND', 'siwes', 's20182019'),
(28, 7, 'mr.', 'Logunleko', '16/69/0016', 'ND', 'siwes', 's20182019'),
(29, 6, 'mrs.', 'Lawal', '16/69/0008', 'ND', 'siwes', 's20182019'),
(30, 3, 'mr.', 'Orunsolu', '16/69/0012', 'ND', 'siwes', 's20182019'),
(31, 12, 'mr.', 'Olaitan', '16/69/0035', 'ND', 'siwes', 's20182019'),
(32, 12, 'mr.', 'Olaitan', '16/69/0014', 'ND', 'siwes', 's20182019'),
(33, 7, 'mr.', 'Logunleko', '16/69/0020', 'ND', 'siwes', 's20182019'),
(34, 6, 'mrs.', 'Lawal', '16/69/0041', 'ND', 'siwes', 's20182019'),
(35, 2, 'mr.', 'Adeleke', '16/69/0004', 'ND', 'siwes', 's20182019'),
(36, 7, 'mr.', 'Logunleko', '16/69/0039', 'ND', 'siwes', 's20182019'),
(37, 1, 'mr.', 'Kola', '16/69/0009', 'ND', 'siwes', 's20182019'),
(38, 9, 'mrs.', 'Oyelowo', '16/69/0036', 'ND', 'siwes', 's20182019'),
(39, 10, 'mrs.', 'Adebayo', '16/69/0019', 'ND', 'siwes', 's20182019'),
(40, 2, 'mr.', 'Adeleke', '16/69/0007', 'ND', 'siwes', 's20182019'),
(41, 10, 'mrs.', 'Adebayo', '16/69/0018', 'ND', 'siwes', 's20182019'),
(42, 9, 'mrs.', 'Oyelowo', '16/69/0002', 'ND', 'siwes', 's20182019'),
(43, 12, 'mr.', 'Olaitan', '16/69/0037', 'ND', 'siwes', 's20182019'),
(44, 5, 'mr.', 'Adetona', '16/69/0014', 'ND', 'siwes', 's20182019'),
(45, 1, 'mr.', 'Kola', '16/69/0005', 'ND', 'siwes', 's20182019'),
(46, 2, 'mr.', 'Adeleke', '16/69/0006', 'ND', 'siwes', 's20182019'),
(47, 5, 'mr.', 'Adetona', '16/69/0016', 'ND', 'siwes', 's20182019'),
(48, 7, 'mr.', 'Logunleko', '16/69/0040', 'ND', 'siwes', 's20182019'),
(49, 2, 'mr.', 'Adeleke', '16/69/0013', 'ND', 'siwes', 's20182019'),
(50, 12, 'mr.', 'Olaitan', '16/69/0002', 'ND', 'siwes', 's20182019'),
(51, 11, 'mrs.', 'Alaran', '16/69/0038', 'ND', 'siwes', 's20182019'),
(52, 10, 'mrs.', 'Adebayo', '16/69/0024', 'ND', 'siwes', 's20182019'),
(53, 11, 'mrs.', 'Alaran', '16/69/0041', 'ND', 'siwes', 's20182019'),
(54, 12, 'mr.', 'Olaitan', '16/69/0017', 'ND', 'siwes', 's20182019'),
(55, 11, 'mrs.', 'Alaran', '16/69/0018', 'ND', 'siwes', 's20182019'),
(56, 8, 'mr.', 'Arilekolasi', '16/69/0031', 'ND', 'siwes', 's20182019'),
(57, 10, 'mrs.', 'Adebayo', '16/69/0004', 'ND', 'siwes', 's20182019'),
(58, 7, 'mr.', 'Logunleko', '16/69/0007', 'ND', 'siwes', 's20182019'),
(59, 1, 'mr.', 'Kola', '16/69/0015', 'ND', 'siwes', 's20182019'),
(60, 5, 'mr.', 'Adetona', '16/69/0034', 'ND', 'siwes', 's20182019'),
(61, 9, 'mrs.', 'Oyelowo', '16/69/0029', 'ND', 'siwes', 's20182019'),
(62, 3, 'mr.', 'Orunsolu', '16/69/0010', 'ND', 'siwes', 's20182019'),
(63, 8, 'mr.', 'Arilekolasi', '16/69/0022', 'ND', 'siwes', 's20182019'),
(64, 2, 'mr.', 'Adeleke', '16/69/0032', 'ND', 'siwes', 's20182019'),
(65, 12, 'mr.', 'Olaitan', '16/69/0009', 'ND', 'siwes', 's20182019'),
(66, 13, 'mr.', 'Adebeshin', '16/69/0036', 'ND', 'siwes', 's20182019'),
(67, 7, 'mr.', 'Logunleko', '16/69/0028', 'ND', 'siwes', 's20182019'),
(68, 6, 'mrs.', 'Lawal', '16/69/0035', 'ND', 'siwes', 's20182019'),
(69, 6, 'mrs.', 'Lawal', '16/69/0001', 'ND', 'siwes', 's20182019'),
(70, 1, 'mr.', 'Kola', '16/69/0020', 'ND', 'siwes', 's20182019'),
(71, 3, 'mr.', 'Orunsolu', '16/69/0033', 'ND', 'siwes', 's20182019'),
(72, 10, 'mrs.', 'Adebayo', '16/69/0039', 'ND', 'siwes', 's20182019'),
(73, 6, 'mrs.', 'Lawal', '16/69/0003', 'ND', 'siwes', 's20182019'),
(74, 5, 'mr.', 'Adetona', '16/69/0019', 'ND', 'siwes', 's20182019'),
(75, 6, 'mrs.', 'Lawal', '16/69/0025', 'ND', 'siwes', 's20182019'),
(76, 12, 'mr.', 'Olaitan', '16/69/0012', 'ND', 'siwes', 's20182019'),
(77, 13, 'mr.', 'Adebeshin', '16/69/0008', 'ND', 'siwes', 's20182019'),
(78, 2, 'mr.', 'Adeleke', '16/69/0030', 'ND', 'siwes', 's20182019'),
(79, 5, 'mr.', 'Adetona', '16/69/0027', 'ND', 'siwes', 's20182019'),
(80, 8, 'mr.', 'Arilekolasi', '16/69/0026', 'ND', 'siwes', 's20182019'),
(81, 1, 'mr.', 'Kola', '16/69/0011', 'ND', 'siwes', 's20182019'),
(82, 11, 'mrs.', 'Alaran', '16/69/0021', 'ND', 'siwes', 's20182019'),
(83, 13, 'mr.', 'Adebeshin', '16/69/0023', 'ND', 'siwes', 's20182019'),
(84, 8, 'mr.', 'Arilekolasi', '16/69/0042', 'ND', 'siwes', 's20182019'),
(85, 3, 'mr.', 'Orunsolu', '16/69/0018', 'ND', 'siwes', 's20182019'),
(86, 1, 'mr.', 'Kola', '16/69/0036', 'ND', 'siwes', 's20182019'),
(87, 3, 'mr.', 'Orunsolu', '16/69/0032', 'ND', 'siwes', 's20182019'),
(88, 14, 'mr.', 'Nimat', '16/69/0029', 'ND', 'siwes', 's20182019'),
(89, 9, 'mrs.', 'Oyelowo', '16/69/0015', 'ND', 'siwes', 's20182019'),
(90, 6, 'mrs.', 'Lawal', '16/69/0029', 'ND', 'siwes', 's20182019'),
(91, 1, 'mr.', 'Kola', '16/69/0008', 'ND', 'siwes', 's20182019'),
(92, 11, 'mrs.', 'Alaran', '16/69/0005', 'ND', 'siwes', 's20182019'),
(93, 6, 'mrs.', 'Lawal', '16/69/0012', 'ND', 'siwes', 's20182019'),
(94, 7, 'mr.', 'Logunleko', '16/69/0023', 'ND', 'siwes', 's20182019'),
(95, 6, 'mrs.', 'Lawal', '16/69/0002', 'ND', 'siwes', 's20182019'),
(96, 10, 'mrs.', 'Adebayo', '16/69/0033', 'ND', 'siwes', 's20182019'),
(97, 8, 'mr.', 'Arilekolasi', '16/69/0040', 'ND', 'siwes', 's20182019'),
(98, 5, 'mr.', 'Adetona', '16/69/0026', 'ND', 'siwes', 's20182019'),
(99, 14, 'mr.', 'Nimat', '16/69/0034', 'ND', 'siwes', 's20182019'),
(100, 3, 'mr.', 'Orunsolu', '16/69/0038', 'ND', 'siwes', 's20182019'),
(101, 1, 'mr.', 'Kola', '16/69/0038', 'ND', 'siwes', 's20182019'),
(102, 6, 'mrs.', 'Lawal', '16/69/0039', 'ND', 'siwes', 's20182019'),
(103, 3, 'mr.', 'Orunsolu', '16/69/0016', 'ND', 'siwes', 's20182019'),
(104, 12, 'mr.', 'Olaitan', '16/69/0010', 'ND', 'siwes', 's20182019'),
(105, 6, 'mrs.', 'Lawal', '16/69/0008', 'ND', 'siwes', 's20182019'),
(106, 10, 'mrs.', 'Adebayo', '16/69/0011', 'ND', 'siwes', 's20182019'),
(107, 5, 'mr.', 'Adetona', '16/69/0027', 'ND', 'siwes', 's20182019'),
(108, 10, 'mrs.', 'Adebayo', '16/69/0007', 'ND', 'siwes', 's20182019'),
(109, 6, 'mrs.', 'Lawal', '16/69/0001', 'ND', 'siwes', 's20182019'),
(110, 4, 'mr.', 'Kareem', '16/69/0016', 'ND', 'siwes', 's20182019'),
(111, 1, 'mr.', 'Kola', '16/69/0037', 'ND', 'siwes', 's20182019'),
(112, 3, 'mr.', 'Orunsolu', '16/69/0020', 'ND', 'siwes', 's20182019'),
(113, 1, 'mr.', 'Kola', '16/69/0012', 'ND', 'siwes', 's20182019'),
(114, 11, 'mrs.', 'Alaran', '16/69/0020', 'ND', 'siwes', 's20182019'),
(115, 13, 'mr.', 'Adebeshin', '16/69/0025', 'ND', 'siwes', 's20182019'),
(116, 12, 'mr.', 'Olaitan', '16/69/0017', 'ND', 'siwes', 's20182019'),
(117, 9, 'mrs.', 'Oyelowo', '16/69/0027', 'ND', 'siwes', 's20182019'),
(118, 5, 'mr.', 'Adetona', '16/69/0017', 'ND', 'siwes', 's20182019'),
(119, 2, 'mr.', 'Adeleke', '16/69/0018', 'ND', 'siwes', 's20182019'),
(120, 10, 'mrs.', 'Adebayo', '16/69/0037', 'ND', 'siwes', 's20182019'),
(121, 2, 'mr.', 'Adeleke', '16/69/0006', 'ND', 'siwes', 's20182019'),
(122, 8, 'mr.', 'Arilekolasi', '16/69/0001', 'ND', 'siwes', 's20182019'),
(123, 9, 'mrs.', 'Oyelowo', '16/69/0028', 'ND', 'siwes', 's20182019'),
(124, 14, 'mr.', 'Nimat', '16/69/0040', 'ND', 'siwes', 's20182019'),
(125, 9, 'mrs.', 'Oyelowo', '16/69/0034', 'ND', 'siwes', 's20182019'),
(126, 12, 'mr.', 'Olaitan', '16/69/0007', 'ND', 'siwes', 's20182019'),
(127, 3, 'mr.', 'Orunsolu', '16/69/0003', 'ND', 'siwes', 's20182019'),
(128, 13, 'mr.', 'Adebeshin', '16/69/0004', 'ND', 'siwes', 's20182019'),
(129, 7, 'mr.', 'Logunleko', '16/69/0009', 'ND', 'siwes', 's20182019'),
(130, 10, 'mrs.', 'Adebayo', '16/69/0033', 'ND', 'siwes', 's20182019'),
(131, 12, 'mr.', 'Olaitan', '16/69/0035', 'ND', 'siwes', 's20182019'),
(132, 1, 'mr.', 'Kola', '16/69/0025', 'ND', 'siwes', 's20182019'),
(133, 1, 'mr.', 'Kola', '16/69/0015', 'ND', 'siwes', 's20182019'),
(134, 13, 'mr.', 'Adebeshin', '16/69/0005', 'ND', 'siwes', 's20182019'),
(135, 2, 'mr.', 'Adeleke', '16/69/0011', 'ND', 'siwes', 's20182019'),
(136, 10, 'mrs.', 'Adebayo', '16/69/0013', 'ND', 'siwes', 's20182019'),
(137, 2, 'mr.', 'Adeleke', '16/69/0014', 'ND', 'siwes', 's20182019'),
(138, 14, 'mr.', 'Nimat', '16/69/0003', 'ND', 'siwes', 's20182019'),
(139, 9, 'mrs.', 'Oyelowo', '16/69/0041', 'ND', 'siwes', 's20182019'),
(140, 13, 'mr.', 'Adebeshin', '16/69/0041', 'ND', 'siwes', 's20182019'),
(141, 1, 'mr.', 'Kola', '16/69/0006', 'ND', 'siwes', 's20182019'),
(142, 11, 'mrs.', 'Alaran', '16/69/0042', 'ND', 'siwes', 's20182019'),
(143, 1, 'mr.', 'Kola', '16/69/0013', 'ND', 'siwes', 's20182019'),
(144, 8, 'mr.', 'Arilekolasi', '16/69/0021', 'ND', 'siwes', 's20182019'),
(145, 1, 'mr.', 'Kola', '16/69/0010', 'ND', 'siwes', 's20182019'),
(146, 8, 'mr.', 'Arilekolasi', '16/69/0036', 'ND', 'siwes', 's20182019'),
(147, 3, 'mr.', 'Orunsolu', '16/69/0039', 'ND', 'siwes', 's20182019'),
(148, 5, 'mr.', 'Adetona', '16/69/0031', 'ND', 'siwes', 's20182019'),
(149, 7, 'mr.', 'Logunleko', '16/69/0028', 'ND', 'siwes', 's20182019'),
(150, 13, 'mr.', 'Adebeshin', '16/69/0030', 'ND', 'siwes', 's20182019'),
(151, 2, 'mr.', 'Adeleke', '16/69/0035', 'ND', 'siwes', 's20182019'),
(152, 11, 'mrs.', 'Alaran', '16/69/0042', 'ND', 'siwes', 's20182019'),
(153, 1, 'mr.', 'Kola', '16/69/0019', 'ND', 'siwes', 's20182019'),
(154, 2, 'mr.', 'Adeleke', '16/69/0022', 'ND', 'siwes', 's20182019'),
(155, 13, 'mr.', 'Adebeshin', '16/69/0031', 'ND', 'siwes', 's20182019'),
(156, 11, 'mrs.', 'Alaran', '16/69/0026', 'ND', 'siwes', 's20182019'),
(157, 9, 'mrs.', 'Oyelowo', '16/69/0009', 'ND', 'siwes', 's20182019'),
(158, 10, 'mrs.', 'Adebayo', '16/69/0014', 'ND', 'siwes', 's20182019'),
(159, 8, 'mr.', 'Arilekolasi', '16/69/0024', 'ND', 'siwes', 's20182019'),
(160, 8, 'mr.', 'Arilekolasi', '16/69/0002', 'ND', 'siwes', 's20182019'),
(161, 7, 'mr.', 'Logunleko', '16/69/0032', 'ND', 'siwes', 's20182019'),
(162, 5, 'mr.', 'Adetona', '16/69/0004', 'ND', 'siwes', 's20182019'),
(163, 12, 'mr.', 'Olaitan', '16/69/0019', 'ND', 'siwes', 's20182019'),
(164, 7, 'mr.', 'Logunleko', '16/69/0024', 'ND', 'siwes', 's20182019'),
(165, 10, 'mrs.', 'Adebayo', '16/69/0023', 'ND', 'siwes', 's20182019'),
(166, 11, 'mrs.', 'Alaran', '16/69/0022', 'ND', 'siwes', 's20182019'),
(167, 6, 'mrs.', 'Lawal', '16/69/0021', 'ND', 'siwes', 's20182019'),
(168, 10, 'mrs.', 'Adebayo', '16/69/0030', 'ND', 'siwes', 's20182019');

-- --------------------------------------------------------

--
-- Table structure for table `tblsupervisors`
--

CREATE TABLE `tblsupervisors` (
  `sup_id` int(5) NOT NULL,
  `title` varchar(10) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupervisors`
--

INSERT INTO `tblsupervisors` (`sup_id`, `title`, `surname`, `firstname`, `session`) VALUES
(1, 'mr.', 'Kola', 'Abiola', 's20182019'),
(2, 'mr.', 'Adeleke', 'Adebayo', 's20182019'),
(3, 'mr.', 'Orunsolu', 'Orifogo', 's20182019'),
(4, 'mr.', 'Kareem', 'Abdul', 's20182019'),
(5, 'mr.', 'Adetona', 'Basit', 's20182019'),
(6, 'mrs.', 'Lawal', 'Funmilayo', 's20182019'),
(7, 'mr.', 'Logunleko', 'Abiola', 's20182019'),
(8, 'mr.', 'Arilekolasi', 'Alao', 's20182019'),
(9, 'mrs.', 'Oyelowo', 'Kemi', 's20182019'),
(10, 'mrs.', 'Adebayo', 'Kemi', 's20182019'),
(11, 'mrs.', 'Alaran', 'Mistura', 's20182019'),
(12, 'mr.', 'Olaitan', 'Omotayo', 's20182019'),
(13, 'mr.', 'Adebeshin', 'Adesoji', 's20182019'),
(14, 'mr.', 'Nimat', 'Bisirulahi', 's20182019');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(3) NOT NULL,
  `hash` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl20172018`
--
ALTER TABLE `tbl20172018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl20182019`
--
ALTER TABLE `tbl20182019`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojectseminar`
--
ALTER TABLE `tblprojectseminar`
  ADD PRIMARY KEY (`alloc_id`);

--
-- Indexes for table `tblsiwes`
--
ALTER TABLE `tblsiwes`
  ADD PRIMARY KEY (`alloc_id`);

--
-- Indexes for table `tblsupervisors`
--
ALTER TABLE `tblsupervisors`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl20172018`
--
ALTER TABLE `tbl20172018`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl20182019`
--
ALTER TABLE `tbl20182019`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `tblprojectseminar`
--
ALTER TABLE `tblprojectseminar`
  MODIFY `alloc_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `tblsiwes`
--
ALTER TABLE `tblsiwes`
  MODIFY `alloc_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `tblsupervisors`
--
ALTER TABLE `tblsupervisors`
  MODIFY `sup_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
