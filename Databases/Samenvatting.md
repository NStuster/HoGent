
# H01 [Databanken inleiding](./H01%20Inleiding.md)
## Wie gebruikt databank(technologie)?
## Gegevensbeheer: ‘klassiek’ bestand <-> databank
## (R)DBMS
## Delen van een databanksysteem
## Belangrijke begrippen
# H02 [Conceptueel model](./H02%20Conceptueel%20model.md)
## Fases in Databank Ontwerp
###  **Fase 1** = Verzamelen en analyseren informatie
### **Fase 2** = Conceptueel ontwerp
### **Fase 3** = Logisch ontwerp
### **Fase 4** = Fysiek ontwerp
## Conceptueelontwerp: **Entity Relationship Diagram** (ERD)
### Entiteit type
### Attribuuttype tov entiteittype
### Relatietype
### Relatie-attribuut
### Attribuuttype
### Kandidaat sleutel attributen
### Cardinaliteiten

# H03 [Zwakke entiteiten](./H03%20Zwakke%20entiteiten.md)
## Inleiding
## Definitie
## Zwak entiteittype versus bestaansafhankelijk
## Historiek
## Ternaire relatie
# H04 [Conceptueel model: **Enhanced Entity Relationship Diagram**](./H04%20Enhanced%20Entity%20Relationship%20Diagram.md)
## Inleiding
## Specialisatie en Generalisatie
### Specialisatie
### Generalisatie
## Participatie en Disjoint constraint
### Participatie constraint
### Disjoint constraint
## Beperkingen van het ERD
### Beperkingen van het ERD
### Fan Trap
### Chasm Trap
## Wanneer is het model correct?
# H05 [Relationeel model](./H05%20Relationeel%20model.md)
## Fasen in de ontwikkeling van een DB
## Van conceptueel model naar logisch model
## Bouwstenen voor het relationeel model
## Terminologie
### Tupel
### Attribuut
### Domein
### Relatie
## Vergelijking met het ER-model
## Regels van het relationeel model
## Sleutels
### Inleiding
### Kandidaatsleutel
### Primaire sleutel
### Alternatieve sleutel
### Vreemde sleutels = foreign keys

## Mapping
### Stappenplan
### Mapping van entiteittypes
### Mapping van relatietypes
#### 1 op 1 relatie met min card = 1 aan één zijde
#### 1 op 1 relatie met min card = 0 aan beide zijden
#### 1 op N relatie
#### 1 op N unaire relatie
#### M op N relatie
### Zwakke entiteiten
### Mapping meerwaardige attributen
### Mapping Specialisatie: {Mandatory, And}
### Mapping Specialisatie: {Optional, And}
### Mapping Specialisatie: {Mandatory, Or}
### Mapping Specialisatie: {Optional, Or}
## Structuurbeperkingen

# H06 [Normalisatie](./H06%20Normalisatie.md)
## Inleiding
## Doel
### Vermindering van gegevensredundantie
### Vermijden van invoeg-, verwijder- en modificatie-anomalieën
### Verhoging van gegevensconsistentie
### Betere gegevensintegriteit
### Verbeterde onderhoudbaarheid en schaalbaarheid
## Functionele afhankelijkheid
### Functionele afhankelijkheid
### Partiële functionele afhankelijkheid
### Transitieve functionele afhankelijkheid
### Identificeren van functionele afhankelijkheid
## Normalisatiestappen
### Inleiding
### Normalisatie stap 1: opstellen van R0 + FA
### Normalisatie stap 2: opstellen van R1
### Normalisatie stap 3: opstellen van R2
### Normalisatie stap 4: opstellen van R3
### Normalisatie stap 5: opstellen van RM
### Normalisatie - Voorbeeld
# H07 [Inleiding SQL -- Select](./H07%20Inleiding%20SQL%20--%20Select.md)
## Structured Query Language (SQL)
### SQL – standaarden en dialecten
### SQL – overzicht
### DML – raadplegen van gegevens
## SELECT statement
### Basisvorm SELECT statement
### SELECT statement
### SELECT … WHERE
### SELECT - formatteren resultaten
### SELECT - ORDER BY
### SELECT - DISTINCT/ALL
### SELECT en gebruik van aliassen
### SELECT met berekende resultaten
### SELECT en gebruik van functies
### SELECT en data conversie
### SELECT en strings
### SELECT en de CASE functie
# H08 [Werken met meerdere tabellen **(Group by, Join, Union)**](./H08%20Werken%20met%20meerdere%20tabellen%20(Group%20by,%20Join,%20Union).md)
## Basisvorm SELECT statement
## Group by en statistische functies
### Statistische functies
### Som en gemiddelde
### Aantal rijen tellen
### Minimum en maximum
### Groeperen via GROUP BY
### Groeperen verfijnen via HAVING
### WHERE <> HAVING
## Join
### Inleiding
### INNER JOIN
#### Aliassen
#### INNER JOIN van meerdere tabellen
#### INNER JOIN van een tabel met zichzelf
### OUTER JOIN
#### LEFT OUTER JOIN
#### RIGHT OUTER JOIN
#### CROSS JOIN

