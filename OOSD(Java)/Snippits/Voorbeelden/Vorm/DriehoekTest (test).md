#Voorbeeld #Java #HoGent #toegepasteinformatica #OOSD #Test
```java
package testen;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import domein.Driehoek;

public class DriehoekTest {
	
	private void controleWaarden(int resA, int resB, int resC, Driehoek d)
	{
		Assertions.assertEquals(resA, d.getA());
		Assertions.assertEquals(resB, d.getB());
		Assertions.assertEquals(resC, d.getC());
	}
	
	@Test
	public void maakDriehoek_DrieGeldigeZijden_MaaktDriehoek() {
		Driehoek d = new Driehoek(3, 4, 5);
		controleWaarden(3, 4, 5, d); 
	}

	@Test
	public void maakDriehoek_ZijdeANetTeKlein_MaaktDriehoekMetZijdeAGelijkAan1() {
		Driehoek d = new Driehoek(0, 5, 8);
		controleWaarden(1, 5, 8, d); 
	}

	@Test
	public void maakDriehoek_ZijdeATeKlein_MaaktDriehoekMetZijdeAGelijkAan1() {
		Driehoek d = new Driehoek(-10, 5, 8);
		controleWaarden(1, 5, 8, d);
	}

	@Test
	public void maakDriehoek_ZijdeBNetTeKlein_MaaktDriehoekMetZijdeBGelijkAan1() {
		Driehoek d = new Driehoek(5, 0, 8);
		controleWaarden(5, 1, 8, d);
	}

	@Test
	public void maakDriehoek_ZijdeBTeKlein_MaaktDriehoekMetZijdeBGelijkAan1() {
		Driehoek d = new Driehoek(5, -10, 8);
		controleWaarden(5, 1, 8, d);
	}

	@Test
	public void maakDriehoek_ZijdeCNetTeKlein_MaaktDriehoekMetZijdeCGelijkAan1() {
		Driehoek d = new Driehoek(5, 8, 0);
		controleWaarden(5, 8, 1, d);
	}

	@Test
	public void maakDriehoek_ZijdeCTeKlein_MaaktDriehoekMetZijdeCGelijkAan1() {
		Driehoek d = new Driehoek(5, 8, -10);
		controleWaarden(5, 8, 1, d);
	}

	@Test
	public void isRechthoekig_RechthoekigeDriehoekMetSchuineZijdeA_retourneertTrue() {
		Driehoek d = new Driehoek(5, 3, 4);
		Assertions.assertTrue(d.isRechthoekig());
	}

	@Test
	public void isRechthoekig_RechthoekigeDriehoekMetSchuineZijdeB_retourneertTrue() {
		Driehoek d = new Driehoek(3, 5, 4);
		Assertions.assertTrue(d.isRechthoekig());
	}

	@Test
	public void isRechthoekig_RechthoekigeDriehoekMetSchuineZijdeC_retourneertTrue() {
		Driehoek d = new Driehoek(3, 4, 5);
		Assertions.assertTrue(d.isRechthoekig());
	}

	@Test
	public void isRechthoekig_GeenRechthoekigeDriehoek_retourneertFalse() {
		Driehoek d = new Driehoek(5, 4, 5);
		Assertions.assertFalse(d.isRechthoekig());
	}
}

```