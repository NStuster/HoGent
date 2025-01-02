# Inleiding: Cascading en Inheritance

- **Cascading**: CSS staat toe dat meerdere stijlen op een element van toepassing zijn. De 'cascade' bepaalt welke stijl prioriteit heeft.
- **Inheritance**: Sommige CSS-eigenschappen worden geërfd van een parent-element naar zijn children.

# CSS Verwerking door Browsers: Cascading en Inheritance

## Cascading

Bepalen van prioriteit tussen verschillende CSS-declaraties.
    
- **Origin**: De bron van de CSS-declaratie (user agent stylesheet, author stylesheet, inline styles).
- **Importance**: De mate van prioriteit. CSS-declaraties met `!important` krijgen altijd voorrang.
- **Specificity**: De mate van precisie van de selector bepaalt welke stijl wordt toegepast.
- **Source Order**: Als alle andere factoren gelijk zijn, wint de laatst gedefinieerde stijl.
    
   **Voorbeeld**:
    
   ```css
    h1 {
        font-size: 3em; /* author stylesheet */
    }
    
    /* Standaard in de browser stylesheet */
    h1 {
        font-size: 2em; /* user agent stylesheet */
    }
    ```
    
Hier wordt de `font-size: 3em;` uit de author stylesheet toegepast, omdat deze de browserstijl overschrijft.

### Origin

De "origin" verwijst naar de bron van de CSS-declaratie. CSS kan uit verschillende bronnen komen en elke bron heeft een andere prioriteit. De mogelijke bronnen zijn:

- **User Agent Stylesheet**: Dit zijn de standaardstijlen die door de browser zelf worden toegepast. Elke browser heeft zijn eigen set stijlen die bepalen hoe elementen eruitzien als er geen andere stijlen zijn gedefinieerd. Bijvoorbeeld, een `<h1>` kan standaard een groter lettertype hebben in de meeste browsers.
    
- **Author Stylesheet**: Dit is de CSS die door de ontwikkelaar van de website wordt geschreven. Dit kan in een extern CSS-bestand of binnen een `<style>`-tag in de HTML staan.
    
- **Inline Styles**: Dit zijn stijlen die direct in de HTML-tag worden geschreven, bijvoorbeeld `<h1 style="color: red;">Hello World</h1>`. Inline styles hebben de hoogste prioriteit na de specificiteit en de `!important` regel.
    

**Voorbeeld**:

```html
<head>
    <style>
        h1 { color: blue; } /* author stylesheet */
    </style>
</head>

<body>
    <h1 style="color: red;">Hello World</h1> <!-- inline style -->
</body>
```

In dit geval is de tekst in `<h1>` rood, omdat de inline style altijd voorrang heeft boven de author stylesheet.

### Importance

De "importance" van een CSS-declaratie bepaalt hoe sterk deze stijlen worden toegepast, ongeacht de andere factoren. CSS-declaraties die met de `!important` regel zijn gemarkeerd, krijgen altijd voorrang, zelfs als er conflicten zijn met stijlen uit andere bronnen.

**Voorbeeld**:

```css
h1 {
    color: green !important; /* belangrijke declaratie */
}

h1 {
    color: red; /* normale declaratie */
}
```

Hier zal de tekst in `<h1>` altijd groen zijn, omdat de eerste stijl met `!important` wordt toegepast, zelfs als de tweede stijl zonder `!important` komt.

### Specificity

Specificity bepaalt welke stijl wordt toegepast wanneer meerdere regels met dezelfde selector van kracht zijn. De specificiteit wordt berekend door het aantal verschillende soorten selectors in een CSS-regel:

- **ID selectors** (bijv. `#header`) hebben de hoogste specificiteit.
- **Class selectors** (bijv. `.main`), **attribute selectors** (bijv. `[type="text"]`) en **pseudo-classes** (bijv. `:hover`) hebben een lagere specificiteit.
- **Type selectors** (bijv. `h1`) en **pseudo-elements** (bijv. `::before`) hebben de laagste specificiteit.

De specificiteit wordt gemeten in drie getallen: (aantal ID selectors, aantal class selectors, aantal type selectors). Hoe hoger het getal, hoe groter de specificiteit.

**Voorbeeld**:

```css
h1 {
    color: red; /* specificity = (0, 0, 1) */
}

#header {
    color: blue; /* specificity = (1, 0, 0) */
}

.main {
    color: green; /* specificity = (0, 1, 0) */
}
```

Hier heeft `#header` de hoogste specificiteit, dus de kleur van de `<h1>` wordt blauw, zelfs als er een andere stijl is gedefinieerd voor `<h1>`.

### Source Order

De source order houdt in dat, wanneer twee stijlen dezelfde specificiteit en dezelfde "importance" hebben, de laatste gedefinieerde stijl wordt toegepast. Dit betekent dat de volgorde waarin CSS wordt geladen of gedefinieerd, de uiteindelijke styling kan beïnvloeden.

**Voorbeeld**:

```css
h1 {
    color: red; /* eerste regel */
}

h1 {
    color: blue; /* tweede regel, deze wordt toegepast */
}
```

Hier wordt de tekst in `<h1>` blauw, omdat de tweede regel de laatste is die wordt geladen en dus de eerste overschrijft.

## Inheritance

Eigenschappen zoals `color`, `font-family` en `font-size` worden vaak overgeërfd.
    