## Union
# H09 [SQL -- DML **(Insert, Update, Delete)**](./H09%20SQL%20--%20DML%20(Insert,%20Update,%20Delete.md)
## Insert
### SQL – DML basisopdrachten
### Toevoegen van data -- INSERT
### INSERT van één rij
## Update
### Wijzigen van data -- UPDATE
## Delete
### Verwijderen van data -- DELETE
# H10 [SQL -- DDL **(Create, Alter, Drop)**](./H10%20SQL%20--%20DDL%20(Create,%20Alter,%20Drop).md)
## Fysiek model
### Inleiding
### Stappen in de ontwikkeling van een DB:
### Voorbeeld
## Inleiding DDL
## DDL - Databank
### CREATE DATABASE
### DROP DATABASE
## DDL - Tabellen
### CREATE TABLE
### ALTER TABLE
### DROP TABLE
## Scripts
## SQL Datatypes
### Overzicht van de verschillende categorieën van datatypes
### Te gebruiken datatypes
## Constraints
### AUTO_INCREMENT waarden
### Definitie van primaire sleutel
### Definitie van vreemde sleutel
### Relationeel model
### DDL Databank
### DDL Tabel
### DDL extra voorbeelden


# Samenvatting

## EERD

- Entiteit type
	- Zwakke entiteit
	- Historiek
- Attribuut type
- Relatie type
	- type 
		- Unair
		- Binair
		- Ternair (ongewenst)
	- Cardinaliteit  
	- Specialisatie
		- Participatie constraint
			- Mandetory / optional
		- Disjoint constraint
			- And/Or
	- Generalisatie

Beperkingen van het ERD
	1. Tijdelijke beperkingen
	2. Het ERD kan geen consistentie garanderen tussen verschillende relatietypes
	3. In het ERD is het domein waartoe attributen behoren, niet bekend
	4. In het ERD is het niet mogelijk de definitie van functies op te nemen
	5. Fan trap
	6. Chasm Trap

## Mapping

NOG BEKIJKEN
## Relationeel model

- Doel:
	- Vermindering van gegevensredundantie
	- Vermijden van invoeg-, verwijder-en modificatie-anomalieën
	- Verhoging van gegevensconsistentie
	- Betere gegevensintegriteit
	- Verbeterde onderhoudbaarheid en schaalbaarheid
### 1. FA (Functionele afhankelijkheid)
- Is A →Afhankelijk van B?
	- **A wordt genenereerd op basis van B**
	- **A is de kandidaatsleutel (Altijd uniek)**
- Vraag je van elke kolom af hoe dit gegeven bepaald wordt

- Schrijf de functionele afhankelijkheden op in de vorm X→Y, waarbij:
	- X een attribuut (of combinatie van attributen) is
	- Y één of meerdere attributen is die volledig worden bepaald door X

Voorbeelden:
- _Klantnummer_ → _Naam, Adres, Postcode, Woonplaats_
- (_Voornaam_, _Achternaam_, _Geboortedatum_) → _PersoonsID_ (indien je dit als samengestelde sleutel zou hanteren)
	- meestal zal de keuze zijn:
	- _PersoonsID_ → _Voornaam_, _Achternaam_, _Geboortedatum_
