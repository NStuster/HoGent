# Objecten

## Definitie

JavaScript is designed on a simple object-based paradigm. An object is a collection of properties, and a property is an association between a name (or key) and a value.

- een object is een verzameling van properties, die het objectbeschrijven

- een property
	- heeft een naam en een waarde.
		- de naam, of de key, van een property is een string
			- deze is case sensitive
		- de waarde bevat een primitief datatype of een object

meer op https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Working_with_Objects

## Object literal notation

aanmaken van objecten via object initializer syntax (aka object literal notation)

```javascript
// een lege object literal genaamd emptyObject
const emptyObject = {};
// een object literal genaamd myAvatar
// met 4 properties
const myAvatar = {
	name: 'Bob',
	points: 20,
	gender: 'male',
	hair: { color: 'black', cut: 'punk' }
};
```

## Objecten - property value shorthand

In programmacode gebruiken we dikwijls dezelfde namen voor onze variabelen als voor onze property names, we krijgen dan code die er als volgt uitziet:

```javascript
const points = 20;
const gender = 'male';
const myAvatar = {
	name: name,
	points: points,
	gender: gender
};
```

Dit komt zo dikwijls voor dat is ES6 er een ‘property value shorthand’ notatie voor is.
In plaats van name: name te schrijven kunnen we gewoon name schrijven.

```javascript
const name = 'Bob';
const points = 20;
const gender = 'male';
const myAvatar = { name, points, gender };
```


## Object - puntnotatie en arraynotatie

- een waarde van een property uitlezen
	- puntnotatie: `objectnaam.naamProperty`
```javascript
const points = myAvatar.points;
```

- arraynotatie: `objectnaam[naamProperty]`
```javascript
const name = myAvatar['name'];
```
- gebruik waar mogelijk de puntnotatie
	- de puntnotatie is makkelijker te lezen;
	- de arraynotatie heeft als voordeel dat je binnen de haken een variabele kunt gebruiken; als de  property naam een spatie of ander niet-identifier teken bevat dien je ook de arraynotatie te gebruiken.

- uitlezen van onbestaande eigenschap retourneert undefined
- object chaining
```javascript
const haircut = myAvatar.hair.cut;
```

- een property toevoegen aan een object
	- met de arraynotatie
```javascript
myAvatar['age'] = 18;
```

 - met de puntnotatie
```javascript
myAvatar.age = 20;
```


## Object

- je kan steeds properties toevoegen aan een object
- voorbeeld: myAvatar aangemaakt op twee verschillende manieren

```javascript
const myAvatar = {
	name: 'Bob',
	points: 20,
	gender: 'male'
}
```

```javascript
const myAvatar = {};
myAvatar.name = 'Bob';
myAvatar.points = 20;
myAvatar.gender = 'male';
```

- de waarde van een property van een object wijzigen
	- met de arraynotatie
	```javascript
myAvatar['points'] = 50;
```
	- met de puntnotatie
	```javascript
myAvatar.points = 50;
```


- een property van een object verwijderen
	- met de arraynotatie
	```javascript
delete myAvatar['gender'];
```
	- met de puntnotatie
	```javascript
delete myAvatar.gender;
```
	- na de delete heeft myAvatar niet langer een property met de naam gender…


-  overlopen van alle properties via for .. in ..
```javascript
const myAvatar= {
	name:'Bob',
	points:20,
	gender:'male',
	hair: {color: 'black', cut: 'punk'}
};
console.log(`Hi, I am ${myAvatar.name}`);
for (const key in myAvatar) {
	console.log(`-- ${key} : ${myAvatar[key]}`);
}
```

Merk op: via de array notatie kunnen we aan de waarden van de properties adhv de variabele key

![[Pasted image 20250306094718.png]]

## Object - static methods

• Object.keys(obj) retourneert een array met keys
• Object.values(obj) retourneert een array met values
• Object.entries(obj) retourneert een array met `[key, value]` pairs

```javascript
const keys = Object.keys(myAvatar);
```

![[Pasted image 20250306094813.png]]


- Voor meer info zie https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object

## Destructuring assignment

- We hebben reeds Array destructuring gezien:

```javascript
const foo = ['one', 'two', 'three'];
const [red,, green] = foo;
console.log(red); // "one"
console.log(green); // "three"
```

- Destructuring assignment werkt echter ook voor objecten:

