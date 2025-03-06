# 1. Object Oriented Programming in JavaScript

- **Object orientation in JavaScript**
  - JavaScript is een object-based language gebaseerd op prototypes (in tegenstelling tot klassengebaseerde talen zoals Java of C#).
  - Objecten worden gemaakt met andere objecten als blauwdruk en inheritance wordt geïmplementeerd via de prototype chain.
  - ES6 introduceert een alternatieve syntaxis (classes) die de klassieke objectoriëntatie nabootst.

- **Class**
  - **Class Declaratie**
    - Creëert een nieuwe klasse met een gegeven naam via prototype-based inheritance.
    - **Syntax:**
      ```js
      class ClassName {
        // (static) fields
        constructor(…) { … }
        // (static) methods(…) { … }
        get someProp() { … }
        set someProp(value) { … }
      }
      ```
  - **Belangrijke Concepten binnen een Class:**
    - *constructor method & new keyword*: Een constructor wordt aangeroepen bij het maken van een instantie met `new`.
    - *get/set accessors*: Bieden gecontroleerde toegang tot properties.
    - *other methods*: Methoden die via de class kunnen worden gedefinieerd.
    - *static members*: Worden op de klasse zelf aangeroepen (niet op instanties).
    - *inheritance*: Een klasse kan een subklasse hebben die overerft van een superklasse.

- **Prototypes, a little background**
  - **Concept**
    - In JavaScript is alles een object; er bestaan geen klassen zoals in klassieke OOP.
    - Objecten delen gedrag en toestand via prototypes.
  - **Constructor function & new keyword**
    - Constructor functies (met hoofdletternaam) worden met `new` aangeroepen om objecten te maken.
  - **Prototype chain**
    - Elk object heeft een interne `__proto__`-property. Als een property niet op het object zelf gevonden wordt, zoekt de engine in de prototype chain.
  - **JavaScript’s built-in objects**
    - Ingebouwde objecten (zoals Array, Object, Math, etc.) bieden een scala aan static en instance methods.

---

## 2. Inleiding & Class Declarations

### Slide 2 – Inleiding
- JavaScript is een object-based taal gebaseerd op prototypes.
- Zie [MDN: Working with Objects](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Working_with_Objects).

### Slide 4 – JavaScript en Prototype-based OOP
- JavaScript heeft een prototype-based, object-oriented programming model.
- Objecten worden gemaakt met andere objecten als blauwdrukken; inheritance gebeurt via de prototype chain.
- ES6 classes bieden een syntax die de klassieke OOP-benadering benadert.

### Slide 5 – Class Declarations
- **Syntax van een Class:**
  ```js
  class ClassName {
    // (static) fields
    constructor(…) { … }
    // (static) methods(…) { … }
    get someProp() { … }
    set someProp(value) { … }
  }
```

---

## 3. Voorbeelden met Classes

### Slide 7 – Voorbeeld: Blog

- **Blog:**
    - Heeft een 'creator' en een lijst van 'blog entries'.
- **BlogEntry:**
    - Heeft een 'date' en een 'body'.

### Slide 8 – Voorbeeld: BlogEntry Klasse

- **Basis klasse declaratie:**
    
    ```js
    class BlogEntry {
      body;
      date = new Date();
      constructor(body) {
        this.body = body;
      }
    }
    ```
    

### Slide 9 – Fields en Toegankelijkheid

- Fields zonder initialisatie krijgen `undefined`.
- Fields kunnen in de constructor worden geïnitialiseerd met `this`.
- **Public fields:** Standaard publiek toegankelijk.
- **Private fields:** Gebruik een hash (`#`) voor private toegankelijkheid.
    - **Publiek:**
        
        ```js
        class BlogEntry {
          body;
          date = new Date();
          constructor(body) {
            this.body = body;
          }
        }
        ```
        
    - **Privé:**
        
        ```js
        class BlogEntry {
          #body;
          #date = new Date();
          constructor(body) {
            this.#body = body;
          }
        }
        ```
        
- Private class members werden recent (ES2022) geïntroduceerd. Vroeger werd vaak een underscore (_body) gebruikt om private aan te geven.

### Slide 12 – Notie van een Property in een Class versus Prototype

- De property in (prototype-based) JavaScript verschilt van de property in een class.
- Private fields met get/set worden niet altijd als properties van het prototype-object gezien.
- Debugging toont dat classes en objecten vertaald worden naar prototypes.

### Slide 13 – new & Constructors

- **Instanties maken met `new`:**
    
    ```js
    class BlogEntry {
      #date = new Date();
      #body;
      constructor(body) {
        this.#body = body;
      }
    }
    const aBlogEntry = new BlogEntry('I am a newly created instance of BlogEntry');
    console.log(`aBlogEntry is of type ${typeof aBlogEntry}`);
    console.log(aBlogEntry);
    ```
    

### Slide 15 – De Constructor

- Gebruik het keyword `constructor` met eventuele parameters.
- Gebruik altijd `this` om naar fields te verwijzen.
- **Default constructor:** Wordt impliciet aangemaakt als er geen constructor is.
- Er is geen constructor overloading (maximaal 1 constructor per klasse).

### Slide 16 – Try it yourself

- Bekijk en los blog01.js op in de map 04thOOP_In_JavaScript.
- Zorg dat het juiste script geladen wordt:
    
    ```html
    <script src="js/blog01.js"></script>
    ```
    

---

## 4. Properties: Getters & Setters

### Slide 17 – Accessor Properties

- **Get accessor:**
    - Associeert een property met een parameterloze functie.
    - Wordt uitgevoerd telkens wanneer de property wordt uitgelezen.
- **Set accessor:**
    - Associeert een property met een functie die één parameter heeft.
    - Wordt uitgevoerd bij het wijzigen van de property.

### Slide 19 – Get Accessor Property

- **Syntax:**
    
    ```js
    get property_name() { body }
    ```
    
- **Belangrijk:**
    - Gebruik de getter als een gewone property (zonder haakjes).

### Slide 20 – Voorbeeld: Get

```js
class BlogEntry {
  #date = new Date();
  #body;
  constructor(body) { this.#body = body; }
  // Publieke getters voor gecontroleerde toegang
  get body() { return this.#body; }
  get date() { return this.#date; }
  // Getter voor een berekende waarde
  get outDated() {
    return new Date().getFullYear() - this.date.getFullYear() >= 5;
  }
}
const aBlogEntry = new BlogEntry('I am learning about get accessors');
console.log(aBlogEntry.body);
console.log(aBlogEntry.date);
console.log(aBlogEntry.outDated);
```

### Slide 21 – Set Accessor Property

- **Syntax:**
    
    ```js
    set property_name(value) { body }
    ```
    
- **Belangrijk:**
    - Gebruik de setter als een gewone property (zonder haakjes).

### Slide 22 – Voorbeeld: Set

```js
class BlogEntry {
  #date = new Date();
  #body;
  // Vanuit de constructor wordt de setter aangeroepen
  constructor(body) { this.body = body; }
  get body() { return this.#body; }
  set body(value) { this.#body = value || 'This entry is work in progress'; }
}
const aBlogEntry = new BlogEntry();
console.log(aBlogEntry.body);
aBlogEntry.body = "Let's dance";
console.log(aBlogEntry.body);
aBlogEntry.body = '';
console.log(aBlogEntry.body);
```

### Slide 23 – Private Get/Set Accessors

- Je kunt get/set accessors private maken door ze met een hash te benoemen.
- Je mag geen twee properties met dezelfde naam hebben in een klasse.

### Slide 24 – Extra Voorbeeld

- Gebruik de debugger om breakpoints te zetten en de call stack en variabelen te inspecteren.

### Slide 25 – Get/Set in Object Literals

```js
const myAvatar = {
  _name: 'Bob',
  get name() { return _name; },
  set name(value) { _name = value; }
};
myAvatar.name = 'Ann';
```

- In object literals kunnen geen private properties gedefinieerd worden.

### Slide 26 – Voordelen van Get/Set Methoden

- **Encapsulatie:** Ingebouwd gedrag (bijv. validatie) bij manipulatie van een property.
- **Verbergen van interne representatie:** De externe interface kan anders zijn dan de interne opslag.
- **Interface-isolatie:** Implementatiewijzigingen vereisen geen aanpassing in de client code.
- **Debuggen:** Mogelijkheid om veranderingen in een property te volgen.

### Slide 27 – Try it yourself

- Los blog02.js op in 04thOOP_In_JavaScript en zorg voor de juiste script-tag:
    
    ```html
    <script src="js/blog02.js"></script>
    ```
    

---

## 5. Methoden in Classes

### Slide 30 – Methode Declaratie

- **Syntax:**
    
    ```js
    method_name(parameters) { method_body }
    ```
    
    - Gebruik altijd `this` in de method body om naar fields te verwijzen.
    - Naam, parameters en return waarde werken volgens de principes van functies.
- **Voorbeeld: Uitgebreide BlogEntry met een Methode**
    
    ```js
    class BlogEntry {
      #date = new Date();
      #entryBody;
      constructor(body) {
        this.#body = body;
      }
      contains(searchText) {
        return searchText
          ? this.body.toUpperCase().includes(searchText.toUpperCase())
          : false;
      }
    }
    const aBlogEntry = new BlogEntry('This is a brand new blog entry');
    let word = 'hello';
    console.log(`aBlogEntry ${aBlogEntry.contains(word) ? 'contains' : 'does not contain'} the word "${word}".`);
    word = 'brand';
    console.log(`aBlogEntry ${aBlogEntry.contains(word) ? 'contains' : 'does not contain'} the word "${word}".`);
    ```
    

### Slide 31 – Private Methodes

- Gebruik hash-namen voor private methodes.
- **Voorbeeld:**
    
    ```js
    class BlogEntry {
      #date = new Date();
      #body;
      constructor(body) {
        this.#body = this.#checkBody(body);
      }
      #checkBody(body) {
        return body || 'Work in progress...';
      }
    }
    ```
    

### Slide 32 – Try it yourself

- Los blog03.js op in 04thOOP_In_JavaScript en pas de index.html aan:
    
    ```html
    <script src="js/blog03.js"></script>
    ```
    

---

## 6. Static Class Members

### Slide 33 – Static Fields en Methods

- **Static Fields/Properties:**
    
    - Worden aangeroepen zonder een instantie van de klasse te maken.
    - Kunnen niet via instanties worden benaderd.
    - **Voorbeeld Declaratie:**
        
        ```js
        class BlogEntry {
          static #wordsInShortBody = 5;
          #date = new Date();
          #entryBody;
          static get wordsInShortBody() {
            return BlogEntry.#wordsInShortBody;
          }
          get shortBody() {
            return this.body.split(' ').slice(0, BlogEntry.wordsInShortBody).join(' ') + '...';
          }
        }
        const aBlogEntry = new BlogEntry('This is the story of my olympic gold medal.');
        console.log(BlogEntry.wordsInShortBody);
        console.log(aBlogEntry.shortBody);
        ```
        
- **Static Methods:**
    
    - Worden aangeroepen zonder een instantie.
    - **Voorbeeld Declaratie:**
        
        ```js
        class BlogEntry {
          static #wordsInShortBody = 5;
          #date = new Date();
          #body;
          static createDummy() {
            return new this('Nothing much to say today...');
          }
        }
        const dummyBlogEntry = BlogEntry.createDummy();
        console.log(dummyBlogEntry.body);
        ```
        
    - Vergelijkbaar met hoe ingebouwde objecten (bv. Math) werken.
    - MDN referentie: Instance vs static methods.
        - Instance methods zitten op de prototype.
        - Static methods zitten niet op de prototype.
        - **Voorbeeld:**
            
            ```js
            const a = [1, 2, 3]; a.push(100);
            const arrayWithLetters = Array.from('JavaScript');
            ```
            

### Slide 38 – Try it yourself

- Los blog04.js op in 04thOOP_In_JavaScript en pas index.html aan:
    
    ```html
    <script src="js/blog04.js"></script>
    ```
    

---

## 7. Overerving (Inheritance)

### Slide 39 – Single Inheritance

- JavaScript kent enkelvoudige (single) inheritance: een subklasse heeft maar één superklasse.
- Gebruik het keyword `extends` om een subklasse te maken.
- Een subklasse heeft geen toegang tot de private fields van de superklasse.
- Gebruik `instanceof` om te controleren of een object een instantie is van een bepaalde klasse.

### Slide 41 – Overriding en super

- **Methoden Overriden:**
    - Gebruik `super.method(parameters)` om een methode van de superklasse aan te roepen.
- **Constructor Overriding:**
    - Gebruik `super(parameters)` in de constructor van de subklasse (dit moet gebeuren vóór het gebruik van `this`).
    - Als er geen eigen constructor is, krijgt de subklasse een default constructor:
        
        ```js
        class B extends A {
          constructor(...args) { super(...args); }
        }
        ```
        

### Slide 42 – Voorbeeld: TaggedBlogEntry

```js
class TaggedBlogEntry extends BlogEntry {
  #tags;
  constructor(body, author, ...tags) {
    super(body, author);
    this.#tags = tags;
  }
  // Extra getter en methodes voor tags
  get tags() { return this.#tags; }
  addTag(tag) { this.tags.push(tag); }
  removeTag(tag) {
    const index = this.tags.indexOf(tag);
    if (index !== -1) {
      this.tags.splice(index, 1);
    }
  }
  // Overriden contains: combineert super.contains met tags check
  contains(searchText) {
    return super.contains(searchText) || this.tags.includes(searchText);
  }
}
const myTaggedEntry = new TaggedBlogEntry(
  'A day in the life of a UNICEF Goodwill Ambassador',
  'Nafi Thiam',
  'United Nations', 'UNICEF'
);
console.log(myTaggedEntry.body);
myTaggedEntry.addTag('children');
console.log(myTaggedEntry.tags);
console.log(myTaggedEntry.contains('life'));
console.log(myTaggedEntry.contains('children'));
myTaggedEntry.removeTag('United Nations');
console.log(myTaggedEntry.tags);
console.log(myTaggedEntry instanceof TaggedBlogEntry); // true
console.log(myTaggedEntry instanceof BlogEntry);        // true
console.log(myTaggedEntry instanceof Object);           // true
```

### Slide 44 – Polymorfisme

- **Voorbeeld:**
    
    ```js
    let entries = [];
    entries.push(new BlogEntry('Simple entry', 'Nafi Thiam'));
    entries.push(new TaggedBlogEntry('Tagged entry', 'Matthias Casse', 'judo', 'olympics'));
    for (const entry of entries) {
      console.log(entry.toString());
    }
    ```
    

### Slide 45 – Object als Basis van Overerving

- Elke klasse zonder expliciete superklasse erft van `Object`.
- Methoden als `Object.keys()`, `Object.values()`, en `Object.entries()` werken enkel op publieke non-static properties.

### Slide 46 – toString() en toLocaleString()

- Instance methods die vaak worden overschreven.
- **Voorbeeld:**
    
    ```js
    const number1 = 123456.789;
    console.log(number1.toString()); // "123456.789"
    console.log(number1.toLocaleString('nl-BE')); // "123.456,789"
    console.log(number1.toLocaleString('en-UK')); // "123,456.789"
    ```
    
- In klassen (bv. BlogEntry en TaggedBlogEntry) kunnen deze methodes overschreven worden.

### Slide 48 – Extra Opmerkingen

- Class declarations worden niet gehoist; declareer ze vóór gebruik.
- Je kunt ook class expressions gebruiken (vaak anoniem):
    
    ```js
    const BlogEntry = class { /* body of class omitted */ };
    ```
    

### Slide 49 – Try it yourself

- Los blog05.js op in 04thOOP_In_JavaScript en pas index.html aan:
    
    ```html
    <script src="js/blog05.js"></script>
    ```
    

---

## 8. Modules

- **Module Syntax:**
    - Klassen kunnen in modules worden geplaatst.
    - **Voorbeeld van export/import:**
        - _BlogEntry.js:_
            
            ```js
            export default class BlogEntry { /* body of class omitted */ }
            ```
            
        - _Importeren in een ander bestand:_
            
            ```js
            import BlogEntry from './BlogEntry.js';
            ```
            
        - Eveneens voor TaggedBlogEntry, Blog en GroupBlog.
    - **Voorbeeld:**
        - _GroupBlog.js:_
            
            ```js
            import Blog from "./Blog.js";
            export default class GroupBlog extends Blog { /* body of class omitted */ }
            ```
            
        - _index.js:_
            
            ```js
            import Blog from "./Blog.js";
            import GroupBlog from "./GroupBlog.js";
            const ourGroupBlog = new GroupBlog('Nafi Thiam', 'Matthias Casse', 'Bashir Abdi');
            const woutsBlog = new Blog('Wout Van Aert');
            ```
            

---

## 9. Prototypes – Een Klein Achtergrondverhaal

### Slide 51 – Prototypes: Een Inleiding

- Alles in JavaScript is een object; er bestaan geen klassen zoals in traditionele talen.
- Via prototype objecten delen objecten gedrag en toestand.

### Slide 53 – Het Prototype Concept

- Elk object heeft een eigen `__proto__` property die verwijst naar zijn prototype.
- Dit prototype object bevat gedeelde properties en methodes.

### Slide 54 – Constructor & new

- **ES5 Constructor Functie:**
    
    ```js
    function BlogEntry(body, date) {
      this.body = body;
      this.date = new Date();
    }
    ```
    
- **ES6 Class Equivalent:**
    
    ```js
    class BlogEntry {
      constructor(body, date) {
        this.body = body;
        this.date = date;
      }
    }
    ```
    
- Gebruik `new` om een object te maken met een constructor:
    
    ```js
    const myBlogEntry = new BlogEntry('Prototypes rock!');
    ```
    

### Slide 55 – Voorbeeld: Prototype Eigenschappen

- Bij het aanroepen met `new` krijgen instanties een `__proto__` property.
- **Voorbeeld:**
    
    ```js
    const myBlogEntry = new BlogEntry('Prototypes rock!');
    const anotherEntry = new BlogEntry('JavaScript rules!');
    BlogEntry.prototype.language = 'EN';
    console.log(myBlogEntry.language); // EN
    console.log(anotherEntry.language); // EN
    ```
    
- Het toevoegen van properties aan `BlogEntry.prototype` zorgt ervoor dat alle instanties deze property delen.
- Met `hasOwnProperty` kun je controleren of een property eigen is of via de prototype chain komt.

### Slide 56 – Gedrag Toevoegen via Prototype

- **Voorbeeld:**
    
    ```js
    BlogEntry.prototype.contains = function(searchText) {
      return this.body.toUpperCase().indexOf(searchText.toUpperCase()) !== -1;
    };
    ```
    

### Slide 57 – De Prototype Chain

- Het prototype object is ook een object en heeft op zijn beurt een prototype.
- Dit resulteert in een keten (de prototype chain) die eindigt bij `Object.prototype`.

### Slide 61 – Built-in Objects

- JavaScript bevat vele ingebouwde objecten.
- Voor een volledige lijst, zie [MDN Global Objects](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects).

### Slide 64 – Object.prototype

- `Object.prototype` is de laatste link in de prototype chain.
- Methodes die hier gedefinieerd zijn, kunnen op elk object worden aangeroepen (tenzij ze worden overschreven).

### Slide 65 – Extra Informatie

- Nu je de basis van prototypes kent, kun je beter begrijpen wat er gebeurt met Arrays (denk aan `Array.prototype`).

### Slide 67 – Referentie

- Excerpt en meer details vind je op MDN:  
    [Details of the Object Model](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Details_of_the_Object_Model)
