De **testen**-laag in een Java-project is verantwoordelijk voor het valideren van de werking van je applicatie. Door **unit tests** te schrijven, kun je controleren of individuele onderdelen van je code correct werken. Dit is essentieel om bugs te voorkomen en ervoor te zorgen dat wijzigingen in de code geen onverwachte fouten veroorzaken.

---

# Wat zijn unit tests?

Unit tests zijn kleine, geïsoleerde tests die gericht zijn op het testen van een specifieke methode of klasse. Ze zorgen ervoor dat:

1. Een methode het verwachte resultaat oplevert bij bepaalde invoer.
2. Een methode goed omgaat met foutieve of grensgevallen.
3. Je vertrouwen hebt in de functionaliteit van je code.

---

# Waarom testen?

1. **Vroegtijdig fouten opsporen:**  
    Door testen te schrijven, kun je problemen vroeg identificeren, nog voordat ze in de interface zichtbaar worden.
    
2. **Betrouwbare code:**  
    Tests geven je zekerheid dat je code blijft werken zoals verwacht, zelfs na wijzigingen.
    
3. **Documentatie:**  
    Tests laten zien hoe een methode of klasse gebruikt hoort te worden, wat handig is voor nieuwe ontwikkelaars.
    

---

# Structuur van de testen-laag

De testen worden meestal gestructureerd in een aparte map, bijvoorbeeld `src/test/java`. Elke klasse in je domeinlaag heeft idealiter een bijbehorende testklasse. De testklassen krijgen vaak de naam van de klasse die ze testen, met de toevoeging `Test`.

_Bijvoorbeeld:_  
Voor de klasse `Rekening` maak je een testklasse `RekeningTest`.

---

# Hoe schrijf je tests?

In Java gebruik je een testframework, zoals **JUnit** (veelgebruikte versie: JUnit 5). JUnit maakt het eenvoudig om tests te schrijven en uit te voeren.

## Stap 1: Testklasse maken

Maak een testklasse met een duidelijke naam, zoals `RekeningTest`.

## Stap 2: Annotaties gebruiken

- **@Test:** Geeft aan dat de methode een testmethode is.
- **@BeforeEach/@AfterEach:** Voorbereiden en opruimen van testdata vóór en na elke test.

## Stap 3: Verwachtingen controleren

Gebruik JUnit-methoden zoals `assertEquals`, `assertTrue`, of `assertThrows` om resultaten te verifiëren.

---

# Voorbeeld van een testklasse

Hier is een testklasse voor de domeinklasse `Rekening`:

## Te testen klasse

```java
package domein;

public class Rekening {
    private String rekeningnummer;
    private double saldo;

    public Rekening(String rekeningnummer, double saldo) {
        this.rekeningnummer = rekeningnummer;
        this.saldo = saldo;
    }

    public void stort(double bedrag) {
        if (bedrag <= 0) {
            throw new IllegalArgumentException("Bedrag moet positief zijn.");
        }
        saldo += bedrag;
    }

    public double getSaldo() {
        return saldo;
    }
}
```

## Testklasse

```java
package testen;

import domein.Rekening;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class RekeningTest {
    private Rekening rekening;

    @BeforeEach
    public void setUp() {
        // Maak een testobject aan vóór elke test
        rekening = new Rekening("BE123456789", 100.0);
    }

    @Test
    public void testStortPositiefBedrag() {
        rekening.stort(50.0);
        assertEquals(150.0, rekening.getSaldo(), "Het saldo moet verhoogd worden met het gestorte bedrag.");
    }

    @Test
    public void testStortNegatiefBedragGeeftException() {
        assertThrows(IllegalArgumentException.class, () -> rekening.stort(-10.0), "Een negatief bedrag moet een exception geven.");
    }
}
```

# Uitvoeren van test

**Testresultaten:**

- **Succesvolle tests:** Groen vinkje.
- **Mislukte tests:** Rood kruis, inclusief foutmeldingen die uitleggen wat er misging.


---

# Wat moet je testen?

1. **Normaal gedrag:**  
    Test of een methode het verwachte resultaat geeft bij geldige invoer. _Bijvoorbeeld:_ Controleer of een storting het saldo correct verhoogt.
    
2. **Foutafhandeling:**  
    Test hoe je methode omgaat met ongeldige invoer of fouten. _Bijvoorbeeld:_ Controleer of een negatief bedrag een uitzondering gooit.
    
