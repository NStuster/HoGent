#Samenvatting  #Java #HoGent #toegepasteinformatica #OOSD #Array
# 1 dimensionale statische array

## Gebruik

Als we een array wensen van een vaste grootte, deze wordt in het begin bepaald.

## Opbouw 1 dimensionale statische array

```java
// declaratie
int[] a;
private boolean[] plaatjes;

// creatie
a = new int[5]; //array met 5 index plaatsten (0-4)
plaatjes = new boolean[100] //array met 100 index plaatsten (0-99)
//Elk element van de array wordt automatisch geïnitialiseerd bij de creatie van de array.

// declaratie en creatie
int[] b = new int[10]; //array met 10 index plaatsten (0-9)
int[] array = { 32, 27, 64, 18, 95, 14, 90, 70, 60, 37 }; //stelt meteen de waarde van de indexen in 0=32,1=27,...
double[] decGetallen = {2.4, 5.689, 8.45, 9.7};

//instellen van een waarde bij een array index
plaatjes[7] = true;
a[0] = 5;
// Het laatste element van a instellen met 20
a[a.length - 1] = 20; //lengthe - 1 omdat we vanaf 0 moeten tellen niet 1

//array.lengt geeft de lengte van mijn array
System.out.printf("lengte van array a is %d%n", a.length);
System.out.printf("lengte van array b is %d%n", b.length);


```


# Tweedimensionale array

```java

import java.util.Arrays;


//declaratie
int[][]a; //voor 2 demensionele array gebruik 2 keer []
		
//creatie van 2 dim.array, 3 rijen, 4 kolommen
a = new int[3][4]; //ieder element wordt geïnitialiseerd op 0
System.out.println( Arrays.deepToString(a)); //deeptostring is een bestaan method om een array uit te schrijven

//declaratie en creatie
double[][] b = new double[2][3];//declaratie en creatie samen
System.out.println( Arrays.deepToString(b));


int c[][] = geefGetallen(); //creatie met een methode
System.out.println( Arrays.deepToString(c) );

		
//initialisatie
int[][] array = { { 1, 2, 3 }, { 4, 5 } };
		// Er zijn 2 rijen.Eerste rij bevat 3 kolommen, tweede rij bevat 2 kolommen
		// array[0][0] bevat de waarde 1,
		// array[0][1] bevat de waarde 2,
		// array[0][2] bevat de waarde 3
		// array[1][0] bevat de waarde 4,
		// array[1][1] bevat de waarde 5,
		// array[1][2] bestaat niet, kan je ook niet aanroepen, is ook niet NULL

		// enhanced for
String resultaat = "";
for (int[] elementenVanEenRij : array) { //gebruik duidelijke namen
	for (int element : elementenVanEenRij)
		resultaat += String.format("%d  ", element);
		resultaat += String.format("%n");
	}
	System.out.println(resultaat);
}

private int[][] geefGetallen() { //met een klasiekke for lus, bij 2 demensionaal, 2 lussen
	int[][] array = new int[2][3];
	                       //array.length = aantal rijen, hier 2
	for (int rij = 0; rij < array.length/* aantal rijen*/; rij++) { //Noem dit ook rij 
		         //array[rij].length = aantal kolommen van een rij
		for (int kolom = 0; kolom < array[rij].length /* aantal kolommen van een bepaalde rij*/; kolom++) { // Noem dit ook kolom
			System.out.printf("Geef getal van rij %d kolom %d :", rij+1, kolom+1);
			array[rij][kolom] = invoer.nextInt();
		}
	}
	return array;
}

private void start() {
	int[][] b; //Jagged array
	b = new int[2][]; // 2 rijen, ja mag ook aantal kolommen leeg laten, dan kunnen we per rij een verschillend aantal kolommen maken
	b[0] = new int[5]; // rij 0 heeft 5 kolommen
	b[1] = new int[3]; // rij 1 heeft 3 kolommen
	String resultaat = "";
	for (int[] elementenVanEenRij : b) {
		for (int element : elementenVanEenRij)
			resultaat += String.format("%d ", element);
			resultaat += String.format("%n");
		}
		System.out.println(resultaat);
	}
}
```

## Omwisselen van klommen en rijen

