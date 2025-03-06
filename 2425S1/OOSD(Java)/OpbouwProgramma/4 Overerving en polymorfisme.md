# Overerving in Java: Basisprincipes

## Wat is Overerving?

Overerving is een fundamenteel principe in objectgeoriënteerd programmeren waarbij een nieuwe klasse (subklasse) eigenschappen en methoden kan overnemen van een bestaande klasse (superklasse). Het is vergelijkbaar met de manier waarop eigenschappen in de natuur worden doorgegeven van ouders aan kinderen.

## Belangrijkste Concepten

### 1. Basisstructuur

```java
public class Superklasse {
    // Eigenschappen en methoden van de superklasse
}

public class Subklasse extends Superklasse {
    // Extra eigenschappen en methoden van de subklasse
}
```

- Het `extends` sleutelwoord wordt gebruikt om overerving aan te geven
- Een subklasse "erft" alle niet-private eigenschappen en methoden van de superklasse

### 2. Constructor Oproep

```java
public class Subklasse extends Superklasse {
    public Subklasse() {
        super(); // Roept constructor van superklasse aan
    }
}
```

- `super()` wordt gebruikt om de constructor van de superklasse aan te roepen
- Moet de eerste regel zijn in de constructor van de subklasse

### 3. Methode Overschrijven

```java
public class Superklasse {
    public void toonInfo() {
        System.out.println("Informatie van superklasse");
    }
}

public class Subklasse extends Superklasse {
    @Override
    public void toonInfo() {
        // Kan gedrag van de superklasse methode aanpassen
        System.out.println("Informatie van subklasse");
    }
}
```

- `@Override` annotatie geeft aan dat een methode wordt overschreven
- Subklasse kan het gedrag van overgeërfde methoden aanpassen

### 4. Soorten Overerving

- **Enkelvoudige Overerving**: Een klasse erft van slechts één superklasse
- **Multilevel Overerving**: Een klasse erft van een klasse die zelf al heeft geërfd
- **Geen Meervoudige Overerving**: Java ondersteunt niet het erven van meerdere klassen tegelijk

## Voorbeelden

### Basis Overerving

```java
public class Dier {
    protected String naam;
    
    public Dier(String naam) {
        this.naam = naam;
    }
    
    public void eet() {
        System.out.println(naam + " eet");
    }
}

public class Hond extends Dier {
    public Hond(String naam) {
        super(naam); // Roept constructor van Dier aan
    }
    
    public void blaf() {
        System.out.println(naam + " blaft");
    }
}
```

### Gebruik

```java
public class HuisdierApp {
    public static void main(String[] args) {
        Hond mijnHond = new Hond("Buddy");
        mijnHond.eet();   // Methode van Dier
        mijnHond.blaf();  // Methode van Hond
    }
}
```

## Belangrijke Regels en Beperkingen

- Een subklasse erft alle niet-private leden van de superklasse
- Constructors worden niet geërfd
- `final` klassen kunnen niet worden geërfd
- `private` methoden kunnen niet worden overschreven

## Voordelen van Overerving

1. **Code Hergebruik**: Voorkom herhaling van code
2. **Logische Classificatie**: Maak hiërarchische relaties tussen klassen
3. **Uitbreidbaarheid**: Gemakkelijk nieuwe klassen maken met bestaande functionaliteit
4. **Onderhoudbaarheid**: Centraliseer gemeenschappelijke functionaliteit

## Wanneer Gebruiken?

- Als er een duidelijke "is een" relatie bestaat
- Wanneer je gemeenschappelijk gedrag wilt delen
- Om code te vereenvoudigen en te structureren

Overerving is een krachtig mechanisme dat je helpt om je code georganiseerd, herbruikbaar en logisch te structureren.

# this.getClass().getSimpleName()

`this.getClass()` geeft het Class-object terug van het huidige instantie (object). De methode `getSimpleName()` haalt vervolgens de naam van de klasse op zonder het pakket-pad.

Hier een voorbeeld om dit te verduidelijken:

```java
public class Animal {
    public void printClassName() {
        System.out.println(this.getClass().getSimpleName());
    }
}

public class Dog extends Animal {
    public static void main(String[] args) {
        Dog myDog = new Dog();
        myDog.printClassName(); // Zal "Dog" afdrukken
    }
}
```

In dit voorbeeld:

- `this` verwijst naar de huidige instantie (het Dog-object)
- `getClass()` verkrijgt het Class-object van dat specifieke object
- `getSimpleName()` haalt alleen de klassenaam op zonder het volledige pakketpad

Een paar extra details:

