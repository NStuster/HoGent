
| Naam        | Voorbeeld                                                                          | Uitleg                                                               |     |
| ----------- | ---------------------------------------------------------------------------------- | -------------------------------------------------------------------- | --- |
| Console log | `console.log('Hallo');`<br>`console.log(myName, age);`<br>`console.log(typeof x);` |                                                                      |     |
| Alert       | `alert('text');`<br>`alert("Al'arm!");`                                            | Bij alert zal de html (rendering engine) pas er na uitgevoerd worden |     |
| Commentaar  | `//commentaar`                                                                     |                                                                      |     |
| Commentaar  | `/* meedere lijnen commentaar */`                                                  |                                                                      |     |
| Strict mode | `"use strict";`                                                                    | om op de moderne manier werken (bovenaan zetten)                     |     |
|             |                                                                                    |                                                                      |     |

| Naam                 | Voorbeeld                                                                                                                                 | Uitleg                                                                                       |     |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | --- |
| Variabele            | `myName = 'Nikki';`<br>`age = 41;`<br>`age = age + 1;`                                                                                    | Gebruik steeds camelcase bij voorkeur                                                        |     |
| Variabele met strict | `'use strict';`<br>`let myName = 'Nikki';`<br>`let age; //door strict moeten we eerst initialiseren`<br>`age = 41;`<br>`age = age + 1;`   |                                                                                              |     |
| const                | `const startjaar = 1983;`                                                                                                                 | Variabele die niet kunnen veranderen (maar toch geen constante)<br>Gebruik zoveel mogelijk   |     |
| Concatinatie         | `console.log('Mijn naam is' + myName + ' en ik ben ' + age + ' jaar');`                                                                   |                                                                                              |     |
|                      |                                                                                                                                           |                                                                                              |     |
| Not a number         | `NaN`                                                                                                                                     |                                                                                              |     |
|                      | `isNan()`                                                                                                                                 | detecteerd of waarde NaN en geeft boolean terug                                              |     |
|                      | `infinity`<br>`-infinity`                                                                                                                 |                                                                                              |     |
|                      | `isFinite()`                                                                                                                              |                                                                                              |     |
|                      | `parseInt(aString [, radix])`                                                                                                             |                                                                                              |     |
|                      | `parseFloat(aString)`                                                                                                                     |                                                                                              |     |
|                      | `toString()`                                                                                                                              |                                                                                              |     |
|                      | `valueOf()`                                                                                                                               |                                                                                              |     |
|                      |                                                                                                                                           |                                                                                              |     |
| Casting              | `console.log(Number('56') + 3);`<br>`console.log(String(5.678));`<br>`console.log(Boolean('test'));`<br>`console.log(1000n + BigInt(5));` |                                                                                              |     |
|                      |                                                                                                                                           |                                                                                              |     |
|                      | `toFixed(x);`                                                                                                                             |                                                                                              |     |
|                      | `toString(x)`                                                                                                                             |                                                                                              |     |
|                      |                                                                                                                                           |                                                                                              |     |
|                      | `Number.MIN_VALUE`                                                                                                                        |                                                                                              |     |
|                      | `Number.MAX_VALUE`                                                                                                                        |                                                                                              |     |
|                      | `Number.NaN`                                                                                                                              |                                                                                              |     |
|                      |                                                                                                                                           |                                                                                              |     |
|                      | **Wrapper object String**                                                                                                                 |                                                                                              |     |
|                      | `string.length`                                                                                                                           |                                                                                              |     |
|                      | `string.charAt(7)`                                                                                                                        | Geeft het achtste teken                                                                      |     |
|                      | `z=w.concat(p);`                                                                                                                          | Geeft wp als resultaat (zoals w+p)                                                           |     |
|                      | `string.indexOf("s")`<br>`string.indexOf("s",2)`                                                                                          | Nummer van eerste char 's' die je tegen komt<br>Nummer van tweede char 's' die je tegen komt |     |
|                      | `string.substring(3)`<br>`string.substring(3,4)`                                                                                          | geeft substring vanaf teken nr 3<br>geeft substring vanaf teken nr 3, 4 tekens lang          |     |
|                      | `string.toLowerCase`                                                                                                                      |                                                                                              |     |
|                      | `string.toUpperCase`                                                                                                                      |                                                                                              |     |
|                      |                                                                                                                                           |                                                                                              |     |
|                      | **Wrapper object BigInt**                                                                                                                 |                                                                                              |     |
|                      | `BigInt(15646816515156)`                                                                                                                  |                                                                                              |     |
|                      |                                                                                                                                           |                                                                                              |     |
|                      | **Math-object**                                                                                                                           |                                                                                              |     |
|                      | `Math.round(getal)`                                                                                                                       |                                                                                              |     |
|                      | `Math.trunc(getal)`                                                                                                                       |                                                                                              |     |
|                      | `Math.max(getal)`                                                                                                                         |                                                                                              |     |
|                      | `Math.min(getal)`                                                                                                                         |                                                                                              |     |
|                      | `Math.random()`<br>`Math.trunc(Math.random() * 5) + 1`                                                                                    | Random getal van 0 tem 1<br>geef een random getal van 1 tem 6                                |     |
|                      | `Math.PI`                                                                                                                                 | Geeft Pi (3.14....)                                                                          |     |
|                      |                                                                                                                                           |                                                                                              |     |
|                      | **Date-object**                                                                                                                           | Als timestamp in miliseconde tov 1/1/1970                                                    |     |
|                      | `const date = new Date();`                                                                                                                | Datum van vandaag                                                                            |     |
|                      | `const date = new Date(1954,11,14,5,34,0,0);`                                                                                             | specifieke datum (maand is van 0 tem 11)<br>jaar, maand, dag, uren, minuten, sec, msec       |     |
|                      | `getDate()`                                                                                                                               |                                                                                              |     |
|                      | `getMoth()`                                                                                                                               |                                                                                              |     |
|                      | `getFullYear()`                                                                                                                           |                                                                                              |     |
|                      |                                                                                                                                           |                                                                                              |     |
|                      |                                                                                                                                           |                                                                                              |     |
|                      |                                                                                                                                           |                                                                                              |     |


`console.log((1) ? true : false);`

      console.log(Math.trunc(Math.random() * 5) + 1);

      const vandaag = new Date();
      console.log(vandaag);
      console.log(vandaag.toUTCString());


### Cheatsheet Functions, arrays en modules

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