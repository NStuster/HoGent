
# Definities
- Functies: Een klein programma dat iets terug geeft
- Procedure: Een klein programma
- Method

- Object
- Scope

# Functies

- leiden tot herbruikbare code
- laten toe om dubbele code te elimineren
- laten toe om oplossingen voor grotere problemen op te delen in kleine stukjes

## declaratie

```javascript
function functionname(par1,par2,...,parX) {
	statements
};
```

```javascript
function functionname(par1,par2,...,parX) {
	return statements
};
```

- function keyword
- naam
- lijst van parameters
	- tussen ronde haakjes, gescheiden door komma’s
de JavaScript statements die de functie definiëren
	- tussen accolades
	- gebruik het return statement om een waarde te retourneren

- return om een waarde terug te geven
## aanroep

```javascript
functionname(arg1, arg2,….argx);
```

- gebruik de naam van de functie
- voorzie argumenten voor de parameters
	- tussen ronde haakjes, gescheiden door komma’s
- merk op
	- een functie retourneert altijd een waarde
	- indien een functie niet expliciet een waarde retourneert dan retourneert de functie undefined


- bij aanroep worden de waarden van de argumenten doorgegeven aan de parameters – pass by value
- binnen de functie gebruik je de parameters net als lokale variabelen
	- je kan deze in de functie body dus mogelijks wijzigen
	- de scope van de parameters is beperkt tot de function body
• merk op:
- een variabele binnen de haken van een functie declaratie noemt men een parameter
- een waarde die wordt doorgegeven aan een functie bij aanroep noemt men een argument.

## default parameters

- bij declaratie kan aan een parameter een waarde worden toegekend – default value
- indien bij aanroep geen waarde, of undefined, wordt doorgegeven voor dergelijke parameter dan krijgt deze als waarde de default value
- indien er voor een parameter geen default value is gedefinieerd en er wordt tijdens aanroep geen waarde doorgegeven voor de parameter dan krijgt deze parameter de waarde undefined

```javascript
function showMessage(from, text = "empty message") {
	console.log(`${from}: ${text}`););
}
showMessage("Ann"); // Ann: empty message
```

- merk op dat parameters positioneel worden ingesteld: left-to-right

- door gebruik van default parameters kan je vermijden om instellingen voor parameters in de body van de functie te doen

![[Pasted image 20250220095219.png]]

## Voorbeeld

```javascript
function sayHi() {
	console.log('Hi');
	console.log('');
}

function sayHello() {
	console.log('Hello');
	console.log('');
} 

sayHi();

sayHello();
```


```javascript
function multiplyBy2(num) {
	const double = num * 2;
	return double;
}

console.log(multiplyBy2(6)); //12
```

# Hoisting

Hoisting is a JavaScript mechanism where declarations are moved to the top of their scope before code execution.
As a result, you can use a hoisted declaration in its scope before the line it is declared on.

• in JavaScript worden functie declaraties gehoist

```javascript
sayHi('Bob'); //alert: Hi, my name is Bob
function sayHi(name) {
alert(`Hi, my name is ${name}`);
}
H02 Functies – Arrays - Modules
sayHi('Bob'); //alert: Hi, my name is Bob
```

```
Een functie op dergelijke manier gedeclareerd, kan
overal in de code gebruikt worden, zelfs vóór zijn
declaratie!!
```

- Hoisting van let/const variables
	- er is een andere vorm van hoisting voor de let/const declaratie van variabelen
	- deze vorm van hoisting laat niet toe dat je een variabele gebruikt vóór zijn declaratie!

```javascript
'use strict’;
const x = 10;
{
console.log(x); // reference error
const x = 20;
}
```

```
de declaratie const x = 20 creeert een variabele met een
block scope (code block afgebakend door de accolades)
deze declaratie wordt gehoist: binnen het code block is er
dus geweten dat er een lokale variabele x is
de regel met console.log maakt geen gebruik van de
globale x, net omdat door de hoisting geweten is dat er een
lokale variable x is
de lokale variabele mag je echter niet gebruiken vóór zijn
declaratie: reference error
```

# Predefined functions

JavaScript kent verschillende top-level built-in functies, zoals:

- `isNaN()`
- `parseInt()`
- `parseFloat()`

# globalThis

JavaScript's `globalThis` is een property die de globale `this` waarde bevat. Dit verwijst naar het globale object:

- Het is een object dat steeds is gedefinieerd en bestaat in de global scope.
- In browseromgevingen is `globalThis` gelijk aan `window`.
- Dit is dus een referentie naar het browservenster dat het DOM bevat.
- Indien je methodes of properties van dit globale object wenst te gebruiken, hoef je deze niet vooraf te laten gaan door `globalThis.` of `window.`.
- Het gebruik van methodes van `window` lijkt dan ook sterk op het gebruik van built-in functies.

