#Voorbeeld #Java #HoGent #toegepasteinformatica #OOSD #Klasse
```java
package domein;

public class Pokemon {
//Attributen
	String name;
	int level;
//Constanten
	final static int DEFAULT_LEVEL = 1;
	final static String DEFAULT_NAME = "Evee";
//Constructor (Geeft condities bij aanmaak object)
	public Pokemon() {
		this.level = DEFAULT_LEVEL;
	}
//Getters (geeft een waarde terug bij object)
	public String getName() {
		return name;
	}

	public int getLevel() {
		return level;
	}
//Setters (steld een waarde in bij object)
	public void setName(String name) {
		this.name = name;
	}

	public void setLevel(int level) {
		this.level = level;
	}
//Gedrag (voerd een gedrag van het object uit)
	public void attack() {
		System.out.printf("%s attack%n", name);//Dit is louter voorbeeld, geen print in een klasse
	}

}
```

