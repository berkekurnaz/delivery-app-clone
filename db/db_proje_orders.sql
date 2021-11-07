-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: db_proje
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `subscriptionId` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `deliveryDate` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `paymentMethod` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `products` varchar(1000) COLLATE utf8_turkish_ci DEFAULT NULL,
  `totalAmount` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('1','abc123','2017-05-02 00:13','BKM','[{\"product\":\"19 lt damanaca\", \n\"quantity\":1 }]','10.00','NEW'),('2','abc123','2017-04-23 20:05','MASTERPASS','[{\"product\":\"19 lt damanaca\", \n\"quantity\":1 }, {\"product\":\"10 \nlt pet\", \"quantity\":2 }]','24.00','CONFIRMED'),('3','abc125','2017-04-23 20:05','PAYATDOOR','[{\"product\":\"19 lt damanaca\", \n\"quantity\":3 }]','36.00','COMPLETED'),('4','abc125','2017-04-23 20:05','MASTERPASS','[{\"product\":\"19 lt damanaca\", \n\"quantity\":1 }, {\"product\":\"5 lt \npet\", \"quantity\":3 }]','36.00','CANCELED');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-07 14:53:15
