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
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(80) NOT NULL,
  `raddress` longtext,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,'Sultans of Spice','BluPetal Hotel, 60 Jyoti Nivas College Road, Koramangala 5th Block, Bangalore',4.1),(2,'The Fatty Bao - Asian Gastro Bar','610, 3rd Floor, 12th Main, Off 80 Feet Road, Indiranagar, Bangalore',4.7),(3,'Toit','298, Namma Metro Pillar 62, 100 Feet Road, Indiranagar, Bangalore',4.8),(4,'Three Dots & A Dash','840/1,100 Feet Road, Metro Pillar 56-57, Indiranagar, Bangalore',3.9),(5,'Bombay Brasserie','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore',4.2),(6,'Glen\'s Bakehouse','297, 100 Feet Road, Indiranagar, Bangalore',4),(7,'Onesta','501, Binnamangala Extension, 1st stage, C.M.H Road, Indiranagar, Bangalore',4.3),(8,'Onesta','Site 15, 15th Cross, 100 Feet Road, 4th Phase, JP Nagar, Bangalore',4.6),(9,'ECHOES Koramangala','44, 4th B Cross, Koramangala 5th Block, Bangalore',4.7),(10,'Truffles','28, 4th \'B\' Cross, Koramangala 5th Block, Bangalore',4.7),(11,'The Black Pearl','105, 1st A Cross Road, Jyothi Nivas College Road, Koramangala 5th Block, Bangalore',4.1),(12,'Eat Street','11, 80 Feet Road, Opposite Indian Oil Petrol Pump, Koramangala 6th Block, Bangalore',4.3),(13,'Koramangala Social','118, Koramangala Industrial Area, Koramangala 7th Block, Bangalore',4.5),(14,'AB\'s - Absolute Barbecues','90/4, 3rd Floor, Outer Ring Road, Munnekollaly Village, Marathahalli, Bangalore',4.6),(15,'Flechazo','9/1, 1st Floor, Above Surya Nissan, VRR Orchid, Doddanakkundi, Marathahalli, Bangalore',4.4),(16,'Onesta','215, 216 & 220, Devasandra Village, Kasaba Hobli, New BEL Road, Bangalore',4.6),(17,'Communiti','67 & 68, Brigade Solitaire, Opposite to Advaith Hyundai, Residency Road, Bangalore',4.2),(18,'Big Brewsky','Behind MK Retail, Before WIPRO Corporate Office, Sarjapur Road, Bangalore',4.5),(19,'Hoot','BBMP 2034/69, Block 2, Kaikondrahalli, Varthur Hobli, Sarjapur Road, Bangalore',3.9),(20,'Farzi Cafe','202, Level 2, UB City, Vittal Mallya Road, Lavelle Road, Bangalore',4.4);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
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
