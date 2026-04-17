USE `andrea_pavan`;

-- -------------------------------------------------------
-- TEST 1: INSERT — aggiunge un nuovo utente
-- Il trigger trg_after_insert_dettaglio scatta automaticamente
-- -------------------------------------------------------
INSERT INTO `dettaglioutente`
  (`id_utente_fk`, `nome_DettaglioUtente`, `cognome_DettaglioUtente`,
   `codice_fiscale_DettaglioUtente`, `telefono_DettaglioUtente`)
VALUES
  (2, 'mario', 'rossi', 'RSSMRA80A01H501U', '3331234567');


-- -------------------------------------------------------
-- TEST 2: UPDATE — modifica telefono e nome
-- Il trigger trg_after_update_dettaglio scatta automaticamente
-- -------------------------------------------------------
UPDATE `dettaglioutente`
SET `telefono_DettaglioUtente` = '3339999999',
    `nome_DettaglioUtente`     = 'mario_modificato'
WHERE `nome_DettaglioUtente` = 'mario_modificato'
   OR `cognome_DettaglioUtente` = 'rossi';


-- -------------------------------------------------------
-- TEST 3: DELETE — elimina l'utente appena inserito
-- Il trigger trg_before_delete_dettaglio scatta automaticamente
-- -------------------------------------------------------
DELETE FROM `dettaglioutente`
WHERE `cognome_DettaglioUtente` = 'rossi';


-- -------------------------------------------------------
-- VERIFICA: leggi il log per vedere tutte le operazioni
-- -------------------------------------------------------
SELECT
  id_log,
  id_dettaglio,
  operazione,
  dato_modificato,
  data_operazione
FROM `log_dettaglioutente`
ORDER BY id_log;
