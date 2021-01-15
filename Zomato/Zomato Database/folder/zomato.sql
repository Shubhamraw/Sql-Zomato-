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

--
-- Table structure for table `restaurants_menu`
--

DROP TABLE IF EXISTS `restaurants_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants_menu` (
  `rid` int(11) NOT NULL,
  `item_price` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  KEY `rid_idx` (`rid`),
  CONSTRAINT `rid` FOREIGN KEY (`rid`) REFERENCES `restaurants` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants_menu`
--

LOCK TABLES `restaurants_menu` WRITE;
/*!40000 ALTER TABLE `restaurants_menu` DISABLE KEYS */;
INSERT INTO `restaurants_menu` VALUES (1,'Dosa',80),(1,'Pani Puri',60),(1,'Chapathi',80),(1,'Butter Chicken',230),(1,'Panner 65',250),(1,'Butter Dosa',110),(1,'Veg Biriyani',250),(1,'Garlic Bread',257),(1,'Chicken Biriyani',258),(1,'Butter Non',259),(1,'Upma',260),(1,'pongali',261),(1,'Idly',262),(1,'Vada',263),(1,'Pepper Carrot',264),(1,'Baby Corn fry',250),(2,'Dosa',238),(2,'Pani Puri',189),(2,'Chapathi',125),(2,'Butter Chicken',197),(2,'Panner 65',113),(2,'Butter Dosa',148),(2,'Veg Biriyani',213),(2,'Garlic Bread',175),(2,'Chicken Biriyani',244),(2,'Butter Non',158),(2,'Upma',172),(2,'pongali',192),(2,'Idly',171),(2,'Vada',176),(2,'Pepper Carrot',133),(2,'Baby Corn fry',88),(3,'Dosa',96),(3,'Pani Puri',102),(3,'Chapathi',188),(3,'Butter Chicken',224),(3,'Panner 65',113),(3,'Butter Dosa',127),(3,'Veg Biriyani',193),(3,'Garlic Bread',194),(3,'Chicken Biriyani',232),(3,'Butter Non',82),(3,'Upma',119),(3,'pongali',86),(3,'Idly',171),(3,'Vada',182),(3,'Pepper Carrot',139),(3,'Baby Corn fry',122),(4,'Dosa',233),(4,'Pani Puri',147),(4,'Chapathi',201),(4,'Butter Chicken',161),(4,'Panner 65',208),(4,'Butter Dosa',104),(4,'Veg Biriyani',183),(4,'Garlic Bread',84),(4,'Chicken Biriyani',170),(4,'Butter Non',177),(4,'Upma',119),(4,'pongali',214),(4,'Idly',226),(4,'Vada',207),(4,'Pepper Carrot',238),(4,'Baby Corn fry',164),(5,'Dosa',129),(5,'Pani Puri',85),(5,'Chapathi',214),(5,'Butter Chicken',212),(5,'Panner 65',180),(5,'Butter Dosa',90),(5,'Veg Biriyani',92),(5,'Garlic Bread',178),(5,'Chicken Biriyani',109),(5,'Butter Non',155),(5,'Upma',205),(5,'pongali',124),(5,'Idly',237),(5,'Vada',209),(5,'Pepper Carrot',170),(5,'Baby Corn fry',93),(6,'Dosa',151),(6,'Pani Puri',209),(6,'Chapathi',85),(6,'Butter Chicken',220),(6,'Panner 65',215),(6,'Butter Dosa',147),(6,'Veg Biriyani',110),(6,'Garlic Bread',136),(6,'Chicken Biriyani',216),(6,'Butter Non',147),(6,'Upma',194),(6,'pongali',148),(6,'Idly',243),(6,'Vada',133),(6,'Pepper Carrot',136),(6,'Baby Corn fry',93),(7,'Dosa',143),(7,'Pani Puri',225),(7,'Chapathi',117),(7,'Butter Chicken',140),(7,'Panner 65',88),(7,'Butter Dosa',117),(7,'Veg Biriyani',182),(7,'Garlic Bread',232),(7,'Chicken Biriyani',147),(7,'Butter Non',116),(7,'Upma',89),(7,'pongali',106),(7,'Idly',248),(7,'Vada',109),(7,'Pepper Carrot',160),(7,'Baby Corn fry',152),(8,'Dosa',93),(8,'Pani Puri',97),(8,'Chapathi',174),(8,'Butter Chicken',199),(8,'Panner 65',233),(8,'Butter Dosa',142),(8,'Veg Biriyani',128),(8,'Garlic Bread',173),(8,'Chicken Biriyani',170),(8,'Butter Non',203),(8,'Upma',130),(8,'pongali',93),(8,'Idly',138),(8,'Vada',199),(8,'Pepper Carrot',109),(8,'Baby Corn fry',125),(9,'Dosa',215),(9,'Pani Puri',199),(9,'Chapathi',93),(9,'Butter Chicken',157),(9,'Panner 65',231),(9,'Butter Dosa',146),(9,'Veg Biriyani',89),(9,'Garlic Bread',113),(9,'Chicken Biriyani',88),(9,'Butter Non',129),(9,'Upma',112),(9,'pongali',102),(9,'Idly',196),(9,'Vada',242),(9,'Pepper Carrot',217),(9,'Baby Corn fry',125),(10,'Dosa',183),(10,'Pani Puri',245),(10,'Chapathi',193),(10,'Butter Chicken',175),(10,'Panner 65',162),(10,'Butter Dosa',187),(10,'Veg Biriyani',189),(10,'Garlic Bread',227),(10,'Chicken Biriyani',90),(10,'Butter Non',225),(10,'Upma',100),(10,'pongali',82),(10,'Idly',126),(10,'Vada',150),(10,'Pepper Carrot',138),(10,'Baby Corn fry',227),(11,'Dosa',159),(11,'Pani Puri',223),(11,'Chapathi',163),(11,'Butter Chicken',149),(11,'Panner 65',131),(11,'Butter Dosa',135),(11,'Veg Biriyani',105),(11,'Garlic Bread',146),(11,'Chicken Biriyani',152),(11,'Butter Non',94),(11,'Upma',235),(11,'pongali',174),(11,'Idly',149),(11,'Vada',136),(11,'Pepper Carrot',109),(11,'Baby Corn fry',95),(12,'Dosa',106),(12,'Pani Puri',124),(12,'Chapathi',172),(12,'Butter Chicken',112),(12,'Panner 65',204),(12,'Butter Dosa',172),(12,'Veg Biriyani',249),(12,'Garlic Bread',223),(12,'Chicken Biriyani',158),(12,'Butter Non',119),(12,'Upma',249),(12,'pongali',191),(12,'Idly',84),(12,'Vada',221),(12,'Pepper Carrot',99),(13,'Baby Corn fry',121),(13,'Chicken Biriyani',102),(13,'Butter Non',196),(13,'Upma',243),(13,'pongali',188),(13,'Idly',232),(13,'Vada',237),(13,'Pepper Carrot',167),(13,'Baby Corn fry',225);
/*!40000 ALTER TABLE `restaurants_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) NOT NULL,
  `uaddress` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Claire Gute','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(2,'Darrin Van Huff','BluPetal Hotel, 60 Jyoti Nivas College Road, Koramangala 5th Block, Bangalore'),(3,'Sean O\'Donnell','610, 3rd Floor, 12th Main, Off 80 Feet Road, Indiranagar, Bangalore'),(4,'Brosina Hoffman','298, Namma Metro Pillar 62, 100 Feet Road, Indiranagar, Bangalore'),(5,'Andrew Allen','840/1,100 Feet Road, Metro Pillar 56-57, Indiranagar, Bangalore'),(6,'Irene Maddox','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(7,'Harold Pawlan','297, 100 Feet Road, Indiranagar, Bangalore'),(8,'Pete Kriz','501, Binnamangala Extension, 1st stage, C.M.H Road, Indiranagar, Bangalore'),(9,'Alejandro Grove','Site 15, 15th Cross, 100 Feet Road, 4th Phase, JP Nagar, Bangalore'),(10,'Zuschuss Donatelli','44, 4th B Cross, Koramangala 5th Block, Bangalore'),(11,'Ken Black','28, 4th \'B\' Cross, Koramangala 5th Block, Bangalore'),(12,'Sandra Flanagan','105, 1st A Cross Road, Jyothi Nivas College Road, Koramangala 5th Block, Bangalore'),(13,'Emily Burns','11, 80 Feet Road, Opposite Indian Oil Petrol Pump, Koramangala 6th Block, Bangalore'),(14,'Eric Hoffmann','118, Koramangala Industrial Area, Koramangala 7th Block, Bangalore'),(15,'Tracy Blumstein','90/4, 3rd Floor, Outer Ring Road, Munnekollaly Village, Marathahalli, Bangalore'),(16,'Matt Abelman','9/1, 1st Floor, Above Surya Nissan, VRR Orchid, Doddanakkundi, Marathahalli, Bangalore'),(17,'Gene Hale','215, 216 & 220, Devasandra Village, Kasaba Hobli, New BEL Road, Bangalore'),(18,'Steve Nguyen','67 & 68, Brigade Solitaire, Opposite to Advaith Hyundai, Residency Road, Bangalore'),(19,'Linda Cazamias','Behind MK Retail, Before WIPRO Corporate Office, Sarjapur Road, Bangalore'),(20,'Ruben Ausman','BBMP 2034/69, Block 2, Kaikondrahalli, Varthur Hobli, Sarjapur Road, Bangalore'),(21,'Erin Smith','202, Level 2, UB City, Vittal Mallya Road, Lavelle Road, Bangalore'),(22,'Odella Nelson','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(23,'Patrick O\'Donnell','BluPetal Hotel, 60 Jyoti Nivas College Road, Koramangala 5th Block, Bangalore'),(24,'Lena Hernandez','610, 3rd Floor, 12th Main, Off 80 Feet Road, Indiranagar, Bangalore'),(25,'Darren Powers','298, Namma Metro Pillar 62, 100 Feet Road, Indiranagar, Bangalore'),(26,'Janet Molinari','840/1,100 Feet Road, Metro Pillar 56-57, Indiranagar, Bangalore'),(27,'Ted Butterfield','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(28,'Kunst Miller','297, 100 Feet Road, Indiranagar, Bangalore'),(29,'Paul Stevenson','501, Binnamangala Extension, 1st stage, C.M.H Road, Indiranagar, Bangalore'),(30,'Brendan Sweed','Site 15, 15th Cross, 100 Feet Road, 4th Phase, JP Nagar, Bangalore'),(31,'Karen Daniels','44, 4th B Cross, Koramangala 5th Block, Bangalore'),(32,'Henry MacAllister','28, 4th \'B\' Cross, Koramangala 5th Block, Bangalore'),(33,'Joel Eaton','105, 1st A Cross Road, Jyothi Nivas College Road, Koramangala 5th Block, Bangalore'),(34,'Ken Brennan','11, 80 Feet Road, Opposite Indian Oil Petrol Pump, Koramangala 6th Block, Bangalore'),(35,'Stewart Carmichael','118, Koramangala Industrial Area, Koramangala 7th Block, Bangalore'),(36,'Duane Noonan','90/4, 3rd Floor, Outer Ring Road, Munnekollaly Village, Marathahalli, Bangalore'),(37,'Julie Creighton','9/1, 1st Floor, Above Surya Nissan, VRR Orchid, Doddanakkundi, Marathahalli, Bangalore'),(38,'Christopher Schild','215, 216 & 220, Devasandra Village, Kasaba Hobli, New BEL Road, Bangalore'),(39,'Paul Gonzalez','67 & 68, Brigade Solitaire, Opposite to Advaith Hyundai, Residency Road, Bangalore'),(40,'Gary Mitchum','Behind MK Retail, Before WIPRO Corporate Office, Sarjapur Road, Bangalore'),(41,'Jim Sink','BBMP 2034/69, Block 2, Kaikondrahalli, Varthur Hobli, Sarjapur Road, Bangalore'),(42,'Karl Braun','202, Level 2, UB City, Vittal Mallya Road, Lavelle Road, Bangalore'),(43,'Roger Barcio','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(44,'Parhena Norris','BluPetal Hotel, 60 Jyoti Nivas College Road, Koramangala 5th Block, Bangalore'),(45,'Katherine Ducich','610, 3rd Floor, 12th Main, Off 80 Feet Road, Indiranagar, Bangalore'),(46,'Elpida Rittenbach','298, Namma Metro Pillar 62, 100 Feet Road, Indiranagar, Bangalore'),(47,'Rick Bensley','840/1,100 Feet Road, Metro Pillar 56-57, Indiranagar, Bangalore'),(48,'Gary Zandusky','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(49,'Lena Cacioppo','297, 100 Feet Road, Indiranagar, Bangalore'),(50,'Janet Martin','501, Binnamangala Extension, 1st stage, C.M.H Road, Indiranagar, Bangalore'),(51,'Pete Armstrong','Site 15, 15th Cross, 100 Feet Road, 4th Phase, JP Nagar, Bangalore'),(52,'Cynthia Voltz','44, 4th B Cross, Koramangala 5th Block, Bangalore'),(53,'Clay Ludtke','28, 4th \'B\' Cross, Koramangala 5th Block, Bangalore'),(54,'Ryan Crowe','105, 1st A Cross Road, Jyothi Nivas College Road, Koramangala 5th Block, Bangalore'),(55,'Dave Kipp','11, 80 Feet Road, Opposite Indian Oil Petrol Pump, Koramangala 6th Block, Bangalore'),(56,'Greg Guthrie','118, Koramangala Industrial Area, Koramangala 7th Block, Bangalore'),(57,'Steven Cartwright','90/4, 3rd Floor, Outer Ring Road, Munnekollaly Village, Marathahalli, Bangalore'),(58,'Alan Dominguez','9/1, 1st Floor, Above Surya Nissan, VRR Orchid, Doddanakkundi, Marathahalli, Bangalore'),(59,'Philip Fox','215, 216 & 220, Devasandra Village, Kasaba Hobli, New BEL Road, Bangalore'),(60,'Troy Staebel','67 & 68, Brigade Solitaire, Opposite to Advaith Hyundai, Residency Road, Bangalore'),(61,'Lindsay Shagiari','Behind MK Retail, Before WIPRO Corporate Office, Sarjapur Road, Bangalore'),(62,'Dorothy Wardle','BBMP 2034/69, Block 2, Kaikondrahalli, Varthur Hobli, Sarjapur Road, Bangalore'),(63,'Lena Creighton','202, Level 2, UB City, Vittal Mallya Road, Lavelle Road, Bangalore'),(64,'Jonathan Doherty','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(65,'Sally Hughsby','BluPetal Hotel, 60 Jyoti Nivas College Road, Koramangala 5th Block, Bangalore'),(66,'Sandra Glassco','610, 3rd Floor, 12th Main, Off 80 Feet Road, Indiranagar, Bangalore'),(67,'Helen Andreada','298, Namma Metro Pillar 62, 100 Feet Road, Indiranagar, Bangalore'),(68,'Maureen Gastineau','840/1,100 Feet Road, Metro Pillar 56-57, Indiranagar, Bangalore'),(69,'Justin Ellison','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(70,'Tamara Willingham','297, 100 Feet Road, Indiranagar, Bangalore'),(71,'Stephanie Phelps','501, Binnamangala Extension, 1st stage, C.M.H Road, Indiranagar, Bangalore'),(72,'Neil Knudson','Site 15, 15th Cross, 100 Feet Road, 4th Phase, JP Nagar, Bangalore'),(73,'Dave Brooks','44, 4th B Cross, Koramangala 5th Block, Bangalore'),(74,'Nora Paige','28, 4th \'B\' Cross, Koramangala 5th Block, Bangalore'),(75,'Ted Trevino','105, 1st A Cross Road, Jyothi Nivas College Road, Koramangala 5th Block, Bangalore'),(76,'Eric Murdock','11, 80 Feet Road, Opposite Indian Oil Petrol Pump, Koramangala 6th Block, Bangalore'),(77,'Ruben Dartt','118, Koramangala Industrial Area, Koramangala 7th Block, Bangalore'),(78,'Max Jones','90/4, 3rd Floor, Outer Ring Road, Munnekollaly Village, Marathahalli, Bangalore'),(79,'Becky Martin','9/1, 1st Floor, Above Surya Nissan, VRR Orchid, Doddanakkundi, Marathahalli, Bangalore'),(80,'Chad Sievert','215, 216 & 220, Devasandra Village, Kasaba Hobli, New BEL Road, Bangalore'),(81,'Jennifer Braxton','67 & 68, Brigade Solitaire, Opposite to Advaith Hyundai, Residency Road, Bangalore'),(82,'Shirley Jackson','Behind MK Retail, Before WIPRO Corporate Office, Sarjapur Road, Bangalore'),(83,'Jim Kriz','BBMP 2034/69, Block 2, Kaikondrahalli, Varthur Hobli, Sarjapur Road, Bangalore'),(84,'David Kendrick','202, Level 2, UB City, Vittal Mallya Road, Lavelle Road, Bangalore'),(85,'Robert Marley','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(86,'Sally Knutson','BluPetal Hotel, 60 Jyoti Nivas College Road, Koramangala 5th Block, Bangalore'),(87,'Frank Merwin','610, 3rd Floor, 12th Main, Off 80 Feet Road, Indiranagar, Bangalore'),(88,'Alice McCarthy','298, Namma Metro Pillar 62, 100 Feet Road, Indiranagar, Bangalore'),(89,'Mark Packer','840/1,100 Feet Road, Metro Pillar 56-57, Indiranagar, Bangalore'),(90,'Mary Zewe','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(91,'Cassandra Brandow','297, 100 Feet Road, Indiranagar, Bangalore'),(92,'Valerie Mitchum','501, Binnamangala Extension, 1st stage, C.M.H Road, Indiranagar, Bangalore'),(93,'Fred Hopkins','Site 15, 15th Cross, 100 Feet Road, 4th Phase, JP Nagar, Bangalore'),(94,'Maria Bertelson','44, 4th B Cross, Koramangala 5th Block, Bangalore'),(95,'Bruce Stewart','28, 4th \'B\' Cross, Koramangala 5th Block, Bangalore'),(96,'Logan Currie','105, 1st A Cross Road, Jyothi Nivas College Road, Koramangala 5th Block, Bangalore'),(97,'Heather Kirkland','11, 80 Feet Road, Opposite Indian Oil Petrol Pump, Koramangala 6th Block, Bangalore'),(98,'Laurel Elliston','118, Koramangala Industrial Area, Koramangala 7th Block, Bangalore'),(99,'Joseph Holt','90/4, 3rd Floor, Outer Ring Road, Munnekollaly Village, Marathahalli, Bangalore'),(100,'Michael Stewart','9/1, 1st Floor, Above Surya Nissan, VRR Orchid, Doddanakkundi, Marathahalli, Bangalore'),(101,'Victoria Wilson','215, 216 & 220, Devasandra Village, Kasaba Hobli, New BEL Road, Bangalore'),(102,'Jonathan Howell','67 & 68, Brigade Solitaire, Opposite to Advaith Hyundai, Residency Road, Bangalore'),(103,'Joni Blumstein','Behind MK Retail, Before WIPRO Corporate Office, Sarjapur Road, Bangalore'),(104,'David Smith','BBMP 2034/69, Block 2, Kaikondrahalli, Varthur Hobli, Sarjapur Road, Bangalore'),(105,'Valerie Dominguez','202, Level 2, UB City, Vittal Mallya Road, Lavelle Road, Bangalore'),(106,'Erin Ashbrook','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(107,'David Bremer','BluPetal Hotel, 60 Jyoti Nivas College Road, Koramangala 5th Block, Bangalore'),(108,'Ken Lonsdale','610, 3rd Floor, 12th Main, Off 80 Feet Road, Indiranagar, Bangalore'),(109,'Dianna Wilson','298, Namma Metro Pillar 62, 100 Feet Road, Indiranagar, Bangalore'),(110,'Logan Haushalter','840/1,100 Feet Road, Metro Pillar 56-57, Indiranagar, Bangalore'),(111,'Kelly Collister','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(112,'Delfina Latchford','297, 100 Feet Road, Indiranagar, Bangalore'),(113,'Dan Reichenbach','501, Binnamangala Extension, 1st stage, C.M.H Road, Indiranagar, Bangalore'),(114,'Craig Carreira','Site 15, 15th Cross, 100 Feet Road, 4th Phase, JP Nagar, Bangalore'),(115,'Dorris liebe','44, 4th B Cross, Koramangala 5th Block, Bangalore'),(116,'Sean Braxton','28, 4th \'B\' Cross, Koramangala 5th Block, Bangalore'),(117,'Roy Collins','105, 1st A Cross Road, Jyothi Nivas College Road, Koramangala 5th Block, Bangalore'),(118,'Alan Hwang','11, 80 Feet Road, Opposite Indian Oil Petrol Pump, Koramangala 6th Block, Bangalore'),(119,'Claudia Bergmann','118, Koramangala Industrial Area, Koramangala 7th Block, Bangalore'),(120,'Christine Abelman','90/4, 3rd Floor, Outer Ring Road, Munnekollaly Village, Marathahalli, Bangalore'),(121,'Kristen Hastings','9/1, 1st Floor, Above Surya Nissan, VRR Orchid, Doddanakkundi, Marathahalli, Bangalore'),(122,'Barry Blumstein','215, 216 & 220, Devasandra Village, Kasaba Hobli, New BEL Road, Bangalore'),(123,'Andrew Gjertsen','67 & 68, Brigade Solitaire, Opposite to Advaith Hyundai, Residency Road, Bangalore'),(124,'Jas O\'Carroll','Behind MK Retail, Before WIPRO Corporate Office, Sarjapur Road, Bangalore'),(125,'Alan Haines','BBMP 2034/69, Block 2, Kaikondrahalli, Varthur Hobli, Sarjapur Road, Bangalore'),(126,'Nick Zandusky','202, Level 2, UB City, Vittal Mallya Road, Lavelle Road, Bangalore'),(127,'Kelly Lampkin','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(128,'Alan Schoenberger','BluPetal Hotel, 60 Jyoti Nivas College Road, Koramangala 5th Block, Bangalore'),(129,'Corey Roper','610, 3rd Floor, 12th Main, Off 80 Feet Road, Indiranagar, Bangalore'),(130,'Shahid Hopkins','298, Namma Metro Pillar 62, 100 Feet Road, Indiranagar, Bangalore'),(131,'Ben Peterman','840/1,100 Feet Road, Metro Pillar 56-57, Indiranagar, Bangalore'),(132,'Thomas Seio','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(133,'Andy Gerbode','297, 100 Feet Road, Indiranagar, Bangalore'),(134,'Sung Pak','501, Binnamangala Extension, 1st stage, C.M.H Road, Indiranagar, Bangalore'),(135,'Nathan Mautz','Site 15, 15th Cross, 100 Feet Road, 4th Phase, JP Nagar, Bangalore'),(136,'Frank Atkinson','44, 4th B Cross, Koramangala 5th Block, Bangalore'),(137,'Grace Kelly','28, 4th \'B\' Cross, Koramangala 5th Block, Bangalore'),(138,'Don Jones','105, 1st A Cross Road, Jyothi Nivas College Road, Koramangala 5th Block, Bangalore'),(139,'Patrick O\'Brill','11, 80 Feet Road, Opposite Indian Oil Petrol Pump, Koramangala 6th Block, Bangalore'),(140,'John Lucas','118, Koramangala Industrial Area, Koramangala 7th Block, Bangalore'),(141,'Doug Bickford','90/4, 3rd Floor, Outer Ring Road, Munnekollaly Village, Marathahalli, Bangalore'),(142,'Alyssa Crouse','9/1, 1st Floor, Above Surya Nissan, VRR Orchid, Doddanakkundi, Marathahalli, Bangalore'),(143,'Clay Cheatham','215, 216 & 220, Devasandra Village, Kasaba Hobli, New BEL Road, Bangalore'),(144,'Tamara Dahlen','67 & 68, Brigade Solitaire, Opposite to Advaith Hyundai, Residency Road, Bangalore'),(145,'Adam Bellavance','Behind MK Retail, Before WIPRO Corporate Office, Sarjapur Road, Bangalore'),(146,'Jeremy Lonsdale','BBMP 2034/69, Block 2, Kaikondrahalli, Varthur Hobli, Sarjapur Road, Bangalore'),(147,'Victoria Brennan','202, Level 2, UB City, Vittal Mallya Road, Lavelle Road, Bangalore'),(148,'Katrina Willman','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(149,'Julia Dunbar','BluPetal Hotel, 60 Jyoti Nivas College Road, Koramangala 5th Block, Bangalore'),(150,'Michael Kennedy','610, 3rd Floor, 12th Main, Off 80 Feet Road, Indiranagar, Bangalore'),(151,'Guy Thornton','298, Namma Metro Pillar 62, 100 Feet Road, Indiranagar, Bangalore'),(152,'Arthur Gainer','840/1,100 Feet Road, Metro Pillar 56-57, Indiranagar, Bangalore'),(153,'Muhammed MacIntyre','2989/B, 12th Main Road, HAL 2nd Stage, Indiranagar, Bangalore'),(154,'Allen Rosenblatt','297, 100 Feet Road, Indiranagar, Bangalore'),(155,'Russell Applegate','501, Binnamangala Extension, 1st stage, C.M.H Road, Indiranagar, Bangalore'),(156,'Alejandro Savely','Site 15, 15th Cross, 100 Feet Road, 4th Phase, JP Nagar, Bangalore'),(157,'Laura Armstrong','44, 4th B Cross, Koramangala 5th Block, Bangalore'),(158,'Denny Ordway','28, 4th \'B\' Cross, Koramangala 5th Block, Bangalore'),(159,'Dean Katz','105, 1st A Cross Road, Jyothi Nivas College Road, Koramangala 5th Block, Bangalore'),(160,'Nathan Gelder','11, 80 Feet Road, Opposite Indian Oil Petrol Pump, Koramangala 6th Block, Bangalore'),(161,'Mike Vittorini','118, Koramangala Industrial Area, Koramangala 7th Block, Bangalore'),(162,'Jack Garza','90/4, 3rd Floor, Outer Ring Road, Munnekollaly Village, Marathahalli, Bangalore'),(163,'Bart Pistole','9/1, 1st Floor, Above Surya Nissan, VRR Orchid, Doddanakkundi, Marathahalli, Bangalore'),(164,'Victor Preis','215, 216 & 220, Devasandra Village, Kasaba Hobli, New BEL Road, Bangalore'),(165,'Saphhira Shifley','67 & 68, Brigade Solitaire, Opposite to Advaith Hyundai, Residency Road, Bangalore'),(166,'Anna Gayman','Behind MK Retail, Before WIPRO Corporate Office, Sarjapur Road, Bangalore'),(167,'Luke Foster','BBMP 2034/69, Block 2, Kaikondrahalli, Varthur Hobli, Sarjapur Road, Bangalore');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-25 16:53:32
