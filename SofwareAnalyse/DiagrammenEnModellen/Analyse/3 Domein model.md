# Doel
Als medewerker aan een IT-project is het *belangrijk om het probleemdomein van het project te bestuderen*. 
Je moet kunnen **communiceren op een eenduidige manier met de klant**. 
Vandaar dat het *belangrijk is om je in te werken in de terminologie van de klant*. 
*Dit doen we via het domeinmodel*.

- Domeinklassen zijn heel belangrijk omdat je daarmee *de kern van het probleem (en de oplossing) met behulp van een betrekkelijk klein aantal begrippen kunt beschrijven*.
- Met behulp van het domeinmodel kan je nog eens *afstemmen met de klant of je heel goed begrijpt hoe alles ineen zit* (**associaties tussen klassen**).
- *Conceptuele domeinklassen vormen dan ook een belangrijk uitgangspunt en inspiratiebron voor het* **ontwikkelen van de softwareklassen** (= klassen met datatypes en gedrag) waaruit een domein laag in een applicatie is opgebouwd.

# Defenitie
het domeinmodel is een:
**VISUELE REPRESENTATIE VAN CONCEPTEN UIT DE WERKELIJKHEID EN HUN ONDERLINGE RELATIE**

# Stappen
### Stap 1 - Identificatie van de kandidaatsklassen
- Identificeer alle mogelijke kandidaatsklassen in onderstaand verhaal
### Stap 2 - Selecteer conceptuele klassen
- *Doel*: Enkel conceptuele klassen overhouden voor het domeinmodel
- *Werkwijze*
	- Stel voor elke kandidaatsklasse volgende 3 vragen:
		- Speelt de klasse een zelfstandige rol in het probleem domein?
		- Willen we iets van de kandidaat weten of willen we dat hij iets doet?
		- Heeft de klasse een duidelijke verantwoordelijkheid?
	- Is het antwoord telkens ja, dan is de kandidaatsklasse een conceptuele klasse
### Stap 3 - Identificeer associaties
- *Doel*: 
	- Vinden van zinvolle associaties tussen de gekozen klassen
	- Vinden van bijkomende zinvolle associaties tussen reeds opgenomen klassen (bij iteraties)
- *Werkwijze*
	- Beschouw alle mogelijke paren van klassen
	- Herlees de context of use-case en zoek naar structurele verbanden die voor een zekere tijd moeten aangehouden worden, let vooral op
		- Werkwoorden, MAAR
			- Wijzen soms op gedrag (= operaties)
			- Zijn soms een synoniem voor bestaande associatie
		- Bezittelijke voornaamwoorden• b.v.: zijn, haar, ...
### Stap 4 - Identificeer attributen 
- *Doel*
	- Vinden van relevante attributen voor de gekozen klassen
	- Vinden van bijkomende relevante attributen voor reeds opgenomen klassen (bij iteraties)
- *Werkwijze*
	- Beschouw de lijst uit stap 1 met ‘vermoedelijke attributen’
	- Haal uit de tekst:
		- Dingen die voorgesteld worden via een simpele waarde
			- b.v.: datum, getal, ja/nee, karakter, ...
		- Woorden waarvoor je ja kan antwoorden op “Is ... een eigenschap van een andere klasse” wijzen vaak op een attribuut
		- Bijvoeglijke voornaamwoordenwijzen vaak op attributen
### Stap 5 - Optimalisatie
- Enkel uitvoeren nadat alle usecases en contexten zijn verwerkt!
- *Doel*
	- Verwijderen van overbodige klassen en associaties
	- Domeinmodel minder complex maken
- *Werkwijze*
	- Verwijder klassen zonder attributen die geen meerwaarde bieden in het schema Ze hebben ook geen relevante/noodzakelijke associaties met andere klassen
	- Vorm specialisatie/generalisatie om naar één klasse met een attribuut type indien de specialisaties geen eigen attributen hebben of aparte associaties met andere klassen. De attributen van de generalisatie worden behouden
- *Resultaat*
	- Volledig domeinmodel

# Onderdelen

![](20241027121006.png)
# Opbouw

