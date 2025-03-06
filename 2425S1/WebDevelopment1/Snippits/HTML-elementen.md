| naam element                                                | openingtag element | attribuut | block | inline |                                                            |
| ----------------------------------------------------------- | ------------------ | --------- | ----- | ------ | ---------------------------------------------------------- |
| Koppen                                                      | \<h1> tot \<h6>    |           | x     |        |                                                            |
| Paragraaf                                                   | \<p>               |           | x     |        |                                                            |
| Hyperlink                                                   | \<a>               |           |       | x      | `_blank`<br>`_self`<br>`_parent`<br>`_top`<br>`_framename` |
| Afbeelding                                                  | \<img>             |           |       | x      |                                                            |
| picture (met meerdere afbeeldingen met voorwaarde)          | \<picture>         |           |       |        |                                                            |
| geen semantisch element voorhanden                          | \<div>             |           | x     |        |                                                            |
| geen semantisch element voorhanden is                       | \<span>            |           |       | x      |                                                            |
| lange citaten                                               | \<blockquote>      |           | x     |        |                                                            |
| groepeert illustratie met bijschrift (moet geen beeld zijn) | \<figure>          |           | x     |        |                                                            |
| bijschrift bij \<figure>                                    | \<figcaption>      |           | x     |        |                                                            |
| markeren van contactinformatie                              | \<address>         |           | x     |        |                                                            |
| behouden van tabs en spaties (zoals voor ascii art)         | \<pre>             |           | x     |        |                                                            |
| thematische scheiding tussen parafen                        | \<hr>              |           |       | x      |                                                            |
# Logische blokken

| logische blok: voor een zelfstandig stuk inhoud                                 | \<article> |     | x   |     |     |
| ------------------------------------------------------------------------------- | ---------- | --- | --- | --- | --- |
| logische blok: onderdeel van een pagina waarvoor geen meer specifiek element is | \<section> |     | x   |     |     |
| logische blok: voor de hoofdnavigatie                                           | \<nav>     |     | x   |     |     |
| logische blok: voor ‘zijdelingse’ informatie                                    | \<aside>   |     | x   |     |     |
| logische blok: voor het kopgedeelte                                             | \<header>  |     | x   |     |     |
| logische blok: voor het footer gedeelte                                         | \<footer>  |     | x   |     |     |
# Text

| tekst: aandacht van de lezer op tekst te vestigen                                | \<b>               |           |       | x      |                                                            |
| -------------------------------------------------------------------------------- | ------------------ | --------- | ----- | ------ | ---------------------------------------------------------- |
| tekst aan te duiden met als doel het vergroten van de leesbaarheid               | \<i>               |           |       | x      |                                                            |
| tekst: Belangrijk stuk text                                                      | \<strong>          |           |       | x      |                                                            |
| tekst: Klemtoon leggen                                                           | \<em>              |           |       | x      |                                                            |
| tekst: aanvullende informatie                                                    | \<small>           |           |       | x      |                                                            |
| tekst: markeren van de naam van een auteur of van een creatief werk              | \<cite>            |           |       | x      |                                                            |
| tekst: korte citaten in lopende zin (quote), attribuut cite om bron te vermelden | \<q>               |           |       | x      |                                                            |
| tekst: afkorting                                                                 | \<abbr>            |           |       | x      |                                                            |
| tekst: markeert de eerste keer dat een definitie voorkomt                        | \<gfn>             |           |       | x      |                                                            |
| tekst: markeren van programma code                                               | \<code>            |           |       | x      |                                                            |
| tekst: om een tijdstip of datum aan te duiden                                    | \<time>            |           |       | x      |                                                            |
| tekst: computer uitvoer                                                          | \<samp>            |           |       | x      |                                                            |
| tekst: gebruikersinvoer (keyboard)                                               | \<kbd>             |           |       | x      |                                                            |
| tekst: informatie die niet meer klopt (suppress)                                 | \<s>               |           |       | x      |                                                            |
| tekst: subscript                                                                 | \<sub>             |           |       | x      |                                                            |
| tekst: superscript                                                               | \<sup>             |           |       | x      |                                                            |
| tekst: markeer tekst (om tekst met speciale relevantie te markeren)              | \<mark>            |           |       | x      |                                                            |
| tekst: geeft aan dat inhoud is toegevoegd                                        | \<ins>             |           |       | x      |                                                            |
| tekst: geeft aan dat inhoud is verwijderd                                        | \<del>             |           |       | x      |                                                            |

# Lijsten

