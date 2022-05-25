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
-- Table structure for table `shop_has_products`
--

DROP TABLE IF EXISTS `shop_has_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_has_products` (
  `Shop_idShop` int NOT NULL,
  `Shop_Discount_card_idDiscount card` int NOT NULL,
  `Shop_Discount_card_Owner_idOwner` int NOT NULL,
  `Products_idProducts` int NOT NULL,
  PRIMARY KEY (`Shop_idShop`,`Shop_Discount_card_idDiscount card`,`Shop_Discount_card_Owner_idOwner`,`Products_idProducts`),
  KEY `fk_Shop_has_Products_Products1_idx` (`Products_idProducts`),
  KEY `fk_Shop_has_Products_Shop1_idx` (`Shop_idShop`,`Shop_Discount_card_idDiscount card`,`Shop_Discount_card_Owner_idOwner`),
  CONSTRAINT `fk_Shop_has_Products_Products1` FOREIGN KEY (`Products_idProducts`) REFERENCES `products` (`idProducts`),
  CONSTRAINT `fk_Shop_has_Products_Shop1` FOREIGN KEY (`Shop_idShop`, `Shop_Discount_card_idDiscount card`, `Shop_Discount_card_Owner_idOwner`) REFERENCES `shop` (`idShop`, `Discount_card_idDiscount_card`, `Discount_card_Owner_idOwner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_has_products`
--

LOCK TABLES `shop_has_products` WRITE;
/*!40000 ALTER TABLE `shop_has_products` DISABLE KEYS */;
INSERT INTO `shop_has_products` VALUES (9,8,2,1),(35,26,2,1),(36,25,1,1),(41,10,2,2),(11,11,2,4),(15,14,1,5),(17,16,1,5),(23,20,1,5),(33,24,1,5),(34,24,1,5),(37,27,1,5),(38,33,1,6),(27,29,3,7),(40,28,3,7),(21,20,1,8),(22,20,1,8),(24,20,1,8),(2,2,4,9),(7,6,4,9),(31,32,1,9),(32,32,1,9),(3,3,2,10),(5,4,1,10),(8,7,1,10),(18,17,5,11),(19,18,5,11),(1,1,4,12),(14,13,3,12),(30,32,1,12),(39,34,1,12),(4,31,4,13),(29,23,4,13),(6,5,1,14),(25,21,1,14),(26,22,1,14),(12,11,2,16),(16,15,3,16),(28,25,1,16),(10,9,1,17),(13,12,1,18),(20,19,3,19);
/*!40000 ALTER TABLE `shop_has_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 22:21:01
