https://docs.oracle.com/javase/8/docs/api/java/math/BigDecimal.html
## BigDecimal: Nauwkeurige Decimale Berekeningen

### Wat is BigDecimal?

- Een klasse voor nauwkeurige decimale berekeningen
- Voorkomt afrondingsfouten bij financiële en wetenschappelijke berekeningen
- Werkt met onbeperkte precisie

### Waarom BigDecimal?

Gewone floating-point types (double, float) hebben nauwkeurigheidsproblemen:

```java
System.out.println(0.1 + 0.2); // Geeft NIET 0.3 maar iets als 0.30000000000000004
```

### Methoden van BigDecimal

1. **Aanmaken**

```java
// Verschillende manieren van initialiseren
BigDecimal a = BigDecimal.valueOf(1000.0);
BigDecimal b = new BigDecimal("1000.0");
BigDecimal c = BigDecimal.ZERO;
BigDecimal d = BigDecimal.ONE;
```
2. **Basis Rekenmethoden**

```java
BigDecimal x = BigDecimal.valueOf(10);
BigDecimal y = BigDecimal.valueOf(3);

// Optellen
BigDecimal som = x.add(y);

// Aftrekken
BigDecimal verschil = x.subtract(y);

// Vermenigvuldigen
BigDecimal product = x.multiply(y);

// Delen (let op: geef afrondingsmethode op)
BigDecimal quotient = x.divide(y, RoundingMode.HALF_UP);
```

#### Jouw Specifieke Voorbeeld Uitgelegd

```java
private void berekenIntrest() {
    // Principal (beginbedrag)
    BigDecimal principal = BigDecimal.valueOf(1000.0);
    
    // Rentepercentage
    BigDecimal rate = BigDecimal.valueOf(0.05);
    
    for (int year = 1; year <= 10; year++) {
        // Berekening samengestelde interest
        // (1 + rate)^year * principal
        BigDecimal amount = principal.multiply(
            rate.add(BigDecimal.ONE).pow(year)
        ); 
        
        // Formatteren als valuta
        System.out.printf("%4d%20s%n", 
            year, 
            NumberFormat.getCurrencyInstance().format(amount)
        ); 
    }
}
```

### Key Concepten in Bovenstaand Voorbeeld

1. `BigDecimal.valueOf()`: Veilige manier om decimale waarden te maken
2. `rate.add(BigDecimal.ONE)`: Optellen van 1 bij rentepercentage
3. `.pow(year)`: Machtsverheffen
4. `NumberFormat.getCurrencyInstance()`: Opmaken als valuta

### Belangrijke BigDecimal Eigenschappen

```java
BigDecimal a = new BigDecimal("10.5");

// Vergelijken
a.compareTo(new BigDecimal("10.5")); // Geeft 0 (gelijk)

// Afronden
a.setScale(2, RoundingMode.HALF_UP); // Twee decimalen

// Beschikbare RoundingMode opties:
// HALF_UP: Standaard afronden
// HALF_EVEN: Banker's rounding
// DOWN: Altijd afronden naar beneden
// UP: Altijd afronden naar boven
```

### Praktische Voorbeelden

1. **Nauwkeurige Financiële Berekening**

```java
public BigDecimal berekenBTW(BigDecimal bedrag) {
    BigDecimal BTW_TARIEF = new BigDecimal("0.21");
    return bedrag.multiply(BTW_TARIEF)
                 .setScale(2, RoundingMode.HALF_UP);
}
```

2. **Veilig Delen**

```java
public BigDecimal deelVeilig(BigDecimal a, BigDecimal b) {
    try {
        return a.divide(b, 2, RoundingMode.HALF_UP);
    } catch (ArithmeticException e) {
        // Handling voor oneindige of niet-exacte deling
        return BigDecimal.ZERO;
    }
}
```

### Wanneer Gebruiken?

✅ Gebruik BigDecimal bij:

- Financiële berekeningen
- Wetenschappelijke precisieberekeningen
- Valuta
- Situaties waar exactheid cruciaal is

❌ Niet gebruiken bij:

- Eenvoudige berekeningen
- Wanneer kleine afrondingsfouten niet uitmaken
- Performance-kritieke code

### Samenvatting

- BigDecimal voorkomt afrondingsfouten
- Biedt nauwkeurige decimale bewerkingen
- Flexibel met afrondingsmethoden
- Ideaal voor financiële en precisieberekeningen