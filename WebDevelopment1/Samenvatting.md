# H01 [HTML - basis deel 1 - CSS intro](H01%20HTML%20-%20basis%20deel%201%20-%20CSS%20intro.md)
## Webserver - client
## HTML CSS JAVASCRIPT
## HTML
## Files en Folders
## CSS
# H02 [HTML - basis deel 2](H02%20HTML%20-%20basis%20deel%202.md)
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
#### Verschil tussen id en class

|Kenmerk|**id**|**class**|
|---|---|---|
|**Gebruik**|Uniek element, wordt maar één keer toegepast|Herbruikbaar voor meerdere elementen met dezelfde styling|
|**Selector in CSS**|`#hoofding {}`|`.kolom {}`|
|**Specifiteit**|Hoger (overrulet classes en element-selectors)|Lager (maar kan gecombineerd worden, zoals `.kolom p {}`)|
|**Toepassing**|`<div id="hoofding"></div>`|`<div class="kolom"></div>`|

Kort samengevat: kies voor een **id** als je slechts één specifiek element wilt aanspreken (bijv. een “hero” banner of “main-menu”-container), en gebruik een **class** als je dezelfde stijl op meerdere elementen wilt toepassen (bijv. meerdere kolommen, knoppen, etc.).
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
### !important

```css
selector {
  property: value; /* normal declaration */
  property: value !important; /* important declaration (preferred) */
  property: value ! important; /* important declaration (not preferred) */
}
```

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

## Overzicht van eenheden

Voor schermgebaseerde media zijn relatieve eenheden zoals `%`, `em`, `rem`, `vw`, en `vh` vaak nuttiger omdat ze de layout kunnen laten reageren op de omgeving van de gebruiker, zoals schermgrootte en -resolutie.

---

| **Eenheid** | **Beschrijving**                                                                                                                                                        |
| ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `%`         | Relatieve eenheid die een percentage van een ander, relevant attribuut specificeert (meestal de breedte van de oudercontainer).                                         |
| `px`        | Absolute eenheid gebaseerd op het aantal fysieke pixels op het scherm (al is dit in moderne browsers relatief: 1px schaalt op hoge resoluties).                         |
| `em`        | Schaalbare eenheid die relatief is aan de **lettergrootte van het **huidige** element**. _Voorbeeld_: `1em` = huidige lettergrootte, `2em` = 2 × huidige lettergrootte. |
| `rem`       | Relatief aan de **fontgrootte van het root-element** (meestal de `<html>`). _Voorbeeld_: `1rem` = lettergrootte van `<html>`; `2rem` = 2 × lettergrootte van `<html>`.  |
| `vw`        | _Viewport width_: `1vw` = 1% van de breedte van het browservenster.                                                                                                     |
| `vh`        | _Viewport height_: `1vh` = 1% van de hoogte van het browservenster.                                                                                                     |
| `fr`        | _Fraction_-eenheid, gebruikt in **CSS Grid** om een fractie van de beschikbare ruimte te vertegenwoordigen.                                                             |

---

### 2. Wanneer welke eenheid gebruiken?

#### 2.1 Procenten (`%`)

- **Wanneer gebruiken?**  
    Gebruik `%` **vaak bij layouts die meebewegen met de breedte van hun container**. Vooral handig voor *breedtes*, *marges* en *paddings* **binnen flexibele layouts**.
- **Voordelen**
    - **Zeer geschikt voor responsieve ontwerpen**: elementen schalen mee met de schermbreedte of de oudercontainer.
- **Nadelen**
    - Kan soms **lastig voorspelbaar zijn wanneer het parent-element óók in percentages is gedefinieerd**, waardoor je te maken kunt krijgen met geneste schaalfactoren.

#### 2.2 Pixels (`px`)

- **Wanneer gebruiken?**  
    Handig als je pixelprecisie wilt, bijvoorbeeld bij het ontwerpen van iconen of randen waarvan de exacte grootte vast moet liggen.
- **Voordelen**
    - Zeer eenvoudig en duidelijk: 10px is altijd 10px.
- **Nadelen**
    - **Niet schaalbaar bij gebruik van bijvoorbeeld zoom-instellingen**, tenzij de browser deze pixels ook meeschalend interpreteert (wat moderne browsers doorgaans wel doen).
    - Kan **minder flexibel zijn voor responsieve ontwerpen** als je te veel vaste pixelwaardes gebruikt.

#### 2.3 EM (`em`)

- **Wanneer gebruiken?**
    - Veel **gebruikt voor lettergroottes binnen een component**, vooral als je wilt dat onderdelen in verhouding met de fontgrootte van het element blijven.
    - Ook handig om bijvoorbeeld spacing (marges, padding) consistent te houden in verhouding tot de tekstgrootte.
- **Voordelen**
    - Alles blijft schaalbaar op basis van de fontgrootte van het **huidige** element.
    - Houdt samenhang binnen één component.
