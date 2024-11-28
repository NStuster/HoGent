# Installatie

# Import script

![[Pasted image 20241121094249.png]]


![[Pasted image 20241121094309.png]]

# maak zelf een script

![[Pasted image 20241121094437.png]]

# Syntax

- Is niet case sensitive
- Moet niet op 1 lijn
```sql
SELECT ProductName,ProductId 
FROM products;
```

# CheatSheet


| Commando                | Voorbeeld                                                                                                                                                                                               | Uitleg                                            |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------- |
| **USE**                 | USE Northwind;                                                                                                                                                                                          | welke database                                    |
| **SELECT**              | SELECT \* FROM Orders;<br>SELECT Kolom FROM Tabel;<br>SELECT Kolom1,Kolom2,... FROM Tabel;                                                                                                              | Weergeven (kolom)<br>Minimum syntax               |
| FROM                    |                                                                                                                                                                                                         | uit welke tabel                                   |
| WHERE                   | SELECT ProductName FROM products WHERE categoryID = 1;<br>SELECT ProductName FROM products WHERE productName = 'Chai';<br>SELECT ProductName FROM products WHERE orderDate = '1996-07-04 00:00:00';<br> | Om te filteren                                    |
| LIKE                    | WHERE productname LIKE 'Anton';<br>WHERE productname LIKE '%ton%';<br>WHERE productname LIKE '\_nton';                                                                                                  | Lijkt op<br>% eender wat<br>_ 1 teken eender wat  |
| NOT LIKE                | WHERE productname NOT LIKE 'Anton';                                                                                                                                                                     | Exclude                                           |
| OR                      | WHERE productname LIKE 'Anton' OR ProductId = 46;                                                                                                                                                       | of                                                |
| AND                     | WHERE productname LIKE 'Anton' AND ProductId = 46;                                                                                                                                                      | en                                                |
| NOT                     |                                                                                                                                                                                                         |                                                   |
| BETWEEN                 | WHERE unitprice BETWEEN 10 AND 15                                                                                                                                                                       | tussen                                            |
| NOT BETWEEN             | WHERE unitprice NOT BETWEEN 10 AND 15                                                                                                                                                                   | niet tussen                                       |
| IN                      | WHERE supplierid IN (1,3,5)                                                                                                                                                                             | meerdere waarden                                  |
| NOT IN                  | WHERE supplierid NOT IN (1,3,5)                                                                                                                                                                         | exclude meerdere                                  |
| IS NULL                 | WHERE region IS NULL                                                                                                                                                                                    | is leeg                                           |
| IS NOT NULL             | WHERE region IS NOT NULL                                                                                                                                                                                | is niet leeg                                      |
| ORDER BY                | SELECT Kolom FROM products Tabel ORDER BY categoryid DESC<br>SELECT Kolom FROM products Tabel ORDER BY categoryid ASC<br>SELECT Kolom FROM products Tabel ORDER BY categoryid, unitprice DESC           | Aflopen<br>Oplopend<br>op meerdere                |
| DISTINCT                | SELECT DISTINCT Kolom FROM Tabel                                                                                                                                                                        | Haal dubbele uit view                             |
| AS                      | SELECT productid AS ProductNummer FROM products<br>SELECT productid ProductNummer FROM products<br>SELECT productid ProductNummer, productname ‘Naam Product’ FROM products                             | kolom hernoemen<br>ook zonder AS<br>ook zonder '' |
| HAVING                  |                                                                                                                                                                                                         |                                                   |
| **SHOW**<br>niet kennen | SHOW DATABASES;<br>SHOW TABLES;                                                                                                                                                                         | toont databases<br>toont tabellen                 |
|                         |                                                                                                                                                                                                         |                                                   |

## Select

```sql
SELECT * FROM Tabel;
```

```sql
SELECT Kolom FROM Tabel;
```

```sql
SELECT Kolom1,Kolom2,... FROM Tabel;
```

### Where

```sql
SELECT ProductId,ProductName,UnitPrice
FROM products
WHERE categoryID = 1;
```

#### Voorwaarden aan rijen opleggen
- *Vergelijkingsoperatoren*
	- = (gelijk aan)
	- > (kleiner dan)
	- >= (kleiner dan of gelijk aan)
	- < (groter dan)
	- <= (groter dan of gelijk aan)
	- <> (is niet gelijk)
- *Wildcards*
	- De operator LIKE, NOT LIKE
	- In combinatie met wildcards:
		- % => willekeurige tekenrij met 0 of meerdere tekens
		- _ =>1 teken
