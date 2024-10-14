# Klassen voor objecten
## Waar plaatsen?
Domein package


# CONSTRUCTORS

# Voorbeeld:

```java
package domein;

public class Pennenzak {
	//CONSTANTEN
	private static final int DEFAULT_LENGTE = 10;
	private static final String DEFAULT_KLEUR = "blauw";

//CONSTRUCTORS
//we beginnen de eigenschappen van de klasse (Attributen met een correct naam)
//Attributen
//Alle data (attributen) zijn verborgen, met andere woorden "private" ALTIJD
//ALTIJD private (omdat het altijd binnen de klasse moet blijven

	private int lengte; //heeft standaard getal "0" bij initialisatie, is nooit leeg
	private String kleur; //String heeft standaard waarde "null"
	private boolean open; //boolean heeft de standaard waarde "false"

//alle attributen krijgen een beginwaarde
//Constructor, zodat andere klasse een object kunnen creëren van pannenzak
//indien je geen constructor creërt, dan krijg je een default constructor (= bevat geen argumenten)
//buitenwereld kan schrijven p = new pennenzak();
//schrijf je 1 constructor dan valt de "gratis" defaultconstructor weg

	public Pennenzak(String kleur, int lengte) {//1ste constructor //buiten wereld kan al oproepen: p = new Pennenzak("blauw,15);
	//constructor is altijd de naam van zijn klasse
	//is een methode zonder void, zonder return-type
	//wijzigen van een attribuut is met set en eerste letter is een hoofdletter! setKleur setLengte

		setKleur(kleur);
		setLengte(lengte);

	//we schrijven slechts 1vconstructor uit , degenen met de meeste argumenten

	}

public Pennenzak(int lengte) { //2de constructor ==> defaultwaarde van kleur is blauw

//slecht want onderstaande 2 lijn zijn een herhaling van lijn 44 en 45, 0 op examen

//setKleur("blauw"); //EXAMENVRAAG!!!

//setLengte(lengte);

//dus we gaan van 1 constructor, het opvragen en naar deze halen

this("blauw",lengte);

//met this( , ) roepen we de constructor op met de 2 argumenten

}

public Pennenzak() { //Defaultconstructor

//SLECHT geen vaste waarde n in de klasse
//this("blauw",10);//GEEN WAARDEN IN CODE ==> GEBRUIK CONSTANTEN

this(DEFAULT_KLEUR,DEFAULT_LENGTE); //we kregen eerst een fout omdat we geen static hadden in initialisatie van constante, deze zat nog niet op klasse niveau

}

//setters
//*******

public final void setKleur(String kleur) { //private void setKleur(String kleur2) { (verander kleur2 naar kleur)

// private hebben we veranderd naar public omdat de kleur waarschijnlijk achteraf moet veranderd worden door de klant

// we voegen steeds een final toe aan iedere public setter (zie hoofdstuk 7) (iets met exeptions)

//Tijdelijk tot we exeptions leren

if (kleur != null && !kleur.isBlank()){//kleur != null (want we willen geen lege waarde krijgen)

//kleur == null ==> niet opvullen

//kleur == "" of spaties

this.kleur = kleur; //hier schrijven we wel de toewijzing, we moeten "this." schrijven door zelfde naam, dat zal altijd zo zijn, "this." kan nooit kwaad

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

public void maakOpen() { //is een void method, geen return type (geeft geen waarde terug)

this.open = true;

//open = true; //dit mag ook

}

}
```
