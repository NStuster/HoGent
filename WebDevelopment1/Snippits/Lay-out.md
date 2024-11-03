# CSS Boxmodel
[CSS box model - CSS: Cascading Style Sheets | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_box_model)

![[Pasted image 20241030094121.png]]

![[Pasted image 20241030094718.png]]


|     |     |     |     |
| --- | --- | --- | --- |
|     |     |     |     |


# Box model eigenschappen

**Block**: neemt de maximale breedte in en in de hoogte wordt bepaald door de inhoud
**Inline**: nemen in de breedte en hoogte enkel de de ruimte in die ze inhoudelijk nodig hebben

## Display

| CSS          |     |                                                                          |
| ------------ | --- | ------------------------------------------------------------------------ |
| inline       |     | om bijvoorbeeld een lijst horizontaal te maken                           |
| block        |     | de box neemt de volledige horizontale ruimte in voorzien door de parent. |
| inline-block |     | neemt de breedte van de inhoud in                                        |
| none         |     | om te verbergen (niet weergeven), ruimte verdwijnt ook                   |
|              |     |                                                                          |
## Width Height

Je kan **enkel een width en height instellen voor block en inline-block elementen!** Je kan geen width/height instellen voor inline elementen. Deze nemen steeds de breedte en hoogte in van de inhoud!!

**Stel de hoogte bij voorkeur niet in!** Bij afbeeldingen kan je wel de hoogte instellen

| CSS    |     |     |
| ------ | --- | --- |
| width  |     |     |
| height |     |     |

- CSS pixels (absolute lengte eenheid): px
- percent - relatieve waarde tov van de parent container: %
- em–relatieve waarde tov de grootte van het gebruikte lettertype. (1em = breedte van de M in de gekozen font).
- rem- relatieve waarde tov de grootte van het gebruikte lettertype van het root element.


## Margin

- **Ruimte aan de buitenkant van een element.** Gebruiken voor creatie witruimte tussen elementen.
- Is enkel links en rechts maar niet boven en onder
- Een marge is altijd transparant. We zien de achtergrondkleur van het parent element.

### Collapsing Margins
De browser geeft ‘boxes’ niet altijd weer zoals verwacht. **Wanneer de bottom margin van 1 element de top margin van een ander element raakt**, is het resultaat *NIET de som*, maar *de grootste margin*

Collapsing Margins tussen opeenvolgende elementen (verticaal)
- voor aangrenzende verticale blokelementen in de normale flow, wordt de grootste marge behouden. De kleinste marge zal dichtklappen (wordt 0)
## Padding

- **Witruimte tussen de inhoud en de rand.**
- Hoogte neemt niet meer ruimte in maar is wel groter
- We zien de achtergrondkleur van het element waarop de padding wordt toegepast. Indien geen achtergrondkleur wordt toegepast zien we de achtergrondkleur van het parent element

|     |     |
| --- | --- |

## visible

| CSS     |     |                                                                         |
| ------- | --- | ----------------------------------------------------------------------- |
| visible |     | (default)                                                               |
| hidden  |     | verbergt het element, maar behoudt de ruimte die het element inneemt in |
## border

Van een border kunnen we 3 waarden instellen : de breedte, kleur en stijl 
- border-width (px, %, em, rem, thin, medium, thick)
- border-style (none/hidden/dotted/dashed/solid/double/…)
- border-color (een kleurwaarde of transparent)
  
Men kan ook de drie eigenschappen combineren in een shorthand:
- border: 1px solid #000; (volgorde van de waarden is niet belangrijk): dit is een zwarte solid border van 1px.
- Bij een transparante rand zie je de achtergrondkleur van het elemen

## calc()
Met de calc ()-functie kan je berekeningen uitvoeren in een declaratie: width: calc(100%- 30px); ‘whitespace 
- Je kan de standaardoperatoren +, -, * en / gebruiken, alsook ronde haakjes en je kan verschillende eenheden combineren.
- Let op de + en de - operator moeten voorafgegaan en gevolgd worden door ’.
## box-sizing

# Blok horizontaal **centreren**

```css
div { 
	width: 80%; /* top en bottom krijgen waarde 0, left en right krijgen de waarde auto. Hierdoor wordt het div-element gecentreerd binnen het ouderelement */ 
	margin: 0 auto; 
}

```

of 

```css
margin-left: auto;
margin-right: auto;
```

### beter

```css
margin-inline: auto;
```