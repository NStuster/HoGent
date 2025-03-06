### Definities

| Concept   | Beschrijving                                                               |
| --------- | -------------------------------------------------------------------------- |
| Functies  | Een klein programma dat iets teruggeeft (herbruikbare code).               |
| Procedure | Een klein programma (zonder expliciete returnwaarde).                      |
| Method    | Een functie die onderdeel is van een object.                               |
| Object    | Een verzameling van properties; elke property heeft een key en een waarde. |
| Scope     | Het bereik waarin variabelen en functies zichtbaar en bruikbaar zijn.      |

---

### Console en output

|Naam|Voorbeeld|Uitleg|
|---|---|---|
|Console log|`console.log('Hallo');``console.log(myName, age);``console.log(typeof x);`|Print naar de console voor debugging.|
|Alert|`alert('text');``alert("Al'arm!");`|Bij alert zal de HTML-rendering pas erna uitgevoerd worden.|
|Commentaar|`// commentaar` `/* meerdere regels commentaar */`|Gebruikt voor documentatie in code.|
|Strict mode|`'use strict';`|Dwingt een striktere manier van programmeren af.|

---

### Variabelen

|Concept|Voorbeeld|Uitleg|
|---|---|---|
|Variabele|`let myName = 'Nikki';``let age = 41;``age = age + 1;`|Gebruik steeds camelCase bij voorkeur.|
|Const|`const startjaar = 1983;`|Variabele die niet kan veranderen (maar toch geen constante). Gebruik zoveel mogelijk.|
|Concatinatie|`console.log('Mijn naam is ' + myName + ' en ik ben ' + age + ' jaar');`|Strings samenvoegen met `+`.|
|Not a number (NaN)|`NaN``isNaN(x)`|`isNaN()` detecteert of een waarde NaN is en geeft een boolean terug.|
|Infinity|`Infinity``-Infinity`|Geeft oneindigheid weer.|
|Conversie|`parseInt(aString [, radix])``parseFloat(aString)`|Zet een string om naar een getal.|
|Casting|`console.log(Number('56') + 3);``console.log(String(5.678));``console.log(Boolean('test'));`|Zet een waarde expliciet om naar een ander datatype.|

---

### String manipulatie

|Methode|Voorbeeld|Uitleg|
|---|---|---|
|`string.length`|`console.log(myString.length);`|Geeft de lengte van een string.|
|`string.charAt(n)`|`console.log(myString.charAt(7));`|Geeft het karakter op positie `n`.|
|`string.indexOf(sub)`|`console.log(myString.indexOf("s"));`|Geeft de positie van de eerste match van `sub`.|
|`string.substring(a, b)`|`console.log(myString.substring(3,7));`|Geeft een deelstring van `a` tot `b`.|
|`string.toLowerCase()`|`console.log(myString.toLowerCase());`|Zet de string om naar kleine letters.|
|`string.toUpperCase()`|`console.log(myString.toUpperCase());`|Zet de string om naar hoofdletters.|

---

### Getallen en Math-object

|Methode|Voorbeeld|Uitleg|
|---|---|---|
|`Math.round(x)`|`Math.round(4.7); // 5`|Rondt af naar het dichtstbijzijnde gehele getal.|
|`Math.trunc(x)`|`Math.trunc(4.7); // 4`|Verwijdert de decimalen.|
|`Math.max(a, b, c)`|`Math.max(5, 10, 20); // 20`|Geeft het grootste getal terug.|
|`Math.min(a, b, c)`|`Math.min(5, 10, 20); // 5`|Geeft het kleinste getal terug.|
|`Math.random()`|`Math.random();`|Geeft een willekeurig getal tussen 0 en 1.|

---

### Datum en tijd

