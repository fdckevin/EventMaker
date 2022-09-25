-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 25, 2022 at 01:42 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_maker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `google_calendar_event_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `location`, `date`, `time_from`, `time_to`, `google_calendar_event_id`, `created`) VALUES
(1, 'dsfs', 'dfs', 'sdfs', '2022-09-25', '15:26:00', '16:26:00', NULL, '2022-09-25 15:26:24'),
(2, 'sdf', 'sdf', 'sdfsd', '2022-09-25', '15:28:00', '16:28:00', NULL, '2022-09-25 15:28:37'),
(3, 'sdf', 'sdfs', 'dsfds', '2022-09-25', '15:30:00', '16:30:00', NULL, '2022-09-25 15:30:50'),
(4, 'sdf', 'sdf', 'sdfds', '2022-09-25', '15:31:00', '16:31:00', NULL, '2022-09-25 15:31:54'),
(5, 'sdf', 'sdf', 'sdf', '2022-09-26', '10:00:00', '17:00:00', NULL, '2022-09-25 15:40:54'),
(6, 'sdf', 'sdf', 'sdfds', '2022-09-25', '22:00:00', '05:00:00', NULL, '2022-09-25 15:42:00'),
(7, 'sdf', 'sdf', 'sdfds', '2022-09-25', '22:00:00', '23:00:00', NULL, '2022-09-25 15:46:45'),
(8, 'sdf', 'sdf', 'sdfds', '2022-09-25', '19:00:00', '22:00:00', NULL, '2022-09-25 15:48:03'),
(9, 'df', 'sdfds', 'sdfds', '2022-09-25', '15:49:00', '16:49:00', NULL, '2022-09-25 15:49:47'),
(10, 'sdf', 'sdfds', 'sdfs', '2022-09-25', '22:00:00', '23:00:00', NULL, '2022-09-25 15:50:14'),
(11, 'dfgfd', 'dfg', 'dfgfd', '2022-09-25', '15:54:00', '16:55:00', NULL, '2022-09-25 15:55:04'),
(12, 'sdf', 'sdf', 'sdfds', '2022-09-25', '22:00:00', '23:00:00', NULL, '2022-09-25 15:56:28'),
(13, 'dsfds', 'sdfds', 'sdfds', '2022-09-25', '15:57:00', '16:00:00', NULL, '2022-09-25 15:57:59'),
(14, 'gfhf', 'fgh', 'fghfg', '2022-09-25', '19:00:00', '22:00:00', NULL, '2022-09-25 18:56:35'),
(15, 'sdf', 'sdfs', 'dsf', '2022-09-25', '20:00:00', '21:00:00', NULL, '2022-09-25 18:57:53'),
(16, 'sd', 'sdf', 'dsfsdfsd', '2022-09-25', '19:00:00', '22:00:00', NULL, '2022-09-25 19:06:29'),
(17, 'dfg', 'dfg', 'fdg', '2022-09-25', '19:00:00', '20:00:00', NULL, '2022-09-25 19:08:14'),
(18, 'dfg', 'dfg', 'dfgfd', '2022-09-25', '21:00:00', '22:00:00', 'fqbdqr7cmcse0u28a614fuaups', '2022-09-25 19:18:21'),
(19, 'Test Kevin', 'Kevin was here', 'Middle of nowhere', '2022-09-25', '19:26:00', '22:26:00', 'a7fq8445au08fl67t9vh21ldls', '2022-09-25 19:26:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
