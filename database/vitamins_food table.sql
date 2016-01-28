CREATE DATABASE  IF NOT EXISTS `vitamins` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `vitamins`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: vitamins
-- ------------------------------------------------------
-- Server version	5.6.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `food table`
--

DROP TABLE IF EXISTS `food table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food table` (
  `food_id` varchar(5) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food table`
--

LOCK TABLES `food table` WRITE;
/*!40000 ALTER TABLE `food table` DISABLE KEYS */;
INSERT INTO `food table` VALUES ('DF01','milk 2%','dairy'),('DF02','cheddar cheese','dairy'),('DF03','swiss cheese','dairy'),('DF04','egg yolk','dairy'),('FF01','apple','fruit'),('FF010','kiwi','fruit'),('FF011','blackberries','fruit'),('FF012','plums','fruit'),('FF02','cantoloupe','fruit'),('FF03','mangos','fruit'),('FF04','california oranges','fruit'),('FF05','lemon','fruit'),('FF06','guava','fruit'),('FF07','strawberries','fruit'),('FF08','bananas','fruit'),('FF09','blueberries','fruit'),('NF01','almonds','nuts'),('NF02','peanuts','nuts'),('NF03','pistachios','nuts'),('VF01','spinach','vegetables'),('VF010','summer squash','vegetables'),('VF011','red peppers','vegetables'),('VF02','broccoli','vegetables'),('VF03','red peppers','vegetables'),('VF04','parsley','vegetables'),('VF05','kale','vegetables'),('VF06','lettuce','vegetables'),('VF07','baby carrots','vegetables'),('VF08','basil','vegetables'),('VF09','sweet potato','vegetable');
/*!40000 ALTER TABLE `food table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-14 12:07:05
