-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2023 at 04:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinevaccinationportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `center` varchar(20) NOT NULL,
  `vaccineType` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentID`, `userName`, `center`, `vaccineType`, `date`, `time`) VALUES
(10, 'akash', 'Kandy', 'Hepatitis B.', '2023-10-15', '14:10:00'),
(7, 'Chanidu', 'Kurunegala', 'Rubella (MMR)', '2023-10-30', '02:59:00'),
(14, 'Ishan', 'Kurunegala', 'Pfizer', '2023-10-18', '13:50:00'),
(16, 'Rumen', 'Kurunegala', 'Sinovac', '2023-10-14', '14:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `referenceNumber` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `inquiry` text NOT NULL,
  `reply` text NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`referenceNumber`, `userName`, `email`, `inquiry`, `reply`, `Status`) VALUES
(8, 'Chanidu', 'chanidu.banula@gmail', 'sadvretrydtjyrstb', 'vfhcgvjcjfh', 'Replyed'),
(9, 'Chanidu', 'chanidu.banula@gmail', 'hcudhushuh', '', 'pending'),
(10, 'Chanidu', 'chanidu.banula@gmail', 'qwertyuiop[asdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm', '', 'pending'),
(12, 'akash', 'akaz@gmail.com', 'dbyfwnecwnduiqwedbwygeiudewdfwqfqw', 'gtshtrhthehth', 'Replyed'),
(13, 'akash', 'akaz@gmail.com', 'look at me habibi', 'I will look at you mchn', 'Replyed'),
(14, 'Chanidu', 'chanidu.banula@gmail', 'bdciqwhdgy8qgdbqifq', 'sdqwyiudhqbdiqd', 'Replyed'),
(15, 'Vidura', 'Vidura@gmail.com', 'ebfdtwfubcdhegdwebhgdwed', 'djfvngownigjrrw', 'Replyed'),
(16, 'Vidura', '', 'I dont want vaccines', 'Then why did you come here', 'Replyed'),
(17, 'Vidura', '', 'rwgjiwbgrnowngiowr', '', 'pending'),
(18, 'akash', 'akaz@gmail.com', 'njhygtfdesdrctvbhnjk', '', 'pending'),
(19, 'yasas', 'vidurayasassri82@gma', 'yghjnjff', 'fhgyuerhwigeuger', 'Replyed'),
(20, 'Rumen', 'rumen@gmail.com', 'Hi yaluwe', 'Yoo machn', 'Replyed');

-- --------------------------------------------------------

--
-- Table structure for table `ragistration`
--

CREATE TABLE `ragistration` (
  `userID` int(11) NOT NULL,
  `userName` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `mobileNumber` bigint(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `NICNumber` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ragistration`
--

INSERT INTO `ragistration` (`userID`, `userName`, `password`, `fullName`, `birthday`, `gender`, `mobileNumber`, `address`, `NICNumber`, `email`, `userType`) VALUES
(10, 'akash', '7894', 'Akash Jayasinghe', '2002-04-15', 'm', 765262612, 'kurunegala  Hettipola', '255561484165', 'akaz@gmail.com', 'user'),
(11, 'Ishan', '1234', 'Ishan Jayasinghe', '2023-05-10', 'm', 720953464, 'Jayasinghe Stores, kurunegala road Hettipola', '123456789', '', 'user'),
(12, 'Chathuki', '1234', 'Chathuki Daya', '2023-06-15', 'f', 720146841, 'Kuliyapity road Narammala', '2147483647', '', 'user'),
(16, 'Chanidu', '029029', 'Chanidu Rathnayake', '2003-01-29', 'm', 746564565, 'America', '2147483647', 'chanidu.banula@gmail.com', 'user'),
(17, 'admin', 'admin1234', '', '2002-04-15', '', 0, '', '', '', 'admin'),
(19, 'Vidura', '1010', 'Vidura Ruwantha', '2023-05-10', 'm', 2689456465, 'Bee Kitchen', '123456789', '', 'user'),
(20, 'sithum', 'sithum', 'sithum buddhika', '2002-02-13', 'm', 764537993, 'frydxryfghjnbgvty', '200204404039', '', 'user'),
(21, 'Yasas', '22054890', 'vidura yasassri', '2002-01-15', 'm', 766401137, 'go home gota', '22054890', 'vidurayasassri82@gmail.com', 'user'),
(22, 'harini', 'udari', 'harini udari', '2001-05-27', 'f', 761788538, 'monaragala', '200164801365', '', 'user'),
(23, 'Rumen', '200205', 'Rumen Hansaja Kaluhendiwala', '0000-00-00', 'm', 746565462, 'Mallawapitiya Kurunegala', '123456789123', 'rumen@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`userName`),
  ADD UNIQUE KEY `appointmentID` (`appointmentID`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`referenceNumber`);

--
-- Indexes for table `ragistration`
--
ALTER TABLE `ragistration`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `referenceNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ragistration`
--
ALTER TABLE `ragistration`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
