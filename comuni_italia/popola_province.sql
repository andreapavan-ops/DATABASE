USE `comuni_italiani`;

INSERT INTO `province` (`nome`, `sigla`, `regione_id`)
SELECT DISTINCT
  c.denominazione_uts,
  c.sigla_automobilistica,
  r.id
FROM `comuni_raw` c
JOIN `regioni` r
  ON r.codice_istat = LPAD(c.codice_regione, 2, '0') COLLATE utf8mb4_unicode_ci;
