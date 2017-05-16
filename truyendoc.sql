-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2017 at 12:49 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `truyendoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `cottruyen`
--

CREATE TABLE `cottruyen` (
  `ma_truyen` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ten_truyen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ma_theloai` int(10) UNSIGNED NOT NULL,
  `chitiet` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `baiviet1` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_tgia` int(10) UNSIGNED NOT NULL,
  `ngayviet` date NOT NULL,
  `image` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cottruyen`
--

INSERT INTO `cottruyen` (`ma_truyen`, `tieude`, `ten_truyen`, `ma_theloai`, `chitiet`, `baiviet1`, `ma_tgia`, `ngayviet`, `image`) VALUES
(1, 'a', 'b', 11, 'aaaaaaa', '1', 1, '2002-01-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tac_gia`
--

CREATE TABLE `tac_gia` (
  `ma_tgia` int(10) UNSIGNED NOT NULL,
  `ten_tgia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinh` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tac_gia`
--

INSERT INTO `tac_gia` (`ma_tgia`, `ten_tgia`, `hinh`) VALUES
(1, 'nam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `the_loai`
--

CREATE TABLE `the_loai` (
  `ma_theloai` int(10) UNSIGNED NOT NULL,
  `ten_theloai` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `the_loai`
--

INSERT INTO `the_loai` (`ma_theloai`, `ten_theloai`) VALUES
(1, 'hanhdong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cottruyen`
--
ALTER TABLE `cottruyen`
  ADD PRIMARY KEY (`ma_truyen`),
  ADD UNIQUE KEY `ma_theloai` (`ma_theloai`),
  ADD UNIQUE KEY `ma_tgia` (`ma_tgia`),
  ADD KEY `ma_theloai_2` (`ma_theloai`),
  ADD KEY `ma_tgia_2` (`ma_tgia`),
  ADD KEY `ma_theloai_3` (`ma_theloai`),
  ADD KEY `ma_tgia_3` (`ma_tgia`);

--
-- Indexes for table `tac_gia`
--
ALTER TABLE `tac_gia`
  ADD PRIMARY KEY (`ma_tgia`);

--
-- Indexes for table `the_loai`
--
ALTER TABLE `the_loai`
  ADD PRIMARY KEY (`ma_theloai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cottruyen`
--
ALTER TABLE `cottruyen`
  ADD CONSTRAINT `cottruyen_ibfk_1` FOREIGN KEY (`ma_tgia`) REFERENCES `tac_gia` (`ma_tgia`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
