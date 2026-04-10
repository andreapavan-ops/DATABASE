-- MySQL dump 10.13  Distrib 8.0.45, for macos15 (x86_64)
--
-- Host: localhost    Database: db_woocommerce
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `id_utente` int NOT NULL AUTO_INCREMENT,
  `email_utente` varchar(45) NOT NULL,
  `password_utente` varchar(45) NOT NULL,
  `data_registrazione` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_utente`),
  UNIQUE KEY `email_utente_UNIQUE` (`email_utente`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='quarta tabella woocommerce - AREA UTENTE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'utente1@gmail.com','Pass@1234','2023-05-12 10:30:00'),(2,'utente2@gmail.com','Pass@5678','2022-11-03 08:15:00'),(3,'utente3@gmail.com','Pass@3521','2022-11-03 08:15:01'),(4,'utente4@gmail.com','Pass@4134','2022-11-03 08:15:02'),(5,'utente5@gmail.com','Pass@9055','2022-11-03 08:15:03'),(6,'utente6@gmail.com','Pass@5846','2022-11-03 08:15:04'),(7,'utente7@gmail.com','Pass@6642','2022-11-03 08:15:05'),(8,'utente8@gmail.com','Pass@3203','2022-11-03 08:15:06'),(9,'utente9@gmail.com','Pass@7554','2022-11-03 08:15:07'),(10,'utente10@gmail.com','Pass@9470','2022-11-03 08:15:08'),(11,'utente11@gmail.com','Pass@1714','2022-11-03 08:15:09'),(12,'utente12@gmail.com','Pass@9148','2022-11-03 08:15:10'),(13,'utente13@gmail.com','Pass@1997','2022-11-03 08:15:11'),(14,'utente14@gmail.com','Pass@4487','2022-11-03 08:15:12'),(15,'utente15@gmail.com','Pass@7939','2022-11-03 08:15:13'),(16,'utente16@gmail.com','Pass@7673','2022-11-03 08:15:14'),(17,'utente17@gmail.com','Pass@6683','2022-11-03 08:15:15'),(18,'utente18@gmail.com','Pass@5434','2022-11-03 08:15:16'),(19,'utente19@gmail.com','Pass@2411','2022-11-03 08:15:17'),(20,'utente20@gmail.com','Pass@3941','2022-11-03 08:15:18'),(21,'utente21@gmail.com','Pass@2968','2022-11-03 08:15:19'),(22,'utente22@gmail.com','Pass@2861','2022-11-03 08:15:20'),(23,'utente23@gmail.com','Pass@5928','2022-11-03 08:15:21'),(24,'utente24@gmail.com','Pass@9850','2022-11-03 08:15:22'),(25,'utente25@gmail.com','Pass@9449','2022-11-03 08:15:23'),(26,'utente26@gmail.com','Pass@9234','2022-11-03 08:15:24'),(27,'utente27@gmail.com','Pass@5010','2022-11-03 08:15:25'),(28,'utente28@gmail.com','Pass@7180','2022-11-03 08:15:26'),(29,'utente29@gmail.com','Pass@1744','2022-11-03 08:15:27'),(30,'utente30@gmail.com','Pass@5282','2022-11-03 08:15:28'),(31,'utente31@gmail.com','Pass@6113','2022-11-03 08:15:29'),(32,'utente32@gmail.com','Pass@9855','2022-11-03 08:15:30'),(33,'utente33@gmail.com','Pass@2809','2022-11-03 08:15:31'),(34,'utente34@gmail.com','Pass@3906','2022-11-03 08:15:32'),(35,'utente35@gmail.com','Pass@4147','2022-11-03 08:15:33'),(36,'utente36@gmail.com','Pass@1419','2022-11-03 08:15:34'),(37,'utente37@gmail.com','Pass@9042','2022-11-03 08:15:35'),(38,'utente38@gmail.com','Pass@1699','2022-11-03 08:15:36'),(39,'utente39@gmail.com','Pass@6444','2022-11-03 08:15:37'),(40,'utente40@gmail.com','Pass@6473','2022-11-03 08:15:38'),(41,'utente41@gmail.com','Pass@9004','2022-11-03 08:15:39'),(42,'utente42@gmail.com','Pass@5404','2022-11-03 08:15:40'),(43,'utente43@gmail.com','Pass@2097','2022-11-03 08:15:41'),(44,'utente44@gmail.com','Pass@4508','2022-11-03 08:15:42'),(45,'utente45@gmail.com','Pass@1606','2022-11-03 08:15:43'),(46,'utente46@gmail.com','Pass@2984','2022-11-03 08:15:44'),(47,'utente47@gmail.com','Pass@5431','2022-11-03 08:15:45'),(48,'utente48@gmail.com','Pass@3270','2022-11-03 08:15:46'),(49,'utente49@gmail.com','Pass@3926','2022-11-03 08:15:47'),(50,'utente50@gmail.com','Pass@8960','2022-11-03 08:15:48'),(51,'utente51@gmail.com','Pass@8329','2022-11-03 08:15:49'),(52,'utente52@gmail.com','Pass@9200','2022-11-03 08:15:50'),(53,'utente53@gmail.com','Pass@9264','2022-11-03 08:15:51');
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-10 14:28:56
