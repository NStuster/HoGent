# Basisvorm SELECT statement


```sql
SELECT [ALL | DISTINCT] {*|uitdrukking [,uitdrukking ...]}
FROM tabelnaam
[WHERE voorwaarde(n)]
[GROUP BY kolomnaam [,kolomnaam ...]
[HAVING voorwaarde(n)]
[ORDER BY {kolomnaam|volgnr}{ASC|DESC}[,...]
```


- `SELECT` clausule: specificeert de kolommen die je wenst te zien.
	- `DISTINCT` zorgt ervoor dat de getoonde rijen allen uniek zijn
- `FROM` clausule: geeft aan uit welke tabel de gegevens afkomstig zijn
	- `WHERE` clausule: opgave van de voorwaarden waaraan de getoonde rijen moeten voldoen
	- `ORDER BY` clausule: bepaalt de volgorde waarin de rijen getoond moeten worden
	- `GROUP BY` en `HAVING` clausule: groeperen van de gegevens
# Group by en statistische functies
## Statistische functies

- Statistische functies (= **aggregaatsfuncties**)
	- SQL voorziet **5 standaardfuncties**
		- `SUM(uitdrukking)`: **som**
		- `AVG(uitdrukking)`: **gemiddelde**
		- `MIN(uitdrukking)`: **minimum**
		- `MAX(uitdrukking)`: **maximum**
		- `COUNT(*|[DISTINCT] kolomnaam)`: **aantal**

- Deze functies **geven één antwoord per kolom** (*of groep*) en mogen dus **niet in een WHERE clausule** (*= rijniveau*) gebruikt worden.
## Som en gemiddelde

### SUM
- Berekent de som van alle niet-NULL numerieke waarden in één kolom.

```sql
-- Voorbeeld: Geef de totale stockwaarde van alle producten.

SELECT SUM(UnitsInStock * UnitPrice) as inventoryvalue
FROM products
```

### AVG
- Berekent het gemiddelde van alle niet-NULL numerieke waarden in één kolom.

```sql
-- Voorbeeld: Wat is de gemiddelde voorraad over alle producten?

SELECT AVG(unitsinstock) AS AverageStock
FROM products
```
## Aantal rijen tellen

- `COUNT(*)`: telt het aantal rijen van de selectie.

```sql
-- Voorbeeld: Tel het aantal producten.

SELECT COUNT(*) as Aantal FROM products
```


- `COUNT(kolomnaam)`: telt het aantal niet-lege velden in een kolom.

```sql
-- Voorbeeld: Tel het aantal producten met een (niet-lege) categorie.

SELECT COUNT(DISTINCT categoryid) as cat_count
FROM products
```

## Minimum en maximum

- `MIN` en `MAX`
	- retourneert de kleinste en de grootste waarde in een kolom
	- zowel op numerieke als alfanumerieke argumenten

```sql
-- Voorbeeld: Wat is het goedkoopste en het duurste product?

SELECT MIN(unitprice) AS Minimum,
MAX(unitprice) AS Maximum
FROM products
```

## Groeperen via GROUP BY

- `GROUP BY` clausule :
	- Indeling van tabel in groepen van rijen met gemeenschappelijke kenmerken.
	- Per groep wordt maar één rij teruggegeven!

- Elke groep is een afzonderlijke verzameling waarop statistische functies uitgevoerd kunnen worden.

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

### SELECT-clausule en het belang van hetzelfde niveau bij GROUP BY

In SQL moet elke waarde in de `SELECT`-clausule logisch overeenkomen met de manier waarop je de gegevens groepeert. Dit wordt vaak het **"niveau"** van de gegevens genoemd.

 **Uitleg van het concept:**

- **Als je `GROUP BY` gebruikt**: Je groepeert rijen samen op basis van één of meer kolommen.
    - Alle andere kolommen in de `SELECT`-clausule moeten óf:
        - Een **samenvattende functie** (zoals `MIN`, `MAX`, `AVG`, enz.) gebruiken, óf
        - Deel uitmaken van de kolommen waarmee gegroepeerd wordt.

Als je dit niet doet, krijg je een fout omdat SQL niet weet welke waarde het moet kiezen voor een niet-gegroepeerde kolom.
#### Voorbeelden:

