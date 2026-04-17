USE `andrea_pavan`;

-- -------------------------------------------------------
-- TRIGGER 1: dopo INSERT su dettaglioutente
-- Registra il nome e cognome del nuovo utente inserito
-- -------------------------------------------------------
DROP TRIGGER IF EXISTS `trg_after_insert_dettaglio`;

CREATE TRIGGER `trg_after_insert_dettaglio`
AFTER INSERT ON `dettaglioutente`
FOR EACH ROW
INSERT INTO `log_dettaglioutente` (`id_dettaglio`, `dato_modificato`, `operazione`)
VALUES (
  NEW.id_dettaglio,
  CONCAT('Inserito: ', NEW.nome_DettaglioUtente, ' ', NEW.cognome_DettaglioUtente),
  'INSERT'
);


-- -------------------------------------------------------
-- TRIGGER 2: dopo UPDATE su dettaglioutente
-- Registra quale campo è cambiato (vecchio → nuovo valore)
-- -------------------------------------------------------
DROP TRIGGER IF EXISTS `trg_after_update_dettaglio`;

CREATE TRIGGER `trg_after_update_dettaglio`
AFTER UPDATE ON `dettaglioutente`
FOR EACH ROW
INSERT INTO `log_dettaglioutente` (`id_dettaglio`, `dato_modificato`, `operazione`)
VALUES (
  NEW.id_dettaglio,
  CONCAT(
    'nome: ', OLD.nome_DettaglioUtente, ' → ', NEW.nome_DettaglioUtente, ' | ',
    'cognome: ', OLD.cognome_DettaglioUtente, ' → ', NEW.cognome_DettaglioUtente, ' | ',
    'telefono: ', IFNULL(OLD.telefono_DettaglioUtente,'—'), ' → ', IFNULL(NEW.telefono_DettaglioUtente,'—')
  ),
  'UPDATE'
);


-- -------------------------------------------------------
-- TRIGGER 3: prima di DELETE su dettaglioutente
-- Registra chi viene eliminato (BEFORE: la riga esiste ancora)
-- -------------------------------------------------------
DROP TRIGGER IF EXISTS `trg_before_delete_dettaglio`;

CREATE TRIGGER `trg_before_delete_dettaglio`
BEFORE DELETE ON `dettaglioutente`
FOR EACH ROW
INSERT INTO `log_dettaglioutente` (`id_dettaglio`, `dato_modificato`, `operazione`)
VALUES (
  OLD.id_dettaglio,
  CONCAT('Eliminato: ', OLD.nome_DettaglioUtente, ' ', OLD.cognome_DettaglioUtente,
         ' (CF: ', IFNULL(OLD.codice_fiscale_DettaglioUtente,'—'), ')'),
  'DELETE'
);
