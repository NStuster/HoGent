---
tags:
  - Samenvatting
  - Java
  - HoGent
  - toegepasteinformatica
  - OOSD
  - Opbouw
  - Klassen
---
# Klassen voor objecten
### Bevat:
- **Constanten** zorgen voor vaste waarden die door de hele klasse heen consistent blijven.
- **Attributen** beschrijven de eigenschappen van een object en zijn vaak privé voor gegevensbescherming.
- **Constructors** initialiseren objecten en kunnen worden gechained om duplicatie te verminderen.
- **Setters** zorgen ervoor dat gegevens correct worden ingesteld en kunnen validatie bevatten.
- **Getters** bieden toegang tot de attributen van een object.
- **Gedrag** in een klasse komt tot uiting in methoden die acties uitvoeren, zoals `maakOpen()`
### Waar plaatsen?
- Domein package
# Attributen
**Wat zijn attributen?** Attributen (ook wel velden of instance variables genoemd) zijn de eigenschappen van een object. In dit geval zijn het de eigenschappen van de `Pennenzak`-klasse: `lengte`, `kleur` en `open`.

Attributen zijn hier als `private` gedefinieerd, wat betekent dat ze alleen toegankelijk zijn binnen de klasse zelf. Dit principe heet **encapsulatie** en is een kernconcept van objectgeoriënteerd programmeren.

**Waarom `private`?**

- **Gegevensverhulling**: Door attributen privé te maken, kunnen andere klassen de interne status van een object niet zomaar wijzigen, waardoor je de controle hebt over hoe de data wordt gelezen of aangepast. Wijzigingen worden alleen toegelaten via methoden zoals `setters` en `getters`.
- **Validatie**: Je kunt voorwaarden toevoegen aan setters, zoals in `setKleur()` en `setLengte()`, om ervoor te zorgen dat alleen geldige waarden worden ingevoerd.
# Constructors
**Wat is een constructor?** Een constructor is een speciale methode die wordt aangeroepen wanneer een object van een klasse wordt gemaakt. De constructor initialiseert de objectattributen.

**In de `Pennenzak`-klasse zijn er drie constructors:**

### **Volledige constructor**: Deze constructor neemt zowel kleur als lengte als argumenten.
```java
public Pennenzak(String kleur, int lengte) {     
	setKleur(kleur);     
	setLengte(lengte); 
}
```    

### **Constructor met één parameter**: Deze neemt alleen de lengte en stelt de kleur in op de standaardkleur blauw.
```java
public Pennenzak(int lengte) {     
	this("blauw", lengte); 
}
```
 Hier zien we het concept van **constructor chaining**, waarbij de ene constructor de andere (met de meeste argumenten) aanroept om herhaling van code te voorkomen.
    
### **Default constructor**: Als er geen waarden worden opgegeven, worden de standaardkleur en standaardlengte gebruikt.
```java
public Pennenzak() {     
	this(DEFAULT_KLEUR, DEFAULT_LENGTE); 
}
```

**Waarom constructor chaining gebruiken?**
- Het vermindert duplicatie en maakt de code onderhoudbaarder. Als de logica in de constructor verandert, hoef je het maar op één plek te wijzigen.
# Setters
**Wat zijn setters?** Setters zijn methoden die gebruikt worden om de waarde van een attribuut te wijzigen. Ze bieden controle over hoe gegevens worden ingesteld. In het geval van de `Pennenzak`-klasse hebben we setters voor `kleur` en `lengte`.

- **Voorbeeld:**
```java
public final void setKleur(String kleur) {
	if (kleur != null && !kleur.isBlank()) {
	    this.kleur = kleur;     
	} 
}
```
Hier wordt gecontroleerd of de opgegeven kleur niet `null` is en of het geen lege string is (met de `isBlank()`-methode).
    
- **Private setters:** Sommige setters, zoals `setLengte()`, zijn privé:
    
```java
private void setLengte(int lengte) {
	this.lengte = (lengte <= 0) ? 10 : lengte; 
}
```
Deze setter is privé omdat de lengte van de pennenzak niet zomaar moet kunnen worden aangepast door externe code. Hier wordt ook gebruikgemaakt van een **ternary operator** om ervoor te zorgen dat de lengte niet negatief is.

# Getters
- **Wat zijn getters?** Getters zijn methoden die gebruikt worden om de waarde van een attribuut terug te geven. In de `Pennenzak`-klasse zijn er getters voor `lengte`, `kleur` en `open`.
    
    - **Voorbeeld:**
```java
public int getLengte() {
	return this.lengte; 
}
```
   Deze methode retourneert de huidige waarde van `lengte`.
    
Voor een boolean attribuut gebruiken we vaak de prefix **`is`** in plaats van `get`:
```java
public boolean isOpen() {
	return this.open; 
}
```
  Dit is een conventie in Java voor boolean-getters.

##  Getters en setters automatisch maken:
![[Pasted image 20241118120302.png]]
# Gedrag
- **Wat is gedrag in een klasse?** Naast setters en getters bevat een klasse ook methoden die bepaalde acties uitvoeren. In de `Pennenzak`-klasse hebben we bijvoorbeeld de methode `maakOpen()`:
```java
public void maakOpen() {
	this.open = true; 
}
```   
   Deze methode verandert de status van de pennenzak naar "open". Er is geen return-waarde (vandaar `void`), omdat het doel van de methode is om de toestand van het object te wijzigen.

