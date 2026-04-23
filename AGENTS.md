# Repository Guidelines

## Project Structure & Module Organization

Repository di esercizi SQL per il corso ITS, organizzato in tre aree principali:

- **`comuni_italia/`** — progetto principale: normalizzazione del dataset ISTAT dei comuni italiani (CSV → MySQL, 3 tabelle con FK)
- **`Dump20260410/`** — schema di un database WooCommerce completo (22 tabelle, esercizio di modellazione)
- **`andrea_pavan/`** — versioni precedenti degli script comuni (tenuti per riferimento)
- **`dumps/`** — dump storici del database `andrea_pavan`

Il file centrale del progetto `comuni_italia` è `normalizzazione_master.sql`: contiene l'intero flusso di normalizzazione in ordine, da eseguire una sola volta dall'inizio alla fine.

## Database & Esecuzione Script

**MySQL locale:**
```
Host: localhost:3306
User: root
Binary: /usr/local/mysql-8.0.45-macos15-x86_64/bin/mysql
```

**Eseguire uno script SQL da terminale:**
```bash
/usr/local/mysql-8.0.45-macos15-x86_64/bin/mysql -u root -p comuni_italiani < comuni_italia/normalizzazione_master.sql
```

**Ordine corretto per ricreare `comuni_italiani` da zero:**
```
1. crea_regioni.sql
2. crea_province.sql
3. crea_comuni_normalizzata.sql
4. popola_regioni.sql
5. popola_province.sql
6. popola_comuni.sql
```
Oppure in un colpo solo: `normalizzazione_master.sql`

## Convenzioni SQL

- Charset: `utf8mb4 COLLATE utf8mb4_unicode_ci` su tutte le tabelle
- Nomi tabelle e colonne in **snake_case** con backtick
- Ogni file `crea_*.sql` inizia con `DROP TABLE IF EXISTS` per permettere la riesecuzione
- I file di popolamento usano `INSERT ... SELECT` da `comuni_raw` (mai valori hardcoded, tranne `popola_regioni.sql`)
- JOIN tra `comuni_raw` e `regioni`: usare sempre `COLLATE utf8mb4_unicode_ci` e `LPAD(codice_regione, 2, '0')`

## Commit Guidelines

Messaggi in italiano, descrittivi dell'azione:
```
Aggiunge <file>: <descrizione breve>
Aggiunta struttura <cosa>: <dettaglio>
```
