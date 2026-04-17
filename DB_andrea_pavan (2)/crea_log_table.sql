USE `andrea_pavan`;

CREATE TABLE IF NOT EXISTS `log_table` (
  `id_log`          INT AUTO_INCREMENT PRIMARY KEY,
  `id_dettaglio`    INT DEFAULT NULL,
  `dato_modificato` VARCHAR(255) NOT NULL,
  `operazione`      ENUM('INSERT','UPDATE','DELETE') NOT NULL,
  `data_operazione` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
