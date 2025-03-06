
# 2 DO

- [ ] #TODO 🛫 2025-02-17 #OOSD2 Alle oefeningen maken die nog niet gemaakt zijn
- [ ] 

# Polymorfisme

Polymorfisme is de kracht van OO

Nemen de vorm aan dat ze willen

**Lijst maken van objecten van een gemeenschappelijke klasse (kan zelfs van een abstracte klasse)**

![[Pasted image 20250217140254.png]]


```java
1 public class VierkantApp {
2 public static void main( String args[]) {
3 // Dit statement instantieert een Vierkant en kent
4 // de referentie toe aan ref_1
5 Vierkant ref_1 = new Vierkant("Vierkant 1");
6
7 // Aangezien Rechthoek de superklasse is
8 // van Vierkant kan de superklasse referentie
9 // ref_2 verwijzen naar een instantie van Vierkant
10 Rechthoek ref_2 = new Vierkant("Vierkant 2"); //① <- UPCASTEN
11
12 // Een referentie van een superklasse kan niet direct
13 // toegekend worden aan een referentie van een subklasse.
14 // Expliciet casten is nodig!
15 if (ref_2 instanceof Vierkant) { //-> DOWNCASTEN
16 Vierkant ref_3 = (Vierkant) ref_2; //②
17 }
18
19 // Kortere versie van instanceof met impliciete
20 // casting en toekenning binnen het if-statement:
21 if (ref_2 instanceof Vierkant ref_3) { //③
22 // hier kun je verder werken met ref_3
23 }
24
25 }
26 }
```

① Een superklasse referentie kan refereren naar een instantie van een subklasse.
Dit noemt men upcasting: de referentie naar een object van een subtype (lager in de hiërarchie) wordt toegekend aan een referentie van een supertype (hoger in de hiërarchie).

② Een superklasse referentie kan enkel toegekend worden aan een subklasse referentie na een downcast. 
De waarde van een referentie van een supertype (hoger in de hiërarchie) wordt toegekend aan een referentie van een subtype (lager in de hiërarchie).

	Let op met een downcast: ga vooraf na of de referentie wel refereert naar een object van het juiste type vooraleer de downcast uit te voeren. 
	Gebruik het keyword instanceof om na te gaan of een object van een specifiek type is.
	
③ Met instanceof kunnen de test, downcast en toekenning ook worden uitgevoerd in één enkel statement. 
Opnieuw wordt gecontroleerd of ref_2 naar een Vierkant verwijst. 
Enkel als dit het geval is, wordt een nieuwe Vierkant-referentie ref_3 gemaakt, die naar hetzelfde object verwijst als ref_2. De nieuwe variabele ref_3 is in scope binnen de grenzen van het if-statement.

# Statisch en dynamische binding

## Statische binding
- Gebeurd tijdens compileren
- `@ compile time`

## dynamische binding
- gebeurt tijdens de uitvoering
- `@ runtime`

# Abstractie

- Abstracte klasse kan je niet aanmaken (vaak de subklasse)


# Dependency injection

(kreeg niet veel aandacht)

# Interfaces

- Abstracte klasse zonder variabele, alleen abstracte methodes

- Bij meerdere interfaces (meerdere subklassen) (bij overerving maar 1 subklasse mogelijk)

- een object kan meerdere interfaces implementeren

	![[Pasted image 20250217142634.png]]

Een klasse kan een interface implementeren door de abstracte methoden uit de interface concreet te maken.

# Objecten samenbrengen in een context

![[Pasted image 20250217143108.png]]

![[Pasted image 20250217143139.png]]


# DTO

- Doel = domein afschermen van ui
- Wrapper waar je meerder variabelen kan insteken
- Ook wel record genoemd

# Objecten sorteren

## De interface **Comparable**

-Om te vergelijken

### Optie 1 Mijnlijst.sort(List\<T> list)
### Template klasse

- staat tussen < >
## De interface **Comparator**

- Om te vergelijken
- Gelijkaardig aan comparable
- Als we verschillende manieren willen om te sorteren (bv op voornaam en op achternaam)
### Optie 2 mijnlijst.sort(List\<T> list Comparator)


## Kan je ook gebruiken bij strings


