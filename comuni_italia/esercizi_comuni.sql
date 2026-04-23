USE `comuni_italiani`;

-- ============================================================
-- ESERCIZI SQL — Database Comuni Italiani
-- Livello 1: SELECT base
-- Livello 2: COUNT e GROUP BY
-- Livello 3: JOIN tra tabelle
-- Livello 4: Sfide avanzate
-- ============================================================


-- ------------------------------------------------------------
-- LIVELLO 1 — SELECT base
-- ------------------------------------------------------------

-- ES.1 — Tutte le regioni
SELECT * FROM regioni;

-- ES.2 — Nome e sigla delle province in ordine alfabetico
SELECT nome, sigla FROM province ORDER BY nome;

-- ES.3 — Primi 5 comuni in ordine alfabetico
SELECT nome FROM comuni ORDER BY nome LIMIT 5;

-- ES.4 — Solo le regioni del Nord-ovest
SELECT nome FROM regioni WHERE ripartizione_geografica = 'Nord-ovest';


-- ------------------------------------------------------------
-- LIVELLO 2 — COUNT e GROUP BY
-- ------------------------------------------------------------

-- ES.5 — Quanti comuni ci sono in totale? (atteso: 7896)
SELECT COUNT(*) AS totale_comuni FROM comuni;

-- ES.6 — Comuni per regione, dal più alto al più basso
SELECT r.nome, COUNT(c.id) AS numero_comuni
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r ON p.regione_id = r.id
GROUP BY r.nome
ORDER BY numero_comuni DESC;

-- ES.7 — Province con più di 100 comuni (HAVING filtra dopo GROUP BY)
SELECT p.nome, COUNT(c.id) AS numero_comuni
FROM comuni c
JOIN province p ON c.provincia_id = p.id
GROUP BY p.nome
HAVING numero_comuni > 100
ORDER BY numero_comuni DESC;


-- ------------------------------------------------------------
-- LIVELLO 3 — JOIN tra tabelle
-- ------------------------------------------------------------

-- ES.8 — Comuni del Veneto con la loro provincia
SELECT c.nome AS comune, p.nome AS provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r ON p.regione_id = r.id
WHERE r.nome = 'Veneto'
ORDER BY c.nome;

-- ES.9 — Tutti i capoluoghi con provincia e regione
SELECT c.nome AS capoluogo, p.nome AS provincia, r.nome AS regione
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r ON p.regione_id = r.id
WHERE c.flag_capoluogo = 1
ORDER BY r.nome, p.nome;

-- ES.10 — Cerca il comune di Roma
SELECT c.nome, c.codice_catastale, p.nome AS provincia, r.nome AS regione
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r ON p.regione_id = r.id
WHERE c.nome = 'Roma';


-- ------------------------------------------------------------
-- LIVELLO 4 — Sfide avanzate
-- ------------------------------------------------------------

-- ES.11 — Regione con più comuni (solo 1 riga)
SELECT r.nome, COUNT(c.id) AS numero_comuni
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r ON p.regione_id = r.id
GROUP BY r.nome
ORDER BY numero_comuni DESC
LIMIT 1;

-- ES.12 — Quanti comuni hanno un nome in altra lingua?
SELECT COUNT(*) AS comuni_bilingui
FROM comuni
WHERE nome_altra_lingua IS NOT NULL;

-- ES.13 — Comuni bilingui del Trentino-Alto Adige
SELECT c.nome AS nome_italiano, c.nome_altra_lingua AS nome_tedesco, p.nome AS provincia
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r ON p.regione_id = r.id
WHERE r.nome = 'Trentino-Alto Adige/Südtirol'
  AND c.nome_altra_lingua IS NOT NULL
ORDER BY c.nome;

-- ES.14 — Capoluoghi per ripartizione geografica
SELECT r.ripartizione_geografica, COUNT(c.id) AS capoluoghi
FROM comuni c
JOIN province p ON c.provincia_id = p.id
JOIN regioni r ON p.regione_id = r.id
WHERE c.flag_capoluogo = 1
GROUP BY r.ripartizione_geografica
ORDER BY capoluoghi DESC;
