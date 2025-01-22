
# Syntax

- Is niet case sensitive
- Moet niet op 1 lijn

- Commentaar
	- `/* commentaar */`
	- `-- commentaar` (beperkt zich tot 1 lijn)
# SQL – overzicht
(zeker kennen)

- SQL bestaat uit **3 subtalen**
	- **Data Definition Language (DDL)**
		- *creatie van een database, en het definiëren van database-objecten* (tabellen, stored procedures, views,…)
		- `CREATE`, `ALTER`, `DROP`
	- **Data Manipulation Language (DML)**
		- *opvragen en manipuleren van de gegevens in een database*
		- `SELECT`, `INSERT`, `UPDATE`, `DELETE`
	- **Data Control Language (DCL)**
		- *gegevensbeveiliging en autorisatie*
		- `GRANT`, `REVOKE`, `DENY`
	
- Bijkomende taalelementen: operatoren, functies, control of flow (dialect gebonden)

## DML – raadplegen van gegevens

- Eén tabel raadplegen
	- Basisvorm
	- SELECT clausule
	- WHERE clausule
	- Formatteren van rijen
	- Statistische functies
	- Groeperen

- Meerdere tabellen raadplegen


# SELECT statement

## Syntax 

```sql
SELECT [ALL | DISTINCT] {*|uitdrukking [,uitdrukking ...]}
FROM tabelnaam
[WHERE voorwaarde(n)]
[GROUP BY kolomnaam [,kolomnaam ...]
[HAVING voorwaarde(n)]
[ORDER BY {kolomnaam|volgnr}{ASC|DESC}[,...]
```

```sql
SELECT Kolom1,Kolom2,... FROM Tabel;
```

### Vergelijkingsoperatoren

`=`, `>`, `>=`, `<`, `<=`, `<>`
### Wildcards (zoeken naar patronen)
- De operator `LIKE`, `NOT LIKE`
- In combinatie met wildcards:
	- `%` (willekeurige tekenrij met 0 of meerdere tekens)
	- `_` (1 teken)

### Logische operatoren
- `OR`, `AND`, `NOT` (volgens stijgende prioriteit)

### Waarden in een interval
- `BETWEEN`, `NOT BETWEEN`

### Lijst van waarden
- `IN`, `NOT IN`

### Testen op onbekende waarden (niet-ingevulde waarden)
- `IS NULL`, `IS NOT NULL`

### SELECT - formatteren resultaten

- Sorteren data
	- Order by

- Eliminatie van duplicaten
	- DISTINCT/ALL

- Wijzigen van kolomnaam
	- gebruik van aliassen

- Berekende resultaatkolommen
	- Via wiskundige operatoren : +, -, /, *
	- Via functies

### SELECT - DISTINCT/ALL

- Uniciteit van de rijen
	- `DISTINCT` produceert een lijst waarin alle rijen uniek zijn, **identieke rijen worden uit het resultaat verwijderd**.
	- `ALL` (default) toont alle rijen, ook dubbels.

### Hernoemen kolom voor view

- **Benoemen van kolommen**
	- Standaard : kolomtitel = naam van kolom in tabel; berekende kolommen krijgen geen kolomnaam.
	- Een kolom een andere titel geven:
		- Via `AS` keyword
			- Met een string na de kolomnaam
			- kan ook zonder `AS` keyword (zie voorbeeld)
			- Opmerking: Die nieuwe kolomnaam kan je ook gebruiken in ORDER BY (maar niet in WHERE, HAVING, GROUP BY)

	- **Kan ook via wiskundige operatoren** : `+`, `-`, `/`, `*`

### SELECT en gebruik van functies

