

## Kernuitleg Pass By Value vs Pass By Reference

### Metafoor: Verhuizen van Spullen

Stel je voor dat je spullen verhuist:

- **Pass By Value**: Je maakt een kopie van je spullen in een nieuwe doos
- **Pass By Reference**: Je verhuist de originele doos naar een nieuwe locatie

### Java Specifiek: Altijd Pass By Value

Java maakt ALTIJD een kopie, maar die kopie kan twee vormen aannemen:

1. **Primitieve Types** (int, double, boolean)
    
```java
public void veranderGetal(int nummer) {
    nummer = 100; // Werkt NIET op originele waarde
}

int x = 50;
veranderGetal(x); // x blijft 50
```

- ✅ Hier is het een letterlijke kopie van de waarde

 2. **Objecten** (complexere situatie)
```java
class Persoon {
    String naam;
}

public void wijzigPersoon(Persoon p) {
    p.naam = "nieuwe naam"; // WEL invloed op origineel
    p = new Persoon(); // GEEN invloed op origineel
}

Persoon persoon = new Persoon();
persoon.naam = "oude naam";
wijzigPersoon(persoon); 
// persoon.naam is nu "nieuwe naam"
```

### Gedetailleerde Vergelijking

|Aspect|Pass By Value|Pass By Reference|
|---|---|---|
|Primitieven|Kopieert exacte waarde|Niet van toepassing in Java|
|Objecten|Kopieert object-referentie|Niet van toepassing in Java|

### Praktisch Voorbeeld met Diepere Uitleg

```java
public class PassByValueDemo {
    public static void veranderWaarde(int x) {
        x = 10; // Lokale kopie wordt veranderd
        System.out.println("Binnen methode: " + x);
    }

    public static void veranderObject(StringBuilder sb) {
        sb.append(" extra tekst"); // Wijzigt origineel object
        sb = new StringBuilder("nieuwe string"); // Heeft GEEN effect
    }

    public static void main(String[] args) {
        // Primitieve type
        int getal = 5;
        veranderWaarde(getal);
        System.out.println("Buiten methode: " + getal); // Blijft 5

        // Object
        StringBuilder tekst = new StringBuilder("originele tekst");
        veranderObject(tekst);
        System.out.println(tekst); // Print: "originele tekst extra tekst"
    }
}
```

### Dieper Begrip: Wat Gebeurt Er Echt?

1. **Bij Primitieven**:
    - Complete kopie van de waarde
    - Wijzigingen in methode zijn lokaal
    - Originele waarde blijft ongewijzigd
2. **Bij Objecten**:
    - Kopie van de referentie (adres in geheugen)
    - Je kunt het object wijzigen via deze referentie
    - Nieuwe toewijzing (= new) werkt alleen lokaal

### Visuele Mentale Voorstelling

```
Primitief:           Object:
x = 5                persoon -> [Geheugenadres]
methode ontvangt     methode ontvangt
een kopie: 5         kopie van adres
                     Kan origineel object wijzigen
```

### Praktische Tips

- Wees voorzichtig met objectwijzigingen in methoden
- Begrijp het verschil tussen objecteigenschappen wijzigen en object opnieuw toewijzen
- Gebruik defensieve kopieën als je originele data wilt beschermen

### Samenvatting in 3 Zinnen

- Java is ALTIJD Pass By Value
- Bij primitieven krijg je een kopie van de waarde
- Bij objecten krijg je een kopie van de geheugenplek (referentie), waardoor je het originele object kunt wijzigen

