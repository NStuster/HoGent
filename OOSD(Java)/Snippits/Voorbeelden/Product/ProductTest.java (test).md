#Voorbeeld #Java #HoGent #toegepasteinformatica #OOSD #Test
```java
package testen;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.NullAndEmptySource;
import org.junit.jupiter.params.provider.ValueSource;

import domein.Product;

public class ProductTest {

	private Product p1, p2, p3;
    private final static String NAAM_PRODUCT = "Spa Bruis";
    
	@BeforeEach
	public void before() {
		p1 = new Product("Veggie Smoothie", 1.48, 21, 5);
		p2 = new Product("Verse Appelsap", 1.48, 10, 0);
		p3 = new Product("Fruit Smoothie", 1.48, 12, 10);
	}

	private void controleWaarden(String resNaam, double resPrijs, 
			int resBtw, int resKorting, Product p)
	{
		Assertions.assertEquals(resNaam, p.getNaam());
		Assertions.assertEquals(resPrijs, p.getPrijsExclBtw());
		Assertions.assertEquals(resBtw, p.getBtwPercentage());
		Assertions.assertEquals(resKorting, p.getKortingStuksPercentage());
	}
	
	@Test
	public void maakProduct_NormaleData_MaaktProduct() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 10, 20);
		controleWaarden(NAAM_PRODUCT, 1.50, 10, 20, p);
	}

	@Test
	public void maakProduct_KortingStuksPercentageNetGrootGenoeg_MaaktProduct() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 10, 0);
		controleWaarden(NAAM_PRODUCT, 1.50, 10, 0, p);
	}

	@Test
	public void maakProduct_KortingStuksPercentageNetNietTeGroot_MaaktProduct() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 10, 50);
		controleWaarden(NAAM_PRODUCT, 1.50, 10, 50, p);
	}

	@Test
	public void maakProduct_KortingStuksPercentageNetTeKlein_MaaktProductMetKortingStuksPercentage0() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 21, -1);
		controleWaarden(NAAM_PRODUCT, 1.50, 21, 0, p);
	}

	@Test
	public void maakProduct_KortingStuksPercentageTeKlein_MaaktProductMetKortingStuksPercentage0() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 21, -50);
		controleWaarden(NAAM_PRODUCT, 1.50, 21, 0, p);
	}

	@Test
	public void maakProduct_KortingStuksPercentageNetTeGroot_MaaktProductMetKortingStuksPercentage0() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 21, 51);
		controleWaarden(NAAM_PRODUCT, 1.50, 21, 0, p);
	}

	@Test
	public void maakProduct_KortingStuksPercentageTeGroot_MaaktProductMetKortingStuksPercentage0() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 21, 88);
		controleWaarden(NAAM_PRODUCT, 1.50, 21, 0, p);
	}

	@Test
	public void maakProduct_BtwPercentageNetGrootGenoeg_MaaktProduct() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 6, 20);
		controleWaarden(NAAM_PRODUCT, 1.50, 6, 20, p);
	}

	@Test
	public void maakProduct_BtwPercentagePercentageNetNietTeGroot_MaaktProduct() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 21, 20);
		controleWaarden(NAAM_PRODUCT, 1.50, 21, 20, p);
	}

	@Test
	public void maakProduct_BtwPercentageNetTeKlein_MaaktProductMetBtwPercentage21() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 5, 20);
		controleWaarden(NAAM_PRODUCT, 1.50, 21, 20, p);
	}

	@Test
	public void maakProduct_BtwPercentageTeKlein_MaaktProductMetBtwPercentage21() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 5, 20);
		controleWaarden(NAAM_PRODUCT, 1.50, 21, 20, p);
	}

	@Test
	public void maakProduct_BtwPercentageNetTeGroot_MaaktProductMetBtwPercentage21() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 22, 20);
		controleWaarden(NAAM_PRODUCT, 1.50, 21, 20, p);
	}

	@Test
	public void maakProduct_BtwPercentageTeGroot_MaaktProductMetBtwPercentage21() {
		Product p = new Product(NAAM_PRODUCT, 1.50, 35, 20);
		controleWaarden(NAAM_PRODUCT, 1.50, 21, 20, p);
	}

	@Test
	public void maakProduct_PrijsExclBtwNetPositief_MaaktProduct() {
		Product p = new Product(NAAM_PRODUCT, Double.MIN_VALUE, 35, 20);
		controleWaarden(NAAM_PRODUCT, Double.MIN_VALUE, 21, 20, p);
	}

	@Test
	public void maakProduct_PrijsExclBtwNul_MaaktProductMetPrijs1() {
		Product p = new Product(NAAM_PRODUCT, -22, 35, 20);
		controleWaarden(NAAM_PRODUCT, 1, 21, 20, p);
	}

	@Test
	public void maakProduct_PrijsExclBtwNegatief_MaaktProductMetPrijs1() {
		Product p = new Product(NAAM_PRODUCT, Double.MIN_VALUE, 35, 20);
		controleWaarden(NAAM_PRODUCT, Double.MIN_VALUE, 21, 20, p);
	}

	@ParameterizedTest
	@NullAndEmptySource
	@ValueSource(strings = {"  "})
	public void maakProduct_OngeldigeNaam_MaaktProductMetDefaultNaam(String naam) {
		Product p = new Product(naam, 1.50, 22, 20);
		controleWaarden("naam onbekend", 1.50, 21, 20, p);
	}
	
	@Test
	public void setPrijsExclBtw_WijzigtPrijsExclBtw() {
		p2.setPrijsExclBtw(3.77);
		Assertions.assertEquals(3.77, p2.getPrijsExclBtw());
	}

	@Test
	public void setBtwPercentage_GeldigBtwPercentage_WijzigtBtwPercentage() {
		p3.setBtwPercentage(18);
		Assertions.assertEquals(18, p3.getBtwPercentage());
	}

	@Test
	public void setBtwPercentage_BtwPercentageNetGrootGenoeg_WijzigtBtwPercentage() {
		p3.setBtwPercentage(6);
		Assertions.assertEquals(6, p3.getBtwPercentage());
	}

	@Test
	public void setBtwPercentage_BtwPercentageNetNietTeGroot_WijzigtBtwPercentage() {
		p3.setBtwPercentage(21);
		Assertions.assertEquals(21, p3.getBtwPercentage());
	}

	@Test
	public void setBtwPercentage_BtwPercentageNetTeKlein_SteltBtwPercentageInOp21() {
		p3.setBtwPercentage(5);
		Assertions.assertEquals(21, p3.getBtwPercentage());
	}

	@Test
	public void setBtwPercentage_BtwPercentageNetTeGroot_SteltBtwPercentageInOp21() {
		p3.setBtwPercentage(22);
		Assertions.assertEquals(21, p3.getBtwPercentage());
	}

	@Test
	public void setBtwPercentage_BtwPercentageTeKlein_SteltBtwPercentageInOp21() {
		p3.setBtwPercentage(-6);
		Assertions.assertEquals(21, p3.getBtwPercentage());
	}

	@Test
	public void setBtwPercentage_BtwPercentageTeGroot_SteltBtwPercentageInOp21() {
		p3.setBtwPercentage(88);
		Assertions.assertEquals(21, p3.getBtwPercentage());
	}

	@Test
	public void setKortingStuksPercentage_GeldigeKortingStuksPercentage_WijzigtKortingStuksPercentage() {
		p3.setKortingStuksPercentage(18);
		Assertions.assertEquals(18, p3.getKortingStuksPercentage());
	}

	@Test
	public void setKortingStuksPercentage_KortingStuksPercentageNetGrootGenoeg_WijzigtKortingStuksPercentage() {
		p3.setKortingStuksPercentage(0);
		Assertions.assertEquals(0, p3.getKortingStuksPercentage());
	}

	@Test
	public void setKortingStuksPercentage_KortingStuksPercentageNetNietTeGroot_WijzigtKortingStuksPercentage() {
		p3.setKortingStuksPercentage(50);
		Assertions.assertEquals(50, p3.getKortingStuksPercentage());
	}

	@Test
	public void setKortingStuksPercentage_KortingStuksPercentageNetTeKlein_SteltKortingStuksPercentageInOp0() {
		p3.setKortingStuksPercentage(-1);
		Assertions.assertEquals(0, p3.getKortingStuksPercentage());
	}

	@Test
	public void setKortingStuksPercentage_KortingStuksPercentageNetTeGroot_SteltKortingStuksPercentageInOp0() {
		p3.setKortingStuksPercentage(51);
		Assertions.assertEquals(0, p3.getKortingStuksPercentage());
	}

	@Test
	public void setKortingStuksPercentage_KortingStuksPercentageTeKlein_SteltKortingStuksPercentageInOp0() {
		p3.setKortingStuksPercentage(-6);
		Assertions.assertEquals(0, p3.getKortingStuksPercentage());
	}

	@Test
	public void setKortingStuksPercentage_KortingStuksPercentageTeGroot_SteltKortingStuksPercentageInOp0() {
		p3.setKortingStuksPercentage(88);
		Assertions.assertEquals(0, p3.getKortingStuksPercentage());
	}

	@Test
	public void setPrijsExlBtw_PrijsPositief_SteltPrijsIn() {
		p3.setPrijsExclBtw(33.66);
		Assertions.assertEquals(33.66, p3.getPrijsExclBtw());
	}

	@Test
	public void setPrijsExlBtw_PrijsNetPositief_SteltPrijsIn() {
		p3.setPrijsExclBtw(Double.MIN_VALUE);
		Assertions.assertEquals(Double.MIN_VALUE, p3.getPrijsExclBtw());
	}

	@Test
	public void setPrijsExlBtw_Prijs0_SteltPrijsExclBtwInOp1() {
		p3.setPrijsExclBtw(0);
		Assertions.assertEquals(1, p3.getPrijsExclBtw());
	}

	@Test
	public void setPrijsExlBtw_PrijsNegatief_SteltPrijsExclBtwInOp1() {
		p3.setPrijsExclBtw(-10.5);
		Assertions.assertEquals(1, p3.getPrijsExclBtw());
	}

	@Test
	public void berekenPrijsMetBtw_ProductMetBtwPercentage21ZonderKortingt6Stuks_RetourneertPrijsMetBtw() {
		Assertions.assertEquals(1.79, p1.berekenPrijs(1), 0.01);
	}

	@Test
	public void berekenPrijsMetBtw_ProductMetBtwPercentage21MetKortingStuks_RetourneertPrijsMetBtw() {
		Assertions.assertEquals(10.20, p1.berekenPrijs(6), 0.01);
	}
}

```