```javascript
const myAvatar = {
	name: 'Bob',
	points: 20,
	gender: 'male',
};
const { name: naam, gender: geslacht } = myAvatar;
console.log(naam); // "bob"
console.log(geslacht); // "male"
```

- is een krachtige manier om de waarden van properties vast te pakken in variabelen

```javascript
const myAvatar = {
	name: 'Bob',
	points: 20,
	gender: 'male',
	hair: { color: 'black', cut: 'punk' }
};
```

- klassieke manier:
```javascript
const name = myAvatar.name;
const points = myAvatar.points;
const sex = myAvatar.gender;
```

- zelfde resultaat via object destructuring (merk op dat je de variabele namen niet moet specifiëren indien ze overeenkomen met de namen van de properties, bv. name en points)
```javascript
const { name, points, gender: sex } = myAvatar;
```


- indien de declaratie van de variabelen en de destructuring gescheiden zijn moet je ronde haakjes gebruiken.
```javascript
let name, points;
({ name, points } = myAvatar);
```
- indien een property niet bestaat krijg je de waarde undefined
```javascript
const { gender, weight } = myAvatar;
```
![[Pasted image 20250306095531.png]]

- je kan default waarden voorzien, deze worden gebruikt indien een waarde undefined is
```javascript
const { gender = 'female', weight = '63' } = myAvatar;
```
![[Pasted image 20250306095543.png]]

- je kan genest werken

```javascript
const { name, hair: { color } } = myAvatar;
```
![[Pasted image 20250306095731.png]]


- je kan object en array destructuring combineren
```javascript
const myAvatar = {
	name: 'Bob',
	points: 20,
	gender: 'male',
	hair: { color: 'black', cut: 'punk' },
	features: ['beard', 'sunglasses', 'smile']
};
const { name, hair: { color }, features: [first, , third] } = myAvatar;
```
![[Pasted image 20250306095742.png]]


## Object - samenvatting

- in JavaScript kan een object gezien worden als een verzameling van properties
- via de object literal syntax kunnen we een object aanmaken en eventueel enkele properties initializeren
- we kunnen steeds properties toevoegen en/of verwijderen.
- de waarde van een property kan van eender welk type zijn, dus ook wederom een object, dit laat toe dat we complexe datastructuren bouwen
- properties worden geïdentificeerd aan de hand van een key (property name), dit is een string (of een Symbol)
- in een volgend hoofdstuk gaan we zien hoe we met klassen en objecten als instanties van klassen kunnen werken

# Functies

## Definitie

Functions are one of the fundamental building blocks in JavaScript. A function in JavaScript is similar to a procedure—a set of statements that performs a task or calculates a value, but for a procedure to qualify as a function, it should take some input and return an output where there is some obvious relationship between the input and the output. To use a function, you must define it somewhere in the scope from which you wish to call it.

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions


## Functie declaratie

```javascript
function functionname (par1, par2, ... , parn) {
	some code goes here…
}
```

- de functie declaratie
	-  function keyword
	- naam van de functie
	- lijst van parameters voor de functie
		- tussen ronde haakjes, gescheiden door komma’s
	- Javascript statements
		- de function body, tussen accolades

 - voorbeeld
```javascript
function sayHi(name) {
	return `Hi, my name is ${name}`;
}
```

## Functies en Aanroepen
- **Functieaanroep**  
  Het aanroepen van een functie zorgt ervoor dat de statements binnen de functie, eventueel met gebruik van parameters, worden uitgevoerd.
  - Gebruik de naam van de functie gevolgd door argumenten tussen ronde haakjes.
  - Als er geen argumenten nodig zijn, gebruik je enkel de ronde haakjes.
  - **Voorbeeld:**
    ```js
    function sayHi(name) {
      return `Hi, my name is ${name}`;
    }

    console.log(sayHi('Ann'));
    ```

## Return Statement
- **Stoppen van uitvoering en retourneren van een waarde**  
  Een `return` statement stopt verdere uitvoering van de function body en retourneert een waarde naar de aanroeper.
  - `return` kan overal in de function body geplaatst worden.
  - Er kan meerdere keren een `return` voorkomen.
  - Als `return` zonder waarde wordt gebruikt (`return;`), retourneert de functie `undefined`. Dit geldt ook als het einde van de functie bereikt wordt zonder `return`.
  - **Voorbeeld:**
    ```js
    function sayHi(name) {
      // John never says Hi...
      if (name !== 'John') return `Hi, my name is ${name}`;
    }
    const message1 = sayHi('Ann');
    const message2 = sayHi('John');
    ```

