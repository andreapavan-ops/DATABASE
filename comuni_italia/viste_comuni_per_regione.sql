USE `comuni_italiani`;

-- Vista: comuni della regione Piemonte
CREATE OR REPLACE VIEW `v_comuni_piemonte` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '01';

-- Vista: comuni della regione Valle d'Aosta
CREATE OR REPLACE VIEW `v_comuni_valle_daosta` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '02';

-- Vista: comuni della regione Lombardia
CREATE OR REPLACE VIEW `v_comuni_lombardia` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '03';

-- Vista: comuni della regione Trentino-Alto Adige
CREATE OR REPLACE VIEW `v_comuni_trentino_alto_adige` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '04';

-- Vista: comuni della regione Veneto
CREATE OR REPLACE VIEW `v_comuni_veneto` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '05';

-- Vista: comuni della regione Friuli-Venezia Giulia
CREATE OR REPLACE VIEW `v_comuni_friuli_venezia_giulia` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '06';

-- Vista: comuni della regione Liguria
CREATE OR REPLACE VIEW `v_comuni_liguria` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '07';

-- Vista: comuni della regione Emilia-Romagna
CREATE OR REPLACE VIEW `v_comuni_emilia_romagna` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '08';

-- Vista: comuni della regione Toscana
CREATE OR REPLACE VIEW `v_comuni_toscana` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '09';

-- Vista: comuni della regione Umbria
CREATE OR REPLACE VIEW `v_comuni_umbria` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '10';

-- Vista: comuni della regione Marche
CREATE OR REPLACE VIEW `v_comuni_marche` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '11';

-- Vista: comuni della regione Lazio
CREATE OR REPLACE VIEW `v_comuni_lazio` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '12';

-- Vista: comuni della regione Abruzzo
CREATE OR REPLACE VIEW `v_comuni_abruzzo` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '13';

-- Vista: comuni della regione Molise
CREATE OR REPLACE VIEW `v_comuni_molise` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '14';

-- Vista: comuni della regione Campania
CREATE OR REPLACE VIEW `v_comuni_campania` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '15';

-- Vista: comuni della regione Puglia
CREATE OR REPLACE VIEW `v_comuni_puglia` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '16';

-- Vista: comuni della regione Basilicata
CREATE OR REPLACE VIEW `v_comuni_basilicata` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '17';

-- Vista: comuni della regione Calabria
CREATE OR REPLACE VIEW `v_comuni_calabria` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '18';

-- Vista: comuni della regione Sicilia
CREATE OR REPLACE VIEW `v_comuni_sicilia` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '19';

-- Vista: comuni della regione Sardegna
CREATE OR REPLACE VIEW `v_comuni_sardegna` AS
SELECT c.id, c.nome, c.nome_altra_lingua, c.codice_istat, c.codice_catastale, c.flag_capoluogo,
       p.nome AS provincia, p.sigla AS sigla_provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r  ON p.regione_id   = r.id
WHERE r.codice_istat = '20';
