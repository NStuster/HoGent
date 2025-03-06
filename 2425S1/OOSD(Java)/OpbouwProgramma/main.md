De **main**-laag in je applicatie is de startplek van je programma. Het bevat de `main`-methode, die door de Java Virtual Machine (JVM) wordt opgeroepen om de applicatie te starten. De **main**-laag is vooral verantwoordelijk voor het initialiseren van je applicatie en het doorgeven van controle aan andere lagen, zoals de **cui**.

---

# Wat doet de main-laag?

1. **Initialisatie van objecten en afhankelijkheden:**  
    De **main**-laag maakt de belangrijkste objecten van je applicatie aan, zoals de **domeincontroller**, en geeft deze door aan de interface-laag (bijvoorbeeld de **cui**).
    
2. **Start de gebruikersinterface:**  
    De **main**-laag roept de startmethode van de interface aan om de applicatie te laten draaien.
    
3. **Enkel verantwoordelijk voor opstartlogica:**  
    De **main**-laag bevat geen domeinlogica of complexe processen. Het dient puur als startpunt.
    

---

# Structuur van de main-laag

De main-laag bestaat vaak uit één klasse, bijvoorbeeld `StartUp`. Deze klasse bevat alleen de `public static void main(String[] args)`-methode.

## Voorbeeld van een main-klasse

```java
package main;

import cui.NaamApplicatie;
import domein.Domeincontroller;

public class StartUp {
    public static void main(String[] args) {
        // Initialiseer de domeincontroller
        Domeincontroller domeincontroller = new Domeincontroller();

        // Start de gebruikersinterface
        NaamApplicatie cui = new NaamApplicatie(domeincontroller);
        cui.start();
    }
}
```

---

### **Belangrijke principes**

1. **Zo klein mogelijk houden:**  
    De **main**-laag mag niet te veel verantwoordelijkheden hebben. Alles wat niet met opstartlogica te maken heeft, moet worden uitbesteed aan andere lagen.
    
2. **Afhankelijkheden injecteren:**  
    Objecten zoals de **domeincontroller** worden in de main-laag geïnitialiseerd en doorgegeven aan andere lagen, zoals de **cui** of een GUI.
    
3. **Scheid logica van configuratie:**  
    Gebruik de **main**-laag niet voor logica. Bijvoorbeeld:
    
    - Goed: `Domeincontroller` bevat de logica.
    - Fout: `main` berekent iets of roept complexe methoden aan.

---

### **Hoe past de main-laag in de applicatie-architectuur?**

De **main**-laag staat bovenaan je lagenstructuur. Het is het startpunt dat de andere lagen verbindt en initialiseert:

- **Main → Domeincontroller:**  
    De domeincontroller wordt in de main-klasse gemaakt.
- **Main → Interface (CUI/GUI):**  
    De gebruikersinterface wordt gestart vanuit de main-laag.

---

### **Waarom is de main-laag belangrijk?**

- **Helder startpunt:**  
    Je weet altijd waar je applicatie begint. Dit maakt het debuggen en begrijpen van de applicatie eenvoudiger.
    
- **Modulair ontwerp:**  
    Door alle configuratie in de main-laag te doen, blijft de rest van je code schoon en onafhankelijk van hoe de applicatie gestart wordt.
    

---

### **Veelvoorkomende fouten in de main-laag**

1. **Te veel logica in de main-methode:**  
    Je main-methode mag geen complexe logica bevatten. Verplaats die naar de domeincontroller of andere lagen.
    
_Fout:_
```java
public static void main(String[] args) {
    System.out.println("Start applicatie");
    // Direct hier logica uitvoeren (niet aanbevolen)
    String naam = "Gebruiker";
    System.out.println("Welkom " + naam);
}
```

_Correct:_
```java
public static void main(String[] args) {
    Domeincontroller domeincontroller = new Domeincontroller();
    NaamApplicatie cui = new NaamApplicatie(domeincontroller);
    cui.start();
}
```

2.  **Geen scheiding van lagen:**  
    Vermijd dat de main-laag direct met domeinklassen communiceert. Gebruik altijd de domeincontroller als tussenlaag.
    

---

# Samenvatting

De **main**-laag dient als de startplek van je applicatie. Het is verantwoordelijk voor:

1. Het aanmaken van de belangrijkste objecten, zoals de domeincontroller.
2. Het doorgeven van controle aan de interface (CUI/GUI).
3. Het gescheiden houden van opstartlogica en domeinlogica.

Met een goed ontworpen main-laag zorg je voor een overzichtelijke en uitbreidbare applicatie.