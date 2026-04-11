-- =============================================================
--  MASTER SCRIPT — Normalizzazione Comuni Italiani (ISTAT)
--  Database: comuni_italiani
--  Ordine di esecuzione: dall'inizio alla fine in un unico file
-- =============================================================

USE `comuni_italiani`;

-- -------------------------------------------------------------
-- STEP 1 — Creazione tabella REGIONI
-- La tabella "padre" principale: deve esistere prima delle altre
-- -------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `regioni` (
  `id`                      INT AUTO_INCREMENT PRIMARY KEY,
  `nome`                    VARCHAR(100) NOT NULL,
  `codice_istat`            CHAR(2) NOT NULL UNIQUE,
  `ripartizione_geografica` ENUM('Nord-ovest','Nord-est','Centro','Sud','Isole') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -------------------------------------------------------------
-- STEP 2 — Creazione tabella PROVINCE
-- Dipende da regioni: usa FK → regioni.id
-- -------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `province` (
  `id`         INT AUTO_INCREMENT PRIMARY KEY,
  `nome`       VARCHAR(100) NOT NULL,
  `sigla`      CHAR(2) NOT NULL UNIQUE,
  `regione_id` INT NOT NULL,
  CONSTRAINT `fk_province_regioni`
    FOREIGN KEY (`regione_id`) REFERENCES `regioni` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -------------------------------------------------------------
-- STEP 3 — Creazione tabella COMUNI (normalizzata)
-- Dipende da province: usa FK → province.id
-- DROP TABLE IF EXISTS: ricrea da zero se già esiste
-- -------------------------------------------------------------

DROP TABLE IF EXISTS `comuni`;

CREATE TABLE `comuni` (
  `id`                INT AUTO_INCREMENT PRIMARY KEY,
  `nome`              VARCHAR(255) NOT NULL,
  `nome_altra_lingua` VARCHAR(255) DEFAULT NULL,
  `codice_istat`      VARCHAR(10)  DEFAULT NULL,
  `codice_catastale`  CHAR(4)      DEFAULT NULL,
  `flag_capoluogo`    TINYINT(1)   NOT NULL DEFAULT 0,
  `provincia_id`      INT          NOT NULL,
  CONSTRAINT `fk_comuni_province`
    FOREIGN KEY (`provincia_id`) REFERENCES `province` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- -------------------------------------------------------------
-- STEP 4 — Popolamento REGIONI (20 valori fissi)
-- I codici ISTAT sono sempre 2 cifre: '01', '02'...
-- -------------------------------------------------------------

INSERT INTO `regioni` (`codice_istat`, `nome`, `ripartizione_geografica`) VALUES
('01', 'Piemonte',                              'Nord-ovest'),
('02', 'Valle d\'Aosta/Vallée d\'Aoste',        'Nord-ovest'),
('03', 'Lombardia',                             'Nord-ovest'),
('04', 'Trentino-Alto Adige/Südtirol',          'Nord-est'),
('05', 'Veneto',                                'Nord-est'),
('06', 'Friuli-Venezia Giulia',                 'Nord-est'),
('07', 'Liguria',                               'Nord-ovest'),
('08', 'Emilia-Romagna',                        'Nord-est'),
('09', 'Toscana',                               'Centro'),
('10', 'Umbria',                                'Centro'),
('11', 'Marche',                                'Centro'),
('12', 'Lazio',                                 'Centro'),
('13', 'Abruzzo',                               'Sud'),
('14', 'Molise',                                'Sud'),
('15', 'Campania',                              'Sud'),
('16', 'Puglia',                                'Sud'),
('17', 'Basilicata',                            'Sud'),
('18', 'Calabria',                              'Sud'),
('19', 'Sicilia',                               'Isole'),
('20', 'Sardegna',                              'Isole');

-- -------------------------------------------------------------
-- STEP 5 — Popolamento PROVINCE da comuni_raw (107 province)
-- INSERT...SELECT: i dati vengono letti direttamente da comuni_raw
-- DISTINCT: evita duplicati (ogni provincia compare una sola volta)
-- LPAD: converte '1' → '01' per fare match con codice_istat in regioni
-- COLLATE: risolve il conflitto di charset tra le due tabelle
-- -------------------------------------------------------------

INSERT INTO `province` (`nome`, `sigla`, `regione_id`)
SELECT DISTINCT
  c.denominazione_uts,
  c.sigla_automobilistica,
  r.id
FROM `comuni_raw` c
JOIN `regioni` r
  ON r.codice_istat = LPAD(c.codice_regione, 2, '0') COLLATE utf8mb4_unicode_ci;

-- -------------------------------------------------------------
-- STEP 6 — Popolamento COMUNI da comuni_raw (7896 comuni)
-- NULLIF(..., ''): trasforma stringhe vuote in NULL
-- CAST(...AS UNSIGNED): converte '0'/'1' da VARCHAR a intero
-- JOIN su province tramite sigla automobilistica
-- -------------------------------------------------------------

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

-- -------------------------------------------------------------
-- STEP 7 — Verifica finale
-- Risultato atteso: 20 regioni, 107 province, 7896 comuni
-- -------------------------------------------------------------

SELECT COUNT(*) AS totale_regioni  FROM regioni;
SELECT COUNT(*) AS totale_province FROM province;
SELECT COUNT(*) AS totale_comuni   FROM comuni;
