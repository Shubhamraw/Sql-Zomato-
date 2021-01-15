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
-- Table structure for table `delivery_boy`
--

DROP TABLE IF EXISTS `delivery_boy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_boy` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(16) DEFAULT NULL,
  `mobile_no` varchar(11) DEFAULT NULL,
  `avg_rating` float DEFAULT NULL,
  `avg_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_boy`
--

LOCK TABLES `delivery_boy` WRITE;
/*!40000 ALTER TABLE `delivery_boy` DISABLE KEYS */;
INSERT INTO `delivery_boy` VALUES (1,'Harish','9874563210',NULL,NULL),(2,'Miskeen','8965471230',NULL,NULL),(3,'Siva','7896541230',NULL,NULL),(4,'shivaji','6547912308',NULL,NULL),(5,'Dileep','9966900940',NULL,NULL),(6,'Vishnu','8896547123',NULL,NULL),(7,'Ganga Prasad','7789654123',NULL,NULL),(8,'Pradeep','7896541230',NULL,NULL),(9,'Sager','8965471230',NULL,NULL),(10,'Suresh','6002134578',NULL,NULL),(11,'Uday','9630258741',NULL,NULL),(12,'Harsha','7896541230',NULL,NULL);
/*!40000 ALTER TABLE `delivery_boy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-25 16:49:10
