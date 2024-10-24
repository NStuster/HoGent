#Samenvatting #Java #HoGent #toegepasteinformatica #OOSD #Variabelen #Constanten

# Type variabelen

|Data Type|Bits Acquired in Memory|
|---|---|
|boolean|1|
|byte|8|
|char|16|
|short|16|
|int|32|
|long|64|
|float|32|
|double|64|

## initialisatie

```java

int getal1 = 10; //initialisatie van een integer
int getal1, getal2, som;

double kommagetal = 10.10; //initialisatie double (kommagetal)

String woord = "text";

```

# char

Kan maar 1 letter aan en moet tussen ' ' staan

```java
char letterVB = 'a'; 
```

# CONSTANTEN (door final toe te voegen)

* **final** = *constante waarde die nadien NIET kan gewijzigd worden*

- **static** is *nodig om op klasse niveau te werken* en niet object niveau, anders fouten

 - **STEEDS VOLLEDIG MET HOOFDLETTERS** (CAPITALS)

voorbeeld:
```java

private static final int DEFAULT_LENGTE = 10;
private static final String DEFAULT_KLEUR = "blauw";

```

GEEN WAARDEN IN CODE ==> GEBRUIK CONSTANTEN

### extra uitleg

**Wat zijn constanten?** In Java wordt een constante gedefinieerd met het sleutelwoord `final`. Als een variabele `final` is, kan deze maar één keer worden geïnitialiseerd, en daarna kan de waarde niet meer worden gewijzigd. Als we de constante `static` maken, betekent dit dat de constante wordt gedeeld door alle objecten van de klasse en niet afhankelijk is van een specifiek object.

**Waarom constanten gebruiken?**

- Ze maken de code leesbaarder en onderhoudbaarder. In plaats van overal getallen of tekststrings te herhalen, gebruiken we een betekenisvolle naam.
- Ze voorkomen fouten, omdat de waarde van een constante niet kan worden gewijzigd.

## Standaard constanten (zitten in java)

### MIN_VALUE en MAX_VALUE
```java
kleinsteMogelijkeInteger = Integer.MIN_VALUE
```