- **Mogelijke functies**:
	- **String** functies: `concat`, `left`, `right`, `length`, `substring`, `replace`, `...`
	- **DateTime** functies: `dateAdd`, `dateDiff`, `day`, `month`, `year`, `...`
		- `NOW()`: **retourneert huidige datum en tijd in DATETIME** 
			formaat: *JJJJ-MM-DD UU:MM:SS*.
		-  `CURDATE()` → **huidige datum** in *JJJJ-MM-DD*
	- **Rekenkundige** functies: `round`, `floor`, `ceil`, `cos`, `sin`, `...`
	- **Aggregate** functies: `AVG`, `SUM`, `MIN`, `MAX`, `...`
	- `IFNULL(kolom, x)` : **vervangt gevonden NULL-waardes door x**.

	- Text
		- Concatinatie `CONCAT('text1','text2')`
		- Literals
			- Steeds enkele qout genruiken `'text'`
#### Data conversie

- Impliciet, voor sommige omzettingen
- Expliciet met cast `CAST (<value expression> AS <data type>)`
	- `CAST (<value expression> AS <data type>)`
	- `CONVERT (<expression>, type)`

```sql
PRINT CAST(-25.25 AS INTEGER) --→ -25
SELECT CAST(38,8 AS CHAR) --→ ‘38,8’


CONVERT( curdate(), char) --→ ‘2016-11-24’
```


### CASE:

```sql
CASE
    WHEN conditie1 THEN resultaat1
    WHEN conditie2 THEN resultaat2
    ...
    ELSE resultaatN
END
```

### Tabel met functies


| **Categorie**    | **Functie** | **Uitleg**                                                           | **Voorbeeld**                                                        | **Resultaat**             |
| ---------------- | ----------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | ------------------------- |
| **String**       | `CONCAT`    | Combineert meerdere strings of kolommen.                             | `SELECT CONCAT('Product: ', productname) AS Info FROM Products;`     | Product: Apple            |
|                  | `LEFT`      | Haalt een bepaald aantal tekens vanaf links op.                      | `SELECT LEFT(productname, 3) AS KortNaam FROM Products;`             | App                       |
|                  | `REPLACE`   | Vervangt tekst in een string.                                        | `SELECT REPLACE(productname, 'e', '3') AS NieuweNaam FROM Products;` | Appl3                     |
|                  | `LENGTH`    | Geeft de lengte van een string terug.                                | `SELECT LENGTH(productname) AS Lengte FROM Products;`                | 5                         |
|                  | `SUBSTRING` | Haalt een deel van een string op vanaf een specifieke positie.       | `SELECT SUBSTRING(productname, 2, 3) AS DeelNaam FROM Products;`     | ppl                       |
| **DateTime**     | `NOW()`     | Retourneert huidige datum en tijd in formaat *JJJJ-MM-DD UU:MM:SS*.  | `SELECT NOW() AS HuidigeDatum;`                                      | 2025-01-02 10:15:45       |
|                  | `CURDATE()` | Geeft de huidige datum in formaat *JJJJ-MM-DD*.                      | `SELECT CURDATE() AS HuidigeDatum;`                                  | 2025-01-02                |
|                  | `YEAR`      | Haalt het jaar uit een datum.                                        | `SELECT YEAR(orderdate) AS Jaar FROM Orders;`                        | 2023                      |
|                  | `DATEDIFF`  | Berekent het verschil tussen twee datums in dagen.                   | `SELECT DATEDIFF('2025-01-02', '2024-12-31') AS Verschil;`           | 2                         |
| **Rekenkundige** | `ROUND`     | Rondt een getal af tot een specifiek aantal decimalen.               | `SELECT ROUND(unitprice, 2) AS Afgerond FROM Products;`              | 19.99                     |
|                  | `FLOOR`     | Geeft het grootste gehele getal kleiner dan of gelijk aan het getal. | `SELECT FLOOR(19.99) AS FloorValue;`                                 | 19                        |
|                  | `COS`       | Berekent de cosinus van een hoek (in radialen).                      | `SELECT COS(0) AS Cosinus;`                                          | 1                         |
| **Aggregate**    | `AVG`       | Berekent het gemiddelde van een kolom.                               | `SELECT AVG(unitprice) AS GemiddeldePrijs FROM Products;`            | 15.67                     |
|                  | `SUM`       | Berekent de som van een kolom.                                       | `SELECT SUM(unitprice) AS TotalePrijs FROM Products;`                | 156.75                    |
|                  | `MAX`       | Geeft de hoogste waarde in een kolom terug.                          | `SELECT MAX(unitprice) AS HoogstePrijs FROM Products;`               | 45.99                     |
|                  | `MIN`       | Geeft de laagste waarde in een kolom terug.                          | `SELECT MIN(unitprice) AS LaagstePrijs FROM Products;`               | 3.50                      |
| **Special**      | `IFNULL`    | Vervangt NULL-waarden door een opgegeven waarde.                     | `SELECT IFNULL(discount, 0) AS Korting FROM Orders;`                 | 0 (als de waarde NULL is) |

