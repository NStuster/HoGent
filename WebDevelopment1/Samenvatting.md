# H01 [HTML - basis deel 1 - CSS intro](H01%20HTML%20-%20basis%20deel%201%20-%20CSS%20intro.md)
## Webserver - client
## HTML CSS JAVASCRIPT
## HTML
## Files en Folders
## CSS
# H02 [HTML - basis deel 2](H02 HTML - basis deel 2.md)
## Mozilla Developer Network
## Validatie website
## Lijsten
## Block en inline elementen
## Text block elements
## Text inline elelements
## Hyperlinks
## Paginastructuur
## Afbeeldingen
## Speciale characters
# H03 [HTML - Tabellen & Formulieren](H03%20HTML%20-%20Tabellen%20&%20Formulieren.md)
## Tabel
## Formulieren
## Accessibility
# H04 [CSS - basis deel 1](H04%20CSS%20-%20basis%20deel%201.md)
## CSS
## Achtergrond
## Kleuren
## Lijsten opmaken
## Text en typografie
# H05 [CSS - basis deel 2](H05%20CSS%20-%20basis%20deel%202.md)
## Inleiding: Cascading en Inheritance
## CSS Verwerking door Browsers: Cascading en Inheritance
## Developer Tools - CSS Verwerking door Browsers
## CSS Values en Units
## Browser Reset/Normalize.css
## CSS Eigenschappen die Overerfbaar zijn
## Specificity en Hoe het te Berekenen
## Gebruik van !important
## Conclusie
# H06 [Lay-out - basis boxmodel](H06%20Lay-out%20-%20basis%20boxmodel.md)
## Block vs Inline Elementen
## Display en Visibility Properties
## Text shadow
## Writing mode
## Direction
## Logical an Physical Properties
## Cursor stijl
# H07 [Lay-out - Flex](H07%20Lay-out%20-%20Flex.md)
## Lay out
## Flexbox
## Flex container
## Flex items
# H08 [Lay-out in een raster - grid, Float, Position](H08%20Lay-out%20in%20een%20raster%20-%20grid,%20Float,%20Position.md)
## CSS Grid Layout
## Hoe Grid gebruiken
## Float
## Position
# H09 [Lay-out - responsive: pages & images](H09%20Lay-out%20-%20responsive,%20pages%20en%20images.md)
## Inleiding
## Media queries
## Responsive images
# H10 [CSS Animatie](H10%20CSS%20Animatie.md)
## CSS Transistions
## CSS transistions properties
## CSS 2D transformatie
## CSS-animations
## Variabelen in CSS
# Samenvatting
## [HTML elements](./Snippits/HTML-elementen.md)
## [CSS elements](./Snippits/CSS%20elementen.md)

## CSS selectors

### Universal selector en de type selector (TE KENNEN)

| voorbeeld | 1ste teken in css | naam               | prioriteit |
| --------- | ----------------- | ------------------ | ---------- |
| \* {};    | \*                | Universal selector | 1          |
| h2{};     | naamVanElement    | Type selector      | 2          |
### Class en Id selectors (TE KENNEN)

Waar mogelijk andere selectors gebruiken.

| voorbeeld      | 1ste teken in css | naam html | prioriteit |
| -------------- | ----------------- | --------- | ---------- |
| \#archives {}; | #                 | id        | 3          |
| .archives{};   | .                 | class     | 3          |
### Selector list (aka Group selector)(TE KENNEN)

*meerdere* elementen gebruiken, *gescheiden met komma*
```css
h2, h1, .archives{};
```
### Child en Descendant combinators

#### Descendant combinator(TE KENNEN)
Een *afstammeling* selecteren, *gebruik spaties*, het meest rechtse element (key selector) zal opgemaakt worden.
```css
div p {};
```
Enkel het `p` element onder het `div` element zal opgemaakt worden, andere `p` elementen niet.

#### Child combinator (TE KENNEN)
Een *directe afstammeling* selecteren, *gebruik \>*, het meest rechtse element (key selector) zal opgemaakt worden.
```css
div > p {};
```
Enkel het `p` element *rechtstreeks* onder het `div` element zal opgemaakt worden, andere `p` elementen niet.

### Adjacent en General sibling combinator

*Selecteren op hetzelfde niveau*
#### Sibling
Alle p die *onmiddelijk naast* h1 staat. (zal niet geselecteerd worden als er een element tussen zit)
```css
h1 + p {};
```
#### General
Alle p die *naast* h1 staat. (niet per se onmiddellijk naast)
```css
h1 ~ p {};
```

### Attribute selectors
Selecteren op basis van attribuut, zet het attrubuut tussen \[\]

```css
a[href] {}
```

### Pseudo-classes (ENKELE VAN KENNEN)

Pseudo-class *start altijd met een* **:** en dan de naam van de pseudo-class
Deze kunnen we *gebruiken om iets interactief te maken met CSS*

