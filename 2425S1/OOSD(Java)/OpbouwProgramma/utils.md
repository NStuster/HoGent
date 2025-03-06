De **utils**-laag in je applicatiestructuur bevat **ondersteunende klassen en methoden** die door meerdere onderdelen van je applicatie kunnen worden gebruikt. Het doel van deze laag is om herbruikbare code te organiseren, zodat je duplicatie voorkomt en de applicatie overzichtelijk blijft.

---

# Wat doet de utils-laag?

De utils-laag bevat helperklassen en methoden die geen directe relatie hebben met de domeinlogica of een specifieke laag, maar wel vaak nodig zijn. Dit kunnen bijvoorbeeld zijn:

- Wiskundige berekeningen.
- String-bewerkingen.
- Formatteerhulpmiddelen.
- Algemene functionaliteit zoals datumconversies.

---

# Kenmerken van utils-klassen

1. **Algemeen toepasbaar:**  
    De code in utils-klassen moet niet specifiek zijn voor één onderdeel van je applicatie, maar breed inzetbaar.
    
2. **Statische methoden:**  
    Utils-methoden worden vaak statisch gemaakt, zodat je ze direct kunt gebruiken zonder een object van de klasse te maken.
    
3. **Geen afhankelijkheden:**  
    Utils-klassen mogen niet afhankelijk zijn van andere klassen in je applicatie (zoals domeinklassen), zodat ze overal gebruikt kunnen worden zonder extra complexiteit.
    

---

# Structuur van de utils-laag

Utils-klassen worden vaak gegroepeerd op functionaliteit. Bijvoorbeeld:

- **StringUtils**: Hulpmethoden voor stringbewerkingen.
- **DateUtils**: Methoden voor datumbewerkingen.
- **MathUtils**: Specifieke wiskundige functies.

_Voorbeeld mappenstructuur:_
```java
src/
├── utils/
│   ├── StringUtils.java
│   ├── DateUtils.java
│   └── MathUtils.java
```

---

# Voorbeelden van utils-klassen

## 1. StringUtils

Een klasse voor stringbewerkingen.

```java
package utils;

public class StringUtils {

    // Controleer of een string leeg of null is
    public static boolean isNullOrEmpty(String str) {
        return str == null || str.isEmpty();
    }

    // Maak de eerste letter van een string hoofdletter
    public static String capitalize(String str) {
        if (isNullOrEmpty(str)) {
            return str;
        }
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }
}
```

Gebruik:

```java
String naam = "nikki";
System.out.println(StringUtils.capitalize(naam)); // Output: Nikki
```

---

## 2. DateUtils

Een klasse voor datum- en tijdsmanipulaties.

```java
package utils;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class DateUtils {

    // Converteer een string naar een LocalDate
    public static LocalDate parseDate(String dateStr, String pattern) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
        return LocalDate.parse(dateStr, formatter);
    }

    // Formatteer een LocalDate naar een string
    public static String formatDate(LocalDate date, String pattern) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
        return date.format(formatter);
    }
}
```

Gebruik:

```java
LocalDate date = DateUtils.parseDate("2024-11-27", "yyyy-MM-dd");
System.out.println(DateUtils.formatDate(date, "dd/MM/yyyy")); 
// Output: 27/11/2024
```

---

## 3. MathUtils

Een klasse voor wiskundige bewerkingen.

```java
package utils;

public class MathUtils {

    // Bereken de macht van een getal
    public static double pow(double base, int exponent) {
        return Math.pow(base, exponent);
    }

    // Controleer of een getal even is
    public static boolean isEven(int number) {
        return number % 2 == 0;
    }
}
```

Gebruik:

```java
System.out.println(MathUtils.pow(2, 3)); // Output: 8.0
System.out.println(MathUtils.isEven(4)); // Output: true
```

---

# Waarom een utils-laag gebruiken?

1. **Code hergebruik:**  
    Veelvoorkomende taken hoeven maar één keer geïmplementeerd te worden en kunnen overal in je applicatie gebruikt worden.
    
2. **Minder duplicatie:**  
    Door algemene functionaliteit in utils-klassen te plaatsen, voorkom je dat dezelfde code in meerdere klassen wordt herhaald.
    
3. **Betere organisatie:**  
    Utils-methoden zijn gescheiden van je domeinlogica, wat je code overzichtelijker maakt.
    
4. **Testbaarheid:**  
    Omdat utils-klassen meestal geen afhankelijkheden hebben, zijn ze eenvoudig te testen met unit tests.
    

---

# Best practices voor utils-klassen

1. **Beperk tot algemene functionaliteit:**  
    Voeg alleen methoden toe die echt algemeen zijn en niets te maken hebben met specifieke domeinproblemen.
    
2. **Gebruik statische methoden:**  
    Utils-klassen zijn meestal puur functioneel, dus methoden worden statisch gemaakt om eenvoudig te kunnen gebruiken.
    
3. **Documenteer goed:**  
    Utils-methoden worden vaak in de hele applicatie gebruikt, dus duidelijke namen en documentatie zijn belangrijk.
    
4. **Overweeg externe bibliotheken:**  
    Als een functionaliteit al bestaat in een bibliotheek (bijvoorbeeld Apache Commons of Google Guava), gebruik dan die in plaats van zelf utils-methoden te schrijven.
    

---

# Veelvoorkomende fouten in utils-klassen

1. **Te veel verantwoordelijkheid:**  
    Utils-klassen mogen geen complexe taken uitvoeren die eigenlijk bij de domeinlaag horen.
    
2. **Afhankelijkheden introduceren:**  
    Vermijd dat utils-klassen afhankelijk worden van specifieke lagen in je applicatie, zoals de domeinlaag of database.
    
3. **Overmatig gebruik:**  
    Niet alles hoeft een utils-methode te zijn. Als iets specifiek is voor een bepaalde klasse of laag, plaats het dan daar.
    

---

# Samenvatting

De **utils**-laag is een verzameling van helperklassen die:

- Algemene, herbruikbare functionaliteit bieden.
- Niet direct gerelateerd zijn aan de businesslogica.
- Je applicatie overzichtelijker en onderhoudsvriendelijker maken.