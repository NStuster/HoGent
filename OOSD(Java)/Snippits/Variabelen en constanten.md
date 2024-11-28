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

# Initialisatie

```java

int getal1 = 10; //initialisatie van een integer
int getal1, getal2, som;

double kommagetal = 10.10; //initialisatie double (kommagetal)

String woord = "text";

```

# CONSTANTEN 

**door final toe te voegen**

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


# Promotie en Casting

## Type Conversie in Java

Java onderscheidt twee soorten type conversies:

1. **Promotie (Widening Conversion)**
2. **Casting (Narrowing Conversion)**

## Wat is het verschil tussen promotie en casting?

### Promotie (Widening Conversion)

- **Automatisch uitgevoerd door Java**
- Conversie van een smaller naar een breder gegevenstype
- **Geen informatieverlies**
- Voorbeeld: `int` naar `double`

```java
int getal = 5;
double decGetal = getal;  // Automatische promotie
```

### Casting (Narrowing Conversion)

- **Handmatig door programmeur uitgevoerd**
- Conversie van een breder naar een smaller gegevenstype
- **Mogelijk informatieverlies**
- Vereist expliciete typecast-operator

```java
double decGetal = 4.8;
int getal = (int)decGetal;  // Handmatige casting
```

## 1. Promotie (Automatische Conversie)

### Kenmerken

- Automatisch uitgevoerd door Java
- Geen informatieverlies
- Conversie van kleiner naar groter gegevenstype

### Conversievolgorde (van smal naar breed)

```
byte → short → int → long → float → double
char → int
```

### Voorbeelden van Promotie

```java
// Automatische conversies
int getal = 5;
double decGetal = getal;  // Automatische promotie van int naar double

char karakter = 'a';
int asciiWaarde = karakter;  // Automatische promotie van char naar int
```

## 2. Casting (Expliciete Conversie)

### Kenmerken

- Handmatig door programmeur uitgevoerd
- Mogelijke informatieverlies
- Conversie van breed naar smal gegevenstype

### Syntax

```java
doelType variabele = (doelType)bronVariabele;
```

### Voorbeelden van Casting

```java
double decGetal = 4.8;
int getal = (int)decGetal;  // Let op: afronding naar beneden
System.out.println(getal);  // Zal 4 afdrukken

// Casting bij mathematische functies
int resultaat = (int)Math.pow(decGetal, 3);
```

### Praktische Voorbeelden

#### Volledige Demonstratie

```java
public class TypeConversieDemo {
    public static void main(String[] args) {
        // Promotie Voorbeelden
        int intGetal = 100;
        double doubleGetal = intGetal;  // Automatische promotie
        
        char letter = 'A';
        int ascii = letter;  // Promotie van char naar int
        
        // Casting Voorbeelden
        double decimalGetal = 9.7;
        int afgerondGetal = (int)decimalGetal;  // Handmatige casting
        
        // Let op bij delen
        int a = 10;
        int b = 3;
        double resultaat = (double)a / b;  // Casting voor decimaal resultaat
        
        System.out.println("Promotie: " + doubleGetal);
        System.out.println("ASCII Waarde: " + ascii);
        System.out.println("Afgerond Getal: " + afgerondGetal);
        System.out.println("Decimaal Resultaat: " + resultaat);
    }
}
```

## Speciale Gevallen

### ASCII Conversie

[ASCII tabel](https://computersciencewiki.org/index.php/ASCII)

```java
char karakter = 'a';
int asciiWaarde = karakter;  // 97 (ASCII waarde van 'a')
```

### Delen met Casting

```java
// Let op verschil:
int resultaat1 = 10 / 3;      // Geeft 3 (integer deling)
double resultaat2 = 10.0 / 3; // Geeft 3.3333 (decimale deling)
double resultaat3 = (double)10 / 3;  // Ook 3.3333
```

## Valkuilen en Aandachtspunten

1. **Informatieverlies**
    - Casting kan precisie verliezen
    - Getallen worden afgekapt, niet afgerond
2. **Overflow**
```java
int maxInt = Integer.MAX_VALUE;
byte kleinGetal = (byte)maxInt;  // Onvoorspelbaar resultaat
```
3. Expliciete Casting Vereist
```java
// Compiler fout:
// int x = 3.14;  // Niet toegestaan

// Correcte manier:
int x = (int)3.14;  // Expliciet casten
```

## Best Practices

1. Wees voorzichtig met casting
2. Gebruik casting alleen wanneer nodig
3. Controleer mogelijke informatieverlies
4. Gebruik methoden zoals `Math.round()` voor afronden

## Geavanceerde Casting Technieken

### Object Casting

```java
Object obj = "Hello";
String str = (String)obj;  // Casting van Object naar String
```
# char

Kan maar 1 letter aan en moet tussen ' ' staan

```java
char letterVB = 'a'; 
```