**Voorbeeld**:
    
   ```css
    body {
        font-family: Verdana, sans-serif;
        font-size: 14px;
    }
    
    h1, h2 {
        font-family: Georgia, serif;
    }
    ```
    
In dit geval erft de tekst in de `<p>`-tag de `font-family` en `font-size` van het `body`-element.
    

# Developer Tools - CSS Verwerking door Browsers

- Met **developer tools** kun je de toegepaste stijlen voor een element inspecteren en zien welke stijlen zijn overschreven.
- Bijvoorbeeld: Als je in de browser de `h1` inspecteert, zie je zowel de `font-size` uit de user agent stylesheet als de override in je eigen stylesheet.

# CSS Values en Units

- **Value types**: CSS-eigenschappen hebben specifieke value types, zoals lengtes (px, em, %, etc.) of kleuren (hex, rgb, rgba).
    - **Voorbeeld**: `font-size: 16px;` of `width: 10em;`
    - Eenheid is belangrijk: `width: 10px;` is anders dan `width: 10em;`.

# Browser Reset/Normalize.css

- **Reset/Normalize.css**: Dit zijn CSS-bestanden die ervoor zorgen dat de standaardstijlen van browsers op een consistente manier worden gereset of genormaliseerd, zodat stijlen op verschillende browsers hetzelfde worden weergegeven.
    - **Normalize.css**: In tegenstelling tot reset.css verwijdert deze minder stijlinformatie, zodat de pagina er correct uitziet op verschillende browsers zonder teveel elementen te verwijderen.
    - Voeg `normalize.css` toe aan je project door het als eerste link in je HTML-bestand te plaatsen:
        
        ```html
        <link rel="stylesheet" href="css/normalize.css" />
        ```
        

# CSS Eigenschappen die Overerfbaar zijn

- **Overerfbare eigenschappen**: Vooral tekstgerelateerde eigenschappen zoals `color`, `font-family`, `font-size`, `line-height`, etc., worden geërfd door child-elementen.
    
    **Voorbeeld**:

```html
<p>Lorem <em> ipsum </em> dolor sit amet, consectetur adipiscing elit.</p>
```

```css
    p {
        color: blue;
    }
    
    em {
        /* em erft de color van p */
    }
    ```
    
In dit geval krijgt het `<em>`-element de kleur blauw van zijn parent `<p>`.
    
- **Niet-overerfbare eigenschappen**: Bijvoorbeeld `background-color` wordt niet geërfd. Als je wilt dat een niet-overerfbare eigenschap wordt overgeërfd, kun je de waarde `inherit` gebruiken:
    
    **Voorbeeld**:
    
    ```css
    div {
        background-color: inherit;
    }
    ```
    

# Specificity en Hoe het te Berekenen

![[Pasted image 20241230211159.png]]

- **Specificity** bepaalt welke van de conflicterende stijlen de hoogste prioriteit heeft.
    
    - **ID selectors** hebben de hoogste specificity.
    - **Class selectors** en **attribute selectors** hebben minder specificity dan ID selectors.
    - **Type selectors** en **pseudo-elements** hebben de laagste specificity.
    
    **Voorbeeld**:
    
    - Selector `h1`: specificity = (0, 0, 1)
    - Selector `#content`: specificity = (1, 0, 0)
    - Selector `.red`: specificity = (0, 1, 0)
    
    Als meerdere selectors van toepassing zijn, wint de selector met de hoogste specificity. Als twee selectors dezelfde specificity hebben, wint de laatst gedefinieerde.

### Voorbeeld

| Selector                             | Hundreds | Tens | Ones | Total Specificity |
|--------------------------------------|----------|------|------|-------------------|
| `h1`                                 | 0        | 0    | 1    | 0,0,1             |
| `h1 + p::first-letter`               | 0        | 0    | 3    | 0,0,3             |
| `li > a[href*="en-US"] > .inline-warning` | 0        | 2    | 2    | 0,2,2             |
| `#content`                           | 1        | 0    | 0    | 1,0,0             |

# Gebruik van !important

- Een declaratie met `!important` heeft altijd voorrang op andere declaraties, zelfs als deze in inline styles staat.
    
    **Voorbeeld**:
    
    ```css
    h1 {
        color: blue !important;
    }
    p {
        color: green;
    }
    ```
    
    In dit geval krijgt `h1` de blauwe kleur, zelfs als een andere stijl in de pagina is gedefinieerd.
    

# Conclusie

- Het begrijpen van cascading en inheritance is essentieel om de volgorde van CSS-declaraties en de juiste styling op je webpagina's te bepalen.
- Maak gebruik van **developer tools** om de toegepaste stijlen te inspecteren en conflicten tussen stijlen op te lossen.
- Gebruik **normalize.css** om inconsistenties tussen browsers te verminderen.
	-  Vroeger maakte men om dit probleem op te lossen dikwijls gebruik van de [reset.css](https://meyerweb.com/eric/tools/css/reset/) van Eric Meyer. Vandaag gebruikt men hiervoor eerder de [normalize.css](https://necolas.github.io/normalize.css/) van Nicolas Gallagher, die minder stijlinformatie verwijdert.

Met deze basisprincipes van CSS ben je beter voorbereid om efficiënt en effectief stijlen toe te passen en te beheren op je websites.