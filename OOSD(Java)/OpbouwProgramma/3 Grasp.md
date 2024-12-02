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