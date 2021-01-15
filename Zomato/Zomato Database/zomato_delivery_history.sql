-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: zomato
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `delivery_history`
--

DROP TABLE IF EXISTS `delivery_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_history` (
  `did` int(11) NOT NULL,
  `deliver_time` time NOT NULL,
  `customer_rated` float DEFAULT NULL,
  KEY `did_idx` (`did`),
  CONSTRAINT `did` FOREIGN KEY (`did`) REFERENCES `delivery_boy` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_history`
--

LOCK TABLES `delivery_history` WRITE;
/*!40000 ALTER TABLE `delivery_history` DISABLE KEYS */;
INSERT INTO `delivery_history` VALUES (1,'00:00:25',4.5),(2,'00:00:56',3.5),(3,'00:00:52',3.5),(4,'00:00:54',4.5),(5,'00:00:21',4.5),(6,'00:00:25',5),(7,'00:00:43',5),(8,'00:00:48',3.4),(9,'00:00:47',3.8),(10,'00:00:45',3.9),(11,'00:00:12',3.5),(12,'00:00:51',4.2),(1,'00:00:58',4),(3,'00:00:35',4.5),(4,'00:00:45',4.3),(5,'00:00:52',5),(6,'00:00:45',4.6),(7,'00:00:25',4.5),(8,'00:00:35',3.5),(9,'00:00:23',3.5),(10,'00:00:54',4.5),(11,'00:00:25',4.5),(12,'00:00:45',5),(1,'00:00:23',5),(2,'00:00:24',3.4),(1,'00:00:23',3.8),(1,'00:00:34',3.9),(2,'00:00:35',3.5),(2,'00:00:33',4.2),(2,'00:00:22',4),(2,'00:00:44',4.2),(2,'00:00:55',4.5),(2,'00:00:44',4.3),(2,'00:00:22',5),(3,'00:00:33',4.6),(6,'00:00:55',4.5),(6,'00:00:52',3.5),(7,'00:00:52',3.5),(8,'00:00:52',4.5),(9,'00:00:45',4.5),(12,'00:00:45',5),(10,'00:00:10',5),(5,'00:00:20',3.4),(4,'00:00:30',3.8),(5,'00:00:40',3.9),(4,'00:00:50',3.5),(3,'00:00:12',4.2),(8,'00:00:15',4),(9,'00:00:30',4.2),(4,'00:00:45',4.5),(1,'00:00:32',4.3),(2,'00:00:33',5),(5,'00:00:45',4.6),(11,'00:00:25',3.2);
/*!40000 ALTER TABLE `delivery_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-25 16:49:08
