#Samenvatting #Java #HoGent #toegepasteinformatica #OOSD #Invoer

# Scanner (vragen van toetsenbord invoer)
## Importeer klasse Scanner:
Staat buiten de methode in het begin van het klasse (java) bestand na packagenaam

```java

import java.util.Scanner;

```


## Maak er steeds een attribuut van

```java
package cui;
import java.util.Scanner;
public class Oefening25Oplossing {
	public static void main(String[] args) {
		new Oefening25Oplossing().bepaalQuotientEnRest();
	}

	private Scanner invoer = new Scanner(System.in);

	private void bepaalQuotientEnRest(){
	//hier komt code
	}

```
## Creatie van een object "scanner" van de klasse Scanner

Aanmaken van een inputscanner (aanmaken van een object met de naam "scanner") = aanmaak object "new Scanner(System.in) (system.in is het inlezen van toetsenbord)

```java

Scanner invoer = new Scanner(System.in);

```

System.in is lezen vuinuit het invoersysteem (alias toetsenbord)
## Inlezen van het toestenbord

```java

getal1 = invoer.nextInt(); //nextInt() method in Java is used to read the next token of the input as an integer. When using a Scanner

decGetal = invoer.nextDouble();//nextInt() method in Java is used to read the next token of the input as an double. When using a Scanner

woord = invoer.next(); //next() is voor een woord input (deze zal alles vanaf een spatie niet mee registreren)

zin = invoer.nextLine(); //nextLine() is voor een zin input tot de return


```

*AANDACHT BIJ scanner.next *

```java

woord = invoer.next(); 
//deze zal volgende nextLine() of next() overslaan, vaak interesanter om nextLine() te gebruiken in plaats van next()
invoer.nextLine();//Dit typen we omdat we hierboven next() gebruiken maar deze nextline() zan niet worden uitgevoerd


```

## Voorbeeld:

```java
//Initialisatie variabelen:
Scanner invoer = new Scanner(System.in);
int getal1, getal2;

//Invoer
System.out.print("geef eerste getal: ");
getal1 = invoer.nextInt(); 
System.out.print("geef tweede getal: ");
getal2 = invoer.nextInt();

```
