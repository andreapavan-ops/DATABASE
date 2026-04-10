USE `comuni_italiani`;

CREATE TABLE IF NOT EXISTS `province` (
  `id`          INT AUTO_INCREMENT PRIMARY KEY,
  `nome`        VARCHAR(100) NOT NULL,
  `sigla`       CHAR(2) NOT NULL UNIQUE,
  `regione_id`  INT NOT NULL,
  CONSTRAINT `fk_province_regioni` FOREIGN KEY (`regione_id`) REFERENCES `regioni` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