### Groeperen via GROUP BY

- `GROUP BY` clausule :
	- Indeling van tabel in groepen van rijen met gemeenschappelijke kenmerken.
	- Per groep wordt maar één rij teruggegeven!


### Groeperen verfijnen via HAVING

- `HAVING` clausule
	-  Selecteren van groepen op basis van bepaalde groepseigenschappen
## Voorbeelden

```sql
SELECT * FROM Tabel;
```

```sql
SELECT Kolom FROM Tabel;
```

### Where

```sql
select productid, productname, unitsinstock
from products
where unitsinstock < 5
```

```sql
select productid, productname
from products
where productname >= 'A' and productname < 'B'
```

```sql
SELECT productid, unitprice
FROM products
WHERE unitprice BETWEEN 10 AND 15
```

### Like

```sql
SELECT productid, productname
FROM products
WHERE productname LIKE '%anton%'
```


### Where & Like


```sql
SELECT productid, productname, supplierid, unitprice
FROM products
WHERE (productname LIKE ’T%’ OR productid = 46) AND unitprice > 16.00
```

```sql
SELECT productid, productname, unitprice
FROM products
WHERE (productname LIKE ’T%’) OR (productid = 46 AND unitprice > 16.00)
```


### Where in

```sql
SELECT productid, productname, supplierid
FROM products
WHERE supplierid in (1,3,5)
```

### Where null


```sql
SELECT companyname, region
FROM suppliers
WHERE region IS NULL
```

### Order by


```sql
SELECT productname
FROM products
ORDER BY productname  -- of ORDER BY 1
```

```sql
SELECT productid, productname, categoryid, unitprice
FROM products
ORDER BY categoryid, unitprice DESC
```


### Distinct

```sql
SELECT DISTINCT supplierid
FROM productsFROM products
ORDER BY supplieridORDER BY supplierid
```


### As


```sql
SELECT productid AS ProductNummer,
productname AS ‘Naam Product’
FROM products
```

```sql
SELECT productid ProductNummer,
productname ‘Naam Product’
FROM products
```

```sql
SELECT ProductName, Unitprice * UnitsInStock AS InventoryValue
FROM Products
```

#### AS + functie

```sql
SELECT CONCAT(ProductName, ' is on "sale"!') AS SaleInfo
FROM Products;
```

```sql
SELECT ProductName, CONCAT('Price: ', '$', Unitprice) AS PriceLabel
FROM Products;
```

```sql
-- Voorbeeld: Geef de totale stockwaarde van alle producten.

SELECT SUM(UnitsInStock * UnitPrice) as inventoryvalue
FROM products
```

```sql
-- Voorbeeld: Wat is de gemiddelde voorraad over alle producten?

SELECT AVG(unitsinstock) AS AverageStock
FROM products
```


```sql
-- Voorbeeld: Tel het aantal producten.

SELECT COUNT(*) as Aantal FROM products
```


```sql
-- Voorbeeld: Tel het aantal producten met een (niet-lege) categorie.

SELECT COUNT(DISTINCT categoryid) as cat_count
FROM products
```


