# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: shreeagt.chjmpirurvqk.ap-south-1.rds.amazonaws.com (MySQL 5.6.40)
# Database: classlink
# Generation Time: 2019-04-21 05:36:24 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table community
# ------------------------------------------------------------

DROP TABLE IF EXISTS `community`;

CREATE TABLE `community` (
  `community_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table contact_us
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contact_us`;

CREATE TABLE `contact_us` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `school_name` varchar(50) NOT NULL,
  `message` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','P') NOT NULL DEFAULT 'P',
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table declaration
# ------------------------------------------------------------

DROP TABLE IF EXISTS `declaration`;

CREATE TABLE `declaration` (
  `declaration_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` varchar(128) NOT NULL,
  `time` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','A','P') NOT NULL DEFAULT 'P',
  PRIMARY KEY (`declaration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table declaration_communication
# ------------------------------------------------------------

DROP TABLE IF EXISTS `declaration_communication`;

CREATE TABLE `declaration_communication` (
  `communication_id` int(11) NOT NULL AUTO_INCREMENT,
  `declaration_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `comment` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`communication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table friend
# ------------------------------------------------------------

DROP TABLE IF EXISTS `friend`;

CREATE TABLE `friend` (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_id` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','P') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table letter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `letter`;

CREATE TABLE `letter` (
  `letter_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`letter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table m_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  `mail` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table m_user_college
# ------------------------------------------------------------

DROP TABLE IF EXISTS `m_user_college`;

CREATE TABLE `m_user_college` (
  `college_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table m_user_div
# ------------------------------------------------------------

DROP TABLE IF EXISTS `m_user_div`;

CREATE TABLE `m_user_div` (
  `div_id` int(11) NOT NULL AUTO_INCREMENT,
  `div_name` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`div_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table m_user_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `m_user_role`;

CREATE TABLE `m_user_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table m_user_standard
# ------------------------------------------------------------

DROP TABLE IF EXISTS `m_user_standard`;

CREATE TABLE `m_user_standard` (
  `standard_id` int(11) NOT NULL AUTO_INCREMENT,
  `standard_name` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`standard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table message
# ------------------------------------------------------------

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table notification
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `description` varchar(128) NOT NULL,
  `sender_user_id` int(11) NOT NULL,
  `receiver_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','P') NOT NULL DEFAULT 'P',
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `discription` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N','P') NOT NULL DEFAULT 'P',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table post_comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_comment`;

CREATE TABLE `post_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table post_like
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_like`;

CREATE TABLE `post_like` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table result
# ------------------------------------------------------------

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `standard_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `result_image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table sms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sms`;

CREATE TABLE `sms` (
  `sms_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `comment` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`sms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table suggestion
# ------------------------------------------------------------

DROP TABLE IF EXISTS `suggestion`;

CREATE TABLE `suggestion` (
  `suggestion_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('A','D','P') NOT NULL,
  PRIMARY KEY (`suggestion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table timetable
# ------------------------------------------------------------

DROP TABLE IF EXISTS `timetable`;

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL AUTO_INCREMENT,
  `standard_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`timetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table user_course
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_course`;

CREATE TABLE `user_course` (
  `course_id` int(25) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) NOT NULL,
  `course_discription` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table vfriends
# ------------------------------------------------------------

DROP VIEW IF EXISTS `vfriends`;

CREATE TABLE `vfriends` (
   `friend_id` INT(11) NOT NULL DEFAULT '0',
   `sender_user_id` INT(11) NULL DEFAULT '0',
   `sender_user_name` VARCHAR(64) NULL DEFAULT NULL,
   `sender_user_image` TEXT NULL DEFAULT NULL,
   `sender_user_contact` VARCHAR(20) NULL DEFAULT '',
   `sender_user_role_id` INT(11) NULL DEFAULT NULL,
   `receiver_user_id` INT(11) NULL DEFAULT '0',
   `receiver_user_name` VARCHAR(64) NULL DEFAULT NULL,
   `receiver_user_image` TEXT NULL DEFAULT NULL,
   `receiver_user_contact` VARCHAR(20) NULL DEFAULT '',
   `receiver_user_role_id` INT(11) NULL DEFAULT NULL,
   `friend_status` ENUM('Y','N','P') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM;



# Dump of table vusers
# ------------------------------------------------------------

DROP VIEW IF EXISTS `vusers`;

CREATE TABLE `vusers` (
   `user_id` INT(11) NOT NULL DEFAULT '0',
   `collage_id` VARCHAR(100) NOT NULL,
   `user_name` VARCHAR(64) NOT NULL,
   `user_email` VARCHAR(64) NOT NULL,
   `user_course` VARCHAR(100) NOT NULL,
   `user_password` VARCHAR(64) NOT NULL,
   `user_contact` VARCHAR(20) NOT NULL DEFAULT '',
   `user_gender` VARCHAR(50) NOT NULL,
   `user_address` VARCHAR(100) NOT NULL,
   `user_dob` VARCHAR(50) NOT NULL,
   `user_image` TEXT NOT NULL,
   `user_role_id` INT(11) NOT NULL,
   `course_name` VARCHAR(50) NULL DEFAULT NULL
) ENGINE=MyISAM;





# Replace placeholder table for vfriends with correct view syntax
# ------------------------------------------------------------

DROP TABLE `vfriends`;

CREATE ALGORITHM=UNDEFINED DEFINER=`shreeagt_db`@`%` SQL SECURITY DEFINER VIEW `vfriends`
AS SELECT
   `friend`.`friend_id` AS `friend_id`,
   `sender_m_user`.`user_id` AS `sender_user_id`,
   `sender_m_user`.`user_name` AS `sender_user_name`,
   `sender_m_user`.`user_image` AS `sender_user_image`,
   `sender_m_user`.`user_contact` AS `sender_user_contact`,
   `sender_m_user`.`user_role_id` AS `sender_user_role_id`,
   `receiver_m_user`.`user_id` AS `receiver_user_id`,
   `receiver_m_user`.`user_name` AS `receiver_user_name`,
   `receiver_m_user`.`user_image` AS `receiver_user_image`,
   `receiver_m_user`.`user_contact` AS `receiver_user_contact`,
   `receiver_m_user`.`user_role_id` AS `receiver_user_role_id`,
   `friend`.`status` AS `friend_status`
FROM ((`friend` left join `m_user` `sender_m_user` on((`sender_m_user`.`user_id` = `friend`.`sender_id`))) left join `m_user` `receiver_m_user` on((`receiver_m_user`.`user_id` = `friend`.`receiver_id`)));


# Replace placeholder table for vusers with correct view syntax
# ------------------------------------------------------------

DROP TABLE `vusers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`shreeagt_db`@`%` SQL SECURITY DEFINER VIEW `vusers`
AS SELECT
   `m_user`.`user_id` AS `user_id`,
   `m_user`.`collage_id` AS `collage_id`,
   `m_user`.`user_name` AS `user_name`,
   `m_user`.`user_email` AS `user_email`,
   `m_user`.`user_course` AS `user_course`,
   `m_user`.`user_password` AS `user_password`,
   `m_user`.`user_contact` AS `user_contact`,
   `m_user`.`user_gender` AS `user_gender`,
   `m_user`.`user_address` AS `user_address`,
   `m_user`.`user_dob` AS `user_dob`,
   `m_user`.`user_image` AS `user_image`,
   `m_user`.`user_role_id` AS `user_role_id`,
   `user_course`.`course_name` AS `course_name`
FROM (`m_user` left join `user_course` on((`user_course`.`course_id` = `m_user`.`user_course`)));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
