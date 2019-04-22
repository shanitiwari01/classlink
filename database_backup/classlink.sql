-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 12:30 AM
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
  `description` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`community_id`, `user_id`, `title`, `description`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'NNS swachh bharat', 'Swachh bharat abhiyan in collage compase', '-655395074Swachh Bharat Mission 001 (1).jpg', '2019-04-22 19:59:22', '0000-00-00 00:00:00', 'Y'),
(2, 1, 'Holiday ', 'Holiday notice due to raksha bandhan', 'A1.jpg', '2019-04-22 20:01:14', '0000-00-00 00:00:00', 'Y'),
(3, 1, 'exam timetable ', 'All the courses or degree student in inform that exam date is ', 'bd2f1f87-871f-4b5e-8db3-7aea375d99be.jpg', '2019-04-22 20:04:08', '0000-00-00 00:00:00', 'Y'),
(4, 1, 'date of reopaning of collage', 'date of reopaning of collage ', 'Notice02.01.2013.jpg', '2019-04-22 20:07:50', '0000-00-00 00:00:00', 'Y');

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
(1, 'Ankit Kanaujiya', 'kanaujiya1999@gmail.com', 'B.SCI.IT', 'Sankar Narayan Collage', 'Please click on blow link and signup and enjoy the \r\nall feature of classlink', '2011-04-22 09:28:57', '2019-04-22 14:14:43', 'Y'),
(2, 'Ankit Kanaujiya', 'kanaujiya1999@gmail.com', 'B.SCI.IT', 'Sankar Narayan Collage', 'click on link and signup', '2019-04-22 14:34:36', '2019-04-22 14:34:50', 'Y'),
(3, 'shani ', 'tiwarishani01@gmail.com', 'B.SCI.IT', 'Sankar Narayan Collage', 'signup on class link', '2019-04-22 14:57:19', '2019-04-22 14:57:26', 'Y'),
(4, 'shani ', 'tiwarishani01@gmail.com', 'B.SCI.IT', 'Sankar Narayan Collage', 'signup class link', '2019-04-22 15:02:33', '0000-00-00 00:00:00', 'P');

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
  `description` text NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `user_id`, `title`, `description`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 0, 'cultural Events', 'where all student are together participate in these events', 'event.jpg', '2019-04-22 20:45:36', '0000-00-00 00:00:00', 'Y'),
(2, 0, 'cultural Events', 'where all student part in group dance comptition', '17103465_1017900375008997_1054949394600658674_n-2017030922.jpg', '2019-04-22 20:47:02', '0000-00-00 00:00:00', 'Y'),
(3, 0, 'udaan', 'it is the spacial festival in all collage can particepate and compete with othe collages.', 'img_2eb58da8bc1125ec82cff0684b789aef_1518352014138_original.jpg', '2019-04-22 20:51:02', '0000-00-00 00:00:00', 'Y'),
(4, 0, 'Painting Events', 'Udaan-DLLE ANNUAL FEST. Mumbai University under its Department of Life Long Learning and Extension (DLLE) organised its annual extension festival UDAAN- the flight of extension on 19th January 2018. 18 DLLE students from MVM Degree College participated in UDAAN at S. M.', '286209_10150343545077425_715557424_9446393_1851735_o.jpg', '2019-04-22 20:54:48', '0000-00-00 00:00:00', 'Y'),
(5, 0, 'inter collage rangoli events', 'inter collage Rangoli Competition.', 'download.jpg', '2019-04-22 20:58:03', '0000-00-00 00:00:00', 'Y');

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

-- --------------------------------------------------------

--
-- Table structure for table `letter`
--