```sql
-- Voorbeeld: Wat is het goedkoopste en het duurste product?

SELECT MIN(unitprice) AS Minimum,
MAX(unitprice) AS Maximum
FROM products
```



### Select met functies

```sql
-- Voorbeeld IFNULL()
SELECT OrderID, CustomerID, IFNULL(ShipPostalCode,'Niet ingevuld') as PostCode FROM orders;
```


### Select Case

```sql
SELECT OrderID, Freight,
CASE
    WHEN Freight IS NULL THEN 'Kost onbekend'
    WHEN Freight = 0 THEN 'Gratis verscheping'
    WHEN Freight < 20 THEN 'Lage verschepingskost'
    WHEN Freight < 100 THEN 'Gemiddelde verschepingskost'
    ELSE 'Hoge verschepingskost'
END AS 'Verschepingskost'
FROM Orders;
```

### Group by


```sql
-- Voorbeeld: Welke categorieën zijn er binnen de producten?

SELECT CategoryID
FROM Products
GROUP BY CategoryID
```

```sql
-- Voorbeeld: Toon per categorie het aantal producten.

SELECT CategoryID, COUNT(productID) AS Aantal
FROM Products
GROUP BY CategoryID
```

```sql
-- Voorbeeld: Toon per categorie het aantal producten, waarvan er meer dan 10 in stock zijn.

SELECT CategoryID, COUNT(productID) AS Aantal
FROM Products
WHERE UnitsInStock > 10
GROUP BY CategoryID
```

```sql
    SELECT artcode, MIN(offerteprijs)
    FROM offertes
    GROUP BY artcode;
```


### HAVING


```sql
-- Voorbeeld: Toon het aantal producten voor elke categorie die meer dan 10 producten bevat.

SELECT CategoryID, COUNT(productID) AS Aantal
FROM Products
GROUP BY CategoryID
HAVING COUNT(productID) > 10
```

```sql
-- Voorbeeld: Toon het aantal producten in voorraad voor elke categorie die meer dan 10 producten in voorraad bevat.
SELECT CategoryID, COUNT(productID) as Aantal
FROM Products
WHERE UnitsInStock >10
GROUP BY CategoryID
HAVING COUNT(*) > 10
```
# Join

```sql
-- ANSI JOIN (SQL-92) 

SELECT uitdrukking
FROM tabel JOIN tabel ON voorwaarde
[JOIN tabel ON voorwaarde...]
```


 Selecteren van kolommen uit meerdere tabellen
	- `JOIN` keyword: specifiëert de tabellen die samengevoegd moeten worden
		- `INNER JOIN`
			- Je wilt **alleen** de rijen waarin **beide** tabellen aan de join-voorwaarde voldoen.
		- `OUTER JOIN`
			- `LEFT JOIN` 
				- Je wilt **alle** rijen uit de **linkertabel** zien, ongeacht match, en (optioneel) de corresponderende gegevens uit de rechtertabel.
			- `RIGHT JOIN` 
				- Hetzelfde idee als left, maar dan behoud je **alle rijen uit de rechtertabel**.
			- `CROSS JOIN`
				- Je wilt het **Cartesian product**. Elk record uit de ene tabel wordt met elk record uit de andere tabel gecombineerd.
	- `ON` keyword: specificeert hoe de tabellen samengevoegd worden


Daarmee kun je bepalen welke joinsoort je kiest op basis van de vraag: 
	- _Wil ik alleen matches (inner)? 
	- Wil ik alle rijen uit mijn “hoofdtabel” (left)? 
	- Wil ik het cartesiaans product (cross)? 
	- Of alles van beide kanten (full)?_

- De relatie tussen de velden in de verschillende tabellen kan je uitdrukken a.d.h.v.
	- `=` (equi-join)
	- `<`
	- `>`
	- `<>`
	- `>=`
	- `<=`
## Voorbeelden

### Inner join

