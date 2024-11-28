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