- Als je `getClass().getName()` zou gebruiken, krijg je de volledige naam met pakket (bijv. "com.example.Dog")
- Dit is handig voor reflectie en debugging, omdat je de exacte klasse van een object kunt achterhalen
# Polymorfisme

## De Wereld van Objecten

Stel je voor dat je een dierenopvang beheert. Je hebt verschillende soorten huisdieren: honden, katten, en misschien zelfs duiven. Elk dier is uniek, maar ze delen ook gemeenschappelijke eigenschappen.

### Het Probleem Vóór Polymorfisme

Zonder polymorfisme zou je voor elk diertype aparte methoden moeten schrijven:

```java
- geefHondGeluid()
- geefKatGeluid()
- geefDuifGeluid()
```

Dit leidt tot:

- Herhaling van code
- Moeilijk te onderhouden software
- Geen flexibiliteit bij het toevoegen van nieuwe diersoorten

## Polymorfisme: De Oplossing

Polymorfisme is als een toverstaf die deze problemen oplost. Het stelt je in staat om:

- Gemeenschappelijke eigenschappen te delen
- Uniek gedrag te definiëren
- Flexibel met objecten om te gaan

### Praktisch Voorbeeld: Dierenopvang

```java
// Abstracte basis: Alle huisdieren hebben iets gemeenschappelijks
class Huisdier {
    private String naam;
    
    // Generieke methode die door subklassen kan worden overschreven
    public String maakGeluid() {
        return "Generiek huisdiergeluid";
    }
}

// Specifieke implementaties
class Hond extends Huisdier {
    // Uniek gedrag voor honden
    public String maakGeluid() {
        return "Waf waf!";
    }
    
    public void kwispel() {
        // Alleen honden kunnen kwispelen
    }
}

class Kat extends Huisdier {
    public String maakGeluid() {
        return "Miauw!";
    }
    
    public void spin() {
        // Alleen katten kunnen spinnen
    }
}
```

## Hoe Werkt dit in de Praktijk?

### 1. Dynamisch Polymorfisme

Je kunt nu een verzameling huisdieren behandelen alsof ze allemaal hetzelfde zijn:

```java
List<Huisdier> dierenOpvang = new ArrayList<>();
dierenOpvang.add(new Hond());
dierenOpvang.add(new Kat());

// Elk dier maakt zijn eigen geluid!
for (Huisdier dier : dierenOpvang) {
    System.out.println(dier.maakGeluid());
}
```

### 2. Type Controle en Transformatie

Soms wil je specifieke eigenschappen van een dier gebruiken:

```java
for (Huisdier dier : dierenOpvang) {
    // Controleer het specifieke type
    if (dier instanceof Hond) {
        Hond hond = (Hond) dier;
        hond.kwispel(); // Specifiek hondengedrag
    }
    
    if (dier instanceof Kat) {
        Kat kat = (Kat) dier;
        kat.spin(); // Specifiek kattengedrag
    }
}
```

## Filosofie Achter Polymorfisme

### Vergelijk het met de Echte Wereld

Denk aan een muziekinstrument-orkest:

- Alle muzikanten zijn 'muzikanten'
- Elk muziekinstrument heeft zijn unieke geluid
- Ze kunnen allemaal 'spelen', maar elk op hun eigen manier

In programmeren is polymorfisme precies hetzelfde:

- Gemeenschappelijke basis (muzikant/huisdier)
- Uniek gedrag per type (viool/hond)
- Flexibel en uitbreidbaar systeem

## Voordelen

1. **Code Herbruikbaarheid**
    - Deel gemeenschappelijke logica
    - Minimaliseer herhalingen
2. **Flexibiliteit**
    - Gemakkelijk nieuwe types toevoegen
    - Bestaande code hoeft niet te veranderen
3. **Onderhoudbaarheid**
    - Centrale logica in basisklasse
    - Specifieke implementaties in subklassen

## Wanneer Gebruik Je Polymorfisme?

- Meerdere gerelateerde klassen met gemeenschappelijk gedrag
- Je wilt flexibel omgaan met objecten
- Je wilt code herhaling voorkomen
- Je ontwerpt uitbreidbare systemen

## Praktische Toepassing: Bedrijfssoftware

Denk aan een boekhoudsysteem:

- Basisklasse: `Werknemer`
- Subklassen: `Programmeur`, `Verkoper`, `Manager`
- Gemeenschappelijke methode: `berekenSalaris()`
- Elke subklasse implementeert uniek salaris-algoritme

## Conclusie

Polymorfisme is meer dan een technische truc. Het is een manier van denken over software:

- Flexibel
- Uitbreidbaar
- Georganiseerd

Het stelt je in staat om complexe systemen te bouwen met eenvoudige, herbruikbare componenten.