- _ProductID_ → _ProductNaam, Categorie, Prijs_

### 2. Nomalisatie

Zodra je een (zoveel mogelijk) complete en consistente set functionele afhankelijkheden hebt, kun je deze gebruiken om stapsgewijs te normaliseren:

- **R0 (Analyse)**: 
	- **Verzamelen van gegevens**
	- **bepalen wat herhaald/overbodig is** (maar nog niets doen)
	- **checken of er een ID is.**
- **R1 (1NF)**: 
	- **Verwijderen herhalende groepen**
	- atomaire attributen(**Samenstellingen splitsen**)
	- **invoeren/verfijnen van primaire sleutels.**
- **R2 (2NF)**: 
	- **Wegwerken partiële afhankelijkheden** .
		- Partiële afhankelijkheid komt alleen voor als je een samengestelde sleutel hebt.
		- bv: Puntenboek(*StudentId*, *VakId* ,Cijfer, StudentenNaam)
			- Samengestelde sleutel -> *StudentId*, *VakId* 
			- Partiele afhankelijkheid -> StudentenNaam (alleen afhankelijk van StudentenId)
			- OPLOSSING, opsplitsen in 2 tabellen zodat Studentenaam er niet meer in zit.
- **R3 (3NF)**: 
	- Wegwerken transitieve afhankelijkheden (een niet-sleutelattribuut hangt niet via een ander attribuut af van de sleutel).
		- Een **transitieve afhankelijkheid** (A→B en B→C, waarbij B geen sleutel is) betekent dat bepaalde attributen niet rechtstreeks van de primaire sleutel afhangen, maar via een ander attribuut.
- **RM (BCNF & afronden)**: 
	- Controleren of elke determinant (sleutel) een candidate key is,
	- **tabellen definitief benoemen**, 
	- **Integriteitsregels toevoegen** referentiële integriteit en andere constraints toevoegen, 
	- en **alles integreren in één relationeel schema**.

## SQL

- **SQL basis DML opdrachten**
	- `SELECT`
		raadplegen van gegevens
		- WHERE
			- LIKE
			- NOT LIKE
			- OR
			- AND
	- `INSERT`
		toevoegen van gegevens
	- `UPDATE`
		wijzigen van gegevens
	- `DELETE`
		verwijderen van gegevens

- **SQL basis DDL opdrachten**
	- `Create`
		aanmaken tabel, kolom
	- `Alter`
		
	- `Drop`

### DML