- Geef alle bestellingen die niet bestemd zijn voor België, Frankrijk of Duitsland, met alle producten in die bestellingen en hun hoeveelheden.

```sql
-- ANSI JOIN (SQL-92)

SELECT orders.OrderID, ShipCountry, ProductID, Quantity
FROM orders JOIN order_details
ON orders.OrderID = order_details.OrderID
WHERE ShipCountry not in ('Belgium','France','Germany')
```


```sql
-- ANSI JOIN (SQL-92)

SELECT o.OrderID, ShipCountry, ProductID, Quantity
FROM orders AS o JOIN order_details AS od
ON o.OrderID = od.OrderID
WHERE ShipCountry not in ('Belgium','France','Germany')
```



```sql
-- ANSI JOIN (SQL-92):

SELECT o.OrderID, o.ShipCountry, p.ProductName, od.Quantity
FROM orders o
JOIN order_details od ON o.OrderID = od.OrderID
JOIN products p ON p.ProductID = od.ProductID
WHERE o.ShipCountry NOT IN ('Belgium', 'France', 'Germany');

--**Wat gebeurt hier?**
-- -`orders` is gekoppeld aan `order_details` via `OrderID`.
-- -`order_details` is gekoppeld aan `products` via `ProductID`.
-- -Het resultaat bevat bestellingen, verzendlanden, productnamen, en hoeveelheden.
-- -Alleen verzendlanden buiten België, Frankrijk, en Duitsland worden getoond.

```


### OUTER JOIN

#### LEFT OUTER

```sql
-- Voorbeeld: Toon alle klanten en de bestellingen die ze plaatsten (inclusief klanten zonder bestellingen).

SELECT c.CompanyName, o.OrderID  
FROM Customers c  
LEFT JOIN Orders o ON o.customerid = c.customerid;  
```

#### RIGHT OUTER

```sql
-- Voorbeeld: Toon alle bestellingen en de bijbehorende klantnaam (inclusief bestellingen zonder klant).

SELECT c.CompanyName, o.OrderID  
FROM Customers c  
RIGHT JOIN Orders o ON o.customerid = c.customerid;  
```

#### CROSS JOIN

```sql
-- Voorbeeld: Toon alle mogelijke combinaties van twee medewerkers uit de `Employees`-tabel

SELECT CONCAT(e1.FirstName,' ', e1.LastName) AS Groepslid1, 
	   CONCAT(e2.FirstName,' ', e2.LastName) AS Groepslid2 
FROM Employees e1 
CROSS JOIN Employees e2;
```



# Union


- Via een UNION **combineer je het resultaat van 2 of meerdere queries in 1 resultaattabel**

```sql
SELECT ... FROM ... WHERE ...
UNION
SELECT ... FROM ... WHERE ...
ORDER BY ...
```

- De resultaten van de 2 SELECT opdrachten moeten evenveel kolommen bevatten.


## Voorbeeld: 
- geef een overzicht van alle werknemers (naam en voornaam, stad en postcode) en alle klanten (naam, stad en postcode).

```sql
SELECT firstname + ‘ ‘ + lastname as name, city,
postalcode
FROM Employees
UNION
SELECT companyname, city, postalcode
FROM Customers
```

- Daar de kolomnamen van de resultaatset van de UNION deze zijn van de eerste select, dien je de titel ‘name’ in de tweede select niet meer te herhalen.


# DML (Insert, Update, Delete)

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

## Insert
- **Toevoegen van rijen in een tabel gebeurt via het** `INSERT` **statement**:
	- één enkele rij toevoegen via specificatie van waarden
	- geselecteerde rij(en) uit een andere tabel toevoegen (2TI)

```sql
INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
[INTO] tbl_name [(col_name [, col_name] ...)]
{VALUES | VALUE} (value_list) [, (value_list)] ...
[ON DUPLICATE KEY UPDATE assignment_list]
```

- 2 Methodes
	- Enkel de (niet NULL) waarden voor specifieke kolommen worden opgegeven
	- Alle kolomwaarden worden opgegeven


