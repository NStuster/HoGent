

| Commando                        | Voorbeeld                                                                                                                                                                                               | Uitleg                                                                     |
| ------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| **USE**                         | USE Northwind;                                                                                                                                                                                          | welke database                                                             |
| **SELECT**                      | SELECT \* FROM Orders;<br>SELECT Kolom FROM Tabel;<br>SELECT Kolom1,Kolom2,... FROM Tabel;                                                                                                              | Weergeven (kolom)<br>Minimum syntax                                        |
| FROM                            |                                                                                                                                                                                                         | uit welke tabel                                                            |
| WHERE                           | SELECT ProductName FROM products WHERE categoryID = 1;<br>SELECT ProductName FROM products WHERE productName = 'Chai';<br>SELECT ProductName FROM products WHERE orderDate = '1996-07-04 00:00:00';<br> | Om te filteren                                                             |
| LIKE                            | WHERE productname LIKE 'Anton';<br>WHERE productname LIKE '%ton%';<br>WHERE productname LIKE '\_nton';<br>WHERE productname LIKE '% %';                                                                 | Lijkt op<br>% eender wat<br>_ 1 teken eender wat<br>waar spatie tussen zit |
| NOT LIKE                        | WHERE productname NOT LIKE 'Anton';                                                                                                                                                                     | Exclude                                                                    |
| OR                              | WHERE productname LIKE 'Anton' OR ProductId = 46;                                                                                                                                                       | of                                                                         |
| AND                             | WHERE productname LIKE 'Anton' AND ProductId = 46;                                                                                                                                                      | en                                                                         |
| NOT                             |                                                                                                                                                                                                         |                                                                            |
| BETWEEN                         | WHERE unitprice BETWEEN 10 AND 15                                                                                                                                                                       | tussen                                                                     |
| NOT BETWEEN                     | WHERE unitprice NOT BETWEEN 10 AND 15                                                                                                                                                                   | niet tussen                                                                |
| IN                              | WHERE supplierid IN (1,3,5)                                                                                                                                                                             | meerdere waarden                                                           |
| NOT IN                          | WHERE supplierid NOT IN (1,3,5)                                                                                                                                                                         | exclude meerdere                                                           |
| IS NULL                         | WHERE region IS NULL                                                                                                                                                                                    | is leeg                                                                    |
| IS NOT NULL                     | WHERE region IS NOT NULL                                                                                                                                                                                | is niet leeg                                                               |
| ORDER BY                        | SELECT Kolom FROM products Tabel ORDER BY categoryid DESC<br>SELECT Kolom FROM products Tabel ORDER BY categoryid ASC<br>SELECT Kolom FROM products Tabel ORDER BY categoryid, unitprice DESC           | Aflopen<br>Oplopend<br>op meerdere                                         |
| DISTINCT                        | SELECT DISTINCT Kolom FROM Tabel                                                                                                                                                                        | Haal dubbele uit view                                                      |
| AS                              | SELECT productid AS ProductNummer FROM products<br>SELECT productid ProductNummer FROM products<br>SELECT productid ProductNummer, productname ‘Naam Product’ FROM products                             | kolom hernoemen<br>ook zonder AS<br>ook zonder ''                          |
| LENGTH                          | WHERE LENGTH(name) = 9                                                                                                                                                                                  | telt lengte van de string                                                  |
| DATEDIFF                        | WHERE DATEDIFF(leverdatum, besteldatum) < 14                                                                                                                                                            | vergelijken van 2 datums met 14 dagen tussen                               |
| HAVING                          |                                                                                                                                                                                                         |                                                                            |
| CONCAT                          | SELECT naam, CONCAT(hoogte, ' cm') AS 'hoogtes'                                                                                                                                                         | Samenvoegen van text                                                       |
|                                 |                                                                                                                                                                                                         |                                                                            |
|                                 | **Statische functies (aggregaatfuncties)**                                                                                                                                                              | werkt niet bij WHERE                                                       |
| SUM                             | SELECT SUM(UnitsInStock * UnitPrice) as inventoryvalue FROM products                                                                                                                                    | som van alle niet-NULL                                                     |
| AVG                             | SELECT AVG(unitsinstock) AS AverageStock FROM products                                                                                                                                                  | gemiddelde van alle niet-NULL                                              |
| MIN                             | SELECT MIN(unitprice) AS Minimum FROM products                                                                                                                                                          | retourneert de kleinste waarde                                             |
| MAX                             | SELECT MAX(unitprice) AS Maximum FROM products                                                                                                                                                          | retourneert de grootste waarde                                             |
| COUNT(\*\|[DISTINCT] kolomnaam) | SELECT COUNT(\*) as Aantal<br>COUNT(kolomnaam)                                                                                                                                                          | telt aantal rijen<br>telt aantal niet-lege velden                          |
|                                 |                                                                                                                                                                                                         |                                                                            |
| GROUP BY                        | SELECT CategoryID FROM Products GROUP BY CategoryID<br>                                                                                                                                                 | groepen van rijen                                                          |
| JOIN ON<br>(inner)              | SELECT orders.OrderID, ShipCountry, ProductID, Quantity <br>FROM orders JOIN order_details <br>	ON orders.OrderID = order_details.OrderID <br>WHERE ShipCountry not in ('Belgium','France','Germany')   | Selecteren uit meerdere kolommen                                           |
| JOIN ON<br>(left outer)         |                                                                                                                                                                                                         |                                                                            |
| JOIN ON<br>(right outer)        |                                                                                                                                                                                                         |                                                                            |
| JOIN ON<br>(cross join)         |                                                                                                                                                                                                         |                                                                            |
| UNION                           | SELECT firstname+ ‘ ‘ + lastnameas name, city, postalcode <br>FROM Employees <br>UNION<br>SELECT companyname, city, postalcode <br>FROM Customers                                                       | combineer 2 tabellen zonder associatie                                     |
|                                 |                                                                                                                                                                                                         |                                                                            |
| **SHOW**<br>niet kennen         | SHOW DATABASES;<br>SHOW TABLES;                                                                                                                                                                         | toont databases<br>toont tabellen                                          |
|                                 |                                                                                                                                                                                                         |                                                                            |
| **INSERT**                      |                                                                                                                                                                                                         |                                                                            |
| **UPDATE**                      |                                                                                                                                                                                                         |                                                                            |
| **DELETE**                      |                                                                                                                                                                                                         |                                                                            |