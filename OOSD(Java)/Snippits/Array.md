#Samenvatting  #Java #HoGent #toegepasteinformatica #OOSD #Array

# 1 dimensionale statische array

## Opbouw 1 dimensionale statische array

```java
// declaratie
int[] a;
private boolean[] plaatjes;

// creatie
a = new int[5]; //array met 5 index plaatsten (0-4)
plaatjes = new boolean[100] //array met 100 index plaatsten (0-99)
//Elk element van de array wordt automatisch geïnitialiseerd bij de creatie van de array.

// declaratie en creatie
int[] b = new int[10]; //array met 10 index plaatsten (0-9)
int[] array = { 32, 27, 64, 18, 95, 14, 90, 70, 60, 37 }; //stelt meteen de waarde van de indexen in 0=32,1=27,...
double[] decGetallen = {2.4, 5.689, 8.45, 9.7};

//instellen van een waarde bij een array index
plaatjes[7] = true;
a[0] = 5;
// Het laatste element van a instellen met 20
a[a.length - 1] = 20; //lengthe - 1 omdat we vanaf 0 moeten tellen niet 1

//array.lengt geeft de lengte van mijn array
System.out.printf("lengte van array a is %d%n", a.length);
System.out.printf("lengte van array b is %d%n", b.length);


```

## Enhanced for (gebruik bij array)

- Enhanced for ***kan enkel de array doorlopen*** (niet wijzigen)
- **Enhanced for kan *geen* elementen van een *array opvullen***

```java
//vb elementen van array doorlopen, som bepalen

int som = 0;
for(int getal: array ){
//type naamNaarKeuze : naamVanDeArray
	som += getal;
}
System.out.println(som);


String zin = "";
for (double element: decGetallen)
	zin += String.format("%.2f ", element); //strings concateneren //String.format werkt zoals een printf
System.out.println(zin);


int index = 0; //want een enhanced for heeft geen index, dus maken we die aan
for(int getal: array) {
	System.out.printf("%d%8d%n",index++, getal);
}

```