## Update


- **Wijzigen van data in een tabel**

```sql
UPDATE [LOW_PRIORITY] [IGNORE] table_reference
SET assignment_list
[WHERE where_condition]
[ORDER BY ...]
[LIMIT row_count]
```

## Delete

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

## Voorbeeld

### insert

```sql
-- Enkel niet null kolomwaarden worden opgegeven
-- Voorbeeld: **Voeg in de tabel** *Categories* **de categorie** *“Chocolade”* **toe met** `categoryID= 10`

INSERT INTO categories (categoryID,
categoryName)
VALUES (10, ‘Chocolade’)
```

```sql
-- Alle kolomwaarden worden opgegeven
-- Voorbeeld: **Voeg in de tabel** *Categories* **de categorie** *“Chocolade”* **toe met** `categoryID= 10`

INSERT INTO categories
VALUES (10, 'Chocolade', NULL, NULL)
```

```sql
-- Voorbeeld: Voeg gegevens toe aan de Customers tabel

INSERT INTO customers
VALUES (concat(‘JA’, ‘DEG’), ‘Degroote’, ‘Jan’, ‘Mr.’, ‘Gentstraat 23’, ‘Gent’, ‘Oost-Vlaanderen’, ‘9000’, ‘België’, 095623147, null)
```

### Update

```sql
-- Voorbeeld: 

UPDATE Products
SET unitprice = (unitprice * 1.1)
```


```sql
-- Wijzigen van 1 rij of een groep van rijen
-- Voorbeeld: verhoog de prijs van het product “Chocolade” met 10%

UPDATE products
SET unitprice = (unitprice * 1.1)
WHERE productname = ‘Chocolade’
```

```sql
-- Wijzigen van 1 rij of een groep van rijen
-- Voorbeeld: verhoog de prijs van het product “Chocolade” met 10% en plaats ‘aantal eenheden in voorraad’ op 0

UPDATE products
SET unitprice = (unitprice * 1.1), unitsinstock = 0
WHERE productname = ‘Chocolade’
```

```sql
-- Wijzigen van 1 rij of een groep van rijen
-- Voorbeeld: verhoog de eenheidsprijs van producten van de leveranciers met nummer SUP001, SUP002, SUP009, SUP022 met 10%.

UPDATE products
SET unitprice = (unitprice * 1.1)
WHERE supplierid IN (SUP001, SUP002, SUP009, SUP022)
```
#### CASE – NULLIF

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


### Delete

#### Verwijderen van rij(en)

```sql
-- Voorbeeld: verwijder de categorie ‘Chocolade’

DELETE FROM categories
WHERE categoryName = ‘Chocolade’
```
#### Verwijderen van alle rijen in een tabel

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


# DDL (Create, Alter, Drop)

- DDL wordt gebruikt voor
	- het definiëren van databanken
	- het definiëren van tabellen
	- het vastleggen van datatypes
	- het definiëren van constraints - data integriteit (2TI)
	- het definiëren van indices (2TI)

## CREATE DATABASE

- **Aanmaken van een database**

```sql
CREATE DATABASE database_name
```

## DROP DATABASE

- **Verwijderen van database**
- Merk op dat de systeemdatabank niet kan verwijderd worden!

```sql
DROP DATABASE database_name
```

## DDL - Tabellen
### CREATE TABLE

- **Tabel aanmaken**


```sql
CREATE TABLE table_name(
{<column_definition> |
<computed_column_definition> |
<column_set_definition> }
[<table_constraint>] [ ,...n ])
```


### ALTER TABLE

- **Tabel/Kolom aanpassen**

```sql
ALTER TABLE table_name {
MODIFY COLUMN column_name {type_name [({ precision[, scale] |
max})]}|
ADD {<column_definition> |
<computed_column_definition> | <table_constraint> |
<column_set_definition> } [ ,...n ] |
DROP {[CONSTRAINT] constraint_name |
COLUMN column_name } [ ,...n ]
```

