De **domein**-laag is het hart van je applicatie. Hier bevindt zich alle **businesslogica**, de logica die bepaalt hoe je programma werkt en hoe de gegevens worden verwerkt. Deze laag is volledig onafhankelijk van de gebruikersinterface (CUI of GUI) en is alleen gericht op de regels en processen van de applicatie.

---

# Wat doet de domeinlaag?

1. **Businesslogica implementeren:**  
    Dit is de kernfunctionaliteit van je applicatie, zoals berekeningen, beslissingen of het beheren van objecten.
    
2. **Objecten modelleren:**  
    De domeinlaag bevat klassen die de entiteiten van je probleemstelling modelleren. Bijvoorbeeld, als je een bankapplicatie bouwt, zou je hier klassen hebben zoals `Rekening`, `Klant`, of `Transactie`.
    
3. **Data beheren:**  
    De domeinlaag beheert de data van je applicatie, zoals objecten in het geheugen of gegevens opgehaald uit een database.
    

---

# Structuur van de domeinlaag

De domeinlaag bestaat meestal uit twee onderdelen:

1. **Domeinklassen:**  
    Deze klassen modelleren de entiteiten en hun gedrag.  
    _Bijvoorbeeld:_ Een klasse `Rekening` met methoden om saldo toe te voegen of af te trekken.
    
2. **Domeincontroller:**  
    Een controller die fungeert als **façade** (toegangspoort) naar de domeinlaag. Dit zorgt ervoor dat de CUI of GUI niet direct met de domeinklassen werkt, maar via een uniforme interface.
    
3. **Repository-klassen:**  
	Deze klassen beheren verzamelingen van objecten, zoals entiteiten, en zorgen voor het bijhouden, wijzigen, zoeken en verwijderen ervan.  
	_Bijvoorbeeld:_ Een klasse `SpelerRepository` die alle spelers bijhoudt en methoden bevat zoals `voegSpelerToe`, `zoekSpelerOpId`, en `verwijderSpeler`.
    

---

# Voorbeeld van een domeinlaag

## 1. Domeinklasse

Hier is een voorbeeld van een domeinklasse `Rekening` die een bankrekening modelleert:

```java
package domein;

public class Rekening {
    private String rekeningnummer;
    private double saldo;

    public Rekening(String rekeningnummer, double saldo) {
        this.rekeningnummer = rekeningnummer;
        this.saldo = saldo;
    }

    public String getRekeningnummer() {
        return rekeningnummer;
    }

    public double getSaldo() {
        return saldo;
    }

    public void stort(double bedrag) {
        if (bedrag <= 0) {
            throw new IllegalArgumentException("Bedrag moet positief zijn.");
        }
        saldo += bedrag;
    }

    public void neemOp(double bedrag) {
        if (bedrag <= 0) {
            throw new IllegalArgumentException("Bedrag moet positief zijn.");
        }
        if (bedrag > saldo) {
            throw new IllegalArgumentException("Onvoldoende saldo.");
        }
        saldo -= bedrag;
    }
}
```

## 2. Domeincontroller

De domeincontroller zorgt voor communicatie tussen de CUI/GUI en de domeinklassen:

```java
package domein;

public class Domeincontroller {
    private Rekening rekening;

    public Domeincontroller() {
        // Voorlopig maken we een testrekening aan
        this.rekening = new Rekening("BE123456789", 100.0);
    }

    public double geefSaldo() {
        return rekening.getSaldo();
    }

    public void stortOpRekening(double bedrag) {
        rekening.stort(bedrag);
    }

    public void neemOpVanRekening(double bedrag) {
        rekening.neemOp(bedrag);
    }
}
```

## 3. Repository Klasse

Een repository wordt gebruikt om een **centrale opslaglaag** te creëren voor specifieke objecten, zoals `Speler`. Dit zorgt voor een duidelijke scheiding van verantwoordelijkheden:

- De `DomeinController` handelt de **businesslogica** af en fungeert als interface tussen de domeinlaag en de gebruikersinterface.
- De `SpelerRepository` beheert de spelersdata en fungeert als opslag- en zoekmechanisme.

### Repository
```java
package domein;

import java.util.*;

public class SpelerRepository {
	private List<Speler> spelers;

	public SpelerRepository() {
		spelers = new ArrayList<>(); //tijdelijk
		//later -> spelers worden uit databank gehaald
	}

	public void voegSpelerToe(Speler speler) {
		if (geefSpeler(speler.getEmail()) == null)
		spelers.add(speler);
	}

	public Speler geefSpeler(String email) {
		for(Speler speler : spelers)
			if (speler.getEmail().equalsIgnoreCase(email))
				return speler;
		return null;
	}
}
```
- **Bijhouden van spelers**:  
    De klasse bevat een lijst (`List<Speler> spelers`) die gebruikt wordt als tijdelijke opslag voor `Speler`-objecten.  
    In een toekomstig stadium zal deze opslag worden vervangen door een database.
    
