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
-- Table structure for table `discount card`
--

DROP TABLE IF EXISTS `discount card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount card` (
  `idDiscount_card` int NOT NULL,
  `Card_name` tinytext,
  `Card_number` int DEFAULT NULL,
  `Foto` json DEFAULT NULL,
  `Discount_now` double DEFAULT NULL,
  `Owner_idOwner` int NOT NULL,
  `Online_card` mediumtext,
  PRIMARY KEY (`idDiscount_card`,`Owner_idOwner`),
  KEY `fk_Discount card_Owner_idx` (`Owner_idOwner`),
  CONSTRAINT `fk_Discount card_Owner` FOREIGN KEY (`Owner_idOwner`) REFERENCES `owner` (`idOwner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount card`
--

LOCK TABLES `discount card` WRITE;
/*!40000 ALTER TABLE `discount card` DISABLE KEYS */;
INSERT INTO `discount card` VALUES (1,'Евро плюс',2354126,NULL,5,4,NULL),(2,'Дионис',456,NULL,3,4,NULL),(3,'Салон связи',123,NULL,15,2,NULL),(4,'XiStore',852,NULL,15,1,NULL),(5,'Царское золото. VIP',741,NULL,7,1,NULL),(6,'Рублевский. Карта постоянного покупателя',963,NULL,3,4,NULL),(7,'5. Бонусная карта',147,NULL,10,1,NULL),(8,'MISSHA',258,NULL,7,2,NULL),(9,'KARCHER',369,NULL,10,1,NULL),(10,'OZ',9521,NULL,12,2,NULL),(11,'Kari Clubs',7523,NULL,12,2,NULL),(12,'САКС',856,NULL,3,1,NULL),(13,'MiniMax',15,NULL,10,3,NULL),(14,'Gloria Jeans',2336,NULL,5,1,NULL),(15,'Клуб Буслік',478,NULL,5,3,NULL),(16,'Conte',6989,NULL,3,1,NULL),(17,'ГЕММА. Семейная',8563,NULL,15,5,NULL),(18,'Материк',1254,NULL,20,5,NULL),(19,'Сэлти',4521,NULL,15,3,NULL),(20,'Волшебная карта',8547,NULL,5,1,NULL),(21,'ZIKO. Карта клиента',7854,NULL,9,1,NULL),(22,'7Карат. VIP Gold',456987,NULL,6,1,NULL),(23,'Лигматон',789654,NULL,3,4,NULL),(24,'MilaVitsa.LAUMA',456321,NULL,3,1,NULL),(25,'Мир косметики',123654,NULL,5,1,NULL),(26,'Бьюти',654123,NULL,7,2,NULL),(27,'Ostin',321456,NULL,5,1,NULL),(28,'ZOOМир.Плюс',654789,NULL,5,3,NULL),(29,'ZOObazar',987456,NULL,5,3,NULL),(30,'Теремок',852147,NULL,5,1,NULL),(31,'ORTOS',74125,NULL,7,4,NULL),(32,'ВЫГОДА!',96328,NULL,7,1,NULL),(33,'Остров чистоты',85236,NULL,7,1,NULL),(34,'Мила',21145,NULL,7,1,NULL),(35,NULL,5544156,NULL,3,1,NULL);
/*!40000 ALTER TABLE `discount card` ENABLE KEYS */;
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
