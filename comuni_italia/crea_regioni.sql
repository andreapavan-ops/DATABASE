USE `comuni_italiani`;

CREATE TABLE IF NOT EXISTS `regioni` (
  `id`                      INT AUTO_INCREMENT PRIMARY KEY,
  `nome`                    VARCHAR(100) NOT NULL,
  `codice_istat`            CHAR(2) NOT NULL UNIQUE,
  `ripartizione_geografica` ENUM('Nord-ovest','Nord-est','Centro','Sud','Isole') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