1. **Gegroepeerde gegevens per groep (per artcode):**
    
    ```sql
    SELECT artcode, MIN(offerteprijs)
    FROM offertes
    GROUP BY artcode;
    ```
    
    - **Wat gebeurt hier?**
        - Gegevens worden gegroepeerd op `artcode`.
        - Voor elke `artcode` wordt de minimumwaarde van `offerteprijs` weergegeven.

2. **Gegevens zonder groepering:**
    
    ```sql
    SELECT artcode, MIN(offerteprijs)
    FROM offertes;
    ```
    
    - **Wat gebeurt hier?**
        - De query geeft **één waarde** voor `MIN(offerteprijs)` over de hele tabel.
        - Maar omdat `artcode` niet gegroepeerd wordt, kun je geen meerdere `artcode`-waarden in de output hebben.

#### Niveau-controle afdwingen met SQL-modus:

- **`SET sql_mode = 'ONLY_FULL_GROUP_BY';`**
    - Deze instelling zorgt ervoor dat SQL een foutmelding geeft als je niet-gegroepeerde kolommen opneemt zonder dat ze een samenvattende functie hebben.

- SQL wil altijd duidelijke instructies over hoe het de gegevens moet groeperen en samenvatten. Door deze regels te volgen of af te dwingen met `ONLY_FULL_GROUP_BY`, voorkom je verwarring of fouten in je queries.
#### Belangrijke punten:

- **Met `GROUP BY`**: Je mag alleen kolommen selecteren waarmee je groepeert of die worden samengevat.
- **Zonder `GROUP BY`**: Je mag geen losse kolommen combineren met samenvattingsfuncties.

## Groeperen verfijnen via HAVING

- `HAVING` clausule
	-  Selecteren van groepen op basis van bepaalde groepseigenschappen

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
## WHERE <> HAVING

- **Verschil tussen** `WHERE` **en** `HAVING`
	- `WHERE` - **heeft betrekking op enkele rijen***
	- `HAVING` - **heeft betrekking op groepen**

- **Statistische functies enkel te gebruiken in** `SELECT`, `HAVING`, `ORDER BY` 
	- **niet in** `WHERE`, `GROUP BY`

### Aandacht

Als je functies in de `SELECT`-clausule gebruikt, moeten **alle kolommen in de `SELECT`-lijst** óf:

1. Een **functie** hebben (zoals `SUM`, `MIN`, `MAX`, enz.), óf
2. In de `GROUP BY`-clausule staan.

👉 **Uitzondering**: Kolommen in `GROUP BY` hoeven geen functie te hebben.

#### Voorbeeld:

**Correct:**

```sql
SELECT artcode, MIN(prijs)
FROM offertes
GROUP BY artcode;
```

- `artcode` staat in `GROUP BY`.
- `MIN(prijs)` is een functie.

**Fout:**

```sql
SELECT artcode, prijs
FROM offertes
GROUP BY artcode;
```

- `prijs` staat niet in een functie en ook niet in `GROUP BY`.
# Join
## Inleiding

- Selecteren van kolommen uit meerdere tabellen
	- `JOIN` keyword: specifiëert de tabellen die samengevoegd moeten worden
		- `INNER JOIN`
		- `OUTER JOIN`
		- `CROSS JOIN`
	- `ON` keyword: specificeert hoe de tabellen samengevoegd worden
	
- **Produceert één resultaatset waarin de rijen uit die tabellen gekoppeld worden** (*op basis van de `ON`-criteria*)

### Basisvorm (ANSI JOIN (SQL-92) <> Old style join)

 **Wanneer gebruik je welke stijl?**
- **SQL-92 (ANSI JOIN):** Aanbevolen voor leesbaarheid en onderhoudbaarheid. Dit maakt duidelijk welke kolommen de relaties vormen.
- **Old Style JOIN:** Kan worden gebruikt, maar is minder overzichtelijk en foutgevoeliger bij complexe queries.

```sql
-- ANSI JOIN (SQL-92) 

SELECT uitdrukking
FROM tabel JOIN tabel ON voorwaarde
[JOIN tabel ON voorwaarde...]
```

```sql
-- Old style join

SELECT uitdrukking
FROM tabel, tabel [, tabel...]
WHERE voorwaarde
```
## INNER JOIN

- **Koppelen van rijen uit één tabel met rijen uit een andere tabel op basis van gemeenschappelijke waarden in de overeenkomstige kolommen**.

- De relatie tussen de velden in de verschillende tabellen kan je uitdrukken a.d.h.v.
	- `=` (equi-join)
	- `<`
	- `>`
	- `<>`
	- `>=`
	- `<=`