|Methode|Voorbeeld|Uitleg|
|---|---|---|
|`new Date()`|`const date = new Date();`|Geeft de huidige datum en tijd.|
|`new Date(jaar, maand, dag, uur, min, sec, ms)`|`new Date(1954,11,14,5,34,0,0);`|Creëert een specifieke datum (maand 0-11).|
|`getDate()`|`date.getDate();`|Geeft de dag van de maand.|
|`getMonth()`|`date.getMonth();`|Geeft de maand (0-11).|
|`getFullYear()`|`date.getFullYear();`|Geeft het volledige jaar.|

---

### Functies

| Onderdeel          | Beschrijving                                                                                                                                                                              | Voorbeeld                                                                                                                                                                                                                                                                                                                                     |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Declaratie         | Een functie wordt gedeclareerd met het `function` keyword, gevolgd door een naam, een lijst van parameters (tussen ronde haakjes, gescheiden door komma’s) en de body (tussen accolades). | `function functionname(par1,par2,...,parX) {` <br>`statements`<br>`};`<br><br>`function functionname(par1,par2,...,parX) {`<br>`return statements`<br>`};`                                                                                                                                                                                    |
| Aanroep            | Roep een functie aan door de functienaam te gebruiken en argumenten tussen ronde haakjes te plaatsen.                                                                                     | `functionname(arg1, arg2,..., argx);`                                                                                                                                                                                                                                                                                                         |
| Default Parameters | Bij declaratie kan een parameter een standaardwaarde krijgen. Als bij de aanroep geen waarde of `undefined` wordt meegegeven, gebruikt de parameter deze default waarde.                  | `function showMessage(from, text = "empty message") {`<br>`console.log(from + ": " + text);`<br>`}`<br>`showMessage("Ann"); // Ann: empty message`                                                                                                                                                                                            |
| Voorbeeld functies | Voorbeelden van eenvoudige functies die iets uitvoeren en/of een waarde retourneren.                                                                                                      | `function sayHi() {` <br>`console.log('Hi');` <br>`console.log('');`<br>`}`<br><br>`function sayHello() {` <br>`console.log('Hello');` <br>`console.log('');`<br>`}`<br><br>`sayHi();`<br>`sayHello();`<br>`function multiplyBy2(num) {`<br>`const double = num * 2;` <br>`return double;`<br>`}`<br><br>`console.log(multiplyBy2(6)); // 12` |

---

### Hoisting

| Onderdeel              | Beschrijving                                                                                                                                    | Voorbeeld                                                                                                              |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| Functie Hoisting       | Functie-declaraties worden naar de top van hun scope verplaatst, waardoor je ze kunt aanroepen vóór hun definitie.                              | `sayHi('Bob'); // alert: Hi, my name is Bob`<br>`function sayHi(name) {` <br>`alert("Hi, my name is " + name);`<br>`}` |
| Hoisting bij let/const | Variabelen gedeclareerd met `let` of `const` worden gehoist maar niet geïnitialiseerd. Gebruik vóór de declaratie leidt tot een ReferenceError. | `"use strict";`<br>`const x = 10;`<br>`{` <br><br>`console.log(x); // ReferenceError` <br>`const x = 20;``}`           |

---

### Predefined Functions

|Onderdeel|Beschrijving|Voorbeeld|
|---|---|---|
|isNaN()|Controleert of een waarde `NaN` is en geeft een boolean terug.|`isNaN('abc'); // true`|
|parseInt()|Zet een string om naar een geheel getal.|`parseInt('42'); // 42`|
|parseFloat()|Zet een string om naar een decimaal getal.|`parseFloat('3.14'); // 3.14`|

---

### globalThis

