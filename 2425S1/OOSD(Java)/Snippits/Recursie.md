# Wat is Recursie?

Recursie is een programmeertechniek waarbij een methode zichzelf aanroept om een probleem op te lossen. Het is een krachtige methode om complexe problemen op te delen in eenvoudigere, gelijksoortige deelproblemen.

# Basisstructuur van Recursie

Elke recursieve methode heeft twee essentiële onderdelen:

1. Basisgeval (base case): Stopt de recursie
2. Recursief geval: Roept de methode opnieuw aan met een gewijzigde parameter

# Voorbeeld 1: Faculteit (Factorial)

```java
public long faculteit(int getal) {
    // Basisgeval: stoppen bij 0
    if (getal < 0)
        throw new IllegalArgumentException("Geen natuurlijk getal");
    if (getal == 0)
        return 1;
    
    // Recursief geval: getal * faculteit van (getal-1)
    return getal * faculteit(getal - 1);
}
```

## Uitvoering voor faculteit(4):

1. faculteit(4) = 4 * faculteit(3)
2. faculteit(3) = 3 * faculteit(2)
3. faculteit(2) = 2 * faculteit(1)
4. faculteit(1) = 1 * faculteit(0)
5. faculteit(0) = 1 (basisgeval)

Stappenopbouw: 4 * 3 * 2 * 1 * 1 = 24


# Voorbeeld 2: Fibonacci

```java
public long fibonacci(int getal) {
    // Basisgevallen: 0 en 1
    if (getal < 0)
        throw new IllegalArgumentException("Geen natuurlijk getal");
    if ((getal == 0) || (getal == 1))
        return getal;
    
    // Recursief geval: som van twee voorafgaande getallen
    return fibonacci(getal - 1) + fibonacci(getal - 2);
}
```

## Uitvoering voor fibonacci(4):

1. fibonacci(4) = fibonacci(3) + fibonacci(2)
2. fibonacci(3) = fibonacci(2) + fibonacci(1)
3. fibonacci(2) = fibonacci(1) + fibonacci(0)

# Aandachtspunten bij Recursie

1. **Eindconditie**: Altijd een duidelijke basiscase voorzien
2. **Stapgrootte**: Elke recursieve aanroep moet dichter bij de basiscase komen
3. **Performantie**: Kan geheugenintensief zijn
4. **Mogelijke Fouten**:
    - StackOverflowError bij te diepe recursie
    - Exponentiële tijdscomplexiteit

# Vergelijking Recursief vs Iteratief

## Faculteit Iteratief

```java
public long faculteitIteratief(int getal) {
    long result = 1;
    for (int i = 1; i <= getal; i++) {
        result *= i;
    }
    return result;
}
```

## Fibonacci Iteratief

```java
public long fibonacciIteratief(int getal) {
    if (getal <= 1) return getal;
    
    long prev = 0, curr = 1;
    for (int i = 2; i <= getal; i++) {
        long next = prev + curr;
        prev = curr;
        curr = next;
    }
    return curr;
}
```


# Wanneer Gebruik Je Recursie?

✅ Goede scenario's:

- Boomstructuren doorlopen
- Backtracking-algoritmen
- Problemen die natuurlijk recursief zijn (b.v. fractals)

❌ Minder geschikte scenario's:

- Grote datasets
- Performancegevoelige toepassingen
- Eenvoudige herhalingen

# Beste Praktijken

1. Zorg voor duidelijke basisgevallen
2. Controleer invoerparameters
3. Overweeg iteratieve alternatieven
4. Let op geheugenconsumptie
5. Gebruik waar mogelijk staartrecursie

# Praktische Tips

- Gebruik debuggers om recursieve oproepen te volgen
- Teken de aanroepstapel om recursie te begrijpen
- Test met kleine invoerwaarden
- Evalueer de tijds- en ruimtecomplexiteit