```java
package cui;

import java.security.SecureRandom;

public class Oefening19 { 
	public static void main(String[] args) {
		new Oefening19().maakEnTransponeerMatrix();
	}
  
	private void maakEnTransponeerMatrix() {
		SecureRandom sr = new SecureRandom();
		int[][] matrix = new int[sr.nextInt(1, 5)][sr.nextInt(1, 5)];
		for (int rij = 0; rij < matrix.length; rij++) {
			for (int kolom = 0; kolom < matrix[rij].length; kolom++) {
				matrix[rij][kolom] = sr.nextInt(101);
			}
		}
		System.out.println("Matrix:");
		toonMatrix(matrix);

		int[][] getransponeerdeMatrix = new int[matrix[0].length][matrix.length];

		//doorloop de array "matrix"

		for (int rij = 0; rij < matrix.length; rij++) {
			for (int kolom = 0; kolom < matrix[rij].length; kolom++) {
				getransponeerdeMatrix[kolom][rij] = matrix[rij][kolom];
			}
		}

		System.out.printf("%nGetransponeerde matrix:%n");
		toonMatrix(getransponeerdeMatrix);
	}

	private void toonMatrix(int[][] matrix) {
		for (int[] rij : matrix) {
			for (int getal : rij) {
				System.out.printf("%5d", getal);
			}
			System.out.println();
		}
	}
}
```

# Arraylist

## Wanneer kiezen voor arraylist

- Als we een array willen die niet als een vaste grootte wordt gedefinieerd
- Meestal zullen we arraylist gebruiken

## Aanmaken van een arraylist


```java
List<String> colorList = new ArrayList<>(); //zo hoog mogelijk defieneren  "List" en niet "Array List"

//NOOIT
//ArreyList<String> colorList = new ArrayList<>(); 
```

## ADD, REMOVE, SET, GET

### Add
Om een **element toe te voegen aan de een ArrayList** maken we gebruik van de add methode
```java
        colorList.add("red"); //achteraan toevoegen //index 0
        colorList.add("yellow");   //achteraan toevoegen //index 1
        colorList.add(1, "green"); //"green" toevoegen op index 1 //schuift oorspronkelijke index 1 "yellow" naar achter 

//We kunnen ook gebruik maken van een overload van de add methode waarbij we de index voor het nieuwe element specificeren. 
//Het element die op de index voor het nieuwe element zit, samen met alle elementen die daarop volgen, schuiven dan een plaatsje op naar rechts…
	benodigdheden.add(1, "tang");
```
### Remove
**Laat toe om een element uit een lijst te verwijderen**. 
Op deze manier *zal een ArrayList dus krimpen*. Bij de remove methode hebben we de mogelijkheid om de *index op te geven* van het element die we wensen te verwijderen. 
Zoals je in de Java API kan terugvinden *retourneert deze vorm van de remove methode het element dat werd verwijderd uit de lijst*.

```java
colorList.remove("black"); //verwijder kleur black ! DE EERSTE DAT HIJ VINDT !

kleur = colorList.remove(1);  //kleur op index 1 verwijderen en in variabele kleur steken

String verwijderd = benodigdheden.remove(2); 
System.out.printf("De lijst van benodighdheden bevat niet langer %s...", verwijderd)
```
### Set
Om een **element in de lijst te vervangen** kunnen we de set methode gebruiken. 
We moeten de *index van het element die we wensen te vervangen doorgeven*, *samen met de nieuwe waarde voor het element*.
```java
colorList.set(1, "black"); //wijzig de kleur op index 1 naar black
```
### Get
Om een **element op te halen uit een ArrayList** moet je *de index* van het gewenste element doorgeven aan de get methode.
```java
String kleur = colorList.get(2); //geef de kleur op index 2 terug

String benodigdheid = benodigdheden.get(2); 
System.out.println("We hebben een " + benodigdheid + " nodig."); 
// Uitvoer: // We hebben een plank nodig.
```
## size
De size methode **retourneert het aantal elementen in de **ArrayList**. Voor een lege lijst zal deze methode dus 0 retourneren.
```java
System.out.printf("We hebben %d zaken nodig...", benodigdheden.size()); 
// Uitvoer: // We hebben 4 zaken nodig...
```

## isEmpty
Om te **testen of een lijst leeg is** maken we gebruik van de isEmpty methode.
```java
if (benodigdheden.isEmpty()) 
	System.out.println("We hebben niets nodig..."); 
else
```


## Weergeven of uitlezen

```java
//We gebruiken NOOIT een klassieke for-lus bij een dynamische lijst!
		//Om elementen van de lijst in een lus op te vullen of te wijzigen
		//zal je leren in OOSDII.
        System.out.println(titel);
		for (String element : lijst)
			System.out.printf("%s ", element);
		System.out.println("\n");
```
## Controleren of arraylist leeg is

