## Nog een voorbeeld Jackpod
0. zet getters en setters aan:
![[Pasted image 20241105151016.png]]


1. Nemen eerst Domeinmodel over

![[Pasted image 20241104115007.png]]


2. we kijken naar SSD
   a. Eerste pijl heeft een OC dus:
	   - we nemen dit op 
	   - is een Doing (ENKEL ALS ER EEN **DOING** IS)
	   - voegen dit toe met een operation
	     ![[Pasted image 20241104114030.png]]
	b.   3 getallen terug geven
		- is een knowing
		- we voegen dit toe als een list (als operation)
		  ![[Pasted image 20241104114253.png]]
	c. Speel()
		- is een Doing
		- we voegen dit toe als operation
			![[Pasted image 20241104114420.png]]
	d. 3 getallen terug geven
		- hebben we al (zie b)

	e. score
		- is een knowing
		  ![[Pasted image 20241104114744.png]]


	f. deel van loop (zolang speler wenst te spelen)
		- is geen deel van domeinlogica
		- is voor later, voor het scherm zelf
		- heeft geen invloed op ons spel
		- Anders voegen we dit ook toe als oprator (doing)

2. We kijken naar opearation contract:
	a. Hebben we al een constructor -> Ja -> we moeten niet maar gaan hem toch schrijven en voegen dit toe aan Jackpot
![[Pasted image 20241104114849.png]]

b. we lezen de multiplicity

![[Pasted image 20241104115102.png]]
c.
![[Pasted image 20241104115253.png]]

d. we hebben al een associatie met 3 wielen dus we kunnen verder
e. domeincontroller wil de waarde van wielen
- Dus we vragen dit aan Jackpot
  ![[Pasted image 20241104115548.png]]

f. voeg getter setter toe

![[Pasted image 20241104115613.png]]

g. we voegen speel toe zodat de DC dit kan vragen aan Jackpot
![[Pasted image 20241104115749.png]]

h. we moeten nog kunnen draaien
![[Pasted image 20241104115904.png]]

i. Jackpot is de enige die de spelregels kent dus
![[Pasted image 20241104120033.png]]

3. omzetten naar code
![[Pasted image 20241104120124.png]]

![[Pasted image 20241104120207.png]]

4. we maken onze Domeincontrollerklasse af
   Deze doet niet anders dan doorgeven
```java
package domein;

public class DomeinController {

private Jackpot jackpot;

  

public void startNieuweJackpot() {

this.jackpot = new Jackpot();

}

  

public List<Integer> geefGetallenWielen() {

return jackpot.geefGetallenWielen();

}

  

public void speel() {

jackpot.speel();

}

  

public int geefScore() {

return jackpot.geefScore();

}

}
```

5. Wiel klasse afwerken
```java
package domein;

  

import java.security.SecureRandom;

  

public class Wiel {

  

private int getal;

private SecureRandom sr;

private static final int MAX = 9;

  

public int getGetal() {

return this.getal;

}

  

public Wiel() {

sr = new SecureRandom();

}

  

public void draai() {

getal = sr.nextInt(MAX + 1); // is tot en niet tot en met daarom +1

//default VAN 0

}

}
```

