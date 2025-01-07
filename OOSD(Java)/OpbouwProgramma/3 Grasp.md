---
tags:
  - Samenvatting
  - OOSD
  - Java
  - HoGent
---
(General Responsibility Assignment Software Patterns)

## GRASP-patronen: Fundamentele Ontwerpprincipes

GRASP-patronen zijn ontwerprichtlijnen die helpen bij het toewijzen van verantwoordelijkheden aan klassen in objectgeoriënteerde systemen. Ze vormen een set van principes die ontwikkelaars ondersteunen bij het maken van flexibele, onderhoudsbare softwareontwerpen.

### 1. Controller Pattern

#### Probleemstelling

Welk object, direct achter de gebruikersinterface, is verantwoordelijk voor het ontvangen en coördineren van systeemoperaties?

#### Oplossing

Creëer een afzonderlijke controllerklasse "DomeinController" die als centrale coördinator fungeert voor systeemhandelingen.

#### DomeinController in Context

De `DomeinController` functioneert als centrale coördinator tussen:

- De gebruikersinterface (UI)
- De onderliggende domeinklassen
- Eventuele andere systeemcomponenten

##### Typische Verantwoordelijkheden

1. Doorsturen van gebruikersacties naar de juiste domeinobjecten
2. Coördineren van complexe bedrijfsprocessen
3. Beheren van de communicatie tussen verschillende systeemlagen

##### Voorbeeld Structuur

```java
package domein;
	public class DomeinController {
	
		private Spel spel;
		
		public void startNieuwSpel() {
			spel = new Spel();
		}

		public void rolDobbelstenen() {
			spel.rolDobbelstenen();
		}

		public int geefAantalOgenWorp() {
			return spel.geefAantalOgenWorp();
		}

		public boolean isEindeSpel() {
			return spel.isEindeSpel();
		}

		public int geefScore() {
			return spel.getScore();
		}
	}
}
```
### 2. Creator Pattern

## Probleemstelling

Wie is verantwoordelijk voor het aanmaken van nieuwe instanties van een klasse?

## Oplossing

Wijs de verantwoordelijkheid voor het creëren van objecten toe aan een klasse die:

- Het object bevat
- Het object samengesteld is uit het object
- Het object intensief gebruikt
- De nodige gegevens heeft om het object te initialiseren

Voorbeeld:

```java
public class DiceGame {
    private List<Dice> dice;
    
    // Creator pattern: DiceGame is verantwoordelijk voor het aanmaken van dobbelstenen
    public void initializeDice(int numberOfDice) {
        dice = new ArrayList<>();
        for (int i = 0; i < numberOfDice; i++) {
            dice.add(new Dice());
        }
    }
}
```

### 3. Expert Pattern

## Probleemstelling

Hoe bepaal je welk object verantwoordelijk moet zijn voor een specifieke taak?

## Oplossing

Ken de verantwoordelijkheid toe aan de klasse die alle benodigde informatie bezit om de taak uit te voeren.

Voorbeeld:

```java
public class Dice {
    private int value;
    
    // De Dice-klasse is de expert voor dobbelsteengerelateerde bewerkingen
    public void roll() {
        // Genereert een willekeurige waarde tussen 1 en 6
        this.value = (int) (Math.random() * 6) + 1;
    }
    
    public int getValue() {
        return this.value;
    }
}
```

## Praktische Toepassing van GRASP-Patronen

De GRASP-patronen helpen bij:

- Het verduidelijken van verantwoordelijkheden
- Het verbeteren van de samenhang van klassen
- Het verminderen van koppelingen tussen klassen
- Het creëren van meer onderhoudbare en uitbreidbare software

### Aandachtspunten bij Toepassing

- Niet elk patroon is altijd van toepassing
- Gebruik gezond verstand en contextbegrip
- Balanceer tussen ontwerpprincipes en praktische implementatie

## Grasp voor Studenten Toegepaste Informatica

Als student Toegepaste Informatica zul je deze patronen steeds beter begrijpen door:

- Veel te oefenen met objectgeoriënteerd ontwerp
- Verschillende implementaties te bestuderen
- Bestaande softwareontwerpen te analyseren
- Ontwerpkeuzes kritisch te evalueren

# Grasp

GRASP (General Responsibility Assignment Software Patterns) is een set ontwerpprincipes die helpen bij het toewijzen van verantwoordelijkheden in objectgeoriënteerde systemen. Het doel is om de code overzichtelijk, herbruikbaar en goed gestructureerd te houden. GRASP is dus een manier om na te denken over **wie** welke verantwoordelijkheid krijgt in je ontwerp.

De drie **GRASP-principes** die je noemt – **Controller**, **Expert** en **Creator** – zijn enkele van de basismodellen binnen deze set, die je helpen te bepalen hoe je verantwoordelijkheden toewijst aan klassen en objecten binnen een systeem. Hier volgt een gedetailleerde uitleg van elk van deze principes.

### 1. **Controller**

