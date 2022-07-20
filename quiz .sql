-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 07:35 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'muki', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(9, '5f105a8021042', '5f105a802f4c9'),
(10, '5f105a8065b8c', '5f105a806dad0'),
(11, '5f105a8089123', '5f105a8093fe0'),
(12, '5f184417db79d', '5f18441827883'),
(13, '5f1844187e0a2', '5f1844188ad86'),
(14, '5f184418b66d9', '5f184418bba3c'),
(15, '5f184418d715d', '5f184418e4620'),
(16, '5f18441957827', '5f1844196a333'),
(17, '5f8921f9ad3af', '5f8921f9d099b'),
(18, '5f8921fa29cd6', '5f8921fa3b3b9'),
(19, '5f8921fa8f826', '5f8921fa9cdf8'),
(20, '5f8921fad5f12', '5f8921fae8e1f'),
(21, '5f8921fb35fe2', '5f8921fb479e6'),
(22, '5f912c9c81c33', '5f912c9ca9651'),
(23, '5f912c9cd1eb3', '5f912c9cd7847'),
(24, '5f98674b32460', '5f98674b539f5'),
(25, '5f98674be271f', '5f98674bf2bd8');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `username`, `subject`, `feedback`, `date`, `time`) VALUES
('5b86784504039', 'pravin', 'fyvgh@vgyvy.in', 'ytiu', 'yty', '2018-08-29', '03:41:09pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(8, 'ParvezFCI', '5f892194306d7', 10, 5, 5, 0, '2020-10-16 04:33:41', 1602822745, 'finished', 'true'),
(9, 'JahidFCI', '5f892194306d7', 7, 5, 4, 1, '2020-10-16 16:40:52', 1602866399, 'finished', 'true'),
(10, 'abc', '5f892194306d7', 4, 2, 2, 0, '2020-10-18 15:14:28', 1603033767, 'finished', 'true'),
(11, 'Iftakhar', '5f892194306d7', 0, 0, 0, 0, '2020-10-19 10:52:03', 1603104421, 'finished', 'true'),
(12, 'ParvezFCI', '5f912c787c735', 1, 2, 1, 0, '2020-10-22 06:55:40', 1603349714, 'finished', 'true'),
(13, 'JahidFCI', '5f912c787c735', 2, 2, 2, 0, '2020-10-22 06:59:51', 1603349870, 'finished', 'true'),
(14, 'Iftakhar', '5f912c787c735', 2, 2, 2, 0, '2020-10-22 07:02:49', 1603350070, 'ongoing', 'false'),
(15, 'abc', '5f912c787c735', 2, 2, 2, 0, '2020-10-22 09:48:37', 1603360038, 'finished', 'true'),
(16, 'Kobir199', '5f912c787c735', 2, 2, 2, 0, '2020-10-22 10:00:21', 1603360774, 'finished', 'true'),
(17, 'ParvezFCI', '5f98672fa4624', 0, 2, 1, 1, '2020-10-27 18:31:31', 1603823458, 'finished', 'true'),
(18, 'Iftakhar', '5f98672fa4624', 0, 0, 0, 0, '2020-10-27 18:33:09', 1603823528, 'finished', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(33, '5f105a8021042', '', '5f105a802f4c9'),
(34, '5f105a8021042', '', '5f105a802f4ce'),
(35, '5f105a8021042', '', '5f105a802f4cf'),
(36, '5f105a8021042', '', '5f105a802f4d0'),
(37, '5f105a8065b8c', '', '5f105a806dad0'),
(38, '5f105a8065b8c', '', '5f105a806dad6'),
(39, '5f105a8065b8c', '', '5f105a806dad8'),
(40, '5f105a8065b8c', '', '5f105a806dad9'),
(41, '5f105a8089123', '', '5f105a8093fe0'),
(42, '5f105a8089123', '', '5f105a8093fe7'),
(43, '5f105a8089123', '', '5f105a8093fe9'),
(44, '5f105a8089123', '', '5f105a8093fea'),
(45, '5f184417db79d', 'rajshahi ', '5f1844182787d'),
(46, '5f184417db79d', 'comilla ', '5f18441827882'),
(47, '5f184417db79d', 'dhaka', '5f18441827883'),
(48, '5f184417db79d', 'chittagong', '5f18441827884'),
(49, '5f1844187e0a2', 'sapla', '5f1844188ad86'),
(50, '5f1844187e0a2', 'golap', '5f1844188ad8d'),
(51, '5f1844187e0a2', 'ghondhoraj ', '5f1844188ad91'),
(52, '5f1844187e0a2', 'siyuli', '5f1844188ad94'),
(53, '5f184418b66d9', 'tiger', '5f184418bba3c'),
(54, '5f184418b66d9', 'has ', '5f184418bba45'),
(55, '5f184418b66d9', 'goru', '5f184418bba47'),
(56, '5f184418b66d9', 'chagol', '5f184418bba48'),
(57, '5f184418d715d', 'ilish', '5f184418e4620'),
(58, '5f184418d715d', 'katla', '5f184418e4627'),
(59, '5f184418d715d', 'mrighel', '5f184418e462b'),
(60, '5f184418d715d', 'telapiya', '5f184418e462e'),
(61, '5f18441957827', 'tiya', '5f1844196a32d'),
(62, '5f18441957827', 'doyel', '5f1844196a333'),
(63, '5f18441957827', 'manki', '5f1844196a335'),
(64, '5f18441957827', 'kutta', '5f1844196a336'),
(65, '5f8921f9ad3af', '5', '5f8921f9d099b'),
(66, '5f8921f9ad3af', '4', '5f8921f9d09a0'),
(67, '5f8921f9ad3af', '3', '5f8921f9d09a1'),
(68, '5f8921f9ad3af', '1', '5f8921f9d09a2'),
(69, '5f8921fa29cd6', '4', '5f8921fa3b3b9'),
(70, '5f8921fa29cd6', '3', '5f8921fa3b3c1'),
(71, '5f8921fa29cd6', '2', '5f8921fa3b3c5'),
(72, '5f8921fa29cd6', '1', '5f8921fa3b3c8'),
(73, '5f8921fa8f826', '12', '5f8921fa9cdf8'),
(74, '5f8921fa8f826', '10', '5f8921fa9cdff'),
(75, '5f8921fa8f826', '11', '5f8921fa9ce01'),
(76, '5f8921fa8f826', '8', '5f8921fa9ce03'),
(77, '5f8921fad5f12', '8', '5f8921fae8e1f'),
(78, '5f8921fad5f12', '4', '5f8921fae8e24'),
(79, '5f8921fad5f12', '2', '5f8921fae8e26'),
(80, '5f8921fad5f12', '1', '5f8921fae8e27'),
(81, '5f8921fb35fe2', '7', '5f8921fb479e6'),
(82, '5f8921fb35fe2', '5', '5f8921fb479ec'),
(83, '5f8921fb35fe2', '3', '5f8921fb479ed'),
(84, '5f8921fb35fe2', '1', '5f8921fb479ee'),
(85, '5f912c9c81c33', 'a', '5f912c9ca9651'),
(86, '5f912c9c81c33', 'b', '5f912c9ca9656'),
(87, '5f912c9c81c33', 'c', '5f912c9ca9657'),
(88, '5f912c9c81c33', 'd', '5f912c9ca9658'),
(89, '5f912c9cd1eb3', 'd', '5f912c9cd7847'),
(90, '5f912c9cd1eb3', 'e', '5f912c9cd784c'),
(91, '5f912c9cd1eb3', 'f', '5f912c9cd784d'),
(92, '5f912c9cd1eb3', 'g', '5f912c9cd784e'),
(93, '5f98674b32460', 'a', '5f98674b539ed'),
(94, '5f98674b32460', 's', '5f98674b539f4'),
(95, '5f98674b32460', 'd', '5f98674b539f5'),
(96, '5f98674b32460', 'f', '5f98674b539f6'),
(97, '5f98674be271f', 'a', '5f98674bf2bd8'),
(98, '5f98674be271f', 's', '5f98674bf2bdd'),
(99, '5f98674be271f', 'd', '5f98674bf2bdf'),
(100, '5f98674be271f', 'f', '5f98674bf2be0');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `title` varchar(200) NOT NULL,
  `ans` text NOT NULL,
  `id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`title`, `ans`, `id`) VALUES
('parvez rohmans', 'this is details & analisis', 4),
('this is a title', 'this is a describetionss', 5);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(13, '5f15322488a37', '5f1533653719c', 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¦à§‡à¦¶à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦«à¦²à§‡à¦° à¦¨à¦¾à¦® à¦•à¦¿ à¦¨à¦¾à¦® à¦•à¦¿?', 4, 2),
(14, '5f15322488a37', '5f1533654cbee', 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¦à§‡à¦¶à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦ªà¦¾à¦–à¦¿à¦° à¦¨à¦¾à¦® à¦•à¦¿?', 4, 3),
(15, '5f15322488a37', '5f15336563e8e', 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦ªà¦¤à¦¾à¦•à¦¾à¦° à¦°à¦‚ à¦•à¦¿?', 4, 4),
(16, '5f15322488a37', '5f15336573ac5', '', 4, 5),
(17, '5f15322488a37', '5f15336588065', 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¦à§‡à¦¶à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦«à§à¦²à§‡à¦° à¦¨à¦¾à¦® à¦•à¦¿?', 4, 1),
(18, '5f15322488a37', '5f1533659bef1', 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¦à§‡à¦¶à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦«à¦²à§‡à¦° à¦¨à¦¾à¦® à¦•à¦¿ à¦¨à¦¾à¦® à¦•à¦¿?', 4, 2),
(19, '5f15322488a37', '5f153365a7be2', 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¦à§‡à¦¶à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦ªà¦¾à¦–à¦¿à¦° à¦¨à¦¾à¦® à¦•à¦¿?', 4, 3),
(20, '5f15322488a37', '5f153365b4668', 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦ªà¦¤à¦¾à¦•à¦¾à¦° à¦°à¦‚ à¦•à¦¿?', 4, 4),
(21, '5f15322488a37', '5f153365bec7d', '', 4, 5),
(22, '5f15322488a37', '5f153408e55e3', 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¦à§‡à¦¶à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦«à§à¦²à§‡à¦° à¦¨à¦¾à¦® à¦•à¦¿?', 4, 1),
(23, '5f15322488a37', '5f15340902175', 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¦à§‡à¦¶à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦«à¦²à§‡à¦° à¦¨à¦¾à¦® à¦•à¦¿ à¦¨à¦¾à¦® à¦•à¦¿?', 4, 2),
(24, '5f15322488a37', '5f153409154f9', 'à¦¬à¦¾à¦‚à¦²à¦¾ à¦¦à§‡à¦¶à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦ªà¦¾à¦–à¦¿à¦° à¦¨à¦¾à¦® à¦•à¦¿?', 4, 3),
(25, '5f15322488a37', '5f1534092a88d', 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦ªà¦¤à¦¾à¦•à¦¾à¦° à¦°à¦‚ à¦•à¦¿?', 4, 4),
(26, '5f15322488a37', '5f1534093cbf1', 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¸à§à¦¬à¦¾à¦¦à§€à¦¨ à¦¹à§Ÿ à¦•à¦Ÿ à¦¸à¦¾à¦²à§‡?', 4, 5),
(27, '5f892194306d7', '5f8921f9ad3af', 'salat koy owakto', 4, 1),
(28, '5f892194306d7', '5f8921fa29cd6', 'fojor er namaj koyrakat', 4, 2),
(29, '5f892194306d7', '5f8921fa8f826', 'johor er salat', 4, 3),
(30, '5f892194306d7', '5f8921fad5f12', 'achor', 4, 4),
(31, '5f892194306d7', '5f8921fb35fe2', 'magrib', 4, 5),
(32, '5f912c787c735', '5f912c9c81c33', 'abc', 4, 1),
(33, '5f912c787c735', '5f912c9cd1eb3', 'dcf', 4, 2),
(34, '5f98672fa4624', '5f98674b32460', 'asd', 4, 1),
(35, '5f98672fa4624', '5f98674be271f', 'asdfg', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(9, '5f892194306d7', 'Salah', 2, 1, 5, 5, '2020-10-16 04:32:07', 'enabled'),
(10, '5f912c787c735', 'Parvez Rohman', 1, 1, 2, 2, '2020-10-22 06:55:01', 'enabled'),
(11, '5f98672fa4624', 'Asdf', 1, 1, 2, 1, '2020-10-27 18:30:39', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(3, 'Jahid', 2, '2020-07-15 12:12:47'),
(5, 'Munna', 10, '2020-07-17 08:30:39'),
(8, 'Kobir199', 6, '2020-10-22 10:00:21'),
(10, 'ParvezFCI', 11, '2020-10-27 18:31:31'),
(11, 'JahidFCI', 9, '2020-10-22 06:59:51'),
(12, 'abc', 6, '2020-10-22 09:48:38'),
(13, 'Iftakhar', 0, '2020-10-27 18:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `phno`, `address`, `password`) VALUES
(25, 'Laptop', 'def@gmail.com', 'abc', 876876567, 'adjshlkj', 'a152e841783914146e4bcd4f39100686'),
(23, 'Parvez Rohman', 'parvezrohmanfci@gmail.com', 'Iftakhar', 9709868, 'adjshlkj', 'a152e841783914146e4bcd4f39100686'),
(22, 'Jahid Bhuyan', 'aasdf@gmail.com', 'JahidFCI', 8768746435, 'Feni', 'a152e841783914146e4bcd4f39100686'),
(21, 'English ', 'samim@gmail.com', 'Kobir199', 4654655, 'matiranga', 'a152e841783914146e4bcd4f39100686'),
(18, 'Laptop', 'Munna@gmail.com', 'ParvezFCI', 76546546, 'matiranga', 'a152e841783914146e4bcd4f39100686');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(1, '58027e82e62e3', '58027e82f2412', '58027e82f2412', '5802790f793b1', 'sonudoo'),
(2, '58027e833dd54', '58027e8347514', '58027e8347514', '5802790f793b1', 'sonudoo'),
(3, '58027e8371483', '58027e838f19a', '58027e838f19a', '5802790f793b1', 'sonudoo'),
(4, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'pravin'),
(5, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'pravin'),
(6, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'pravin'),
(7, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'pravin'),
(8, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'pravin'),
(9, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'mugunth'),
(10, '5b85857d333f0', '5b85857d391b2', '5b85857d391b2', '5b85847bbe794', 'mugunth'),
(11, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'mugunth'),
(12, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'mugunth'),
(13, '5b85857db810f', '5b85857dbded1', '5b85857dbd701', '5b85847bbe794', 'mugunth'),
(14, '5b85857d00f34', '5b85857d0b72f', '5b85857d0ab77', '5b85847bbe794', 'Jahid'),
(15, '5b85857d333f0', '5b85857d391b2', '5b85857d391b2', '5b85847bbe794', 'Jahid'),
(16, '5b85857d00f34', '5b85857d0b72f', '5b85857d0ab77', '5b85847bbe794', 'Iftakhar'),
(17, '5b85857d333f0', '5b85857d391b2', '5b85857d391b2', '5b85847bbe794', 'Iftakhar'),
(18, '5f184417db79d', '5f18441827883', '5f18441827883', '5f18436c93c9e', 'ABUL'),
(19, '5f1844187e0a2', '5f1844188ad86', '5f1844188ad86', '5f18436c93c9e', 'ABUL'),
(20, '5f184418b66d9', '5f184418bba3c', '5f184418bba3c', '5f18436c93c9e', 'ABUL'),
(21, '5f184418d715d', '5f184418e4620', '5f184418e4620', '5f18436c93c9e', 'ABUL'),
(22, '5f18441957827', '5f1844196a333', '5f1844196a333', '5f18436c93c9e', 'ABUL'),
(23, '5f184417db79d', '5f1844182787d', '5f18441827883', '5f18436c93c9e', 'Kader'),
(24, '5f1844187e0a2', '5f1844188ad8d', '5f1844188ad86', '5f18436c93c9e', 'Kader'),
(25, '5f184418b66d9', '5f184418bba3c', '5f184418bba3c', '5f18436c93c9e', 'Kader'),
(26, '5f184418d715d', '5f184418e4620', '5f184418e4620', '5f18436c93c9e', 'Kader'),
(27, '5f18441957827', '5f1844196a333', '5f1844196a333', '5f18436c93c9e', 'Kader'),
(28, '5f184417db79d', '5f1844182787d', '5f18441827883', '5f18436c93c9e', 'Kobir199'),
(29, '5f1844187e0a2', '5f1844188ad8d', '5f1844188ad86', '5f18436c93c9e', 'Kobir199'),
(30, '5f184418b66d9', '5f184418bba3c', '5f184418bba3c', '5f18436c93c9e', 'Kobir199'),
(31, '5f184418d715d', '5f184418e4620', '5f184418e4620', '5f18436c93c9e', 'Kobir199'),
(32, '5f18441957827', '5f1844196a333', '5f1844196a333', '5f18436c93c9e', 'Kobir199'),
(33, '5f8921f9ad3af', '5f8921f9d099b', '5f8921f9d099b', '5f892194306d7', 'ParvezFCI'),
(34, '5f8921fa29cd6', '5f8921fa3b3b9', '5f8921fa3b3b9', '5f892194306d7', 'ParvezFCI'),
(35, '5f8921fa8f826', '5f8921fa9cdf8', '5f8921fa9cdf8', '5f892194306d7', 'ParvezFCI'),
(36, '5f8921fad5f12', '5f8921fae8e1f', '5f8921fae8e1f', '5f892194306d7', 'ParvezFCI'),
(37, '5f8921fb35fe2', '5f8921fb479e6', '5f8921fb479e6', '5f892194306d7', 'ParvezFCI'),
(38, '5f8921f9ad3af', '5f8921f9d099b', '5f8921f9d099b', '5f892194306d7', 'JahidFCI'),
(39, '5f8921fa29cd6', '5f8921fa3b3c1', '5f8921fa3b3b9', '5f892194306d7', 'JahidFCI'),
(40, '5f8921fa8f826', '5f8921fa9cdf8', '5f8921fa9cdf8', '5f892194306d7', 'JahidFCI'),
(41, '5f8921fad5f12', '5f8921fae8e1f', '5f8921fae8e1f', '5f892194306d7', 'JahidFCI'),
(42, '5f8921fb35fe2', '5f8921fb479e6', '5f8921fb479e6', '5f892194306d7', 'JahidFCI'),
(43, '5f8921f9ad3af', '5f8921f9d099b', '5f8921f9d099b', '5f892194306d7', 'abc'),
(44, '5f8921fa29cd6', '5f8921fa3b3b9', '5f8921fa3b3b9', '5f892194306d7', 'abc'),
(45, '5f912c9cd1eb3', '5f912c9cd7847', '5f912c9cd7847', '5f912c787c735', 'ParvezFCI'),
(46, '5f912c9c81c33', '5f912c9ca9651', '5f912c9ca9651', '5f912c787c735', 'JahidFCI'),
(47, '5f912c9cd1eb3', '5f912c9cd7847', '5f912c9cd7847', '5f912c787c735', 'JahidFCI'),
(48, '5f912c9c81c33', '5f912c9ca9651', '5f912c9ca9651', '5f912c787c735', 'Iftakhar'),
(49, '5f912c9cd1eb3', '5f912c9cd7847', '5f912c9cd7847', '5f912c787c735', 'Iftakhar'),
(50, '5f912c9c81c33', '5f912c9ca9651', '5f912c9ca9651', '5f912c787c735', 'abc'),
(51, '5f912c9cd1eb3', '5f912c9cd7847', '5f912c9cd7847', '5f912c787c735', 'abc'),
(52, '5f912c9c81c33', '5f912c9ca9651', '5f912c9ca9651', '5f912c787c735', 'Kobir199'),
(53, '5f912c9cd1eb3', '5f912c9cd7847', '5f912c9cd7847', '5f912c787c735', 'Kobir199'),
(54, '5f98674b32460', '5f98674b539ed', '5f98674b539f5', '5f98672fa4624', 'ParvezFCI'),
(55, '5f98674be271f', '5f98674bf2bd8', '5f98674bf2bd8', '5f98672fa4624', 'ParvezFCI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
