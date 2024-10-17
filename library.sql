-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 07:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `last`, `username`, `password`, `email`, `contact`, `pic`) VALUES
(1, 'Mr.', 'Abdul', 'Hamid', '123456', 'mr.hamid@gmail.com', '12345678', 'o.png'),
(2, 'Nobonita', 'Das', 'Nobonita', '111111', 'nobonita@gmail.com', '012345678', '4881.jpg'),
(3, 'Mr.', 'X', 'X', '222222', 'samiarahman@gmail.com', '133446557', 'p.jpg'),
(4, 'bran', 'muneton', 'banano', '123', 'brandonmunetonavendano@gmail.com', '3118371482', 'p.jpg'),
(5, 'bran', 'muneton', 'banano2', '123456', 'hvnbran@hotmail.com', '3118371482', 'p.jpg'),
(6, 'bran', 'muneton', 'bmuneton736', '123456', 'jitterawa@hotmail.com', '3118371482', 'p.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `name`, `authors`, `edition`, `status`, `quantity`, `department`) VALUES
(777, 'Las cronicas de crear un sitio web en php', 'Bran', '3', 'Bueno', 1, 'Tecnologia');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`) VALUES
(5, 'Promi', 'hello!'),
(16, 'Afifa', 'There is no books of ETE department.When will it be available?'),
(17, 'Admin', 'Hi! which book do you need Afifa. Please let us know.'),
(18, '', 'hello! '),
(19, 'Promi', 'Hi! which book do you need Afifa. Please let us know.');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `returned` varchar(100) NOT NULL,
  `day` int(50) NOT NULL,
  `fine` double NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`username`, `bid`, `returned`, `day`, `fine`, `status`) VALUES
('Promi', 1, '2019-05-21', 31, 3.1, 'not paid'),
('Afifa', 1, '2019-05-21', 1, 0.1, 'not paid'),
('Afifa', 1, '2024-10-17', 20012, 2001.2, 'not paid'),
('Promi', 3, '2024-10-17', 1981, 198.1, 'not paid');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `username` varchar(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `approve` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `return` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`username`, `bid`, `approve`, `issue`, `return`) VALUES
('Promi', 3, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-04-22', '2019-05-16'),
('Promi', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-03-20', '2019-04-20'),
('Promi', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-01-30', '2019-02-28'),
('Afifa', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-04-20', '2019-05-20'),
('Afifa', 2, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '2019-02-20', '2019-02-10'),
('Afifa', 1, '<p style=\"color:yellow; background-color:green;\">RETURNED</p>', '', ''),
('nicoco', 777, 'Si', '2024 16 10', '2024 20 10'),
('Hamid', 777, '', '', ''),
('nicogay1', 777, 'yes', '2024 16 10', '2024 20 10'),
('nicogay1', 777, 'yes', '2024 16 10', '2024 20 10');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roll` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first`, `last`, `username`, `password`, `roll`, `email`, `contact`, `pic`) VALUES
('Afia', 'Abida', 'Promi', '111111', 1, 'afia1@gmail.com', '000000000', '7996_3d_modeling_5.jpg'),
('sanzida', 'mou', 'Mim', '555555', 324, 'mim@gmail.com', '53454', 'p.jpg'),
('Mr.', 'Rahman', 'Rahman', '212324', 1510016, 'samiarahman@gmail.com', '123456', 'p.jpg'),
('Sumaiya', 'Shimu', 'Shimu1', '987654', 1510052, 'shimu1@gmail.com', '1739000000', 'p.jpg'),
('Suchana', 'Pramanik', 'Suchana', '121212', 1510047, 'suchana@gmail.com', '1739000000', 'p.jpg'),
('Afifa ', 'Ashraf', 'Afifa', '121212', 1510047, 'afifa@gmail.com', '1739000001', 'p.jpg'),
('Nicolas ', 'Henao', 'nicoco', '1234567', 1, 'jitterawa@hotmail.com', '3118371482', '03e7e505a23d786e078cf60f61ae3a5a.jpg'),
('curvo', 'jose', 'curvo1', 'samantha', 42, 'lol:v', '4135875', 'p.jpg'),
('bran', 'muneton', 'nicogay1', '123456', 1033258736, 'hvnbran@hotmail.com', '3118371482', 'p.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