### Klasse
- Klasse die een object uit de werkelijkheid voorstelt
- Regels
	- naam begint met een hoofdletter• heeft relevante attributen
	- naam via camelCasing
	- GEEN datatypes (String, int, ...)
	- GEEN berekende gegevens (leeftijd, totaal, ...)

### Associatie
- Is verband tussen instanties van klassen
- Regels
	- Enkel als het verband relevant en zinvolis
	- Aanduiden door tussen 2 conceptuele klassen
	- Meerdere associaties tussen 2 conceptuele klassen mogelijk
	- Associatie tussen eenzelfde conceptuele klasse kan (= reflexieve associatie)

### Associatienaam
- Is verduidelijking van de associatie
- Regels
	- werkwoord• begint met hoofdletter
	- zorg voor een duidelijke zin
	- Lezen van links naar rechts of van boven naar onder
	- Indien leesrichting afwijkt, dit aanduiden met ◀ of ▲

### Rolnaam
- Is verduidelijking bij de rol van een conceptuele klasse in een associatie
- Regels
	- kleine letters
	- zelfstandig naamwoord
	- staat naast de conceptuele klasse en associatie bij dewelke de rolnaam hoort
	- mag weggelaten worden als de associatienaam duidelijk genoeg is

### Multipliciteit
- Is aanduiding van hoeveel instanties van een conceptuele klasse verbonden zijn via de associatie met een andere
- Regels
	- Per rol een multipliciteit
	- Minimum aantal is 0,1 of een exact getal• Maximum aantal is 1, een exact getal of * (oneindig veel)
	- Aangeduid als: min aantal ... max aantal bij de rol
	- Als minimum = maximum mag je enkel maximum vermelden
	- Notatie 0 ... * mag vervangen worden door enkel \*
	- Opsomming van exacte waarden is ook toegelaten

 ### Generalisatie/specialisatie

- Is 1 conceptuele basisklasse (= generalisatie) met alle gemeenschappelijke attributen die door afgeleide klassen (= specialisatie) worden overgeërfd
- Regels
	- Generalisatieklasse bevat alle gemeenschappelijke attributen
	- Specialisatieklasse erft de gemeenschappelijke attributen en associaties over
	- Specialisatieklasse kan eigen attributen en associaties hebben
	- Aangeduid door generalisatieklasse specialisatieklasse• Enkel gebruiken als je kan zeggen: “... is een ...

bijvoorbeeld:
![](20241027141714.png)

### Aggregatie
- Is deel/geheel relatie tussen 2 conceptuele klassen op een gelijk niveau
- Regels
	 - Aanduiden met ◊ een naast de klasse die het geheel vormt
	 - De minimum multipliciteit langs de ◊ zijde is steeds 0 of 1
	 - Een deel kan op zich ook bestaan. Als het geheel verdwijnt blijft het deel bestaan en omgekeerd• Enkel gebruiken als je kan zeggen: “... heeft ...”
	 - NIET met overdrijven
- Tips
	- Bij twijfel, gewone associatie
	- Is er een “fysieke” deel/geheel relatie?
		- Indien ja dan eerder aggregatie
		- Indien nee dan eerder gewone associatie

![](20241027142042.png)

### Compositie
- Is strengere vorm van aggregatie. Drukt uit dat een instantie van een klasse is opgebouwd uit onderdelen die instanties zijn van andere klassen
- Regels
	- Aanduiden met een ◀▶ naast de klasse die het geheel vormt
	- De multipliciteit langs de ◀▶ zijde is steeds exact 1
	- Een instantie van het geheel is verantwoordelijk voor de creatie en vernietiging van de delen
	- Enkel gebruiken als je kan zeggen: “... bestaat uit ...”

voorbeeld:

Een boek bestaat uit hoofdstukken, maar een hoofdstuk zit steeds in één boek

![](20241027155212.png)

### Associatieklasse

- Is conceptuele klasse die attributen bijhoudt die bij een bepaalde associatie horen
- Regels
	- Levensduur van de instanties van de associatieklasse is afhankelijk van de associatie
	- Kan zelf associaties hebben met andere klassen
	- GEEN extra multipliciteiten• Verbonden met de associatie dankzij ---

voorbeeld:

![](20241027155534.png)

![](20241027155729.png)


# Voorbeeld

![](20241027155614.png)

![](20241027161712.png)