- **Methoden voor beheer**:
    
    1. **`voegSpelerToe`**:  
        Voeg een nieuwe speler toe aan de lijst, maar alleen als er nog geen speler met hetzelfde e-mailadres bestaat.
    2. **`geefSpeler`**:  
        Zoek en retourneer een speler op basis van het e-mailadres. Als geen speler gevonden wordt, retourneert de methode `null`.

### Bijhorende domein controller

```java
package domein;

import java.math.BigDecimal;

import dto.SpelerDTO;

public class DomeinController {

	private SpelerRepository spelerRepository;
	private Speler speler;

	public DomeinController()
	{
		spelerRepository = new SpelerRepository();
	}
	
	public void registreer(String naam, String voornaam, String email) {
		Speler speler = new Speler(naam, voornaam, email);
		spelerRepository.voegSpelerToe(speler);
	}

	public void meldAan(String email) {
		speler = spelerRepository.geefSpeler(email);
	}

	public SpelerDTO geefSpeler() {	//DTO = Data Transfer Object
		if(speler == null)
			return new SpelerDTO("onbekend", "onbekend", BigDecimal.ZERO, false);
		return new SpelerDTO(speler.getNaam(), speler.getVoornaam(), speler.getKrediet(), speler.isAdminRechten());
	}
}
```
#### **Hoe past dit in een groter geheel?**

- **Domeincontroller**:  
    Deze klasse zou methoden van `SpelerRepository` aanroepen om spelers te registreren, op te halen, of in te loggen. De controller zorgt ervoor dat de businesslogica wordt afgehandeld.
    
- **UI**:  
    De gebruikersinterface communiceert met de `DomeinController`, die op zijn beurt de repository gebruikt om de gewenste spelersinformatie te verkrijgen of te wijzigen.

---

# Kenmerken van de domeinlaag

1. **Onafhankelijkheid:**  
    De domeinlaag weet niets over de interface (CUI, GUI, of persistentie). Hierdoor kun je de logica hergebruiken, ongeacht de manier waarop je de applicatie bedient.
    
2. **Encapsulatie:**  
    De domeinklassen beschermen hun gegevens door middel van privé-attributen en openbare methoden (_getters_ en _setters_) voor gecontroleerde toegang.
    
3. **Validatie:**  
    De domeinlaag is verantwoordelijk voor het controleren van de juistheid van de gegevens. Dit zorgt ervoor dat fouten zoals een negatief bedrag niet door de applicatie kunnen.
    

---

# Hoe werkt de domeinlaag met andere lagen?

1. **CUI/GUI → Domeincontroller:**  
    De interface vraagt via de domeincontroller om informatie of roept acties aan.
    
2. **Domeincontroller → Domeinklassen:**  
    De domeincontroller communiceert met de domeinklassen om gegevens op te vragen of wijzigingen aan te brengen.
    
3. **(Optioneel) Persistentie → Domeinklassen:**  
    Indien je met een database werkt, kan de persistentielaag gegevens doorgeven aan de domeinklassen.
    

---

# Voorbeeldgebruik met de CUI

In de **CUI** zou je bijvoorbeeld het saldo van een rekening kunnen opvragen via de domeincontroller:

```java
package cui;

import domein.Domeincontroller;
import java.util.Scanner;

public class BankApplicatie {
    private final Domeincontroller domeincontroller;
    private final Scanner scanner;

    public BankApplicatie(Domeincontroller domeincontroller) {
        this.domeincontroller = domeincontroller;
        this.scanner = new Scanner(System.in);
    }

    public void start() {
        System.out.println("Welkom bij de bankapplicatie!");
        System.out.println("Huidig saldo: " + domeincontroller.geefSaldo());

        System.out.print("Hoeveel wil je storten? ");
        double bedrag = scanner.nextDouble();
        domeincontroller.stortOpRekening(bedrag);

        System.out.println("Nieuw saldo: " + domeincontroller.geefSaldo());
    }
}

```

---

# Belangrijke principes

- **Domeinlogica in de domeinlaag:** Zorg ervoor dat de domeinlogica niet in de interface of in de persistentielaag terechtkomt.
- **Façade-patroon:** De domeincontroller dient als toegangspoort tot de domeinlaag en vereenvoudigt de interactie met de interface.
- **Modulariteit:** Door de lagen goed te scheiden, kun je gemakkelijk één laag aanpassen zonder andere lagen te beïnvloeden.

# Samenvatting: Repository, DTO, en Domeincontroller

