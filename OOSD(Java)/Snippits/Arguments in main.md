In Java is `args` een array van strings die command-line argumenten bevat die worden meegegeven bij het starten van het programma.

```java
public static void main(String[] args)
```

- `args` staat voor "arguments"
- Het is een array van strings
- Kan 0 of meer argumenten bevatten

# Methoden om Argumenten te Gebruiken

## 1. Lengte Controleren

```java
// Aantal argumenten bepalen
int aantalArgumenten = args.length;
```
## 2. Argumenten Benaderen

```java
// Eerste argument
String eersteArgument = args[0];

// Tweede argument
String tweedeArgument = args[1];
```


# Praktische Voorbeelden

## Voorbeeld 1: Basis Gebruik

```java
public class ArgumentDemo {
    public static void main(String[] args) {
        // Verschillende scenario's behandelen
        switch (args.length) {
            case 0:
                System.out.println("Geen argumenten gegeven");
                break;
            case 1:
                System.out.println("Eerste argument: " + args[0]);
                break;
            case 2:
                System.out.println("Eerste argument: " + args[0]);
                System.out.println("Tweede argument: " + args[1]);
                break;
            default:
                System.out.println("Teveel argumenten");
        }
    }
}
```

## Voorbeeld 2: Argumenten Verwerken

```java
public class RekenMachine {
    public static void main(String[] args) {
        // Controleren op voldoende argumenten
        if (args.length < 2) {
            System.out.println("Gebruik: java RekenMachine <getal1> <getal2>");
            return;
        }

        try {
            // String argumenten converteren naar getallen
            int getal1 = Integer.parseInt(args[0]);
            int getal2 = Integer.parseInt(args[1]);

            // Berekeningen uitvoeren
            System.out.println("Som: " + (getal1 + getal2));
            System.out.println("Verschil: " + (getal1 - getal2));
        } catch (NumberFormatException e) {
            System.out.println("Ongeldige getallen ingevoerd");
        }
    }
}
```

# Hoe Argumenten Invoeren?

## In Eclipse

1. Ga naar Run > Run Configurations
2. Selecteer je project/klasse
3. Ga naar het tabblad "Arguments"
4. Voer argumenten in, gescheiden door spaties

## Vanuit Command Line

```bash
java NaamVanJeKlasse argument1 argument2 argument3
```

# Geavanceerde Verwerking

## Switch Expression (Nieuwere Java Versies)

```java
String antwoord = switch (args.length) {
    case 0 -> "Geen parameters";
    case 1 -> String.format("1 parameter = %s", args[0]);
    default -> {
        String result = "Parameters: ";
        for (int i = 0; i < args.length; i++) {
            result += (i < args.length - 1) 
                ? args[i] + ", " 
                : "en " + args[i];
        }
        yield result;
    }
};
```

# Beste Praktijken

1. **Argumenten Valideren**
    - Controleer altijd het aantal argumenten
    - Vang mogelijke conversiefouten af
2. **Foutafhandeling**
    - Geef duidelijke gebruiksinstructies
    - Gebruik try-catch voor conversies
3. **Flexibiliteit**
    - Maak je programma robuust voor verschillende invoer

# Voorbeeldscenario's

```java
public class ArgumentVerwerker {
    public static void main(String[] args) {
        // Help-optie
        if (args.length == 1 && (args[0].equals("-h") || args[0].equals("--help"))) {
            toonHelp();
            return;
        }

        // Configuratie-instellingen
        switch (args.length) {
            case 0 -> standaardConfiguratie();
            case 1 -> configuratieMetEenParameter(args[0]);
            case 2 -> configuratieMetTweeParameters(args[0], args[1]);
            default -> System.out.println("Teveel argumenten");
        }
    }

    private static void toonHelp() {
        System.out.println("Gebruik: java ProgrammaNaam [opties]");
        System.out.println("Opties:");
        System.out.println("  -h, --help   Toon deze help-informatie");
    }
}
```

