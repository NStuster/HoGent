#Samenvatting #Java #HoGent #toegepasteinformatica #OOSD #Methodes
# isBlank

**controle of een attribuut leeg is, geeft een** *booleaans* **resultaat**
```java
attrubuut.isBlank()
```

# contains
**Testen of een element aanwezig is in de lijst **

Met de *boolse* methode *contains* kan je testen of een bepaald element al dan niet aanwezig is in een lijst

```java
if (benodigdheden.contains("tank")) 
	System.out.println("We hebben een tank!"); 
if (!benodigdheden.contains("nagel")) 
	System.out.println("We hebben geen nagel!.");

```

# format (concatenatie)

strings concateneren, String.format werkt zoals een printf
```java
String zin += String.format("%d %s", 1, "text");

String toekomst = String.format("Resultaat is %d en tweede resultaat is %d%n", getal1 , getal2);
```


# SecureRandom
[SecureRandom (Java SE 21 & JDK 21)](https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/security/SecureRandom.html)
```java
import java.security.SecureRandom;

SecureRandom sr = new SecureRandom();
randomGetal = sr.nextInt(101);

int randomInt = secureRandom.nextInt(); 
long randomLong = secureRandom.nextLong(); 
float randomFloat = secureRandom.nextFloat(); 
double randomDouble = secureRandom.nextDouble(); 
boolean randomBoolean = secureRandom.nextBoolean();



```

# indexOf lastIndexOf

**Via de indexOf methode kan je de index van een element ophalen.** De methode *doorzoekt de lijst van voren naar achteren*.
Er is een *analoge methode lastIndexOf* die de lijst doorzoekt *van achteren naar voren*.

```java
System.out.printf("%d%n", benodigdheden.indexOf('tank')); System.out.printf("%d%n", benodigdheden.indexOf('nagel'));
```