## Parameters en Argumenten
- **Primitieve types vs. object types**  
  - Veranderingen aan parameters van een primitief type in de function body zijn niet zichtbaar in de aanroepende scope.
  - Veranderingen aan de properties van een object type parameter **wel** zichtbaar.
  - **Voorbeeld:**
    ```js
    const myAvatar = {
      name: 'Bob',
      points: 20,
      gender: 'male',
      hair: { color: 'black', cut: 'punk' }
    };

    function dyeHair(avatar, color) {
      avatar.hair.color = color;
      color = 'pink';
    }
    const newColor = 'Red';
    console.log('Before dyeing hair:');
    console.log(`newColor = ${newColor}`);
    console.log(`myAvatar.hair.color = ${myAvatar.hair.color}`);
    dyeHair(myAvatar, newColor);
    console.log('After dyeing hair:');
    console.log(`newColor = ${newColor}`);
    console.log(`myAvatar.hair.color = ${myAvatar.hair.color}`);
    ```

- **Geen argumenten**  
  - Wanneer er geen argumenten voor één of meerdere parameters worden aangeleverd, krijgen deze de waarde `undefined`.
  - **Voorbeeld:**
    ```js
    function f(a, b) {
      console.log(a, b);
    }
    f(11);
    ```

- **Default waarden voor parameters**  
  - Default waarden kunnen worden voorzien. Deze worden gebruikt als er geen argument is doorgegeven.
  - **Voorbeeld:**
    ```js
    function f(a, b = 12) {
      console.log(a, b);
    }
    f(11);
    ```

- **Rest Parameters**  
  - Met de rest parameter syntax (`...`) kan je een onbeperkt aantal argumenten als een array voorstellen.
  - **Voorbeeld:**
    ```js
    function g(a, b, ...otherArgs) {
      for (let value of otherArgs) {
        console.log(value);
      }
    }
    g(1, 2, 3, 'Four', 5);
    // otherArgs is een Array object
    ```

## Hoisting en Functies als First Class Objects
- **Functie Declaraties en Hoisting**  
  - Functie declaraties worden gehoist, oftewel naar boven verplaatst tijdens de compilatiefase.
  - Hierdoor kan een functie overal worden aangeroepen, zelfs vóór de daadwerkelijke declaratie.
  - **Voorbeeld:**
    ```js
    dyeHair(myAvatar, 'yellow');
    function dyeHair(avatar, color = 'green') {
      avatar.hair.color = color;
    }
    console.log(`myAvatar.hair.color = ${myAvatar.hair.color}`);
    ```

- **Functies als First Class Objects**  
  JavaScript functies zijn first class objects; dit betekent dat:
  - Ze kunnen worden toegekend aan een variabele.
  - Ze kunnen de waarde zijn van een property van een object.
  - Ze kunnen als argument worden doorgegeven aan een functie.
  - Ze kunnen de returnwaarde zijn van een functie.
  - Ze kunnen op "run-time" aangemaakt worden.
  - **Functie Expressie (Anonieme Functie):**
    ```js
    const dyeHair = function (avatar, color = 'green') {
      avatar.hair.color = color;
    }
    dyeHair(myAvatar, 'yellow');
    console.log(`myAvatar.hair.color = ${myAvatar.hair.color}`);
    ```

- **Verschil in Hoisting tussen Declaraties en Expressies**  
  - Bij functie expressies vindt hoisting plaats volgens de regels van variabelen, wat tot een "temporal dead zone" kan leiden.
  - **Voorbeeld:**
    ```js
    dyeHair(myAvatar, 'yellow');
    const dyeHair = function(avatar, color = 'green') {
      avatar.hair.color = color;
    };
    console.log(`myAvatar.hair.color = ${myAvatar.hair.color}`);
    ```

- **Functie als Parameter Doorgeven**  
  - **Voorbeeld:**
    ```js
    const isPass = function(mark) {
      return mark >= 10;
    };
    const giveFeedback = function(mark) {
      return mark < 10 ? 'Disastrous' : mark < 12 ? 'Mediocre' : 'Very good';
    };
    const convertMark = function(converter, number) {
      return converter(number);
    };
    console.log(convertMark(isPass, 11));
    console.log(convertMark(giveFeedback, 11));
    ```

