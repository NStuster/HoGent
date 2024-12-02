
# Logische poorten
## Overzicht
![[Pasted image 20241202195341.png]]


## Anders bekeken

We behouden de werking van de EN-, OF en Exclusieve OF-
poorten, maar we bekijken:
- de ingang A als signaal én
- de ingang B als stuurlijn.



## EN-poort als doorlaatfilter.
Als stuurlijn 1 is laat deze het signaal normaal door.
![[Pasted image 20241202195503.png]]

| Stuurlijn | Signaal | Uit |
| --------- | ------- | --- |
| 0         | 0       | 0   |
| 0         | 1       | 0   |
| 1         | 0       | 0   |
| 1         | 1       | 1   |
- Stuurlijn = 0 => Signaal wordt geblokkeerd (uit = 0).
- Stuurlijn = 1 => Signaal wordt doorgelaten.

## Exclusieve OF-poort als flexibele invertor
Als stuurlijn 1 is inverteert deze de waarde van het signaal.
![[Pasted image 20241202195719.png]]


| Stuurlijn | Signaal | Uit |
| --------- | ------- | --- |
| 0         | 0       | 0   |
| 0         | 1       | 1   |
| 1         | 0       | 1   |
| 1         | 1       | 0   |
- Stuurlijn = 0 => Signaal wordt doorgelaten.
- Stuurlijn = 1 => Signaal wordt geïnverteerd.

## OF-poort als samensteller

De OF-poort kan signalen samenvoegen naar de uitgang.
Hierbij is de uitgang 1 zelfs als slechts op één van de ingangen een signaal aanwezig is terwijl er op de andere ingangen signaal 0 wordt aangeboden.
Enkel als alle signalen 0 zijn is de uitgang 0.

![[Pasted image 20241202195952.png]]


| X   | Y   | Z   | Sign | Uitgang |
| --- | --- | --- | ---- | ------- |
| 0   | 0   | 0   | 0    | 0       |
| 0   | 0   | 0   | 1    | 0       |
| 0   | 0   | 1   | 0    | 1       |
| 0   | 0   | 1   | 1    | 1       |

# Combinatorische schakelingen

Een combinatorische schakeling is een netwerk van logische poorten dat een vooropgestelde functie uitvoert.

## De decoder

**Dient om een selectie te maken op basis van een binaire input.**

Functie: alle uitgangen zijn 0 met uitzondering van die ene uitgang waarvan de index (adres) als binair getal op de ingangen staat.
Belangrijk! Bij een decoder is precies één uitgang hoog.

**Decoder is op basis van AND poorten**

![[Pasted image 20241202200545.png]]

![[Pasted image 20241202200558.png]]

| A   | B   | C   |     | D0  | D1  | D2  | D3  | D4  | D5  | D6  | D7  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 1   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 1   | 0   | 1   | 0   | 0   | 0   | 0   | 0   | 0   |
| 0   | 1   | 0   | 2   | 0   | 0   | 1   | 0   | 0   | 0   | 0   | 0   |
| 0   | 1   | 1   | 3   | 0   | 0   | 0   | 1   | 0   | 0   | 0   | 0   |
| 1   | 0   | 0   | 4   | 0   | 0   | 0   | 0   | 1   | 0   | 0   | 0   |
| 1   | 0   | 1   | 5   | 0   | 0   | 0   | 0   | 0   | 1   | 0   | 0   |
| 1   | 1   | 0   | 6   | 0   | 0   | 0   | 0   | 0   | 0   | 1   | 0   |
| 1   | 1   | 1   | 7   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 1   |

---


![[Pasted image 20241202200631.png]]

![[Pasted image 20241202200657.png]]



---
![[Pasted image 20241202201311.png]]

Een decoder met n ingangen teken je als volgt:
- Inverteer alle ingangen
- Plaats 2n EN-poorten met n ingangen
- Benoem de uitgangen D0 tem. D(2n-1)
- De ide ingang van elke EN-poort wordt ofwel
met de ide ingang van de schakeling
verbonden ofwel met zijn inverse, afhankelijk
van de binaire schrijfwijze van de index
- 0 => inverse ingang
- 1 => ingang

## De multiplexer

![[Pasted image 20241202201359.png]]