### DROP TABLE

- **Tabel verwijderen**

```sql
DROP TABLE table_name
```

## Scripts

-  verzameling SQL statements

- handig voor
	- batch processing
	- creatie van test- of productieomgeving

-  kan op verschillende niveaus
	- databank, tabel, …


## SQL Datatypes

### Overzicht van de verschillende categorieën van datatypes

| Data Type Category       | Voorbeelden                           |
| ------------------------ | ------------------------------------- |
| **Exact Numerics**       | INT, SMALLINT, DECIMAL, NUMERIC       |
| **Unicode Character**    | NCHAR, NVARCHAR, NTEXT                |
| **Strings**              | CHAR, VARCHAR, TEXT                   |
| **Approximate Numerics** | FLOAT, REAL, DOUBLE PRECISION         |
| **Binary Strings**       | BINARY, VARBINARY, IMAGE              |
| **Date and Time**        | DATE, TIME, DATETIME, TIMESTAMP, YEAR |
| **Character Strings**    | CHAR, VARCHAR, TEXT                   |
| **Other Data Types**     | BOOLEAN, ENUM, SET                    |
### Te gebruiken datatypes
Kennen!

| Data Type     | Bereik                                            | Opslag                    |
| ------------- | ------------------------------------------------- | ------------------------- |
| **INT**       | -2^31 (-2,147,483,648) tot 2^31-1 (2,147,483,647) | 4 Bytes                   |
| **DECIMAL**   | -10^38 +1 tot 10^38 - 1 bij maximale precisie     | 5 tot 7 Bytes (~precisie) |
| **(VAR)CHAR** | Strings met niet meer dan n karakters             | n Bytes                   |
| **BOOLEAN**   | 0 of 1                                            | 1 Byte (column optimised) |
| **DATE**      | January 1, 1753, tot December 31, 9999            | 4 Bytes                   |
- **opmerkingen**
	- bij *decimal/numeric* specifïeer je 
		- **precision** (totaal aantal cijfers ) 
		- **scale** (aantal cijfers rechts van de decimale punt of komma) 
		- bv: `decimal(5, 2)` <-> 123.45
	- *boolean*: **1 is** `TRUE`, **0 is** `FALSE`
	- *char* bevatten **non-unicode karakters**; n kan gaan van 1 tot 8000
	- *date* geeft de **datum in de vorm van** `yyyy-mm-dd`
## Constraints (sleutels)
### AUTO_INCREMENT waarden

- **Wordt door systeem beheerd**

- een `AUTO_INCREMENT` kolom bevat
	- **voor elke rij een unieke waarde**
	- **door het systeem gegenereerde (sequentiële) waarden**

- slechts **1 `AUTO_INCREMENT` kolom per tabel mogelijk**

- **maakt gebruik van een integer datatype**

- een `AUTO_INCREMENT` kolom **kan geen NULL waarden bevatten**

- een `AUTO_INCREMENT` kolom **kan je niet zelf aanpassen**
	- via `LAST_INSERT_ID()` kan je de **laatst gecreëerde waarde opvragen**

### Definitie van primaire sleutel

- Specificatie van de primaire sleutel
	- 1 primary key constraint per tabel
	- kan gedefinieerd worden op 1 of meerdere kolommen (samengestelde sleutel)
	- waarde (of combinatie van waarden) moet uniek zijn
	- NULL waarden zijn niet toegelaten
	- DBMS creëert een unieke index op de kolommen (default wordt een clustered index gecreëerd tenzij anders wordt opgegeven)

```sql
-- Voorbeeld: definitie van de primaire sleutel als deel van een kolom

studentno int primary key
```

### Definitie van vreemde sleutel

