De klasse SecureRandom uit de java.security package voorziet methodes om *willekeurigegetallen, of booleans te genereren*. Hieronder zie je de declaratie van de methode nextInt die eenwillekeurig geheel getal retourneert.

Merk op dat deze, en ook de andere methodes zoals *nextDouble, nextFloat, nextLong,nextBoolean, ..., geen static methodes* zijn. *Je moet dus een instantie van deze klasse maken omgebruik te kunnen maken van deze methodes*. De straal van elke cirkel is nu telkens een willekeuriggeheel getal.

- `SecureRandom` is een cryptografisch sterke random number generator
- Veel veiliger dan de standaard `java.util.Random`
- Gebruikt extra bronnen van entropie om willekeurigheid te verbeteren
- Vooral geschikt voor beveiligingsgevoelige toepassingen zoals:
    - Cryptografische sleutels genereren
    - Wachtwoorden maken
    - Veilige tokens aanmaken

Het verschil met normale Random is dat `SecureRandom` moeilijker te voorspellen is en meer willekeurigheid garandeert, wat belangrijk is voor beveiliging.
# Lokale secureRandom:

```java
import java.security.SecureRandom;

public class RandomExample {
    public static void main(String[] args) {
        // Creëer een SecureRandom instantie
        SecureRandom random = new SecureRandom();
        
        // Genereer een random integer
        int randomGetal = random.nextInt(100); // Genereert getal tussen 0 en 99
        System.out.println("Random getal: " + randomGetal);
    }
}
```

```java
import java.security.SecureRandom;

public class BytesExample {
    public static void main(String[] args) {
        SecureRandom random = new SecureRandom();
        
        // Maak een byte array
        byte[] bytes = new byte[16];
        
        // Vul de array met random bytes
        random.nextBytes(bytes);
        
        // Print de random bytes
        System.out.print("Random bytes: ");
        for (byte b : bytes) {
            System.out.print(b + " ");
        }
    }
}
```

```java
import java.security.SecureRandom;

public class BooleanExample {
    public static void main(String[] args) {
        SecureRandom random = new SecureRandom();
        
        // Genereer random boolean
        boolean randomBoolean = random.nextBoolean();
        System.out.println("Random boolean: " + randomBoolean);
    }
}
```

```java
import java.security.SecureRandom;

public class DoubleExample {
    public static void main(String[] args) {
        SecureRandom random = new SecureRandom();
        
        // Genereer random double tussen 0.0 en 1.0
        double randomDouble = random.nextDouble();
        System.out.println("Random double: " + randomDouble);
    }
}
```
# Globale secureRandom

Hier is een meer uitgebreide `SecureRandom` utility klasse die je in verschillende delen van je programma kunt gebruiken:

Voordelen:
- Centrale plek voor random-gerelateerde methoden
- Gebruikt `SecureRandom` voor betere willekeurigheid
- Flexibel en herbruikbaar in verschillende delen van je programma
- Statische methoden, dus geen instantie nodig om te gebruiken

```java
import java.security.SecureRandom;
import java.util.Random;

public class RandomUtil {
    // Statische instantie van SecureRandom, zodat we hem niet steeds opnieuw hoeven te maken
    private static final SecureRandom secureRandom = new SecureRandom();

    // Methode om een random integer te genereren binnen een bereik
    public static int getRandomInt(int min, int max) {
        return min + secureRandom.nextInt(max - min + 1);
    }

    // Methode om een random boolean te genereren
    public static boolean getRandomBoolean() {
        return secureRandom.nextBoolean();
    }

    // Methode om een willekeurige string te genereren
    public static String getRandomString(int length) {
        String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            int index = secureRandom.nextInt(chars.length());
            sb.append(chars.charAt(index));
        }
        return sb.toString();
    }

    // Methode om een willekeurig element uit een array te selecteren
    public static <T> T getRandomElement(T[] array) {
        if (array == null || array.length == 0) {
            throw new IllegalArgumentException("Array mag niet leeg of null zijn");
        }
        return array[secureRandom.nextInt(array.length)];
    }

    // Methode om een array te shufflen
    public static <T> void shuffleArray(T[] array) {
        for (int i = array.length - 1; i > 0; i--) {
            int index = secureRandom.nextInt(i + 1);
            // Wissel elementen
            T temp = array[index];
            array[index] = array[i];
            array[i] = temp;
        }
    }
}
```

Voorbeeldgebruik in verschillende delen van je programma:

```java
	public class RandomDemo {
    public static void main(String[] args) {
        // Random integer tussen 1 en 100
        int randomGetal = RandomUtil.getRandomInt(1, 100);
        System.out.println("Random getal: " + randomGetal);

        // Random boolean
        boolean isGelukt = RandomUtil.getRandomBoolean();
        System.out.println("Random boolean: " + isGelukt);

        // Random string van 10 karakters
        String randomString = RandomUtil.getRandomString(10);
        System.out.println("Random string: " + randomString);

        // Random element uit een array
        String[] dieren = {"Hond", "Kat", "Olifant", "Tijger"};
        String randomDier = RandomUtil.getRandomElement(dieren);
        System.out.println("Random dier: " + randomDier);

        // Array shufflen
        Integer[] getallen = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        RandomUtil.shuffleArray(getallen);
        System.out.println("Geschudde array: " + Arrays.toString(getallen));
    }
}
```

