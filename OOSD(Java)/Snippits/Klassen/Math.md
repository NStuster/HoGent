[Java Math Reference (w3schools.com)](https://www.w3schools.com/java/java_ref_math.asp)

The Java Math class has many methods that allows you to perform mathematical tasks on numbers.


|Methode|Beschrijving|Return Type|
|---|---|---|
|abs(x)|Geeft de absolute waarde van x terug.|double|
|acos(x)|Geeft de arccosinus van x terug, in radialen.|double|
|addExact(x, y)|Geeft de som van x en y terug.|int|
|asin(x)|Geeft de arcsinus van x terug, in radialen.|double|
|atan(x)|Geeft de arctangens van x terug als een numerieke waarde tussen -PI/2 en PI/2 radialen.|double|
|atan2(y, x)|Geeft de hoek theta terug vanuit de conversie van rechthoekige coördinaten (x, y) naar polaire coördinaten (r, theta).|double|
|cbrt(x)|Geeft de derdemachtswortel van x terug.|double|
|ceil(x)|Geeft de waarde van x terug, afgerond naar boven tot het dichtstbijzijnde gehele getal.|double|
|copySign(x, y)|Geeft de eerste floating point x terug met het teken van de tweede floating point y.|double|
|cos(x)|Geeft de cosinus van x terug (x is in radialen).|double|
|cosh(x)|Geeft de hyperbolische cosinus van een double waarde terug.|double|
|decrementExact(x)|Geeft x-1 terug.|int|
|exp(x)|Geeft de waarde van e^x terug.|double|
|expm1(x)|Geeft e^x -1 terug.|double|
|floor(x)|Geeft de waarde van x terug, afgerond naar beneden tot het dichtstbijzijnde gehele getal.|double|
|floorDiv(x, y)|Geeft de deling van x door y terug, afgerond naar beneden.|int|
|floorMod(x, y)|Geeft de rest van een deling van x door y terug waarbij het resultaat van de deling naar beneden is afgerond.|int|
|getExponent(x)|Geeft de exponent zonder vooroordeel die in x wordt gebruikt terug.|int|
|hypot(x, y)|Geeft sqrt(x² + y²) terug zonder tussentijdse overflow of underflow.|double|
|IEEEremainder(x, y)|Berekent de rest van een operatie op x en y zoals voorgeschreven door de IEEE 754-standaard.|double|
|incrementExact(x)|Geeft x+1 terug.|int|
|log(x)|Geeft de natuurlijke logaritme (basis e) van x terug.|double|
|log10(x)|Geeft de logaritme met basis 10 van x terug.|double|
|log1p(x)|Geeft de natuurlijke logaritme (basis e) van de som van x en 1 terug.|double|
|max(x, y)|Geeft het getal met de hoogste waarde terug.|double|
|min(x, y)|Geeft het getal met de laagste waarde terug.|double|
|multiplyExact(x, y)|Geeft het resultaat van x vermenigvuldigd met y terug.|int|
|negateExact(x)|Geeft de negatie van x terug.|int|
|nextAfter(x, y)|Geeft het floating point-getal naast x in de richting van y terug.|double|
|nextDown(x)|Geeft het floating point-getal naast x in de negatieve richting terug.|double|
|nextUp(x)|Geeft het floating point-getal naast x in de richting van positieve oneindigheid terug.|double|
|pow(x, y)|Geeft de waarde van x tot de macht y terug.|double|
|random()|Geeft een willekeurig getal tussen 0 en 1 terug.|double|
|rint(x)|Geeft de double-waarde die het dichtst bij x ligt en gelijk is aan een wiskundig geheel getal terug.|double|
|round(x)|Geeft de waarde van x terug, afgerond naar het dichtstbijzijnde gehele getal.|long|
|scalb(x, y)|Geeft x vermenigvuldigd met 2 tot de macht y terug.|double|
|signum(x)|Geeft het teken van x terug.|double|
|sin(x)|Geeft de sinus van x terug (x is in radialen).|double|
|sinh(x)|Geeft de hyperbolische sinus van een double waarde terug.|double|
|sqrt(x)|Geeft de vierkantswortel van x terug.|double|
|subtractExact(x, y)|Geeft het resultaat van x min y terug.|int|
|tan(x)|Geeft de tangens van een hoek terug.|double|
|tanh(x)|Geeft de hyperbolische tangens van een double waarde terug.|double|
|toDegrees(x)|Converteert een hoek gemeten in radialen naar een benaderde equivalente hoek gemeten in graden.|double|
|toIntExact(x)|Converteert een long waarde naar een int.|int|
|toRadians(x)|Converteert een hoek gemeten in graden naar een benaderde hoek gemeten in radialen.|double|
|ulp(x)|Geeft de grootte van de kleinste precisie-eenheid (ulp) van x terug.|double|

**Opmerking: Alle Math-methoden zijn statisch.**

In Java betekent "statisch" dat een methode of variabele toebehoort aan de klasse zelf in plaats van aan een specifiek object van die klasse. Wanneer er wordt gezegd dat _alle Math-methoden statisch zijn_, betekent dit dat je deze methoden kunt aanroepen zonder een object van de klasse **Math** te hoeven maken.

In plaats van eerst een instantie van de klasse Math aan te maken, zoals dit:


```java

Math myMath = new Math(); // Niet nodig 
myMath.abs(-10);

```
Kun je de statische methode rechtstreeks aanroepen met de klasse zelf:


```java
Math.abs(-10);  // Dit is de juiste manier`
```
*Dit komt omdat statische methoden worden aangeroepen via de klasse zelf en niet via een object van die klasse.* Hierdoor zijn ze eenvoudiger en efficiënter te gebruiken in situaties zoals wiskundige