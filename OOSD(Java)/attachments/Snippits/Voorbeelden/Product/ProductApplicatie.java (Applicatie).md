#Voorbeeld #Java #HoGent #toegepasteinformatica #OOSD #Applicatie
```java
package cui;

import java.util.Scanner;

import domein.Product;

public class ProductApplicatie {
	public static void main(String[] args) {
		new ProductApplicatie().start();
	}
	
	private Scanner invoer = new Scanner(System.in);
	
	private void start(){
		int aantal;
		double totalePrijs = 0.0;
		
		Product[] producten = { //array met objecten uit onze klasse
			new Product("pannenkoek", 0.125, 21, 5),
			new Product("pannenkoek met suiker", 2, 6, 10),
			new Product("pannenkoek met choco", 2.20, 6, 15)		
		};
		
		for (Product product: producten) {
			aantal = geefAantalStuks(product.getNaam());
			totalePrijs += product.berekenPrijs(aantal);
		}
		System.out.printf("%nAan de kassa zal u %.2f EURO moeten betalen.%n", totalePrijs);
	}
	
	private int geefAantalStuks(String naam) {
		int aantal;
		do {
			System.out.printf("%nHoeveel stuk wilt u van '%s'? ", naam);
			aantal = invoer.nextInt();
		} while (aantal < 0);
		return aantal;
	}
}

```