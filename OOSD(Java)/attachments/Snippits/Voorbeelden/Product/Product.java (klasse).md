#Voorbeeld #Java #HoGent #toegepasteinformatica #OOSD #Klasse
# Domeinmodel
![](20241021185150.png)

# Uitleg

Implementeer de nodige attributen, getters en setters en maak gebruik van de constanten die je static en final declareert. 
- naam: controle op correcte string
- btwPercentage: ligt tussen 6 en 21 (grenzen inbegrepen), defaultwaarde is 21
- kortingStuksPercentage: positief én maximaal 50, defaultwaarde is 0
- prijsExclBtw: moet strikt positief zijn, defaultwaarde is 1 

Maak een constructor voor deze klasse die onmiddellijk de 4 eigenschappen correct instelt. 
De methode berekenPrijs berekent de prijs met btw voor het meegegeven aantal en houdt hierbij ook rekening met de eventuele korting vanaf 6 stuks.

# Java klasse

```java
package domein;

public class Product {

	//pijltjes naar binnen -> public setters
//attributen

	private String naam;
	private double prijsExclBtw;
	private int btwPercentage;
	private int kortingStuksPercentage;

//constanten //met streep onder is static

	private static final int DEFAULT_PRIJS_EXCL_BTW = 1;
	private static final int DEFAULT_BTW = 21;
	private static final int ONDERGRENS_BTW = 6;
	private static final int BOVENGRENS_BTW = 21;
	private static final int DEFAULT_KORTINGS_STUKS_PERCENTAGE = 0;
	private static final int BOVENGRENS_KORTING_STUKS = 50;
	private static final int MINIMUM_AANTAL_STUKS = 6;
	private static final String DEFAULT_NAAM = "naam onbekend";

//constructors
//we maken maar 1 constructor en de rest laten we refereren
	public Product(String naam, double prijsExclBtw, int btwPercentage, int kortingStuksPercentage) {
		setNaam(naam);
		setPrijsExclBtw(prijsExclBtw);
		setBtwPercentage(btwPercentage);
		setKortingStuksPercentage(kortingStuksPercentage);
	}

	public Product(int kortingStuksPercentage) {
		this(DEFAULT_NAAM,kortingStuksPercentage,DEFAULT_BTW,DEFAULT_PRIJS_EXCL_BTW);
	}

//Getters (om data terug te sturen)
	public String getNaam() {
		return this.naam;
	}

	public int getKortingStuksPercentage() {
		return this.kortingStuksPercentage;
	}

	public int getBtwPercentage() {
		return this.btwPercentage;
	}

	public double getPrijsExclBtw() {
		return this.prijsExclBtw;
	}

//Setters
	private void setNaam(String naam) {
		this.naam = ((naam == null || naam.isBlank())? DEFAULT_NAAM : naam);
	}

	public final void setKortingStuksPercentage(int kortingStuksPercentage) {
		this.kortingStuksPercentage = ((kortingStuksPercentage < DEFAULT_KORTINGS_STUKS_PERCENTAGE || kortingStuksPercentage > BOVENGRENS_KORTING_STUKS)? DEFAULT_KORTINGS_STUKS_PERCENTAGE:kortingStuksPercentage );
	}

	public final void setBtwPercentage(int btwPercentage) {
		this.btwPercentage = ((btwPercentage < ONDERGRENS_BTW || btwPercentage > BOVENGRENS_BTW)? DEFAULT_BTW:btwPercentage );
	}

	public final void setPrijsExclBtw(double prijsExclBtw) {
		this.prijsExclBtw = ((prijsExclBtw <= 0)? DEFAULT_PRIJS_EXCL_BTW:prijsExclBtw);
	}

//Gedrag
	public double berekenPrijs(int aantal) {
		//exeption werpen (later 1ste semester)
		double teBetalen = (prijsExclBtw + (prijsExclBtw * btwPercentage / 100)) * aantal;
		if (aantal >= MINIMUM_AANTAL_STUKS) {
			teBetalen -= teBetalen * kortingStuksPercentage /100;
		}
		return teBetalen;
	}
 
}
```