| Onderdeel   | Beschrijving                                                                                                                                              | Voorbeeld                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| globalThis  | Verwijst naar het globale object (in browsers gelijk aan `window`). Hierdoor kun je methoden zoals `alert()`, `confirm()` en `prompt()` direct gebruiken. | `function doAlert() {`<br>`alert("I am an alert box!");`<br>`}`<br><br>`function doConfirm() {` <br>`const antwoord = confirm("Press a button");` <br>`if (antwoord === true) alert("You pressed OK!");` <br>`else alert("You pressed Cancel!");`<br>`}`<br><br>`function doPrompt() {` <br>`const name = prompt("Please enter your name", "Harry Potter");` <br>`if (name !== null && name !== "") {`<br>`alert("Hello " + name + "! How are you today?");`<br>`}`<br>`}` |
| console.log | Wordt gebruikt om berichten naar de console te schrijven.                                                                                                 | `function showMessage(from, text) {`<br>`console.log(from + ": " + text);`<br>`}`<br><br>`showMessage("Ann", "Hello!");`<br>`showMessage("Ann", "What's up?");`                                                                                                                                                                                                                                                                                                            |

---

### Functie Declaratie versus Expressie

| Onderdeel         | Beschrijving                                                                                                                  | Voorbeeld                                              |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------ |
| Declaratie        | Een functie wordt gedeclareerd met het `function` keyword en is overal in de scope beschikbaar (door hoisting).               | `function sayHi() {` <br>`alert("Hello");`<br>`}`      |
| Functie-expressie | Een functie wordt toegekend aan een variabele; deze wordt niet volledig gehoist, dus gebruik vóór declaratie geeft een error. | `const sayHi = function() {` `alert("Hello");`<br>`};` |

---

### Arrays

| Onderdeel                          | Beschrijving                                                                                                                                                              | Voorbeeld                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Declaratie                         | Een array is een geordende verzameling van elementen. Je kunt een lege array aanmaken met literal notatie of met de `new Array()` constructor.                            | `const pizzas = [];`<br>`const pizzas = new Array();`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Declaratie en Initialisatie        | Initialiseer een array met een literal notatie.                                                                                                                           | `const pizzas = ['Margherita', 'Mushroom', 'Spinach & Rocket', 'Pineapple & Sweetcorn'];`<br>`const mixedArray = [null, 1, 'two', true, undefined];`                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Waarden toekennen & Wijzigen       | Elementen worden toegewezen via hun index (beginnend bij 0).                                                                                                              | `pizzas[0] = 'Margherita';`<br>`pizzas[1] = 'Mushroom';`<br>`pizzas[2] = 'Spinach & Rocket';`<br>`// Wijzigen``pizzas[0] = 'Ham & Pineapple';`                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Elementen Raadplegen               | Raadpleeg elementen via hun index; gebruik `length` om het laatste element te vinden.                                                                                     | `console.log(pizzas[2]); // 'Spinach & Rocket'`<br>`console.log("Eerste pizza: " + pizzas[0]);`<br>`console.log("Laatste pizza: " + pizzas[pizzas.length-1]);`<br>`console.log(pizzas);`                                                                                                                                                                                                                                                                                                                                                                                                            |
| Itereren Over een Array            | Itereren met een klassieke for-lus of met `for...of`.                                                                                                                     | `for (let i = 0; i < pizzas.length; i++) {`<br>`console.log(pizzas[i]);`<br>`}`<br><br>`for (let value of pizzas) {`<br>`console.log(value);`<br>`}`                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Elementen Toevoegen en Verwijderen | Voeg elementen toe aan het einde of begin, en verwijder ze met `push()`, `pop()`, `unshift()` en `shift()`.                                                               | `pizzas.push('Pepperoni'); // Toevoegen aan einde`<br>`pizzas.pop(); // Laatste element verwijderen`<br>`pizzas.unshift('Chicken & Bacon'); // Toevoegen aan begin`<br>`pizzas.shift(); // Eerste element verwijderen`                                                                                                                                                                                                                                                                                                                                                                              |
| Zoeken in een Array                | Gebruik `indexOf()` om de index van een element te vinden (of -1 als het element niet voorkomt).                                                                          | `pizzas.indexOf('Margherita'); // Geeft index van eerste voorkomen`<br>`pizzas.indexOf('Spicy Beef'); // Geeft -1`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Array Methodes                     | Manipuleer arrays met methodes zoals `concat()`, `reverse()`, `slice()` en `splice()`.                                                                                    | `const newPizzas = pizzas.concat(['Hawai']);`<br>`const reversed = pizzas.reverse();`<br>`const sliced = pizzas.slice(1, 3);`<br>`pizzas.splice(1, 2, 'Hawai');`                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Mutating vs. Copying Methods       | Methoden als `reverse()` en `splice()` muteren de array (in-place), terwijl `toReversed()` en `toSpliced()` een shallow copy retourneren (originele array blijft intact). | –                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Array naar String                  | Converteer de volledige array naar een string met `join()`.                                                                                                               | `console.log(pizzas.join());`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Destructuring Assignment           | Wijs elementen uit een array toe aan variabelen met destructuring.                                                                                                        | `const b = [111, 222, 333];`<br>`const [x, y, z] = b;`<br>`console.log(x, y, z);`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Variabelen Swappen                 | Wissel waarden tussen twee variabelen zonder een tijdelijke variabele te gebruiken.                                                                                       | `let a = 1, b = 2;`<br>`[a, b] = [b, a];`<br>`console.log(a); // 2`<br>`console.log(b); // 1`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Meerdimensionale Arrays            | Een array kan andere arrays bevatten, zodat je complexe datastructuren kunt bouwen.                                                                                       | `const a = [[11,12],[21,22],[31,32],[41,42]];`<br>`console.log(a[1]); // [21,22]`<br>`console.log(a[1][0]); // 21`<br>`a[0][1] = 222;`                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Voorbeeld 2D-array (schaakbord)    | Een voorbeeld waarin een schaakbord als 2D-array wordt aangemaakt en aangepast.                                                                                           | `function playChess() {` <br>`const board = [` <br>`['R', 'N', 'B', 'Q', 'K', 'B', 'N', 'R'],` <br>`['P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'],` <br>`[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],`<br>`[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],` <br>`[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],` <br>`[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],` <br>`['p', 'p', 'p', 'p', 'p', 'p', 'p', 'p'],` <br>`['r', 'n', 'b', 'q', 'k', 'b', 'n', 'r']` <br>`];` <br><br>`console.log(board.join('\n'));` <br>`board[4][4] = board[6][4];`<br>`board[6][4] = ' ';` <br>`console.log(board.join('\n'));`<br>`}` |