- **Nadelen**
    - Kan verwarrend zijn als `em` binnen geneste elementen wordt gebruikt, omdat `em` zich telkens baseert op de **directe** lettergrootte (die kan veranderen in child-elements).

#### 2.4 REM (`rem`)

- **Wanneer gebruiken?**
    - Zeer populair voor het **definiëren van universele marges, paddings en fontgroottes**.
    - Zorgt voor een consistente schaal op basis van de root (`html`) font-size.
- **Voordelen**
    - Eenvoudiger te begrijpen dan `em` in geneste situaties: `1rem` *is altijd hetzelfde, ongeacht hoe diep je in de DOM genesteld zit*.
    - Maakt het gemakkelijk om het hele ontwerp te schalen door slechts de `font-size` van het `html`-element aan te passen.
- **Nadelen**
    - Alle afmetingen zijn (letterlijk) afhankelijk van die ene root font-size. Als je per component dynamiek nodig hebt in lettergroottes, kan `em` soms geschikter zijn.

#### 2.5 Viewport-eenheden (`vw` en `vh`)

- **Wanneer gebruiken?**
    - **Zeer geschikt voor elementen die zich moeten aanpassen aan de grootte van het scherm**, ongeacht het parent-element.
    - Denk aan full-width banners (`width: 100vw`) of full-height section backgrounds (`height: 100vh`).
- **Voordelen**
    - Altijd gebaseerd op het viewportformaat (breedte of hoogte van het browservenster).
    - Handig bij het maken van “hero-secties” die altijd 100% van de schermhoogte moeten zijn.
- **Nadelen**
    - Je verliest controle wanneer de layout complexer wordt of het scrollgedrag van de gebruiker meespeelt (bijvoorbeeld op mobiele apparaten met dynamische browser UI-balk).
    - **Kan problemen geven als je de website op heel kleine schermen bekijkt** (of bij het roteren van mobiele apparaten), omdat de dimensies direct veranderen.

#### 2.6 FR (`fr`) (Fracties in GRID)

- **Wanneer gebruiken?**
    - **Alleen van toepassing binnen** *CSS Grid*.
    - Gebruik `fr` om kolommen/rijen in te delen als een fractie van de **beschikbare** ruimte. Bijvoorbeeld:
        
        ```css
        .container {
          display: grid;
          grid-template-columns: 1fr 2fr 1fr; 
        }
        ```
        
- **Voordelen**
    - Zeer krachtig bij het maken van flexibele en toch voorspelbare grid-layouts.
    - Je hoeft geen berekeningen meer te doen in procenten of pixels, omdat de browser de resterende ruimte verdeelt.
- **Nadelen**
    - Alleen te gebruiken in combinatie met `display: grid`.
    - Minder geschikt als je bijvoorbeeld precieze, vaste afmetingen wilt vastleggen.

---

### 3. Praktische richtlijnen

**1. Voor typografie en spacing binnen één element**

- Gebruik `em` wanneer je wilt dat interne elementen mee schalen met de huidige lettergrootte.
- Gebruik `rem` als je een consistente basis wilt voor de hele site, en vooral als je vermijdt dat geneste `em`-waardes verwarrend worden.

**2. Voor algemene lay-out, bredere designcomponenten**

- Gebruik `%` wanneer de afmeting in verhouding moet staan tot de breedte van de oudercontainer (zoals een fluid container in een responsive design).
- Gebruik `px` als je behoefte hebt aan precisie (maar wees matig, omdat het minder schaalbaar kan zijn).

**3. Voor full-screen of hero-secties**

- Gebruik `vw` en `vh` om elementen altijd op een percentage van de viewport breedte of hoogte te krijgen.
- Let op mobiele browsers: daar verschuift de viewport-height soms door de adresbalk en andere UI-elementen.

**4. Voor (complexe) grids**

- Gebruik `fr` in *CSS Grid* om kolommen/rijen te verdelen over de beschikbare ruimte.
- Combinaties van `fr`, vaste waarden (`px`) en percentages (`%`) kunnen samen in één grid werken, als je sommige kolommen/rijen wel een vaste breedte of hoogte wilt geven.

---

### 4. Samenvatting

- **`%`**: Ideaal voor responsieve breedtes/hoogtes, gekoppeld aan de oudercontainer.
- **`px`**: Absolute waarde voor precieze controle, maar minder flexibel.
- **`em`**: Relatief aan de lettergrootte van het **huidige** element; handig voor consistente schaal binnen één component.
- **`rem`**: Relatief aan de root-lettergrootte; goed voor consistente schaal doorheen de hele site.
- **`vw` en `vh`**: Relatief aan de browserviewport; ideaal voor full-width/-height componenten.
- **`fr`** (in CSS Grid): Fractie van de **beschikbare** ruimte; perfect om kolommen/rijen dynamisch in te delen.

Door de juiste eenheid te kiezen voor de juiste situatie houd je je CSS leesbaar en schaalbaar. Experimenteer vooral met de verschillende eenheden om te zien welke het beste aansluiten bij jouw ontwerp- en layoutwensen. Veel succes!