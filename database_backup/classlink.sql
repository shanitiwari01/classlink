# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: shreeagt.chjmpirurvqk.ap-south-1.rds.amazonaws.com (MySQL 5.6.40)
# Database: classlink
# Generation Time: 2019-04-17 10:31:46 +0000
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

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;

INSERT INTO `community` (`community_id`, `user_id`, `title`, `description`, `image`, `created_at`, `updated_at`, `status`)
VALUES
	(1,1,'asdfdsafs','','7.jpg','2019-03-29 13:33:08','2019-04-02 02:36:13','Y'),
	(2,1,'asdfdsadfadafs','','8.jpg','2019-03-29 13:42:15','2019-04-02 02:36:27','Y'),
	(3,1,'nmk','jk k kmmkm','762208-medium190.jpg','2019-04-17 08:31:36','0000-00-00 00:00:00','Y');

/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;

INSERT INTO `contact_us` (`contact_id`, `name`, `email`, `subject`, `school_name`, `message`, `created_at`, `updated_at`, `status`)
VALUES
	(1,'Aaad','text@gmail.com','IT','','asghgh','2019-02-06 13:13:59','2019-02-21 06:21:12','Y'),
	(2,'ghj','test@gmail.com','photography','','dghjgdghdg','2019-02-16 18:55:51','2019-02-21 06:08:33','Y'),
	(3,'ghj','test@gmail.com','photography','','dghjgdghdg','2019-02-16 18:55:57','2019-02-22 06:15:17','Y'),
	(4,'Ankit Kanaujiya','vijay@gmail.com','photography','sfghsf','gfshgfhhf','2019-02-16 18:58:04','2019-02-21 06:09:59','Y'),
	(5,'azadsdf','adfa@gfg.com','ghsfgh','gfshsfghsgff','sgfhgfshsfg','2019-02-18 19:26:14','2019-02-21 06:19:49','Y'),
	(6,'Ankit','test@gmail.com','theme ','sfghsf','\r\nkfy','2019-02-19 00:07:15','2019-02-21 05:59:58','Y'),
	(7,'','','','',',];.','2019-02-19 00:08:21','2019-02-21 06:09:11','Y'),
	(8,'qqqqqqqqq','q@sss.com','wwwwwwwww','rrrrrrrr','asdfghjkl','2019-02-21 06:24:54','2019-02-21 06:26:13','Y');

/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;

INSERT INTO `friend` (`friend_id`, `sender_id`, `receiver_id`, `created_at`, `updated_id`, `status`)
VALUES
	(7,1,2,'2019-04-17 09:31:00','0000-00-00 00:00:00','P'),
	(8,1,45,'2019-04-17 09:31:06','0000-00-00 00:00:00','P');

/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `letter` WRITE;
/*!40000 ALTER TABLE `letter` DISABLE KEYS */;

INSERT INTO `letter` (`letter_id`, `user_id`, `subject`, `description`, `date`, `created_at`, `updated_at`, `status`)
VALUES
	(1,1,'afdadfasd','adsfsdfdgfsgstgssdfg','2019-01-01','2019-03-29 12:17:37','0000-00-00 00:00:00','N'),
	(2,2,'asdfdsadfadafs','shshgs','1562-02-15','2019-04-02 02:59:19','0000-00-00 00:00:00','N'),
	(3,2,'asdfdsadfadafs','shshgs','1562-02-15','2019-04-02 03:02:57','0000-00-00 00:00:00','N');