**Voorbeeld:** `alert()`, `confirm()`, `prompt()` kunnen direct gebruikt worden zoals built-in functies.

```javascript
function doAlert() {
    alert('I am an alert box!');
}

function doConfirm() {
    const antwoord = confirm('Press a button');
    if (antwoord === true) alert('You pressed OK!');
    else alert('You pressed Cancel!');
}

function doPrompt() {
    const name = prompt('Please enter your name', 'Harry Potter');
    if (name !== null && name !== "") {
        alert(`Hello ${name}! How are you today?`);
    }
}
```

**Voorbeeld van de `console` property:**

```javascript
function showMessage(from, text) {
    console.log(`${from}: ${text}`);
}

showMessage('Ann', 'Hello!'); // Ann: Hello!
showMessage('Ann', "What's up?"); // Ann: What's up?
```

# Functies

Tot nu toe hebben we functies gedeclareerd via een functie declaratie:

```javascript
function sayHi() {
    alert("Hello");
}
```

Maar functies kunnen ook gedeclareerd worden als een functie-expressie:

```javascript
const sayHi = function() {
    alert("Hello");
};
```

Bij een functie-expressie wordt de declaratie van een functie toegekend aan een variabele.
# Arrays

Een **array** is een geordende verzameling van elementen, die van verschillend type kunnen zijn:

- Elk element heeft een **index**, die begint bij `0`.
- Arrays zijn **dynamisch**, ze kunnen groeien en krimpen.
- Notatie: `[]`

## Declaratie van een lege array:

```javascript
const pizzas = [];
const pizzas = new Array();
```

## Declaratie en initialisatie via een literal notatie:

```javascript
const pizzas = ['Margherita', 'Mushroom', 'Spinach & Rocket', 'Pineapple & Sweetcorn'];
const mixedArray = [null, 1, 'two', true, undefined];
```

## Waarden toekennen en wijzigen:

```javascript
pizzas[0] = 'Margherita';
pizzas[1] = 'Mushroom';
pizzas[2] = 'Spinach & Rocket';

// Wijzigen
pizzas[0] = 'Ham & Pineapple';
```

## Elementen raadplegen via index:

```javascript
console.log(pizzas[2]); // 'Spinach & Rocket'
console.log(`Eerste pizza: ${pizzas[0]}`); // 'Margherita'
console.log(`Laatste pizza: ${pizzas[pizzas.length-1]}`); // 'Pineapple & Sweetcorn'
console.log(pizzas); // Geeft de volledige array
```

## Itereren over een array:

```javascript
for (let i = 0; i < pizzas.length; i++) {
    console.log(pizzas[i]);
}

for (let value of pizzas) {
    console.log(value);
}
```

## Elementen toevoegen en verwijderen:

```javascript
pizzas.push('Pepperoni'); // Toevoegen aan einde
pizzas.pop(); // Laatste element verwijderen

pizzas.unshift('Chicken & Bacon'); // Toevoegen aan begin
pizzas.shift(); // Eerste element verwijderen
```

![[Pasted image 20250220104801.png]]

- Stack (LIFO) (pop() en push())
- queque (FIFO) (unshift() en queue())

LIFO= Last in, first out
FIFO= First in, first out

## Zoeken in een array:

```javascript
pizzas.indexOf('Margherita'); // Geeft index van eerste voorkomen
pizzas.indexOf('Spicy Beef'); // Geeft -1 als het niet voorkomt
```

## Array methodes:

```javascript
const newPizzas = pizzas.concat(['Hawai']); // Samenvoegen
concat()

const reversed = pizzas.reverse(); // Omkeren
reverse()

const sliced = pizzas.slice(1, 3); // Uitsnede maken
slice(start_index, upto_index)

pizzas.splice(1, 2, 'Hawai'); // Verwijderen en toevoegen
a.splice(3, 1); // Verwijder 1 item op index 3
a.splice(3, 1, 88); // Verwijder 1 item op index 3 en vervang met 88
splice(start_index, numberofitemsToRemove, waarde1,…, waardex)
```

### mutating methods vs copying methods:

- de methodes reverse() en splice(…) muteren de array
	- de veranderingen aan de array gebeuren “in-place”
	- de methode retourneert een referentie naar de originele (gewijzigde) array
- de methodes toReversed() en toSpliced(…) muteren de array niet
	- de originele array blijft ongewijzigd
	- de methode retourneert een referentie naar een shallow copy met het resultaat

### Volledige array naar string