**Waarom methoden voor gedrag?**
- Methoden zoals `maakOpen()` encapsuleren specifieke acties die een object kan uitvoeren. Dit bevordert **modulariteit** en **herbruikbaarheid** van code.
# Voorbeeld:

### voorbeeld klasse "Pennenzak"
```java
package domein;

public class Pennenzak {
//CONSTANTEN 
//**********
	//Deze moeten op klassenniveau zijn om ze te kunnen gebruiken in constructors
	private static final int DEFAULT_LENGTE = 10;
	private static final String DEFAULT_KLEUR = "blauw";

//ATTRIBUTEN
//**********	
	//we beginnen de eigenschappen van de klasse (Attributen met een correct naam)
	//Alle data (attributen) moet verborgen zijn buiten onze klasse, met andere woorden ALTIJD "private" 

	//alle attributen krijgen een beginwaarde
	private int lengte; //heeft standaard getal "0" bij initialisatie, is nooit leeg
	private String kleur; //String heeft standaard waarde "null"
	private boolean open; //boolean heeft de standaard waarde "false"

	//indien je geen constructor creërt, dan krijg je een default constructor (= bevat geen argumenten)
	//schrijf je 1 constructor dan valt de "gratis" defaultconstructor weg
	
//**CONSTRUCTORS**
//1STE CONSTRUCTOR
//****************
	//Constructor, zodat andere klasse een object kunnen creëren van pannenzak
	//buitenwereld kan schrijven p = new pennenzak();

	public Pennenzak(String kleur, int lengte) {//1ste constructor //buiten wereld kan al oproepen: p = new Pennenzak("blauw,15);
	//constructor is altijd de naam van zijn klasse
	//is een methode zonder void, zonder return-type
	//wijzigen van een attribuut is met set en eerste letter is een hoofdletter! setKleur setLengte

		setKleur(kleur);
		setLengte(lengte);

	//we schrijven dit in slechts 1 constructor uit , degenen met de meeste argumenten
	}

	public Pennenzak(int lengte) { //2de constructor ==> defaultwaarde van kleur is blauw
	
	//slecht want onderstaande 2 lijn zijn een herhaling van inhoud bovenste constructor
		//setKleur("blauw"); //EXAMENVRAAG!!!
		//setLengte(lengte);
	
	//dus we gaan van 1 constructor, het opvragen en naar deze halen
		this("blauw",lengte);
		//met this( , ) roepen we de constructor op met de 2 argumenten
	}

	public Pennenzak() { //Defaultconstructor
		this(DEFAULT_KLEUR,DEFAULT_LENGTE); 
	}

//setters
//*******
	public final void setKleur(String kleur) { //private void setKleur(String kleur2) { (verander kleur2 naar kleur)
	// private hebben we veranderd naar public omdat de kleur waarschijnlijk achteraf moet veranderd worden door de klant
	// we voegen steeds een final toe aan iedere public setter (zie hoofdstuk 7) (iets met exeptions)
	//Tijdelijk tot we exeptions leren
		if (kleur != null && !kleur.isBlank()){//kleur != null (want we willen geen lege waarde krijgen)
		this.kleur = kleur; //hier schrijven we wel de toewijzing, we MOETEN "this." schrijven door zelfde naam
		}
	}

	private void setLengte(int lengte) { //private want de klant zegt dat deze niet meer moet aangepast worden
		//Stel indien correct -> overnemen
		//Indien niet correct -> 10 ==> om op te vangen als het niet correct is
		this.lengte = (lengte <= 0 )? 10: lengte; //ingebouwde if statement
	}

//getters (om data terug te sturen)
//*******

	public int getLengte() {//int want we willen een integer terug geven
	//return lengte;
		return this.lengte; //this. MAG hier gebruikt worden, voor het gemak altijd gebruiken is OK
	}

	public String getKleur() {
		return this.kleur;
	}
// alle attributen behalve een boolean begint met: get
// als je waarde van een boolean wil terug geven begint met: is //bij setters is er geen uitzondering
	public boolean isOpen() {
		return this.open;
	//return open; //mag ook
	}

//gedrag
//******
	public void maakOpen() { //is een void method, geen return type (geeft geen waarde terug)
	this.open = true;
	//open = true; //dit mag ook
	}

}
```


# objecten van een Klasse

objecten van klasse

*Nikki (uniek studentnummer) is* **object** *van* **klasse** *student*

### attributen
object heeft **eigenschappen**/karakteristieken. -> **attributen**

steeds private NOOIT public, want anders kan je deze maar 1 keer gebruiken + verwarring (we moeten controle houden)
```java
//Alle data (attributen) zijn verborgen, met andere woorden "private" ALTIJD
//NOOIT
public in lengte; //(ZEER SCHECHT OMDAT HET PUBLIC IS, kan anders alle ongewenste waarden ontvangen)
//ALTIJD private (omdat het altijd binnen de klasse moet blijven

```

Alle attributen krijgen een beginwaarde:
```java

private int lengte; //heeft standaard getal "0" bij initialisatie, is nooit leeg
private String kleur; //String heeft standaard waarde "null"
private boolean open; //boolean heeft de standaard waarde "false"

```
### gedrag
wat is het **gedrag** van een object? wat die klasse kan (bijvoorbeeld studeren), gedrag is eigenschappen veranderen


## abstractie

dat het gedrag afhangt van de toepassing (doel)


## Opbouw klasse

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
