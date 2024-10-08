#Samenvatting #Java #HoGent #toegepasteinformatica #OOSD 

![[Pasted image 20240930072239.png]]

```java
/* VoorbeeldKlasse.java
Voorbeeld programma in Java. */

package cui;

//Import van klassen zoals bv Scanner

public class VoorbeeldKlasse { //start klasse (gevolgd door naam van klasse (zelfde naam als (klasse) java bestand))

	public static void main(String[] args) { //start methode (naam methode start steeds met kleine letter)
	//In main zal het programma eerst kijken en de hier plaatsen we onze (private) methode in die eerst moet uitgevoerd worden
	new VoorbeeldKlasse().voorbeeldMethode(); //aanroepen van de private methode door new HoofdKlasse().privateMethodeNaam
		
		private void voorbeeldMethode() { //methodes beginnen steeds met een kleine letter

		//Hier schrijven we onze code

		//INITIALISATIE EN DEFIENEREN VAN VARIABELEN

		//INVOER (de invoer die van de gebruker wordt gevraagd)
		invoer = voorbeeldMethode(); //variabele = methode(); //Onze invoer gaan we steeds met methode doen

		//VERWERKING (de verwerking van de invoer)

		//UITVOER (de uitvoer van de verwerking)

		}

	}//einde main methode

	//aanmaak eigen (invoer) methode om herhaling te voorkomen
	//private=eigen methode //int ipv void omdat de methode een integer moet terug geven
	private int voorbeeldMethode() { //de haakjes dienen als we iets moeten meegeven met de methode
		Scanner scanner = new Scanner(System.in);//scanner hier omdat we de scanner enkel in geefGetal Methode gebruiken
		System.out.print("Geef een getal (stoppen = 0): ");
		return scanner.nextInt(); //return is om een waarde terug te geven uit mijn methode na het uitvoeren van de methode
	}
	
}// einde klasse



```