CREATE TABLE `letter` (
  `letter_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `letter`
--

INSERT INTO `letter` (`letter_id`, `user_id`, `subject`, `description`, `date`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 'Leave of Absence for Personal Reasons', 'I would like to request a two month leave of absence for personal reasons. If possible, I would like the leave from work to begin on August 1, with a return date of October 1, 2018.\r\n\r\nIf approved, I will be staying with family in Anycity during this time period and I would be glad to assist with any questions via email or phone whenever possible.\r\n\r\nThank you very much for your consideration.', '2018-05-01', '2019-04-22 21:36:58', '0000-00-00 00:00:00', 'N'),
(2, 2, ' Leave application', 'I am Peter Francis doing MA (Psychology) final year from your college bearing roll number 564321. I am very sorry to inform you that my grandfather passed away last night due to heart attack. We need to take the dead body for the funeral and the presence of all the family members is a must. Post that, we have to do lot of rituals for the peace of his soul.\r\n\r\nI hope you will sympathize with me at this point of time and grant me leaves for two weeks starting from 5th September to 19th September. I assure you, after joining back I will study harder to get good marks in my final year examination and will come in the list of toppers.\r\n\r\n \r\n\r\nThanking you,', '2017-04-05', '2019-04-22 21:44:21', '0000-00-00 00:00:00', 'N');

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
  `user_contact` varchar(20) NOT NULL DEFAULT '',
  `user_gender` varchar(50) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_dob` varchar(50) NOT NULL,
  `user_image` text NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `user_key` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `mail` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `collage_id`, `user_name`, `user_email`, `user_course`, `user_password`, `user_contact`, `user_gender`, `user_address`, `user_dob`, `user_image`, `user_role_id`, `user_key`, `created_at`, `updated_at`, `status`, `mail`) VALUES
(1, '', 'shani tiwari', 'tiwarishani01@gmail.com', '2', '1234', '9137157524', 'Male', '402/D,Mira Road,Bhayandar(East)', '24/05/1999', 'avatar7.jpg', 1, '', '2019-04-22 08:53:58', '2019-04-22 16:35:49', 'Y', 'Y'),
(2, '', 'Ankit Kanaujiya', 'kanaujiya1999@gmail.com', '2', '1432', '9930139524', 'Male', '402/A, Mahavir Palace, bhayandar(E)', '14/01/1997', 'a1.jpg', 3, '', '2019-04-22 08:53:58', '2019-04-22 21:29:18', 'Y', 'N'),
(3, '1', 'Ankit Kanaujiya', 'kanaujiya1999@gmail.com', '', '', '', '', '', '', '', 0, '', '2019-04-22 14:14:42', '0000-00-00 00:00:00', 'Y', 'N'),
(4, '2', 'Ankit Kanaujiya', 'kanaujiya1999@gmail.com', '', '', '', '', '', '', '', 0, '', '2019-04-22 14:34:50', '0000-00-00 00:00:00', 'Y', 'N'),
(5, '3', 'shani ', 'tiwarishani01@gmail.com', '', '', '', '', '', '', '', 0, '', '2019-04-22 14:57:26', '0000-00-00 00:00:00', 'Y', 'N'),
(6, '', 'vijay Tiwari', 'vijay@gmail.com', '3', '', '', '', '', '', '', 3, '', '2019-04-22 16:18:42', '0000-00-00 00:00:00', 'Y', 'N');

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
(1, 'Sankar Narayan Collage', '2019-04-22 14:14:42', '0000-00-00 00:00:00', 'Y'),
(2, 'Sankar Narayan Collage', '2019-04-22 14:34:50', '0000-00-00 00:00:00', 'Y'),
(3, 'Sankar Narayan Collage', '2019-04-22 14:57:26', '0000-00-00 00:00:00', 'Y');

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
  `discription` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','P') NOT NULL DEFAULT 'P'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `title`, `discription`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'The Sea', ' People often use the term â€œseaâ€ to refer to the ocean.', '6.jpg', '2019-04-22 18:01:04', '2019-04-22 18:02:08', 'Y'),