#### Voorbeeld van equi-join

- Geef alle bestellingen die niet bestemd zijn voor België, Frankrijk of Duitsland, met alle producten in die bestellingen en hun hoeveelheden.

```sql
-- ANSI JOIN (SQL-92)

SELECT orders.OrderID, ShipCountry, ProductID, Quantity
FROM orders JOIN order_details
ON orders.OrderID = order_details.OrderID
WHERE ShipCountry not in ('Belgium','France','Germany')
```

```sql
-- “old style join”

SELECT orders.OrderID, ShipCountry, ProductID, Quantity
FROM orders, order_details
WHERE orders.OrderID = order_details.OrderID
AND ShipCountry not in ('Belgium','France','Germany')
```

### Aliassen

- Gebruik van tabel aliassen (via `AS` of spatie)

- Als een kolomnaam in meerdere tabellen (gebruikt in de query) voorkomt, dan moet die steeds worden voorafgegaan door de tabelnaam (of alias).

- Inner joins geven enkel die rijen terug die voldoen aan de ON conditie. Dit betekent dat als een rij in de eerste tabel niet matcht met een rij uit detweede tabel (bijv. een order zonder producten), de rij niet zal geretourneerd worden en omgekeerd.

- Als een kolomnaam uniek is in de hele query, kun je de alias weglaten.

- Gebruik altijd de alias als er overlap is in kolomnamen of als je tabellen meerdere keren in dezelfde query gebruikt.

```sql
-- ANSI JOIN (SQL-92)

SELECT o.OrderID, ShipCountry, ProductID, Quantity
FROM orders o JOIN order_details od
ON o.OrderID = od.OrderID
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
-- “old style join”

SELECT o.OrderID, ShipCountry, ProductID, Quantity FROM
orders o, order_details od
WHERE o.OrderID = od.OrderID
AND ShipCountry not in ('Belgium','France','Germany')
```

 **Voorbeeld zonder alias:**

- Zonder aliassen moet je telkens de volledige tabelnaam gebruiken, wat minder overzichtelijk is.
```sql
SELECT orders.OrderID, orders.ShipCountry, order_details.ProductID, order_details.Quantity
FROM orders
JOIN order_details
ON orders.OrderID = order_details.OrderID
WHERE orders.ShipCountry NOT IN ('Belgium', 'France', 'Germany');
```

### INNER JOIN van meerdere tabellen

- Een `INNER JOIN` kan gegevens uit meerdere tabellen combineren. Dit is handig als de benodigde informatie verspreid is over meer dan twee tabellen. Je maakt verbindingen tussen de tabellen via sleutelkolommen (zoals primaire en vreemde sleutels).

 **Waarom meerdere tabellen joinen?**
1. **Gegevens uit drie of meer tabellen combineren:** Soms wil je kolommen uit meer dan twee tabellen in één query opnemen.
2. **Indirecte koppeling:** Soms hebben twee tabellen geen directe relatie, en gebruik je een derde tabel als tussenschakel.


```sql
-- ANSI JOIN (SQL-92):

SELECT o.OrderID, o.ShipCountry, p.ProductName, od.Quantity
FROM orders o
JOIN order_details od ON o.OrderID = od.OrderID
JOIN products p ON p.ProductID = od.ProductID
WHERE o.ShipCountry NOT IN ('Belgium', 'France', 'Germany');
```
**Wat gebeurt hier?**
- `orders` is gekoppeld aan `order_details` via `OrderID`.
- `order_details` is gekoppeld aan `products` via `ProductID`.
- Het resultaat bevat bestellingen, verzendlanden, productnamen, en hoeveelheden.
- Alleen verzendlanden buiten België, Frankrijk, en Duitsland worden getoond.

```sql
-- Old Style JOIN:

SELECT o.OrderID, o.ShipCountry, p.ProductName, od.Quantity
FROM orders o, order_details od, products p
WHERE o.OrderID = od.OrderID
AND p.ProductID = od.ProductID
AND o.ShipCountry NOT IN ('Belgium', 'France', 'Germany');
```
### INNER JOIN van een tabel met zichzelf

- Een **self join** is een speciale vorm van `INNER JOIN` waarbij je **dezelfde tabel** meerdere keren gebruikt in één query. Dit gebeurt vaak **wanneer je een relatie wilt leggen tussen rijen in dezelfde tabel**. 
  Bijvoorbeeld, je wilt de werknemers tonen samen met hun manager, maar beide zijn opgeslagen in dezelfde tabel (de `employees`-tabel).