- *Logische operatoren*
	- OR, AND, NOT (volgens stijgende prioriteit)
- *Een interval van specifieke waarden*
	- BETWEEN, NOT BETWEEN
- *Een lijst van waarden*
	- IN, NOT IN
- *Onbekende waarden*
	- IS NULL, IS NOT NULL
- *Je kan haakjes gebruiken om de prioriteitsregels te doorbreken of het geheel leesbaarder te maken*

### Null

- NULL waarden komen voor bij niet-ingevulde kolommen (zonder default waarde).
- NULL is niet gelijk aan 0 of een blanco string!
- NULL velden worden onderling als gelijk beschouwd (voor testen met DISTINCT)
- Als in een rekenkundige uitdrukking een NULL-veld wordt verwerkt is het resultaat ook NULL
- `region<> ‘OR’` geeft geen lege velden terug, gebruik `region<> ‘OR’ OR regionIS NULL`

### Formatteren van de resultaten

- Sorteren data
	- *ORDER BY* clausule
		- Kan meerdere sorteervelden bevatten
		- Een sorteerveld is een kolomnaam of een volgnummer dat overeenkomt met de volgorde van het gegeven achter de SELECT.
		- Bij meerdere sorteervelden gebeurt het sorteren van links naar rechts.
		- Standaard gebeurt het sorteren in stijgende volgorde (ASC).Een dalende volgorde moet expliciet vermeld worden (DESC)
	
- Eliminatie van duplicaten
	- *DISTINCT* produceert een lijst waarin alle rijen uniek zijn, identieke rijen worden uit het resultaat verwijderd.
	- *ALL*(default) toont alle rijen, ook dubbels.
	
- Wijzigen van kolomnaam
	- Standaard : kolomtitel = naam van kolom in tabel; berekende kolommen krijgen geen kolomnaam.
	- Een kolom een andere titel geven:
		- Via *AS* keyword
		- Met een string na de kolomnaam
		- Die nieuwe kolomnaam kan je ook gebruiken in ORDER BY (maar niet in WHERE, HAVING, GROUP BY)
	
- Berekende resultaatkolommen
	- Via wiskundige operatoren : +, -, /, *
	```sql
 SELECT ProductName, Unitprice * UnitsInStockAS InventoryValue FROM Products
```

### Commentaar
- /\* commentaar \*/ 
- \--commentaar (beperkt zich tot 1 lijn)

### Functies

- *String functies*: concat, left, right, length, substring, replace, ...
- *DateTime functies*: dateAdd, dateDiff, day, month, year, ...
	- **NOW()**: retourneert huidige datum en tijd in DATETIME formaat: JJJJ-MM-DD UU:MM:SS.
	- **CURDATE()** →huidige datum in JJJJ-MM-DD
- *Rekenkundige functies*: round, floor, ceil, cos, sin, ...
- *Aggregate functies*: AVG, SUM, MIN, MAX ...
- *IFNULL(kolom, x)*: vervangt gevonden NULL-waardes door x.

### data conversie

- Impliciet,voor sommige omzettingen
	- Voorbeeld: UnitPrice* 0,5 →UnitPrice(money) wordt automatisch naar decimal geconverteerd

- Expliciet met:
	- CAST(\<value expression\> AS \<data type\>)
	- Voorbeeld:
			- PRINT CAST(-25.25 AS INTEGER) →-25
			- SELECT CAST(38,8 AS CHAR) →‘38,8’
			
	- CONVERT(\<expression\>, type)
		- Voorbeeld
			- CONVERT( curdate(), char)→‘2016-11-24’
		
### strings

- Stringoperator: *concatenatie*
```sql
SELECT CONCAT(productid, ‘ , ’, productname) AS Product FROM Products;
```
![[Pasted image 20241121112432.png]]


- Gebruik maken van tekst (*literals*)
```sql
SELECT ProductName, ‘$’, Unitprice FROM Products;
```
![[Pasted image 20241121112416.png]]


### CASE functie

- Voorbeeld voor verschepingskost:

```sql
SELECT OrderID, Freight,
  CASE 
	when Freight is null then'Kost onbekend’
	when Freight = 0 then'Gratis verscheping' 
	when Freight < 20 then'Lage verschepingskost' 
	when Freight < 100 then'Gemiddelde verschepingskost' 
	else ‘Hoge verschepingskost' 
  END
	as ‘Verschepingskost’ FROM orders;
```