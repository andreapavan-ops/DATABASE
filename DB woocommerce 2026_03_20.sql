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
-- Table structure for table `carrello`
--

DROP TABLE IF EXISTS `carrello`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrello` (
  `id_carrello` int NOT NULL AUTO_INCREMENT,
  `data_aggiornamento_carrello` datetime DEFAULT NULL,
  `id_utente_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_carrello`),
  UNIQUE KEY `id_utente_fk_UNIQUE` (`id_utente_fk`),
  CONSTRAINT `fk_carrello_utente` FOREIGN KEY (`id_utente_fk`) REFERENCES `utente` (`id_utente`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrello`
--

LOCK TABLES `carrello` WRITE;
/*!40000 ALTER TABLE `carrello` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrello` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT COMMENT 'Ottava tabella woocommerce - AREA CATALOGO',
  `nome_categoria` varchar(100) NOT NULL COMMENT '8 tabella - categoria - 3 AREA CATALOGO',
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `corriere`
--

DROP TABLE IF EXISTS `corriere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corriere` (
  `id_corriere` int NOT NULL AUTO_INCREMENT,
  `nome_corriere` varchar(100) DEFAULT NULL COMMENT 'Diciannovesima tabella woocommerce - AREA VENDITE E PAGAMENTI',
  PRIMARY KEY (`id_corriere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corriere`
--

LOCK TABLES `corriere` WRITE;
/*!40000 ALTER TABLE `corriere` DISABLE KEYS */;
/*!40000 ALTER TABLE `corriere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon` (
  `id_coupon` int NOT NULL AUTO_INCREMENT,
  `codice_coupon` varchar(20) DEFAULT NULL,
  `sconto_percentuale_coupon` int DEFAULT NULL COMMENT 'Quattordicesima tabella woocommerce - AREA VENDITE E PAGAMENTI',
  PRIMARY KEY (`id_coupon`),
  UNIQUE KEY `codice_coupon_UNIQUE` (`codice_coupon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dettaglioOrdine`
--

DROP TABLE IF EXISTS `dettaglioOrdine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dettaglioOrdine` (
  `id_dettaglioOrdine` int NOT NULL AUTO_INCREMENT,
  `quantità_dettaglioOrdine` int DEFAULT NULL,
  `prezzo_acquisto_dettaglioOrdine` decimal(10,2) DEFAULT NULL,
  `id_ordine_fk` int DEFAULT NULL,
  `id_variante_fk` int DEFAULT NULL COMMENT 'Diciassettesima tabella woocommerce - AREA VENDITE E PAGAMENTI',
  PRIMARY KEY (`id_dettaglioOrdine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dettaglioOrdine`
--

LOCK TABLES `dettaglioOrdine` WRITE;
/*!40000 ALTER TABLE `dettaglioOrdine` DISABLE KEYS */;
/*!40000 ALTER TABLE `dettaglioOrdine` ENABLE KEYS */;
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
-- Table structure for table `fornitore`
--

