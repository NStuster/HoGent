#Voorbeeld #Java #HoGent #toegepasteinformatica #OOSD #Test
```java
package testen;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import domein.Rechthoek;

public class RechthoekTest {

	private void controleWaarden(double resLengte, double resBreedte, Rechthoek r)
	{
		Assertions.assertEquals(resLengte, r.getLengte());
		Assertions.assertEquals(resBreedte, r.getBreedte());
	}
	
	@Test
	public void maakRechthoek_ZonderOpgaveVanLengteEnBreedte_MaaktDefaultRechthoek() {
		Rechthoek r = new Rechthoek();
		controleWaarden(10.0, 7.0, r);
	}

	@Test
	public void maakRechthoek_GeldigeLengteEnBreedte_MaaktRechthoek() {
		Rechthoek r = new Rechthoek(2.5, 4.5);
		controleWaarden(2.5, 4.5, r);
	}

	@Test
	public void maakRechthoek_LengteNetGrootGenoeg_MaaktRechthoek() {
		Rechthoek r = new Rechthoek(Double.MIN_VALUE, 4);
		controleWaarden(Double.MIN_VALUE, 4.0, r);
	}

	@Test
	public void maakRechthoek_BreedteNetGrootGenoeg_MaaktRechthoek() {
		Rechthoek r = new Rechthoek(4, Double.MIN_VALUE);
		controleWaarden(4.0, Double.MIN_VALUE, r);
	}

	@Test
	public void maakRechthoek_LengteNetTeKlein_MaaktRechthoekMetLengte1() {
		Rechthoek r = new Rechthoek(0, 4);
		controleWaarden(1.0, 4.0, r);
	}

	@Test
	public void maakRechthoek_LengteTeKlein_MaaktRechthoekMetLengte1() {
		Rechthoek r = new Rechthoek(-10.55, 4);
		controleWaarden(1.0, 4.0, r);
	}

	@Test
	public void maakRechthoek_BreedteNetTeKlein_MaaktRechthoekMetBreedte1() {
		Rechthoek r = new Rechthoek(4, 0);
		controleWaarden(4.0, 1.0, r);
	}

	@Test
	public void maakRechthoek_BreedteTeKlein_MaaktRechthoekMetBreedte1() {
		Rechthoek r = new Rechthoek(4, -10.55);
		controleWaarden(4.0, 1.0, r);
	}

	@Test
	public void berekenOppervlakte_RetourneertOppervlakte() {
		Rechthoek r = new Rechthoek(2, 4);
		Assertions.assertEquals(8.0, r.berekenOppervlakte());
	}

	@Test
	public void berekenOmtrek_RetourneertOmtrek() {
		Rechthoek r = new Rechthoek(2, 4);
		Assertions.assertEquals(12.0, r.berekenOmtrek());
	}

}

```