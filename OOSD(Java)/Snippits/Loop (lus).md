
# FOR loop

## Basis
```java

for(int i=1; i <= 5 ; i++ ) { //eerst i initialiseren ; voorwaarde om de lus nog eens uit te voeren ; hoeveel gaat er bij i bij
	System.out.printf("geef getal %d: ",i);// i leeft enkel in de for blok en kan je er niet buiten gebruiken
	getal = scanner.nextInt();
	som += getal; //som = som + getal
}

System.out.printf("De som van de 5 getallen is: %d%n", som);
//variabele getal kan niet afgedrukt of uitgelezen worden, wanneer een lege variabele enkel waarde krijgt in de lus, ook niet na de lus (oplossing deze variabele bij initialisatie een waarde geven)

//i = 10; //geeft compileerfout, i wordt uit het geheugen geschrapt na de For loop

```

## Voorbeelden

```java
for(int i=10; i <= 95 ; i += 5 ) { // i =+ 5 == (i = i + 5) // De naam van i mag je zelf kiezen
	System.out.printf("%d ",i);
}
System.out.print("\n");
```

```java
for(int n=50; n >= 1 ; n-- ) { //ook correct: for(int n=50; n > 0 ; n-- )
	System.out.printf("%d ",n);
}
System.out.print("\n");
```

```java
//opgave: geef alfabet weer van a tem z
for(char letter='a'; letter <= 'z' ; letter++) {
	System.out.printf("%c ",letter); // %c staat voor variabel type char
}
System.out.print("\n");
```

### extra

Onderstaande mag maar zullen we nooit gebruiken omdat het niet overzichtelijk, x is wel opvraagbaar buiten de lus

```java
int y, x = 1, total = 0;

for( ;x <= 10; x = x++){
	y = x * x;
	System.out.printf("%d%n", y);
	total = total + y;
}
System.out.printf("Total is %d%n", total);
```

# WHILE lus

EEN WHILE LUS GEBRUIKEN ALS WE WETEN ALS DE LUS VOOR UITVOER AL MOET KUNNEN GEANNULEERD WORDEN

### voorbeeld1
```java
private void voorbeeld() { //oplossing zonder herhaling dankzij een methode aan te maken
		//initialisatie en declaratie variabelen
		int som = 0;
		int getal;
		
		//INVOER //we beginnen met invoer omdat de user moet kunnen annuleren
		getal = geefGetal(); //variabele = methode(); //Onze invoer gaat steeds met methode doen
		
		//while (voorwaarde) //getallen ingeven, stoppen door 0
		// verschillend van de stopwaarde (getal != 0)
		while (getal != 0) { //0,1 of meedere keren
			//VERWERKING
			som += getal;
			//INVOER
			getal = geefGetal(); //variabele = methode();
		}
		
		//UITVOER
		System.out.printf("de som is %d%n", som);
	}
	
	//aanmaak eigen methode om herhaling te voorkomen
	//private=eigen methode //int ipv void omdat de methode een integer moet terug geven
	private int geefGetal() { //de haakjes dienen als we iets moeten meegeven met de methode
		Scanner scanner = new Scanner(System.in);//scanner hier omdat we de scanner enkel in geefGetal Methode gebruiken
		System.out.print("Geef een getal (stoppen = 0): ");
		return scanner.nextInt(); //return is om een waarde terug te geven uit mijn methode na het uitvoeren van de methode
	}

```

### voorbeeld2
```java
package cui;
import java.util.Scanner;

public class Oefening10_1 {

	public static void main(String[] args) {
		new Oefening10_1().oef10();
	}

	private void oef10() {
		//DECLARATIE + INITIALISATIE
		int aantalNeg = 0, somNeg = 0, getal;//somNeg niet als double, om geheugen te besparen, som is een int voldoende
		double gemNeg;
	
		//INVOER
		getal = geefGetal();//geefGetal is method die we zelf hebben aangemaakt om herhaling te voorkomen
	
			while (getal != 0) {
				//VERWERKING
				if(getal < 0) {
					somNeg += getal;
					aantalNeg++;
				}
			//INVOER
			getal = geefGetal();
			}
	
		if(aantalNeg == 0) {
			System.out.println("Geen negatieve getallen ingegeven");
		} else {
			//int / int == int
			//double / int == double
			gemNeg = (double)somNeg / aantalNeg; //we gaan somNeg dwingen als een double TYPE CASTEN om de deling met een komma te zien
			System.out.printf("Het gemiddelde van alle negatieve getallen is %.1f%n", gemNeg);
		}
	}
	
	private int geefGetal() {
		Scanner scanner = new Scanner(System.in);
		System.out.print("Geef een getal (stoppen = 0): ");
		return scanner.nextInt();
	}
}
```

# Do While

```java
private int geefGetal(int teller) {//teller is onze i die we meegegeven hebben bij het oproepen van de methode
	Scanner scanner = new Scanner(System.in);
	int getal;
	do {
		System.out.printf("Geef een getal %d tussen 1 en 10, grenzen inbegrepen: ",teller);
		getal = scanner.nextInt();
		//nodige voorwaarde: getal >= 1 && getal <= 10
		//}while(!(getal >= 1 && getal <= 10)); is wel juist maar niet leesbaar genoeg
	}while(getal < 1 || getal > 10); //we draaien alles om om geen niet voorwaarde te hebben (is makkelijker om te redeneren)
	return getal;
}





```