| voorbeeld  | 1ste teken in css | naam                               | actie                  | te kennen |
| ---------- | ----------------- | ---------------------------------- | ---------------------- | --------- |
|            | :link             |                                    |                        |           |
|            | :visited          |                                    |                        |           |
|            | :active           |                                    |                        |           |
| a:hover{}; | :hover            |                                    | met muis over hooveren | X         |
|            | :first-child      | eerste kind van een parent         |                        |           |
|            | :last-child       | laatste kind van een parent        |                        |           |
|            | :only-child       | element die geen ouder heeft       |                        |           |
|            | :first-of-type    | het eerste element van dat type    |                        | X         |
|            | :last-of-type     | het laatste elemetn van dat type   |                        |           |
|            | :only-of-type     | het enige element van dat type     |                        |           |
|            | :nth-of-child(n)  | elk zoveelste child-element        |                        |           |
|            | :nth-last-child   | gerekend vanaf laatste element     |                        |           |
|            | :nth-of-type(n)   | elk zoveelste (n) element van type |                        | X         |
|            | :nth-last-of-type | gerekend vanaf laatste element     |                        |           |
|            | :empty            | leeg element                       |                        |           |

### Pseudo-elements

| voorbeeld                 | 1ste teken in css | naam                                         | gebruik                     |
| ------------------------- | ----------------- | -------------------------------------------- | --------------------------- |
|                           | ::first-line      | eerste regel opgemaakte text van een element |                             |
| p::first-letter{};        | ::first-letter    | de eerste letter                             |                             |
| a::before{content: '❤️'}; | ::before          | voor de inhoud van een element               | om afbeelding toe te voegen |
|                           | ::after           | na de inhoud van een element                 |                             |
## Flex

- 1 Dimensioneel
- Container (div) bevat elementen
	- Container:
		- `div {display: block flex;}` (Horizontaal)(zonder block flex = normale flow (Verticaal))
		- Flex containers hebben een **main axis** en een **cross axis**
	- Elementen
		- 
## Grid

- Multidemensioneel
- Container bevat elementen
	- Container
		- `display: block grid;`
		- Container met een grid
			-**Definieer de grid** (het aantal rijen en/of kolommen en hun hoogte/breedte), hier zijn *2 mogelijkheden*
				- met columns en rows
					- `grid-template-columns`
					- `grid-template-rows`
				- met areas
					- `grid-template-areas`
						- `grid-template-areas:`
							`"one three two"`
							`"one . two"`
							`"one four four";`
}
	- Elementen
		- bij areas
			- `.box1 {grid-area: one;}`
			- `.box2 {grid-area: two;}`
			- `.box3 {grid-area: three;}`

In CSS kun je geen directe berekeningen doen zoals `width: 100% - 10px;` met eenvoudige syntaxis. Echter, je kunt wel de `calc()` functie gebruiken om dit soort berekeningen uit te voeren. `calc()` laat je toe om meer complexe waarden voor CSS eigenschappen te berekenen door het combineren van verschillende eenheden.

## Gebruik van `calc()`

De `calc()` functie kan worden gebruikt om wiskundige berekeningen uit te voeren zoals optellen, aftrekken, vermenigvuldigen en delen. Hier is hoe je het kunt gebruiken om `10px` van `100%` af te trekken voor een breedte-eigenschap:

```css
.element {
    width: calc(100% - 10px);
}
```

## waarden

| Eenheid | Beschrijving                                                                                                                                                             |
| ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `%`     | Een relatieve eenheid die een percentage van een ander, relevant attribuut specificeert (zoals breedte van de oudercontainer).                                           |
| `px`    | Pixels, een absolute eenheid die overeenkomt met het aantal pixels op het scherm.                                                                                        |
| `em`    | Een schaalbare eenheid die relatief is aan de lettergrootte van het huidige element. `1em` is gelijk aan de huidige lettergrootte van het element.                       |
| `rem`   | Relatief aan de fontgrootte van het root element (`html`). `1rem` is gelijk aan de lettergrootte van de root, wat het een handige eenheid maakt voor responsieve design. |
| `vw`    | Viewport width, waarbij `1vw` gelijk is aan 1% van de breedte van de viewport.                                                                                           |
| `vh`    | Viewport height, waarbij `1vh` gelijk is aan 1% van de hoogte van de viewport.                                                                                           |
| `fr`    | Een flexibele 'fractie'-eenheid, gebruikt binnen CSS Grid Layout om een fractie van de beschikbare ruimte aan te geven.                                                  |
Voor schermgebaseerde media zijn relatieve eenheden zoals `%`, `em`, `rem`, `vw`, en `vh` vaak nuttiger omdat ze de layout kunnen laten reageren op de omgeving van de gebruiker, zoals schermgrootte en -resolutie.