- **Inner Functions (Geneste Functies)**  
  - Het is mogelijk om binnen een functie een andere functie te definiëren.
  - **Voorbeeld:**
    ```js
    function addSquares(a, b) {
      function square(x) {
        return x * x;
      }
      return square(a) + square(b);
    }
    // addSquares(2, 3) returns 13
    // addSquares(3, 4) returns 25
    ```
  - Hier is `square` de inner function en `addSquares` de outer function.

## Scope en Variabelen
- **Definitie van Scope**  
  - De scope bepaalt in welk bereik variabelen en functies zichtbaar zijn.
  - **Global Scope:** Variabelen of functies die direct in het script gedefinieerd worden.
  - **Function Scope:** Variabelen, functies en parameters die binnen een functie gedefinieerd zijn, zijn alleen daar zichtbaar.
  - **Block Scope (ES6):** Variabelen gedeclareerd met `let` of `const` zijn alleen zichtbaar binnen het block `{ }` waarin ze gedefinieerd zijn.
  - **Voorbeeld (Block Scope):**
    ```js
    {
      let message = 'Hello'; // alleen zichtbaar in dit block
      alert(message); // Hello
    }
    alert(message); // Error: message is not defined
    ```

- **Lexical (Static) Scoping**  
  - De scope van een variabele of functie hangt af van de positie in de source code waar deze gedefinieerd is.

- **Scope Hiërarchie**  
  - Child scopes hebben toegang tot hun parent scopes.
  - Wanneer een variabele wordt gebruikt, zoekt de JavaScript engine eerst in de lokale scope; indien niet gevonden, in de buitenliggende scopes, tot de globale scope.
  - **Voorbeeld 1:**
    ```js
    let cupOfTea = 'Camomille';
    const showMyDrink = function() {
      const cupOfCoffee = 'Cappuccino';
      cupOfTea = 'Peppermint';
      console.log(`I like ${cupOfCoffee} and ${cupOfTea}`);
    };
    console.log(`I like ${cupOfTea}`);
    showMyDrink();
    console.log(`I like ${cupOfTea}`);
    ```
    - `cupOfTea` is globaal, `cupOfCoffee` is lokaal in de functie.
  
  - **Voorbeeld 2:**
    ```js
    let cupOfTea = 'Camomille';
    const showMyDrink = function() {
      const cupOfCoffee = 'Cappuccino';
      const cupOfTea = 'Peppermint';
      console.log(`I like ${cupOfCoffee} and ${cupOfTea}`);
    };
    console.log(`I like ${cupOfTea}`);
    showMyDrink();
    console.log(`I like ${cupOfTea}`);
    ```
    - De lokale `cupOfTea` overschaduwt de globale `cupOfTea`.
  
  - **Voorbeeld 3:**
    ```js
    let cupOfTea = 'Camomille';
    const showMyDrink = function(cupOfTea) {
      const cupOfCoffee = 'Cappuccino';
      cupOfTea = 'Peppermint';
      console.log(`I like ${cupOfCoffee} and ${cupOfTea}`);
    };
    console.log(`I like ${cupOfTea}`);
    showMyDrink();
    console.log(`I like ${cupOfTea}`);
    ```
    - Hier is `cupOfTea` een parameter (lokaal).

- **Complexere Scope Voorbeeld**  
  ```js
  let globalX = 'global X';
  let cupOfTea = 'Camomille';
  const outerFunction = function(param1, param2) {
    let outerX = 'outer X';
    let cupOfTea = 'Fennel';
    let cupOfCoffee = "Cappuccino";
    const innerFunction = function(param1, param3) {
      let innerX = 'inner X';
      let cupOfCoffee = "Espresso";
    };
  };
```

- Gebruik altijd de meest lokale variabele.
- **Let op:** Declareer locale variabelen bij voorkeur bovenaan de functie om problemen met de temporal dead zone te voorkomen!

## Arrow Functions

- **Kenmerken**
    
    - Compactere syntax voor functie expressies.
    - Zijn altijd anoniem.
- **Eenvoudige Voorbeelden:**
    
    ```js
    const isPass = function(mark) {
      return mark >= 10;
    };
    const isPass = mark => mark >= 10;
    console.log(isPass(10));
    ```
    