| Commando    | Voorbeeld                                                                                                                                                                                                 | Uitleg                                                                     |
| ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| **USE**     | `USE Northwind;`                                                                                                                                                                                          | welke database                                                             |
| **SELECT**  | `SELECT \* FROM Orders;`<br>`SELECT Kolom FROM Tabel;`<br>`SELECT Kolom1,Kolom2,... FROM Tabel;`                                                                                                          | Weergeven (kolom)<br>Minimum syntax                                        |
| FROM        |                                                                                                                                                                                                           | uit welke tabel                                                            |
| WHERE       | `SELECT ProductName FROM products WHERE categoryID = 1;`<br>`SELECT ProductName FROM products WHERE productName = 'Chai';`<br>`SELECT ProductName FROM products WHERE orderDate = '1996-07-04 00:00:00';` | Om te filteren                                                             |
| LIKE        | `WHERE productname LIKE 'Anton';`<br>`WHERE productname LIKE '%ton%';`<br>`WHERE productname LIKE '\_nton';`<br>`WHERE productname LIKE '% %';`                                                           | Lijkt op<br>% eender wat<br>_ 1 teken eender wat<br>waar spatie tussen zit |
| NOT LIKE    | `WHERE productname NOT LIKE 'Anton';`                                                                                                                                                                     | Exclude                                                                    |
| OR          | `WHERE productname LIKE 'Anton' OR ProductId = 46;`                                                                                                                                                       | of                                                                         |
| AND         | `WHERE productname LIKE 'Anton' AND ProductId = 46;`                                                                                                                                                      | en                                                                         |
| NOT         |                                                                                                                                                                                                           |                                                                            |
| BETWEEN     | `WHERE unitprice BETWEEN 10 AND 15`                                                                                                                                                                       | tussen                                                                     |
| NOT BETWEEN | `WHERE unitprice NOT BETWEEN 10 AND 15`                                                                                                                                                                   | niet tussen                                                                |
| IN          | `WHERE supplierid IN (1,3,5)`                                                                                                                                                                             | meerdere waarden                                                           |
| NOT IN      | `WHERE supplierid NOT IN (1,3,5)`                                                                                                                                                                         | exclude meerdere                                                           |
| IS NULL     | `WHERE region IS NULL`                                                                                                                                                                                    | is leeg                                                                    |
| IS NOT NULL | `WHERE region IS NOT NULL`                                                                                                                                                                                | is niet leeg                                                               |
| ORDER BY    | `SELECT Kolom FROM products Tabel ORDER BY categoryid DESC`<br>`SELECT Kolom FROM products Tabel ORDER BY categoryid ASC`<br>`SELECT Kolom FROM products Tabel ORDER BY categoryid, unitprice DESC`       | Aflopen<br>Oplopend<br>op meerdere                                         |
| DISTINCT    | `SELECT DISTINCT Kolom FROM Tabel`                                                                                                                                                                        | Haal dubbele uit view                                                      |
| AS          | `SELECT productid AS ProductNummer FROM products`<br>`SELECT productid ProductNummer FROM products`<br>`SELECT productid ProductNummer, productname ‘Naam Product’ FROM products`                         | kolom hernoemen<br>ook zonder AS<br>ook zonder ''                          |
| LENGTH      | `WHERE LENGTH(name) = 9`                                                                                                                                                                                  | telt lengte van de string                                                  |
| DATEDIFF    | `WHERE DATEDIFF(leverdatum, besteldatum) < 14`                                                                                                                                                            | vergelijken van 2 datums met 14 dagen tussen                               |
| HAVING      |                                                                                                                                                                                                           |                                                                            |
| CONCAT      | `SELECT naam, CONCAT(hoogte, ' cm') AS 'hoogtes'`                                                                                                                                                         | Samenvoegen van text                                                       |

|       | **Statische functies (aggregaatfuncties)**                             | werkt niet bij WHERE                              |
| ----- | ---------------------------------------------------------------------- | ------------------------------------------------- |
| SUM   | `SELECT SUM(UnitsInStock * UnitPrice) as inventoryvalue FROM products` | som van alle niet-NULL                            |
| AVG   | `SELECT AVG(unitsinstock) AS AverageStock FROM products`               | gemiddelde van alle niet-NULL                     |
| MIN   | `SELECT MIN(unitprice) AS Minimum FROM products`                       | retourneert de kleinste waarde                    |
| MAX   | `SELECT MAX(unitprice) AS Maximum FROM products`                       | retourneert de grootste waarde                    |
| COUNT | `SELECT COUNT(\*) as Aantal`<br>`COUNT(kolomnaam)`                     | telt aantal rijen<br>telt aantal niet-lege velden |

|                          |                                                                                                                                                                                                               |                                                                                                                                       |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| GROUP BY                 | `SELECT CategoryID FROM Products GROUP BY CategoryID`                                                                                                                                                         | groepen van rijen                                                                                                                     |
| JOIN ON<br>(inner)       | `SELECT orders.OrderID, ShipCountry, ProductID, Quantity `<br>`FROM orders JOIN order_details `<br>	`ON orders.OrderID = order_details.OrderID `<br>`WHERE ShipCountry not in ('Belgium','France','Germany')` | -Selecteren uit meerdere kolommen<br>-**alleen** de rijen waarin **beide** tabellen <br>aan de join-voorwaarde voldoen                |
| JOIN ON<br>(left outer)  | `SELECT c.CompanyName, o.OrderID  `<br>`FROM Customers c  `<br>`LEFT JOIN Orders o ON o.customerid = c.customerid; `                                                                                          | - **alle** rijen uit de **linkertabel** zien, ongeacht match, <br>en (optioneel) de corresponderende gegevens <br>uit de rechtertabel |
| JOIN ON<br>(right outer) | `SELECT c.CompanyName, o.OrderID  `<br>`FROM Customers c  `<br>`RIGHT JOIN Orders o ON o.customerid = c.customerid; `                                                                                         | - idee als left, maar dan behoud je<br> **alle rijen uit de rechtertabel**                                                            |
| JOIN ON<br>(cross join)  | `SELECT c.CompanyName, o.OrderID ` <br>`FROM Customers c  `<br>`RIGHT JOIN Orders o ON o.customerid = c.customerid; `                                                                                         | - Je wilt het **Cartesian product**. <br>Elk record uit de ene tabel wordt <br>met elk record uit de andere tabel gecombineerd.       |
| UNION                    | `SELECT firstname+ ‘ ‘ + lastnameas name, city, postalcode `<br>`FROM Employees `<br>`UNION`<br>`SELECT companyname, city, postalcode `<br>`FROM Customers`                                                   | combineer 2 tabellen zonder associatie                                                                                                |

