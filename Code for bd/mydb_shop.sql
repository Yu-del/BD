-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `idShop` int NOT NULL,
  `Shop_name` tinytext,
  `Online_shop` mediumtext,
  `Discount_card_idDiscount_card` int NOT NULL,
  `Discount_card_Owner_idOwner` int NOT NULL,
  `Discount_value_idDiscount_value` int NOT NULL,
  `Shop_type_idShop_type` int NOT NULL,
  PRIMARY KEY (`idShop`,`Discount_card_idDiscount_card`,`Discount_card_Owner_idOwner`,`Discount_value_idDiscount_value`,`Shop_type_idShop_type`),
  KEY `fk_Shop_Discount card1_idx` (`Discount_card_idDiscount_card`,`Discount_card_Owner_idOwner`),
  KEY `fk_Shop_Discount value1_idx` (`Discount_value_idDiscount_value`),
  KEY `fk_Shop_Shop type1_idx` (`Shop_type_idShop_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'Евроопт',NULL,1,4,1,3),(2,'Дионис',NULL,2,4,3,1),(3,'Салон связи',NULL,3,2,1,5),(4,'ORTOS',NULL,31,4,3,2),(5,'XiStore',NULL,4,1,4,5),(6,'Царское золото',NULL,5,1,6,6),(7,'Рублевский',NULL,6,4,2,1),(8,'5 Элемент',NULL,7,1,1,5),(9,'MISSHA',NULL,8,2,3,5),(10,'KARCHER',NULL,9,1,4,6),(11,'Kari ',NULL,11,2,5,6),(12,'Kari Kids',NULL,11,2,5,6),(13,'САКС',NULL,12,1,2,2),(14,'MiniMax',NULL,13,3,1,3),(15,'Gloria Jeans',NULL,14,1,3,5),(16,'Буслік',NULL,15,3,1,4),(17,'Conte',NULL,16,1,3,6),(18,'ГЕММА',NULL,17,5,4,6),(19,'Материк',NULL,18,5,4,4),(20,'Сэлти оптика',NULL,19,3,1,5),(21,'Спортланлия',NULL,20,1,3,1),(22,'MySPORT',NULL,20,1,3,5),(23,'FootTerra',NULL,20,1,3,5),(24,'Columbia',NULL,20,1,3,6),(25,'ZIKO',NULL,21,1,6,6),(26,'7Карат',NULL,22,1,6,6),(27,'ZOObazar',NULL,29,3,7,5),(28,'Теремок',NULL,25,1,7,5),(29,'Лигматон',NULL,23,4,3,5),(30,'Алми',NULL,32,1,3,1),(31,'Spar',NULL,32,1,3,1),(32,'Zakrama',NULL,32,1,3,1),(33,'MilaVitsa',NULL,24,1,2,5),(34,'Lauma',NULL,24,1,2,5),(35,'Бьюти',NULL,26,2,3,2),(36,'Белита-Витэкс',NULL,25,1,2,5),(37,'Ostin',NULL,27,1,3,5),(38,'Остров чистоты',NULL,33,1,3,3),(39,'Мила',NULL,34,1,3,3),(40,'ZOOМир',NULL,28,3,7,5),(41,'OZ',NULL,10,2,5,5);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 22:21:04