- **Arrow Functions als Parameters:**
    
    ```js
    const convertMark = function(converter, number) {
      return converter(number);
    };
    console.log(convertMark(mark => mark >= 10, 50));
    ```
    
- **Algemene Syntax:**
    
    - `(par1, par2, …, parn) => {statements}`
        - Geen parameters: gebruik `()`
        - Eén parameter: haakjes mogen weggelaten worden
        - Enkel een return-expressie: haakjes en `return` mogen weggelaten worden
    - **Voorbeelden:**
        
        ```js
        const function1 = (a, b, c) => {
          a = a + 1;
          return a + b + c;
        };
        const function2 = (a, b, c) => a + 1 + b + c;
        const function3 = () => Math.random() * 20;
        ```
        
- **Aandachtspunten:**
    
    - Een functie-expressie ken je toe aan een variabele.
    - Wanneer je de variabele zonder `()` gebruikt, refereer je naar de functie zelf.
    - **Voorbeeld:**
        
        ```js
        const isPass1 = function pass(mark) {
          return mark >= 10;
        };
        const isPass2 = mark => mark >= 10;
        console.log(isPass1);
        console.log(`isPass1(16): ${isPass1(16)}`);
        console.log(isPass2);
        console.log(`isPass2(16): ${isPass2(16)}`);
        ```
        
- **Functie toekennen aan een andere variabele:**
    
    ```js
    let isPass = mark => mark >= 10;
    const isBiggerThanNine = isPass;
    console.log(`isPass: ${isPass}`);
    console.log(`isBiggerThanNine: ${isBiggerThanNine}`);
    console.log(isPass === isBiggerThanNine);
    console.log(`isPass(20): ${isPass(20)}`);
    console.log(`isBiggerThanNine(20): ${isBiggerThanNine(20)}`);
    isPass = mark => mark >= 50;
    console.log(`isPass: ${isPass}`);
    console.log(`isBiggerThanNine: ${isBiggerThanNine}`);
    console.log(isPass === isBiggerThanNine);
    console.log(`isPass(20): ${isPass(20)}`);
    console.log(`isBiggerThanNine(20): ${isBiggerThanNine(20)}`);
    ```
    

#  Objecten en Functies (Methodes)

- **Methodes**  
    Een methode is een functie die een property van een object is.
    
    - Kan aangeroepen worden met de punt- of array-notatie.
    - **Voorbeeld:**
        
        ```js
        const myAvatar = {
          name: 'Bob',
          points: 20,
          gender: 'male',
          hair: { color: 'black', cut: 'punk' },
          sayHi: function() {
            const title = this.gender === 'male' ? 'Sir' : 'Miss';
            return `Hi, I am ${title} ${this.name}`;
          }
        };
        console.log(myAvatar.sayHi());
        ```
        
- **Gebruik van `this`:**
    
    - Binnen een methode verwijst `this` naar het object zelf.
    - Gebruik `this` om binnen een object naar diens properties of methods te verwijzen.
- **Arrow Functies als Methodes:**
    
    - Arrow functies hebben geen eigen `this` en zijn daarom ongeschikt als methodes.
    - **Voorbeeld:**
        
        ```js
        const myAvatar = {
          name: 'Bob',
          points: 20,
          gender: 'male',
          hair: { color: 'black', cut: 'punk' },
          sayHi: () => {
            const title = this.gender === 'male' ? 'Sir' : 'Miss';
            return `Hi, I am ${title} ${this.name}`;
          }
        };
        console.log(myAvatar.sayHi());
        ```
        
- **Method Shorthand:**
    
    - Kortere notatie voor methodes:
        
        ```js
        user = {
          sayHi() { alert('Hello'); },
        };
        ```
        

# Events

https://www.w3schools.com/js/js_events.asp

Laat ons wat leven in onze pagina’s blazen: event afhandeling!

- **Event Afhandeling:**
    
    - Gebruikersinteractie met een webpagina leidt tot het afvuren van events.
    - Een event handler is een functie die wordt uitgevoerd wanneer een event optreedt.
- **Window- en Document-Object:**
    
    - Het `window` object is een objectrepresentatie van het browservenster en bevat de globale scope.
    - Het `document` object (eigenschap van `window`) bevat representaties van de HTML-pagina (DOM).
