CREATE DATABASE IF NOT EXISTS `comuni_italiani` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE `comuni_italiani`;

DROP TABLE IF EXISTS `comuni`;

CREATE TABLE `comuni` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `codice_regione` VARCHAR(10),
  `codice_uts` VARCHAR(10),
  `codice_provincia_storico` VARCHAR(10),
  `progressivo_comune` VARCHAR(10),
  `codice_comune_alfanumerico` VARCHAR(10),
  `denominazione_ita_straniera` VARCHAR(255),
  `denominazione_italiano` VARCHAR(255),
  `denominazione_altra_lingua` VARCHAR(255),
  `codice_ripartizione_geografica` VARCHAR(10),
  `ripartizione_geografica` VARCHAR(100),
  `denominazione_regione` VARCHAR(100),
  `denominazione_uts` VARCHAR(255),
  `tipologia_uts` VARCHAR(100),
  `flag_capoluogo` VARCHAR(5),
  `sigla_automobilistica` VARCHAR(5),
  `codice_comune_numerico` VARCHAR(10),
  `codice_comune_110_province` VARCHAR(10),
  `codice_comune_107_province` VARCHAR(10),
  `codice_comune_103_province` VARCHAR(10),
  `codice_catastale` VARCHAR(10),
  `codice_nuts1_2021` VARCHAR(10),
  `codice_nuts2_2021` VARCHAR(10),
  `codice_nuts3_2021` VARCHAR(10),
  `codice_nuts1_2024` VARCHAR(10),
  `codice_nuts2_2024` VARCHAR(10),
  `codice_nuts3_2024` VARCHAR(10)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
