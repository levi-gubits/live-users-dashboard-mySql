-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2021 at 07:44 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `live_users_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `user_agent` varchar(128) NOT NULL,
  `entrance_time` datetime NOT NULL,
  `visits_count` int(11) NOT NULL,
  `sessionKey` varchar(128) NOT NULL,
  `userIP` varchar(25) NOT NULL,
  `lastSeen` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_agent`, `entrance_time`, `visits_count`, `sessionKey`, `userIP`, `lastSeen`) VALUES
(1, 'levi', 'gubitsly770@gmail.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '2021-09-19 10:26:55', 58, 'dfsfgsegtq24t4q3', '::1', '2021-09-19 20:44:43'),
(2, 'mushki', 'cmlipsh@gmail.com', 'Mozilla/5.0 (Linux; Android 11; KB2003) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36', '2021-09-19 11:10:22', 17, 'aef3wfwr32dvsv', '147.161.12.220', '2021-09-19 11:10:34'),
(3, 'avinoam', 'avinoam@gmail.com', 'Mozilla/5.0 (Linux; Android 11; KB2003) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.62 Mobile Safari/537.36', '2021-09-14 20:52:39', 1, '4fwtrwrdafwef4', '176.12.188.190', '2021-09-15 00:12:19'),
(4, 'dober', 'dober@gmail.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-09-15 01:04:20', 3, 'fewfwf42343rf', '::1', '2021-09-15 04:33:31'),
(5, 'moshe', 'moshe@gmail.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2021-09-14 15:05:37', 0, '4tgefgefgfw34gw34gf', '', '2021-09-15 00:12:19'),
(8, 'yes', 'yes@gmail.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '2021-09-16 21:32:17', 1, 's23op45vfob10sp09qsvo9f20t', '::1', '2021-09-16 21:34:59'),
(11, 'bumy', 'bumy@gmail.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '2021-09-17 02:01:55', 2, 'o8gsg69mi7h09828ufus5mk117', '::1', '2021-09-17 10:24:52'),
(13, 'pini', 'gubitsp@gmail.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '2021-09-17 14:03:52', 2, '0d01sl7u3ian4221pfs284f4md', '::1', '2021-09-17 14:05:03'),
(14, 'levi', 'zdfsdf', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '2021-09-17 13:52:16', 1, 'j2k1ofelitpsga9t8cjob717f5', '::1', '2021-09-17 13:53:30'),
(16, 'moshe', 'dobernimets@gmail.com', 'Mozilla/5.0 (Linux; Android 10; Mi A3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Mobile Safari/537.36', '2021-09-19 01:54:40', 2, '6vetdgejg8g0cpg11fjkslbqhv', '87.70.52.51', '2021-09-19 01:55:48'),
(17, 'Levi gubits', 'gubits@gmail.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '2021-09-19 10:25:15', 1, 'r5adcusf194vh9fjpeoosqvle8', '::1', '2021-09-19 10:25:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
