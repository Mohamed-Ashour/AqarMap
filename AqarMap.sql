-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 07, 2016 at 05:08 PM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `AqarMap`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE IF NOT EXISTS `account_emailaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `account_emailaddress_user_id_2c513194_fk_aqar_userprofile_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `account_emailaddress`
--

INSERT INTO `account_emailaddress` (`id`, `email`, `verified`, `primary`, `user_id`) VALUES
(1, 'rana_ranaonly@yahoo.com', 0, 1, 2),
(2, 'enn@mail.com', 0, 1, 5),
(3, 'hazem@mail.com', 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE IF NOT EXISTS `account_emailconfirmation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `sent` datetime DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `account_ema_email_address_id_5b7f8c58_fk_account_emailaddress_id` (`email_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `account_emailconfirmation`
--

INSERT INTO `account_emailconfirmation` (`id`, `created`, `sent`, `key`, `email_address_id`) VALUES
(1, '2016-04-05 11:17:42', '2016-04-05 11:17:42', 'lyopuegxcjfyu6vz4linnbqejylntg15cmni7g5m59afxsfber4vtcbi3hdqclis', 1),
(2, '2016-04-05 13:15:30', '2016-04-05 13:15:30', 'btefvcu51a2uan4kje6ao3vnqxcrvdpwxmfq5qsowiduzeoyw327rpuhzrain3ay', 2),
(3, '2016-04-05 13:22:47', '2016-04-05 13:22:47', 'l9thq0unuxnnc8n38mhaq1huqpqiyqd8vf5clhcjsw7sswbmmgrucuaeys84tndq', 3);

-- --------------------------------------------------------

--
-- Table structure for table `aqar_dellisting`
--

CREATE TABLE IF NOT EXISTS `aqar_dellisting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `propertyType` varchar(100) NOT NULL,
  `size` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aqar_dellisting_user_id_id_a11d3cfe_fk_aqar_userprofile_id` (`user_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `aqar_dellisting`
--

INSERT INTO `aqar_dellisting` (`id`, `title`, `propertyType`, `size`, `price`, `user_id_id`) VALUES
(1, 'rana', 'apartment', 122, 250000, 1),
(2, 'rana', 'apartment', 122, 250000, 1),
(3, 'rana', 'apartment', 11111, 85555545, 1),
(4, 'dsd', 'building', 11111, 85555545, 1);

-- --------------------------------------------------------

--
-- Table structure for table `aqar_notifier`
--

CREATE TABLE IF NOT EXISTS `aqar_notifier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `property_type` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `min_price` int(11) NOT NULL,
  `max_price` int(11) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aqar_notifier_user_id_id_1b45567d_fk_aqar_userprofile_id` (`user_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `aqar_proj`
--

CREATE TABLE IF NOT EXISTS `aqar_proj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Pro_Name` varchar(200) NOT NULL,
  `detailes` varchar(500) NOT NULL,
  `location` varchar(100) NOT NULL,
  `services` varchar(100) NOT NULL,
  `facilities` varchar(100) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `exp_price` int(11) NOT NULL,
  `p_email` varchar(500) DEFAULT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aqar_proj_user_id_id_ea35d3aa_fk_aqar_userprofile_id` (`user_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `aqar_proj`
--

INSERT INTO `aqar_proj` (`id`, `Pro_Name`, `detailes`, `location`, `services`, `facilities`, `img`, `exp_price`, `p_email`, `user_id_id`) VALUES
(1, 'start', 'hhhhhhhhhhh', 'ggg', 'hhhhhhhhhhhhhhh', 'hhhhhhhhhhhhhhhhhhhhhhhh', '56f69648515cd.jpg', 5555, 'aya@gmail.com', 1),
(2, 'ghshsjj', 'j', 'bbb', 'jjjj', 'jjjjj', '56f69648515cd.jpg', 9876, 'aya@gmail.com', 1),
(3, 'jjjjjjj', 'jjjjjjjjjjj', 'jjjjj', 'ffffffffffffff', 'jjjjjjjjjjjjjjjj', 'photos/56f69648515cd.jpg', 77656, 'jj@g.com', 1),
(4, 'mmmmmmmmm', 'kkkkkk', 'kkkkk', 'kkkkkkkkkkkkkkkkk', 'kkkkkk', 'photos/56f69647a6635.jpg', 8777, 'n@g.com', 1),
(5, 'faresdgd', 'hhhhhhhhhh', 'hfhhgh', 'hhhhhhhhhhhhhhhhhhhhh', 'hhhhhhhhhhhhhhhhh', 'photos/56f69647db229.jpg', 8776, 'fdfd@g.com', 2),
(6, 'jjjdjdjdjdjj', 'jjjjjjjjjjjjjjj', 'jjjj', 'jjjjjjjjjjjjjjjjjjjjjjjj', 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 'photos/56f69645e2238.jpg', 87474, 'ara@g.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `aqar_property`
--

CREATE TABLE IF NOT EXISTS `aqar_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `sellerType` varchar(100) NOT NULL,
  `size` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` longtext NOT NULL,
  `city` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `services` varchar(100) NOT NULL,
  `facilities` varchar(100) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `payment_method` varchar(100) NOT NULL,
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aqar_property_user_id_id_0c6251ff_fk_aqar_userprofile_id` (`user_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `aqar_property`
--

INSERT INTO `aqar_property` (`id`, `category`, `type`, `sellerType`, `size`, `price`, `title`, `description`, `city`, `area`, `street`, `services`, `facilities`, `picture`, `payment_method`, `user_id_id`) VALUES
(1, 'apartment', 'for_sell', 'private_owner', 88888, 88888, 'gggg', 'GGGGGG', 'Sohag', 'fsffs', 'gggg', 'GGGGGGGGGGG', 'GGGGGGGGGGGGG', 'static/uploads/default.jpg', '8888', 2),
(2, 'apartment', 'for_sell', 'private_owner', 88888, 88888, 'gggg', 'GGGGGG', 'Sohag', 'fsffs', 'gggg', 'GGGGGGGGGGG', 'GGGGGGGGGGGGG', '', '8888', 2),
(3, 'apartment', 'for_sell', 'private_owner', 9999, 999, 'hhhh', 'hhhhh', 'Qina', 'gggg', 'ggggg', 'hhhhhhhhh', 'hhhhhhhhhh', '', '9999', 2);

-- --------------------------------------------------------

--
-- Table structure for table `aqar_pr_property`
--

CREATE TABLE IF NOT EXISTS `aqar_pr_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prop_type` varchar(100) NOT NULL,
  `p_section` varchar(100) NOT NULL,
  `sellerRole` varchar(100) NOT NULL,
  `size` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` varchar(500) NOT NULL,
  `city` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `view` varchar(100) NOT NULL,
  `rooms` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `Baths` int(11) NOT NULL,
  `year_bulit` int(11) NOT NULL,
  `finish_type` varchar(100) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `video` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `project_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aqar_pr_property_bfec2ef8` (`project_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `aqar_pr_property`
--

INSERT INTO `aqar_pr_property` (`id`, `prop_type`, `p_section`, `sellerRole`, `size`, `price`, `title`, `description`, `city`, `area`, `street`, `view`, `rooms`, `floor`, `Baths`, `year_bulit`, `finish_type`, `img`, `video`, `phone`, `payment`, `project_id_id`) VALUES
(1, 'Apartment', 'For Sale', 'Property Owner', 1, 222, 'hhhhh', 'jjjjjjjjjjjj', 'cairo', 'strat', 'hdhdh', 'Side Street', 23, 2, 3, 1990, 'Extra Supper Lux', 'photos/HTML5_ziNrsjx.png', 'https://www.youtube.com', 128838, 'Cash', 1),
(2, 'Apartment', 'For Sale', 'Property Owner', 9888, 888, 'hhhhhhh', 'hhhhhh', 'fhfhh', 'hhhhhh', 'hhhhhh', 'Side Street', 88, 88, 88, 1999, 'Extra Supper Lux', 'photos/56f69647a6635_eS1Wb8P.jpg', 'https://www.youtube.com', 5985858, 'Cash', 1),
(3, 'Apartment', 'For Sale', 'Property Owner', 33, 66, 'hhhh', 'hhhhhh', 'hhdhh', 'hhhhhh', 'hhhhhh', 'Side Street', 66, 666, 666, 1990, 'Extra Supper Lux', 'photos/56f69647db229_MCdDGbL.jpg', 'https://www.youtube.com', 987, 'Cash', 6);

-- --------------------------------------------------------

--
-- Table structure for table `aqar_userprofile`
--

CREATE TABLE IF NOT EXISTS `aqar_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `currancy` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `img_height` int(11) NOT NULL,
  `img_width` int(11) NOT NULL,
  `user_photo` varchar(100),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `aqar_userprofile`
--

INSERT INTO `aqar_userprofile` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `phone`, `currancy`, `type`, `country`, `img_height`, `img_width`, `user_photo`) VALUES
(1, 'pbkdf2_sha256$24000$s0LbLaiQoZHI$+qjIii0eoVj3iJ6i7RMW5cECK4AGBOcUnuyCNCzeyg4=', '2016-04-06 09:43:04', 1, 'Rana', '', '', 'eng.ranafouad.2013@gmail.com', 1, 1, '2016-04-05 11:09:24', NULL, NULL, NULL, NULL, 0, 0, NULL),
(2, '!bX7pFwp7IHHvPeOwrngj8jAg5X49kW7EO3rDNSm9', '2016-04-06 09:33:05', 0, 'rana2', 'Rana', 'Fouad', 'rana_ranaonly@yahoo.com', 0, 1, '2016-04-05 11:17:42', NULL, NULL, NULL, NULL, 0, 0, NULL),
(3, '!1wMLbYuXRTturghF02w8BkVQFP8Xkwmm5sEfoRnK', '2016-04-05 17:50:09', 0, 'ranafouad92', 'rana', 'fouad', '', 0, 1, '2016-04-05 11:20:54', NULL, NULL, NULL, NULL, 0, 0, NULL),
(4, 'pbkdf2_sha256$24000$OjHCuUjPseMG$o1cEk3cPxP/vNOU0VOAAo4bS281oOt8UzVcFbCkZGso=', NULL, 0, 'ranaa', 'rana', 'fouad', 'rana@gmail.com', 0, 1, '2016-04-05 13:12:57', NULL, NULL, NULL, NULL, 0, 0, ''),
(5, 'pbkdf2_sha256$24000$dP7VtKGZz4NW$a2VG6sFl9prvBQ0YoZd3eKyNV/6P62G89izHyvmrDbg=', '2016-04-05 13:15:30', 0, 'ranaaaa', 'rana', 'fouad', 'enn@mail.com', 0, 1, '2016-04-05 13:15:30', 1273226828, 'egp', 'rrrr', 'Rana', 0, 0, ''),
(6, 'pbkdf2_sha256$24000$2SEtlNkPstb9$0GSMi36JKkF15r2aRQJNPrTXxg3uqGCexVgwIRudggg=', '2016-04-05 13:22:47', 0, 'hazem', 'hazem', 'taha', 'hazem@mail.com', 0, 1, '2016-04-05 13:22:47', 1145566332, 'egp', 'rrrr', 'Rana', 512, 512, './HTML5.png');

-- --------------------------------------------------------

--
-- Table structure for table `aqar_userprofile_groups`
--

CREATE TABLE IF NOT EXISTS `aqar_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aqar_userprofile_groups_userprofile_id_ab7b5fbf_uniq` (`userprofile_id`,`group_id`),
  KEY `aqar_userprofile_groups_group_id_af4b9433_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `aqar_userprofile_user_permissions`
--

CREATE TABLE IF NOT EXISTS `aqar_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aqar_userprofile_user_permissions_userprofile_id_85b34e74_uniq` (`userprofile_id`,`permission_id`),
  KEY `aqar_userprofile_us_permission_id_9db90825_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add user', 7, 'add_userprofile'),
(20, 'Can change user', 7, 'change_userprofile'),
(21, 'Can delete user', 7, 'delete_userprofile'),
(22, 'Can add property', 8, 'add_property'),
(23, 'Can change property', 8, 'change_property'),
(24, 'Can delete property', 8, 'delete_property'),
(25, 'Can add proj', 9, 'add_proj'),
(26, 'Can change proj', 9, 'change_proj'),
(27, 'Can delete proj', 9, 'delete_proj'),
(28, 'Can add pr_property', 10, 'add_pr_property'),
(29, 'Can change pr_property', 10, 'change_pr_property'),
(30, 'Can delete pr_property', 10, 'delete_pr_property'),
(31, 'Can add notifier', 11, 'add_notifier'),
(32, 'Can change notifier', 11, 'change_notifier'),
(33, 'Can delete notifier', 11, 'delete_notifier'),
(34, 'Can add del listing', 12, 'add_dellisting'),
(35, 'Can change del listing', 12, 'change_dellisting'),
(36, 'Can delete del listing', 12, 'delete_dellisting'),
(37, 'Can add email address', 13, 'add_emailaddress'),
(38, 'Can change email address', 13, 'change_emailaddress'),
(39, 'Can delete email address', 13, 'delete_emailaddress'),
(40, 'Can add email confirmation', 14, 'add_emailconfirmation'),
(41, 'Can change email confirmation', 14, 'change_emailconfirmation'),
(42, 'Can delete email confirmation', 14, 'delete_emailconfirmation'),
(43, 'Can add social application', 15, 'add_socialapp'),
(44, 'Can change social application', 15, 'change_socialapp'),
(45, 'Can delete social application', 15, 'delete_socialapp'),
(46, 'Can add social account', 16, 'add_socialaccount'),
(47, 'Can change social account', 16, 'change_socialaccount'),
(48, 'Can delete social account', 16, 'delete_socialaccount'),
(49, 'Can add social application token', 17, 'add_socialtoken'),
(50, 'Can change social application token', 17, 'change_socialtoken'),
(51, 'Can delete social application token', 17, 'delete_socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_aqar_userprofile_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-04-05 11:14:06', '2', 'http://localhost:8000/', 1, 'Added.', 6, 1),
(2, '2016-04-05 11:15:39', '1', 'FaceAqar', 1, 'Added.', 15, 1),
(3, '2016-04-05 11:17:13', '1', 'FaceAqar', 2, 'Changed sites.', 15, 1),
(4, '2016-04-05 11:19:04', '3', 'http://127.0.0.1:8000/', 1, 'Added.', 6, 1),
(5, '2016-04-05 11:19:54', '2', 'aqartwitter', 1, 'Added.', 15, 1),
(6, '2016-04-05 11:20:25', '2', 'aqartwitter', 2, 'Changed sites.', 15, 1),
(7, '2016-04-05 13:27:29', '1', 'property object', 1, 'Added.', 8, 1),
(8, '2016-04-05 14:17:52', '2', 'property object', 1, 'Added.', 8, 1),
(9, '2016-04-05 14:20:12', '3', 'property object', 1, 'Added.', 8, 1),
(10, '2016-04-05 14:25:14', '4', 'property object', 1, 'Added.', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(13, 'account', 'emailaddress'),
(14, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(12, 'aqar', 'dellisting'),
(11, 'aqar', 'notifier'),
(9, 'aqar', 'proj'),
(8, 'aqar', 'property'),
(10, 'aqar', 'pr_property'),
(7, 'aqar', 'userprofile'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'sites', 'site'),
(16, 'socialaccount', 'socialaccount'),
(15, 'socialaccount', 'socialapp'),
(17, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-04-05 11:07:02'),
(2, 'contenttypes', '0002_remove_content_type_name', '2016-04-05 11:07:02'),
(3, 'auth', '0001_initial', '2016-04-05 11:07:04'),
(4, 'auth', '0002_alter_permission_name_max_length', '2016-04-05 11:07:04'),
(5, 'auth', '0003_alter_user_email_max_length', '2016-04-05 11:07:04'),
(6, 'auth', '0004_alter_user_username_opts', '2016-04-05 11:07:04'),
(7, 'auth', '0005_alter_user_last_login_null', '2016-04-05 11:07:04'),
(8, 'auth', '0006_require_contenttypes_0002', '2016-04-05 11:07:04'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2016-04-05 11:07:04'),
(10, 'aqar', '0001_initial', '2016-04-05 11:07:07'),
(11, 'account', '0001_initial', '2016-04-05 11:07:08'),
(12, 'account', '0002_email_max_length', '2016-04-05 11:07:08'),
(13, 'admin', '0001_initial', '2016-04-05 11:07:09'),
(14, 'admin', '0002_logentry_remove_auto_add', '2016-04-05 11:07:09'),
(15, 'sessions', '0001_initial', '2016-04-05 11:07:09'),
(16, 'sites', '0001_initial', '2016-04-05 11:07:09'),
(17, 'sites', '0002_alter_domain_unique', '2016-04-05 11:07:09'),
(18, 'socialaccount', '0001_initial', '2016-04-05 11:07:11'),
(19, 'socialaccount', '0002_token_max_lengths', '2016-04-05 11:07:13'),
(20, 'socialaccount', '0003_extra_data_default_dict', '2016-04-05 11:07:13'),
(21, 'aqar', '0002_auto_20160405_1311', '2016-04-05 13:11:44'),
(22, 'aqar', '0003_auto_20160406_1205', '2016-04-06 12:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('eeeoape3q47q8pb5rmup69to1zsmue78', 'OTEwZDQ2ODk0Zjc5ZWUzNGI0ZDZmMTQ4YzgzYjIxMjUyNWJkMTgzOTp7InNvY2lhbGFjY291bnRfc3RhdGUiOlt7InByb2Nlc3MiOiJsb2dpbiIsInNjb3BlIjoiIiwiYXV0aF9wYXJhbXMiOiIiLCJuZXh0IjoiL2FkZC1wcm9wZXJ0eSJ9LCJZcWpGazhRamlMa2IiXX0=', '2016-04-20 12:00:31'),
('h6oimzapvo2097e5vtne693917ja3414', 'NmNkZDA1OTczMzJlYjY3ZGY5NmVkMTI4YmJiMzBkZTA4NjIxYWE1ZTp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiMjA2NWYwYzVmZDE1ZTZjNWZkNmQ0M2E1NGM1YmNiODFiZTUwYTIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2016-04-19 14:18:02'),
('qlr5kbccsim23s5glgtzhuqyuemxjhyq', 'NmNkZDA1OTczMzJlYjY3ZGY5NmVkMTI4YmJiMzBkZTA4NjIxYWE1ZTp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiMjA2NWYwYzVmZDE1ZTZjNWZkNmQ0M2E1NGM1YmNiODFiZTUwYTIzOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2016-04-20 09:43:05'),
('wcs5a6eblxj4ppvdjt7ppj15ux33pamx', 'YjA4ZTEwZmY5NTE4ZDUxMTZiMjEyZTQ0YWRmNTIwZDJhZjg5N2M5Zjp7ImNpdHkiOiJoaGRoaCIsIl9hdXRoX3VzZXJfaGFzaCI6ImE1OGI3NzFkYWViMDJlOWU1YTlmZjAyN2U3ZGJjMzdmNWRhNGZkMzEiLCJfYXV0aF91c2VyX2lkIjoiMiIsImFyZWEiOiJoaGhoaGgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJhbGxhdXRoLmFjY291bnQuYXV0aF9iYWNrZW5kcy5BdXRoZW50aWNhdGlvbkJhY2tlbmQiLCJzdHJlZXQiOiJoaGhoaGgiLCJsaXN0X3R5cGUiOiJBcGFydG1lbnQiLCJsaXN0X3NlY3Rpb24iOiJGb3IgU2FsZSIsInByb2plY3RfaWQiOjZ9', '2016-04-20 10:00:49'),
('xs60kn8p7qpgfyiwvmqt0tji9sex4wwo', 'ZWEwMTM0MTJmYzhmMjBjMjE4NTg1MDUwZGFkZDIwMDUzM2MzNzI0Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjIwNjVmMGM1ZmQxNWU2YzVmZDZkNDNhNTRjNWJjYjgxYmU1MGEyMzgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-04-19 14:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com'),
(2, 'http://localhost:8000/', 'FaceAqar'),
(3, 'http://127.0.0.1:8000/', 'aqartwitter');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE IF NOT EXISTS `socialaccount_socialaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialaccount_provider_fc810c6e_uniq` (`provider`,`uid`),
  KEY `socialaccount_socialacco_user_id_8146e70c_fk_aqar_userprofile_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `socialaccount_socialaccount`
--

INSERT INTO `socialaccount_socialaccount` (`id`, `provider`, `uid`, `last_login`, `date_joined`, `extra_data`, `user_id`) VALUES
(1, 'facebook', '1028998400521153', '2016-04-06 09:33:04', '2016-04-05 11:17:42', '{"first_name": "Rana", "last_name": "Fouad", "name": "Rana Fouad", "gender": "female", "email": "rana_ranaonly@yahoo.com", "id": "1028998400521153"}', 2),
(2, 'twitter', '716978461940846593', '2016-04-05 17:50:09', '2016-04-05 11:20:54', '{"follow_request_sent": false, "has_extended_profile": false, "profile_use_background_image": true, "default_profile_image": true, "id": 716978461940846593, "profile_background_image_url_https": null, "verified": false, "profile_text_color": "333333", "profile_image_url_https": "https://abs.twimg.com/sticky/default_profile_images/default_profile_5_normal.png", "profile_sidebar_fill_color": "DDEEF6", "entities": {"description": {"urls": []}}, "followers_count": 1, "profile_sidebar_border_color": "C0DEED", "id_str": "716978461940846593", "profile_background_color": "F5F8FA", "listed_count": 0, "is_translation_enabled": false, "utc_offset": null, "statuses_count": 0, "description": "", "friends_count": 0, "location": "", "profile_link_color": "2B7BB9", "profile_image_url": "http://abs.twimg.com/sticky/default_profile_images/default_profile_5_normal.png", "following": false, "geo_enabled": false, "profile_background_image_url": null, "screen_name": "ranafouad92", "lang": "en", "profile_background_tile": false, "favourites_count": 0, "name": "rana fouad", "notifications": false, "url": null, "created_at": "Mon Apr 04 13:19:21 +0000 2016", "contributors_enabled": false, "time_zone": null, "protected": false, "default_profile": true, "is_translator": false}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE IF NOT EXISTS `socialaccount_socialapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `socialaccount_socialapp`
--

INSERT INTO `socialaccount_socialapp` (`id`, `provider`, `name`, `client_id`, `secret`, `key`) VALUES
(1, 'facebook', 'FaceAqar', '213263595707455', '54bae03559ecea966008b6a583d56787', ''),
(2, 'twitter', 'aqartwitter', 'DbXLVhv4DQ1DTYEKBeLagjXuE', 'cfteOQ8EfUhJyk2B87mNac4V4audiaUCKzGEvkRenU6vzDTmFz', '');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE IF NOT EXISTS `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `socialaccount_socialapp_sites`
--

INSERT INTO `socialaccount_socialapp_sites` (`id`, `socialapp_id`, `site_id`) VALUES
(2, 1, 1),
(1, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE IF NOT EXISTS `socialaccount_socialtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialtoken_app_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  KEY `socialacco_account_id_951f210e_fk_socialaccount_socialaccount_id` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `socialaccount_socialtoken`
--

INSERT INTO `socialaccount_socialtoken` (`id`, `token`, `token_secret`, `expires_at`, `account_id`, `app_id`) VALUES
(1, 'CAADB9kzdnD8BAA8ZCIGgvnejztRWx84JGUlVHURqSQHmGF6Cr73LgJL5n2WDDscZC2XtKhjQXJReXHvAM8YjIEBUe648tXgDdwUZC1UxnhhZBL9Ke4ualOAFN8cCa2jpyOTIDizFWYpwcHXDVm2m2yMBztR78o87vMczl9vrK4G2xc0FdZBsz0U3dAIw3YYWL8JAuZCTmUnqgntFpP36Om', '', NULL, 1, 1),
(2, '716978461940846593-cuqEeKtcHQNGjoe98VyI2eb2VvBSbNf', 'CuLTuo55kWR0beriKDyeLTVQJxcKAcIW3k5EL16yJqHKp', NULL, 2, 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_aqar_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `aqar_userprofile` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_ema_email_address_id_5b7f8c58_fk_account_emailaddress_id` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `aqar_dellisting`
--
ALTER TABLE `aqar_dellisting`
  ADD CONSTRAINT `aqar_dellisting_user_id_id_a11d3cfe_fk_aqar_userprofile_id` FOREIGN KEY (`user_id_id`) REFERENCES `aqar_userprofile` (`id`);

--
-- Constraints for table `aqar_notifier`
--
ALTER TABLE `aqar_notifier`
  ADD CONSTRAINT `aqar_notifier_user_id_id_1b45567d_fk_aqar_userprofile_id` FOREIGN KEY (`user_id_id`) REFERENCES `aqar_userprofile` (`id`);

--
-- Constraints for table `aqar_proj`
--
ALTER TABLE `aqar_proj`
  ADD CONSTRAINT `aqar_proj_user_id_id_ea35d3aa_fk_aqar_userprofile_id` FOREIGN KEY (`user_id_id`) REFERENCES `aqar_userprofile` (`id`);

--
-- Constraints for table `aqar_property`
--
ALTER TABLE `aqar_property`
  ADD CONSTRAINT `aqar_property_user_id_id_0c6251ff_fk_aqar_userprofile_id` FOREIGN KEY (`user_id_id`) REFERENCES `aqar_userprofile` (`id`);

--
-- Constraints for table `aqar_pr_property`
--
ALTER TABLE `aqar_pr_property`
  ADD CONSTRAINT `aqar_pr_property_project_id_id_bd0865bd_fk_aqar_proj_id` FOREIGN KEY (`project_id_id`) REFERENCES `aqar_proj` (`id`);

--
-- Constraints for table `aqar_userprofile_groups`
--
ALTER TABLE `aqar_userprofile_groups`
  ADD CONSTRAINT `aqar_userprofile_groups_group_id_af4b9433_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `aqar_userprofile__userprofile_id_db7ab202_fk_aqar_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `aqar_userprofile` (`id`);

--
-- Constraints for table `aqar_userprofile_user_permissions`
--
ALTER TABLE `aqar_userprofile_user_permissions`
  ADD CONSTRAINT `aqar_userprofile_us_permission_id_9db90825_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `aqar_userprofile__userprofile_id_bd9fa573_fk_aqar_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `aqar_userprofile` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_aqar_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `aqar_userprofile` (`id`),
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialacco_user_id_8146e70c_fk_aqar_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `aqar_userprofile` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  ADD CONSTRAINT `socialaccoun_socialapp_id_97fb6e7d_fk_socialaccount_socialapp_id` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_soci_app_id_636a42d7_fk_socialaccount_socialapp_id` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialacco_account_id_951f210e_fk_socialaccount_socialaccount_id` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
