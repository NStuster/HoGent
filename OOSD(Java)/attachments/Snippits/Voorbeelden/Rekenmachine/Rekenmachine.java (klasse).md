#Voorbeeld #Java #HoGent #toegepasteinformatica #OOSD #Klasse
# Klasse diagram
![](20241021200135.png)

# Uitleg

**Attributen, getters en setters**
We voorzien 1 attribuut resultaat en een aantal methodes ( diensten om bewerkingen uit te voeren). 
Het attribuut resultaat bevat steeds het resultaat van de laatste rekenkundige bewerking. 

**Methodes**
De methodes voeren een rekenkundige bewerking uit: getal1 bewerking getal2. Respecteer de volgorde!

# Klasse
```java
package domein;
 
public class Rekenmachine {
//attributen (private)
 	private double resultaat;
	
//constructors (om op te kunnen roepen)
	//we gebruiken de default constructor omdat we niet meer nodig hebben
	
//setters (private)

//getters (public) (om data terug te sturen)
 	public double getResultaat() {
		return resultaat;
	}

//gedrag (methodes)
	public void telOp(double getal1, double getal2) {
		this.resultaat = getal1 + getal2; // Sla het resultaat op
	}

	public void trekAf(double getal1, double getal2) {
		this.resultaat = getal1 - getal2;
	}

	public void deel(double getal1, double getal2) {
		//if (getal2 == 0) {
		// exception werpen; //Leerstof eerste semester
		//}
		this.resultaat = getal1 / getal2; // Sla het resultaat op
	}

	public void vermenigvuldig(double getal1, double getal2) {
		this.resultaat = getal1 * getal2; // Sla het resultaat op
	}

}
```
