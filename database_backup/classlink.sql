-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2019 at 11:14 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classlink`
--

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `community_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` varchar(256) NOT NULL,
  `image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `message` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','P') NOT NULL DEFAULT 'P'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `name`, `email`, `subject`, `school_name`, `message`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Aaad', 'text@gmail.com', 'IT', '', 'asghgh', '2019-02-06 13:13:59', '2019-02-21 06:21:12', 'Y'),
(2, 'ghj', 'test@gmail.com', 'photography', '', 'dghjgdghdg', '2019-02-16 18:55:51', '2019-02-21 06:08:33', 'Y'),
(3, 'ghj', 'test@gmail.com', 'photography', '', 'dghjgdghdg', '2019-02-16 18:55:57', '2019-02-22 06:15:17', 'Y'),
(4, 'Ankit Kanaujiya', 'vijay@gmail.com', 'photography', 'sfghsf', 'gfshgfhhf', '2019-02-16 18:58:04', '2019-02-21 06:09:59', 'Y'),
(5, 'azadsdf', 'adfa@gfg.com', 'ghsfgh', 'gfshsfghsgff', 'sgfhgfshsfg', '2019-02-18 19:26:14', '2019-02-21 06:19:49', 'Y'),
(6, 'Ankit', 'test@gmail.com', 'theme ', 'sfghsf', '\r\nkfy', '2019-02-19 00:07:15', '2019-02-21 05:59:58', 'Y'),
(7, '', '', '', '', ',];.', '2019-02-19 00:08:21', '2019-02-21 06:09:11', 'Y'),
(8, 'qqqqqqqqq', 'q@sss.com', 'wwwwwwwww', 'rrrrrrrr', 'asdfghjkl', '2019-02-21 06:24:54', '2019-02-21 06:26:13', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `declaration`
--

CREATE TABLE `declaration` (
  `declaration_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` varchar(128) NOT NULL,
  `time` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','A','P') NOT NULL DEFAULT 'P'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `declaration_communication`
--

CREATE TABLE `declaration_communication` (
  `communication_id` int(11) NOT NULL,
  `declaration_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `comment` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` varchar(256) NOT NULL,
  `image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

CREATE TABLE `friend` (
  `friend_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','P') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend`
--

INSERT INTO `friend` (`friend_id`, `sender_id`, `receiver_id`, `created_at`, `updated_id`, `status`) VALUES
(1, 1, 1, '2019-03-06 04:34:22', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `letter`
--

CREATE TABLE `letter` (
  `letter_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `date` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `user_id` int(11) NOT NULL,
  `collage_id` varchar(100) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_email` varchar(64) NOT NULL,
  `user_course` varchar(100) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_image` text NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `user_key` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `collage_id`, `user_name`, `user_email`, `user_course`, `user_password`, `user_image`, `user_role_id`, `user_key`, `created_at`, `updated_at`, `status`) VALUES
(1, '28', 'shani tiwari', 'tiwarishani01@gmail.com', '6.jpg', '1234', '', 1, '23213', '2019-01-23 10:22:31', '2019-03-29 01:15:07', 'Y'),
(2, '', '', '', '', '', '', 0, '', '2019-02-19 00:36:49', '0000-00-00 00:00:00', 'Y'),
(3, '28', 'Nisha', 'Niash@gfg.com', 'MBA', 'asdadsads', 'avatar1.jpg', 0, '', '2019-02-21 05:51:33', '2019-03-04 02:17:58', 'Y'),
(4, '29', 'azadsdf', 'adfa@gfg.com', 'MBA', '', 'avatar4.jpg', 0, '', '2019-02-21 06:02:27', '2019-03-06 02:50:07', 'Y'),
(5, '30', 'azad', 'ad@gfg.com', 'MBA', 'asdfgdg', 'avatar2.jpg', 0, '', '2019-02-21 06:02:30', '2019-03-04 02:18:08', 'Y'),
(6, '31', 'ghj', 'test@gmail.com', 'M.Sci', 'sgfhsgh', 'avatar3.jpg', 0, '', '2019-02-21 06:02:42', '2019-03-04 01:35:05', 'Y'),
(7, '88', 'jfjghv', 'teskhgvfvt@gmail.com', 'MBA', 'hgfyhfcytfc', 'avatar4.jpg', 0, '', '2019-02-21 06:02:58', '2019-03-06 02:51:01', 'Y'),
(8, '33', 'ghj', 'test@gmail.com', 'MBA', '', 'avatar2.jpg', 0, '', '2019-02-21 06:08:33', '2019-03-06 02:51:49', 'Y'),
(9, '34', '', '', '', '', '', 0, '', '2019-02-21 06:09:11', '0000-00-00 00:00:00', 'Y'),
(10, '35gshhg', 'Ankshgss', 'vijaysfgh@gmail.com', 'MBA', 'adsasd', 'avatar4.jpg', 0, '', '2019-02-21 06:09:59', '2019-03-04 02:18:44', 'Y'),
(11, '36', 'ghj', 'test@gmail.com', '', '', '', 0, '', '2019-02-21 06:11:24', '0000-00-00 00:00:00', 'Y'),
(12, '37', 'shiv', 'test@gmail.com', 'MBA', 'adsadfds', 'avatar5.jpg', 0, '', '2019-02-21 06:12:32', '2019-03-04 02:18:54', 'Y'),
(13, '38', 'ghj', 'test@gmail.com', 'MBA', '1452364521', 'avatar6.jpg', 0, '', '2019-02-21 06:15:23', '2019-03-04 02:19:01', 'Y'),
(14, '39', 'vijay', 'vijayemail@gmail.com', 'MBA', 'avsdggf', 'avatar3.jpg', 0, '', '2019-02-21 06:15:47', '2019-03-06 02:52:07', 'Y'),
(15, '40', 'ghj', 'test@gmail.com', 'MBA', 'asdfhjfbsadkfbsd', 'avatar5.jpg', 0, '', '2019-02-21 06:17:08', '2019-03-06 02:52:16', 'Y'),
(16, '41', 'ghj', 'test@gmail.com', 'MBA', 'asdfsdsd', 'avatar6.jpg', 0, '', '2019-02-21 06:17:09', '2019-03-06 02:52:23', 'Y'),
(17, '42', 'ghj', 'test@gmail.com', '', '', '', 0, '', '2019-02-21 06:17:10', '0000-00-00 00:00:00', 'Y'),
(18, '43', 'ghj', 'test@gmail.com', '', '', '', 0, '', '2019-02-21 06:17:10', '0000-00-00 00:00:00', 'Y'),
(19, '44', 'azadsdf', 'adfa@gfg.com', '', '', '', 0, '', '2019-02-21 06:19:49', '0000-00-00 00:00:00', 'Y'),
(20, '45', 'Aaad', 'azzadt@gmail.com', 'M.Sci', 'azzad', 'avatar4.jpg', 0, '', '2019-02-21 06:21:12', '2019-03-06 02:49:25', 'Y'),
(21, '46', 'qqqqqqqqq', 'q@sss.com', '', '', '', 0, '', '2019-02-21 06:26:13', '0000-00-00 00:00:00', 'Y'),
(22, '47', 'ghj', 'test@gmail.com', 'MBA', 'asdfdsfsda', 'avatar4.jpg', 0, '', '2019-02-22 06:13:59', '2019-03-06 05:02:13', 'Y'),
(23, '48', 'ghj', 'test@gmail.com', 'MBA', 'gadsg', 'Snapchat-286089111.jpg', 0, '', '2019-02-22 06:15:12', '2019-03-17 06:00:28', 'Y'),
(24, '49', 'ghj', 'test@gmail.com', '', '', '', 0, '', '2019-02-22 06:15:17', '0000-00-00 00:00:00', 'Y'),
(25, '50', 'ghj', 'test@gmail.com', 'MBA', 'khfgfddgjh', 'avatar5.jpg', 2, '', '2019-02-22 06:15:25', '2010-03-19 00:05:07', 'Y'),
(26, '51', '', '', '', '', '', 0, '', '2019-02-23 00:27:35', '0000-00-00 00:00:00', 'Y'),
(27, '', 'asrfga', 'adga@sgh.cssad', 'dgsgdf', '', '', 0, '', '2010-03-19 00:06:07', '0000-00-00 00:00:00', 'Y'),
(28, '', '$name', '$email', '$course', '', '', 2, '', '2010-03-19 00:13:51', '0000-00-00 00:00:00', 'Y'),
(29, '', 'sgsdffd', 'test@gmail.com', 'agfaadfgadfgfdrg', '', '', 2, '', '2010-03-19 00:14:55', '0000-00-00 00:00:00', 'Y'),
(30, '28', 'sgsdffd', 'test@gmail.com', 'agfaadfgadfgfdrg', '', '', 2, '', '2010-03-19 00:22:43', '0000-00-00 00:00:00', 'Y'),
(31, '28', 'sgsdffd', 'test@gmail.com', 'agfaadfgadfgfdrg', '', '', 2, '', '2010-03-19 00:23:10', '0000-00-00 00:00:00', 'Y'),
(32, 'Array', 'Ankit', 'tiwarishani01@gmail.com', 'adfga', '', '', 2, '', '2010-03-19 02:54:26', '0000-00-00 00:00:00', 'Y'),
(33, 'Array', 'vijay', 'ad@gfg.com', 'ADSFADSF', '', '', 3, '', '2010-03-19 03:07:46', '0000-00-00 00:00:00', 'Y'),
(34, 'Array', 'vijayGHFK', 'aYTHFKd@gfg.com', 'ADhgfkjSFADSF', '', '', 3, '', '2010-03-19 03:08:42', '0000-00-00 00:00:00', 'Y'),
(35, 'Array', '', '', '', '', '', 3, '', '2010-03-19 09:26:31', '0000-00-00 00:00:00', 'Y'),
(36, 'Array', 'Ankit Kanaujiya', 'tiwarishani01@gmail.com', 'agfaadfgadfgfdrg', '', '', 3, '', '2010-03-19 09:26:49', '0000-00-00 00:00:00', 'Y'),
(37, 'Array', 'Ankit Kanaujiya', 'test@gmail.com', 'ADhgfkjSFADSF', '', '', 3, '', '2019-03-23 15:09:13', '0000-00-00 00:00:00', 'Y'),
(38, 'Array', 'Ankit Kanaujiya', 'test@gmail.com', 'agfaadfgadfgfdrg', '', '', 2, '', '2019-03-23 15:14:38', '0000-00-00 00:00:00', 'Y'),
(39, 'Array', 'Ankit Kanaujiya', 'kanaujiya1999@gmail.com', 'agfaadfgadfgfdrg', '', '', 3, '', '2019-03-23 15:15:10', '0000-00-00 00:00:00', 'Y'),
(40, '28', 'Ankit Kanaujiya', 'tiwarishani01@gmail.com', 'agfaadfgadfgfdrg', '', '', 3, '', '2019-03-29 08:34:50', '0000-00-00 00:00:00', 'Y'),
(41, '28', 'Ankit Kanaujiya', 'tiwarishani01@gmail.com', 'agfaadfgadfgfdrg', '', '', 3, '', '2019-03-29 08:36:40', '0000-00-00 00:00:00', 'Y'),
(42, '28', 'vijay', 'vijay@gmail.com', 'ADhgfkjSFADSF', '', '', 2, '', '2019-03-29 08:37:37', '0000-00-00 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `m_user_college`
--

CREATE TABLE `m_user_college` (
  `college_id` int(11) NOT NULL,
  `college_name` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_user_college`
--

INSERT INTO `m_user_college` (`college_id`, `college_name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Array', '2019-02-20 20:57:46', '0000-00-00 00:00:00', 'Y'),
(2, 'Array', '2019-02-20 20:57:47', '0000-00-00 00:00:00', 'Y'),
(3, 'sfghsf', '2019-02-21 04:48:54', '0000-00-00 00:00:00', 'Y'),
(4, 'sfghsf', '2019-02-21 04:57:17', '0000-00-00 00:00:00', 'Y'),
(5, 'sfghsf', '2019-02-21 05:01:07', '0000-00-00 00:00:00', 'Y'),
(6, 'sfghsf', '2019-02-21 05:01:08', '0000-00-00 00:00:00', 'Y'),
(7, 'sfghsf', '2019-02-21 05:01:08', '0000-00-00 00:00:00', 'Y'),
(8, 'sfghsf', '2019-02-21 05:01:09', '0000-00-00 00:00:00', 'Y'),
(9, 'sfghsf', '2019-02-21 05:01:09', '0000-00-00 00:00:00', 'Y'),
(10, 'sfghsf', '2019-02-21 05:01:09', '0000-00-00 00:00:00', 'Y'),
(11, 'sfghsf', '2019-02-21 05:01:10', '0000-00-00 00:00:00', 'Y'),
(12, '', '2019-02-21 05:01:18', '0000-00-00 00:00:00', 'Y'),
(13, '', '2019-02-21 05:05:46', '0000-00-00 00:00:00', 'Y'),
(14, '', '2019-02-21 05:05:47', '0000-00-00 00:00:00', 'Y'),
(15, '', '2019-02-21 05:05:47', '0000-00-00 00:00:00', 'Y'),
(16, '', '2019-02-21 05:06:43', '0000-00-00 00:00:00', 'Y'),
(17, '', '2019-02-21 05:09:51', '0000-00-00 00:00:00', 'Y'),
(18, '', '2019-02-21 05:09:52', '0000-00-00 00:00:00', 'Y'),
(19, '', '2019-02-21 05:09:52', '0000-00-00 00:00:00', 'Y'),
(20, '', '2019-02-21 05:09:52', '0000-00-00 00:00:00', 'Y'),
(21, '', '2019-02-21 05:09:53', '0000-00-00 00:00:00', 'Y'),
(22, '', '2019-02-21 05:09:53', '0000-00-00 00:00:00', 'Y'),
(23, 'gfshsfghsgff', '2019-02-21 05:10:05', '0000-00-00 00:00:00', 'Y'),
(24, 'gfshsfghsgff', '2019-02-21 05:10:20', '0000-00-00 00:00:00', 'Y'),
(25, 'gfshsfghsgff', '2019-02-21 05:10:21', '0000-00-00 00:00:00', 'Y'),
(26, 'gfshsfghsgff', '2019-02-21 05:14:45', '0000-00-00 00:00:00', 'Y'),
(27, 'gfshsfghsgff', '2019-02-21 05:46:49', '0000-00-00 00:00:00', 'Y'),
(28, 'gfshsfghsgff', '2019-02-21 05:51:33', '0000-00-00 00:00:00', 'Y'),
(29, 'gfshsfghsgff', '2019-02-21 06:02:27', '0000-00-00 00:00:00', 'Y'),
(30, 'gfshsfghsgff', '2019-02-21 06:02:30', '0000-00-00 00:00:00', 'Y'),
(31, '', '2019-02-21 06:02:42', '0000-00-00 00:00:00', 'Y'),
(32, '', '2019-02-21 06:02:58', '0000-00-00 00:00:00', 'Y'),
(33, '', '2019-02-21 06:08:33', '0000-00-00 00:00:00', 'Y'),
(34, '', '2019-02-21 06:09:11', '0000-00-00 00:00:00', 'Y'),
(35, 'sfghsf', '2019-02-21 06:09:59', '0000-00-00 00:00:00', 'Y'),
(36, '', '2019-02-21 06:11:24', '0000-00-00 00:00:00', 'Y'),
(37, '', '2019-02-21 06:12:32', '0000-00-00 00:00:00', 'Y'),
(38, '', '2019-02-21 06:15:23', '0000-00-00 00:00:00', 'Y'),
(39, '', '2019-02-21 06:15:47', '0000-00-00 00:00:00', 'Y'),
(40, '', '2019-02-21 06:17:08', '0000-00-00 00:00:00', 'Y'),
(41, '', '2019-02-21 06:17:09', '0000-00-00 00:00:00', 'Y'),
(42, '', '2019-02-21 06:17:10', '0000-00-00 00:00:00', 'Y'),
(43, '', '2019-02-21 06:17:10', '0000-00-00 00:00:00', 'Y'),
(44, 'gfshsfghsgff', '2019-02-21 06:19:49', '0000-00-00 00:00:00', 'Y'),
(45, '', '2019-02-21 06:21:12', '0000-00-00 00:00:00', 'Y'),
(46, 'rrrrrrrr', '2019-02-21 06:26:13', '0000-00-00 00:00:00', 'Y'),
(47, '', '2019-02-22 06:13:58', '0000-00-00 00:00:00', 'Y'),
(48, '', '2019-02-22 06:15:12', '0000-00-00 00:00:00', 'Y'),
(49, '', '2019-02-22 06:15:17', '0000-00-00 00:00:00', 'Y'),
(50, '', '2019-02-22 06:15:25', '0000-00-00 00:00:00', 'Y'),
(51, '', '2019-02-23 00:27:35', '0000-00-00 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `m_user_detail`
--

CREATE TABLE `m_user_detail` (
  `user_detail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_pic` varchar(64) NOT NULL,
  `user_course_id` int(11) NOT NULL,
  `user_div_id` int(11) NOT NULL,
  `user_roll_id` int(11) NOT NULL,
  `user_contact` varchar(12) NOT NULL,
  `user_gender` enum('Male','Female','Other') NOT NULL,
  `user_address` varchar(128) NOT NULL,
  `user-dob` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_user_div`
--

CREATE TABLE `m_user_div` (
  `div_id` int(11) NOT NULL,
  `div_name` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_user_role`
--

CREATE TABLE `m_user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_user_standard`
--

CREATE TABLE `m_user_standard` (
  `standard_id` int(11) NOT NULL,
  `standard_name` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` varchar(128) NOT NULL,
  `sender_user_id` int(11) NOT NULL,
  `receiver_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','P') NOT NULL DEFAULT 'P'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `discription` varchar(300) NOT NULL,
  `image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','P') NOT NULL DEFAULT 'P'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `title`, `discription`, `image`, `created_at`, `updated_at`, `status`) VALUES
(12, 1, 'inazuma', 'inamsgfdsgdfg', '3.jpg', '2019-03-28 03:59:32', '2019-03-28 07:20:03', 'Y'),
(13, 1, 'anime', 'inamsgfdsgdfg', '5.jpg', '2019-03-28 04:19:44', '2019-03-28 07:20:22', 'Y'),
(14, 1, 'anime', 'inamsgfdsgdfg', '6.jpg', '2019-03-28 06:20:55', '2019-03-28 07:20:43', 'Y'),
(15, 1, 'afsdadsa', 'adfsa', '4.jpg', '2019-03-28 06:40:07', '2019-03-28 07:18:13', 'Y'),
(16, 1, 'The Most Advance Business Plan', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '2.jpg', '2019-03-28 06:43:06', '2019-03-28 07:18:16', 'Y'),
(17, 1, 'dfgasdfh', 'adfggggggggggggggggggggggggg', '', '2019-03-28 22:39:50', '2019-03-28 23:42:05', 'Y'),
(18, 1, 'movie', 'dfagdafgdfgfdgfgds', '7.jpg', '2019-03-28 23:38:54', '0000-00-00 00:00:00', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `post_comment`
--

CREATE TABLE `post_comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_comment`
--

INSERT INTO `post_comment` (`comment_id`, `post_id`, `user_id`, `comment`, `created_at`, `update_at`, `status`) VALUES
(1, 12, 1, 'lfjjhgjhgvjhgvjgjgjgjg', '2019-03-28 12:13:57', '0000-00-00 00:00:00', 'Y'),
(2, 12, 1, 'lfjjhgjhgvjhgvjgjgjgjg', '2019-03-28 12:14:29', '0000-00-00 00:00:00', 'Y'),
(3, 0, 1, '', '2019-03-28 12:15:28', '0000-00-00 00:00:00', 'Y'),
(4, 12, 1, 'good thought     is it', '2019-03-28 12:16:34', '0000-00-00 00:00:00', 'Y'),
(5, 12, 1, 'good thought     is itadfg', '2019-03-28 12:18:03', '0000-00-00 00:00:00', 'Y'),
(6, 12, 1, 'good thought     is itadfg', '2019-03-28 12:25:22', '0000-00-00 00:00:00', 'Y'),
(7, 12, 1, 'good thought    ', '2019-03-28 12:26:19', '0000-00-00 00:00:00', 'Y'),
(8, 16, 1, 'lojahbsdgflabgab a;kba', '2019-03-28 23:44:27', '0000-00-00 00:00:00', 'Y'),
(9, 16, 1, 'lojahbsdgflabgab adsag;kba', '2019-03-28 23:46:42', '0000-00-00 00:00:00', 'Y'),
(10, 16, 1, 'lojahbsdghfkhvchvflabgab adsag;kba', '2019-03-28 23:47:49', '0000-00-00 00:00:00', 'Y'),
(11, 14, 1, 'good night.', '2019-03-28 23:50:07', '0000-00-00 00:00:00', 'Y'),
(12, 14, 1, 'good night.', '2019-03-28 23:51:55', '0000-00-00 00:00:00', 'Y'),
(13, 14, 1, 'adf', '2019-03-28 23:53:56', '0000-00-00 00:00:00', 'Y'),
(14, 14, 1, 'adhfgadfghhga', '2019-03-28 23:54:10', '0000-00-00 00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `post_like`
--

CREATE TABLE `post_like` (
  `like_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `result_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` varchar(128) NOT NULL,
  `result_image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `sms_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `comment` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `suggestion_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('A','D','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` varchar(128) NOT NULL,
  `image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_course`
--

CREATE TABLE `user_course` (
  `course_id` int(25) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_discription` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_course`
--

INSERT INTO `user_course` (`course_id`, `course_name`, `course_discription`, `created_at`, `updated_at`, `status`) VALUES
(3, 'vishatr', 'sghfssghfhfg\r\nfgsgfhfh', '2019-02-08 22:58:13', '2019-02-21 03:48:39', ''),
(5, 'atoz', 'ztoa', '2019-02-20 15:10:27', '2019-02-21 03:47:01', 'Y'),
(7, 'zzzzzzzzzzzz', 'yyyyyyyyyyy', '2019-02-20 15:12:12', '2019-02-21 03:39:33', 'Y'),
(11, 'docter', 'dfgdsagdfgdsfgdfgfdsdsffg\r\ndfsgsdfgfdsgsdfdfgdfg', '2019-02-20 15:36:47', '0000-00-00 00:00:00', 'Y'),
(12, 'adfgdagfd', 'sfghfhhsfggfsfgtgssssssssssssssssss', '2019-02-20 15:37:55', '0000-00-00 00:00:00', 'Y'),
(13, 'adfgdagfd', 'srthswrt', '2019-02-20 19:28:49', '0000-00-00 00:00:00', 'Y'),
(14, 'qqqqqqqqqqqqq', 'wwwwwwwwwwwww', '2019-02-21 03:49:09', '0000-00-00 00:00:00', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`community_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `declaration`
--
ALTER TABLE `declaration`
  ADD PRIMARY KEY (`declaration_id`);

--
-- Indexes for table `declaration_communication`
--
ALTER TABLE `declaration_communication`
  ADD PRIMARY KEY (`communication_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`friend_id`);

--
-- Indexes for table `letter`
--
ALTER TABLE `letter`
  ADD PRIMARY KEY (`letter_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `m_user_college`
--
ALTER TABLE `m_user_college`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `m_user_detail`
--
ALTER TABLE `m_user_detail`
  ADD PRIMARY KEY (`user_detail_id`);

--
-- Indexes for table `m_user_div`
--
ALTER TABLE `m_user_div`
  ADD PRIMARY KEY (`div_id`);

--
-- Indexes for table `m_user_role`
--
ALTER TABLE `m_user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `m_user_standard`
--
ALTER TABLE `m_user_standard`
  ADD PRIMARY KEY (`standard_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`sms_id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`suggestion_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`timetable_id`);

--
-- Indexes for table `user_course`
--
ALTER TABLE `user_course`
  ADD PRIMARY KEY (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `community_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `declaration`
--
ALTER TABLE `declaration`
  MODIFY `declaration_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `declaration_communication`
--
ALTER TABLE `declaration_communication`
  MODIFY `communication_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friend`
--
ALTER TABLE `friend`
  MODIFY `friend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `letter`
--
ALTER TABLE `letter`
  MODIFY `letter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `m_user_college`
--
ALTER TABLE `m_user_college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `m_user_detail`
--
ALTER TABLE `m_user_detail`
  MODIFY `user_detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_user_div`
--
ALTER TABLE `m_user_div`
  MODIFY `div_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_user_role`
--
ALTER TABLE `m_user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_user_standard`
--
ALTER TABLE `m_user_standard`
  MODIFY `standard_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `post_comment`
--
ALTER TABLE `post_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `post_like`
--
ALTER TABLE `post_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `sms_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `suggestion_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `timetable_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_course`
--
ALTER TABLE `user_course`
  MODIFY `course_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