/*!40000 ALTER TABLE `letter` ENABLE KEYS */;
UNLOCK TABLES;


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
  `user_contact` int(12) NOT NULL,
  `user_gender` varchar(50) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_dob` varchar(50) NOT NULL,
  `user_image` text NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `user_key` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `m_user` WRITE;
/*!40000 ALTER TABLE `m_user` DISABLE KEYS */;

INSERT INTO `m_user` (`user_id`, `collage_id`, `user_name`, `user_email`, `user_course`, `user_password`, `user_contact`, `user_gender`, `user_address`, `user_dob`, `user_image`, `user_role_id`, `user_key`, `created_at`, `updated_at`, `status`)
VALUES
	(1,'28','Shani tiwari','tiwarishani01@gmail.com','7','1234',78946465,'Female','sfhsfhgfhgs','14/20/1999','avatar2.jpg',2,'23213','2019-01-23 10:22:31','2019-04-17 10:15:46','Y'),
	(2,'','Ankit Kanaujiya','ankit@gmail.com','7','1432',798988457,'Male','104/A,shiva bhayander(E)','14/01/2024','6.jpg',2,'','2019-02-19 00:36:49','2019-04-02 00:14:10','Y'),
	(3,'28','Nisha','Niash@gfg.com','MBA','1236',786654456,'Female','sdfghjhgcxcvghj','24/03/1994','',3,'','2019-02-21 05:51:33','2019-04-17 09:48:22','Y'),
	(4,'29','azadsdf','adfa@gfg.com','MBA','',0,'','','','avatar4.jpg',0,'','2019-02-21 06:02:27','2019-03-06 02:50:07','Y'),
	(5,'30','azad','ad@gfg.com','MBA','asdfgdg',0,'','','','avatar2.jpg',0,'','2019-02-21 06:02:30','2019-03-04 02:18:08','Y'),
	(6,'31','ghj','test@gmail.com','M.Sci','sgfhsgh',0,'','','','avatar3.jpg',0,'','2019-02-21 06:02:42','2019-03-04 01:35:05','Y'),
	(7,'88','jfjghv','teskhgvfvt@gmail.com','MBA','hgfyhfcytfc',0,'','','','avatar4.jpg',0,'','2019-02-21 06:02:58','2019-03-06 02:51:01','Y'),
	(8,'33','ghj','test@gmail.com','MBA','',0,'','','','avatar2.jpg',0,'','2019-02-21 06:08:33','2019-03-06 02:51:49','Y'),
	(9,'34','','','','',0,'','','','',0,'','2019-02-21 06:09:11','0000-00-00 00:00:00','Y'),
	(10,'35gshhg','Ankshgss','vijaysfgh@gmail.com','MBA','adsasd',0,'','','','avatar4.jpg',0,'','2019-02-21 06:09:59','2019-03-04 02:18:44','Y'),
	(11,'36','ghj','test@gmail.com','','',0,'','','','',0,'','2019-02-21 06:11:24','0000-00-00 00:00:00','Y'),
	(12,'37','shiv','test@gmail.com','MBA','adsadfds',0,'','','','avatar5.jpg',0,'','2019-02-21 06:12:32','2019-03-04 02:18:54','Y'),
	(13,'38','ghj','test@gmail.com','MBA','1452364521',0,'','','','avatar6.jpg',0,'','2019-02-21 06:15:23','2019-03-04 02:19:01','Y'),
	(14,'39','vijay','vijayemail@gmail.com','MBA','avsdggf',0,'','','','avatar3.jpg',0,'','2019-02-21 06:15:47','2019-03-06 02:52:07','Y'),
	(15,'40','ghj','test@gmail.com','MBA','asdfhjfbsadkfbsd',0,'','','','avatar5.jpg',0,'','2019-02-21 06:17:08','2019-03-06 02:52:16','Y'),
	(16,'41','ghj','test@gmail.com','MBA','asdfsdsd',0,'','','','avatar6.jpg',0,'','2019-02-21 06:17:09','2019-03-06 02:52:23','Y'),
	(17,'42','ghj','test@gmail.com','','',0,'','','','',0,'','2019-02-21 06:17:10','0000-00-00 00:00:00','Y'),
	(18,'43','ghj','test@gmail.com','','',0,'','','','',0,'','2019-02-21 06:17:10','0000-00-00 00:00:00','Y'),
	(19,'44','azadsdf','adfa@gfg.com','','',0,'','','','',0,'','2019-02-21 06:19:49','0000-00-00 00:00:00','Y'),
	(20,'45','Aaad','azzadt@gmail.com','M.Sci','azzad',0,'','','','avatar4.jpg',0,'','2019-02-21 06:21:12','2019-03-06 02:49:25','Y'),
	(21,'46','qqqqqqqqq','q@sss.com','','',0,'','','','',0,'','2019-02-21 06:26:13','0000-00-00 00:00:00','Y'),
	(22,'47','ghj','test@gmail.com','MBA','asdfdsfsda',0,'','','','avatar4.jpg',0,'','2019-02-22 06:13:59','2019-03-06 05:02:13','Y'),
	(23,'48','ghj','test@gmail.com','MBA','gadsg',0,'','','','Snapchat-286089111.jpg',0,'','2019-02-22 06:15:12','2019-03-17 06:00:28','Y'),
	(24,'49','ghj','test@gmail.com','','',0,'','','','',0,'','2019-02-22 06:15:17','0000-00-00 00:00:00','Y'),
	(25,'50','ghj','test@gmail.com','MBA','khfgfddgjh',0,'','','','avatar5.jpg',2,'','2019-02-22 06:15:25','2010-03-19 00:05:07','Y'),
	(26,'51','','','','',0,'','','','',0,'','2019-02-23 00:27:35','0000-00-00 00:00:00','Y'),
	(27,'','asrfga','adga@sgh.cssad','dgsgdf','',0,'','','','',0,'','2010-03-19 00:06:07','0000-00-00 00:00:00','Y'),
	(28,'','$name','$email','$course','',0,'','','','',2,'','2010-03-19 00:13:51','0000-00-00 00:00:00','Y'),
	(29,'','sgsdffd','test@gmail.com','agfaadfgadfgfdrg','',0,'','','','',2,'','2010-03-19 00:14:55','0000-00-00 00:00:00','Y'),
	(30,'28','sgsdffd','test@gmail.com','agfaadfgadfgfdrg','',0,'','','','',2,'','2010-03-19 00:22:43','0000-00-00 00:00:00','Y'),
	(31,'28','sgsdffd','test@gmail.com','agfaadfgadfgfdrg','',0,'','','','',2,'','2010-03-19 00:23:10','0000-00-00 00:00:00','Y'),
	(32,'Array','Ankit','tiwarishani01@gmail.com','adfga','',0,'','','','',2,'','2010-03-19 02:54:26','0000-00-00 00:00:00','Y'),
	(33,'Array','vijay','ad@gfg.com','ADSFADSF','',0,'','','','',3,'','2010-03-19 03:07:46','0000-00-00 00:00:00','Y'),
	(34,'Array','vijayGHFK','aYTHFKd@gfg.com','ADhgfkjSFADSF','',0,'','','','',3,'','2010-03-19 03:08:42','0000-00-00 00:00:00','Y'),
	(35,'Array','','','','',0,'','','','',3,'','2010-03-19 09:26:31','0000-00-00 00:00:00','Y'),
	(36,'Array','Ankit Kanaujiya','tiwarishani01@gmail.com','agfaadfgadfgfdrg','',0,'','','','',3,'','2010-03-19 09:26:49','0000-00-00 00:00:00','Y'),
	(37,'Array','Ankit Kanaujiya','test@gmail.com','ADhgfkjSFADSF','',0,'','','','',3,'','2019-03-23 15:09:13','0000-00-00 00:00:00','Y'),
	(38,'Array','Ankit Kanaujiya','test@gmail.com','agfaadfgadfgfdrg','',0,'','','','',2,'','2019-03-23 15:14:38','0000-00-00 00:00:00','Y'),
	(39,'Array','Ankit Kanaujiya','kanaujiya1999@gmail.com','agfaadfgadfgfdrg','',0,'','','','',3,'','2019-03-23 15:15:10','0000-00-00 00:00:00','Y'),
	(40,'28','Ankit Kanaujiya','tiwarishani01@gmail.com','agfaadfgadfgfdrg','',0,'','','','',3,'','2019-03-29 08:34:50','0000-00-00 00:00:00','Y'),
	(41,'28','Ankit Kanaujiya','tiwarishani01@gmail.com','agfaadfgadfgfdrg','',0,'','','','',3,'','2019-03-29 08:36:40','0000-00-00 00:00:00','Y'),
	(42,'28','vijay','vijay@gmail.com','ADhgfkjSFADSF','',0,'','','','',2,'','2019-03-29 08:37:37','0000-00-00 00:00:00','Y'),
	(43,'28','Ankit Kanaujiya','test@gmail.com','','',0,'','','','',2,'','2019-03-30 23:23:15','0000-00-00 00:00:00','Y'),
	(44,'28','Ankit Kanaujiya','kanaujiya1999@gmail.com','','',0,'','','','',2,'','2019-03-30 23:33:49','0000-00-00 00:00:00','Y'),
	(45,'28','Ankit Kanaujiya','test@gmail.com','7','',0,'','','','',2,'','2019-03-31 05:37:23','0000-00-00 00:00:00','Y'),
	(46,'28','vijay','adfg@gmail.com','14','',0,'','','','',3,'','2019-03-31 05:42:21','0000-00-00 00:00:00','Y'),
	(47,'28','ced','d@frv.fr','12','',0,'','','','',2,'','2019-04-17 09:41:47','0000-00-00 00:00:00','Y');

/*!40000 ALTER TABLE `m_user` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `m_user_college` WRITE;
/*!40000 ALTER TABLE `m_user_college` DISABLE KEYS */;

INSERT INTO `m_user_college` (`college_id`, `college_name`, `created_at`, `updated_at`, `status`)
VALUES
	(1,'Array','2019-02-20 20:57:46','0000-00-00 00:00:00','Y'),
	(2,'Array','2019-02-20 20:57:47','0000-00-00 00:00:00','Y'),
	(3,'sfghsf','2019-02-21 04:48:54','0000-00-00 00:00:00','Y'),
	(4,'sfghsf','2019-02-21 04:57:17','0000-00-00 00:00:00','Y'),
	(5,'sfghsf','2019-02-21 05:01:07','0000-00-00 00:00:00','Y'),
	(6,'sfghsf','2019-02-21 05:01:08','0000-00-00 00:00:00','Y'),
	(7,'sfghsf','2019-02-21 05:01:08','0000-00-00 00:00:00','Y'),
	(8,'sfghsf','2019-02-21 05:01:09','0000-00-00 00:00:00','Y'),
	(9,'sfghsf','2019-02-21 05:01:09','0000-00-00 00:00:00','Y'),
	(10,'sfghsf','2019-02-21 05:01:09','0000-00-00 00:00:00','Y'),
	(11,'sfghsf','2019-02-21 05:01:10','0000-00-00 00:00:00','Y'),
	(12,'','2019-02-21 05:01:18','0000-00-00 00:00:00','Y'),
	(13,'','2019-02-21 05:05:46','0000-00-00 00:00:00','Y'),
	(14,'','2019-02-21 05:05:47','0000-00-00 00:00:00','Y'),
	(15,'','2019-02-21 05:05:47','0000-00-00 00:00:00','Y'),
	(16,'','2019-02-21 05:06:43','0000-00-00 00:00:00','Y'),
	(17,'','2019-02-21 05:09:51','0000-00-00 00:00:00','Y'),
	(18,'','2019-02-21 05:09:52','0000-00-00 00:00:00','Y'),
	(19,'','2019-02-21 05:09:52','0000-00-00 00:00:00','Y'),
	(20,'','2019-02-21 05:09:52','0000-00-00 00:00:00','Y'),
	(21,'','2019-02-21 05:09:53','0000-00-00 00:00:00','Y'),
	(22,'','2019-02-21 05:09:53','0000-00-00 00:00:00','Y'),
	(23,'gfshsfghsgff','2019-02-21 05:10:05','0000-00-00 00:00:00','Y'),
	(24,'gfshsfghsgff','2019-02-21 05:10:20','0000-00-00 00:00:00','Y'),
	(25,'gfshsfghsgff','2019-02-21 05:10:21','0000-00-00 00:00:00','Y'),
	(26,'gfshsfghsgff','2019-02-21 05:14:45','0000-00-00 00:00:00','Y'),
	(27,'gfshsfghsgff','2019-02-21 05:46:49','0000-00-00 00:00:00','Y'),
	(28,'gfshsfghsgff','2019-02-21 05:51:33','0000-00-00 00:00:00','Y'),
	(29,'gfshsfghsgff','2019-02-21 06:02:27','0000-00-00 00:00:00','Y'),
	(30,'gfshsfghsgff','2019-02-21 06:02:30','0000-00-00 00:00:00','Y'),
	(31,'','2019-02-21 06:02:42','0000-00-00 00:00:00','Y'),
	(32,'','2019-02-21 06:02:58','0000-00-00 00:00:00','Y'),
	(33,'','2019-02-21 06:08:33','0000-00-00 00:00:00','Y'),
	(34,'','2019-02-21 06:09:11','0000-00-00 00:00:00','Y'),
	(35,'sfghsf','2019-02-21 06:09:59','0000-00-00 00:00:00','Y'),
	(36,'','2019-02-21 06:11:24','0000-00-00 00:00:00','Y'),
	(37,'','2019-02-21 06:12:32','0000-00-00 00:00:00','Y'),
	(38,'','2019-02-21 06:15:23','0000-00-00 00:00:00','Y'),
	(39,'','2019-02-21 06:15:47','0000-00-00 00:00:00','Y'),
	(40,'','2019-02-21 06:17:08','0000-00-00 00:00:00','Y'),
	(41,'','2019-02-21 06:17:09','0000-00-00 00:00:00','Y'),
	(42,'','2019-02-21 06:17:10','0000-00-00 00:00:00','Y'),
	(43,'','2019-02-21 06:17:10','0000-00-00 00:00:00','Y'),
	(44,'gfshsfghsgff','2019-02-21 06:19:49','0000-00-00 00:00:00','Y'),
	(45,'','2019-02-21 06:21:12','0000-00-00 00:00:00','Y'),
	(46,'rrrrrrrr','2019-02-21 06:26:13','0000-00-00 00:00:00','Y'),
	(47,'','2019-02-22 06:13:58','0000-00-00 00:00:00','Y'),
	(48,'','2019-02-22 06:15:12','0000-00-00 00:00:00','Y'),
	(49,'','2019-02-22 06:15:17','0000-00-00 00:00:00','Y'),
	(50,'','2019-02-22 06:15:25','0000-00-00 00:00:00','Y'),
	(51,'','2019-02-23 00:27:35','0000-00-00 00:00:00','Y');

/*!40000 ALTER TABLE `m_user_college` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;

INSERT INTO `post` (`post_id`, `user_id`, `title`, `discription`, `image`, `created_at`, `updated_at`, `status`)
VALUES
	(12,1,'inazuma','inamsgfdsgdfg','3.jpg','2019-03-28 03:59:32','2019-03-28 07:20:03','Y'),
	(13,1,'anime','inamsgfdsgdfg','5.jpg','2019-03-28 04:19:44','2019-03-28 07:20:22','Y'),
	(14,1,'anime','inamsgfdsgdfg','6.jpg','2019-03-28 06:20:55','2019-03-28 07:20:43','Y'),
	(15,1,'afsdadsa','adfsa','4.jpg','2019-03-28 06:40:07','2019-03-28 07:18:13','Y'),
	(16,1,'The Most Advance Business Plan','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','2.jpg','2019-03-28 06:43:06','2019-03-28 07:18:16','Y'),
	(17,1,'dfgasdfh','adfggggggggggggggggggggggggg','12.jpg','2019-03-28 22:39:50','2019-03-30 07:52:54','Y'),
	(18,1,'movie','dfagdafgdfgfdgfgds','7.jpg','2019-03-28 23:38:54','0000-00-00 00:00:00','P');

/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `post_comment` WRITE;
/*!40000 ALTER TABLE `post_comment` DISABLE KEYS */;

INSERT INTO `post_comment` (`comment_id`, `post_id`, `user_id`, `comment`, `created_at`, `update_at`, `status`)
VALUES
	(1,12,1,'lfjjhgjhgvjhgvjgjgjgjg','2019-03-28 12:13:57','0000-00-00 00:00:00','Y'),
	(2,12,1,'lfjjhgjhgvjhgvjgjgjgjg','2019-03-28 12:14:29','0000-00-00 00:00:00','Y'),
	(3,0,1,'','2019-03-28 12:15:28','0000-00-00 00:00:00','Y'),
	(4,12,1,'good thought     is it','2019-03-28 12:16:34','0000-00-00 00:00:00','Y'),
	(5,12,1,'good thought     is itadfg','2019-03-28 12:18:03','0000-00-00 00:00:00','Y'),
	(6,12,1,'good thought     is itadfg','2019-03-28 12:25:22','0000-00-00 00:00:00','Y'),
	(7,12,1,'good thought    ','2019-03-28 12:26:19','0000-00-00 00:00:00','Y'),
	(8,16,1,'lojahbsdgflabgab a;kba','2019-03-28 23:44:27','0000-00-00 00:00:00','Y'),
	(9,16,1,'lojahbsdgflabgab adsag;kba','2019-03-28 23:46:42','0000-00-00 00:00:00','Y'),
	(10,16,1,'lojahbsdghfkhvchvflabgab adsag;kba','2019-03-28 23:47:49','0000-00-00 00:00:00','Y'),
	(11,14,1,'good night.','2019-03-28 23:50:07','0000-00-00 00:00:00','Y'),
	(12,14,1,'good night.','2019-03-28 23:51:55','0000-00-00 00:00:00','Y'),
	(13,14,1,'adf','2019-03-28 23:53:56','0000-00-00 00:00:00','Y'),
	(14,14,1,'adhfgadfghhga','2019-03-28 23:54:10','0000-00-00 00:00:00','Y');

/*!40000 ALTER TABLE `post_comment` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `suggestion` WRITE;
/*!40000 ALTER TABLE `suggestion` DISABLE KEYS */;

INSERT INTO `suggestion` (`suggestion_id`, `user_id`, `title`, `comment`, `created_at`, `updated_at`, `status`)
VALUES
	(1,1,'collage festival',' firework  is prohited in collage festival. ','2019-03-29 10:55:54','0000-00-00 00:00:00','A'),
	(2,1,'','','2019-03-29 10:58:14','0000-00-00 00:00:00','A'),
	(3,1,'collage festival','team work is important.','2019-03-29 11:03:35','0000-00-00 00:00:00','P'),
	(4,1,'collage festival','adfasdfsf','2019-03-29 11:17:40','0000-00-00 00:00:00','P'),
	(5,2,'collage festival','sgfhsfhfghfghghhjdgjjd','2019-04-02 03:04:39','0000-00-00 00:00:00','P'),
	(6,2,'collage festival','fgsfhfghfghgfhhfdfhftuyd','2019-04-02 03:05:25','0000-00-00 00:00:00','P');

/*!40000 ALTER TABLE `suggestion` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;

INSERT INTO `timetable` (`timetable_id`, `standard_id`, `title`, `description`, `image`, `created_at`, `updated_at`, `status`)
VALUES
	(1,1,'afdadfasd','afgadgadfg','11.jpg','2019-03-29 14:11:53','2019-04-02 02:39:29','Y'),
	(2,1,'afdadfasd','afgadgadfg','11.jpg','2019-03-29 14:14:25','2019-04-02 02:39:40','Y');

/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;


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

LOCK TABLES `user_course` WRITE;
/*!40000 ALTER TABLE `user_course` DISABLE KEYS */;

INSERT INTO `user_course` (`course_id`, `course_name`, `course_discription`, `created_at`, `updated_at`, `status`)
VALUES
	(3,'vishatr','sghfssghfhfg\r\nfgsgfhfh','2019-02-08 22:58:13','2019-02-21 03:48:39',''),
	(5,'atoz','ztoa','2019-02-20 15:10:27','2019-02-21 03:47:01','Y'),
	(11,'docter','dfgdsagdfgdsfgdfgfdsdsffg\r\ndfsgsdfgfdsgsdfdfgdfg','2019-02-20 15:36:47','0000-00-00 00:00:00','Y'),
	(12,'adfgdagfd','sfghfhhsfggfsfgtgssssssssssssssssss','2019-02-20 15:37:55','0000-00-00 00:00:00','Y'),
	(13,'adfgdagfd','srthswrt','2019-02-20 19:28:49','0000-00-00 00:00:00','Y'),
	(14,'qqqqqqqqqqqqq','wwwwwwwwwwwww','2019-02-21 03:49:09','0000-00-00 00:00:00','Y'),
	(15,'it','may be its stuff','2019-03-30 23:18:36','0000-00-00 00:00:00','Y');

/*!40000 ALTER TABLE `user_course` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table vfriends
# ------------------------------------------------------------

DROP VIEW IF EXISTS `vfriends`;

CREATE TABLE `vfriends` (
   `sender_user_id` INT(11) NULL DEFAULT '0',
   `sender_user_name` VARCHAR(64) NULL DEFAULT NULL,
   `sender_user_image` TEXT NULL DEFAULT NULL,
   `sender_user_role_id` INT(11) NULL DEFAULT NULL,
   `receiver_user_id` INT(11) NULL DEFAULT '0',
   `receiver_user_name` VARCHAR(64) NULL DEFAULT NULL,
   `receiver_user_image` TEXT NULL DEFAULT NULL,
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
   `user_contact` INT(12) NOT NULL,
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
   `sender_m_user`.`user_id` AS `sender_user_id`,
   `sender_m_user`.`user_name` AS `sender_user_name`,
   `sender_m_user`.`user_image` AS `sender_user_image`,
   `sender_m_user`.`user_role_id` AS `sender_user_role_id`,
   `receiver_m_user`.`user_id` AS `receiver_user_id`,
   `receiver_m_user`.`user_name` AS `receiver_user_name`,
   `receiver_m_user`.`user_image` AS `receiver_user_image`,
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
