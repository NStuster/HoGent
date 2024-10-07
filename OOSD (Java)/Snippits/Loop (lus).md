
# FOR loop

## Basis
```java

for(int i=1; i <= 5 ; i++ ) { //eerst i initialiseren ; voorwaarde om de lus nog eens uit te voeren ; hoeveel gaat er bij i bij
	System.out.printf("geef getal %d: ",i);// i leeft enkel in de for blok en kan je er niet buiten gebruiken
	getal = scanner.nextInt();
	som += getal; //som = som + getal
}

System.out.printf("De som van de 5 getallen is: %d%n", som);
//variabele getal kan niet afgedrukt of uitgelezen worden, wanneer een lege variabele enkel waarde krijgt in de lus, ook niet na de lus (oplossing deze variabele bij initialisatie een waarde geven)

//i = 10; //geeft compileerfout, i wordt uit het geheugen geschrapt na de For loop

```

## Voorbeelden

```java
for(int i=10; i <= 95 ; i += 5 ) { // i =+ 5 == (i = i + 5) // De naam van i mag je zelf kiezen
	System.out.printf("%d ",i);
}
System.out.print("\n");
```

```java
for(int n=50; n >= 1 ; n-- ) { //ook correct: for(int n=50; n > 0 ; n-- )
	System.out.printf("%d ",n);
}
System.out.print("\n");
```

```java
//opgave: geef alfabet weer van a tem z
for(char letter='a'; letter <= 'z' ; letter++) {
	System.out.printf("%c ",letter); // %c staat voor variabel type char
}
System.out.print("\n");
```

### extra

Onderstaande mag maar zullen we nooit gebruiken omdat het niet overzichtelijk, x is wel opvraagbaar buiten de lus

```java
int y, x = 1, total = 0;

for( ;x <= 10; x = x++){
	y = x * x;
	System.out.printf("%d%n", y);
	total = total + y;
}
System.out.printf("Total is %d%n", total);
```

