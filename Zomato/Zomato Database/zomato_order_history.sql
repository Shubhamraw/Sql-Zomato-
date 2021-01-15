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
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_history` (
  `item_name` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `rid` int(11) NOT NULL,
  KEY `rid` (`rid`),
  KEY `order_history_ibfk_1` (`uid`),
  CONSTRAINT `order_history_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`),
  CONSTRAINT `order_history_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `restaurants` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` VALUES ('Dosa',1,'2019-10-20',12),('Pani Puri',1,'2019-10-02',9),('Chapathi',1,'2019-10-06',13),('Butter Chicken',1,'2019-10-03',13),('Panner 65',2,'2019-10-18',9),('Butter Dosa',2,'2019-10-10',1),('Veg Biriyani',1,'2019-10-16',1),('Dosa',2,'2019-10-17',11),('Pani Puri',1,'2019-10-15',12),('Chapathi',2,'2019-10-02',11),('Butter Chicken',2,'2019-10-01',13),('Panner 65',1,'2019-10-05',7),('Butter Dosa',2,'2019-10-07',11),('Garlic Bread',3,'2019-10-18',7),('Chicken Biriyani',4,'2019-10-20',12),('Butter Non',5,'2019-10-15',6),('Upma',6,'2019-10-18',13),('pongali',7,'2019-10-25',4),('Idly',8,'2019-10-28',7),('Vada',9,'2019-10-30',9),('Pepper Carrot',10,'2019-10-22',2),('Baby Corn fry',11,'2019-10-26',6),('Butter Dosa',12,'2019-10-21',11),('Veg Biriyani',13,'2019-10-01',10),('Dosa',14,'2019-10-02',8),('Pani Puri',15,'2019-10-03',1),('Chapathi',16,'2019-10-06',2),('Butter Chicken',17,'2019-10-08',2),('Panner 65',18,'2019-10-05',7),('Butter Dosa',19,'2019-10-10',6),('Garlic Bread',20,'2019-10-28',6),('Chicken Biriyani',2,'2019-10-30',5),('Butter Non',2,'2019-10-25',2),('Upma',2,'2019-10-15',10),('pongali',2,'2019-10-16',4),('Idly',2,'2019-10-17',12),('Vada',2,'2019-10-19',1),('Pepper Carrot',2,'2019-10-20',2),('Baby Corn fry',2,'2019-10-21',2);
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
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