---

### Arrays en methoden

|Methode|Voorbeeld|Uitleg|
|---|---|---|
|`push()`|`arr.push(4);`|Voegt een item toe aan het einde.|
|`pop()`|`arr.pop();`|Verwijdert het laatste item.|
|`unshift()`|`arr.unshift(0);`|Voegt een item toe aan het begin.|
|`shift()`|`arr.shift();`|Verwijdert het eerste item.|
|`reverse()`|`arr.reverse();`|Keert de volgorde van de array om.|
|`slice(a, b)`|`arr.slice(1,3);`|Maakt een kopie van een deel van de array.|
|`splice()`|`arr.splice(1, 2, 'nieuw');`|Voegt of verwijdert items in een array.|

---

### Modules (ES6)

| Onderdeel  | Beschrijving                                                          | Voorbeeld                                                                  |
| ---------- | --------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| Exporteren | Exporteer functionaliteit vanuit een module met het `export` keyword. | `export function sayHi(user) {`<br>`alert("Hello, " + user + "!");`<br>`}` |
| Importeren | Importeer functionaliteit uit een module met het `import` keyword.    | `import { sayHi } from './say.js';`<br>`sayHi("John");`                    |

---

### Cheatsheet Overzicht

|Concept|Beschrijving|Voorbeeld|
|---|---|---|
|`isNaN()`|Controleert of een waarde `NaN` is.|`isNaN('abc') // true`|
|`parseInt()`|Zet een string om naar een geheel getal.|`parseInt('42') // 42`|
|`parseFloat()`|Zet een string om naar een decimaal getal.|`parseFloat('3.14') // 3.14`|
|`globalThis`|Verwijst naar het globale object (in browsers gelijk aan `window`).|`console.log(globalThis)`|
|`alert()`|Toont een melding.|`alert('Hallo!')`|
|`confirm()`|Geeft een Ja/Nee prompt.|`confirm('Doorgaan?')`|
|`prompt()`|Vraagt input van de gebruiker.|`prompt('Wat is je naam?')`|
|`console.log()`|Print naar de console.|`console.log('Hallo')`|
|Functies (Declaratie)|Declaratie van een functie.|`function sayHi() { alert('Hi'); }`|
|Functie-expressie|Toekennen van een functie aan een variabele.|`const sayHi = function() { alert('Hi'); }`|
|Arrays|Een lijst van waarden.|`const arr = [1,2,3];`|
|Array methode `push()`|Voegt een item toe aan het einde.|`arr.push(4);`|
|Array methode `pop()`|Verwijdert het laatste item.|`arr.pop();`|
|Array methode `unshift()`|Voegt een item toe aan het begin.|`arr.unshift(0);`|
|Array methode `shift()`|Verwijdert het eerste item.|`arr.shift();`|
|`indexOf()`|Zoekt een element in een array.|`arr.indexOf(2);`|
|`reverse()`|Keert de array om.|`arr.reverse();`|
|`slice()`|Maakt een kopie van een array.|`arr.slice(1,3);`|
|`splice()`|Voegt of verwijdert items in een array.|`arr.splice(1, 2, 'nieuw');`|
|Destructuring Assignment|Haalt elementen uit een array.|`const [a, b] = arr;`|
|Variabelen swappen|Wisselt waarden zonder tijdelijke variabele.|`[a, b] = [b, a];`|
|Meerdimensionale array|Een array binnen een array.|`const matrix = [[1,2],[3,4]];`|
|Modules `export`|Exporteert functionaliteit.|`export function test() {}`|
|Modules `import`|Importeert functionaliteit.|`import { test } from './test.js';`|

