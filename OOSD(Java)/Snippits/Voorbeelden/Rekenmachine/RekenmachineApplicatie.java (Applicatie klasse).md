#Voorbeeld #Java #HoGent #toegepasteinformatica #OOSD #Applicatie
```java
package cui;

import java.util.Scanner;

import domein.Rekenmachine; // 1 importeer klasse

public class RekenmachineApplicatie {

    public static void main(String[] args) {
        new RekenmachineApplicatie().start();
    }

    private Scanner invoer = new Scanner(System.in);

    private static final int SOM = 1;
    private static final int VERSCHIL = 2;
    private static final int VERMENIGVULDIGING = 3;
    private static final int DELING = 4;
    private static final int STOPPEN = 5;

    private void start() {
    	Rekenmachine r = new Rekenmachine();
        int bewerking = geefKeuzeIngeven();

        while (bewerking != STOPPEN) {
            double getal1 = geefGetal("1");
            double getal2 = geefGetal("2");

            
            double resultaat = 0;

            switch (bewerking) {
                case SOM -> {
                    r.telOp(getal1, getal2);
                    geefResultaatWeer(getal1,"+", getal2,r.getResultaat());
                }
                case VERSCHIL -> {
                    r.trekAf(getal1, getal2);
                    geefResultaatWeer(getal1,"-", getal2,r.getResultaat());
                }
                case VERMENIGVULDIGING -> {
                    r.vermenigvuldig(getal1, getal2);
                    geefResultaatWeer(getal1,"*", getal2,r.getResultaat());
                }
                case DELING -> {
                    r.deel(getal1, getal2);
                    geefResultaatWeer(getal1,"/", getal2,r.getResultaat());
                  
                }
            }
            bewerking = geefKeuzeIngeven();
        }
        System.out.println("Einde.");
    }

    private void geefResultaatWeer(double getal1,String string, double getal2, double resultaat) {
    	System.out.printf("%.2f %S %.2f = %.2f%n",getal1,string,getal2, resultaat);
		
	}

	private int geefKeuzeIngeven() {
        int bewerking;
        do {
            System.out.printf("Welke actie wil je uitvoeren?%n1. Som%n2. Verschil%n3. Vermenigvuldiging%n4. Deling%n5. Stoppen%nGeef je keuze in: ");
            bewerking = invoer.nextInt();
        } while (bewerking < 1 || bewerking > 5); // Aanpassen voor STOPPEN (5)
        return bewerking;
    }

    private double geefGetal(String volgnummer) {
        System.out.printf("Geef getal  %s : ",volgnummer);
        return invoer.nextDouble();
    }
}

```