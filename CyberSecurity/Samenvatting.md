#Samenvatting #Cybersecurity #HoGent #toegepasteinformatica

Lesgever: [Pieter-Jan Maenhaut](pieterjan.maenhaut@hogent.be)
# Hoofdstuk0 : Inleiding

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

## 1.5 De cybersecurity kubus


![](./attachments/20241001090859.png)


- Om bij het ontwerpen van een beveiligsplan niets te vergeten, wordt dit vaak gevisualiseerd als een kubus met 3 zijden:
    - Beveiligingsprincipes (== de CIA-driehoek)
    - De staten van data
    - Beveiligingsmaatregelen
- De kubus staat ook bekend als de McCumber Cube.
- Er zijn 27 combinaties mogelijk

## Paswoord

- De **lengte** is dus heel belangrijk!
- Nog beter dan een wachtwoord is een **wachtzin** (**passphrase**)
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