---

### Objecten

| Onderdeel                             | Beschrijving                                                                                                                                                                                                                                        | Voorbeeld                                                                                                                                                                                                                              |
| ------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Object Literal Notation**           | Een object wordt aangemaakt met de object initializer syntax (object literal). <br>Een object is een verzameling properties met een key (een string) en een waarde (primitief of een ander object).                                                 | `const emptyObject = {};`<br>`const myAvatar = {` <br>`name: 'Bob',`<br>`points: 20,` <br>`gender: 'male',` <br>`hair: { color: 'black', cut: 'punk' }`<br>`};`                                                                        |
| **Property Value Shorthand**          | Als de variabelenaam en de property key hetzelfde zijn, <br>kun je de shorthand notatie (ES6) gebruiken in plaats van `name: name`.                                                                                                                 | `const name = 'Bob';`<br>`const points = 20;`<br>`const gender = 'male';`<br>`const myAvatar = { name, points, gender };`                                                                                                              |
| **Punt- en Arraynotatie**             | Je kunt properties uitlezen met de puntnotatie (object.property) of met de arraynotatie (object['property']). <br>Puntnotatie is leesbaarder, maar arraynotatie is handig als de key in een variabele zit of niet voldoet aan de identifier-regels. | `const points = myAvatar.points;`<br>`const name = myAvatar['name'];`                                                                                                                                                                  |
| **Object Aanmaken op Twee Manieren**  | Je kunt een object direct initialiseren met properties of eerst een leeg object maken en later properties toevoegen.                                                                                                                                | _Direct:_<br>`const myAvatar = {` <br>`name: 'Bob',`<br>`points: 20,` <br>`gender: 'male'``};`<br><br>_Stapsgewijs:_<br>`const myAvatar = {};`<br>`myAvatar.name = 'Bob';`<br>`myAvatar.points = 20;`<br>`myAvatar.gender = 'male';`   |
| **Properties Wijzigen & Verwijderen** | Wijzig de waarde van een property met punt- of arraynotatie, of verwijder een property met het `delete` keyword.                                                                                                                                    | Wijzigen:<br>`myAvatar.points = 50;`<br>`// of`<br>`myAvatar['points'] = 50;`<br><br>Verwijderen:<br>`delete myAvatar.gender;`                                                                                                         |
| **Itereren over Properties**          | Gebruik de `for...in`-lus om alle properties van een object te doorlopen.                                                                                                                                                                           | `for (const key in myAvatar) {`<br>`console.log('-- ' + key + ' : ' + myAvatar[key]);`<br>`}`                                                                                                                                          |
| **Static Methods**                    | Met `Object.keys()`, `Object.values()` en `Object.entries()` kun je respectievelijk een array met keys, values of key-value paren uit een object halen.                                                                                             | `const keys = Object.keys(myAvatar);`<br>`const values = Object.values(myAvatar);`<br>`const entries = Object.entries(myAvatar);`                                                                                                      |
| **Destructuring Assignment**          | Haal properties uit een object in één statement. <br>Je kunt ook aliasnamen, defaultwaarden en geneste destructuring toepassen.                                                                                                                     | Basis:<br>`const { name, points } = myAvatar;`<br><br>Alias:<br>`const { name, gender: geslacht } = myAvatar;`<br><br>Default:<br>`const { weight = 'unknown' } = myAvatar;`<br><br>Genest:<br>`const { hair: { color } } = myAvatar;` |