In softwareontwikkeling zijn **repository**, **DTO**, en **domeincontroller** drie belangrijke concepten om de structuur van een toepassing overzichtelijk, herbruikbaar, en schaalbaar te houden. Hier is een helder overzicht van hun rol en onderlinge relatie:

---

## 1. Repository: Beheer van objecten

Een **repository** is een klasse die verantwoordelijk is voor het **beheer van een bepaald soort objecten**.

- **Taken van een repository**:
    
    1. **Bijhouden**: Objecten opslaan en beheren (bijvoorbeeld in een lijst of database).
    2. **Zoeken**: Objecten ophalen op basis van bepaalde criteria (bijvoorbeeld een ID of naam).
    3. **Wijzigen**: Gegevens van opgeslagen objecten aanpassen.
    4. **Verwijderen**: Objecten uit de opslag verwijderen.
- **Waarom een repository gebruiken?**
    
    - **Scheiding van verantwoordelijkheden**: De repository neemt de taak van gegevensbeheer over, zodat andere klassen zich kunnen richten op logica.
    - **Herbruikbaarheid**: Dezelfde repository kan op meerdere plaatsen in je code worden gebruikt.
    - **Uitbreidbaarheid**: Het opslagsysteem (lijst, database, bestand) kan worden aangepast zonder andere klassen te beïnvloeden.

---

## 2. DTO (Data Transfer Object): Gegevensoverdracht

Een **DTO** wordt gebruikt om **gegevens te transporteren** tussen lagen van een toepassing, zoals van de domeinlaag naar de presentatie- of gebruikersinterfacelaag.

- **Wat doet een DTO?**
    
    - Bevat alleen de noodzakelijke gegevens die nodig zijn voor weergave of verwerking.
    - Geen logica: het is puur een datahouder.
- **Waarom een DTO gebruiken?**
    
    - **Afhankelijkheden verminderen**: De UI-laag hoeft geen directe toegang te hebben tot de domeinklassen.
    - **Veiligheid**: Je stuurt alleen de gegevens die nodig zijn en verbergt andere interne details.
    - **Efficiëntie**: Je kunt de hoeveelheid data beperken tot wat strikt noodzakelijk is.

---

## 3. Domeincontroller: Schakel tussen UI en domeinlaag

De **domeincontroller** fungeert als een **toegangspoort** tot de domeinlaag. Het is verantwoordelijk voor de coördinatie van acties en het aanroepen van juiste methoden in de repository en domeinklassen.

- **Taken van de domeincontroller**:
    
    1. Ontvangen van instructies vanuit de UI (zoals "registreer een nieuwe gebruiker").
    2. Aanroepen van de juiste repository-methoden om gegevens op te slaan, op te halen, of te bewerken.
    3. Het teruggeven van gegevens aan de UI, meestal via een DTO.
- **Waarom een domeincontroller gebruiken?**
    
    - **Structuur**: Voorkomt dat de UI rechtstreeks met domeinklassen of repositories praat.
    - **Eenvoudig testen**: Je kunt de domeincontroller testen zonder afhankelijkheid van de UI.
    - **Façade-patroon**: Vereenvoudigt de interface naar de complexe domeinlaag.

---

## Hoe werken ze samen?

1. **De UI-laag** roept methoden aan van de domeincontroller. Bijvoorbeeld: een gebruiker klikt op "registreer".
2. **De domeincontroller** verwerkt de input, creëert objecten, en gebruikt de repository om deze op te slaan.
3. **De repository** slaat de objecten op en biedt methoden aan voor opslag, zoekopdrachten en updates.
4. **De domeincontroller** kan gegevens uit de repository halen, eventueel bewerken, en terugsturen als een DTO naar de UI.

---

## Illustratie: Hoe de lagen samenwerken

**Scenario: Een gebruiker wil een lijst van producten bekijken.**

1. **UI-laag**:  
    Vraagt de domeincontroller om een lijst met producten.
    
2. **Domeincontroller**:  
    Roept een methode in de repository aan om alle producten op te halen.
    
3. **Repository**:  
    Beheert de opslag (bijvoorbeeld een lijst of database) en retourneert de producten.
    
4. **Domeincontroller**:  
    Zet de productinformatie om in een lijst van DTO’s en stuurt deze naar de UI.
    
5. **UI-laag**:  
    Toont de gegevens aan de gebruiker.
    

---

## Voordelen van deze structuur

1. **Betere organisatie**: Elke laag heeft een duidelijke verantwoordelijkheid.
2. **Flexibiliteit**: Wijzigingen in de repository of domeinlaag hebben minder invloed op de UI.
3. **Herbruikbaarheid**: Dezelfde repository-methoden of DTO's kunnen in andere toepassingen worden gebruikt.
4. **Testbaarheid**: De lagen kunnen afzonderlijk worden getest.