Het **Controller**-principe heeft betrekking op het toewijzen van verantwoordelijkheden voor de coördinatie van de interactie tussen de gebruikersinterface en het domeinmodel van een applicatie. Het idee is om een object aan te wijzen dat de taken van de applicatie beheert, zoals het afhandelen van gebruikersinvoer, het aanroepen van de juiste bedrijfslogica en het sturen van de uitvoering van verschillende delen van het systeem.

#### Wanneer gebruik je Controller?

- Je hebt een systeem waar gebruikers of externe entiteiten met de applicatie communiceren (bijvoorbeeld via een gebruikersinterface).
- Het object dat de controller zal zijn, ontvangt de gebruikersinvoer en zal de juiste acties doorgeven naar de achterliggende systeemobjecten (domeinobjecten).

#### Voorbeeld:

Stel dat je een eenvoudige applicatie hebt waarbij gebruikers producten kunnen kopen. De controller zou verantwoordelijk zijn voor het ontvangen van de gebruikersinvoer, bijvoorbeeld wanneer ze hun productselectie bevestigen, en dan het proces van het plaatsen van een bestelling coördineren door relevante domeinobjecten zoals "Bestelling" of "Betaling" aan te roepen.

#### In de praktijk:

- In een **MVC (Model-View-Controller)**-architectuur is de **Controller** de klasse die de logica afhandelt tussen de weergave van de gebruikersinterface en het model (de bedrijfslogica).

### 2. **Expert**

Het **Expert**-principe draait om het toewijzen van verantwoordelijkheden aan de klasse die de meeste informatie heeft over het probleem dat moet worden opgelost. Een object of klasse moet verantwoordelijk zijn voor de uitvoering van taken waarvoor het voldoende kennis heeft. Dit helpt om de software beter te organiseren en te zorgen voor meer coherente en begrijpelijke klassen.

#### Wanneer gebruik je Expert?

- Als je een taak hebt die diepgaande kennis vereist over de gegevens of de logica van het systeem, dan is de **Expert**-klasse degene die het beste in staat is om die taak uit te voeren, omdat het de benodigde informatie heeft.

#### Voorbeeld:

Stel dat je een applicatie hebt waarin je klantgegevens bijhoudt. Als je bijvoorbeeld een "Klant" object hebt, zou het **Expert**-principe betekenen dat de **Klant**-klasse verantwoordelijk is voor het berekenen van kortingen, omdat deze klasse toegang heeft tot de benodigde informatie, zoals het aantal aankopen van de klant, hun loyaliteitsniveau, enzovoorts.

#### In de praktijk:

- Als er een behoefte is om te berekenen hoeveel belasting een product heeft op basis van de prijs, zou de klasse die het product vertegenwoordigt waarschijnlijk de "Expert" zijn, omdat het toegang heeft tot de prijsinformatie en productgegevens.

### 3. **Creator**

Het **Creator**-principe stelt dat een klasse verantwoordelijk moet zijn voor het creëren van objecten van andere klassen die aan bepaalde voorwaarden voldoen. Dit principe helpt om te bepalen wie verantwoordelijk is voor het creëren van nieuwe instanties van andere klassen, zodat het systeem efficiënt en georganiseerd blijft.

#### Wanneer gebruik je Creator?

- De klasse is verantwoordelijk voor het creëren van objecten wanneer:
    - Het object verantwoordelijk is voor het beheren van de nieuw te creëren objecten.
    - De klasse sterk verbonden is met de te creëren objecten.
    - Het object zelf een verzameling van de te creëren objecten is.

#### Voorbeeld:

Stel dat je een systeem hebt waarbij "Bestellingen" meerdere "Producten" bevatten. Het **Creator**-principe zou betekenen dat de **Bestelling**-klasse verantwoordelijk is voor het aanmaken van de **Product**-objecten, omdat de **Bestelling** de verzameling van producten beheert.

#### In de praktijk:

- Als een **Winkel**-klasse producten verkoopt en een **Bestelling** moet maken, zou de **Winkel**-klasse volgens het **Creator**-principe de verantwoordelijkheid krijgen om nieuwe **Bestelling**-objecten te creëren, omdat de winkel de context heeft van de bestelling (de producten die gekocht worden, het klantgedrag, enzovoorts).

### Samenvatting van de drie GRASP-principes:

1. **Controller**: Wijs verantwoordelijkheden toe aan objecten die de communicatie tussen de gebruikersinterface en de bedrijfslogica coördineren.
2. **Expert**: Wijs verantwoordelijkheden toe aan objecten die de meeste informatie hebben om een taak uit te voeren.
3. **Creator**: Wijs verantwoordelijkheden toe aan objecten die een sterke relatie hebben met het te creëren object of als ze de context hebben voor het object.

### Het belang van GRASP in softwareontwerp:

Het toepassen van GRASP helpt bij het organiseren van de verantwoordelijkheid van klassen op een manier die de **cohesie** verhoogt (klassen die goed gedefinieerde verantwoordelijkheden hebben) en de **koppeling** verlaagt (minder afhankelijkheden tussen klassen). Dit maakt de code meer onderhoudbaar, uitbreidbaar en begrijpelijker.

Als je vragen hebt over hoe je deze principes kunt toepassen in specifieke situaties of codevoorbeelden nodig hebt, laat het me weten!