DROP TABLE IF EXISTS `fornitore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornitore` (
  `id_fornitore` int NOT NULL AUTO_INCREMENT,
  `ragione_sociale` varchar(150) DEFAULT NULL,
  `partita_iva` char(11) DEFAULT NULL COMMENT 'Nona tabella woocommerce - AREA CATALOGO',
  PRIMARY KEY (`id_fornitore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornitore`
--

LOCK TABLES `fornitore` WRITE;
/*!40000 ALTER TABLE `fornitore` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornitore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indirizzo`
--

DROP TABLE IF EXISTS `indirizzo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indirizzo` (
  `id_indirizzo` int NOT NULL AUTO_INCREMENT,
  `via_indirizzo` varchar(100) DEFAULT NULL,
  `civico_indirizzo` varchar(10) DEFAULT NULL,
  `id_utente_fk` int DEFAULT NULL,
  `id_città_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_indirizzo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indirizzo`
--

LOCK TABLES `indirizzo` WRITE;
/*!40000 ALTER TABLE `indirizzo` DISABLE KEYS */;
/*!40000 ALTER TABLE `indirizzo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazzino`
--

DROP TABLE IF EXISTS `magazzino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazzino` (
  `id_magazzino` int NOT NULL AUTO_INCREMENT,
  `nome_magazzino` varchar(100) DEFAULT NULL,
  `id_citta_fk` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_magazzino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazzino`
--

LOCK TABLES `magazzino` WRITE;
/*!40000 ALTER TABLE `magazzino` DISABLE KEYS */;
/*!40000 ALTER TABLE `magazzino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `nome_marca` varchar(100) NOT NULL COMMENT 'Settima tabella - 3 AREA CATALOGO',
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodoPagamento`
--

DROP TABLE IF EXISTS `metodoPagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodoPagamento` (
  `id_metodoPagamento` int NOT NULL AUTO_INCREMENT COMMENT 'Quindicesima tabella woocommerce - AREA VENDITE E PAGAMENTI',
  `tipo_metodoPagamento` varchar(50) DEFAULT NULL COMMENT 'Quindicesima  tabella woocommerce - AREA VENDITE E PAGAMENTI',
  PRIMARY KEY (`id_metodoPagamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodoPagamento`
--

LOCK TABLES `metodoPagamento` WRITE;
/*!40000 ALTER TABLE `metodoPagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `metodoPagamento` ENABLE KEYS */;
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
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `id_ordine` int NOT NULL AUTO_INCREMENT,
  `data_ordine` datetime DEFAULT NULL,
  `totale_ordine` decimal(10,2) DEFAULT NULL,
  `stato_ordine` varchar(45) DEFAULT NULL,
  `id_utente_fk` int DEFAULT NULL,
  `id_coupon_fk` int DEFAULT NULL COMMENT 'Sedicesima tabella woocommerce - AREA VENDITE E PAGAMENTI',
  PRIMARY KEY (`id_ordine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

LOCK TABLES `ordine` WRITE;
/*!40000 ALTER TABLE `ordine` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodotto`
--

DROP TABLE IF EXISTS `prodotto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotto` (
  `id_prodotto` int NOT NULL AUTO_INCREMENT,
  `nome_prodotto` varchar(250) NOT NULL,
  `descrizione_prodotto` text,
  `id_marca_fk` int DEFAULT NULL,
  `id_fornitore_fk` int DEFAULT NULL COMMENT 'Decima tabella woocommerce - AREA CATALOGO',
  PRIMARY KEY (`id_prodotto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto`
--

LOCK TABLES `prodotto` WRITE;
/*!40000 ALTER TABLE `prodotto` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodotto` ENABLE KEYS */;
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
-- Table structure for table `recensione`
--

DROP TABLE IF EXISTS `recensione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recensione` (
  `id_recensione` int NOT NULL AUTO_INCREMENT,
  `voto_recensione` int DEFAULT NULL,
  `commento_recensione` text,
  `id_utente_fk` int DEFAULT NULL,
  `id_prodotto_fk` int DEFAULT NULL COMMENT 'Tredicesima tabella woocommerce - AREA CATALOGO',
  PRIMARY KEY (`id_recensione`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recensione`
--

LOCK TABLES `recensione` WRITE;
/*!40000 ALTER TABLE `recensione` DISABLE KEYS */;
/*!40000 ALTER TABLE `recensione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scorta`
--

DROP TABLE IF EXISTS `scorta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scorta` (
  `id_variante_fk` int NOT NULL COMMENT 'Ventiduesima tabella woocommerce - AREA LOGISTICA E MAGAZZINO',
  `id_magazzino_fk` int NOT NULL,
  `quantita_disponibile_scorta` int DEFAULT NULL,
  PRIMARY KEY (`id_variante_fk`,`id_magazzino_fk`),
  KEY `fk_scorta_magazzino_idx` (`id_magazzino_fk`),
  CONSTRAINT `fk_scorta_magazzino` FOREIGN KEY (`id_magazzino_fk`) REFERENCES `magazzino` (`id_magazzino`),
  CONSTRAINT `fk_scorta_variante` FOREIGN KEY (`id_variante_fk`) REFERENCES `variante` (`id_variante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scorta`
--

LOCK TABLES `scorta` WRITE;
/*!40000 ALTER TABLE `scorta` DISABLE KEYS */;
/*!40000 ALTER TABLE `scorta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spedizione`
--

DROP TABLE IF EXISTS `spedizione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spedizione` (
  `id_spedizione` int NOT NULL AUTO_INCREMENT,
  `tracking_code_spedizione` varchar(100) DEFAULT NULL,
  `data_partenza_spedizione` datetime DEFAULT NULL,
  `id_ordine_fk` int DEFAULT NULL,
  `id_corriere_fk` int DEFAULT NULL,
  PRIMARY KEY (`id_spedizione`),
  UNIQUE KEY `id_ordine_fk_UNIQUE` (`id_ordine_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spedizione`
--

LOCK TABLES `spedizione` WRITE;
/*!40000 ALTER TABLE `spedizione` DISABLE KEYS */;
/*!40000 ALTER TABLE `spedizione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transazione`
--

DROP TABLE IF EXISTS `transazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transazione` (
  `id_transazione` int NOT NULL AUTO_INCREMENT,
  `codice_autorizzazione_transazione` varchar(100) DEFAULT NULL,
  `esito_transazione` varchar(20) DEFAULT NULL,
  `id_ordine_fk` int DEFAULT NULL,
  `id_metodo_fk` int DEFAULT NULL COMMENT 'Diciottesima tabella woocommerce - AREA VENDITE E PAGAMENTI',
  PRIMARY KEY (`id_transazione`),
  UNIQUE KEY `id_ordine_fk_UNIQUE` (`id_ordine_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transazione`
--

LOCK TABLES `transazione` WRITE;
/*!40000 ALTER TABLE `transazione` DISABLE KEYS */;
/*!40000 ALTER TABLE `transazione` ENABLE KEYS */;
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
-- Table structure for table `variante`
--

DROP TABLE IF EXISTS `variante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variante` (
  `id_variante` int NOT NULL AUTO_INCREMENT,
  `sku_variante` varchar(50) DEFAULT NULL,
  `colore_taglia_variante` varchar(100) DEFAULT NULL,
  `prezzo_variante` decimal(10,2) DEFAULT NULL,
  `id_prodotto_fk` int DEFAULT NULL COMMENT 'Undicesima tabella woocommerce - AREA CATALOGO',
  PRIMARY KEY (`id_variante`),
  UNIQUE KEY `sku_variante_UNIQUE` (`sku_variante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variante`
--

LOCK TABLES `variante` WRITE;
/*!40000 ALTER TABLE `variante` DISABLE KEYS */;
/*!40000 ALTER TABLE `variante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-20 12:38:04
