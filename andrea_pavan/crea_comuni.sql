USE andrea_pavan;
CREATE TABLE comuni_italiani (
    id                  INT AUTO_INCREMENT PRIMARY KEY,
    codice_comune       INT,               -- "Codice Comune formato numerico"
    codice_alfanum      VARCHAR(10),       -- "Codice Comune formato alfanumerico"  
    nome                VARCHAR(150),      -- "Denominazione in italiano"
    nome_bilingue       VARCHAR(150),      -- "Denominazione (Italiana e straniera)"
    nome_altra_lingua   VARCHAR(150),      -- "Denominazione altra lingua" (tedesco, francese, ecc.)
    codice_regione      TINYINT,
    nome_regione        VARCHAR(60),
    codice_provincia    SMALLINT,
    nome_provincia      VARCHAR(100),
    sigla_provincia     CHAR(2),           -- es. VE, MI, RM
    capoluogo           TINYINT(1),        -- 0 o 1
    codice_catastale    CHAR(4),           -- es. A074
    ripartizione        VARCHAR(20),       -- Nord-ovest, Sud, ecc.
    codice_nuts3        VARCHAR(10)        -- ITC11, ecc.
);