LOAD DATA LOCAL INFILE 'C:/Users/Andrea/Downloads/Elenco-comuni-italiani.csv'
INTO TABLE comuni_italiani
CHARACTER SET latin1
FIELDS TERMINATED BY ';'
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    codice_regione, codice_sovracom, codice_prov_storico,
    progressivo, codice_alfanum, nome_bilingue, nome,
    nome_altra_lingua, codice_ripartizione, ripartizione,
    nome_regione, nome_provincia, tipo_sovracom, capoluogo,
    sigla_provincia, codice_comune, codice_com_110,
    codice_com_107, codice_com_103, codice_catastale,
    nuts1_2021, nuts2_2021, nuts3_2021,
    nuts1_2024, nuts2_2024, nuts3_2024
);

