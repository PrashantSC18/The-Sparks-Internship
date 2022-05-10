-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 01:45 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesparksbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `sr` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`sr`, `name`, `email`, `message`) VALUES
(1, 'prashant', 'prashant@gmail.com', 'Hello Im facing issues in sending money'),
(21, 'finn Claire', 'prashantfy@fgrg', 'hello Im facing issues while transacting money to my friend\r\n'),
(22, 'Yug', 'prashantfy@fgrg', 'Hi I need help');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `sr` int(11) NOT NULL,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`sr`, `sender`, `receiver`, `amount`, `status`) VALUES
(15, '4637485961', '6845783937', 25000, 'failed'),
(16, '8765375385', '8765375385', 50000, 'succeed'),
(17, '6532657685', '6532657685', 20000, 'succeed'),
(18, '8936798363', '643783493', 10000000, 'succeed'),
(19, '5464365863', '643783493', 1000000, 'failed'),
(20, '5464365863', '6437834932', 10000, 'succeed'),
(21, '8765375385', '643783493', 12345, 'succeed'),
(22, '6423746337', '6437834932', 20000, 'succeed'),
(23, '8597960764', '6437834932', 50000000, 'succeed'),
(24, '6437834932', '9476767848', 50000000, 'succeed'),
(25, '9476767848', '6437834932', 200000000, 'succeed');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sr` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `accno` varchar(10) NOT NULL,
  `blc` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sr`, `name`, `email`, `accno`, `blc`) VALUES
(1, 'Prashant Chaurasia', 'prashant18chaurasia@', '6437834932', 250030000),
(14, 'Rushal Chikane', 'rushal@gmail.com', '6423746337', 19980000),
(15, 'Shubham Chanda', 'shub1734@gmail.com', '6483575367', 20000000),
(16, 'Udit Broker', 'udit34@gmail.com', '6483354656', 30000000),
(17, 'Arvind Gupta', 'arvindkk124@gmail.co', '7358694748', 10000000),
(18, 'Harshit Chaubey', 'harshit345@gmail.com', '6374586986', 30000000),
(19, 'Anil Kumble', 'anil12@gmail.com', '3564758686', 40000000),
(20, 'Virat Kohli', 'virushka12@gmail.com', '8597960764', 50000000),
(21, 'Namrata', 'namrata@gmail.com', '3648386543', 20000000),
(22, 'Sanika Chaudhari', 'sanikap@gmail.com', '9476767848', 50000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
