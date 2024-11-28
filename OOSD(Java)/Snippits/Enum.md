# Uitleg

Een **enumeratie** (of **enum**) in Java is een speciaal datatype dat een verzameling van vaste, onveranderlijke constanten vertegenwoordigt. Het wordt gebruikt wanneer een variabele alleen een vooraf gedefinieerde set van waarden mag bevatten.

## Voordelen van enums

- **Leesbaarheid**: Code wordt duidelijker en makkelijker te begrijpen.
- **Voorkomen van fouten**: Je voorkomt dat verkeerde of onverwachte waarden worden gebruikt.
# Gebruik
## Declaratie van een enum

```java
public enum Dag { MAANDAG, DINSDAG, WOENSDAG, DONDERDAG, VRIJDAG, ZATERDAG, ZONDAG }
```

## Gebruik van een enum

```java
public class TestEnum {
	public static void main(String[] args) { 
		Dag vandaag = Dag.WOENSDAG; 
		
		if (vandaag == Dag.WOENSDAG) {
			System.out.println("Het is midden in de week!"); 
		} 
		
		// Itereren over alle waarden
		
		for (Dag dag : Dag.values()) {
			System.out.println(dag); 
		} 
	} 
}
```

# Enum met extra logica

## Declaratie

```java
public enum Seizoen {
    LENTE("Maart tot Mei"),
    ZOMER("Juni tot Augustus"),
    HERFST("September tot November"),
    WINTER("December tot Februari");

    private final String beschrijving;

    Seizoen(String beschrijving) {
        this.beschrijving = beschrijving;
    }

    public String getBeschrijving() {
        return beschrijving;
    }
}
```

## Gebruik

```java
public class TestSeizoen {
    public static void main(String[] args) {
        Seizoen seizoen = Seizoen.ZOMER;
        System.out.println(seizoen + " loopt van: " + seizoen.getBeschrijving());
    }
}
```


