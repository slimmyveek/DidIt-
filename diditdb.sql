-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2025 at 02:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diditdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`id`, `date`, `note`) VALUES
(38, '2025-07-16', 'euisnr sdln l, clm dl');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `task` varchar(255) NOT NULL,
  `time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `status`, `task`, `time`) VALUES
(251, 1, 'Tidy my room', '2025-07-16'),
(252, 1, 'Add more to the list', '2025-07-16'),
(253, 1, 'Visit friends', '2025-07-16'),
(254, 1, 'Visit a zoo', '2025-07-16'),
(256, 1, 'Add more to the list', '2025-07-17'),
(257, 1, 'Tidy my room', '2025-07-19'),
(259, 1, 'Visit friends', '2025-07-19'),
(266, 1, 'Check up on loved ones 😍', '2025-07-19'),
(267, 1, 'Visit a zoo', '2025-07-19'),
(268, 1, 'Tidy my room', '2025-07-19'),
(269, 0, 'Check up on loved ones 😍', '2025-07-29'),
(270, 1, 'Read a book', '2025-07-29'),
(271, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(272, 1, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(273, 1, 'Tidy my room', '2025-07-29'),
(274, 1, 'Visit friends', '2025-07-29'),
(275, NULL, 'Check up on loved ones 😍', '2025-07-29'),
(276, NULL, 'Visit a zoo', '2025-07-29'),
(277, 1, 'Visit friends', '2025-07-29'),
(278, 1, 'Read a book', '2025-07-29'),
(279, 1, 'Tidy my room', '2025-07-29'),
(280, 1, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(281, 1, 'Visit a zoo', '2025-07-29'),
(282, NULL, 'Check up on loved ones 😍', '2025-07-29'),
(283, 1, 'Visit a zoo', '2025-07-29'),
(284, 1, 'Read a book', '2025-07-29'),
(285, NULL, 'Tidy my room', '2025-07-29'),
(286, 1, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(287, 1, 'Visit a zoo', '2025-07-29'),
(288, 1, 'Check up on loved ones 😍', '2025-07-29'),
(289, 1, 'Visit friends', '2025-07-29'),
(290, 1, 'Tidy my room', '2025-07-29'),
(291, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(292, NULL, 'Tidy my room', '2025-07-29'),
(293, NULL, 'Visit friends', '2025-07-29'),
(294, NULL, 'Visit a zoo', '2025-07-29'),
(295, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(296, NULL, 'Visit friends', '2025-07-29'),
(297, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(298, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(299, NULL, 'Check up on loved ones 😍', '2025-07-29'),
(300, NULL, 'Check up on loved ones 😍', '2025-07-29'),
(301, NULL, 'Visit a zoo', '2025-07-29'),
(302, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(303, NULL, 'Visit a zoo', '2025-07-29'),
(304, NULL, 'Visit friends', '2025-07-29'),
(305, NULL, 'Check up on loved ones 😍', '2025-07-29'),
(306, NULL, 'Visit a zoo', '2025-07-29'),
(307, NULL, 'Check up on loved ones 😍', '2025-07-29'),
(308, NULL, 'Tidy my room', '2025-07-29'),
(309, NULL, 'Tidy my room', '2025-07-29'),
(310, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(311, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(312, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(313, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(314, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(315, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(316, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(317, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(318, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(319, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(320, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(321, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(322, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(323, NULL, 'Read a book', '2025-07-29'),
(324, NULL, 'Visit friends', '2025-07-29'),
(325, NULL, 'Visit a zoo', '2025-07-29'),
(326, NULL, 'Visit friends', '2025-07-29'),
(327, NULL, 'Visit friends', '2025-07-29'),
(328, NULL, 'Visit a zoo', '2025-07-29'),
(329, NULL, 'Read a book', '2025-07-29'),
(330, NULL, 'Visit friends', '2025-07-29'),
(331, NULL, 'Visit a zoo', '2025-07-29'),
(332, NULL, 'Visit a zoo', '2025-07-29'),
(333, NULL, 'Visit a zoo', '2025-07-29'),
(334, NULL, 'Visit a zoo', '2025-07-29'),
(335, NULL, 'Read a book', '2025-07-29'),
(336, NULL, 'Tidy my room', '2025-07-29'),
(337, 1, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(338, NULL, 'Tidy my room', '2025-07-29'),
(339, NULL, 'Read a book', '2025-07-29'),
(340, NULL, 'Visit friends', '2025-07-29'),
(341, NULL, 'Read a book', '2025-07-29'),
(342, NULL, 'Visit friends', '2025-07-29'),
(343, NULL, 'Visit friends', '2025-07-29'),
(344, NULL, 'Visit a zoo', '2025-07-29'),
(345, NULL, 'Read a book', '2025-07-29'),
(346, NULL, 'Tidy my room', '2025-07-29'),
(347, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(348, NULL, 'Visit a zoo', '2025-07-29'),
(349, NULL, 'Visit a zoo', '2025-07-29'),
(350, NULL, 'Visit friends', '2025-07-29'),
(351, NULL, 'Visit a zoo', '2025-07-29'),
(352, NULL, 'Tidy my room', '2025-07-29'),
(353, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(354, NULL, 'Visit friends', '2025-07-29'),
(355, NULL, 'Visit a zoo', '2025-07-29'),
(356, 1, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(357, NULL, 'Visit friends', '2025-07-29'),
(358, 1, 'Visit a zoo', '2025-07-29'),
(359, NULL, 'Visit friends', '2025-07-29'),
(360, NULL, 'Check up on loved ones 😍', '2025-07-29'),
(361, NULL, 'Read a book', '2025-07-29'),
(362, NULL, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(363, 1, 'Visit a zoo', '2025-07-29'),
(364, NULL, 'Visit friends', '2025-07-29'),
(365, NULL, 'Visit friends', '2025-07-29'),
(366, NULL, 'Read a book', '2025-07-29'),
(367, NULL, 'Check up on loved ones 😍', '2025-07-29'),
(368, 1, 'Write some PHP code and learn Laravel for 2hours', '2025-07-29'),
(369, NULL, 'Visit friends', '2025-07-29'),
(370, 1, 'Visit friends', '2025-07-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
