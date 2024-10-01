#Samenvatting #Java #HoGent #toegepasteinformatica #OOSD #RekenkundigeBewerkingen 

# Volgorde van bewerking

Eerst haakjes dan exponenten en wortels dan * en / dan + en -

# Bewerkingen

```java

+ //optellen

- //afterkken

* //vermenigvuldigen

/ //resultaat van een deling met enkel een geheel getal als resultaat (bij integers)

% //geeft rest van een breuk als een integer

```

## Deling

```java
int getal3 = 7;

int getal4 = 5;

int deling = getal3 / getal4;

double delingDec, decGetal2 = 7.23;

//double / int of omgekeerd ==> double

delingDec = decGetal2 / getal4;

System.out.printf("resultaat %.1f / %d is %.1f%n",decGetal2, getal4, delingDec);

delingDec = 1.0 + 7 / 5; //dit geeft geen 2.4 maar 2.0 want hij intreperteerd 7 en 5 als int omdat er geen komma staat

delingDec = 7 / 5; //resultaat geeft 1 niet tegenstaande delingDec een Double is, dit komt omdat 7 en 5 als int wordt geintreperteerd

System.out.printf("resultaat %d / %d is %d%n",getal3, getal4, deling);

int rest = getal3 % getal4;

System.out.printf("resultaat %d %% %d is %d%n",getal3, getal4, rest);


```

# Verkorte notaties

```java

waarde += 10; //waarde = waarde + 10;
waarde /= 2; //waarde = waarde / 2;
waarde %= 4; //waarde = waarde % 4;
waarde++; //waarde = waarde + 1;
waarde--; //waarde = waarde - 1;
++waarde; //waarde = waarde + 1;
--waarde; //waarde = waarde - 1;

//AANDACHT:
//hieronder wordt eers z gedefinieerd met waarde en dan wordt waarde +1 uitvoerd
waarde = 2;
int z = 0;
z = waarde++; // z = waarde; waarde = waarde + 1;

//hieronder word eerst +1 gedaan en dan word waarde aan z gedefinieerd
waarde = 2;
z = 0;
z = ++waarde; //waarde = waarde + 1; z = waarde;

```

## voorbeeld:

```java

int a = 0, b = 0, c = 0;

// ++variabele is eerst de ++berekening
// variabele++ is ++ als laatste
a = ++b + ++c; // a = 2 b = 1 c = 1
// eerst b++ en c++ dan b + c

a = b++ + c++; // a = 2 b = 2 c = 2
// eerst b + c dan b++ en c++

a = ++b + c++; // a = 5 b = 3 c = 3
// eerst b++ dan c + b dan c++

a = b-- + c--; //a = 6 b = 2 c = 2
// eerst b + c dan b-- dan c--

```

# Omzetten van double naar int:

```java

int integerGetal;
double kommaGetal = 4.25;

integerGetal = (int)kommaGetal; // met (int) zetten we een double om naar een integer


```


# Math

## Afronden

```java

getal = Math.round(getal2);

```

