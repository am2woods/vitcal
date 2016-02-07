# ************************************************************
# Sequel Pro SQL dump
# Version 4500
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.42)
# Database: vitamins
# Generation Time: 2016-02-07 01:46:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table foods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `foods`;

CREATE TABLE `foods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;

INSERT INTO `foods` (`id`, `name`, `type`, `image_id`)
VALUES
	(1,'milk 2%','dairy',NULL),
	(2,'cheddar cheese','dairy',NULL),
	(3,'swiss cheese','dairy',NULL),
	(4,'egg yolk','dairy',NULL),
	(5,'apple','fruit',NULL),
	(6,'kiwi','fruit',NULL),
	(7,'blackberries','fruit',NULL),
	(8,'plums','fruit',NULL),
	(9,'cantoloupe','fruit',NULL),
	(10,'mangos','fruit',NULL),
	(11,'california oranges','fruit',NULL),
	(12,'lemon','fruit',NULL),
	(13,'guava','fruit',NULL),
	(14,'strawberries','fruit',NULL),
	(15,'bananas','fruit',NULL),
	(16,'blueberries','fruit',NULL),
	(17,'almonds','nuts',NULL),
	(18,'peanuts','nuts',NULL),
	(19,'pistachios','nuts',NULL),
	(20,'spinach','vegetables',NULL),
	(21,'summer squash','vegetables',NULL),
	(22,'red peppers','vegetables',NULL),
	(23,'broccoli','vegetables',NULL),
	(24,'red peppers','vegetables',NULL),
	(25,'parsley','vegetables',NULL),
	(26,'kale','vegetables',NULL),
	(27,'lettuce','vegetables',NULL),
	(28,'baby carrots','vegetables',NULL),
	(29,'basil','vegetables',NULL),
	(30,'sweet potato','vegetables',NULL),
	(31,'grapes','fruit',NULL);

/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;

INSERT INTO `images` (`id`, `path`)
VALUES
	(1,NULL);

/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table percentage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `percentage`;

CREATE TABLE `percentage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `food_id` int(11) DEFAULT NULL,
  `vitamin_id` int(11) DEFAULT NULL,
  `grams` float DEFAULT NULL,
  `percentage` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `percentage` WRITE;
/*!40000 ALTER TABLE `percentage` DISABLE KEYS */;

INSERT INTO `percentage` (`id`, `food_id`, `vitamin_id`, `grams`, `percentage`)
VALUES
	(1,8,8,128,14),
	(2,19,8,123,10),
	(3,19,1,123,14),
	(4,1,9,246,25),
	(5,17,10,143,2),
	(6,2,9,132,4),
	(7,3,9,132,15),
	(8,18,10,144,1),
	(9,4,9,28,7),
	(10,4,12,28,4),
	(11,4,14,28,22),
	(12,4,14,28,11),
	(13,1,12,246,35),
	(14,2,12,132,95),
	(15,3,12,132,104),
	(16,11,1,180,8),
	(17,11,8,180,145),
	(18,11,12,180,7),
	(19,11,13,180,1),
	(20,12,8,84,74),
	(21,13,8,55,209),
	(22,14,8,152,149),
	(23,15,8,118,17),
	(24,16,8,68,11),
	(25,17,10,143,187),
	(26,17,12,143,38),
	(27,17,13,143,30),
	(28,6,10,177,13),
	(29,6,8,177,273),
	(30,6,12,177,6),
	(31,6,13,177,3),
	(32,10,10,165,9),
	(33,18,10,144,61),
	(34,18,12,144,13),
	(35,18,13,144,37),
	(36,25,11,10,205),
	(37,25,1,10,17),
	(38,25,8,10,22),
	(39,25,13,10,3),
	(40,20,11,30,181),
	(41,29,11,5,27),
	(42,29,1,5,6),
	(43,26,11,67,684),
	(44,26,1,67,206),
	(45,26,8,67,134),
	(46,26,13,67,6),
	(47,26,12,67,9),
	(48,27,11,5,10),
	(49,27,1,5,7),
	(50,7,11,144,36),
	(51,7,1,144,6),
	(52,7,8,144,50),
	(53,7,13,144,5),
	(54,8,11,165,13),
	(55,8,1,165,11),
	(56,8,8,165,26),
	(57,31,11,92,17),
	(58,31,8,92,6),
	(59,16,11,68,16),
	(60,16,8,68,11),
	(61,NULL,NULL,NULL,0);

/*!40000 ALTER TABLE `percentage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table vitamins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vitamins`;

CREATE TABLE `vitamins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alt_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `vitamins` WRITE;
/*!40000 ALTER TABLE `vitamins` DISABLE KEYS */;

INSERT INTO `vitamins` (`id`, `name`, `alt_name`)
VALUES
	(1,'Vitamin A',NULL),
	(2,'Vitamin B','Thiamin'),
	(3,'Vitamin B12',''),
	(4,'Vitamin B2','Riboflavin'),
	(5,'Vitamin B3','Niacin'),
	(6,'Vitamin B5','Pantothenic Acid'),
	(7,'Vitamin B6',NULL),
	(8,'Vitamin C',NULL),
	(9,'Vitamin D',NULL),
	(10,'Vitamin E',NULL),
	(11,'Vitamin K',NULL),
	(12,'Calcium',NULL),
	(13,'Iron',NULL),
	(14,'Selanium',NULL),
	(15,'Phosphorus',NULL);

/*!40000 ALTER TABLE `vitamins` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
