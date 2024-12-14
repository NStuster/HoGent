#Samenvatting #Cybersecurity #HoGent #toegepasteinformatica

Lesgever: [Pieter-Jan Maenhaut](pieterjan.maenhaut@hogent.be)
# H0 : Inleiding

## Links
[hogenttin.github.io/cybersecurity-slides/h0.html#/](https://hogenttin.github.io/cybersecurity-slides/h0.html#/)
https://chamilo.hogent.be/


## Legal

- Enkel in een legale context
    - Eigenaar of toestemming van eigenaar
- Illegaal gebruik: kans op gerechtelijke vervolging
- Op eigen verantwoordelijkheid!
    - Lectoren/HOGENT: niet aansprakelijk
    - Zie ook [OER](https://www.hogent.be/student/een-vlotte-start/onderwijs-en-examenregeling/) Art. 47. §7:

## Bij vragen:

Steeds alleen mailen naar: pieterjan.maenhaut@hogent.be

# H1: data, het virtuele goud

## Tegenhanger

Het wilde westen: **goud** -> - Het internet: **data**

## Jouw data

Wat is jou data (8):

![](./attachments/20240929094341.png)


### Private information (persoonlijke data)

- Een groot gedeelte van jouw data zit bij **bedrijven**:
    - Private gegevens: chat, e-mail, foto's, ...
    - Financiën: bankrekeningen, overschrijvingen, ...
    - Medisch: aandoeningen, ziektegeschiedenis, medicatie, ...
    - School: punten, verslagen, feedback, ...
    - Werk: loon, HR, werkbestanden (bv. als zelfstandige), ...
    - Overheid: rechtszaken, boetes, eigendom, ...
- Bij welke bedrijven zit jouw data?
    - Wie kan dit zien of aanpassen?
    - Wat zijn de gevolgen?
    - Wat als de data verloren geraakt?
- Ook data op eigen toestellen of papier is gevoelig
    - Private foto's of video's, bitcoinwallet, wachtwoorden, ...


## Industrial data (industriële data)

- Hackers zijn niet enkel geïnteresseerd in jouw data, maar ook in **industriële** data.
    - Vaak voor losgeld of (bedrijfs)spionage
- Een industriëel netwerk is anders dan een thuisnetwerk
    - Meer dan enkel computers (bv. [SCADA](https://scada-international.com/what-is-scada/))

## Omgaan met data

- Bedrijven hebben de verantwoordelijkheid om deze gegevens te **beschermen**:
    - Tegen misbruik
    - Tegen ongeoorloofde toegang.
- Groei in gegevensverzameling en -analyse
    - Grote **risico's**
    - **Voorzorgsmaatregelen** nodig
    - Plicht om gevoelige gegevens te beschermen tegen criminelen om schade te vermijden

## Staten van data

- Alles in de cyberwereld draait rond data. Cybersecurity specialisten focussen zich op het beveiligen van die data
- Data heeft 3 mogelijke staten:
    - Data in **rust**/opslag
    - Data tijdens het **verzenden**
    - Data tijdens het **verwerken**


### Data in rust

- Data opgeslagen op **opslagapparaten** dat niet wordt gebruikt door personen of processen.
- Opslagapparaten kunnen **lokaal** (harde schijf, USB-stick, ...) of gecentraliseerd **op afstand** aangesloten zijn (Dropbox, Google drive, NAS, ...)
- Data kan zo **verloren** of **gestolen** worden
    - Harde schijf kapot
    - Laptop vergeten op trein
    - Smartphone gestolen

### Data tijdens verzenden

- Verschillende manieren:
    - **Sneaker net**: gebruikt opslagapparaten om data tussen computers over te zetten (USB-stick, draagbare harde schijf, ...)
    - **Bedraad** netwerk: gebruikt koper- of fiberkabels
    - **Draadloos** netwerk: gebruikt elektromagnetische golven (kan door iedereen in de buurt "gehoord" worden)

- Een van de grootste uitdagingen voor cybersecurity personeel om te beveiligen.

- Enkele uitdagingen: cybercriminelen kunnen data tijdens het verzenden ...
    - afluisteren, kopiëren of stelen (vertrouwelijkheid)
    - aanpassen (integriteit)
    - verhinderen of verstoren (beschikbaarheid)

#### Extra info
- Tools om af te luisteren
	- nmap
	- wireshark

- Beveiligingsmaatregel:
	- End to end encrypty
	- wifi: 802.11x (wifi beveiliging via encryptie)

- Betrouwbare messaging services:
	- matrix (zelf opgezette messaging service (peer to peer))
	- Signal
### Data tijdens het verwerken

- Dit omvat data tijdens de **invoer**, **aanpassing**, **berekening** of **uitvoer**

- Organisaties gebruiken verschillende methodes om data te verzamelen:
    - Manuele invoer, het uploaden van bestanden, dataverzameling van sensoren, ... .
    - Elk van deze input-methode is een mogelijke bedreiging voor integriteit
- Data kan aangepast worden door manuele verandering door gebruikers, programma's die de data wijzigen, defecte apparaten, ... .
    - Voorbeelden van data-aanpassingen: encoderen/decoderen, compressie/decompressie, encryptie/decryptie, ... .
- Data dat zodanig wordt aangepast dat het fouten bevat of onbruikbaar wordt, noemt men **corrupte** data

## CIA driehoek (Rode draad in de cursus)

- 3 principes:
    - **C**onfidentiality (vertrouwelijkheid)
    - **I**ntegrity (integriteit)
    - **A**vailability (beschikbaarheid)


![](./attachments/20240929095650.png)


### **Confidentiality** (vertrouwelijkheid)
    - Wie mag dit zien? (en mag deze persoon enkel zien wat essentieel nodig is voor de persoon)
    - Bv. chatgesprekken, bedrijfsgeheimen, medische informatie, ... .

- Verhindert de bekendmaking van informatie aan onbevoegde personen, bronnen en processen.
- Organisaties moeten hun personeel opleiden om zo goed mogelijk om te gaan met gevoelige informatie om zichzelf en hun organisaties te beschermen tegen aanvallen.
- Vertrouwelijkheid kan verkregen worden door **encryptie**, **authenticatie** en **toegangscontrole**.
    - Dit wordt uitgebreid behandeld in **H4**.

### **Integrity** (integriteit)
    - Klopt dit wel? Is de informatie juist? Komt deze van de juiste persoon?
    - Bv. financiële transacties, contracten, ... .

- Integriteit is de nauwkeurigheid, consistentie en **betrouwbaarheid** van data zolang die data bestaat. Een andere term is de kwaliteit.
- De nood aan integriteit hangt af van de aard van de data.
    - Bijvoorbeeld:
        - Facebook verifieert de data in een gebruikerspost niet
        - Transacties en bedragen bij een bank moeten steeds 100% correct zijn
- Verlies van integriteit kan enorme schade brengen aan personen en organisaties, en kan databronnen onbruikbaar of onbetrouwbaar maken
- Een integriteitscontrole is een manier om te bekijken of gegevens (bestanden, foto's, transacties, ...) nog steeds correct zijn (niet corrupt of beschadigd).
    - Hiervoor wordt vaak een **hash functie** gebruikt.
- Dit wordt uitgebreid behandeld in **H5**.
### **Availability** (beschikbaarheid)
    - Kan ik er aan wanneer ik het nodig heb?
    - Bv. 112-noodcentrale, chamilo.hogent.be tijdens online examen, e-mail servers, internet-toegang, ... .

- Informatiesystemen moeten op elk moment beschikbaar zijn.
- Aanvallen en fouten kunnen toegang tot systemen in gevaar brengen.
- Er bestaan vele maatregelen voor beschikbaarheid:
    - redundantie, backups, verhoogde weerstand, onderhoud, up-to-date software en OS, noodplannen om terug online te komen na een onvoorziene omstandigheid, gebruik van nieuwe technologieën, detectie ongebruikelijke activiteit en beschikbaarheidstesten, ... .
- Dit wordt uitgebreid behandeld in **H6**.

## Maatregel

- Technologie
- Beleid en uitvoering
- Mensen

## De cybersecurity kubus


![](./attachments/20241001090859.png)


- Om bij het ontwerpen van een beveiligsplan niets te vergeten, wordt dit vaak gevisualiseerd als een kubus met 3 zijden:
    - Beveiligingsprincipes (== de CIA-driehoek)
    - De staten van data
    - Beveiligingsmaatregelen
- De kubus staat ook bekend als de McCumber Cube.
- Er zijn 27 combinaties mogelijk

## Paswoord

- De **lengte** is dus heel belangrijk!
- Nog beter dan een wachtwoord is een **wachtwoordzin** (**passphrase**)
    - "Purple Elephants Sliding Over Clouds"
    - "3@pples&Or@nges#Ban@nas"
    - "Chocolate Cake Is My Favourite dess3rt"
- Gebruik voor elke website een **apart** wachtwoord!
- Gebruik 2FA (2 Factor Authenticatie)
- Bij **datalekken** worden vaak wachtwoorden op straat gegooid
    - Niet alle bedrijven zijn even zorgvuldig met hun beveiliging (of beveiligen niet!)
    - Hackers proberen deze wachtwoorden (geautomatiseerd) uit op andere sites
    - Hetzelfde wachtwoord gebruikt, kans groot dat ze op jouw andere accounts ook binnengeraken
- Gebruik **geen** trucjes
    - Bv. hogent19jan2023, google1nov1998, ...
    - Tools zoals hashcat en AI-hacktools herkennen dit meteen en kunnen zo al een gedeelte van het wachtwoord achterhalen
    - De effectieve ongekende lengte van het wachtwoord wordt een pak kleiner

### Paswoordmanagers

- **Password managers** zijn zeker een goede oplossing
- Voordelen:
    - Jouw wachtwoorden worden **versleuteld** opgeslagen
    - Je kan voor elke login een **aparte** username en wachtwoord instellen (niet vertrouwen op geheugen of post-it op scherm)
    - Heeft een ingebouwde password **generator**
- Vult wachtwoorden **automatisch** aan in de browser
- Nadelen:
    - Je **master password** is nu extreem belangrijk
    - Je **vertrouwt** het bedrijf achter de password manager
    - De software / plugins moet je 100% vertrouwen, en deze kunnen ook **bugs** hebben

### Paswoord beleid

- Bedrijven hebben vaak password policies waardoor je je wachtwoord **regelmatig** moet **wijzigen**
- Volgende wachtwoordwijziging doe je best niet elke maand of je personeel heeft wachtwoorden als ...
    - January123, February123, ...
    - Summer2023
- Op die manier heeft wachtwoorden wijzigen **geen zin**
- Wordt tegenwoordig ook **afgeraden** (bv. door NIST)

### Paswoorden bij programmeren

- Introduceer **time-delay** bij inlogpogingen
    - Bv. Als een persoon een foutief wachtwoord ingeeft, zorg dat er een wachttijd is van 5 seconden.
      Met als optie bijvoorbeeld na  foutieve pogingen 1u delay.
- Dit gaat **bots/scripts** tegen en de kans is groot dat de gebruiker het nooit zal merken!


![](./attachments/20241001091627.png)

### Paswoorden bij systeembeheer

- Introduceer programma's die bepaalde verbindingen blokkeren bij teveel pogingen
    - Bv. Als iets 5x probeert in te loggen met een foutief wachtwoord in 20 minuten, wordt deze genegeerd voor 6 uur

tool: [fail2ban/fail2ban: Daemon to ban hosts that cause multiple authentication errors (github.com)](https://github.com/fail2ban/fail2ban)

# H2: een wereld van experten en criminelen

## Wetgeving in cybersecurity

- Een van de basisprincipes binnen een samenleving of maatschappij is de **wetgeving**
- Dit is geen gemakkelijke taak om uit te voeren
    - Wetgeving loopt vaak achter op technologie
    - Het "**op tijd**" invoeren van "de juiste" regelgevingen is essentieel

- Er zijn **nationale** en **internationale** pogingen om dit te regulariseren
    - In **België**: *wetgeving rond "ethisch hacken"*
    - In **Europa**: *NIS* en *NIS2 directives*
    - In **VS**: *NIST framework*
    - **Wereldwijd**: *ISO/IEC cybersecurity model*

### wetgeving rond "ethisch hacken" (Belgisch)

- Het openbaar ministerie interpreteert de wetgeving nog steeds **restrictief**. Dit wil zeggen dat "hacking" nog steeds **bij wet verboden** is en blijft.
- Dit kader beschrijft ...
    - **hoe** een natuurlijke of rechtspersoon ...
    - **zonder frauduleuze bedoelingen** of de intentie om schade te berokkenen, ...
    - bestaande kwetsbaarheden in netwerken en informatiesystemen in België kan opsporen ...
    - en **moet melden**.

### NIS en NIS2 directive (Europees)

- NIS 
    - Eerste **EU-brede wetgeving** rond cybersecurity
    - Ingevoerd in 2016
    - Invoering ging (te) moeizaam

- NIS 2
    - Meer verduidelijking
    - Hoe omgaan met snelle technologische vernieuwingen
    - Meer samenwerking tussen lidstaten bij grote bedreigingen
    - Verplicht meer organisaties en sectoren om te werken rond cybersecurity
    - Verplicht lidstaten om meer de wet te handhaven
    - Ingevoerd op 16 jan 2023, moet in de nationale wetgevingen van EU-lidstaten staan tegen 17 okt 2024

### NIST Framework

- National Institute of Standards and Technologies (**NIST**) 
- Een **raamwerk** voor bedrijven en organisaties die cyberbeveiligingsprofessionals nodig hebben.
- Stelt bedrijven in staat de belangrijkste soorten verantwoordelijkheden, functietitels en benodigde personeelsvaardigheden te identificeren.

![[./attachments/20241007160955.png]]
Hoe Identificeren
Hoe Beschermen
Hoe Detecteren
Hoe Reageren
Hoe Herstellen


### ISO/IEC cybersecurity model (Globaal)

- Het beveiligen van data is een enorme taak. Het is onmogelijk voor een persoon om alles van begin tot einde te weten.
- Het International Organization for Standardization (ISO)/International Electrotechnical Commission (IEC) ! heeft een volledig framework opgesteld om te helpen dit in goede banen te leiden. Dit framework noemt het **ISO/IEC cybersecurity model**.
- Het ISO model is een **hulpmiddel** om complexe problemen te begrijpen en aan te pakken.
- Het ISO/IEC 27000 is een **standaard** opgesteld in 2005 (en geupdated in 2013). Het is gepubliceerd door ISO.
- Alhoewel de standaard **niet verplicht** is, wordt het door veel landen en organisaties gebruikt als het model voor cybersecurity.
- Het ISO 27000 model is bruikbaar voor elk type organisatie en bevat controle doelstelling in de vorm van checklists.
- De organisatie moet zelf bepalen welke controle doelstellingen voor hen van toepassing zijn.

## Aanvallers

- Een **hacker** (aanvaller) kan om verschillende redenen inbreken op computers of netwerken om toegang te verkrijgen

- **White hat** hackers breken in op netwerken of computersystemen om zwakke punten te ontdekken en zo de beveiliging van deze systemen te verbeteren. (bv: pentesters, meestal ingehuurd)
- **Gray hat** hackers bevinden zich ergens tussen de 2 andere types aanvallers. Deze aanvallers kunnen een kwetsbaarheid vinden en deze melden aan de eigenaren van het systeem als die actie samenvalt met hun agenda.
- **Black hat** hackers zijn onethische criminelen die de computer- en netwerkbeveiliging schenden voor persoonlijk gewin of om kwaadaardige redenen, zoals het aanvallen van netwerken.

### Scriptkiddies

- Dit zijn meestal **tieners** of **hobbyisten**, en hun aanvallen zijn meestal beperkt tot grappen en vandalisme. Ze hebben **weinig of geen vaardigheid** en gebruiken vaak bestaande tools of instructies op internet om aanvallen uit te voeren.

### Vulnerability brokers

- Dit zijn **gray hat** aanvallers die exploits proberen te ontdekken en deze aan leveranciers rapporteren, soms voor **geldprijzen** of **beloningen**.

### hacktivisten

- Dit zijn **gray hat** aanvallers die zich verzamelen en protesteren tegen verschillende **politieke en sociale ideeën**. Hacktivisten protesteren publiekelijk tegen organisaties of regeringen door artikelen en video's te plaatsen, gevoelige informatie te lekken en DDoS-aanvallen uit te voeren.

### Cybercriminelen

- **Black hat** hackers die ofwel als zelfstandige werken of voor grote cybercrime-organisaties werken. Elk jaar zijn cybercriminelen verantwoordelijk voor het **stelen van miljarden dollars** van consumenten en bedrijven.

### State sponsored hackers

- Afhankelijk van het perspectief van een persoon, zijn dit ofwel white hat ofwel black hat hackers die **overheidsgeheimen** stelen, **inlichtingen verzamelen** en netwerken **saboteren**. Hun doelwitten zijn buitenlandse regeringen, terroristische groeperingen en bedrijven. De meeste **landen** in de wereld nemen tot op zekere hoogte deel aan door de staat gesponsorde hacking.

## Verdedigers

### Cybersecurityspecialisten

- Het dwarsbomen van de cybercriminelen is een moeilijke taak. Vele bedrijven, de overheden en internationale organisaties zijn daarom begonnen met het nemen van **gecoördineerde acties** om cybercriminelen te beperken of af te weren.

#### Tools voor bedrijven
- **Vulnerability Databases**: publiek beschikbare databases van gekende kwetsbaarheden.
- **Early Warning Systems**: systemen voor vroegtijdige waarschuwing.
- **Share cyberthreat intelligence**: delen van cyber intelligence, vaak door middel van samenwerking tussen de publieke en private sector.
- **ISM-normen** (bv. ISO 27000): Standaarden en normen voor informatiebeveiligingsbeheer die een kader vormen voor het implementeren van beveiligingsmaatregelen binnen een organisatie.

### Organisaties voor samenwerking

- Cybersecurity-specialisten moeten regelmatig samenwerken met professionele collega's.
- Internationale technologieorganisaties sponsoren vaak workshops en conferenties.
  
(bijvoorbeeld: CCB (centrum voor cyber security Belgium), SANS, ISC2)

### Conferenties, CTF's, ...

- Cybersecurity-specialisten moeten dezelfde vaardigheden hebben als hackers, vooral black hat-hackers, om zich te beschermen tegen aanvallen.
- Hoe kan een individu de vaardigheden opbouwen en oefenen die nodig zijn om een cyberbeveiligingsspecialist te worden?
- Conferenties en competities zijn een geweldige manier om kennis en vaardigheden op het gebied van cyberbeveiliging op te bouwen.

(bijvoorbeeld: BruCon, Cyber Security Chalange Belgium, Cyber summer school)

### Organisaties tegen computermisdaad

- Er bestaan verschillende organisaties om computermisdaad te bestrijden
- België: Federal Computer Crime Unit (FCCU), Centre for Cyber Security Belgium, ...
- Wereldwijd: Europol, ENISA, Interpol, ...

## Security vs. privacy

- *Politie strijdt tegen criminaliteit*
    - Bv. terrorisme, kinderporno, mensensmokkel, fraude, drugshandel, ...
- *Burgers hebben recht op briefgeheim en privacy*
    - Hoe kunnen politiediensten criminelen vatten als er bv. encryptie wordt gebruikt?

- *Overheid verzamelt data*
    - Bv. belastingsdienst, boetes, ...
- **Hoe ver** mag de overheid hierin gaan?
    - Wat als de data voor iets anders wordt gebruikt?
    - Wat als er een fout in de data zit?
    - Wat als de definitie van "fout" verandert?

Ik heb niets te verbergen??

## GDPR

- In Belgie en Nederland bekend als de **AVG**
- Europese wet voor beschermen van privacy
- Ingevoerd in 2018
- Recht ...
    - ... van **inzage**
    - ... op **correctie**
    - ... om **vergeten** te worden
    - ... op **overdracht** van gegevens
    - ... **beveiliging**

- Organisaties moeten ...
    - ... een **correct doel** hebben voor gegevensverzameling
    - ... **enkel nodige** gegevens opvragen
    - ... voor slechts **beperkte duur**
    - ... **toestemming** vragen
- Privacyverklaring
- Soms kan de wet je verplichten om gegevens te geven
    - Bv. Foto voor identiteitskaart, scan luchthaven, ...

- Wat is **toestemming**? GDPR legt regels op
    - Duidelijk
    - Niet automatisch aangevinkt (expliciete toestemming)
    - Geen negatieve gevolgen
    - Intrekbaar
    - 13 jaar of ouder (of door voogd)
    - ...

# H3: bedreigingen, aanvallen en kwetsbaarheden

## Interne vs. externe aanvallen

### Interne aanvallen
- Afkomstig van een **interne gebruiker**.
- Per ongeluk of opzettelijk
- Kunnen **grotere schade** aanrichten dan externe dreigingen (omdat interne gebruikers rechtstreeks toegang hebben tot het gebouw en de bijbehorende infrastructuur/apparatuur)
- Interne aanvallers hebben doorgaans **kennis van het bedrijfsnetwerk, de bronnen en de vertrouwelijke gegevens**.

### Externe aanvallen
- Kunnen misbruik maken van **kwetsbaarheden** in netwerkapparaten, of kunnen **social engineering** gebruiken om toegang te krijgen te krijgen tot **interne bronnen**.

## Nu meer en eigen toestellen op netwerk

- **Mobiele apparaten** en **BYOD** toestellen (bring your own device)
	- *moeilijk centraal beheren en updaten*
-  **Internet of Things** (IoT)
	- *Grote hoeveelheid gegevens*. Gebruikers hebben *op afstand toegang*.

 ## Big Data
 - Het **volume** of de hoeveelheid gegevens (grote volume)
- De **verscheidenheid** of het bereik van gegevenstypen en bronnen
- De **snelheid** van gegevens (groei)

Deze drie dimensies worden ook wel de **3 V's** genoemd, nl. **V**olume, **V**ariety, **V**elocity.

## Bredere reikwijdte en cascade-effect
- **Federatief identiteitsbeheer** is inloggen tot externe diensten met een andere dienst (bv inloggen met facebook)
- Inlogmogelijkheid te koppelen aan een **geautoriseerd apparaat** is meest gebruikelijke manier om de federatieve identiteit te beschermen

## Malware en kwaadaardige code

### Verschillende soorten malware

#### kwaadaardige code
- Cyber criminelen vallen de toestellen van de gebruikers aan door het installeren van **kwaadaardige code**
#### Virussen
- **een kwaadaardig stukje code** die vasthangt aan een uitvoerbaar bestand
- De meeste virussen hebben een zekere vorm van **actie van de eindgebruiker** nodig.
- De virussen kunnen dan onmiddellijk of op een bepaald moment worden **geactiveerd**.

#### Worm
- Een stukje kwaadaardige code die zich kenmerkt doordat het **zichzelf repliceert** door gebruik te maken van een kwetsbaarheid in het netwerk. 
- Worms zullen hierdoor ook vaak het **netwerk vertragen**. 
- Een virus heeft een host programma nodig om te draaien, een worm kan **op zichzelf draaien** en **geen interactie van de gebruiker** meer nodig.

#### Trojan horse
- Malware die **verborgen zit in gewenste bestanden** zoals foto's of een game.
- Een Trojan horse verschilt van een virus omdat een Trojan horse **een niet-uitvoerbaar bestand** (zoals een afbeelding of een pdf) **infecteert**.
- **Kopieert zichzelf niet** naar andere computers, zoals een worm wel doet

#### Logic bomb
- Wordt **geactiveerd op bepaald moment (= trigger)**

#### Ransomware
- Computersysteem of data wordt **geblokkeerd of geëncrypteerd** tot het moment dat het slachtoffer een **geldsom** betaalt.

#### Backdoor en Rootkits
- **Rootkit** zal het **operating system aanpassen** en **zo een backdoor creëren**. (Backdoor is bijvoorbeeld het open zetten van poorten)

#### Keyboard logging
-  Computerprogramma die de *toetsenbordaanslagen (keystrokes) gaat opnemen of loggen*
- Bestaat ook als hardware

## Misleiding en oplichting

#### Social Engineering:
- Het bestaat erin om het **vertrouwen van jouw slachtoffer te winnen** om dan nadien van het slachtoffer iets te verlangen.
- Tegenwoordig een van de meest populaire hack-methodes
    - 80+ % succeskans
    - Zeer doeltreffend
    - **Mensen** *zijn vaak de zwakste schakel*

#### Phishing
-  Een vorm van fraude. Hierbij **probeert de aanvaller informatie** (meestal logingegevens, credit card informatie, ...) **te verkrijgen van het slachtoffer**. *Vaak krijg je via sociale media of email een link doorgestuurd* naar bv een loginscherm van een bank. *Gebruikers die denken dat dit loginscherm legitiem is, geven zo hun gegevens bloot aan de aanvallers*.

#### Pretexting
- Slachtoffer wordt **opgebeld** en gevraagd om **gevoelige informatie vrij te geven om identificatie mogelijk te maken**.

#### Vishing
- **Voice phishing** is een vorm van criminele telefoonfraude, waarbij gebruik wordt gemaakt van social engineering via de **telefoonom toegang te krijgen tot persoonlijke en financiële informatie met het oog op een financiële beloning**

#### Quishing (QR phishing)
- Verspreiden van **QR codes** die proberen het slachtoffer te **lokken naar een website**.

#### Cat phishing
- Aanmaken van een **valse identiteit** om op die manier het **vertrouwen** van het slachtoffer te winnen.

#### Spear phishing/whaling
- **Spear phishing**: phishing gericht op een **specifieke persoon, doelgroep**, organisatie of bedrijf. Bv. alle werknemers of studenten van de IT-dienst van HoGent.
- **Whaling**: een vorm van spear phishing gericht op een **specifiek zeer belangrijk persoon**. Bv. de CEO van een bedrijf, baas van de IT-dienst, ...

#### Pharming
- Geen rechtstreekse interactie met gebruiker nodig
    - Verschil met phishing (pharming == "phishing without a lure")

#### Typosquatting
- **Misbruik** maken van vaak voorkomende **typfouten**. Bv. een website hosten die lijkt op [https://paypal.com](https://paypal.com/) met een URL als [https://paipal.com](https://paipal.com/) . Gebruikers voeren daar dan nietsvermoedend hun gegevens in

#### Shoulder surfing
- **Aflezen/meelezen** van PIN-codes of wachtwoorden en dergelijke

#### Dumpster diving
- Zoeken van info in **afval**

#### Impersonation
- Zich **voordoen** als iemand anders

#### Piggybacking/tailgating
- Het **meeglippen** met personen die wel toegang hebben tot een plaats met beperkte toegang.

## E-mail en browser aanvallen

#### SEO (Search Engine Optimization) poisoning

Dit is een verzameling van technieken die er moet voor zorgen dat jouw website *hoog scoort bij de zoekmachines*. **Cyber criminelen durven SEO wel eens te misbruiken om hun kwaadaardige software hoog in Google te laten ranken**.

#### Browser hijacking

Dit zorgt dat de **browser instellingen worden gewijzigd**. Op die manier kunnen criminelen ervoor zorgen dat **jouw browser doorlinkt naar de website van de "klant" van deze crimineel**.

#### Spam

Spam, junk mail, ongewenste e-mail, allemaal *synoniemen voor iets waar we ons dagdagelijks aan ergeren*. In de meeste gevallen gaan de **ongewenste e-mails over advertenties**, maar deze kunnen ook verwijzen naar **kwaadaardige links** met mogelijks misleidende informatie

#### Hoaxes

- Een leugen, **valse informatie**, ...
- Vaak onschadelijk ... maar niet altijd!

#### Spyware

Probeert **informatie** te **vergaren** over een gebruiker en *stuurt dit door naar een externe partij*. Vaak worden hiervoor de **beveiligingsinstellingen aangepast**. Het gaat dan soms over keystrokes verzamelen of **data capture**. Het doel van spyware is *meestal om geld te verdienen*.

#### Adware

Typisch zijn de lastige **pop-ups**. Deze pop-ups proberen op één of andere manier winst op te leveren voor de auteur. Het is dan ook **advertentie-ondersteunende software**.

#### Scareware

**Probeert de gebruiker te overtuigen door ze bang te maken**.


## Netwerkaanvallen

#### Botnets

- **C&C, C2** (**Command and Control**): computers, smartphones, IoT, ... worden geïnfecteerd door malware. De malware maakt een connectie met de C&C server van de aanvaller. De *C&C server kan nu opdrachten versturen naar het geïnfecteerd toestel om andere toestellen te* **infecteren** *om het botnet te doen groeien, of aanvallen uit te voeren*.

- Een botnet kan bestaan uit honderden tot **duizenden** geïnfecteerde toestellen *onder invloed van een aanvaller*.

#### (Distributed) Denial-of-Service attack (DDOS)

*Een aanval die resulteert in het* **niet beschikbaar** *zijn van een bepaalde netwerk service* (bv. website). Een (D)DoS attack is een groot risico en kan ervoor zorgen dat je veel tijd en geld verliest. Je hoeft niet veel talent te hebben om een (D)DoS attack uit te voeren: *deze zijn relatief makkelijk uit te voeren*.

DoS betekent dat 1 computer/connectie de aanval uitvoert, DDoS (Distributed DoS) betekent dat meerdere computers/connecties deelnemen aan de aanval. Een DDoS kan bijvoorbeeld uitgevoerd worden door een botnet.

#### Sniffing

- *Gelijkaardig aan iemand afluisteren*. De dader zal alle **netwerkverkeer** die passeert aan de NIC (Network Interface Card) **bekijken**, *ook het netwerkverkeer dat niet voor hem bedoeld was*.

- Daders gebruiken *speciale software en/of hardware om het netwerk te sniffen* (wireguard).

#### Spoofing

De werkelijkheid **vervalsen**. Zo gaat de dader kenmerken gaan aanpassen om te **doen alsof hij/zij iemand anders is**. 
	- Zo zal men *bij email spoofing de header* (bvb. From (Van), Return-Path (Afzender), ...) aanpassen. Zo kan men doen alsof de email door iemand anders werd verstuurd. 
	- Je hebt ook nog andere vormen van spoofen zoals *URL spoofing of IP spoofing*. Spoofing verschilt van phishing omdat spoofing technologie misleidt i.p.v. mensen.


#### Man-in-the-middle attack

De cyber crimineel zal trachten informatie te stelen dat wordt verstuurd over een netwerk **tussen twee toestellen**. Hij kan er ook voor kiezen om de boodschap aan te passen en op die manier valse informatie verspreiden tussen de hosts. De hosts zijn zich op dat moment niet bewust van de aanval. Een MitM-aanval laat de dader toe om de controle over te nemen zonder dat de andere partijen dit weten.

#### Frauduleuze (Rogue) Access Point

Wordt in een (vaak draadloos) netwerk geplaatst en **doet zich voor als een vertrouwelijk apparaat**. Dit *laat je toe MitM-attacks uit te voeren*. Het Access Point wordt geplaatst en zorgt ervoor dat mensen hun verkeer via dit Access Point versturen waardoor het Access Point de data kan zien en analyseren.

## Applicatie-aanvallen

### Aanvallen

#### Zero-day attack

Er wordt geprobeerd om gebruik te maken van een **kwetsbaarheid** in software die **nog niet** is **gekend**. Day zero (of zero hour) verwijst naar het moment waarop het lek wordt ontdekt.

#### Cross-site scripting (XSS)

Een kwetsbaarheid in **web applicaties**. Via XSS kan je **scripts injecteren** in een webpagina die beschikbaar is voor de gebruiker. De **crimineel valt het slachtoffer niet rechtstreeks aan** maar wel de website. Uiteraard is het het slachtoffer die de website bezoekt. De dader slaagt er soms in om files te bekijken op de web server die niet voor hem bedoeld zijn.


#### Code injections

Eén van de meest gebruikte manieren om data op te slaan voor een website is door gebruik te maken van een **databank**. Via een SQL injection bv. zal men proberen om een SQL databank aan te vallen. Men **injecteert** dan een **query** om deze uit te voeren. Developers dienen zich bewust te zijn van de potentiële gevaren. In een labo zullen we zo een login trachten te omzeilen.


#### Buffer overflow

Wanneer data **over zijn limiet** gaat. Buffers zijn geheugen die door een applicatie worden gebruikt. Door de data aan te passen en te vergroten tot het de **buffers overschrijdt**, gebruikt de applicatie geheugen dat door een ander proces wordt gebruikt en krijg je een error. Deze error kan dan een applicatie crash of het verlies van data zijn.


#### Remote Code Executions (RCE)

De **dader gebruikt een kwetsbaarheid** waarbij hij/zij **code vanop afstand kan uitvoeren**. Het is dan bv. mogelijk om over het netwerk of over het internet het toestel van het slachtoffer aan te vallen.

### Beschermen tegen deze aanvallen

- First-line defense: programmeurs moeten **stabiele code** schrijven
- Alle **user input** van buitenaf beschouwen als vijandige of kwaadaardige code
- Alle user input **valideren en controleren**
- Alle software waaronder plug-ins up-to-date houden door **updates** regelmatig uit te voeren
- Niet alle updates worden automatisch uitgevoerd, dus controleer zelf manueel ook altijd eens of er geen updates kunnen worden uitgevoerd
- **Never ending story**: in de volgende jaren zal je nog meer leren hoe je je kan beschermen en hoe je een aanval uitvoert.


## APT's

Een **Advanced Persistent Threat** is een langdurige en doelgerichte cyberaanval waarbij een onbevoegd persoon onopgemerkt en langdurig toegang krijgt tot een netwerk. Het doel is om continu toegang te krijgen en gegevens te stelen. APT-aanvallen richten zich vooral op landen en organisaties.

- **Advanced**: de schaal (incl. de middelen) zijn zeer geavanceerd van aard. Eén enkel individu kan dit niet uitvoeren. Vaak gaat het om state-sponsored hackers of georganiseerde misdaad.
- **Persistent**: heeft als doel om heel lang onzichtbaar te blijven.
- **Threat**: steelt logingegevens en gevoelige data. Het is vaak een vorm van spionage.


Aanvallende organisaties krijgen vaak een **code** beginnend met APT:

- Fancy Bear (aka. APT28)
- Cozy Bear (aka. APT29)
- ...


### voorbeelden

#### Voorbeeld 1: Stuxnet

- Advanced:
    - Een van de **meest complexe en doelgerichte** malware-aanvallen die tot nu toe bekend zijn.
    - Maakte gebruik van verschillende **zero-day** kwetsbaarheden om te infiltreren en zich te verspreiden.
    - Opmerkelijk vanwege zijn vermogen om industriële controlesystemen te manipuleren, met name de systemen die worden gebruikt in **kerncentrales** en **industriële faciliteiten**.
    - Bevatte ook digitale certificaten om zijn legitimiteit te verifiëren, wat suggereerde dat het door een **zeer geavanceerde (state sponsored?) actor** was ontwikkeld.
        - Oorsprong van Stuxnet was eerst niet bekend, later werd onthuld dat het een gezamenlijke operatie was van de Amerikaanse NSA en de Israëlische inlichtendienst.

- Persistent:
    - 2009-2010: **jarenlang**
    - Ontdekt in juni 2010
    
- Threat:
    - Het primaire doelwit was de **nucleaire** installatie in Natanz, Iran.
    - Een van de eerste bekende voorbeelden van door **state sponsored** cyberwapens.
    - Een keerpunt in de wereld van cybersecurity, omdat het aantoonde dat **fysieke** systemen via digitale middelen kunnen worden aangevallen.
    - Illustreerde het potentieel voor grootschalige en verwoestende cyberaanvallen op **industriële** infrastructuren.


- Sindsdien zijn er talloze andere soortgelijke aanvallen en malware-varianten ontdekt, en de beveiliging van kritieke infrastructuren is wereldwijd versterkt om dergelijke dreigingen te beperken.

#### Voorbeeld 2: Belgacom

- Advanced:
    - Op **grote schaal** uitgevoerd
    - Door de **Britse geheime dienst** (GCHQ), in samenwerking met de Amerikaanse NSA.

- Persistent:
    - 2010-2013: **jarenlang**
    - Ontdekt in 2013 en kreeg de naam "Operation Socialist."

- Threat:
    - Malafide software werd gebruikt om toegang te krijgen tot het interne netwerk van het bedrijf voor het verzamelen van **gevoelige informatie**.
    - Het feit dat een overheidsinstantie van een ander land betrokken was bij de aanval deed veel stof opwaaien en riep **vragen** op **over de grenzen en ethiek** van digitale spionage.

# H4 Confidentiality

## Cryptografie

### Cryptografie vs. cryptanalyse

![](./attachments/20241024170318.png)

#### Cryptografie

- *Cryptologie* 
    - **wetenschap** maken en breken **geheime codes**
- *Cryptografie* (maken van geheime berichten)
    - **manier** om gegevens **op te slaan** en te verzenden, zodat alleen de ontvanger deze kan lezen
    - Moderne cryptografie: gebruik van algoritmen om gevoelige data te beschermen
    - Veel **ouder dan computers** (duizenden jaren)
- *Crypto-analyse*:
    - **kraken** van cryptografie


### Encrypteren

- Om vertrouwelijkheid (confidentiality) te garanderen kunnen we een bericht **encrypteren** met behulp van een specifiek algoritme (cipher)
- Hierbij wordt een bericht dat we kunnen begrijpen (**plaintext**) omgezet naar een onleesbaar bericht (**ciphertext**) via een aantal goed gedefinieerde stappen (algoritme), vaak met behulp van een geheime sleutel (**key**).

![](./attachments/20241024170823.png)

### Decrypteren

- Het omgekeerde is ook mogelijk, **decrypteren** zet een onleesbaar bericht terug om naar de originele leesbare tekst.
- Voor encrypteren en decrypteren wordt vaak een **combinatie** gebruikt van verschillende **technieken**:
    - **Transpositie** (omzetting) (Van plaats verwisselen)
    - **Substitutie** (vervanging) 
    - **One-time pad** (Random bij optellen)

![](./attachments/20241024171011.png)
### Soorten technieken

#### Transpositie

- Eenvoudig voorbeeld van **transpositie** waarbij de volgorde van de karakters wijzigt (cfr. transpositie van een matrix, AT)

![](./attachments/20241024171117.png)

#### Substitutie

- Voorbeelden **substitutie** waarbij karakters vervangen worden door andere karakters

![](./attachments/20241024171205.png)

#### One-time pad

- Voorbeeld one-time pad waarbij een random **sleutel (pad)** toegevoegd wordt aan de plaintext
- Nadien wordt het resultaat omgezet naar een getal van 2 cijfers

![](./attachments/20241024171352.png)


##### Randomheid

- One time pad kan gekraakt worden als er een **patroon** in de sleutel zit
    - De sleutel moet volledig **random** zijn
	- Mensen zijn heel slecht in randomheid
	- Computers ook

##### Pseudorandom

- Computers zijn deterministisch
    - we maken ze juist heel precies zodat ze altijd hetzelfde uitkomen
- Computers bevatten **pseudorandom** generators
    - Spuwen op basis van een startgetal (**seed**) schijnbaar random getallen uit
    - Seeds wordt heel vaak gebruikt in games
	    - Randomheid in AI, omgeving, ...
	        - Gebruiken bv. tijd van spelen als seed
	    - Genereren van werelden

- Pseudorandom algoritmes zijn **zeer moeilijk** om correct op te stellen
- Vaak wordt er gebruik gemaakt van **natuurlijke** random fenomenen
    - bv. [https://random.org](https://random.org/) biedt random getallen aan op basis van atmosferische ruis
    - bv. Cloudflare filmt een muur van lavalampen en zet die om naar random getallen

### Twee types algoritmen

#### Symmetrische algoritmen
- **Zelfde sleutel** voor encrypteren (versleutelen) en decrypteren
	- Verzender en afzender **kennen de sleutel** voor communicatie begint
        - Groot nadeel: hoe wissel je deze veilig uit?

![[Pasted image 20241209161935.png]]

#### Asymmetrische algoritmen
  - **Sleutelpaar**:verschillende sleutels voor encrypteren en decrypteren
        - 1 sleutel is **publiek** (openbaar), andere is **privé**
        - Hoeft geen sleutel op voorhand uit te wisselen
            - Niet het grote nadeel van symmetrische encryptie
            - Wel complexer en dus **trager** dan symmetrische algoritmen
![[Pasted image 20241209161914.png]]

##### Ook **publieke-sleutel-cryptografie** genoemd

- Iedereen kan bericht encrypteren met publieke sleutel, enkel ontvanger kan decrypteren met private sleutel

![[Pasted image 20241209162026.png]]

### Private-key versleuteling (symmetrisch)

#### Data Encryption Standard (**DES**)
- Eenvoudig, encrypteert 64-bits blokken met 56-bits sleutel
- Niet bruikbaar in praktijk, **niet veilig**!

 #### Triple DES (**3DES**)
- 3x DES met verschillende sleutels
- Sleutelsterkte: ~~3x56 = 168 bits~~ in praktijk 112-168 bits afhankelijk van gekozen combinatie
- Niet bruikbaar in praktijk, **niet veilig**!

 #### International Data Encryption Algorithm (**IDEA**)
- 64-bits blokken met 128-bits sleutel
- Vervanging voor DES, gebruikt bij PGP (Pretty Good Privacy)
- **Veilig** op dit moment

#### Advanced Encryption Standard (**AES**)
- 128-bits blokken, sleutel van 128, 192 of 256 bits
- Goedgekeurd door NIST, gebruikt door Amerikaanse overheid
- **Veilig** op dit moment
- Op dit moment meest aangeraden (bv. voor performantie, implementeerbaarheid, ...)

### Public-key versleuteling (asymmetrisc)

 #### Rivest Shamir Adleman (**RSA**)
- Gebruikt product van 2 heel grote priemgetallen
- Vaak gebruikt in browsers
- **Veilig** op dit moment

#### Elliptic Curve Cryptography (**ECC**)
- Alternatief voor RSA: Nulpunten van elliptische curven i.p.v. priemgetallen
- NSA gebruikt dit voor handtekeningen en uitwisselen sleutels
- **Veilig** op dit moment
- Wordt meer en meer gebruikt i.p.v. RSA vanwege kleinere sleutels.

#### Diffie-Hellman
- Gebruikt om geheime sleutel (sessiesleutel) voor symmetrisch algoritme **veilig uit te wisselen**
- Vaak gebruikt: SSL, TLS, SSH, IPSec, ...
- **Veilig** op dit moment


#### El Gamal
- Amerikaanse overheidsstandaard voor digitale handtekeningen
- Niemand heeft patent ...
       - Vroeger was er een patent op RSA (nu niet meer)
       - Werd daarom gebruikt bij PGP (Pretty Good Privacy)
- **Veilig** op dit moment

### Symmetrische vs. asymmetrische codering

|Symmetrisch|Asymmetrisch|
|---|---|
|Snel|Niet nodig om beide sleutels te delen|
|Verbruikt weinig resources|Kan gebruikt worden voor encryptie en validatie (=handtekening)|
|Kan gebruikt worden voor korte en lange berichten|Gebruikt veel resources|
|Sleutel moet op veilige manier gedeeld worden|Enkel bruikbaar voor relatief kleine berichten|
### In de praktijk

1. We gebruiken **asymmetrisch encryptie** om een geëncrypteerde tunnel op te zetten
2. We gebruiken dan **Diffie-Hellman** om via de tunnel een gemeenschappelijke symmetrische sessie-sleutel te genereren zonder onze private keys uit te wisselen
3. We gebruiken daarna de **symmetrische sessiesleutel** om een (snellere) geëncrypteerde tunnel op te zetten

- Een "**tunnel**" betekent dat we berichten in een enkele of beide richting encrypteren. Anderen kunnen deze berichten niet lezen. Het lijkt alsof we een eigen tunnel hebben voor onze berichten door het internet.

### Public-key versleuteling

- Encrypteren (encrypt/decrypt)
- Digitale handtekening (sign/verify).

![[Pasted image 20241209162959.png]]

### Diffie Hellman

- Wordt gebruikt om met asymmetrische algoritmen een symmetrische sleutel te genereren
    - De private key wordt **nooit** getoond aan de andere partij!
    - Toch bekomen beide partijen dezelfde sleutel als resultaat

![[Pasted image 20241209163056.png]]


## cryptanalyse

### Het kraken van cryptografie

- Bij het **kraken** van cryptografie probeer je een onleesbaar bericht (ciphertext) om te vormen naar een leesbaar bericht (plaintext) **zonder** dat je de **geheime sleutel** kent
- In sommige gevallen zelfs zonder dat je weet **welk algoritme** gebruikt is voor de encryptie
- In theorie kan je elk algoritme kraken, maar de kans op succes hangt af van 2 factoren:
    - De hoeveelheid **tijd** die je hebt voor het bericht irrelevant wordt
    - De hoeveelheid **bronnen** (bv. CPU, GPU, storage, ...) die je kan gebruiken

### Technieken

- Soms is het mogelijk om algoritmen te kraken door **op zoek** te gaan naar **bepaalde patronen** in de ciphertext (zo is de Enigma gekraakt door Alan Turing!)

- Voor het kraken van moderne algoritmen worden vaak volgende technieken gebruikt:
    - **Dictionary attack**: uitproberen van verschillende waarden uit een opgegeven lijst
        - bv. woordenboek of dump van wachtwoorden
    - **Brute-force attack**: uitproberen van alle mogelijke waarden voor de geheime sleutel
        - heel tijdsintensief!
    - **Rainbow tables**: gebruikt vooraf gemaakte, gesorteerde lijsten met ciphertext en de overeenkomstige plaintext
        - wordt gebruikt voor het kraken van hashing algoritmen

### CPU, GPU, AI of quantum computing?

- De bewerkingen nodig voor het kraken van een modern algoritme zijn vaak **veel efficiënter** uit te voeren op een **GPU** dan een CPU (en dus veel sneller!)
- De opkomst van **AI** kan mogelijks in de toekomst een grote rol spelen bij het kraken van encryptie, als AI modellen hiervoor getraind kunnen worden (bv. door training met vaak gebruikte wachtwoorden)
- Verwacht wordt ook dat **quantum computing** veel algoritmen voor encryptie onbruikbaar zal maken, maar dit is nog niet voor morgen ...
    - Toch wordt op dit moment al veel geëncrypteerde data opgeslagen zodat deze later gekraakt kan worden!

### Enkele tools

**John The Ripper**
    - Kraken van zwakke wachtwoorden via een hash (bv: kraken van geëncrypteerde ZIP-file via hashwaarde)
    - Maakt gebruik van **dictionary attacks** via een woordenboek en/of **bruteforce** attacks
    - Geoptimaliseerd voor kraken via **CPU**, beperkte ondersteuning voor GPU

**Hashcat**
- Functionaliteit vergelijkbaar met John The Ripper
- Geoptimaliseerd voor kraken van wachtwoorden via **GPU**

## Data verduisteren

### Gegevensmaskering (masking)

- Gevoelige data **vervangen** door niet-gevoelige data
- Niet-gevoelige versie ziet eruit en gedraagt zich als het origineel
    - Geen wijzigingen nodig aan applicaties of data-opslagfaciliteiten
- Vaak gebruikt voor testen en analyse zonder privacyrisico
- Verschillende **technieken** om gegevens te wijzigen, maar zinvol te houden:
    - **Vervanging** vervangt gegevens door authentiek ogende waarden (garanderen anonimiteit)
    - **Shuffling** verwisselt data van verschillende gebruikers
        - Werkt goed voor bijvoorbeeld financiële data in een testdatabase

### Steganografie

- **Verbergt** gegevens in een ander bestand
    - bv. grafisch, audio-, of ander tekstbestand
- Geheime boodschap **valt niet op**
    - Niemand zou ooit weten dat een foto daadwerkelijk een geheime boodschap bevatte door het bestand elektronisch of op papier te bekijken
- Verschillende **componenten** betrokken:
	- **Ingebedde** gegevens = geheim bericht
	- **Omslagtekst** verbergt gegevens die de **stego-tekst** produceren
	    - Omslag en/of verborgen gegevens kunnen ook afbeelding of audio zijn
	- **Stego-key** regelt het verbergingsproces


### Gegevensverduistering (obfuscation)

- Toepassen gegevensmaskering en steganografietechnieken
    - **Verduistering** maakt de boodschap verwarrend, dubbelzinnig of moeilijker te begrijpen
    - Systeem kan opzettelijk berichten **door elkaar halen**

![[Pasted image 20241209164056.png]]

- Je kan dit zelf uittesten op [https://obfuscator.io/#code](https://obfuscator.io/#code)


# H5 Integrity
## Digitale handtekening

- Aan bestanden (bv: PDF) kan een **digitale handtekening** toegevoegd worden voor het verzekeren van **integriteit**
- Hiermee kunnen twee zaken gecontroleerd worden:
    - Het bestand is **niet gewijzigd** nadat de handtekening is gegenereerd
    - Het bestand is daadwerkelijk **afkomstig van de persoon** die de handtekening heeft gegenereerd, en niet van iemand anders
- Om dit te realiseren wordt een **asymetrisch algoritme** gebruikt

Asymmetrische encryptie genereert een **publieke** en **private** sleutel per persoon. Deze sleutels zijn wiskundig aan elkaar gelinkt.

![[Pasted image 20241209211709.png]]

1. Alice voegt een digitale handtekening toe aan haar bericht, versleuteld met haar **private** sleutel.
2. De **publieke** sleutel van Alice kan gebruikt worden om de handtekening te decrypteren. Zo wordt het volgende gecontroleerd:
    - Het bericht **niet** is **gewijzigd**.
        - De handtekening wordt immers ongeldig zodra er iets wijzigt in het bericht.
    - Afkomstig is **van Alice**.
        - Enkel Alice heeft immers de private sleutel om de handtekening te maken.

- Dit garandeert **geen vertrouwelijkheid**; daarvoor kan het bericht na ondertekening worden versleuteld met de publieke sleutel van Bob.

### Voorbeeld sleutelpaar

- Normaal gebruik je hiervoor software op jouw eigen computer (GPG). **Genereer nooit jouw sleutels via een website voor echt gebruik!**

```plaintext
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: OpenPGP v2.0.8

793hZyatESpYcgQplSrDXBBc9MZGRE9fvZE8Qvscr9kpf7BLJ
YU5xKVFkFuaSTx2k6Mwd2F6Mo9OoNcAdeS9vALjvtyD8TEGoPRq
SQ1rbQfIi814JW7unXg...
=bGdt
-----END PGP PUBLIC KEY BLOCK-----
```

```plaintext
-----BEGIN PGP PRIVATE KEY BLOCK-----
Version: OpenPGP v2.0.8

xcaGBF9fhEBEADkw2xYivAYznxkZM3Rv0U0gyqj9gDbVmPloQ9f
3F0B9Tmtwht3Z8JmwPJ1GUUnT03mMlGYKtblVYPX1uAQItIaBN
CykwZ4T16g3rSa...
=UmmP
-----END PGP PRIVATE KEY BLOCK-----
```

## Hashing algoritmes

### Een hash als integriteitscontrole

- Om te controleren dat een bestand of bericht niet gewijzigd is, kan een **hashing algoritme** of **hashfunctie** gebruikt worden.
    - Hierbij wordt een bepaalde waarde (**hash**) berekend en toegevoegd aan het bestand of bericht.
- Op een later moment kan de hashfunctie opnieuw uitgevoerd worden, en zou de **hashwaarde niet gewijzigd** mogen zijn.
- Vormt een reeks van bits om naar een reeks van een vast aantal bits (alles in IT kan voorgesteld worden in bits).
- Het is een **wiskundige eenrichtingsfunctie**. Het is in de ene richting makkelijk te berekenen, maar onmogelijk in de andere richting
- Je kan dit vergelijken met het vermalen van koffiebonen. Het vermalen van bonen tot gruis is gemakkelijk, maar het terug samen plakken van gruis tot bonen is onmogelijk.
- Een ander voorbeeld is het controlecijfer in een bankrekeningnummer.Hierbij worden de 2 cijfers na de landcode van een IBAN bankrekeningnummer berekend aan de hand van de bankcode en de resterende getallen. Zo kunnen we controleren of het nummer geldig is (bv. BE**68** 5390 0754 7034).

### Eigenschappen

- Een hashing algoritme heeft de volgende **eigenschappen**:
    - De input kan uit om het even welk aantal bits bestaan
    - De output heeft steeds hetzelfde aantal bits (ongeacht het aantal bits van de input)
    - De hashfunctie is een eenrichtingsfunctie en is onmogelijk om te keren
    - Twee verschillende inputwaarden zullen steeds een verschillende outputwaarde geven

### Werking hashing algoritme

![[Pasted image 20241209212210.png]]

### MD5 en SHA

- Populaire hashing algoritmes zijn MD5 en SHA:
    - Het **Message Digest 5 Algorithm** (MD5) is ontwikkeld door Ron Rivest en geeft een 128-bits output terug
    - Het **Secure Hash Algorithm** is ontwikkeld door het US National Institute of Standards and Technology (NIST)
        - Verschillende **varianten** afhankelijk van het gewenst aantal bits voor de output:
            - SHA-224 (224 bits), SHA-256 (256 bits), SHA-384 (384 bits), SHA-512 (512 bits)
- Uiteraard bestaan er ook nog vele andere hashing algoritmes
- Test het zelf uit op [http://www.fileformat.info/tool/hash.htm](http://www.fileformat.info/tool/hash.htm)

### Botsingen

- Hashing algoritmes moeten in theorie altijd een andere output hebben voor verschillende inputs
- In de praktijk is dit niet steeds mogelijk, er zijn immers veel meer mogelijke inputs dan outputs (met vast aantal bits)
- Wanneer je voor 2 **verschillende inputs dezelfde output** waarde krijgt, spreekt men van een **botsing of collision**
- Een hashing algoritme verliest zijn nut als botsingen **bewust** veroorzaakt kunnen worden

```plaintext
     password          hash
Hash(qwertyqwerty)  == 548d4efa8
Hash(ietsAnders)    == 548d4efa8
```

### Sterke en zwakke algoritmes

- Hashing algoritmes kunnen onderverdeeld worden in zwakke en sterke hashing algoritmes
    - **MD5** en **SHA-1** zijn **zwakke algoritmes** waarbij botsingen bewust veroorzaakt kunnen worden
        - [https://csrc.nist.gov/projects/hash-functions](https://csrc.nist.gov/projects/hash-functions)
        - Praktisch voorbeeld: [https://www.mscs.dal.ca/~selinger/md5collision/](https://www.mscs.dal.ca/~selinger/md5collision/)
    - Zwakke algoritmes zijn niet (meer) bruikbaar voor cybersecurity doeleinden
    - **SHA-2** en **SHA-3** zijn **sterke algoritmes** die wel nog gebruikt worden voor cybersecurity doeleinden

## Toepassingen van hashing algoritmes

- **Controle op fouten** in data
- Het **veilig bewaren** en controleren van **wachtwoorden**
- Identificeren van data aan de hand van een kleinere waarde (hash als **fingerprint**)
- Efficiënte opslag van data in **hashtabellen** (zie OLOD Classic Computer Science Algorithms)

### Controle op fouten

- Via een hashing algoritme kan je van een digitaal bestand de **hashwaarde berekenen** en dit toevoegen aan het bestand of publiceren op een website
- De hashwaarde kan op een later moment **opnieuw berekend** worden, bijvoorbeeld na downloaden van het bestand van een server
- Indien de nieuwe hashwaarde verschillend is, is het bestand gewijzigd en dus mogelijks onbruikbaar (bv. door een fout tijdens de download)

![[Pasted image 20241210095433.png]]

### Veilig bewaren van wachtwoorden

- Gebruikersnaam en wachtwoord worden vaak bewaard in **databanken** (Sla nooit op in plain text maar de hash waarde)
- Databanken zijn een efficiënte manier om data op te slaan, analyseren en op te vragen
- Databanken zijn een gewild doelwit van cybercriminelen
- Een gelekte hoeveelheid gegevens uit een databank noemt een **Data Breach** (datalek)
- Als een datalek **gebruikersnamen en wachtwoorden** bevat, zullen cybercriminelen die uittesten op andere website
    - Dit is een grote oorzaak van hacks
- Hetzelfde wachtwoord hergebruiken is dus sterk afgeraden!
    - Een wachtwoord dat je telkens lichtjes aanpast per website heeft ook geen zin
- Gebruik bij voorkeur een **wachtwoordmanager** en maak een uniek wachtwoord per website!
- Test jezelf op [https://haveibeenpwned.com/](https://haveibeenpwned.com/)
- [https://plaintextoffenders.com/](https://plaintextoffenders.com/)

### Salting
- Wanneer 2 gebruikers **hetzelfde wachtwoord** gebruiken, zal voor beiden **dezelfde hashwaarde** worden opgeslagen
    - Hierdoor weten aanvallers dat ze door 1 wachtwoord te kraken 2 vliegen in 1 klap slaan
- **Salting** is een extra maatregel om hashing veiliger te maken
    - Een random reeks bits (**salt**) die wordt **toegevoegd** aan het wachtwoord voordat de hash berekend wordt
- **Hetzelfde wachtwoord** geeft zo een **verschillende hash**: ✅ ✅ **VEILIG!**


### Kortom

- Plaintext: ⚠️ **gevaarlijk**
    
- Hash wachtwoord: ✅ **matig veilig**, Dezelfde wachtwoorden geven dezelfde hashwaarden. Cybercriminelen kunnen dit misbruiken.
    
| Gebruikersnaam                            | Paswoord                                |
| ----------------------------------------- | --------------------------------------- |
| [tom@gmail.com](mailto:tom@gmail.com)     | `b30ead2d465295bd47ki4lkyu3a8cvzxd6g84` |
| [hanne@gmail.com](mailto:hanne@gmail.com) | `b30ead2d465295bd47ki4lkyu3a8cvzxd6g84` |
    
- Hash + salt: ✅ ✅ **extra veilig**

| Gebruikersnaam                            | Salt                 | Paswoord                                |
| ----------------------------------------- | -------------------- | --------------------------------------- |
| [tom@gmail.com](mailto:tom@gmail.com)     | `D;%yL9TS:5PalS/d89` | `b30ead2d465295bd47ki4lkyu3a8cvzxd6g84` |
| [hanne@gmail.com](mailto:hanne@gmail.com) | `)<,s-<U(jLezy4j>\*` | `8tju13z3c4rt8dt8yu6eqw876jy5jx63g5bz4` |
## Kraken van hashing

- Bij het kraken van hashing probeer je voor een gekende **hashwaarde** (output) een **overeenkomstige input** te vinden
- Vanuit een hashwaarde de oorspronkelijke input berekenen is zo goed als **onmogelijk** (eenrichtingsfunctie!)
- Een mogelijkheid is om van **elke mogelijke inputwaarde** de **hashwaarde** te berekenen tot je dezelfde hash hebt (brute-force attack), eventueel met een dictionary

### Rainbow Tables

- Je kan ook van verschillende inputs de hash berekenen, tot je een lijst hebt met **alle mogelijke hashwaarden** en de input
- Deze **lijst** kan **gesorteerd** worden op basis van de hashwaarde, zodat je snel input voor een hash kan vinden
- Een dergelijke lijst noemen we een **Rainbow Table**
- Het opstellen van een rainbow table moet maar 1 keer gebeuren: je kan deze dus downloaden van het internet
- Het **toevoegen** van een **salt** aan een wachtwoord maakt **Rainbow Tables onbruikbaar** voor het kraken!
- Je kan rainbow tables bijvoorbeeld downloaden van [https://freerainbowtables.com/](https://freerainbowtables.com/)

### Vertragende hashing algoritmes

- Om te vermijden dat er veel pogingen worden gedaan om een hash te kraken of een collision te vinden wordt er vaak gebruik gemaakt van **vertragende hashing algoritmes**
- Een aanvaller met meer rekenkracht moet zo toch nog steeds **lang wachten** om de hashwaarde te kraken
- Bekende voorbeelden:
    - PBKDF2
    - bcrypt
    - Argon2

## HMAC

### Hashing met symmetrische encryptie

- Om **integriteit** en **authenticiteit** te garanderen van een bericht kunnen we hashing combineren met symmetrische encryptie
- Hash-based message authentication (**HMAC**) is een **hashfunctie** die naast de input ook gebruik maakt van een **symmetrische sleutel** voor de berekening van de hashwaarde
- Dit lijkt goed op digitale handtekeningen, maar bij digitale handtekeningen wordt asymetrische encryptie gebruikt

### Werking HMAC

- Alice (verzender)
    1. Berekent de **hashwaarde** van het (versleuteld) bericht via HMAC met behulp van de gedeelde geheime sleutel
    2. Voegt deze waarde (**HMAC digest** of **vingerafdruk**) toe aan het bericht en stuurt dit naar Bob
    3. 
![[Pasted image 20241210100308.png]]

- Bob (ontvanger)
	1. Berekent na ontvangen van het bericht zelf de hashwaarde via HMAC met dezelfde sleutel
	2. Vergelijkt deze waarde met de waarde die Alice toevoegde aan het bericht
	3. Indien beide waarden overeenkomen weet Bob dat het **bericht niet gewijzigd** is, en dat het **afkomstig is van Alice**

![[Pasted image 20241210100353.png]]

### Nut van HMAC

- HMAC biedt dus **bescherming** tegen een **Man-in-the-Middle** attack: via gewone hashing zou een aanvaller een nieuwe hash kunnen berekenen na aanpassing van het bericht
- Bij HMAC is de symmetrische **sleutel geheim**, en dus enkel gekend door de zender en ontvanger van het bericht
- HMAC garandeert dus **integriteit** (bericht is niet gewijzigd) en **authenticiteit** (afkomstig van Alice)




# H6 Availability

## Onvoorziene problemen

### Disaster Recovery Planning

- Het is nodig om een organisatie draaiende te houden wanneer er een ramp optreedt.
- Een ramp omvat zowel **natuurlijke** als **menselijke** acties die schade toebrengen.
    - Kan de organisatie beletten om zijn activiteiten voort te zetten.

### Natuurlijke rampen

- Geologische rampen
    - Bv. aardbevingen
- Meteorologische rampen
    - Bv. bliksem, hagel, tornado, ...
- Gezondheidsramp
    - Bv. pandemieën, quarantaines, ...

### Menselijke rampen

- Gebeurtenissen op het werk
    - Bv. staking, ontslag, bewust trager werken, ...
- Socio-politieke gebeurtenissen
    - Bv. vandalisme, blokkades protesten, sabotage, terreur, ...
- Onderbreking in nutsvoorzieningen
    - Bv. stroom, internet, ...

## Hoge beschikbaarheid

### Wat is het 5x9 principe?

- Wordt in het Engels the **Five Nines** genoemd
- Systemen en services kennen een uptime van **99.999%**
    - Ofwel: ze zijn beschikbaar in 99.999% van de tijd
    - Concreet: downtime bedraagt minder dan 5 minuten 15.36 seconden per jaar

|Availability|Uptime (%)|Max downtime per year|
|---|---|--:|
|five nines|99.999|5m 15.36s|
|four nines|99.99|52m 33.6s|
|three nines|99.9|8h 45m 36s|
|two nines|99|3 days 15h 36m|
|one nine|90|36 days 12h|

|Availability|Max downtime per year|Max downtime per month|Max downtime per week|Max downtime per day|
|---|--:|--:|--:|--:|
|**99.999% (5x9)**|**5m 15.36s**|**26.784s**|**6.048s**|**0.864s**|
|99.995%|26m 16.8s|2m 13.92s|30.24s|4.32s|
|99.99 (4x9)%|52m 33.6s|4m 27.84s|1m 0.48s|8.64s|
|99.95%|4h 22m 48s|22m 19.2s|5m 2.4s|43.2s|
|99.9 (3x9)%|8h 45m 36s|44m 38.4s|10m 4.8s|1m 26.4s|
|99.5%|1 day 19h 48m|3h 43m 12s|50m 24s|7m 12s|
|99 (2x9)%|3 days 15h 36m|7h 26m 24s|1h 40m 48s|14m 24s|
|95%|18 days 6h|1 day 13h 12m|8h 24m|1h 12m|
|90 (1x9)%|36 days 12h|3 days 2h 24m|16h 48m|2h 24m|

### Omgevingen met hoge beschikbaarheid (cruciale sectoren)

- Financiële sector:
    - Trading, diensten beschikbaar voor klant, vertrouwen van de klant
- Gezondheidssector:
    - Patiëntenzorg de klok rond
- Industrie
    - Fabrieken, assemblage, ...
- Transportsector:
    - NMBS, luchtvaart, ...
 - Openbare veiligheid:
    - Brandweer, politie, leger, ...)
- Nutsvoorzieningen:
    - Energiecentrales, waterzuiveringsstations, ...
- Telecom sector:
    - Telefoon, internet, TV, ...
- Retail industrie:
    - Supply chains, leveren van producten, ...
    - Denk aan de eindejaarsperiode

### Bedreigingen van de beschikbaarheid

- Er zijn heel wat oorzaken van **verlies van beschikbaarheid**. Van het falen van systeem tot een natuurramp.
    - System failure
    - Niet-doelbewuste oorzaak
    - Doelbewuste aanval
    - Natuurramp

### Hoge beschikbaarheid kan je bekomen door

- Een zo hoog mogelijke **uptime** van diensten
    - Door te mikken naar veel "nines" uit het 5x9 principe
- **Redundantie** om **single points of failure** (SPoF) vermijden
- **Robuuste** systemen te bouwen
- Het **monitoren** van de systemen
- Het maken van **backups**

### Vermijden SPoF

- Single points of failure zijn de **zwakke schakels** die ervoor kunnen zorgen dat het ganse systeem faalt.

### Redundantie

- Een **single point of failure** moet altijd vermeden worden.
    - Hardware, data, processen, software, personeel, ... .
- Oplossing: zorg je niet op **één element** vertrouwt.
- Faalt een kritiek onderdeel?
    - **Redundantie**: een reserve neemt over.
    - Bv. meerdere load balancers voorzien (die eigenlijk allemaal hetzelfde doel hebben).
- **N+1 redundantie** zorgt ervoor dat systemen **beschikbaar blijven** als er eentje faalt.
- Componenten (**N**) moeten steeds **minimum één backup** component hebben (**+1**)
    - Bv. een auto heeft een reservewiel in de koffer voor als 1 van de 4 wielen faalt.

### Systemen zullen falen

- Elk systeem zal ooit falen, wat dan?
- Robuuste systemen hebben een **hoge tolerantie** voor **falen**.
    - Bv. routing protocols in een netwerk: als een toestel faalt, wordt er automatisch een andere weg gezocht tussen A en B.
- Robuustheid inbouwen is **meer dan enkel redundantie** voorzien.
- Meer en meer applicaties worden ontwikkeld mwaarbij men er van uit gaat dat de applicatie vroeg of laat kan **crashen**.
    - Bv. video wordt hervat na connectie-verlies bij een video call.
    - Bv. als je webbrowser crasht, kan je toch nog je openstaande tabs recupereren.
- Ook bij het nemen van back-ups of rond het beheer van schijven (storage) zijn er systemen die **self-healing** zijn zoals ZFS
    - zie semester 2.

### Monitoring

- Problemen (**failures**) **detecteren** wanneer ze zich voordoen.
- Meldingen (**alerts**) weergeven op communicatieplatformen
    - Discord, Microsoft Teams, Slack, ...
- **Visualisatie**
    - Vrije ruimte op harde schijven
    - Temperaturen van fysieke machines
    - CPU/memory load
    - ...

## Back-ups

**Toy Story 2**
> The command that had been run was most likely `rm -r -f *`. [...] Unfortunately, someone on the system had run the command at the **root** level of the Toy Story 2 project
>  **90%** of the movie had been deleted by the stray command.
>  Pixar, at the time, did **not** continuously **test** their backups.
>  Susman [...] had given birth to her son Eli shortly before, and had been working from home. [...] she had a [...] workstation at her house [...] and it was loaded up with a **full copy** of the movie.
>  
>  ~ Oren Jacob, former Chief Technical Officer of Pixar - then an associate technical director for Toy Story 2

### De 3-2-1-regel

- **Minstens 3** kopieën
- Op **minstens 2** verschillende media
- Waarvan **minstens 1** op een andere locatie
- Meer mag altijd!

#### Voorbeeld:
- 1 kopie op laptop
- 1 kopie op een NAS
- 1 kopie op de cloud

#### Strategie:
- 1 + 1 + 1 = 3 kopieën
- Laptop / NAS / cloud = 2+ verschillende media
- Cloud = 1 off-site media

### Varianten op de 3-2-1-regel

- 3-2-1 regel is uitgevonden voor cloud storage bestond.
    - 1 of meer van de kopieën was vroeger bijna sowieso steeds offline
    - Als alles verbonden is, kan het ook beschadigd worden
        - Bv. ransomware → laptop, NAS, cloud, ...
    - ⚠️ **Synchronisatie ≠ back-up**
- Nog steeds een goede leidraad
    - Beter 3-2-1 dan geen back-ups!
- **3-2-1-1-0**
    - **1** van de kopieën moet offline staan zonder enige verbinding (**air gapped**).
        - Net als toen de cloud nog niet bestond.
    - Verifiëer de kopieën: ze mogen **0 (geen)** fouten bevatten.
        - ⚠️ **Test** de back-ups zelf en het herstellen van back-ups!
- **4-3-2**
    - 4 kopieën, minstens 3 verschillende media, minstens 2 ander locaties
    - Vooral voor gespecialiseerde bedrijven

### Welke media

- Tapes
- HDD
- SSD
- USB
- CD/DVD/Blu-ray
- NAS
- Cloud

### HDD

- Kan niet tegen schokken of magnetisme.
- Hot storage:
    - Datacenters houden statistieken bij over welk HDD's (niet) lang meegaan
        - Welk model, welk merk, grootte, ...
        - [https://www.backblaze.com/cloud-storage/resources/hard-drive-test-data](https://www.backblaze.com/cloud-storage/resources/hard-drive-test-data)
    - Voorlopige cijfers geven een gemiddelde levensduur van 6 a 7 jaar
- Cold storage:
    - Geen exacte cijfers: +/- 5 jaar max?
- Bekijk de **S.M.A.R.T. waarden**

### SSD

- Beperkt aantal writes en kan niet goed tegen hoge temperaturen
- Hot storage:
    - Datacenters houden ook over SSD's statistieken bij
    - Technologie is nieuw: nog geen harde conclusies t.o.v. HDD's
- Cold storage:
    - Alweer geen exacte cijfers
    - Best sowieso jaarlijks eens aansluiten tegen bit rot volgens JEDEC standaard
- Bekijk de **S.M.A.R.T. waarden**
    - Andere dan bij HDD's
    - Kijk zelf met [https://crystalmark.info/en/software/crystaldiskinfo/](https://crystalmark.info/en/software/crystaldiskinfo/)
        - Zowel voor HDD's als SSD's

### HDD vs. SSD

![[Pasted image 20241210113152.png]]

### NAS = Network attached storage

### Cloud

- Handig voor off-site back-ups
- Automatisch
    - Hoeft er niet aan te denken om een back-up te nemen
- Wat met privacy / kost?
    - Let op met "free tiers"
    - Als je niet betaald, kan jouw data het product zijn
- Synchronisatie is geen back-up!
    - Ransomware wordt gesynct
    - Verwijderingen worden niet tegengehouden
    - Nood aan "**immutability** of data"
- Cloud kan on-/off-prem geïnstalleerd worden
    - Ook gekend als on-/off-site.

### Hoeveel back-ups bijhouden en hoe lang?

- Je houdt best **meerdere** back-ups over **langere tijd** bij
    - Je hebt niet altijd door wanneer er fouten of malware in je back-ups zitten
    - Je wil zo ver kunnen terugkeren in de back-ups als nodig om een correcte kopie van een beschadigd bestand terug te vinden

### Incrementele back ups

- **Automatiseer** back-ups zodat je deze niet vergeet!
- **Full** back-up
    - Telkens opnieuw de volledige inhoud opslaan (copy-paste)
    - Verbruikt veel tijd en ruimte
- **Incrementele** back-ups
    - Houdt 1 kopie bij, samen met alle verschillen ("delta's") die later gebeurd zijn
    - Bespaart veel tijd en ruimte
    - Maakt het mogelijk om bv. 30 wekelijkse back-ups + 20 maandelijkse + 5 jaarlijkse kopieën bij te houden.

![[Pasted image 20241210113304.png]]

### Test de back-ups!

- ⚠️ Test dat
    - De backups worden gemaakt
    - De data correct herstelt wordt van de backups

### Heb je wel alles geback-upt?

- Smartphones
    - SMS, ...
- Tablets
- USB-sticks, CD's, DVD's, videocassettes, ...
- Social media (bv. foto's en bestanden in chats, ...)
    - Facebook, Whatsapp, Discord, ...
- Cloud
    - Google drive, OneDrive, Dropbox, MEGA, ...
- E-mails






# H7 Certificaten

## Waarom nood aan certificaten?

### Problemen

- Symmetrische encryptie
    - ⚠️ Je moet fysiek afspreken om sleutel uit te wisselen
- Asymmetrische encryptie
    - ⚠️ Je moet de juiste publieke sleutel kunnen bemachtigen
    - Wat bij een MitM attack?
        - Een hacker onderschept een publieke sleutel, vervangt deze door zijn eigen publieke sleutel en stuurt deze door
        - Niemand heeft door dat een hacker de geëncrypteerde data kan aflezen
        - Hoe kunnen we **garanderen** dat een **publieke sleutel bij een bepaalde persoon of organisatie hoort**?

https://youtu.be/5rT6fZUwhG8
_Van begin tot 5m02s_

## De oplossing: certificaten

### Certificaten: een digitaal paspoort

- Iedereen vertrouwt een 3e persoon of organisatie
    - De **Certificate Authority** (CA)
- Deze deelt "**identiteitskaarten**" oftewel **certificaten** uit
- Dankzij de identiteitskaart/certificaat kan iemand bewijzen dat hij of zij daadwerkelijk die persoon is
- Geen geldige identiteitskaart/certificaat? **Niet te vertrouwen!**

Bv. iedereen vertrouwt de overheid
- Inloggen met identiteitskaart op overheidswebsites, tonen bij politiecontroles, afgeven bij het stemmen, ...
- Bewijst dat je een Belgische staatsburger bent

Bv. iedereen vertrouwt HOGENT
- studentenkaart voor goedkoper eten in resto, afgeven tijdens examens, uitlenen bibliotheek, toegang fietsenstallingen, printen op campus, studentenkortingen voor o.a. bioscoop, ...
- Bewijst dat je een student aan HOGENT bent

Bv. iedereen vertrouwt jouw bank
- Met bankkaart kan je jouw rekening bekijken, geld afhalen, geld overschrijven, online betalen, ... .
    - Je kan zelfs geld afhalen aan bankautomaten van andere banken.
- Bewijst dat je de eigenaar bent van een specifieke rekening bij een bepaalde bank.

### Hoe doen we dit online?

- Online werken we met **Certificate Authorities** (CA's) als 3e vertrouwenspersoon/-organisatie
- CA genereert **certificaten** (== digitale identiteitskaarten) voor gebruikers die dit aanvragen
    - Gebruikers kunnen **elkaar controleren** via deze certificaten of ze daadwerkelijk met de gewenste persoon communiceren
    - Een certificaat koppelt een **publieke sleutel** van een gebruiker aan zijn **identiteit**.
        - M.a.w. "_Dit is mijn publieke sleutel en je kan het controleren bij de CA via mijn certificaat_"
- Certicaten aanvragen, maken en verifiëren gebeurt allemaal met **asymmetrische encryptie**
	- **Iedereen** (CA's en gebruikers) heeft dus een asymmetrisch sleutelpaar (**publieke en private sleutel**) nodig!

![[Pasted image 20241210115551.png]]

### Hoe ziet een certificaat er uit?

- Een certificaat is een digitaal ondertekend tekstbestand
- Het structuur van het tekstbestand is vastgelegd volgens de **X.509 standaard**

#### voorbeeld X.509
```plaintext
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            72:14:11:d3:d7:e0:fd:02:aa:b0:4e:90:09:d4:db:31
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: C=US, ST=Texas, L=Houston, O=SSL Corp, CN=SSL.com EV SSL Intermediate CA RSA R3
        Validity
            Not Before: Apr 18 22:15:06 2019 GMT
            Not After : Apr 17 22:15:06 2021 GMT
        Subject: C=US, ST=Texas, L=Houston, O=SSL Corp/serialNumber=NV20081614243, CN=www.ssl.com/postalCode=77098/businessCategory=Private Organization/street=3100 Richmond Ave/jurisdictionST=Nevada/jurisdictionC=US
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                RSA Public-Key: (2048 bit)
                Modulus:
                    00:ad:0f:ef:c1:97:5a:9b:d8:1e ...
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Authority Key Identifier:
                keyid:BF:C1:5A:87:FF:28:FA:41:3D:FD:B7:4F:E4:1D:AF:A0:61:58:29:BD

            Authority Information Access:
                CA Issuers - URI:http://www.ssl.com/repository/SSLcom-SubCA-EV-SSL-RSA-4096-R3.crt
                OCSP - URI:http://ocsps.ssl.com

            X509v3 Subject Alternative Name:
                DNS:www.ssl.com, DNS:answers.ssl.com, DNS:faq.ssl.com, DNS:info.ssl.com, DNS:links.ssl.com, DNS:reseller.ssl.com, DNS:secure.ssl.com, DNS:ssl.com, DNS:support.ssl.com, DNS:sws.ssl.com, DNS:tools.ssl.com
            X509v3 Certificate Policies:
                Policy: 2.23.140.1.1
                Policy: 1.2.616.1.113527.2.5.1.1
                Policy: 1.3.6.1.4.1.38064.1.1.1.5
                  CPS: https://www.ssl.com/repository

            X509v3 Extended Key Usage:
                TLS Web Client Authentication, TLS Web Server Authentication
            X509v3 CRL Distribution Points:

                Full Name:
                  URI:http://crls.ssl.com/SSLcom-SubCA-EV-SSL-RSA-4096-R3.crl

            X509v3 Subject Key Identifier:
                E7:37:48:DE:7D:C2:E1:9D:D0:11:25:21:B8:00:33:63:06:27:C1:5B
            X509v3 Key Usage: critical
                Digital Signature, Key Encipherment
            CT Precertificate SCTs:
                Signed Certificate Timestamp:
                    Version   : v1 (0x0)
                    Log ID    : 87:75:BF:E7:59:7C:F8:8C:43:99 ...
                    Timestamp : Apr 18 22:25:08.574 2019 GMT
                    Extensions: none
                    Signature : ecdsa-with-SHA256
        30:44:02:20:40:51:53:90:C6:A2 ...
                Signed Certificate Timestamp:
                    Version   : v1 (0x0)
                    Log ID    : A4:B9:09:90:B4:18:58:14:87:BB ...
                    Timestamp : Apr 18 22:25:08.461 2019 GMT
                    Extensions: none
                    Signature : ecdsa-with-SHA256
        30:45:02:20:43:80:9E:19:90:FD ...
                Signed Certificate Timestamp:
                    Version   : v1 (0x0)
                    Log ID    : 55:81:D4:C2:16:90:36:01:4A:EA ...
                    Timestamp : Apr 18 22:25:08.769 2019 GMT
                    Extensions: none
                    Signature : ecdsa-with-SHA256
        30:45:02:21:00:C1:3E:9F:F0:40 ...
    Signature Algorithm: sha256WithRSAEncryption
         36:07:e7:3b:b7:45:97:ca:4d:6c ...
```



### Certificaten aanvragen

![[Pasted image 20241210115844.png]]

1. De gebruiker **genereert** een certificate signing request (CSR).
    - Bevat zijn publieke sleutel
    - Bevat zijn informatie (zijn identiteit): naam, adres, ...
2. De CA ontvangt de CSR en **controleert** de identiteit van de gebruiker aan de hand van de informatie in de CSR.
3. De CA creëert het gevraagd certificaat en **ondertekent** dit met zijn private sleutel.
	- Het certificaat is nu 100% zeker afkomstig van de CA
	- Indien het certificaat vervalst wordt, wordt de handtekening ongeldig (en dus ook het certificaat)

### Kortom
![[Pasted image 20241210120037.png]]

### Certificaten verifiëren

- Alice wil een geëncrypteerd bericht versturen naar Bob
- In H4 stuurde Bob simpelweg zijn publieke key door
    - ⚠️ Dit kan onderschept en vervalst worden!
- In plaats van de publieke sleutel, stuurt Bob beter zijn **certificaat** naar Alice
    - Het certificaat bevat de publieke sleutel en is ondertekend door de CA
- Het certificaat is ondertekend met de private sleutel van de CA
    - Alice kan de **geldigheid** dus nagaan dankzij de publieke sleutel van de CA
        - ✅ Indien geldig: de publieke sleutel in het certificaat is volgens de CA inderdaad van Bob
        - ⚠️ Indien niet geldig: Bob is niet wie hij zegt dat hij is!
            - Mogelijks een **MitM** aanval!
- Alice kan nu ook indien gewenst haar certificaat geven aan Bob
    - Bob kan dan ook op dezelfde manier achterna gaan of hij daadwerkelijk met Alice praat

### De publieke sleutel van de CA

- Hoe geraken gebruikers aan de publieke sleutel van de CA?
    - Is dit ook niet onderhevig aan een mogelijke MitM aanval?
- Wie ondertekent het certificaat van de CA zelf?

### Verspreiden van CA certificaten

- CA heeft zelf ook een certificaat
- CA-certificaten worden **geïnstalleerd** samen met programma's die gebruik maken van certificaten
    - OS, web browsers (HTTPS), VPN clients, SSH clients, ... .
- Gebruik je een eigen CA, dan moet je deze manueel toevoegen
    - Anders krijg je een gelijkaardige fout als deze:
![[Pasted image 20241210120200.png]]

#### Bv. Windows
![[Pasted image 20241210120223.png]]

#### Bv. Firefox

- `Settings` > `Privacy & Security` > `Security` > `View certificates` > `Authorities`
![[Pasted image 20241210120303.png]]

#### Bv. Chrome

- `Settings` > `Privacy and Security` > `Manage certificates` > `Trusted Root Certification Authorities`

### Wie ondertekent het CA certificaat?

- CA heeft zelf ook een certificaat
    - Wie ondertekent deze?
- De CA ondertekent zelf zijn certificaat
    - **self signed certificate**

Iedereen kan een self signed certificate genereren

- Maar geniet geen vertrouwen van een CA!
- Word vaak gebruikt binnen een **privaat** netwerk (bv. om te testen)
- Geeft meestal een foutmelding
    - Test het zelf eens uit: [https://self-signed.badssl.com](https://self-signed.badssl.com)

![[Pasted image 20241210120514.png]]
## Toepassing: HTTPS

### HTTP

- Vroeger werd al het webverkeer **plaintext** verstuurd via het HTTP (webverkeer) protocol
    - Iedereen kon inloggegevens afluisteren (bv. op wifi)

### HTTPS

- Tegenwoordig gebruiken browsers en web servers certificaten
    - Praten zeker met de juiste gesprekspartner (geen MitM)
    - Certificaten bevatten een publieke key en zorgen voor de mogelijkheid tot encryptie
- Gebruik van certificaten gebeurt volgens **TLS/SSL** protocol
    - HTTP + TLS/SSL == **HTTPS**

- De browser vertelt je of je via HTTP of via HTTPS surft

- Probeer gerust, zie je het verschil?
    - [https://letsencrypt.org](https://letsencrypt.org)
    - [http://httpforever.com](http://httpforever.com)

- Websites leiden je vaak automatisch om naar `https://` als je naar de `http://` versie surft

- Indien niet, geeft jouw browser vaak een foutmelding ("HTTPS only mode")
    - Wil je toch doorgaan, dan moet je dat expliciet aanklikken

### HTTPS is geen internetpolitie

- HTTPS belooft **enkel**
    - Dat er geen MitM is
    - Dat de verbinding tussen client en webserver geëncrypteerd is
- HTTPS biedt **geen bescherming tegen malafide websites**!
    - Bv [https://h0g3nt.be](https://h0g3nt.be)
        - Geeft groen slot (als website bestaat)
            - Immers garantie geen MitM en encryptie
            - Wat de website voor de rest doet is niet van belang voor HTTPS

## Toepassing: VPN

### VPN

- **Beveiligde** communicatie over publiek netwerk
- Maakt privénetwerk over het publieke internet aan tussen verschillende fysieke locaties
    - Wordt vaak voorgesteld als een geëncrypteerde "**tunnel**"

- Gebruikt voor het verbinden van **verschillende geografische locaties**
    - Bv. 2 kantoren op verschillende geografische locatie kunnen zo via het internet op een veilige manier verbonden worden
    - Bv. Verschillende campussen van HOGENT op zelfde netwerk
- Gebruikers hebben dit niet door

- Gebruikt voor **work@home**
    - Bv. thuis verbinden met intranet school/bedrijf
- Lijkt alsof je rechtstreeks op het school-/bedrijfsnetwerk werkt

- Gebruikt voor **privacy** en tegen **geo-restrictions**
	- Bv. Belgacom/Telenet mag niet zien naar wat ik surf
	- Bv. Websitebeheerder mag niet zien wie ik ben
	- Bv. Ik wil een serie bekijken op Netflix die enkel aan Amerikaanse kijkers wordt aangeboden

- Gebruikt TLS/SSL certificaten
	- Geen MitM
	- Encryptie

- Er zijn ook niet TLS/SSL VPN systemen zoals IPsec
	- Out of scope voor deze cursus

### Casus: VPN voor privacy

- 3rd party VPN provider
    - Bv. ProtonVPN, NordVPN, Surfshark VPN, Private Internet Access, Mullvad VPN, ExpressVPN, ...
    - Ook wel consumer **VPN service** genoemd
- Word veel reclame voor gemaakt (bv. op youtube)
    - Doen ze wat ze beloven?

### VPN logging policy

- VPN biedt **geen oneindige privacy**, enkel in bepaalde gevallen
    - De **VPN server** ziet alles
    - Is eigenlijk een bewuste **MitM** aanval
- Vertrouw jij jouw VPN provider?
    - Houden ze logs bij? (**logging policy**)
    - Wat doen ze met jouw data?
    - VPN-bedrijven zijn niet immuun voor de wet
        - Sommige bedrijven bieden wel een transparency report aan (wat gebeurt er als de rechtbank aanklopt?)

![[Pasted image 20241210120924.png]]


### Anonimiteit

- 🔒 Jouw ISP ziet niet wat je doet
    - Ze zien wel dat je een VPN tunnel gebruikt
- 🔒 De website waar je naartoe surft ziet niet jouw IP-adres
    - Ze zien het IP-adres van de VPN server als verzender
    - Neem een VPN server in een ander land om geo-restrictions te voorkomen

### Geen anonimiteit

- Wie ziet er wel wat er heen en weer gestuurd wordt
    - 🔓 Alle ISP's vanaf de VPN server tot de website
    - 🔓 De VPN server
- De website waar naar gesurft wordt ziet uiteraard ook het verkeer
- Vergeet niet dat HTTPS ook encrypteert

### Andere nadelen

- Niet alle VPN's laten alles toe
    - Gratis VPN's laten vaak geen P2P door
- Snelheid is vaak gelimiteerd


### Conclusie

- VPN's hebben **voor-** en **nadelen**
    - Weet wat ze **wel** en **niet** kunnen
    - Beslis voor jezelf
        - Of je een VPN gebruikt
        - Wanneer/waarvoor je een VPN gebruikt
        - Welke VPN provider je vertrouwt





# H8 Red team
## Taak van het red team

- Proberen inbreken
- Verdediging testen
- **Zwakke punten blootleggen**


Legaal, en in dienst van de organisatie die ze aanvallen

### White hat / Black hat /grey hat

Deze legale hackers worden ook "White hat hackers" genoemd. Illegale hackers met slechte bedoelingen zijn "Black hat", en hackers die soms wetten negeren maar niet per se slechte bedoelingen hebben zijn "Grey hats"

## De 5 fasen

![](./attachments/20241212194532.png)

- *Reconnaissance*: Onopvallend **informatie** verzamelen
- *Scanning and enumeration*: Actief zoeken naar **zwakke punten**
- *Gaining access*: De gevonden zwaktes **aanvallen**
- *Maintaining access*: Zorgen voor manieren om later **opnieuw in te breken**
- *Covering tracks*: Zorgen dat het doelwit **geen sporen** terugvindt

## Fase 1: Reconnaissance

- Zo **veel** mogelijk informatie verzamelen (footprinting)
- Zo **onopvallend** mogelijk
- Doel:
    - Het doelwit **begrijpen**
        - Wie? Wat? Hoe? Waar? ...
        - Hoe beveiligen ze zich?
        - Waar zit de waardevolle data?
        - ...
    - De toekomstige aanval **accurater** maken door het **aanvalsdomein** te beperken

### Reconnaisance: types

- **Passief**
    - **Geen direct contact** met het doelwit
    - Anoniem
- **Actief**
    - **Wel direct contact** met het doelwit
        - Doelwit heeft informatie over aanvaller!
        - Maar doelwit weet (normaal gezien / nog) niet dat die data gelinkt is aan een toekomstige aanval.
- Soms **dunne grens**: bv. website bezoeken

#### voorbeelden

- Voorbeelden passieve reconnaisance:
    - Publieke bronnen (overheidsdata, kranten, social media, ...)
    - Aankomend/vertrekkend personeel in de gaten houden
- Voorbeelden actieve reconnaisance:
    - Helpdesk bellen
    - Werknemer om een naamkaartje vragen
    - Solliciteren
### Reconnaissance: Zoekmachines

Gebruik niet enkel [Google](https://google.com): **verschillende zoekmachines** hebben verschillende resultaten

- [Bing](https://bing.com), [Yandex](https://yandex.com), [Duckduckgo](https://duckduckgo.com), ...

Gebruik **operatoren** om efficiënter te zoeken

- [https://ahrefs.com/blog/google-advanced-search-operators/](https://ahrefs.com/blog/google-advanced-search-operators/)
- [Google Hacking Database](https://www.exploit-db.com/google-hacking-database)

#### OSINT

**Open source intelligence** (OSINT) is het verzamelen en analyseren van gegevens die verkregen zijn uit openbaar beschikbare bronnen[[1]](https://nl.wikipedia.org/wiki/Open_source_intelligence#cite_note-1)[[2]](https://nl.wikipedia.org/wiki/Open_source_intelligence#cite_note-2). Dit in contrast met het verzamelen en analyseren van gegevens verkregen uit spionage ([HUMINT](https://nl.wikipedia.org/wiki/HUMINT "HUMINT")) of verkregen uit het onderscheppen van elektronische signalen ([SIGINT](https://nl.wikipedia.org/wiki/SIGINT "SIGINT")), beide het domein van inlichtingendiensten. Onder deze openbare bronnen kunnen naast bewust openbaar gemaakte data ook onbewust openbaar gemaakte data of zelfs gelekte data vallen.

### Reconnaissance: Openbare databanken

Openbare databanken bevatten **publiek beschikbare**, maar soms zeer interessante, data. Voorbeelden:

- [Nationale Bank België](https://nbb.be)
- [Belgisch staatsblad](https://www.ejustice.just.fgov.be/cgi/welcome.pl)
- [Vlaamse databanken en zoeksystemen](https://www.vlaanderen.be/intern/werkplek/digitale-tools-en-digitale-veiligheid/bibliotheken-vlaamse-overheid/databanken-en-zoeksystemen)

### Reconnaissance: Vacatures

- Informatie over belangrijke (open) **posities**
- Informatie over gebruikte **technologieën**

### Reconnaissance: Social Media

- Mensen **delen** vaak (onbewust) **gevoelige informatie**
    - Locatie
    - Afbeeldingen van beveiliginsmechanismen of sleutels
    - Biometrische data, bijvoorbeeld in [deze studie](https://documents.trendmicro.com/assets/white_papers/wp-leaked-today-exploited-for-life.pdf)

- **Gespecialiseerde tools** om informatie van sociale media te verzamelen:
    - Online: Pipl, Maltego, ...
    - Commandline: bv. theHarvester, recon-ng, ...

### Reconnaissance: e-mailadressen

- Eenvoudig met tools als bv. [hunter.io](https://hunter.io)


### Reconnaissance: Websites

- De meeste organisaties hebben een website
- Bevat vaak **veel informatie**
    - Contactgegevens
    - Foto's (personeel, gebouwen)
    - Structuur van het bedrijf
- Gebruikte **technologie**
    - [Netcraft](https://www.netcraft.com/), [BuiltWith](https://builtwith.com/), [Wappalyzer](https://www.wappalyzer.com)
    - Met development tools/plug-ins (bv. `F12`)
- Soms beter om een **hele website te downloaden**
    - Onopvallend experimenteren
    - bv. met [HTTrack](https://www.httrack.com/)

### Reconnaissance: Whois

- Informatie over registratie domein
- [whois.domaintools.com](https://whois.domaintools.com/)

### Reconnaissance: DNS

- Vertaalt een **domeinnaam** ([www.hogent.be](http://www.hogent.be)) naar een **ip-adres** (`193.190.173.135`)
- Informatie over website, netwerk, infrastructuur
- Soms **gevoelige informatie** in slecht beveiligde DNS-servers
- Verschillende tools om info te achterhalen:
    - `nslookup`, `dig`, `dnsrecon`, `dnsmap`, ...

### Reconnaissance: IoT

- IoT devices zijn vaak **slecht beveiligd** en bieden zo toegang tot een bedrijf
- Zoeken naar publiek toegankelijke devices kan via [Shodan](https://www.shodan.io/)

## Fase 2: Scanning en enumeration

### Scanning en enumeration: doel

- Zoeken naar **zwakke punten**
    - Bedrijven houden dit zelf ook in de gaten (asset management)
- Gebruikte technologieën en versies vinden en linken aan **gekende kwetsbaarheden**
    - [CVE](https://www.cve.org), [exploit-db.com](https://www.exploit-db.com)
- Technischer en actiever dan reconnaissance

- **Port scanning**
    - Detecteren van open poorten en services
- **Network scanning**
    - Netwerk in kaart brengen.
    - Detecteren van gebruikte IP-adressen, besturingssystemen, netwerktoestellen, verbindingen, ...
- **Vulnerability scanning**
    - Onderzoeken of er gekende kwetsbaarheden of zwaktes in het netwerk aanwezig zijn

- **Ping**
    - Welke toestellen zijn bereikbaar?

- **Traceroute/tracert**
    - Welke route leggen berichten in het netwerk af?

### Scanning en enumeration: poortscanners

- Scant de **netwerkpoorten** van een toestel
- 3 mogelijkheden:
    - **Open**: een programma aanvaart connecties (interessant!)
    - **Gesloten**: connectie wordt niet aanvaard
        - Bv. geen programma actief op die poort
    - **Gefilterd**: Geen antwoord
        - _misschien_ vanwege een firewall
- Tools: [nmap](https://nmap.org/), [masscan](https://github.com/robertdavidgraham/masscan), [megaping](https://magnetosoft.com/product-megaping/), ...

- Vele tools gebruiken specifieke poorten
    
| Poort | Tool  |
| -----:|:----- |
|    22 | SSH   |
|    80 | HTTP  |
|   443 | HTTPS |
|  3306 | MySQL |
    
- Een volledig overzicht: [Wikipedia](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers).

- Zeer populaire **poortscanner**
- Kan gokken **welk programma** en **versie** draait achter een open poort
- Ook **netwerkscanner** functionaliteit (zie later)
- Grafische wrapper: Zenmap

- Scant het netwerk af naar **hosts** (= toestellen) **en verbindingen**
- Moet toegang tot het netwerk hebben
- Verschillende opties: [LANState (Pro)](https://www.10-strike.com/lanstate/), [PRTG Network Monitor](https://www.paessler.com/prtg), [SolarWinds network topology mapper](https://www.solarwinds.com/network-topology-mapper/use-cases/network-mapping), ...

- Scant het netwerk af naar gekende **kwetsbaarheden**
- Moet ook toegang tot het netwerk hebben
- Verschillende opties: [OpenVAS](https://openvas.org/), [Nessus](https://www.tenable.com/products/nessus), [Metasploit](https://www.metasploit.com/)

- Informatie verzamelen op **applicatie-niveau**
    - Niet enkel toestellen, IP-adressen en poorten
- Vervolg op scanning
- **Netwerkprotocollen** "misbruiken" voor informatie over
    - Netwerkschijven
    - Loginsystemen
    - FTP servers
    - SMB servers
    - ...
- Details zijn voor vervolg-OLOD's

## Fase 3-5: Gaining access, maintaining access, covering tracks

### Gaining access

- Ontfutselen van logingegevens
    - Vele hackaanvallen gebruiken ook **social engineering**!
    - **Reconnaissance** is zeer belangrijk om kwetsbare targets te vinden
- **Exploits**
    - Het uitbuiten van zwaktes/foutjes in software
    - Veel makkelijker als systemen **niet up to date** zijn
- Password **cracking**
    - Zie H1:
        - Korte wachtwoorden: **brute force**
        - Gekende wachtwoorden: **dictionary attacks**
- Er zijn vele ander opties!

### Maintaining access

- Ook gekend als **persistence**
- Bv. je breekt binnen op een toestel in het netwerk. Dat toestel wordt fysiek afgesloten. Dan kan je weer opnieuw beginnen om binnen te geraken.
- Om dat te vermijden: verschillende opties
    - **Malware** installeren (rootkits, backdoors, reverse shells, ...)
    - Nieuwe **gebruiker** aanmaken
    - **Pivoting** (naar andere toestellen springen)
- Vaak nodig om administratorrechten (**root access**) te verkrijgen via **privilege escalation**
    - Kan met andere exploits
- Ondertussen zo onzichtbaar mogelijk blijven (**evasion**)

### Covering tracks

- Onopgemerkt blijven: **bewijsmateriaal** wegmoffelen
    - **Gebruikte bestanden** verwijderen of verstoppen
        - Bijvoorbeeld in `/tmp`-map
    - **Logs** aanpassen
        - Log files verwijderen valt juist extra op!
    - **Timestamps** aanpassen
    - ...

### De cyber attack cycle

- De fases zijn vaak niet mooi opeenvolgend, maar eerder **cyclisch**
- Een interessante ontdekking in latere fasen kan zorgen voor een **nieuwe reconnaissance**, om te zien hoe deze informatie kan uitgebuit worden

![](./attachments/20241212210620.png)

## Pentests en audit reports

### Pentests

- Van de 5 fases is enkel **passieve reconnaissance** standaard toegelaten
- Elke andere interactie heeft **expliciete toestemming** van het doelwit nodig
    - Vaak hoort daar een **non-disclosure agreement** (NDA) bij
        - Gevoelige informatie
    - Tegelijk wordt ook een **scope** afgesproken
        - Wat mag? Wat mag niet?
- Dit onderzoek heet dan een **pentest** (penetration test) of **security audit**

- NDA: om ervoor te zorgen dat informatie over de werking van het bedrijf of de beveiliging niet uitlekt
- Scope: bijvoorbeeld, welke tools/technieken mogen gebruikt worden, welke personen/machines/netwerken/applicaties mogen getarget worden, ... .

### White / Grey / Black box

- **White box**: het red team kent het systeem volledig, en zal die kennis gebruiken bij de aanval
    - Documentatie, broncode, werknemers, ...
- **Black box**: het red team begint zonder enige informatie, net zoals een externe hacker dat zou moeten doen
    - Duurt vaak langer, dus ook duurder
- **Grey box**: het red team heeft een beetje informatie
    - Bv. welke IP range is mogelijk kwetsbaar?

### Audit Report

- Vaak wordt de pentest afgesloten met een geschreven rapport, het **Audit Report**
    - Dit rapport bevat over het algemeen:
        - Een **conclusie** die begrijpbaar is voor niet-technisch personeel
        - Een **gedetailleerde lijst van vulnerabilities, exploits en threats** waar het IT-team mee aan de slag kan.
    - Dit is een **momentopname**, en is nooit compleet.
    - [Voorbeeld](https://pentest-hub.com/PDF/EXAMPLE-Penetration_Testing_Report_v.1.0.pdf)

### Vulnerabilities en exploits

- **Vulnerabilities** zijn foutjes in software of configuratie die een zwakke plek vormen
- **Exploits** zijn manieren om vulnerabilities te misbruiken.

### Threats en risk

- Een **threat** is dan het gebruik van een exploit door een aanvaller.
- **Risk** is de maat van ernst van een bepaalde vulnerability, gebaseerd op hoe waarschijnlijk het is dat er een threat komt, en hoe ernstig het is als dat gebeurt.
- Methodes om risk te berekenen: bv. van [NIST](https://doi.org/10.6028/NIST.SP.800-30r1)

### Risk matrix

- Uit de gelinkte NIST publicatie.
- Dit soort matrices wordt gebruikt om te bepalen wat de Risk is, gebaseerd op _likelihood_ (= kans op threat) en _impact_ (= ernst van threat)
- Likelihood en Impact worden bepaald per bedrijf, ze zijn relatief
- Voorbeeld:
    - Een _high impact_ threat (als het gebeurt, ligt de website een dag plat) met _very low_ likelihood (bv, de vulnerability is zeer moeilijk te exploiten, de aanvaller moet een usb-stick in een specifieke servermachine steken) heeft als totale risk-score **low**. Dit is dus een lagere prioriteit dan bv. een threat die _moderate_ impact en _moderate_ likelihood heeft.

![](./attachments/20241212211003.png)

### Kort woordje over de verdediging

![](./attachments/20241212211025.png)

- Vulnerabilities die niet gekend zijn kan je ook niet in rekening brengen. Het is best altijd enkele defensieve tactieken toe te passen, maar verder is het beter te focusen op gekende vulnerabilities.
- Niet alle vulnerabilities hebben een exploit. Vulnerabilities met exploits hebben een hogere likelihood, en dus hogere risk.
- Natuurlijk moet je je ook afvragen of een bepaalde vulnerability uberhaupt voorkomt in jouw systeem of netwerk
- De vulnerabilities waar je op focust zijn dus die:
    - Die bij jou voorkomen
    - Die gekend zijn
    - EN die een exploit hebben
# H9 Bleu team



# Examen

Notities van wat er gezegd werd over het examen Cybersecurity

1. Examen Cybersecurity: Examen op pc Geen labo's uitvoeren Theorievragen Inzichtsvragen 
2. Van buiten leren ja/nee... 
3. CIA RSGMC weten wat die betekenen, niet van buiten leren hoe gpg bestand genereren 
4. Labo's => inzicht, wat doen we en waarom doen we het? Niet puur "welke commando's voer je in?" 
	  - Eerder "Hoe werkt John the Ripper? (eerst rainbow attack, daarna brute-force) 
	  - Wel screenshots: screenshot van powershell venster bv -> "wat gebeurt hier/wat doen we hier??" 
5. Mogelijks voorbeeldexamen? Aankondiging voor de vakantie => waar zijn... etc meer praktische info Stroomvoorziening in Sporthal !
6. Verwacht om met netwerkkabel te werken!  
8. ZIEK: Zo snel mogelijk laten weten !!!Aan examenSecretariaat via telefoon (BEL HEN)!!! Volgende week geen les meer
    
   