---

### Functies

| Onderdeel                      | Beschrijving                                                                                                                                                                                                         | Voorbeeld                                                                                                                                                                                      |
| ------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Functie Declaratie**         | Een functie wordt gedeclareerd met het `function` keyword, gevolgd door een naam, een lijst van parameters (tussen ronde haakjes) en de function body (tussen accolades).                                            | `function sayHi(name) {`<br>`return 'Hi, my name is ' + name;`<br>`}`                                                                                                                          |
| **Functie Aanroepen**          | Roep een functie aan door de naam te gebruiken, gevolgd door argumenten tussen ronde haakjes.                                                                                                                        | `console.log(sayHi('Ann'));`                                                                                                                                                                   |
| **Return Statement**           | Het `return` statement stopt de uitvoering van de functie en retourneert een waarde. Als er geen `return` staat, retourneert de functie `undefined`.                                                                 | `function add(a, b) {` <br>`return a + b;`<br>`}`                                                                                                                                              |
| **Parameters & Argumenten**    | Parameters worden in de functie gedefinieerd en tijdens de aanroep vervangen door argumenten. Als er geen argument wordt meegegeven, is de parameter `undefined` (tenzij er een default waarde is ingesteld).        | `function f(a, b = 12) {` <br>`console.log(a, b);`<br>`}`<br><br>`f(11); // Output: 11 12`                                                                                                     |
| **Rest Parameters**            | Met de rest parameter syntax (`...`) kun je meerdere argumenten opvangen in één array.                                                                                                                               | `function g(a, b, ...otherArgs) {` <br>`console.log(otherArgs);`<br>`}`<br><br>`g(1, 2, 3, 'Four', 5); // otherArgs is [3, 'Four', 5]`                                                         |
| **Hoisting**                   | Functies gedeclareerd met een functie-declaratie worden gehoist, waardoor je ze overal in de scope kunt gebruiken, zelfs vóór hun eigen definitie.                                                                   | `sayHi('Bob');`<br>`function sayHi(name) {` <br>`return 'Hi, my name is ' + name;`<br>`}`                                                                                                      |
| **First Class Functions**      | Functies zijn first class objects: ze kunnen worden toegewezen aan variabelen, als argument worden doorgegeven en als returnwaarde worden gebruikt.                                                                  | `const dyeHair = function(avatar, color = 'green') {` <br>`avatar.hair.color = color;`<br>`};`                                                                                                 |
| **Inner Functions (Closures)** | Een inner function kan binnen een outer function worden gedefinieerd en behoudt toegang tot de variabelen van de outer function, zelfs nadat deze voltooid is.                                                       | `function addSquares(a, b) {` <br>`function square(x) {`<br>`return x * x;` <br>`}` <br><br>`return square(a) + square(b);`<br>`}`                                                             |
| **Arrow Functions**            | Arrow functions bieden een compacte syntax voor functie-expressies. Bij één parameter kunnen de haakjes worden weggelaten en bij een enkele return-expressie hoeven accolades en `return` niet te worden geschreven. | Basis:<br>`const isPass = mark => mark >= 10;`<br><br>Als parameter:<br>`const convertMark = (converter, number) => converter(number);`<br>`console.log(convertMark(mark => mark >= 10, 50));` |
| **Functies als Methodes**      | Een functie die als property aan een object wordt toegevoegd, wordt een methode genoemd. Binnen een methode verwijst `this` naar het object zelf.                                                                    | `const myAvatar = {` <br>`name: 'Bob',` <br>`sayHi() {` <br>`return 'Hi, I am ' + this.name;`<br>`}`<br>`};`<br><br>`console.log(myAvatar.sayHi());`                                           |

