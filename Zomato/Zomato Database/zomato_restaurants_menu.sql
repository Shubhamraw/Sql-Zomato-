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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-25 16:49:09
