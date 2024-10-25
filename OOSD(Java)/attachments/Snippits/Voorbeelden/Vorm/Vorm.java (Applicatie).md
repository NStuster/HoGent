#Voorbeeld #Java #HoGent #toegepasteinformatica #OOSD #Applicatie 

# uitleg

Maak nu gebruik van de 2 domeinklassen uit voorgaande oefeningen om volgende applicatie uit te werken. 
Allereerst vragen we aan de gebruiker of hij een vorm wil ingeven.
- Bij keuze 0: applicatie stopt met het uitschrijven van de nodig info.
- Bij keuze 1: applicatie vraagt om lengte en breedte van een rechthoek in te geven.
- Bij keuze 2: applicatie vraagt om 3 zijden van een driehoek in te geven.

Na het ingeven van een rechthoek of driehoek krijg je terug de kans om te stoppen of om een nieuwe vorm in te geven. 
Wat je ook koos, op het eind wordt volgende informatie uitgeschreven: Overzicht vormen: Totaal aantal vormen: Aantal rechthoeken met opp > 50: Aantal rechthoekige driehoeken.
# applicatie

```java
package cui;

import java.util.Scanner;

import domein.Driehoek;
import domein.Rechthoek;

public class VormApplicatie {

	public static void main(String[] args) {
		
		new VormApplicatie().start();
	}
	
	private Scanner invoer = new Scanner(System.in);
	
	private static final int RECHTHOEK = 1;
	private static final int DRIEHOEK = 2;
			
	private void start() {
		
		System.out.println("Rechthoeken en driehoeken");
		System.out.println("-------------------------");
		
		int aantalRechthoekenOppGroterDan50 = 0;
		int aantalRechthoekigeDriehoeken = 0;
		int totaalAantalVormen=0;
		
		int vorm = geefKeuzeVormIngeven();
		
		while (vorm != 0) {
			
			switch(vorm)
			{
				case RECHTHOEK -> {
					double lengte = geefRechthoek("lengte");
					double breedte = geefRechthoek("breedte");
				
					Rechthoek r = new Rechthoek(lengte,breedte);
				
					if (r.berekenOppervlakte() > 50)
						aantalRechthoekenOppGroterDan50++;	
				}
				case DRIEHOEK -> {

					int zijdeA = geefZijde('A');
					int zijdeB = geefZijde('B');
					int zijdeC = geefZijde('C');
				
					Driehoek d = new Driehoek(zijdeA,zijdeB,zijdeC);
				
					if (d.isRechthoekig())
						aantalRechthoekigeDriehoeken++;
				}
			}
			totaalAantalVormen++;
			
			vorm = geefKeuzeVormIngeven();
			
		}
		
		System.out.println("Overzicht vormen:");
		System.out.printf("Totaal aantal vormen: %d%n", totaalAantalVormen);
		System.out.printf("Aantal rechthoeken met opp > 50: %d%n", aantalRechthoekenOppGroterDan50);
		System.out.printf("Aantal rechthoekige driehoeken: %d%n", aantalRechthoekigeDriehoeken);
		
	}
	
	private double geefRechthoek(String woord) {
		System.out.printf("Geef de %s van de rechthoek: ", woord);
		return invoer.nextDouble();
	}

	private int geefZijde(char volgorde)
	{
		System.out.printf("Geef de lengte van zijde %c: ", volgorde);
		return invoer.nextInt();	
	}
	
	private int geefKeuzeVormIngeven() {
		int vorm;
		do {
			System.out.print("Wil je graag nog een vorm ingeven (1=een rechthoek, 2=een driehoek, 0=nee)? ");
			vorm = invoer.nextInt();
		}while(vorm<0 || vorm>2);
		return vorm;
	}
}
```