- Een self join wordt mogelijk gemaakt door **tabelaliassen**. Je gebruikt verschillende aliassen voor dezelfde tabel, zodat je deze meerdere keren kunt gebruiken om verschillende gegevens te vergelijken of te combineren.

- **Samengevat:**
	- Een **self join** maakt gebruik van **tabelaliassen** om dezelfde tabel meerdere keren in een query te gebruiken.
	- Je maakt een **relatie tussen rijen in dezelfde tabel** via een vreemde sleutel die naar een primaire sleutel verwijst.
	- Het is handig bij **hiërarchieën** (zoals werknemers en managers) of wanneer je **gegevens met zichzelf wilt vergelijken**.
#### Voorbeeld: Toon werknemers en hun managers

- Stel dat je een tabel hebt met de volgende structuur:

|EmployeeID|FirstName|LastName|ReportsTo (ManagerID)|
|---|---|---|---|
|1|John|Doe|NULL|
|2|Jane|Smith|1|
|3|Peter|Johnson|1|
|4|Sarah|Lee|2|

- In dit voorbeeld is de kolom `ReportsTo` een vreemde sleutel die verwijst naar de `EmployeeID` van de manager.


```sql
--SQL-92 (ANSI JOIN) voor een self join

SELECT e.EmployeeID, e.FirstName AS EmployeeName, 
       m.EmployeeID AS ManagerID, m.FirstName AS ManagerName
FROM employees e
JOIN employees m ON e.ReportsTo = m.EmployeeID;
```

- **Wat gebeurt hier?**
    - **`e`** en **`m`** zijn beide aliassen voor de **zelfde tabel `employees`**.
    - **`e.ReportsTo`** is de vreemde sleutel die verwijst naar **`m.EmployeeID`**, wat de koppeling tussen werknemer en manager maakt.
    - Dit resulteert in een lijst van werknemers met hun manager.

- **Resultaat van de query:**

|EmployeeID|EmployeeName|ManagerID|ManagerName|
|---|---|---|---|
|2|Jane|1|John|
|3|Peter|1|John|
|4|Sarah|2|Jane|
- **Jane** en **Peter** rapporteren aan **John** (EmployeeID = 1).
- **Sarah** rapporteert aan **Jane** (EmployeeID = 2).


## OUTER JOIN
### LEFT OUTER JOIN

- **Haalt alle rijen uit de eerste tabel (links), en de overeenkomende rijen uit de tweede tabel (rechts).** Als er geen overeenkomst is, worden NULL-waarden voor de tweede tabel weergegeven.

```sql
-- Voorbeeld: Toon alle klanten en de bestellingen die ze plaatsten (inclusief klanten zonder bestellingen).

SELECT c.CompanyName, o.OrderID  
FROM Customers c  
LEFT JOIN Orders o ON o.customerid = c.customerid;  
```

### RIGHT OUTER JOIN

- **Haalt alle rijen uit de tweede tabel (rechts), en de overeenkomende rijen uit de eerste tabel (links)**. Als er geen overeenkomst is, worden NULL-waarden voor de eerste tabel weergegeven.

```sql
-- Voorbeeld: Toon alle bestellingen en de bijbehorende klantnaam (inclusief bestellingen zonder klant).

SELECT c.CompanyName, o.OrderID  
FROM Customers c  
RIGHT JOIN Orders o ON o.customerid = c.customerid;  
```

### CROSS JOIN

Combineert alle rijen van de eerste tabel met alle rijen van de tweede tabel. Het resultaat is een **cartesisch product**, wat betekent dat het aantal rijen gelijk is aan het aantal rijen in de eerste tabel maal het aantal rijen in de tweede tabel.

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

- Overeenkomstige kolommen uit beide SELECTs moeten van hetzelfde datatype zijn en beide NULL-waarden toelaten of niet.

- Kolommen komen voor in dezelfde volgorde.

- De kolomnamen/titels van de UNION zijn deze van de eerste SELECT.

- Het resultaat bevat echter steeds alleen unieke rijen.

- Aan het einde van de UNION kan je een ORDER BY toevoegen. In deze clausule mag geen kolomnaam of uitdrukking voorkomen indien kolomnamen van beide selects verschillend zijn. Gebruik in dat geval kolomnummers

#### Voorbeeld: 
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