
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
## Constraints
### AUTO_INCREMENT waarden
### Definitie van primaire sleutel
### Definitie van vreemde sleutel
### Relationeel model
### DDL Databank
### DDL Tabel
### DDL extra voorbeelden