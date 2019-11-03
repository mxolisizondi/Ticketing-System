-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2019 at 08:08 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easy ticket system2`
--

-- --------------------------------------------------------

--
-- Table structure for table `airplanetrip`
--

CREATE TABLE `airplanetrip` (
  `TripId` int(5) NOT NULL,
  `FlightNumber` int(5) NOT NULL,
  `FligthName` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Time` time NOT NULL,
  `ClassType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `username` varchar(60) NOT NULL,
  `DepartureDate` date NOT NULL,
  `ReturnDate` date DEFAULT NULL,
  `TripId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`username`, `DepartureDate`, `ReturnDate`, `TripId`) VALUES
('mxolisi@gmail.com', '2019-11-06', NULL, 5051);

-- --------------------------------------------------------

--
-- Table structure for table `bustrip`
--

CREATE TABLE `bustrip` (
  `TripId` int(5) NOT NULL,
  `BusNumber` int(5) NOT NULL,
  `BusName` varchar(40) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Time` time NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bustrip`
--

INSERT INTO `bustrip` (`TripId`, `BusNumber`, `BusName`, `Location`, `Destination`, `Time`, `Price`) VALUES
(5051, 101, 'MUT', 'Durban', 'Capetown', '14:00:00', 500),
(5052, 102, 'Durban Transport', 'Durban', 'Capetown', '07:00:00', 750),
(5053, 103, 'City To City', 'Durban', 'Capetown', '17:30:00', 600);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `EventId` int(5) NOT NULL,
  `EventName` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Name` varchar(40) NOT NULL,
  `Surname` varchar(40) NOT NULL,
  `IdNumber` int(13) NOT NULL,
  `PhoneNumber` varchar(12) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Name`, `Surname`, `IdNumber`, `PhoneNumber`, `Address`, `Email`, `Password`) VALUES
('Mxolisi', 'Zondi', 2147483647, '0603872453', 'Portshepton 2012', 'mxolisi@gmail.com', 'Mxo@1998'),
('Nick', 'Nikani', 9845454, '0687978547', 'Pamasteli 5456', 'nick@gmail.com', 'nick'),
('Nokwazi', 'Masindane', 87987879, '0768557055', 'Killany Res 8788', 'nokwa@gmail.com', 'nokwa'),
('Sya', 'Ndlovu', 2147483647, '0604859865', 'Stenga 2014', 'sya@gmail.com', 'sya');

-- --------------------------------------------------------

--
-- Table structure for table `traintrip`
--

CREATE TABLE `traintrip` (
  `TripId` int(5) NOT NULL,
  `TrainNumber` int(5) NOT NULL,
  `TrainName` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airplanetrip`
--
ALTER TABLE `airplanetrip`
  ADD PRIMARY KEY (`TripId`);

--
-- Indexes for table `bustrip`
--
ALTER TABLE `bustrip`
  ADD PRIMARY KEY (`TripId`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`EventId`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `traintrip`
--
ALTER TABLE `traintrip`
  ADD PRIMARY KEY (`TripId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
