#Samenvatting #Java #HoGent #toegepasteinformatica #OOSD
# print println printf

## print

```java
System.out.print("Voorbeeldtext");
```

## println

```java
System.out.println("Dit is een voorbeeld ");
//Sytem.out = scherm / .println() = methode
//System is een naam van een klasse (standaard geintergreede klasse)
```
## gereserveerde tekens

```java
\ //= start van een gereserveerd teken
\n //= nieuwe lijn
\t //= tab
\\ //= om een backslash in mijn text te zetten
\r //= terug te keren naar het begin van de huidige regel, zonder naar een nieuwe regel te gaan (wordt weinig gebruikt

//Voorbeelden:
System.out.print("\n"); // System.out.print("\n"); is zelfde als System.out.println();
System.out.println("\\directorynaam\\");
System.out.println("\"Dit is een zin in dubbele accolades\"");

System.out.print("Downloaden: 50%\r");
System.out.print("Downloaden: 100%\n");
```

## printf

```java
//slechte syntax:
System.out.println("Het resultaat is: " + getal1 + " en getal: " + getal2); //Niet goede methode!
//Correct manier: (juiste syntax)
//System.out.printf("Resultaat is %d en tweede resultaat is %d%n", args);
System.out.printf("Resultaat is %d en tweede resultaat is %d%n", getal1 , getal2);
// printf is voor print met argumenten (variabelen meegeven)

System.out.printf("De prijs is %.2f%n", decGetal); //Afronden %.2f (2cijfers na de komma)

System.out.printf("%4d%n", 1); // %getald (%4d) reserveeerd aantal plaatsen (4 is de breedte)

System.out.printf("%-4d%-4d%n", 1,2); // - voor %4d telt hij de plaatsen aan de andere (linker) kant

```

#### Maken van een kolom met %4d (4 is de breedte):

Dit voorbeeld maakt een tabel met 4 kolommen en 2 rijen:
```java
System.out.printf("%4d%4d%4d%4d%n", 1, 2, 3, 4);
System.out.printf("%4d%4d%4d%4d%n", 5, 6, 7, 8);
```

### gereserveerde tekens voor printf

Bij gebruik van printf of gebruik van argumenten

```java
%n //= nieuwe lijn, hier eindigen we standaard altijd mee!
%d //= uitschrijven van decimale integer (argument)
%s //= uitscrhijven van een string (argument)
%S //= uitscrhijven van een string maar alles met HOOFDLETTERS (argument)
%f //= is voor een double (kan je voor alles gebruiken, niet gewenst)
%o //= is voor octaale integer (Zet automatisch om naar Octaal)
%x of %X //= is voor Hexadecimaale integer (zet automatisch om naar Hexadecimaal)
%% //= als je wilt het teken % tonen moet je 2 % plaatsen

```

# if in print

```java

System.out.printf("Er %s %d getal%s deelbaar door %d%n",
	aantalDeelbaarDoor == 1? "is" :"zijn" , aantalDeelbaarDoor,
	aantalDeelbaarDoor == 1? "" : "len", getal);
}

```