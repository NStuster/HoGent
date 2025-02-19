# Webserver - client

Als je een webpagina bezoekt, ga je eigenlijk een *verzoek doen aan een server* (URL = adres van webpagina – https://www.vrt.be/nl/) om een *webpagina naar jouw toestel (laptop – tablet – smartphone) door te sturen*. 

Als deze pagina op de server staat, zal deze naar jouw toestel doorgestuurd worden. Je browser (de client) op je toestel zal deze pagina opbouwen en weergeven.

Surfen op het web maakt dus gebruik van een *client-server architectuur*. Meer details hierover in het OLOD Computer Networks.

Client (webbrowser app) -> server (html server app) -> Client (webbrowser app)

# HTML CSS JAVASCRIPT
De client (browser) begrijpt drie talen:

-  *HTML* – ‘HyperText Markup Language’ is de taal die je gebruikt om je webpagina’s te beschrijven. Met behulp van HTML-codes breng je *structuur en betekenis (semantiek)* aan in je webpagina’s, door middel van headings, tabellen, afbeeldingen, lijsten, … (De HTML-taal voorziet ook in enkele zeer eenvoudige gebruikersinteracties: het aanklikken van verwijzingen, het invullen van tekstvelden, het doorsturen van formulierdata naar de server,…)

- *CSS* – ‘Cascading Style Sheets’ is de taal waarmee je de *opmaak en layout* van je webpagina‘s beschrijft. (Met behulp van CSS zijn eenvoudige gebruikersinteracties mogelijk: bijv. een grotere afbeelding weergeven als je over een miniatuur afbeelding hovert, …) 

- *JavaScript* is een programmeertaal waarmee je *complexe interacties* aan je webpagina‘s kan toevoegen

# HTML

Een HTML-document, HTML-pagina, webpagina of HTML-bestand 

- is een *tekstbestand* met als *bestandsextensie .html*
- is *platform onafhankelijk*
- je kan *webpagina’s maken:*
	 - met behulp van een *eenvoudig tekstbewerkingsprogramma* (text editor) bijv. notepad, brackets, … 
	 - met een *IDE (Integrated Development Environment)* bijv. Visual Studio, WebStorm, … 
	 - met een *WYSIWYG HTML-editor* programma bijv. Adobe Dreamweaver, … 
	
 Voor dit olod gebruiken we Visual Studio Code als text editor.

HTML beschrijft de *structuur* van je HTML document en de *betekenis (semantiek)* van de verschillende onderdelen. 

De drie belangrijkste begrippen zijn: 
- *element*
- *tag*
- *attribute*

### Elements en tags

[HTML Elements (w3schools.com)](https://www.w3schools.com/html/html_elements.asp)

Een *HTML-pagina (webpagina) bevat HTML-elementen*. Een voorbeeld van een veel gebruikt HTML-element is een p-element (paragraph element). 

Merk op dat het *begin en het einde* van het p-element aangeduid worden door middel van een *‘Opening tag’ en een ‘Closing tag’*.

```html
<!-- de volledige lijn code hier onder is een element -->
<openingtag>Content goes here...</closingtag>

```

Voorbeeld van Elementen met Tags:
```html
<!DOCTYPE html>  
<html>  
<body>  
  
<h1>My First Heading</h1>  
<p>My first paragraph.</p>  
  
</body>  
</html>
```
#### void elements

Sommige HTML-elementen hebben *alleen een start-tag en geen end-tag* we noemen ze *void elements*.
Het *Line Break element*   is bijvoorbeeld een void element. 
Met de line break breken we de lijn en gaat de text na de linebreak verder op de volgende lijn.

```html
<br>
<!-- In plaats van <br> schrijft men ook soms <br /> omdat deze syntax compatibel is met XML -->

<!-- voorbeeld: -->
<p> De beste hogeschool in Vlaanderen<br> en kleine omstreken. </p>

```

#### geneste element

Je kan *elementen in andere elementen stoppen*, dit noemen we nesten van elementen. Om het woord very te benadrukken in onderstaande paragraaf, kunnen we het woord in een *strong-element* stoppen. Het strong-element is dan genest in het p-element.
```html
<p>My cat is <strong>very</strong> grumpy.</p>
```

#### block en inline elementen

**Block elements** (\<h1>\<\\h1>,\<p>\<\\p>,....) 
- Een block-level element *start altijd op een nieuwe regel en neemt de volledige beschikbare breedte in* op de webpagina. 

**Inline elements** (\<a>,\<img>,...)
- Een inline element *begint niet op een nieuwe regel en neemt maar zoveel breedte is als nodig*.

#### \<span> en \<div> elementen

Zijn twee HTML-elementen die *geen semantische betekenis* hebben nl.

 **\<div>** is een block element en *een algemene container*. Het wordt veelvuldig gebruikt worden *om elementen te groeperen*. Bijvoorbeeld om ze daarna op te maken met CSS of omdat ze een gemeenschappelijk attribuut, zoals bijv. het lang-attribuut hebben. 
 
  **\<span>** is net als het \<div> *een algemene container, maar is een inline element*. 
  
  Gebruik *\<span> en \<div> enkel als er geen semantisch element voorhanden is*.


### Attributes

Attributen bevatten *extra informatie over een element*. Elementen kunnen geen, één of meerdere attributen hebben.
Een attribuut bestaat uit een *naam en een waarde* en wordt *in de openingstag* geplaatst na de naam van de tag.
De attribuutwaarde wordt toegekend aan de *attribuutnaam* door een *gelijkheidsteken*. De *waarde staat tussen dubbele aanhalingstekens*. (dit mogen ook enkele aanhalingstekens zijn, maar wij zullen steeds dubbele gebruiken)

Syntax: attribute name="attribute value"

```html
<p class="editor note">My cat is very grumpy.</p>
```
In het voorbeeld is class de attribuutnaam en editor-note de attribuutwaarde.


```html
<p class="editor-note">Dit is een voorbeeld van een klasse</p>
<!-- class is een atrribuutnaam en editor-note is de attribuutwaarde, samen is dit een attribuut -->
```


extra: je kan ook zelf attributen aanmaken en inhoud geven (niet te kennen)
```html
<p eigenAttribuut="Ideaal voor een tooltip text">Dit is een voorbeeld van een klasse</p>
```

### Comments (commentaar)

Naast HTML-tags kan je in een webpagina ook commentaar opnemen:
```html
<!-- Dit is commentaar -->
```

Om in Visual studio code commentaar toe te voegen doen we dit met *ctrl + :*

### Soorten elementen

[HTML Element Reference](https://www.w3schools.com/tags/default.asp)

| naam element | openingtag element |
| ------------ | ------------------ |
| Koppen       | \<h1> tot \<h6>    |
| Paragraaf    | \<p>               |
| Hyperlink    | \<a>               |
| Afbeelding   | \<img>             |
#### Koppen en paragrafen

De \<h1> tot \<h6> HTML elementen stellen zes niveaus van section heading voor.
Het \<p> HTML element stelt een paragraaf voor.
```html
<h1>Heading level 1</h1>
<h2>Heading level 2</h2>
<p>
		Dit is een paragraaf text.
		Dit is een paragraaf text.
</p>
```


```html
<p>Dit is een parafgraaf</p>
<!-- <p> is een begin tag -->
<!-- </p> is een eind tags -->
<!-- <br> is ook een tag -->
<!-- <p>Dit is een parafgraaf</p> is een element -->
```

#### Hyperlinks

Met het element \<a> (of het anchor element) kunnen we een hyperlink creëren in een HTML document. Met het *attribuut* **href** kunnen we aangeven naar welke locatie de bezoeker moet gaan wanneer er op de hyperlink geklikt wordt. De inhoud (content) van het element is een indicatie van de bestemming van de link en wordt in browsers standaard onderlijnd weergegeven.

```html
<p>
Bekijk de info op <a href=https://www.hogent.be>HoGent</a> om meer te weten te komen over Hogeschool Gent.
</p>
```

#### Afbeelding

Om een afbeelding toe te voegen aan een webpagina wordt het \<img>element gebruikt. 

Dit element *bevat geen image maar wel een verwijzing naar de image*. Hiervoor dient het **src**-*attribuut*. De waarde van *dit attribuut bevat de locatie van de image*. Dit kan binnen de website zijn, maar het attribuut kan ook verwijzen naar een image op een andere website.

Een *verplicht attribuut* bij \<img> is **alt**. Dit is een korte beschrijving van de image. Dit is o.a. voor slechtziende gebruikers die door middel van ‘screen reading software’ pagina’s “bekijken”. Deze software zal de waarde van het alt-attribuut voorlezen.

Merk op: het img-element heeft geen content (en dus geen closing tag). *Het is een void-element*

```html
<img src="penguin.jpg" alt="A Rockhopper Penguin standing on a beach.">
```

#### Global attributes

[Global attributes - HTML: HyperText Markup Language | MDN (mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes)

Welke attributen je allemaal kan *gebruiken bij een bepaald HTML-element* kan je o.a. *opzoeken op de MDN website*.

Een *aantal attributen kan je bij elk HTML-element gebruiken*. We noemen deze globale attributen. Enkele veel gebruikte *globale attributen* zijn: 
- **class**: specifieert een of meerdere class names voor een element. 
- **id**: definieert een unieke identifier (ID) voor een element. 
- **lang**: stelt de taal in van een element.

#### id attribuut

Het id-attribuut definieert een *unieke identifier (ID) voor een element*.
- id’s zijn *case sensitive* (hoofdlettergevoelig)
- id’s mogen *geen spaties* bevatten

```html
<button id="feedback-button">Feedback</button>
```

#### class-attibuut

- Het class-attibuut specifieert één of meerdere class names voor een element (in deze introductie zullen we ons beperken tot één class name, zie verderop voor het gebruik van meerdere class names bij een element)
	- class names zijn case sensitive (hoofdlettergevoelig)
	- class names mogen geen spaties bevatten

```html
<p>Narrator: This is the beginning of the play.</p>
<p class="note">Above point sounds a bit obvious. Remove/rewrite?</p>
<p>Narrator: I must warn you now folks that this beginning is very exciting.</p>
<p class="note">[Lights go up and wind blows; Caspian enters stage right]</p>
```

- classes laten ons toe om meerdere elementen te selecteren voor opmaak met CSS (of voor manipulatie met JavaScript)
#### het lang-attribuut

Via het lang-attribuut *stel je de* **taal** *in van een element*. Dit is niet verplicht maar is handig voor zoekrobotten, screenreaders, … 

Mogelijke waarden zijn *"en"* voor Engels, *"fr"* voor Frans en *"nl"* voor Nederlands.

Best practice: *stel steeds de standaardtaal in* van je webpagina door aan het **html**-*element* een *lang-attribuut* toe te voegen

```html
<html lang="nl">
```

Het is *ook mogelijk* om naast de taal een **regio** te vermelden. Bijvoorbeeld en-GB => Engels zoals gebruikt in Groot-Brittanië.

```html
<p lang="en-GB">This paragraph is defined as British English.</p>
```

### HTML5 Specificatie

In dit OLOD wordt gewerkt met HTML5.

Een overzicht van de verschillende versies van HTML: zie appendix.

De HTML5 specificatie: http://www.w3.org/TR/html5/. Het *World Wide Web Consortium (W3C)* en het *WHATWG* zijn de organisaties die momenteel *verantwoordelijk zijn voor de ontwikkeling van HTML5*.

### Opbouw van HTML5 document

Alle webpagina’s hebben een gelijkaardige opbouw
```html
<!DOCTYPE html>
<html lang="nl">
  <head>
	<meta charset="UTF-8" />
	<title>Hello World</title>
  </head>
  <body>
	<h1>Hello World!!</h1>
	<p>This is a web page.</p>
  </body>
</html>
```

#### \<!DOCTYPE html\>

```html
<!DOCTYPE html>
```
- *is steeds de eerste lijn in je document*
- het is *geen html-tag*, het is een *instructie voor de browser* en geeft aan volgens welke *specificatie de HTML moet worden geïnterpreteerd* door de browser.
- *wijst op HTML versie 5*.
- alhoewel DOCTYPE ook in kleine letters mag geschreven worden *schrijven we het in hoofdletters* om aan te geven dat het geen html-tag is.
- een DOCTYPE is ook nodig als je jouw HTML-code wilt laten controleren op fouten door een Validator (zie verderop)

#### html element

*Na de DOCTYPE-regel volgt het* **html**-*element*. Het html-element *bevat twee elementen* nl. **head** en **body**.
- **head**-*element*: *bevat metadata*, dit is extra informatie over de pagina zoals de gebruikte karakterset, de title van je document, linken naar externe bestanden zoals een css-bestand (zie verderop), … De title wordt weergegeven in je browser tabblad, dit is het enige visuele element van het head-element.
- **body**-*element*: bevat *alle zichtbare content* van onze webpagina

## Document Tree (DOM)

- Je kan de document tree visualiseren in VS Code: in Explorer > Outline > Sort By: Position

![](./attachments/20241230130049.png)

## Live Server

- Om de live server te starten en index.html weer te geven in jouw standaard Browser klik je in VS Code met de rechtermuisknop op index.html en kies je Open with Live Server.

# Files en Folders

## Naamgeving

Gebruik *steeds kleine letters* voor namen van mappen (folders) en bestanden (files). 
- Op Windows zijn map- en bestandsnamen case-insensitive (hoofdletterongevoelig) maar dit is niet het geval op linux.

Gebruik *geen spaties*.
- Gebruik *min-tekens* of onderstrepingstekens in map- en bestandsnamen *ter vervanging van spaties*.
- Google raadt aan om min-tekens te gebruiken in plaats van onderstrepingstekens. Wil je dus jouw webpagina optimaliseren voor de google zoekrobot gebruik dan min-tekens ipv van onderstrepingstekens.

*Vermijd speciale karakters* in map- en bestandsnamen. Sommige karakters zijn niet toegestaan en andere hebben een speciale betekenis.

## Folder structuur

Het is *wenselijk om je website op te delen in folders*, zodat alles overzichtelijk en geordend blijft.

Folders hebben een *eenvoudige naam*, meestal 1 woord.

Bij een *kleine website* met een beperkt aantal pagina’s plaats je alle HTML bestanden *in de root folder* van je site.

Bij een *grotere website* wordt er steeds gewerkt met een menu dat per menu-item een aantal pagina’s bevat. Je maakt dan best een *folder per menu-item* aan, waarin alle pagina’s geplaatst worden.

De *root bevat steeds je index.html* (startpagina)
- Webservers gaan, indien er geen bestandsnaam vermeld is in de URL automatisch op zoek naar de index.html pagina

http://website.com -> http://website.com/index.html

De overige bestanden zoals *afbeeldingen, CSS, pdf-bestanden, javascript plaats je in aparte mappen*.
- folder *“images” voor je afbeeldingen*.
- folder *“css” of “styles” voor de stijlbestanden*.
- *eventueel samen in de map assets* bij kleine hoeveelheid

Merk op: indien je veel afbeeldingen gebruikt, kan je binnen de map images zelf meerdere mappen aanmaken per onderwerp.

*Folder structuur bepaalt ook de url*
# CSS

*Cascading Style Sheets* (afgekort CSS) is de technologie voor de *opmaak van je webpagina*.

CSS-code *bestaat uit stijlregels* waarmee we de stijl (bijv. kleur, de lettergrootte, …) en de lay-out (bijv. meerdere kolommen, …) van webpagina’s kunnen vastleggen.

De belangrijkste begrippen in CSS zijn: 
- **selector**
- **style rule** (stijlregel), *declaration*, *property*, *value*


Een aantal begrippen
- **Selector**: duidt aan *welk(e) element(en)* beïnvloed worden door deze stijlregel. Is het ‘target’ in ons HTML document (hier alle h1-elementen).
- **Declaration**: is van *de vorm property: value;* De declaratie *eindigt altijd op een* **;**
- **Property**: de *CSS-eigenschap* die je wil instellen
- **Value**: *waarde* voor de eigenschap.
- **Declaration block**: *alles wat tussen {}* staat

![](./attachments/20241230130305.png)


voorbeeld van een **Declaration block**
```css
h1{
	color: green;
	font-size: 12px;
}
```
*h1* = **selector**
*color* en *fontsize* = **property**
*green* en *12px* = **value**
*color:green;* en *font-size12px;* = **declaration**

## CSS commentaar

```css
/* dit is commentaar */
```

sneltoets: **ctr** + **:**
## Toevoegen van CSS bestand

1. Maak een map css aan.
2. Maak in déze map een leeg css-bestand aan met als naam styles.css
3. Voeg in index.html in de head de link naar het css-bestand toe.

```html
<head>
	<link rel="stylesheet" href="css/styles.css" />
</head>
```

Emmet afkorting: link\<tab>


## algemeen

niet shorthand-property (zoals `background`) met long-hand (zoals `background-color`) door elkaar gebruiken.
dia 18
## toevoegen
3 manieren om toe te voegen:

-external (met link)
-internal (met style)
-inline (met style in betreffende tag)


## CSS selectors
### Termen

- child : onderliggend element
- parent : bovenliggend element
- descendant : afstamming
- sibling : elementen die op hetzelfde niveau staan (broers of zusters van)
### soorten
- Universal selector en de type selector
- Class en Id selectors
- Selector list (aka Group selector)
- Child en Descendant combinators
- Adjacent en General sibling combinator
- Attribute selectors
- Pseudo-classes
- Pseudo-elements

### Universal selector en de type selector (TE KENNEN)

| voorbeeld | 1ste teken in css | naam               | prioriteit |
| --------- | ----------------- | ------------------ | ---------- |
| \* {};    | \*                | Universal selector | 1          |
| h2{};     | naamVanElement    | Type selector      | 2          |

### Class en Id selectors (TE KENNEN)

Waar mogelijk andere selectors gebruiken.
#### Class

**Class** *selectors* laten toe om *verschillende elementen dezelfde opmaak te geven*. Deze elementen hebben allen dezelfde value voor het class-attribuut (voor elementen met meerdere classes zie verderop)

De naam van een **class** *selector begint met een . (punt) gevolgd door de waarde* van het class-attribuut.

```css
.awesome{ ... }
```

```html
<div class="awesome"> ... </div>
<p class="awesome"> ... </p>
```

#### ID selectors

ID selectors worden gebruikt om een *uniek deel (element) van de pagina te identificeren* en worden in de *style sheet voorafgegaan door een* **#**.
Geef aan een element een **id** *attribuut met een zelfgekozen waarde*. Een *id mag maar één keer voorkomen binnen dezelfde pagina*. 

*Id’s worden in CSS minder gebruikt dan classes*.

```css
#shayhowe { ... }
```

```html
<div id="shayhowe"> ... </div>
```

| voorbeeld      | 1ste teken in css | naam  | prioriteit | komt van (niet zo geschreven) |
| -------------- | ----------------- | ----- | ---------- | ----------------------------- |
| \#archives {}; | #                 | id    | 3          |                               |
| .archives{};   | .                 | class | 3          | \*.archives{};                |
### Selector list (aka Group selector)(TE KENNEN)

*meerdere* elementen gebruiken, *gescheiden met komma*
```css
h2, h1, .archives{};
```

Group selectors worden gebruikt als je dezelfde stijl wilt gebruiken bij verschillende CSS selectors.

De CSS selectors worden in de Group selector gescheiden van elkaar met behulp van een komma.

```css
h1, .note, a {
	font-style: italic;
	color: red;	
}
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

mooi voorbeeld voor een hyperlink (\<a> element)
```html
  <style>
    a{
      text-decoration: none;
    }
    a:hover{
      text-decoration: underline;
    }
  </style>
```
Dit zal de onderlijning van de hyperlink weghalen behalve als je er over hoverd.
### Pseudo-elements

| voorbeeld                 | 1ste teken in css | naam                                         | gebruik                     |
| ------------------------- | ----------------- | -------------------------------------------- | --------------------------- |
|                           | ::first-line      | eerste regel opgemaakte text van een element |                             |
| p::first-letter{};        | ::first-letter    | de eerste letter                             |                             |
| a::before{content: '❤️'}; | ::before          | voor de inhoud van een element               | om afbeelding toe te voegen |
|                           | ::after           | na de inhoud van een element                 |                             |
## Volgorde in CSS

### Cascading

| *Meeste voorang* |                     |                    |                                                                                                 |
| ---------------- | ------------------- | ------------------ | ----------------------------------------------------------------------------------------------- |
| 1                | !importance         |                    |                                                                                                 |
| 2                | style attribute     |                    |                                                                                                 |
| 3                | cascading algoritme | Author style sheet |                                                                                                 |
|                  |                     | User style sheet   |                                                                                                 |
| 3a               | origin              |                    | eerst wordt er gekeken origen en importance                                                     |
| 3b               | speceficety         |                    | origen en importance? wordt er naar specificity gekeken                                         |
| 3c               | order (volgorde)    |                    | origen, importance en specificity gelijk? is de volgorde belangrijk<br>laagste heeft prioriteit |
| 4                | inherantance        |                    |                                                                                                 |
| *Minste voorang* |                     |                    |                                                                                                 |

#### origin - importance

| *Meeste prioriteit*               |                                                                                                                      |
| --------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| Important user agent declaration  | Stijlen gemarkeerd als `!important` door de browser (user agent). De hoogste prioriteit.                             |
| Important user declaration        | Stijlen gemarkeerd als `!important` door de gebruiker, meestal via browserinstellingen of gebruikersstylesheets.     |
| Important author declaration      | Dit zijn stijlen gemarkeerd als `!important` door de auteur van de webpagina.                                        |
| **Normal author declaration**     | Dit Rliere stijlen gedefinieerd door de auteur van de webpagina.                                                     |
| Normal user declaration           | Dit zijn reguliere stijlen gedefinieerd door de gebruiker, meestal via browserinstellingen of gebruikersstylesheets. |
| **Normal user agent declaration** | Dit zijn de standaardstijlen die door de browser worden geleverd.                                                    |
| *Minste prioriteit*               |                                                                                                                      |

### !Importance

Toevoegen om de overhand te nemen van een gewone declaratie

```css
h1{
	text-decoration: none !importance;
}
```
### Specifity

#### Specificity Hierarchy

Every CSS selector has its place in the specificity hierarchy.

There are four categories which define the specificity level of a selector:

1. **Inline styles** - Example: `<h1 style="color: pink;">`
2. **IDs** - Example: #navbar
3. **Classes, pseudo-classes, attribute selectors** - Example: .test, :hover, [href]
4. **Elements and pseudo-elements** - Example: h1, ::before
5. als alles zelfde is zal het degene zijn die het laagste staat

#### Bereken Specifity
- Start at 0, 
- add 100 for each ID value, 
- add 10 for each class value (or pseudo-class or attribute selector), 
- add 1 for each element selector or pseudo-element.

|           |                                                                      |
| --------- | -------------------------------------------------------------------- |
| 0,0,**0** | Aantal *type-selectors* en *speudo-elemets*                          |
| 0,**0**,0 | Aantal *class selectors*, *attributes selectors* en *pseudo-classes* |
| **0**,0,0 | Aantal ID selectors                                                  |

##### voorbeeld:
| Selector                   | Specificity Value | Calculation                           |
| -------------------------- | ----------------- | ------------------------------------- |
| `p`                        | 0,0,1             | 1                                     |
| `p.test`                   | 0,1,1             | 1 + 10                                |
| `p#demo`                   | 1,0,1             | 1 + 100                               |
| `<p style="color: pink;">` | 1,0,0,0           | 1000                                  |
| `#demo`                    | 1,0,0             | 100                                   |
| `.test`                    | 0,1,0             | 10                                    |
| `p.test1.test2`            | 0,2,1             | 1 + 10 + 10                           |
| `#navbar p#demo`           | 2,0,1             | 100 + 1 + 100                         |
| `*`                        | 0,0,0             | 0 (the universal selector is ignored) |
0,1,0 heeft meer voorrang dan 0,0,12

### inheritance (overerving)

Dit heeft de laagste prioriteit

dus:

```css
div.class{
	color: green;
}

p{
	color: red;
}

```

p, zit in div en class klasse maar p zal rood zijn want div.class is overerving

#### inherit om toch over te erven
```css
div.class{
	color: green;
	border:  5px solid red;
}


p {
	color: red;
	border: inherit;
}
```
hier wordt border wel over geërfd dankzij **inherit**.

## CSS values en units

**Value type**: *Data type* staan tussen punthaken zoals bv `<color>`
heeft een **waarde** en een **eenheid** 10px, waar 10 de waarde is en px de eenheid

https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Values_and_units

## browser reset/normalaze files

Wordt gebruikt om de browser css uit te schakelen en te normaliseren om in elke browser dezelfde opmaak te hebben.

Vroeger maakte men om dit probleem op te lossen dikwijls gebruik van de [reset.css](https://meyerweb.com/eric/tools/css/reset/) van Eric Meyer.
Vandaag gebruikt men hiervoor eerder de [normalize.css ](https://necolas.github.io/normalize.css/)van Nicolas Gallagher, die minder stijlinformatie verwijdert

in html
```html
<head>
	<link rel="stylesheet" href="css/normalize.css" />
	<link rel="stylesheet" href="css/site.css" />
</head>
```

of in je css (MOET HELEMEEL BOVENAAN JE CSS FILE)
```css
@import url("normalize.css");
```


## Fonts

- formaat:
	- em : De groote van letter M *berekend tov het parent element* (bv: body = 14px; em2 => dan is het 28px (14px\*2em))
	- px : (zijn css pixels en is op ieder scherm even groot) 
	- rem : wordt berekend vanaf het rood element \<html>(heeft de voorkeur)

### webfonts

Nu kunnen browsers ook fonts laden uit een font file (**web fonts**). Web fonts zijn dus lettertypes die niet standaard op iemands computer staan maar die **vanaf een server worden geladen**. Dit gebeurt via het *@font-face* CSS statement.

```css
@font-face { 
	font-family: 'my font'; 
	src: url(../fonts/AlexBrush-Regular.ttf); 
} 

h1, h2 {
	font-family: 'my font', cursive; 
}
```

### google font's

Waar font's te vinden:
- [Font Squirrel](https://www.fontsquirrel.com/) : Gratis.
- [Google fonts](https://fonts.google.com/) : Gratis. Bovendien wordt hier standaard verwezen naar de font files op de google servers en is het bijgevolg niet nodig om de font files in je website op te nemen.
- [Adobe Fonts](https://fonts.adobe.com/fonts) : als je de fonts van Adobe wilt gebruiken moet je een abonnement nemen

in html
```html
<head>
  <link rel="preconnect" href="https://fonts.googleapis.com"> <!-- is om font in te laden voor gebruik, niet perse nodig -->
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> <!-- is om font in te laden voor gebruik, niet perse nodig -->
  <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@400;700&display=swap" rel="stylesheet">
</head>
```
of in css (MOET HELEMEEL BOVENAAN JE CSS FILE)
```css
@import url('https://fonts.googleapis.com/css2?family=PT+Sans:wght@400;700&display=swap');
```

### font pairing

Een combinatie van fonts die bij elkaar passen.
https://www.fontpair.co/
https://www.w3schools.com/css/css_font_pairings.asp

## Background

niet shorthand-property (zoals `background`) met long-hand (zoals `background-color`) door elkaar gebuiken.
dia 18