| openingstag  | naam                           | actie                                                                                           | attributen            |
| ------------ | ------------------------------ | ----------------------------------------------------------------------------------------------- | --------------------- |
| \<ol> \<\ol> | Ordered List                   | lijst met rangschikking                                                                         | start, type, reversed |
| \<ul> \<\ul> | Unordered List                 | lijst zonder rangschikking                                                                      |                       |
| \<li> \<\li> | List item                      | item van een Ordered of Unordered List                                                          |                       |
| \<dl> \<\dl> | Description of Definition List | lijst met beschrijvingen of definities, Kan bijvoorbeeld gebruikt worden om een FAQ te markeren |                       |
| \<dt> \<\dt> | Description Term               | Deel van Description List,de term waarvoor een beschrijving of definitie wordt gegeven          |                       |
| \<dd> \<\dd> | Description Details            | Deel van Decription beschrijving of definitie van de term                                       |                       |
# Forms

| openingstag             | naam                  | actie                                        | attributen                                                                                                                                                                                                                                                                           |
| ----------------------- | --------------------- | -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| \<form> \<form>         | Form                  | aflijning van het formulier                  | action<br>method (*post,get*)<br>autocomplete                                                                                                                                                                                                                                        |
| \<label> \<label>       | Label                 | Bijschrift bij het type                      | for                                                                                                                                                                                                                                                                                  |
| \<input> \<input>       |                       |                                              | type (*text, password, email, date, number, search, radio, checkbox, file, list, image, hidden, submit*)<br>name<br>id (moet naan van label zijn)<br>placeholder (hint invoerveld)<br>maxlength (maximum invoer lengte)<br>required (verplicht (field validation))<br>min<br>max<br> |
| \<select> \<select>     | Keuzelijst            | aflijning de keuzelijst                      | name<br>id<br>size<br>multiple                                                                                                                                                                                                                                                       |
| \<option> \<option>     | Optie                 | onderdeel van de keuzelijst of datalist      | value (de waarde, steeds invulen)<br>selected (standaardselectie)                                                                                                                                                                                                                    |
| \<datalist> \<datalist> | Combobox              | Aflijning van combobox                       | id (zelfde waarde als attrbt list)<br>                                                                                                                                                                                                                                               |
| \<textarea> \<textarea> | Multi line text input | voor meerdere regels tekstinvoer             | name                                                                                                                                                                                                                                                                                 |
| \<fieldset> \<fieldset> | fieldset              | Form controls groeperen, bevat een \<legend> |                                                                                                                                                                                                                                                                                      |
| \<legend> \<legend><br> | legend                | titel van de fieldset                        |                                                                                                                                                                                                                                                                                      |

**Attribuut method**:
- **get**: de *formulier-data worden toegevoegd aan de URL via naam-waarde paren* => zijn zichtbaar in de adresbalk + beperkt in lengte (afhankelijk van de browser) => enkel voor non-secure data
- **post**: voegt de *formulier-data toe aan de header van het HTTP request (niet zichtbaar)*. Wordt gebruikt bij data bestemd voor een databank, gevoelige data, uploaden bestanden.
# Tabel

| openingstag             | naam                         | actie                                             | attributen         |
| ----------------------- | ---------------------------- | ------------------------------------------------- | ------------------ |
| \<table> \<table>       | Tabel                        | tag waarbinnen de tabel zich bevind               |                    |
| \<caption> \<caption>   | Bijschrift                   | Bijschrift boven de tabel                         |                    |
| \<tr> \<tr>             | Tabel rij                    | een rij                                           |                    |
| \<th> \<\th>            | Tabel hoofding               | Kolomnaam                                         |                    |
| \<td> \<\td>            | Tabel data                   | data kolom                                        | colspan<br>rowspan |
| \<thead> \<\thead>      | Het head deel van de tabel   | Deel dat de head van de tabel aflijnt (voor css)  |                    |
| \<tbody> \<\tbody>      | Het body deel van de tabel   | eel dat de body van de tabel aflijnt (voor css)   |                    |
| \<tfoot> \<\tfoot>      | Het footer deel van de tabel | eel dat de footer van de tabel aflijnt (voor css) |                    |
| \<colgroup> \<colgroup> |                              |                                                   |                    |
| \<col> \<col>           |                              |                                                   |                    |
## Cellen samenvoegen
Toevoegen als *attribuut*:
- **colspan** (rijen samen voegen)
```html
<tr>
	<td colspan="3">Subtotaal</td>
	<td>$135.36$</td>
</tr>
```
- **rowspan** (kolommen samen voegen)
```html
<tr>
	<td rowspan="2">In Stock</td>
	<td>1</td>
	<td>$30.02</td>
</tr>
```

