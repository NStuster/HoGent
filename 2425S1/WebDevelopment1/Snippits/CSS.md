
# Logical property's (altijd longhand)

voorkeur Physical property, maak steeds een keuze, gebruik liefst niet door elkaar

![[Pasted image 20241030112726.png]]

![[Pasted image 20241030112646.png]]

![[Pasted image 20241030112657.png]]


# Lettertype fallback
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
# Flexbox

[CSS Flexbox Layout Guide | CSS-Tricks](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)

[Flexbox Froggy - Een spel om CSS flexbox te leren](https://flexboxfroggy.com/#nl)

![](../attachments/20241106115212.png)


![](../attachments/20241106115227.png)

![](../attachments/20241106115235.png)

## display

This defines a flex container; inline or block depending on the given value. It enables a flex context for all its direct children.

```css
.container {
  display: flex; /* or inline-flex */
}
```

Note that CSS columns have no effect on a flex container.

## Properties for the Parent  
(flex container)
### flex-direction

![](../attachments/flex-direction.svg)

  
This establishes the main-axis, thus defining the direction flex items are placed in the flex container. Flexbox is (aside from optional wrapping) a single-direction layout concept. Think of flex items as primarily laying out either in horizontal rows or vertical columns.

```css
.container {
  flex-direction: row | row-reverse | column | column-reverse;
}
```

- `row` (default): left to right in `ltr`; right to left in `rtl`
- `row-reverse`: right to left in `ltr`; left to right in `rtl`
- `column`: same as `row` but top to bottom
- `column-reverse`: same as `row-reverse` but bottom to top

### flex-wrap

![](../attachments/flex-wrap.svg)

By default, flex items will all try to fit onto one line. You can change that and allow the items to wrap as needed with this property.

```css
.container {
  flex-wrap: nowrap | wrap | wrap-reverse;
}
```

- `nowrap` (default): all flex items will be on one line
- `wrap`: flex items will wrap onto multiple lines, from top to bottom.
- `wrap-reverse`: flex items will wrap onto multiple lines from bottom to top.

There are some [visual demos of `flex-wrap` here](https://css-tricks.com/almanac/properties/f/flex-wrap/).

### flex-flow

This is a shorthand for the `flex-direction` and `flex-wrap` properties, which together define the flex container’s main and cross axes. The default value is `row nowrap`.

```css
.container {
  flex-flow: column wrap;
}
```

### justify-content

![](../attachments/justify-content.svg)

  
This defines the alignment along the main axis. It helps distribute extra free space leftover when either all the flex items on a line are inflexible, or are flexible but have reached their maximum size. It also exerts some control over the alignment of items when they overflow the line.

```css
.container {
  justify-content: flex-start | flex-end | center | space-between | space-around | space-evenly | start | end | left | right ... + safe | unsafe;
}
```

- `flex-start` (default): items are packed toward the start of the flex-direction.
- `flex-end`: items are packed toward the end of the flex-direction.
- `start`: items are packed toward the start of the `writing-mode` direction.
- `end`: items are packed toward the end of the `writing-mode` direction.
- `left`: items are packed toward left edge of the container, unless that doesn’t make sense with the `flex-direction`, then it behaves like `start`.
- `right`: items are packed toward right edge of the container, unless that doesn’t make sense with the `flex-direction`, then it behaves like `end`.
- `center`: items are centered along the line
- `space-between`: items are evenly distributed in the line; first item is on the start line, last item on the end line
- `space-around`: items are evenly distributed in the line with equal space around them. Note that visually the spaces aren’t equal, since all the items have equal space on both sides. The first item will have one unit of space against the container edge, but two units of space between the next item because that next item has its own spacing that applies.
- `space-evenly`: items are distributed so that the spacing between any two items (and the space to the edges) is equal.

Note that that browser support for these values is nuanced. For example, `space-between` never got support from some versions of Edge, and start/end/left/right aren’t in Chrome yet. MDN [has detailed charts](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content). The safest values are `flex-start`, `flex-end`, and `center`.

There are also two additional keywords you can pair with these values: `safe` and `unsafe`. Using `safe` ensures that however you do this type of positioning, you can’t push an element such that it renders off-screen (e.g. off the top) in such a way the content can’t be scrolled too (called “data loss”).

### align-items

![](../attachments/align-items.svg)

  
This defines the default behavior for how flex items are laid out along the **cross axis** on the current line. Think of it as the `justify-content` version for the cross-axis (perpendicular to the main-axis).

```css
.container {
  align-items: stretch | flex-start | flex-end | center | baseline | first baseline | last baseline | start | end | self-start | self-end + ... safe | unsafe;
}
```

- `stretch` (default): stretch to fill the container (still respect min-width/max-width)
- `flex-start` / `start` / `self-start`: items are placed at the start of the cross axis. The difference between these is subtle, and is about respecting the `flex-direction` rules or the `writing-mode` rules.
- `flex-end` / `end` / `self-end`: items are placed at the end of the cross axis. The difference again is subtle and is about respecting `flex-direction` rules vs. `writing-mode` rules.
- `center`: items are centered in the cross-axis
- `baseline`: items are aligned such as their baselines align

The `safe` and `unsafe` modifier keywords can be used in conjunction with all the rest of these keywords (although note [browser support](https://developer.mozilla.org/en-US/docs/Web/CSS/align-items)), and deal with helping you prevent aligning elements such that the content becomes inaccessible.

### align-content

![](../attachments/align-content.svg)

  
This aligns a flex container’s lines within when there is extra space in the cross-axis, similar to how `justify-content` aligns individual items within the main-axis.

**Note:** This property only takes effect on multi-line flexible containers, where `flex-wrap` is set to either `wrap` or `wrap-reverse`). A single-line flexible container (i.e. where `flex-wrap` is set to its default value, `no-wrap`) will not reflect `align-content`.

```css
.container {
  align-content: flex-start | flex-end | center | space-between | space-around | space-evenly | stretch | start | end | baseline | first baseline | last baseline + ... safe | unsafe;
}
```

- `normal` (default): items are packed in their default position as if no value was set.
- `flex-start` / `start`: items packed to the start of the container. The (more supported) `flex-start` honors the `flex-direction` while `start` honors the `writing-mode` direction.
- `flex-end` / `end`: items packed to the end of the container. The (more support) `flex-end` honors the `flex-direction` while end honors the `writing-mode` direction.
- `center`: items centered in the container
- `space-between`: items evenly distributed; the first line is at the start of the container while the last one is at the end
- `space-around`: items evenly distributed with equal space around each line
- `space-evenly`: items are evenly distributed with equal space around them
- `stretch`: lines stretch to take up the remaining space

The `safe` and `unsafe` modifier keywords can be used in conjunction with all the rest of these keywords (although note [browser support](https://developer.mozilla.org/en-US/docs/Web/CSS/align-items)), and deal with helping you prevent aligning elements such that the content becomes inaccessible.

### gap, row-gap, column-gap

![](../attachments/gap-1.svg)

[The `gap` property](https://css-tricks.com/almanac/properties/g/gap/) explicitly controls the space between flex items. It applies that spacing _only between items_ not on the outer edges.

```css
.container {
  display: flex;
  ...
  gap: 10px;
  gap: 10px 20px; /* row-gap column gap */
  row-gap: 10px;
  column-gap: 20px;
}
```

The behavior could be thought of as a _minimum_ gutter, as if the gutter is bigger somehow (because of something like `justify-content: space-between;`) then the gap will only take effect if that space would end up smaller.

It is not exclusively for flexbox, `gap` works in grid and multi-column layout as well.

## Properties for the Children  
(flex items)

### order

![](../attachments/order.svg)

  
By default, flex items are laid out in the source order. However, the `order` property controls the order in which they appear in the flex container.

```css
.item {
  order: 5; /* default is 0 */
}
```

Items with the same `order` revert to source order.

### flex-grow

![](../attachments/flex-grow.svg)

  
This defines the ability for a flex item to grow if necessary. It accepts a unitless value that serves as a proportion. It dictates what amount of the available space inside the flex container the item should take up.

If all items have `flex-grow` set to `1`, the remaining space in the container will be distributed equally to all children. If one of the children has a value of `2`, that child would take up twice as much of the space as either one of the others (or it will try, at least).

```css
.item {
  flex-grow: 4; /* default 0 */
}
```

Negative numbers are invalid.

### flex-shrink

This defines the ability for a flex item to shrink if necessary.

```css
.item {
  flex-shrink: 3; /* default 1 */
}
```

Negative numbers are invalid.

### flex-basis

This defines the default size of an element before the remaining space is distributed. It can be a length (e.g. 20%, 5rem, etc.) or a keyword. The `auto` keyword means “look at my width or height property” (which was temporarily done by the `main-size` keyword until deprecated). The `content` keyword means “size it based on the item’s content” – this keyword isn’t well supported yet, so it’s hard to test and harder to know what its brethren `max-content`, `min-content`, and `fit-content` do.

```css
.item {
  flex-basis:  | auto; /* default auto */
}
```

If set to `0`, the extra space around content isn’t factored in. If set to `auto`, the extra space is distributed based on its `flex-grow` value. [See this graphic.](http://www.w3.org/TR/css3-flexbox/images/rel-vs-abs-flex.svg)

#### [](https://css-tricks.com/snippets/css/a-guide-to-flexbox/#aa-flex)flex

This is the shorthand for `flex-grow,` `flex-shrink` and `flex-basis` combined. The second and third parameters (`flex-shrink` and `flex-basis`) are optional. The default is `0 1 auto`, but if you set it with a single number value, like `flex: 5;`, that changes the `flex-basis` to 0%, so it’s like setting `flex-grow: 5; flex-shrink: 1; flex-basis: 0%;`.

```css
.item {
  flex: none | [ <'flex-grow'> <'flex-shrink'>? || <'flex-basis'> ]
}
```

**It is recommended that you use this shorthand property** rather than set the individual properties. The shorthand sets the other values intelligently.

### align-self

![](../attachments/align-self.svg)

  
This allows the default alignment (or the one specified by `align-items`) to be overridden for individual flex items.

Please see the `align-items` explanation to understand the available values.

```css
.item {
  align-self: auto | flex-start | flex-end | center | baseline | stretch;
}
```

Note that `float`, `clear` and `vertical-align` have no effect on a flex item.

# Grid

### Grid-area Grid-template-area

```css
.container {
	display: grid;
	grid-template-columns: 20ch 1fr;
	grid-template-areas:
		"header header"
		"nav main"
		"footer footer"
	;
}

header{
	grid-area: header;
}

nav{
	grid-area: nav;
}

main{
	grid-area: main;
}

footer{
	grid-area: footer;
}
```

# Viewport
```html
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
```
### Grotere schermen: 
de grootte van het browservenster

### Smartphones: 
het volledige scherm

#### Visual viewport

#### layout viewport

#### Debuggen (devolper tools)
![](20241120110204.png)


### 