3. **Grenswaarden:**  
    Test hoe je code werkt bij randgevallen, zoals een storting van `0` of het maximumsaldo.
    
4. **Interacties tussen objecten:**  
    Test hoe objecten samenwerken, bijvoorbeeld als een domeincontroller meerdere domeinklassen aanroept.
    

---

# Teststrategieën

1. **Unit tests:**  
    Testen van individuele methoden of klassen. (zoals hierboven)
    
2. **Integratietests:**  
    Testen hoe verschillende klassen of lagen samenwerken. _Bijvoorbeeld:_ Test of de domeincontroller correct met de domeinlaag communiceert.
    
3. **End-to-end tests:**  
    Testen van de volledige applicatie, van de interface tot de domeinlaag.
    

---

# Best Practices voor testen

1. **Maak tests begrijpelijk:**  
    Testmethoden moeten duidelijke namen hebben en aangeven wat ze testen.  
    _Bijvoorbeeld:_ `testSaldoNaStorting()`.
    
2. **Eén test per methode:**  
    Laat elke test één specifiek aspect controleren. Dit maakt het eenvoudiger om fouten te lokaliseren.
    
3. **Gebruik mock-objects voor afhankelijkheden:**  
    Als een klasse afhankelijk is van een andere klasse, gebruik je een mock (zoals met de bibliotheek Mockito) om die afhankelijkheid te simuleren.
    
4. **Test zowel positieve als negatieve gevallen:**  
    Zorg dat je alle mogelijke scenario's dekt, inclusief foutgevallen.
    
5. **Tests onderhouden:**  
    Als je je code wijzigt, pas dan ook de tests aan om consistent te blijven.
    

---

# Waarom zijn tests belangrijk voor jou als student?

- Je leert foutloos en betrouwbaar programmeren.
- Je kunt fouten sneller vinden en oplossen.
- Als je later grote projecten bouwt, helpen tests om je werk beheersbaar te houden.

# Test aanmaken

![[Pasted image 20241205135121.png]]

Naam: KlasseNaamTest
![[Pasted image 20241205135154.png]]

 # Aanpak

## Naamgeving
Een goede naam voor een test methode bestaat uit 3 delen
1. de naam van de methode die zal getest worden voor een constructor kiezen we “maak” gevolgd door de naam van de constructor
2. een omschrijving van de test case
3. een omschrijving van het verwachte resultaat van de test

```java
@Test
	void maakBestelling_GeldigAantal_MaakBestelling() {
	Bestelling bestelling = new Bestelling(5);
	assertEquals(5, bestelling.getAantal());
}
```

## Opbouw

Altijd een void method
Zonder argumenten

## Stappen
 
1. Constructor testen (Wat verwacht je bij het aanmaken van het object)
	1. Wat zijn de goede gevallen
		1. De grenzen testen
		2. iets willekeurigs binnen de grenzen
	2. Wat zijn de slechte gevallen
		1. Buiten de grenzen testen
		2. iets willekeurigs buiten de grenzen
2. Gedrag testen (true/false)
		1. Grenzen testen


## Test methods

`ctrl` + `spatie`

```java
assertEquals(1, bestelling.getAantal());
```


### opbouw


#### Iets goed testen
```java
@Test
	void maakBestelling_GeldigAantal_MaakBestelling() { //naam
	Bestelling bestelling = new Bestelling(5);// aanmaken van een object
	assertEquals(5, bestelling.getAantal());// eerste is het te verwachten resultaat, tweede is wat ik terug krijg van het programma
}//de volgorde is belangrijk voor de foutboodschap

```

#### iets slecht testen (verwachtte resultaat is een exeption)
```java
@Test
	void maakBestelling_AantalTeKlein_WerptException() {
	assertThrows(IllegalArgumentException.class,
	() -> new Bestelling(-5));
}
```


#### Gedrag testen

```java
@Test
	void geeftRechtOpKorting_BestellingMetRechtOpKorting_RetourneertTrue() {
	Bestelling bestelling = new Bestelling(7);
	assertTrue(bestelling.geeftRechtOpKorting());
}
```

## BeforeEach

```java
class WaterflesTest {

//Constructor testen

//Goede scenarios

private final static int CAPACITEIT = 250;

private Waterfles waterfles;

//BeforeEach wordt telkens voor een testmethode opgeroepen

@BeforeEach

public void before() {

waterfles = new Waterfles(CAPACITEIT);
}
}
```