---
### DOM events

| Event               | Beschrijving                                                                                  |
| ------------------- | --------------------------------------------------------------------------------------------- |
| `click`             | Wordt geactiveerd wanneer een gebruiker op een element klikt.                                 |
| `mouseover`         | Gebeurtenis wanneer de gebruiker over een element muiskaart.                                  |
| `mouseout`          | Gebeurtenis wanneer de gebruiker de muis van een element raaktlatingt.                        |
| `dblclick`          | Wordt geactiveerd wanneer een gebruiker dubbelklikt op een element.                           |
| `keydown`           | Gebeurtenis wanneer de gebruiker een toets drukt (bijv. `keydown`-toets).                     |
| `keyup`             | Gebeurtenis wanneer de gebruiker een toets loslaat.                                           |
| `dragstart`         | Wordt geactiveerd wanneer de gebruiker een element aanleeft voor drag-and-drop.               |
| `dragend`           | Bevindt zich in de process van drag-and-drop.                                                 |
| `drop`              | Gebeurtenis wanneer het element wordt neergelegd na drag-and-drop.                            |
| `contextmenu`       | Wordt geactiveerd wanneer de gebruiker op "Right click" maakt.                                |
| `formsubmit`        | Gebeurtenis wanneer een formulier wordt ingediend (bijv. met `submit`-knop).                  |
| `change`            | Wordt geactiveerd wanneer een invulveld in een formulier aanpassingt.                         |
| `select`            | Gebeurtenis wanneer een gebruiker op een selectielijst klikt.                                 |
| `scroll`            | Gebeurtenis wanneer de gebruiker scrolled over het document beweegt.                          |
| `resize`            | Wordt geactiveerd wanneer de gebruiker het venster resizeert.                                 |
| `orientationchange` | Gebeurtenis bij schermorientatie-aanpassingen (bijv. van portrait naar landscape).            |
| `visibilitychange`  | Gebeurtenis wanneer de visibiliteit van het document verandert (bijv. bij modalevenvensters). |
| `focus`             | Wordt geactiveerd wanneer een element focus krijgt (bijv. inputvelden).                       |
| `blur`              | Gebeurtenis wanneer de focus van het document verandert.                                      |
| `load`              | Gebeurtenis wanneer het document volledig is geladen.                                         |



| Onderdeel         | Beschrijving                                          | Voorbeeld                                                                                                                                                                    |
| ----------------- | ----------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **window.onload** | Wachten op DOM Load (wachten tot pagina ingeladen is) | `const init = function() {`<br>`   const sayHiButton = document.getElementById('sayHi');`<br>`   sayHiButton.onclick = sayHiClicked;`<br>`};`<br><br>`window.onload = init;` |

---
# H04 nog toevoegen

