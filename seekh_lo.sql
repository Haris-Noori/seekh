-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2019 at 09:58 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seekh_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_Title` varchar(20) NOT NULL,
  `Course_Description` varchar(300) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Price` int(50) NOT NULL,
  `Start_Date` date NOT NULL,
  `Expiry_Date` date NOT NULL,
  `Teacher` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_Title`, `Course_Description`, `Category`, `Price`, `Start_Date`, `Expiry_Date`, `Teacher`) VALUES
('Web Programming', 'You will learn HTML,CSS, JavaScript, PHP, MYSQL', 'Technology', 500, '0000-00-00', '0000-00-00', 'Dr.Taimoor Khan'),
('Graphic Designing', 'Become Front-End Developer', 'Technology', 200, '2019-12-12', '0000-00-00', 'Haider Tamsil'),
('Machine Learning', 'Learn Machine Learning + AI using Python', 'Computer Science', 800, '2019-12-20', '2020-05-05', 'Dr.Nauman');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_students`
--

CREATE TABLE `enrolled_students` (
  `course_title` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolled_students`
--

INSERT INTO `enrolled_students` (`course_title`, `student_name`) VALUES
('Graphic Designing ', 'Haris'),
('Machine Learning ', 'Haris');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `st_name` varchar(50) NOT NULL,
  `st_email` varchar(50) NOT NULL,
  `st_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`st_name`, `st_email`, `st_password`) VALUES
('Haris', 'haris@gmail.com', 'haris');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Name` varchar(40) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `t_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Name`, `Email`, `t_password`) VALUES
('Dr.Nauman', 'nauman@udema.com', 'nauman'),
('Dr.Taimoor Khan', 'taimoor@udema.com', 'taimoor');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
