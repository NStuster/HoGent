# Opbouw
1. We bouwen de foutboodschap op in onze domein klasse
2. We vangen de fout op in onze cui

# 1. In onze domein klassen

## voorbeeld van een exeption werpen (in een setter)


```java
public final void setLengte(double lengte) {
	//this.lengte = (lengte <= 0 || lengte > BOVENGRENS)? DEFAULT_BOVENGRENS: lengte;
	if(lengte <= 0 || lengte > BOVENGRENS) {
	throw new IllegalArgumentException(String.format("de lengte moet liggen tussen 0 en %d%n", BOVENGRENS));
	//We moeten NOOIT een ELSE zien, want een trow verlaat de methode
	}
	this.lengte = lengte;
}
```

## Als we dezelfde exeption in 2 setters hebben

schrijven we in de domeinklasse een private method:

```java
public final void setLengte(double lengte) {
	controleWaarde(lengte, BOVENGRENS, "lengte");
	this.lengte = lengte;
}

public final void setBreedte(double breedte) {
	controleWaarde(breedte, BOVENGRENS, "breedte");
	this.breedte = breedte;
}

private void controleWaarde(double waarde, int maxwaarde,String woord) {
	if(waarde <= 0 || waarde > maxwaarde) {
	throw new IllegalArgumentException(String.format("de %s moet liggen tussen 0 en %d%n",woord, maxwaarde));
	//We moeten NOOIT een ELSE zien, want een trow verlaat de methode
	}
}
```

# 2. In onze cui

Hier plaatsten we ALTIJD onze try/catch blokken

```java
package cui;
import domein.Rechthoek;

public class ExceptionVoorbeeld {
	public static void main(String[] args) {
		new ExceptionVoorbeeld().start();
	}
 
	private void start() {
		Rechthoek rechthoek = new Rechthoek();
		try {
			rechthoek.setLengte(-1);
			System.out.println("We gaan deze text NIET zien bij een foute invoer van lengte");
		} catch (IllegalArgumentException e) {
			System.out.println(e.getMessage());
		}
		System.out.println("We gaan deze text ALTIJD zien");
	}
}
```

# Nog toe te voegen aan deze samenvatting

```Java
try {

Kat mijnKat2 = (Kat)duif;

System.out.println(mijnKat2.spin());

} catch (ClassCastException e) {

System.out.println(e.getMessage());

}
```

