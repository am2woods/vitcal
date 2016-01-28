# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.29)
# Database: vitamins
# Generation Time: 2015-06-14 20:37:55 +0000
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
	(30,'sweet potato','vegetable',NULL);

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
	(1,8,8,128,0),
	(2,19,8,123,0),
	(3,19,1,123,0),
	(4,1,9,246,0),
	(5,17,10,143,2),
	(6,2,9,132,0),
	(7,3,9,132,0),
	(8,18,10,144,1);

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
	(11,'Vitamin K',NULL);

/*!40000 ALTER TABLE `vitamins` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