(2, 1, 'The Sea', ' People often use the term â€œseaâ€ to refer to the ocean.', '3.jpg', '2019-04-22 18:01:46', '2019-04-22 18:43:34', 'Y'),
(3, 1, 'the Sun', 'The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, with internal convective motion that generates a magnetic field via a dynamo process', 'sun.jpg', '2019-04-22 18:11:20', '0000-00-00 00:00:00', 'P'),
(4, 1, 'the Sunset', 'Äá¸³hirÄ« baar maiÃ± kab us se milÄ yaad nahÄ«Ã± \r\n\r\nbas yahÄ« yaad hai ik shaam bahut bhÄrÄ« thÄ« ', '2.jpg', '2019-04-22 18:17:06', '0000-00-00 00:00:00', 'P'),
(5, 1, 'One of the costly car', '$3.4 million Limited Edition Bugatti Veyron by Mansory Vivere. ', 'a.jpg', '2019-04-22 18:27:17', '2019-04-22 18:39:08', 'Y'),
(6, 1, 'Your Name', 'A teenage boy and girl embark on a quest to meet each other for the first time after they magically swap bodies.', 'download.jpg', '2019-04-22 18:53:40', '0000-00-00 00:00:00', 'P');

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
  `description` text NOT NULL,
  `result_image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`result_id`, `standard_id`, `title`, `description`, `result_image`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 'TYBSCI IT', 'Result of B.SCI.CS', 'R1.PNG', '2019-04-22 21:16:54', '0000-00-00 00:00:00', 'N'),
(2, 2, 'TYBSCI IT', 'Result of B.SCI.it', 'R1.PNG', '2019-04-22 21:17:38', '2019-04-22 21:20:11', 'N');

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
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('A','D','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`suggestion_id`, `user_id`, `title`, `comment`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 'collage festival', 'Add some new event in collage udaan festival just like video game in group or solo player, puff g  game add\r\nit must be added.Becouse it is trade game .add some more activity.', '2019-04-22 21:56:20', '2019-04-22 22:03:20', 'A'),
(2, 2, 'centeen Menu', 'change the canteen menu becouse these old menu good but add some pizza and junk food.\r\nOr you can add some ghar ka nasta which is suitable for health.', '2019-04-22 22:10:40', '0000-00-00 00:00:00', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`timetable_id`, `standard_id`, `title`, `description`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 2, 'T.Y.B.Sci.IT', 'its ty bsi it class timetable ', 'IMG-20190115-WA0000.jpg', '2019-04-22 19:28:09', '0000-00-00 00:00:00', 'Y'),
(2, 2, 'T.Y.B.Sci.IT', 'its ty bsi it class timetable ', 'IMG-20190115-WA0000.jpg', '2019-04-22 19:28:35', '0000-00-00 00:00:00', 'Y'),
(3, 2, 'T.Y.B.Sci.IT', 'it is a class time table of TYBSCIIT', 'IMG-20190128-WA0004.jpg', '2019-04-22 19:29:52', '0000-00-00 00:00:00', 'Y'),
(4, 2, 'SEM-5', 'EXAM TIMETABLE OF SEM-6', 'TYBSIIT.PNG', '2019-04-22 19:38:39', '0000-00-00 00:00:00', 'Y'),
(5, 2, 'TIME TABLE OF SEM-6', 'UNIVERSITY EXAM TIME TABLE', '70b99761-94da-47b5-abe9-e81a5bdd7bd8.jpg', '2019-04-22 19:50:30', '0000-00-00 00:00:00', 'Y');

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
(1, 'B.M.S', 'A building management system (BMS), otherwise known as a building automation system (BAS)', '2019-04-22 15:39:23', '2019-04-22 15:44:15', 'Y'),
(2, 'B.SCI.IT', 'A Bachelor of Science in Information Technology, (abbreviated BSIT or B.Sc IT), is a Bachelor''s degree awarded for an undergraduate course or program in the Information technology field.', '2019-04-22 15:40:03', '0000-00-00 00:00:00', 'Y'),
(3, 'BCA', 'The Bachelor of Computer Applications (BCA) and the Master of Computer Application (MCA).', '2019-04-22 15:40:03', '2019-04-22 15:57:50', 'Y'),
(4, 'BComp', 'The Bachelor of Computer Science or Bachelor of Science in Computer Science.', '2019-04-22 15:52:05', '2019-04-22 15:56:29', 'Y'),
(5, 'B.Tech', 'A Bachelor of Technology  is an undergraduate academic degree conferred after completion of a three-year.', '2019-04-22 16:00:51', '0000-00-00 00:00:00', 'Y'),
(6, 'MBA', 'An MBA generally places the graduate well above those with only undergraduate degrees. Most major universities and colleges provide MBA programs, which usually last two years.', '2019-04-22 16:02:57', '0000-00-00 00:00:00', 'Y'),
(7, 'MCA', 'Master of Computer Applications', '2019-04-22 16:11:41', '2019-04-22 16:12:24', 'Y');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vfriends`
--
CREATE TABLE `vfriends` (
`friend_id` int(11)
,`sender_user_id` int(11)
,`sender_user_name` varchar(64)
,`sender_user_image` text
,`sender_user_contact` varchar(20)
,`sender_user_role_id` int(11)
,`receiver_user_id` int(11)
,`receiver_user_name` varchar(64)
,`receiver_user_image` text
,`receiver_user_contact` varchar(20)
,`receiver_user_role_id` int(11)
,`friend_status` enum('Y','N','P')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vusers`
--
CREATE TABLE `vusers` (
`user_id` int(11)
,`collage_id` varchar(100)
,`user_name` varchar(64)
,`user_email` varchar(64)
,`user_course` varchar(100)
,`user_password` varchar(64)
,`user_contact` varchar(20)
,`user_gender` varchar(50)
,`user_address` varchar(100)
,`user_dob` varchar(50)
,`user_image` text
,`user_role_id` int(11)
,`course_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `vfriends`
--
DROP TABLE IF EXISTS `vfriends`;

CREATE ALGORITHM=UNDEFINED DEFINER=`shreeagt_db`@`%` SQL SECURITY DEFINER VIEW `vfriends`  AS  select `friend`.`friend_id` AS `friend_id`,`sender_m_user`.`user_id` AS `sender_user_id`,`sender_m_user`.`user_name` AS `sender_user_name`,`sender_m_user`.`user_image` AS `sender_user_image`,`sender_m_user`.`user_contact` AS `sender_user_contact`,`sender_m_user`.`user_role_id` AS `sender_user_role_id`,`receiver_m_user`.`user_id` AS `receiver_user_id`,`receiver_m_user`.`user_name` AS `receiver_user_name`,`receiver_m_user`.`user_image` AS `receiver_user_image`,`receiver_m_user`.`user_contact` AS `receiver_user_contact`,`receiver_m_user`.`user_role_id` AS `receiver_user_role_id`,`friend`.`status` AS `friend_status` from ((`friend` left join `m_user` `sender_m_user` on((`sender_m_user`.`user_id` = `friend`.`sender_id`))) left join `m_user` `receiver_m_user` on((`receiver_m_user`.`user_id` = `friend`.`receiver_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vusers`
--
DROP TABLE IF EXISTS `vusers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`shreeagt_db`@`%` SQL SECURITY DEFINER VIEW `vusers`  AS  select `m_user`.`user_id` AS `user_id`,`m_user`.`collage_id` AS `collage_id`,`m_user`.`user_name` AS `user_name`,`m_user`.`user_email` AS `user_email`,`m_user`.`user_course` AS `user_course`,`m_user`.`user_password` AS `user_password`,`m_user`.`user_contact` AS `user_contact`,`m_user`.`user_gender` AS `user_gender`,`m_user`.`user_address` AS `user_address`,`m_user`.`user_dob` AS `user_dob`,`m_user`.`user_image` AS `user_image`,`m_user`.`user_role_id` AS `user_role_id`,`user_course`.`course_name` AS `course_name` from (`m_user` left join `user_course` on((`user_course`.`course_id` = `m_user`.`user_course`))) ;

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
  MODIFY `community_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `friend`
--
ALTER TABLE `friend`
  MODIFY `friend_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `letter`
--
ALTER TABLE `letter`
  MODIFY `letter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `m_user_college`
--
ALTER TABLE `m_user_college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `post_comment`
--
ALTER TABLE `post_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post_like`
--
ALTER TABLE `post_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `sms_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `suggestion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `timetable_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_course`
--
ALTER TABLE `user_course`
  MODIFY `course_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
