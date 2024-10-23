
| naam element                                        | voorbeeld                                                                                                                  |                                                                   | Te kennen |
| --------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------- | --------- |
| **BACKGROUND**                                      | **BACKGROUND**                                                                                                             | **BACKGROUND**                                                    |           |
| Achtergrondkleur                                    | background-color                                                                                                           |                                                                   | X         |
| Achtergrondafbeelfding                              | background-image: url("../images/image.png");                                                                              | ook steeds een bgc instellen                                      | X         |
| Achtergrond herhaling                               | background-repeat: no-repeat;                                                                                              | staat standaard op `repeat`<br>no-repeat<br>repeat-x              | X         |
| achtergrondLock                                     | background-attachment                                                                                                      | zal niet mee scrollen<br>`fixed`<br>`scroll` (default)<br>`local` |           |
| kleurverloop                                        | background: linear-gradient(\#e66465, \#9198e5);                                                                           | radial-gradient                                                   |           |
| **COLOR**                                           | **COLOR**                                                                                                                  | **COLOR**                                                         |           |
| Kleur<br><br><br><br>Kleur transparant              | color: rgb(255 127 0);<br>color: rgb(100% 50% 0%);<br>color: rgb(\#ff7f00);<br>color: red;<br>color: rgb(255 127 0 / 0.5); | <br><br><br><br>na / is voor transparantie                        |           |
| **LISTS**                                           | **LISTS**                                                                                                                  | **LISTS**                                                         |           |
| opsommingstekens                                    | list-style-type: none                                                                                                      |                                                                   | X         |
| afbeelding als opsomming                            | list-style-image                                                                                                           |                                                                   |           |
| plaatsing van opsommingteken                        | list-style position                                                                                                        |                                                                   |           |
| shorthand                                           | list-style                                                                                                                 |                                                                   |           |
| **TEXT LAYOUT**                                     | **TEXT LAYOUT**                                                                                                            | **TEXT LAYOUT**                                                   |           |
| Regelhoogte                                         | line-height: 1.5;                                                                                                          | 1.2<br>1.3                                                        | X         |
|                                                     | text-align: center;                                                                                                        | center                                                            | X         |
| om te onderlijnen                                   | text-decoration: none;                                                                                                     | none<br>underline<br>overline                                     | X         |
| color                                               | color                                                                                                                      |                                                                   | X         |
| text-align-last                                     | text-align-last                                                                                                            |                                                                   |           |
| text-indent                                         | text-indent                                                                                                                |                                                                   |           |
| text-orientation                                    | text-orientation                                                                                                           |                                                                   |           |
| text-overflow                                       | text-overflow                                                                                                              |                                                                   |           |
| text-shadow                                         | text-shadow                                                                                                                |                                                                   |           |
| text-transform: uppercase;                          | text-transform: uppercase;                                                                                                 |                                                                   |           |
| white-space                                         | white-space                                                                                                                |                                                                   |           |
| letter-scaling                                      | letter-scaling                                                                                                             |                                                                   |           |
| word-spacing                                        | word-spacing                                                                                                               |                                                                   |           |
| word-break                                          | word-break                                                                                                                 |                                                                   |           |
| overflow-wrap                                       | overflow-wrap                                                                                                              |                                                                   |           |
| **FONT**                                            | **FONT**                                                                                                                   | **FONT**                                                          |           |
| font-family<br>lettertypes<br>meerdere als fallback | font-family: Georgia, 'Times New Roman', Times, serif;                                                                     | (font stack)<br><br>laatste = generische font                     | X         |
| font-size                                           | font-size: 14px;<br>font-size: 3em;<br>font-size: 2rem;                                                                    | px<br>em<br>rem (voorkeur)                                        | X         |
| font-weight                                         | font-weight: bold;<br>font-weight: 700;<br>font-weight: 900;                                                               | range: 100 - 900<br>default: 400<br>bold: 700<br>bolder, lighter  | X         |
| font-size-adjust                                    | font-size-adjust                                                                                                           |                                                                   |           |
| font-style                                          | font-style                                                                                                                 |                                                                   |           |
| font-variant: smal-caps;                            | font-variant: smal-caps;                                                                                                   |                                                                   |           |
| font-stretch                                        | font-stretch                                                                                                               |                                                                   |           |
| font                                                | font                                                                                                                       |                                                                   |           |
|                                                     |                                                                                                                            |                                                                   |           |
### Lettertype fallback
[CSS Font Fallbacks (w3schools.com)](https://www.w3schools.com/Css/css_font_fallbacks.asp)

| Lettetype                                 | fallback   |
| ----------------------------------------- | ---------- |
| Courier<br>console<br>                    | monospace  |
| Times New Roman<br>Georgia<br>Garamond    | Serif      |
| Arial<br>Tahoma<br>Trebuchet MS<br>Geneva | Sans Serif |

# CSS selectors
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

| voorbeeld      | 1ste teken in css | naam  | prioriteit | komt van (niet zo geschreven) |
| -------------- | ----------------- | ----- | ---------- | ----------------------------- |
| \#archives {}; | #                 | id    | 3          |                               |
| .archives{};   | .                 | class | 3          | \*.archives{};                |
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
