
# Omschijving

Een **selectiestructuur** in Java is een controlemechanisme waarbij de uitvoer van een programma wordt gestuurd door bepaalde voorwaarden. Dit betekent dat bepaalde delen van de code alleen worden uitgevoerd als aan bepaalde voorwaarden wordt voldaan.

- **`if`** controleert één voorwaarde.
- **`if-else`** biedt een alternatief pad als de voorwaarde onwaar is.
- **`else-if`** voegt meerdere voorwaarden toe.
- **`switch`** vergelijkt een variabele met meerdere waarden voor eenvoudigere gevallen.

# if

De eenvoudigste selectiestructuur. Het voert een blok code uit als een bepaalde voorwaarde waar is.

```java
//tussen () staat de voorwaarde
//Bij 1 instructie moet er geen {} zijn
if(cijfer >= 10) // NIET "=>" bestaat niet let op volgorde //geen ";" want instructie is nog niet ten einde
System.out.println("Geslaagd");

//if met meerdere instructies doen we met {} gebruik deze altijd ook bij 1 instructie mag dit

if(cijfer > 15) {
System.out.println("Geslaagd");
System.out.println("Mooi cijfer");
}

```

## vergelijkingsoperatoren

Deze operatoren worden gebruikt om twee waarden met elkaar te vergelijken, en ze geven een **boolean** waarde terug: `true` als de vergelijking waar is, en `false` als de vergelijking onwaar is.


| Vergelijkingsoperator | Betekenis                 |
| --------------------- | ------------------------- |
| >                     | groter dan                |
| <                     | kleiner dan               |
| >=                    | groter dan of gelijk aan  |
| <=                    | kleiner dan of gelijk aan |
| ==                    | gelijk aan                |
| !=                    | niet gelijk aan           |

# else

Dit is een uitbreiding van de `if`-structuur waarbij er een alternatief pad is voor het geval dat de voorwaarde niet waar is.

```java

if(cijfer == 0) {
System.out.println("cijfer is 0");
} else {
System.out.println("cijfer is hoger dan 0");
System.out.println("---------------------");
}

if(cijfer != 0)
	if(cijfer < 5)
	System.out.println("cijfer [1, 4]");
	else //deze else slaat op de laatste if (cijfer > 5) (else slaat steeds op de laatste if)
System.out.println("cijfer [5, 20]");

if(cijfer != 0)
	if(cijfer < 5) {
	System.out.println("cijfer [1, 4]");
	} // afsluiten van if
else //deze else slaat op de eerste if (cijfer != 0) (omdat vorige if afgesloten is)
System.out.println("cijfer [5, 20]");

//if else korter uitschrijven
//als actie uit selctiestructuur hetzelfde is is dit te lang
if(cijfer == 0)
	System.out.println("cijfer");
else
	System.out.println("cijfers");
//dit is een kortere en betere syntax
				// voorwaarde? waar : nietwaar
System.out.println(cijfer == 0? "cijfer":"cijfers");
//variabele == waarde? "uitkomstJa" : "uitkomstNee"

//nog korter (we verkiezen de kortste oplossing, dus dit is nog beter)
System.out.printf("cijfer%s%n", cijfer == 0? "":"s");

//onderstaande kan korter want we zien herhaling
int getal = 2;
if (cijfer > 10)
	getal = getal + cijfer;
else
	getal = getal * 2;
//onderstaande is een betere syntax dan bovenstaande
getal = cijfer > 10? getal + cijfer : getal * 2;

```

# else-if

Dit is een uitbreiding van de `if`-structuur waarbij er een alternatief pad is voor het geval dat de voorwaarde niet waar is.

```java

if (cijfer == 5)
	System.out.println("5");
else if (cijfer == 8)
	System.out.println("8");
else if (cijfer == 12)
	System.out.println("12");
else
	System.out.println("NIET 5, 8, 12");

```

Let op dat je dit niet gebruikt terwijl er een switch case mogelijk is.

# switch

Een `switch`-structuur wordt gebruikt om één variabele te vergelijken met meerdere mogelijke waarden. Dit is een alternatief voor lange reeksen van `if-else`-structuren.
gebruik oude switchcase met break niet!!

```java

//onderstaande is niet effiecient
if (cijfer == 5)
	System.out.println("5");
else if (cijfer == 8)
	System.out.println("8");
else if (cijfer == 12)
	System.out.println("12");
else
	System.out.println("NIET 5, 8, 12");
//Hier boven kunnen we beter een switch case gebruiken

//switch case (gebruik oude switchcase met break niet!! dit geef buis tot gevolg)

// -> noemt lambda

switch(cijfer){ //cijfer is variabele en {} moet gebruikt worden
	case 5 -> System.out.println("5");
	case 8 -> {System.out.println("8");} //haakjes mag
	case 12 -> System.out.println("12");
	//default geeft andere opties die niet beschreven zijn in de switch case
	//default mag
	default -> System.out.println("NIET 5, 8, 12"); //default mag maar moet niet
}

//Ook dit kan korter
if (cijfer < 5)
	System.out.println("[0,4]");
else if (cijfer < 8)
	System.out.println("[5,7]");
else
	System.out.println(">= 8");
//we kunnen meerdere waardes toevoegen aan de case van de switch case

switch(cijfer) {
	case 0, 1, 2, 3, 4 -> System.out.println("[0,4]");
	case 5, 6 , 7 -> System.out.println("[5,7]");
	default -> System.out.println(">= 8");
}

//om deze in te korten met definieren van een waarde (want herhaling van else if willen we niet)
int waarde = 0;
if (cijfer == 5)
	waarde = cijfer * 3;
else if (cijfer == 8)
	waarde = cijfer / 2;
else if (cijfer == 12)
	waarde = cijfer + 9;
else
	waarde = 10;
//hiervoor gebruiken we een switch expressie (return switch)
waarde = switch(cijfer)
{
	case 5 -> cijfer * 3;
	case 8 -> cijfer + 2;
	case 12 -> cijfer + 9;
	default -> 10;// bij de switch expressie moet hier omdat we een waarde moeten terug geven aan de variabele
}; //bij deze switch case moet een ; omdat deze deel is van een instructie

```