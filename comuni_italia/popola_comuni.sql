USE `comuni_italiani`;

INSERT INTO `comuni` (`nome`, `nome_altra_lingua`, `codice_istat`, `codice_catastale`, `flag_capoluogo`, `provincia_id`)
SELECT
  c.denominazione_italiano,
  NULLIF(c.denominazione_altra_lingua, ''),
  c.codice_comune_alfanumerico,
  c.codice_catastale,
  CAST(c.flag_capoluogo AS UNSIGNED),
  p.id
FROM `comuni_raw` c
JOIN `province` p
  ON p.sigla = c.sigla_automobilistica COLLATE utf8mb4_unicode_ci;
