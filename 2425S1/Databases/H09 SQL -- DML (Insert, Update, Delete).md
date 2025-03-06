# Insert
## SQL – DML basisopdrachten

- **SQL basis opdrachten**
	- `SELECT`
		raadplegen van gegevens
	- `INSERT`
		toevoegen van gegevens
	- `UPDATE`
		wijzigen van gegevens
	- `DELETE`
		verwijderen van gegevens
## Toevoegen van data -- INSERT

- **Toevoegen van rijen in een tabel gebeurt via het** `INSERT` **statement**:
	- één enkele rij toevoegen via specificatie van waarden
	- geselecteerde rij(en) uit een andere tabel toevoegen (2TI)

```sql
INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
[INTO] tbl_name [(col_name [, col_name] ...)]
{VALUES | VALUE} (value_list) [, (value_list)] ...
[ON DUPLICATE KEY UPDATE assignment_list]
```

## INSERT van één rij

- Het aantal opgegeven kolomnamen en waarden moeten gelijk zijn.
- Het type van de waarde moet overeenstemmen met het datatype van de desbetreffende kolom.
- Als geen kolomnamen worden opgegeven, worden de waarden toegekend volgens de kolomvolgorde zoals bepaald bij de definitie van de tabel (CREATE).
- Ook NULL mag als waarde worden opgegeven.
- Verplichte velden moet je opgeven, tenzij ze een default waarde bevatten.

- De constraints worden gecontroleerd…
	- Kolommen niet vermeld in ‘insert’, krijgen een NULL waarde, tenzij er een DEFAULT constraint bestaat, dan wordt de DEFAULT waarde toegekend.
	- Bij een auto-increment kolom worden waarden door het systeem gegeneerd bij het toevoegen van een rij. Deze kolom mag je dan ook nooit toevoegen aan een INSERT instructie.
	- Je kan de gegenereerde waarde wel achteraf opvragen.

- 2 Methoden

### Methode 1
- Enkel de (niet NULL) waarden voor specifieke kolommen worden opgegeven

```sql
-- Voorbeeld: **Voeg in de tabel** *Categories* **de categorie** *“Chocolade”* **toe met** `categoryID= 10`

INSERT INTO categories (categoryID,
categoryName)
VALUES (10, ‘Chocolade’)
```
### Methode 2
- Alle kolomwaarden worden opgegeven

```sql
-- Voorbeeld: **Voeg in de tabel** *Categories* **de categorie** *“Chocolade”* **toe met** `categoryID= 10`

INSERT INTO categories
VALUES (10, 'Chocolade', NULL, NULL)
```

```sql
-- Voorbeeld: Voeg gegevens toe aan de Customers tabel

INSERT INTO customers
VALUES (concat(‘JA’, ‘DEG’), ‘Degroote’, ‘Jan’, ‘Mr.’, ‘Gentstraat 23’, ‘Gent’, ‘Oost-Vlaanderen’, ‘9000’, ‘België’, 095623147, null)
```
# Update
## Wijzigen van data -- UPDATE

- **Wijzigen van data in een tabel**

```sql
UPDATE [LOW_PRIORITY] [IGNORE] table_reference
SET assignment_list
[WHERE where_condition]
[ORDER BY ...]
[LIMIT row_count]
```

### Wijzigen van alle rijen in een tabel

```sql
-- Voorbeeld: 

UPDATE Products
SET unitprice = (unitprice * 1.1)
```
### Wijzigen van 1 rij of een groep van rijen

```sql
-- Voorbeeld: verhoog de prijs van het product “Chocolade” met 10%

UPDATE products
SET unitprice = (unitprice * 1.1)
WHERE productname = ‘Chocolade’
```

```sql
-- Voorbeeld: verhoog de prijs van het product “Chocolade” met 10% en plaats ‘aantal eenheden in voorraad’ op 0

UPDATE products
SET unitprice = (unitprice * 1.1), unitsinstock = 0
WHERE productname = ‘Chocolade’
```

```sql
-- Voorbeeld: verhoog de eenheidsprijs van producten van de leveranciers met nummer SUP001, SUP002, SUP009, SUP022 met 10%.

UPDATE products
SET unitprice = (unitprice * 1.1)
WHERE supplierid IN (SUP001, SUP002, SUP009, SUP022)
```
### CASE – NULLIF

```sql
-- Voorbeeld: Pas kolom reportsTo aan: indien reportsTo = 101, dan wordt de inhoud NULL

UPDATE employees
SET reportsTo =
	CASE WHEN reportsTo = 101
		THEN NULL
	END
```
- Zelfde als
```sql
-- Voorbeeld: Pas kolom reportsTo aan: indien reportsTo = 101, dan wordt de inhoud NULL

UPDATE employees
SET reportsTo = NULLIF(reportsTo,101)
```

# Delete
## Verwijderen van data -- DELETE

- **Verwijderen van data**

```sql
DELETE [LOW_PRIORITY] [QUICK] [IGNORE]
FROM tbl_name [PARTITION (partition_name [,partition_name] ...)]
[WHERE where_condition]
[ORDER BY ...]
[LIMIT row_count]
```

- **Referentiële integriteitsregel**:
	- Bij het verwijderen (en updaten) van een aantal records in een tabel, **kan het zijn dat records in een andere tabel ook verwijderd (aangepast) worden** (vb. `ON DELETE CASCADE`).
	- Het verwijderen van een record **kan hierdoor soms falen → bij het wissen van gegevens moeten de gegevens vaak trapsgewijs in de juiste volgorde in meerdere tabellen worden verwijderd. **

- **Vergeet de `WHERE` clause niet (anders de volledige tabel leeg!)**
### Verwijderen van rij(en)

```sql
-- Voorbeeld: verwijder de categorie ‘Chocolade’

DELETE FROM categories
WHERE categoryName = ‘Chocolade’
```
### Verwijderen van alle rijen in een tabel

- via `DELETE` **zal de auto increment soms gewoon verder lopen**
```sql
DELETE FROM products
```

- via `TRUNCATE` **zal de auto increment herstarten vanaf 1** (performanter: `drop` gevolgd door `create`)
```sql
TRUNCATE TABLE products
```

```sql
-- Voorbeeld: verwijder de gegevens van de opgegeven orders

DELETE FROM order
WHERE orderid IN (ORDER001, ORDER002, ORDER011, ORDER025)
```