```java
naamArrayList.isEmpty()
```




```java
package cui;

import java.util.ArrayList;
import java.util.List;

public class VoorbeeldArrayList {

	public static void main(String[] args) {
		new VoorbeeldArrayList().start();
	}

	private void start() {
		//ArreyList: concrete klass: is een generieke klasse
		//List: interface (supertype): is generiek
		
		
		//List<String> colorList = new ArrayList<String>(); -> <> herinenrt over String
		List<String> colorList = new ArrayList<>(); //zo hoog mogelijk defieneren  "List" en niet "Array List"

		//Warning: geel: List<String> colorList2 = new ArreyList();==>
		                                         //new ArreyList<Object>()
		//List<String> colorList = new ArrayList<>();
		
		//generiek: wij kiezen welk type we willen bijhouden in de lijst, vb.String
		//Ze kunnen enkel objecten bijhouden
		//BESTAAT NIET: List<int> getallenLijst = new ArreyList<>();
		List<Integer> getallenLijst = new ArrayList<>();
		List<Double> decgetallenLijst = new ArrayList<>();
		//Boolean      Character
		
		if (colorList.isEmpty())
			System.out.println("De lijst is leeg");

//ADD, REMOVE, SET, GET
//---------------------
        colorList.add("red"); //achteraan toevoegen //index 0
        colorList.add("yellow");   //achteraan toevoegen //index 1
        colorList.add(1, "green"); //"green" toevoegen op index 1 //schuift oorspronkelijke index 1 "yellow" naar achter 

        toonLijst("red, yellow en 'green op index 1' toegevoegd: ", colorList);

        if (!colorList.isEmpty())
			System.out.println("De lijst is niet leeg");

        
        String oudeKleur = colorList.set(1, "black"); //wijzig de kleur op index 1 naar black //set: wijzigen
        System.out.printf("Het oorspronkelijke kleur was %s.%n", oudeKleur);

        String kleur = colorList.get(2); //geef de kleur op index 2 terug //get: opvragen
        System.out.printf("Kleur op index 2 is %s.%n%n", kleur);

        colorList.add("black");

        toonLijst("gewijzigd op index 1: zwart en zwart achteraan toegevoegd: ", colorList);
        


        
        colorList.remove("black"); //verwijder kleur black ! DE EERSTE DAT HIJ VINDT !

        toonLijst("remove(\"black\") uitgevoerd: ", colorList);
        


        
        kleur = colorList.remove(1);  //kleur op index 1 verwijderen
        System.out.printf("De kleur die verwijderd werd op index 1 was %s.%n", kleur);

        toonLijst("remove(1) uitgevoerd: ", colorList);
        

//CONTAINS, SIZE EN INDEXOF
//-------------------------

        
        if (colorList.contains("black")) //komt balck nog voor in onze lijst ja/nee?
        {
            System.out.println("Kleur black komt voor");
        }

        System.out.printf("aantal getallen in de lijst: %d%n", colorList.size());

        int index = colorList.indexOf("black");
        if (index != -1) //geeft -1 terug indien het element niet voorkomt in de lijst
        {
            System.out.printf("kleur black komt voor op index %d%n", index);
        }
        
        
        //Je kan meerdere items toevoegen bij het aanmaken 
        List<String> colorlist2 = new ArrayList<>(List.of("zwart","rood"));
        
        //BELANGRIJK: Arraylist enkel doorlopen met een enhanced for
	    
	}

	private void toonLijst(String titel, List<String> lijst) {
		//We gebruiken NOOIT een klassieke for-lus bij een dynamische lijst!
		//Om elementen van de lijst in een lus op te vullen of te wijzigen
		//zal je leren in OOSDII.
        System.out.println(titel);
		for (String element : lijst)
			System.out.printf("%s ", element);
		System.out.println("\n");
	}

}
```
# Enhanced for (gebruik bij array)

- Enhanced for ***kan enkel de array doorlopen*** (niet wijzigen)
- **Enhanced for kan *geen* elementen van een *array opvullen***

```java
//vb elementen van array doorlopen, som bepalen

int som = 0;
for(int getal: array ){
//type naamNaarKeuze : naamVanDeArray
	som += getal;
}
System.out.println(som);


String zin = "";
for (double element: decGetallen)
	zin += String.format("%.2f ", element); //strings concateneren //String.format werkt zoals een printf
System.out.println(zin);


int index = 0; //want een enhanced for heeft geen index, dus maken we die aan
for(int getal: array) {
	System.out.printf("%d%8d%n",index++, getal);
}

```
