USE `comuni_italiani`;

CREATE TABLE IF NOT EXISTS `comuni` (
  `id`                INT AUTO_INCREMENT PRIMARY KEY,
  `nome`              VARCHAR(255) NOT NULL,
  `nome_altra_lingua` VARCHAR(255) DEFAULT NULL,
  `codice_istat`      VARCHAR(10)  DEFAULT NULL,
  `codice_catastale`  CHAR(4)      DEFAULT NULL,
  `flag_capoluogo`    TINYINT(1)   NOT NULL DEFAULT 0,
  `provincia_id`      INT          NOT NULL,
  CONSTRAINT `fk_comuni_province` FOREIGN KEY (`provincia_id`) REFERENCES `province` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
