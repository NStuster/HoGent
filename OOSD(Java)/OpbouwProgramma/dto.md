De **DTO** (_Data Transfer Object_) is een essentieel concept in je applicatie-architectuur. Het doel van een DTO is om gegevens op een eenvoudige en gestructureerde manier van de ene laag naar de andere over te dragen, bijvoorbeeld van de **domeinlaag** naar de **cui** of andersom.

In jouw structuur gebruik je Java's **record**-functionaliteit om DTO's te definiëren, wat een moderne en compacte manier is om immutable (onveranderbare) gegevensobjecten te maken.

---

# Waarom een DTO gebruiken?

1. **Scheiding van verantwoordelijkheden:**  
    Domeinklassen bevatten vaak meer informatie dan wat je in de interface wilt tonen. Een DTO filtert de relevante gegevens. _Bijvoorbeeld:_ De klasse `Rekening` kan een rekeningnummer en saldo bevatten, maar voor de interface wil je misschien alleen het saldo doorgeven.
    
2. **Onafhankelijkheid:**  
    Een DTO is specifiek voor datatransfer en maakt het makkelijker om veranderingen in de domeinlaag te beheren zonder de interface te beïnvloeden.
    
3. **Immutable objecten:**  
    DTO's met records zijn standaard immutable, wat betekent dat hun waarden na creatie niet meer kunnen worden aangepast. Dit voorkomt fouten door onbedoelde wijzigingen.
    

---

# Hoe ziet een DTO eruit?

Een DTO in Java is eenvoudig te definiëren met een **record**. Records vereisen alleen de veldnamen en hun types; Java genereert automatisch de constructor, getters en andere methoden zoals `toString`.

## Voorbeeld: DTO voor `Rekening`

```java
package dto;

public record RekeningDTO(String rekeningnummer, double saldo) {
}
```


---

# Hoe gebruik je een DTO in de lagen?

1. **Domeinlaag genereert DTO:**  
    De domeinlaag maakt een DTO om gegevens door te geven aan de domeincontroller of interface.
    
    _Bijvoorbeeld:_  
    Een methode in de `Domeincontroller` die een `RekeningDTO` retourneert:

```java
public RekeningDTO geefRekeningGegevens() {
    return new RekeningDTO(rekening.getRekeningnummer(), rekening.getSaldo());
}
```

2. **CUI/GUI ontvangt DTO:**  
	De interface ontvangt de DTO en gebruikt deze om gegevens te tonen aan de gebruiker.

	_Bijvoorbeeld:_
```java
RekeningDTO rekeningDTO = domeincontroller.geefRekeningGegevens();
System.out.println("Rekeningnummer: " + rekeningDTO.rekeningnummer());
System.out.println("Saldo: " + rekeningDTO.saldo());
```


3. **DTO als input naar domeincontroller:**  
	Als de gebruiker gegevens invoert, kun je een DTO maken en deze naar de domeincontroller sturen.

	_Bijvoorbeeld:_ Een DTO voor een storting:
```java
public record StortingDTO(double bedrag) { } // Gebruiken in de domeincontroller: public void stortBedrag(StortingDTO storting) { rekening.stort(storting.bedrag()); }
```

---

# Wanneer gebruik je een DTO?

- **Gegevensoverdracht tussen lagen:**  
    Gebruik een DTO om gegevens door te geven van de **domeinlaag** naar de **cui** of van de **persistentielaag** naar de domeinlaag.
    
- **Samenvatten van objecten:**  
    Als een domeinobject veel attributen heeft, maar je er slechts een paar nodig hebt in de interface.
    
- **Voorkomen van directe toegang tot domeinobjecten:**  
    Door een DTO te gebruiken, vermijd je dat de interface direct met domeinklassen werkt, waardoor je lagen goed gescheiden blijven.
    

---

# Waarom geen gewone klasse gebruiken?

Hoewel een gewone klasse als DTO kan dienen, heeft een **record** in Java enkele voordelen:

1. **Compacte syntax:**  
    Geen boilerplate-code zoals constructoren, getters of `toString`.
    
    _Bijvoorbeeld:_
```java
public record RekeningDTO(String rekeningnummer, double saldo) {}
```

In tegenstelling tot:

```java
public class RekeningDTO {
    private final String rekeningnummer;
    private final double saldo;

    public RekeningDTO(String rekeningnummer, double saldo) {
        this.rekeningnummer = rekeningnummer;
        this.saldo = saldo;
    }

    public String getRekeningnummer() {
        return rekeningnummer;
    }

    public double getSaldo() {
        return saldo;
    }

    @Override
    public String toString() {
        return "RekeningDTO[rekeningnummer=" + rekeningnummer + ", saldo=" + saldo + "]";
    }
}
```

2. **Immutable by default:**  
    Records zorgen ervoor dat de waarden van een DTO niet kunnen worden aangepast na creatie.
    
3. **Meer declaratief:**  
    Met records leg je de nadruk op de gegevens die het object bevat, niet op de implementatiedetails.

---

### **Best Practices voor DTO's**

1. **Houd DTO's eenvoudig:**  
    Een DTO mag geen logica bevatten, alleen data. Het is puur een transportmiddel.
    
2. **Specifiek voor de context:**  
    Maak een aparte DTO voor elke situatie waar andere gegevens nodig zijn. Je hoeft niet één DTO te hergebruiken in meerdere situaties.
    
3. **Consistentie met de lagen:**  
    Gebruik DTO's alleen tussen lagen. Binnen de domeinlaag zelf werk je direct met domeinklassen.
    
4. **Naming convention:**  
    Geef DTO's een duidelijke naam die de context weergeeft, zoals `RekeningDTO`, `GebruikerDTO`, of `StortingDTO`.
    

---

### **Samenvatting van een voorbeeldflow**

1. **CUI vraagt gegevens op via de domeincontroller:**

```java
RekeningDTO dto = domeincontroller.geefRekeningGegevens();
```

2. Domeincontroller genereert een DTO op basis van een domeinklasse:

```java
return new RekeningDTO(rekening.getRekeningnummer(), rekening.getSaldo());
```

3. CUI toont de gegevens van de DTO aan de gebruiker:

```java
System.out.println("Saldo: " + dto.saldo());
```

Dit zorgt ervoor dat je applicatie netjes gescheiden blijft en elke laag zijn eigen verantwoordelijkheid behoudt.