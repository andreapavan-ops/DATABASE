-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: andrea_pavan
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
  `id_utente` int NOT NULL AUTO_INCREMENT,
  `email_utente` varchar(45) NOT NULL,
  `password_utente` varchar(45) NOT NULL,
  PRIMARY KEY (`id_utente`),
  UNIQUE KEY `email_utente_UNIQUE` (`email_utente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Terza tabella del database WebCommerce - AREA GEOGRAFICA';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `città`
--

LOCK TABLES `città` WRITE;
/*!40000 ALTER TABLE `città` DISABLE KEYS */;
/*!40000 ALTER TABLE `città` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dettaglioutente`
--

DROP TABLE IF EXISTS `dettaglioutente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dettaglioutente` (
  `id_dettaglio` int NOT NULL AUTO_INCREMENT,
  `id_utente_fk` int DEFAULT NULL,
  `nome_DettaglioUtente` varchar(45) DEFAULT NULL,
  `cognome_DettaglioUtente` varchar(45) DEFAULT NULL,
  `codice_fiscale_DettaglioUtente` varchar(16) DEFAULT NULL,
  `telefono_DettaglioUtente` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_dettaglio`),
  UNIQUE KEY `dettaglioUtentecol_UNIQUE` (`nome_DettaglioUtente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='quinta tabella woocommerce - AREA UTENTE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dettaglioutente`
--

LOCK TABLES `dettaglioutente` WRITE;
/*!40000 ALTER TABLE `dettaglioutente` DISABLE KEYS */;
INSERT INTO `dettaglioutente` VALUES (1,1,'andrea','pavan','PVNNDR67D16L407H','3896046915');
/*!40000 ALTER TABLE `dettaglioutente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nazione`
--

DROP TABLE IF EXISTS `nazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nazione` (
  `id_nazione` int NOT NULL AUTO_INCREMENT,
  `nome_nazione` varchar(45) NOT NULL,
  PRIMARY KEY (`id_nazione`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='prima tabella woocommerce - AREA GEOGRAFICA';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nazione`
--

LOCK TABLES `nazione` WRITE;
/*!40000 ALTER TABLE `nazione` DISABLE KEYS */;
/*!40000 ALTER TABLE `nazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `id_provincia` int NOT NULL AUTO_INCREMENT,
  `nome_provincia` varchar(45) NOT NULL,
  `sigla_provincia` char(2) DEFAULT NULL,
  `id_nazione_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='seconda tabella woocommerce - AREA GEOGRAFICA';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id_utente`),
  UNIQUE KEY `email_utente_UNIQUE` (`email_utente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='quarta tabella woocommerce - AREA UTENTE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'andrea_pavan'
--

--
-- Dumping routines for database 'andrea_pavan'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-13 17:00:22
