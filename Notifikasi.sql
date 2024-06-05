-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 16, 2024 at 07:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`) VALUES
(1, 'halo'),
(2, 'Free lah'),
(3, 'POST / HTTP/1.1'),
(4, 'User-Agent: PostmanRuntime/7.36.0'),
(5, 'Accept: */*'),
(6, 'Cache-Control: no-cache'),
(7, 'Postman-Token: 48defb39-85c2-4b84-9d57-46f08e15a703'),
(8, 'Host: 127.0.0.1:8080'),
(9, 'Accept-Encoding: gzip, deflate, br'),
(10, 'Connection: keep-alive'),
(11, 'Content-Type: multipart/form-data; boundary=--------------------------892945124416395179308516'),
(12, 'Content-Length: 167'),
(13, ''),
(14, '----------------------------892945124416395179308516'),
(15, 'Content-Disposition: form-data; name=\"message\"'),
(16, ''),
(17, 'Ultraman'),
(18, '----------------------------892945124416395179308516--'),
(19, 'Sarmilla');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