|                          |                                                                                                                                                                                                               |                                                                                                                                       |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| **SHOW**<br>niet kennen  | `SHOW DATABASES;`<br>`SHOW TABLES;`                                                                                                                                                                           | toont databases<br>toont tabellen                                                                                                     |
|                          |                                                                                                                                                                                                               |                                                                                                                                       |
| **INSERT**               | `INSERT INTO categories VALUES (10, 'Chocolade', NULL, NULL)`<br>of<br>`INSERT INTO categories (categoryID,categoryName) VALUES (10, ‘Chocolade’)`                                                            |                                                                                                                                       |
| **UPDATE**               | `UPDATE products`<br>`SET unitprice = (unitprice * 1.1), unitsinstock = 0`<br>`WHERE productname = ‘Chocolade’`                                                                                               |                                                                                                                                       |
| **DELETE**               | `DELETE FROM categories WHERE categoryName = ‘Chocolade’`<br>`DELETE FROM products` `TRUNCATE TABLE products`<br>`DELETE FROM order WHERE orderid IN (ORDER001, ORDER002, ORDER011, ORDER025)`                | <br>autoincrment opnieuw instellen                                                                                                    |
### DDL

|                  |                                                                                                                                                                                                                                                                                                                                                                                                        |                                                                                                                                                                       |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **USE**          | `Use mijndatabank;`                                                                                                                                                                                                                                                                                                                                                                                    | Database actief maken                                                                                                                                                 |
| **CREATE**       | `CREATE DATABASE database_name`                                                                                                                                                                                                                                                                                                                                                                        | Database aanmaken                                                                                                                                                     |
| **DROP**         | `DROP DATABASE database_name`                                                                                                                                                                                                                                                                                                                                                                          | Database verwijderen                                                                                                                                                  |
| **CREATE TABLE** | `CREATE TABLE speler`<br>`(`<br>`    spelerID INT NOT NULL AUTO_INCREMENT,`<br>`    spelernaam CHAR(25),`<br>`    gebjaar CHAR(4),`<br>`    kleur CHAR(10) CHECK (kleur IN ('rood', 'zwart')),`<br>`    huidigvak CHAR(20),`<br>`    isaandebeurt CHAR(1),`<br>`    spelnaam CHAR(5),`<br>`    PRIMARY KEY (spelerID)`<br>`);`                                                                         | Tabel aanmaken                                                                                                                                                        |
| **ALTER TABLE**  | `ALTER TABLE doelkaart`<br>`ADD CONSTRAINT PK_doelkaart PRIMARY KEY (doelID);`<br><br>`ALTER TABLE spelerdoelkaart`<br>`ADD CONSTRAINT FK_speler FOREIGN KEY (spelerID) REFERENCES speler(spelerID);`<br><br>`Alter table gangkaart`<br>`add column voordeel char(50);`<br><br>`Alter table gangkaart`<br>`modify column voordeel char(20);`<br><br>`Alter table gangkaart`<br>`drop column voordeel;` | Tabel aanpassen<br>-Primairy key toevoegen<br><br><br>-Foriegn key toevoegen<br><br><br>- Kolom toevoegen<br><br><br>- Tabel aanpassen<br><br><br>- Kolom verwijderen |
| **DROP TABLE**   | `Drop table speler;`                                                                                                                                                                                                                                                                                                                                                                                   | Tabel verwijderen                                                                                                                                                     |
