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
-- Table structure for table `percentage table`
--

DROP TABLE IF EXISTS `percentage table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `percentage table` (
  `percentage_id` varchar(6) NOT NULL,
  `food_id` varchar(45) DEFAULT NULL,
  `vitamin_id` varchar(45) DEFAULT NULL,
  `grams` int(11) DEFAULT NULL,
  `percentage` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`percentage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `percentage table`
--

LOCK TABLES `percentage table` WRITE;
/*!40000 ALTER TABLE `percentage table` DISABLE KEYS */;
INSERT INTO `percentage table` VALUES ('p01','FF01','VC01',182,0),('p010','NF02','VB05',NULL,0),('p011','NF02','VB06',NULL,0),('p012','NF03','VC01',123,0),('p013','NF03','VA',123,0),('p014','NF03','VB01',NULL,1),('p015','DF01','VD',246,0),('p016','DF01','VB01',NULL,0),('p017','DF01','VB02',NULL,0),('p018','DF01','VB05',NULL,0),('p019','DF01','VB06',NULL,0),('p02','NF01','VE',143,2),('p020','DF01','VB012',NULL,0),('p021','DF02','VD',132,0),('p022','DF02','VB02',NULL,0),('p023','DF02','VB05',NULL,0),('p024','DF02','VB06',NULL,0),('p025','DF02','VB012',NULL,0),('p026','DF03','VD',132,0),('p03','NF01','VB01',NULL,0),('p04','NF01','VB02',NULL,1),('p05','NF01','VB03',NULL,0),('p06','NF02','VE',144,1),('p07','NF02','VB01',NULL,1),('p08','NF02','VB02',NULL,0),('p09','NF02','VB03',NULL,1);
/*!40000 ALTER TABLE `percentage table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-14 12:07:06