- **Gebruikt om verbanden tussen relaties uit te drukken**
	- **0, 1 of meerdere vreemde sleutels per tabel**
	- `NULL` **waarden kunnen al dan niet toegelaten zijn**
	- De **constraint waarborgt referentiële integriteit**:
		- **Vreemde sleutels moeten verwijzen naar een primaire sleutel** (in MySQL een geïndexeerde kolom) uit een tabel
		- De waarde van een `NOT NULL` **vreemde sleutel moet voorkomen in de gerefereerde kolom**
		- **Legt ook de trapsgewijze (cascading) referentiële integriteitsacties vast bij**
			- `ON DELETE`
			- `ON UPDATE`

- **De tabel waar je naar verwijst moet al bestaan**

```sql
-- Voorbeeld

CREATE TABLE userroles(
user_id INT NOT NULL,
role_id INT NOT NULL,
PRIMARY KEY(user_id, role_id),
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(role_id) REFERENCES roles(role_id)
);
```


## Voorbeelden

### DDL Databank

```sql
Create database mijndatabank;
Use mijndatabank;
```
### DDL Tabel

```sql
CREATE TABLE doelkaart
(
    doelID CHAR(5) NOT NULL,
    naam CHAR(30)
);

CREATE TABLE spelerdoelkaart
(
    spelerID INT NOT NULL,
    doelID CHAR(5) NOT NULL,
    volgorde INT
);

CREATE TABLE spel
(
    spelnaam CHAR(20) NOT NULL
);

CREATE TABLE spelgangkaart
(
    spelnaam CHAR(20) NOT NULL,
    kaartID CHAR(5) NOT NULL,
    richting CHAR(20),
    positie CHAR(10)
);

CREATE TABLE speler
(
    spelerID INT NOT NULL AUTO_INCREMENT,
    spelernaam CHAR(25),
    gebjaar CHAR(4),
    kleur CHAR(10) CHECK (kleur IN ('rood', 'zwart')),
    huidigvak CHAR(20),
    isaandebeurt CHAR(1),
    spelnaam CHAR(5),
    PRIMARY KEY (spelerID)
);

CREATE TABLE gangkaart
(
    kaartID CHAR(5) NOT NULL,
    type CHAR(8),
    schat CHAR(20)
);

```
 
 - **Toevoegen primairy key**
```sql
ALTER TABLE doelkaart
ADD CONSTRAINT PK_doelkaart PRIMARY KEY (doelID);

ALTER TABLE spel
ADD CONSTRAINT PK_spel PRIMARY KEY (spelnaam);

ALTER TABLE gangkaart
ADD CONSTRAINT PK_gangkaart PRIMARY KEY (kaartID);

ALTER TABLE spelgangkaart
ADD CONSTRAINT PK_spelgangkaart PRIMARY KEY (spelnaam, kaartID);

ALTER TABLE spelerdoelkaart
ADD CONSTRAINT PK_spelerdoelkaart PRIMARY KEY (spelerID, doelID);
```

- **toevoegen foreign key**
```sql
ALTER TABLE spelerdoelkaart
ADD CONSTRAINT FK_speler FOREIGN KEY (spelerID) REFERENCES speler(spelerID);

ALTER TABLE spelerdoelkaart
ADD CONSTRAINT FK_doel FOREIGN KEY (doelID) REFERENCES doelkaart(doelID);

ALTER TABLE speler
ADD CONSTRAINT FK_spel FOREIGN KEY (spelnaam) REFERENCES spel(spelnaam);

ALTER TABLE spelgangkaart
ADD CONSTRAINT FK_gang FOREIGN KEY (kaartID) REFERENCES gangkaart(kaartID);

ALTER TABLE spelgangkaart
ADD CONSTRAINT FK_gangspel FOREIGN KEY (spelnaam, kaartID) REFERENCES spel(spelnaam, kaartID);
```

### DDL extra voorbeelden

```sql
Drop database mijndatabank;
Drop table speler;
```

```sql
Alter table gangkaart
add column voordeel char(50);
```

```sql
Alter table gangkaart
modify column voordeel char(20);
```

```sql
Alter table gangkaart
drop column voordeel;
```