- **DOM-manipulatie Voorbeeld:**
    
    - Haal een element op met `getElementById()`:
        
        ```js
        const sayHiButton = document.getElementById('sayHi');
        ```
        
    - Als je een property van het object wijzigt, wordt het overeenkomstige HTML-attribuut aangepast:
        
        ```js
        sayHiButton.value = 'Yebo!';
        ```
        
- **Event Object:**
    
    - Wanneer een event optreedt, creëert de browser een event-object met details zoals de naam en het target (`event.target`).
- **Event Handlers Toewijzen:**
    
    - Wijs een handler toe via properties zoals `onclick`, `onload`, etc. (geen camel casing).
    - **Voorbeeld:**
        
        ```js
        const myAvatar = {
          name: 'Bob',
          points: 20,
          gender: 'male',
          hair: { color: 'black', cut: 'punk' },
          sayHi: function() {
            const title = this.gender === 'male' ? 'Sir' : 'Miss';
            return `Hi, I am ${title} ${this.name}`;
          }
        };
        const sayHiButton = document.getElementById('sayHi');
        sayHiButton.onclick = function() {
          alert(myAvatar.sayHi());
        };
        ```
        
- **Scheiding van HTML en JavaScript:**
    
    - Het is beter om event handlers niet inline in de HTML te definiëren, maar in aparte script-bestanden.
- **Wachten op DOM Load:**
    
    - Stel event handlers pas in nadat de DOM geladen is (bijv. door `<script>` net voor `</body>` te plaatsen of met `window.onload`).
    - **Voorbeeld:**
        
        ```js
        const init = function() {
          const sayHiButton = document.getElementById('sayHi');
          sayHiButton.onclick = sayHiClicked;
        };
        window.onload = init;
```

        
- **Meerdere Handlers met addEventListener:**
    
    - Met `addEventListener` kunnen meerdere handlers worden ingesteld voor hetzelfde event.
    - **Voorbeeld:**
        
        ```js
        const sayHiClicked = function() {
          alert(myAvatar.sayHi());
        };
        const beClever = function() {
          alert(`I know you clicked on button that says ${event.target.value}`);
        };
        const init = function() {
          const sayHiButton = document.getElementById('sayHi');
          sayHiButton.addEventListener('click', sayHiClicked);
          sayHiButton.addEventListener('click', beClever);
        };
        window.onload = init;
        ```
        

# Closures

- **Definitie:**  
    Een closure is een functie waarvan de returnwaarde afhankelijk is van variabelen die buiten de functie gedefinieerd zijn. De functie "onthoudt" de omgeving waarin hij werd aangemaakt.
    
- **Voorbeeld:**
    
    ```js
    const makeFunc = function() {
      const message = 'Sir Bob is still around ;-)';
      const displayName = function() {
        console.log(message);
      };
      return displayName;
    };
    const aDisplayFunction = makeFunc();
    aDisplayFunction();
    ```
    
    - Ondanks dat `makeFunc` is voltooid, blijft de variabele `message` bewaard in de closure.
- **Closures met Parameters:**
    
    ```js
    const makeFunc = function(title) {
      const message = `${title} Bob is still around ;-)`;
      const displayName = function() {
        console.log(message);
      };
      return displayName;
    };
    const misterDisplayFunction = makeFunc('Mister');
    const sirDisplayFunction = makeFunc('Sir');
    misterDisplayFunction();
    sirDisplayFunction();
    ```
    
- **Opmerkingen:**
    
    - Variabelen die in de closure gebruikt worden, blijven bewaard, zelfs als de outer function niet meer actief is.
    - Optimalisaties kunnen ervoor zorgen dat niet-gebruikte variabelen niet meer zichtbaar zijn in de debugger.

# Exceptions

- **Exception Handling met try...catch:**
    - Exceptions kunnen worden opgevangen met `try...catch`, bijvoorbeeld bij het omzetten van een JSON-string met `JSON.parse()`.
    - **Voorbeeld:**
        
        ```js
        try {
          const myStudent = JSON.parse('{"name":"jan","age":15}');
          console.log('MyStudent', myStudent);
          const myObject = JSON.parse('{ bad json o_O }');
          console.log('MyObject', myObject);
        } catch (err) {
          alert(err.name);    // SyntaxError
          alert(err.message); // Unexpected token b in JSON at position 2
        }
        ```