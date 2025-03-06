De **cui** (_Console User Interface_) is de laag in je applicatie die direct met de gebruiker communiceert. Dit is meestal de eerste interface die je bouwt, omdat het eenvoudig te implementeren is. Later kun je deze uitbreiden naar een grafische gebruikersinterface (**GUI**) of een webinterface.

## Wat doet de CUI?

1. **Input verzamelen:**  
    De gebruiker invoer laten geven via het toetsenbord, bijvoorbeeld namen, cijfers of keuzes.
    
    _Voorbeeld:_ Vraag naar een naam met `Scanner`.

```java
Scanner scanner = new Scanner(System.in);
System.out.print("Geef je naam in: ");
String naam = scanner.nextLine();
```

2. **Output tonen:**  
	Informatie tonen aan de gebruiker, zoals resultaten, foutmeldingen, of menu-opties.

_Voorbeeld:_

```java
System.out.println("Welkom " + naam + "!");
```

3. **Gebruiker begeleiden door de applicatie:**  
    Je geeft menu-opties, begeleidt de gebruiker naar de juiste acties, en valideert invoer indien nodig.
    

---

## Hoe werkt de CUI met andere lagen?

De **cui** is alleen verantwoordelijk voor de communicatie met de gebruiker. Voor de logica en verwerking roept de cui-methoden aan in de **domeincontroller**.

### Belangrijke principes:

- **Geen logica in de cui:**  
    De CUI mag geen berekeningen of complexe logica bevatten; dit is de taak van de **domein**-laag.
- **Geen rechtstreekse toegang tot de domeinlaag:**  
    De **cui** praat uitsluitend met de **domeincontroller** om de lagen goed gescheiden te houden.

---

## Structuur van een CUI-klasse

Een typische CUI-klasse ziet er zo uit:

```java
package cui;

import domein.Domeincontroller;
import java.util.Scanner;

public class NaamApplicatie {
    private final Domeincontroller domeincontroller;
    private final Scanner scanner;

    public NaamApplicatie(Domeincontroller domeincontroller) {
        this.domeincontroller = domeincontroller;
        this.scanner = new Scanner(System.in);
    }

    public void start() {
        System.out.println("Welkom bij de applicatie!");
        toonMenu();
    }

    private void toonMenu() {
        int keuze;
        do {
            System.out.println("Kies een optie:");
            System.out.println("1. Optie 1");
            System.out.println("2. Optie 2");
            System.out.println("0. Afsluiten");
            keuze = vraagKeuze();
            verwerkKeuze(keuze);
        } while (keuze != 0);
    }

    private int vraagKeuze() {
        System.out.print("Maak je keuze: ");
        return scanner.nextInt();
    }

    private void verwerkKeuze(int keuze) {
        switch (keuze) {
            case 1:
                System.out.println("Optie 1 gekozen");
                // Roep een methode in domeincontroller aan
                break;
            case 2:
                System.out.println("Optie 2 gekozen");
                // Roep een methode in domeincontroller aan
                break;
            case 0:
                System.out.println("Programma afgesloten.");
                break;
            default:
                System.out.println("Ongeldige keuze. Probeer opnieuw.");
        }
    }
}
```


## Belangrijke elementen

1. **Domeincontroller als brug:**  
    De `NaamApplicatie` heeft een instantie van de domeincontroller om gegevens op te vragen of acties uit te voeren.
    
2. **Scanner voor invoer:**  
    Een `Scanner`-object wordt vaak gebruikt om gegevens van de gebruiker te lezen.
    
3. **Input validatie:**  
    Controleer of de invoer geldig is voordat je deze verwerkt, bijvoorbeeld of een keuze binnen de toegestane opties valt.
    

---

## Waarom is de CUI handig?

- **Snelle ontwikkeling:**  
    Je kunt je applicatie testen zonder een complexe GUI te bouwen.
- **Debuggen:**  
    Je kunt eenvoudig zien hoe de verschillende lagen samenwerken.
- **Goed voor beginners:**  
    Je leert hoe de verschillende lagen met elkaar communiceren voordat je meer ingewikkelde UI-frameworks gebruikt.

