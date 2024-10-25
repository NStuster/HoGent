#Voorbeeld #Java #HoGent #toegepasteinformatica #OOSD #Applicatie
```java
package cui;

import domein.Pokemon;

public class Applicatie {
	public static void main(String []args) {
		Pokemon p1 = new Pokemon();
		p1.setName("Pikachu");
		p1.attack();
		System.out.println(p1.getName());
		System.out.println(p1.getLevel());
	}

}
```