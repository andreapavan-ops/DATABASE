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
-- Table structure for table `città`
--

DROP TABLE IF EXISTS `città`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `città` (
  `id_citta` int NOT NULL AUTO_INCREMENT,
  `nome_citta` varchar(100) NOT NULL,
  `cap` char(5) DEFAULT NULL,
  `id_provincia_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_citta`),
  KEY `fk_citta_provincia_idx` (`id_provincia_fk`),
  CONSTRAINT `fk_citta_provincia` FOREIGN KEY (`id_provincia_fk`) REFERENCES `provincia` (`id_provincia`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Terza tabella del database WebCommerce - AREA GEOGRAFICA';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `città`
--

LOCK TABLES `città` WRITE;
/*!40000 ALTER TABLE `città` DISABLE KEYS */;
INSERT INTO `città` VALUES (1,'Venezia','30100',1),(2,'Mestre','30171',1),(3,'Chioggia','30015',1),(4,'Milano','20100',2),(5,'Sesto San Giovanni','20099',2),(6,'Monza','20900',2),(7,'Roma','00100',3),(8,'Ostia','00121',3),(9,'Tivoli','00019',3),(10,'Parigi','75001',4),(11,'Versailles','78000',4),(12,'Boulogne','92100',4),(13,'Lione','69001',5),(14,'Villeurbanne','69100',5),(15,'Caluire','69300',5),(16,'Madrid','28001',6),(17,'Alcala','28801',6),(18,'Getafe','28901',6),(19,'Venezia','30100',1),(20,'Mestre','30171',1),(21,'Chioggia','30015',1),(22,'Milano','20100',2),(23,'Sesto San Giovanni','20099',2),(24,'Monza','20900',2),(25,'Roma','00100',3),(26,'Ostia','00121',3),(27,'Tivoli','00019',3),(28,'Parigi','75001',4),(29,'Versailles','78000',4),(30,'Boulogne','92100',4),(31,'Lione','69001',5),(32,'Villeurbanne','69100',5),(33,'Caluire','69300',5),(34,'Madrid','28001',6),(35,'Alcala','28801',6),(36,'Getafe','28901',6);
/*!40000 ALTER TABLE `città` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-10 14:28:53
