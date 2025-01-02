# Fysiek model

## Inleiding

- **Een logisch model wordt omgezet naar een fysiek model dat nadien wordt geïmplementeerd in een DBMS**.

- Het **fysiek model bestaat uit**:
	- De **definitie van de tabellen**;
	- **per tabel**:
		- definitie van de **primaire sleutel**;
		- definitie van de **vreemde sleutels**;
		- definitie van de **overige kolommen**: not null-waarden, integriteitregels, …. (zie ook 2TI);
		- definitie van **indices** (zie ook 2TI);
		- toewijzen aan **tablespace** (zie ook 2TI).

-  **Definitie van vreemde sleutels**
	- Referentiële integriteitsregel:
		Van een vreemde sleutel moet worden aangegeven of null-waarden zijn toegestaan. **Als uit het conceptueel model blijkt dat de minimale cardinaliteit** (ten opzichte van de ‘parent’) **gelijk is aan 1**, zijn **null-waarden niet toegestaan**. Dan moet er een not-null- declaratie aan de vreemde sleutelkolom worden toegevoegd.
## Stappen in de ontwikkeling van een DB:

![[Pasted image 20250102135923.png]]

## Voorbeeld

![[Pasted image 20250102140345.png]]

![[Pasted image 20250102140403.png]]

# Inleiding DDL

- DDL wordt gebruikt voor
	- het definiëren van databanken
	- het definiëren van tabellen
	- het vastleggen van datatypes
	- het definiëren van constraints - data integriteit (2TI)
	- het definiëren van indices (2TI)
# DDL - Databank
## CREATE DATABASE

- **Aanmaken van een database**

```sql
CREATE DATABASE database_name
```

```sql
-- Voorbeeld

CREATE DATABASE oefenDB
```
## DROP DATABASE

- **Verwijderen van database**
- Merk op dat de systeemdatabank niet kan verwijderd worden!

```sql
DROP DATABASE database_name
```

```sql
-- Voorbeeld

DROP DATABASE oefenDB
```
# DDL - Tabellen
## CREATE TABLE

- **Tabel aanmaken**


```sql
CREATE TABLE table_name(
{<column_definition> |
<computed_column_definition> |
<column_set_definition> }
[<table_constraint>] [ ,...n ])
```


```sql
-- Voorbeeld

CREATE TABLE student (
studentno int NOT NULL,
lastname char(30) NOT NULL,
firstname char(30) NOT NULL,
gender char(1) NOT NULL
)
```
## ALTER TABLE

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


### Toevoegen van een kolom

```sql
-- Voorbeeld: voeg aan de tabel student de kolom address toe (tekst 40 posities variabele lengte)

ALTER TABLE student
ADD address char(40) NULL
```
### Wijzigen van een kolom

```sql
-- Voorbeeld: as de kolom address aan, vergroot het aantal posities tot 50

ALTER TABLE student
MODIFY COLUMN address char(50) NULL
```
### Verwijderen van een kolom

```sql
-- Voorbeeld: verwijder de kolom address

ALTER TABLE student
DROP COLUMN address
```
## DROP TABLE

- **Tabel verwijderen**

```sql
DROP TABLE table_name
```

```sql
-- Voorbeeld: verwijder de tabel student

DROP TABLE student
```
# Scripts

-  verzameling SQL statements

- handig voor
	- batch processing
	- creatie van test- of productieomgeving

-  kan op verschillende niveaus
	- databank, tabel, …


```sql
-- Voorbeeld script

-- Aanmaken van een database
CREATE DATABASE oefenDB;

-- Selecteren van de nieuwe database
USE oefenDB;

-- Aanmaken van een tabel
CREATE TABLE student (
    studentno INT NOT NULL,
    lastname CHAR(30) NOT NULL,
    firstname CHAR(30) NOT NULL,
    gender CHAR(1) NOT NULL
);

-- Selecteren van alle rijen uit de student tabel (om te controleren of de tabel goed aangemaakt is)
SELECT * FROM student;
```
# SQL Datatypes

## Overzicht van de verschillende categorieën van datatypes

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
## Te gebruiken datatypes
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
# Constraints
## AUTO_INCREMENT waarden

- **Wordt door systeem beheerd**

- een `AUTO_INCREMENT` kolom bevat
	- **voor elke rij een unieke waarde**
	- **door het systeem gegenereerde (sequentiële) waarden**

- slechts **1 `AUTO_INCREMENT` kolom per tabel mogelijk**

- **maakt gebruik van een integer datatype**

- een `AUTO_INCREMENT` kolom **kan geen NULL waarden bevatten**

- een `AUTO_INCREMENT` kolom **kan je niet zelf aanpassen**
	- via `LAST_INSERT_ID()` kan je de **laatst gecreëerde waarde opvragen**

```sql
-- Voorbeeld: tabel ‘studentVoorbeeldAutoIncrement’ met een AUTO_INCREMENT kolom studentno aan toevoegen

CREATE TABLE studentVoorbeeldAutoIncrement(
studentno int NOT NULL AUTO_INCREMENT, --> is primairy key
lastname char(30) NOT NULL,
firstname char(30) NOT NULL,
gender boolean NOT NULL
)
```

```sql
-- Voorbeeld: AUTO_INCREMENT start nu vanaf 100

ALTER TABLE studentVoorbeeldAutoIncrement
AUTO_INCREMENT = 100
```

## Definitie van primaire sleutel

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

```sql
-- Voorbeeld: definitie van de primaire sleutel als aparte regel

constraint studentno_PK primary key(studentno)
```

```sql
CREATE TABLE users(
user_id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(40),
password VARCHAR(255),
email VARCHAR(255)
);

CREATE TABLE userroles(
user_id INT NOT NULL,
role_id INT NOT NULL,
PRIMARY KEY(user_id, role_id)
);
```
## Definitie van vreemde sleutel

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
## Relationeel model

- **Voorbeeld: EERD**
![[Pasted image 20250102143525.png]]

- **Relationeel model**
![[Pasted image 20250102143607.png]]

## DDL Databank

```sql
Create database mijndatabank;
Use mijndatabank;
```
## DDL Tabel

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

## DDL extra voorbeelden

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