```javascript
console.log(arrayNaam.join());
```


## Debuggen met breakpoints

![[Pasted image 20250220111710.png]]

## Destructuring assignment (meerdere variabelen waarden toekennen met waarden uit array):

```javascript
const b = [111, 222, 333];

//zonder destructuring
//const x = b[0];
//const y = b[1];
//const z = b[2];
//einde zonder destructuring

//met destructuring
const [x, y, z] = b;

console.log(x, y, z);
```

```javascript
const [eerstePizza, tweedePizza] = pizzas;
console.log(eerstePizza); // 'Margherita'
console.log(tweedePizza); // 'Mushroom'
```

## Swapping variabelen vanaf ECMAScript 6 (variabelen omwisselen):

```javascript
let a = 1, b = 2;
[a, b] = [b, a];
console.log(a); // 2
console.log(b); // 1
```

## Meerdimensionale arrays (array met een array in):

```javascript
const a = [[11,12],[21,22],[31,32],[41,42]];

console.log(a[1]); //[21,22]
console.log(a[1][0]); //21

a[0][1] = 222; //222 steken op de plek waar 12 zit
```

```javascript
const hands = [];
hands[0] = [5, 'A', 3, 'J', 3];
hands[1] = [7, 'K', 3, 'J', 3];
console.log(`2de kaart, 2de hand: ${hands[1][1]}`);
```

## Voorbeeld 2D-array (schaakbord):
```javascript
function playChess() {
    const board = [
        ['R', 'N', 'B', 'Q', 'K', 'B', 'N', 'R'],
        ['P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'],
        [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
        [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '],
        ['p', 'p', 'p', 'p', 'p', 'p', 'p', 'p'],
        ['r', 'n', 'b', 'q', 'k', 'b', 'n', 'r']
    ];
    console.log(board.join('\n'));
    board[4][4] = board[6][4];
    board[6][4] = ' ';
    console.log(board.join('\n'));
}
```

---

# Modules (ES6)

Een module is een apart JavaScript-bestand dat je kan importeren en exporteren.

**Exporteren:**

```javascript
export function sayHi(user) {
    alert(`Hello, ${user}!`);
}
```

**Importeren:**

```javascript
import { sayHi } from './say.js';
sayHi('John');
```

Voor meer informatie: [MDN Docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array).

# Cheatsheet

### JavaScript Cheatsheet

|Concept|Beschrijving|Voorbeeld|
|---|---|---|
|`isNaN()`|Controleert of een waarde `NaN` is|`isNaN('abc') // true`|
|`parseInt()`|Zet een string om naar een geheel getal|`parseInt('42') // 42`|
|`parseFloat()`|Zet een string om naar een decimaal getal|`parseFloat('3.14') // 3.14`|
|`globalThis`|Verwijst naar het globale object|`console.log(globalThis)`|
|`alert()`|Toont een melding|`alert('Hallo!')`|
|`confirm()`|Geeft een Ja/Nee prompt|`confirm('Doorgaan?')`|
|`prompt()`|Vraagt input van de gebruiker|`prompt('Wat is je naam?')`|
|`console.log()`|Print naar de console|`console.log('Hallo')`|
|Functies|Declaratie van een functie|`function sayHi() { alert('Hi'); }`|
|Functie expressie|Toekennen van een functie aan een variabele|`const sayHi = function() { alert('Hi'); }`|
|Arrays|Lijst van waarden|`const arr = [1,2,3];`|
|Array methode `push()`|Voeg een item toe aan het einde|`arr.push(4);`|
|Array methode `pop()`|Verwijdert het laatste item|`arr.pop();`|
|Array methode `unshift()`|Voeg een item toe aan het begin|`arr.unshift(0);`|
|Array methode `shift()`|Verwijdert het eerste item|`arr.shift();`|
|`indexOf()`|Zoekt een element in een array|`arr.indexOf(2);`|
|`reverse()`|Keert de array om|`arr.reverse();`|
|`slice()`|Maakt een kopie van een array|`arr.slice(1,3);`|
|`splice()`|Voegt of verwijdert items in een array|`arr.splice(1, 2, 'nieuw');`|
|Destructuring|Haal elementen uit een array|`const [a, b] = arr;`|
|Variabelen swappen|Wissel waarden zonder tijdelijke variabele|`[a, b] = [b, a];`|
|Meerdimensionale array|Array binnen een array|`const matrix = [[1,2],[3,4]];`|
|Modules `export`|Exporteer functionaliteit|`export function test() {}`|
|Modules `import`|Importeer functionaliteit|`import { test } from './test.js';`|

Voor meer informatie: [MDN Docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array).

