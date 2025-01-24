
# H1 [Data](./H01%20Data%20het%20virtuele%20goud.md)


## Staten van data

-  **Transmission** Data tijdens het **verzenden**
- **Storage** Data in **rust**/opslag
-  **Processing** Data tijdens het **verwerken**

## Beveiligingsprincipes (CIA Driehoek)
- 3 principes:
    - **C**onfidentiality (vertrouwelijkheid)
    - **I**ntegrity (integriteit)
    - **A**vailability (beschikbaarheid)


## Maatregel

- **Technology** (Technologie)
- **Policies an Practices** (Beleid en uitvoering)
- **People** (Mensen)

## De cybersecurity kubus

![](./attachments/20241001090859.png)


## Paswoord


- De **lengte** is dus heel belangrijk!
- Nog beter dan een wachtwoord is een **wachtwoordzin** (**passphrase**)
- - Gebruik voor elke website een **apart** wachtwoord!
- Gebruik 2FA (2 Factor Authenticatie)
-  Gebruik **geen** trucjes behalve wachwoordzin
- Lengte is belangrijker dan gekke tekens


- Introduceer programma's die bepaalde verbindingen blokkeren bij teveel pogingen
    - Bv. Als iets 5x probeert in te loggen met een foutief wachtwoord in 20 minuten, wordt deze genegeerd voor 6 uur
### Labo 
- Bitwarden
- [https://haveibeenpwned.com/](https://haveibeenpwned.com/)


# H2 [Wetgeving](./H01%20Een%20wereld%20van%20experten%20en%20criminelen.md)
## Wetgeving

- Er zijn **nationale** en **internationale** pogingen om dit te regulariseren
    - In **België**: *wetgeving rond "ethisch hacken"*
    - In **Europa**: *NIS* en *NIS2 directives*
    - In **VS**: *NIST framework*
	    - Hoe Identificeren
	    - Hoe Beschermen
	    - Zoe Detecteren
	    - Hoe Reageren
	    - Hoe Herstellen
    - **Wereldwijd**: *ISO/IEC cybersecurity model*
## Aanvaller

- Een **hacker** (aanvaller) kan om verschillende redenen inbreken op computers of netwerken om toegang te verkrijgen

- **White hat** hackers breken in op netwerken of computersystemen om zwakke punten te ontdekken en zo de beveiliging van deze systemen te verbeteren. (bv: pentesters, meestal ingehuurd)
- **Gray hat** hackers bevinden zich ergens tussen de 2 andere types aanvallers. Deze aanvallers kunnen een kwetsbaarheid vinden en deze melden aan de eigenaren van het systeem als die actie samenvalt met hun agenda.
- **Black hat** hackers zijn onethische criminelen die de computer- en netwerkbeveiliging schenden voor persoonlijk gewin of om kwaadaardige redenen, zoals het aanvallen van netwerken.

 - Scriptkiddies
- Vulnerability brokers
-  hacktivisten
-  Cybercriminelen
-  State sponsored hackers
## Verdediger
- Cybersecurityspecialisten
### Organisaties voor samenwerking
(bijvoorbeeld: CCB (centrum voor cyber security Belgium), SANS, ISC2)
### Conferenties, CTF's, ...
(bijvoorbeeld: BruCon, Cyber Security Chalange Belgium, Cyber summer school)
### Tools 
- **Vulnerability Databases**: publiek beschikbare databases van gekende kwetsbaarheden.
- **Early Warning Systems**: systemen voor vroegtijdige waarschuwing.
- **Share cyberthreat intelligence**: delen van cyber intelligence, vaak door middel van samenwerking tussen de publieke en private sector.
- **ISM-normen** (bv. ISO 27000): Standaarden en normen voor informatiebeveiligingsbeheer die een kader vormen voor het implementeren van beveiligingsmaatregelen binnen een organisatie.

### Organisaties tegen computermisdaad
- Er bestaan verschillende organisaties om computermisdaad te bestrijden
- België: Federal Computer Crime Unit (FCCU), Centre for Cyber Security Belgium, ...
- Wereldwijd: Europol, ENISA, Interpol, ...

## Security vs. privacy
- **Hoe ver** mag de overheid hierin gaan?
- Ik heb niets te verbergen??
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


# H03 [Bedreigingen, aanvallen en kwetsbaarheden](./H03%20Bedreigingen,%20aanvallen%20en%20kwetsbaarheden.md)

## Interne vs. externe aanvallen

## Nu meer en eigen toestellen op netwerk
- mobile devices, BYOD en IoT
## Big Data
 - Het **volume** of de hoeveelheid gegevens (grote volume)
- De **verscheidenheid** of het bereik van gegevenstypen en bronnen
- De **snelheid** van gegevens (groei)

Deze drie dimensies worden ook wel de **3 V's** genoemd, nl. **V**olume, **V**ariety, **V**elocity.
## Malware en kwaadaardige code (7)
- kwaadaardige code
- Worm
- Trojan horse
- Logic bomb
	- Wordt **geactiveerd op bepaald moment (= trigger)**
- Ransomware
- Backdoor en Rootkits
- Keyboard logging
## Misleiding en oplichting (14)
- Social Engineering
- Phishing
	-  Een vorm van fraude. Hierbij **probeert de aanvaller informatie** **te verkrijgen van het slachtoffer**. 
- Pretexting
	- Slachtoffer wordt **opgebeld** en gevraagd om **gevoelige informatie vrij te geven om identificatie mogelijk te maken**.
- Vishing  (Voice phishing) 
- Quishing (QR phishing)
- Cat phishing
	- Aanmaken van een **valse identiteit** om op die manier het **vertrouwen** van het slachtoffer te winnen.
- Spear phishing
	- **Spear phishing**: phishing gericht op een **specifieke persoon, doelgroep**, organisatie of bedrijf. Bv. alle werknemers of studenten van de IT-dienst van HoGent.
- **Whaling**
	- een vorm van spear phishing gericht op een **specifiek zeer belangrijk persoon**
- Pharming
	- Gebruikers vanuit een legitieme website ze begeleiden naar een frauduleuze website met als doel malware te verspreiden en persoonlijke data te stelen
- Typosquatting
	- **Misbruik** maken van vaak voorkomende **typfouten**. 
- Shoulder surfing
- Dumpster diving
- Impersonation
	- Zich **voordoen** als iemand anders
- Piggybacking/tailgating
	- Het **meeglippen** met personen die wel toegang hebben tot een plaats met beperkte toegang.
## E-mail en browser aanvallen (7)
- SEO (Search Engine Optimization) poisoning
- Browser hijacking
	- **browser instellingen worden gewijzigd**
- Spam
- Hoaxes
- Spyware
- Adware
- Scareware
	- **Probeert de gebruiker te overtuigen door ze bang te maken**.

## Netwerkaanvallen (6)
- Botnets
- (Distributed) Denial-of-Service attack (DDOS)
- Sniffing
- Spoofing
- Man-in-the-middle attack
- Frauduleuze (Rogue) Access Point

## Applicatie-aanvallen

### Aanvallen (5)

- Zero-day attack
- Cross-site scripting (XSS)
	- Een kwetsbaarheid in **web applicaties**. Via XSS kan je **scripts injecteren** in een webpagina die beschikbaar is voor de gebruiker.
- Code injections
- Buffer overflow
- Remote Code Executions (RCE)
	- **Log4Shell**

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
- Stuxnet
- Belgacom door britse geheime dienst


## Labo

- SQL Injection
	- Inloggen zonder account (**inbreuk op confidentiality**)
	- Een account toevoegen (**inbreuk op integrity*)
	- De databank verwijderen (**inbreuk op availability**)

# H4 [Confidentiality](./H04%20Confidentiality.md)

## Cryptografie

- *Cryptologie* 
    - **wetenschap** maken en breken **geheime codes**
- *Cryptografie* (maken van geheime berichten)
    - **manier** om gegevens **op te slaan** en te verzenden, zodat alleen de ontvanger deze kan lezen
    - Moderne cryptografie: gebruik van algoritmen om gevoelige data te beschermen
    - Veel **ouder dan computers** (duizenden jaren)
- *Crypto-analyse*:
    - **kraken** van cryptografie

### Encrypteren
- plaintext ----cipher-key---> ciphertext

### Decrypteren
- ciphertext ----cipher-key---> plaintext

### Encrypteren & Decrypteren

- **Transpositie** (omzetting) (Van plaats verwisselen)
- **Substitutie** (vervanging) 
- **One-time pad** (Random bij optellen)

Randomheid vs Pseudo Randomheid

### Twee types algoritmen

#### Symmetrische algoritmen
- **Zelfde sleutel** voor encrypteren (versleutelen) en decrypteren
	- Verzender en afzender **kennen de sleutel** voor communicatie begint
        - Groot nadeel: hoe wissel je deze veilig uit?

#### Asymmetrische algoritmen (Ook **publieke-sleutel-cryptografie** genoemd)
  - **Sleutelpaar**:verschillende sleutels voor encrypteren en decrypteren
        - 1 sleutel is **publiek** (openbaar), andere is **privé**
        - Hoeft geen sleutel op voorhand uit te wisselen
            - Niet het grote nadeel van symmetrische encryptie
            - Wel complexer en dus **trager** dan symmetrische algoritmen
- Iedereen kan bericht encrypteren met publieke sleutel, enkel ontvanger kan decrypteren met private sleutel

![[Pasted image 20250123130957.png]]
### Private-key versleuteling (symmetrisch)
- Encrypteren (encrypt/decrypt)
- Digitale handtekening (sign/verify).

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
- De private key wordt **nooit** getoond aan de andere partij!
- Toch bekomen beide partijen dezelfde sleutel als resultaat
- Vaak gebruikt: SSL, TLS, SSH, IPSec, ...
- **Veilig** op dit moment
#### El Gamal
- Amerikaanse overheidsstandaard voor digitale handtekeningen
- Niemand heeft patent ...
       - Vroeger was er een patent op RSA (nu niet meer)
       - Werd daarom gebruikt bij PGP (Pretty Good Privacy)
- **Veilig** op dit moment
## Cryptoanalyse

### Het kraken van cryptografie
- Bij het **kraken** van cryptografie probeer je een onleesbaar bericht (ciphertext) om te vormen naar een leesbaar bericht (plaintext) **zonder** dat je de **geheime sleutel** kent
### Technieken
   - **Dictionary attack**
   - **Brute-force attack**
   - **Rainbow tables**
### CPU, GPU, AI of quantum computing?

### Enkele tools
**John The Ripper**
**Hashcat**
## Data verduisteren

### Gegevensmaskering (masking) (voor testdata bijvoorbeeld)
- Gevoelige data **vervangen** door niet-gevoelige data
- Niet-gevoelige versie ziet eruit en gedraagt zich als het origineel
    - **Vervanging** vervangt gegevens door authentiek ogende waarden (garanderen anonimiteit)
    - **Shuffling** verwisselt data van verschillende gebruikers
        - Werkt goed voor bijvoorbeeld financiële data in een testdatabase
### Steganografie
- **Verbergt** gegevens in een ander bestand
	- **Ingebedde** gegevens = geheim bericht
	- **Omslagtekst** verbergt gegevens die de **stego-tekst** produceren
	    - Omslag en/of verborgen gegevens kunnen ook afbeelding of audio zijn
	- **Stego-key** regelt het verbergingsproces
### Gegevensverduistering (obfuscation)
- Toepassen gegevensmaskering en steganografietechnieken
    - **Verduistering** maakt de boodschap verwarrend, dubbelzinnig of moeilijker te begrijpen
    - Systeem kan opzettelijk berichten **door elkaar halen**

## Labo

- Encryptie met HoGent e-mail of proton
- Bestanden encrypteren met symmetrische encryptie
	- Veracrypt
	- Encryption met zip bestand
- zip-bestanden kraken
	- John the Ripper
- Asymmetrische encryptie (GPC)
	- gpg in Bash
	- om asymmetrische encryptie op te zetten en te gebruiken
- Steganografie
	- OpenStego
	- bestand in bestand verstoppen
- Extra Encripty en Decripty
	- [ROT13](./H05%20Integrety.md)
		- Cesar encripty (alle letters 13 plaatsen verplaatsten)
	- OTP
	- Diffie-Hellman
	
	

# H5 [Integrity](./H05%20Integrety.md)

## Digitale handtekening (in voorbeeld met HMAC)
- Asymmetrisch (2 verschillende sleutels) 
	- **Digitale handtekening** (RSA) (geeft intergriteit(klopt de inhoud) en authentiction(van wie)) (Eerst Private key dan public)
		1. Verzender tekent door 
			1. een hash te maken van een document = digest
			2. algoritme met en *Private key* op de hash uitvoeren
			3. resultaat is een signature of handtekening
		2. Verzender verzend het 
			1. document
			2. public key
			3. handtekening
		3. Ontvanger verifieert door
			1. Het document gaat door hetzelfde hashing algoritme als de verzender = digest
			2. de handtekening wordt ontsleuteld met *public key* 
			3. Het resultaat van de Hashing en de ontsleuteling van de handtekening zou hetzelfde resultaat moeten geven
			4. Nu ben je zeker dat de verzender de verzender is en de data onderweg niet aangepast is

![[Pasted image 20250123124750.png]]

## Hashing algoritmes

- Om te controleren dat een bestand of bericht niet gewijzigd is, kan een **hashing algoritme** of **hashfunctie** gebruikt worden.
- - Populaire hashing algoritmes zijn MD5 en SHA:
    - Het **Message Digest 5 Algorithm** (MD5) is ontwikkeld door Ron Rivest en geeft een 128-bits output terug
    - Het **Secure Hash Algorithm** is ontwikkeld door het US National Institute of Standards and Technology (NIST)
        - Verschillende **varianten** afhankelijk van het gewenst aantal bits voor de output:
            - SHA-224 (224 bits), SHA-256 (256 bits), SHA-384 (384 bits), SHA-512 (512 bits)
- Uiteraard bestaan er ook nog vele andere hashing algoritmes
- - Zwakke algoritmes zijn niet (meer) bruikbaar voor cybersecurity doeleinden
- **SHA-2** en **SHA-3** zijn **sterke algoritmes** die wel nog gebruikt worden voor cybersecurity doeleinden

![[Pasted image 20250123125207.png]]

### Toepassingen van hashing algoritmes
- Controle op fouten
- Veilig bewaren van wachtwoorden

- Collision is dat 2 verschillende waarden dezelfde hash geven
### Salting
- Wanneer 2 gebruikers **hetzelfde wachtwoord** gebruiken, zal voor beiden **dezelfde hashwaarde** worden opgeslagen
    - Hierdoor weten aanvallers dat ze door 1 wachtwoord te kraken 2 vliegen in 1 klap slaan
- **Salting** is een extra maatregel om hashing veiliger te maken
    - Een random reeks bits (**salt**) die wordt **toegevoegd** aan het wachtwoord voordat de hash berekend wordt
    - De salt wordt als plain text mee gegeven
- **Hetzelfde wachtwoord** geeft zo een **verschillende hash**: ✅ ✅ **VEILIG!**


### Kraken van hashing

- Je kan ook van verschillende inputs de hash berekenen, tot je een lijst hebt met **alle mogelijke hashwaarden** en de input
- Deze **lijst** kan **gesorteerd** worden op basis van de hashwaarde, zodat je snel input voor een hash kan vinden
- Een dergelijke lijst noemen we een **Rainbow Table**
- Het opstellen van een rainbow table moet maar 1 keer gebeuren: je kan deze dus downloaden van het internet
- Het **toevoegen** van een **salt** aan een wachtwoord maakt **Rainbow Tables onbruikbaar** voor het kraken!
- Je kan rainbow tables bijvoorbeeld downloaden van [https://freerainbowtables.com/](https://freerainbowtables.com/)


#### Vertragende hashing algoritmes
- Om te vermijden dat er veel pogingen worden gedaan om een hash te kraken of een collision te vinden
- Bekende voorbeelden:
    - PBKDF2
    - bcrypt
    - Argon2
    - 



## HMAC (Hashing met symmetrische encryptie)

- Om **integriteit** en **authenticiteit** te garanderen van een bericht kunnen we hashing combineren met symmetrische encryptie
- Hash-based message authentication (**HMAC**) is een **hashfunctie** die naast de input ook gebruik maakt van een **symmetrische sleutel** voor de berekening van de hashwaarde
- Dit lijkt goed op digitale handtekeningen, maar bij digitale handtekeningen wordt asymetrische encryptie gebruikt

- **Integriteit:** Je kunt controleren of het bericht niet is gewijzigd.
- **Authenticatie:** Alleen ontvangers die de geheime sleutel kennen, kunnen de HMAC correct berekenen.
- **Efficiënt:** Werkt snel, dankzij het gebruik van bestaande hashfuncties (bijvoorbeeld SHA-256).

- Alice (verzender)
    1. Alice deeld met bob een zelfde geheime sleutel
    2. Berekent de **hashwaarde** van het (versleuteld) bericht via HMAC met behulp van de gedeelde geheime sleutel
    3. Voegt deze waarde (**HMAC digest** of **vingerafdruk**) toe aan het bericht en stuurt dit naar Bob

![[Pasted image 20241210100308.png]]

- Bob (ontvanger)
	3. Berekent na ontvangen van het bericht zelf de hashwaarde via HMAC met dezelfde sleutel
	4. Vergelijkt deze waarde met de waarde die Alice toevoegde aan het bericht
	5. Indien beide waarden overeenkomen weet Bob dat het **bericht niet gewijzigd** is, en dat het **afkomstig is van Alice**
### Nut van HMAC

- HMAC biedt dus **bescherming** tegen een **Man-in-the-Middle** attack: via gewone hashing zou een aanvaller een nieuwe hash kunnen berekenen na aanpassing van het bericht
- Bij HMAC is de symmetrische **sleutel geheim**, en dus enkel gekend door de zender en ontvanger van het bericht
- HMAC garandeert dus **integriteit** (bericht is niet gewijzigd) en **authenticiteit** (afkomstig van Alice)
### Voorbeeld 1

**Voorbeeld met Alice en Bob**

1. **Gedeelde geheime sleutel**
    
    - Alice en Bob spreken van tevoren af om dezelfde geheime sleutel KKK te gebruiken. Deze sleutel is niet openbaar en wordt alleen door hen beiden gedeeld.
2. **Bericht sturen**
    
    - Alice wil een bericht MMM naar Bob sturen.
    - Om er zeker van te zijn dat het bericht onderweg niet is aangepast én dat Bob weet dat het van Alice komt, berekent Alice een HMAC over MMM met de gedeelde sleutel KKK. HMAC(M,K)\text{HMAC}(M, K)HMAC(M,K)
    - Alice stuurt vervolgens het bericht (M)(M)(M) én de HMAC naar Bob.
3. **Verificatie door Bob**
    
    - Bob ontvangt het bericht (M)(M)(M) en de HMAC.
    - Om te controleren of het bericht authentiek en ongewijzigd is, berekent Bob zelf de HMAC op basis van MMM en zijn eigen kopie van de geheime sleutel KKK.
    - Hij vergelijkt zijn HMAC met die van Alice.
    - **Zijn ze hetzelfde?** Dan weet Bob dat het bericht van Alice komt (authenticatie) én niet is veranderd (integriteit).
    - **Zijn ze anders?** Dan is het bericht mogelijk gemanipuleerd of komt het niet van Alice.
4. **Waarom HMAC?**
    
    - Alleen Alice en Bob kennen de geheime sleutel. Een aanvaller die het bericht onderschept, kan niet zomaar de juiste HMAC maken of aanpassen zonder de sleutel KKK te kennen. Hierdoor biedt HMAC zowel **authenticatie** als **integriteitscontrole**.

### Voorbeeld 2

Stel je voor dat Alice en Bob een speciale stempel hebben die alleen zij kunnen maken en controleren (dit is hun gedeelde geheime sleutel).

 1. Alice schrijft een brief (het bericht) en drukt haar unieke stempel op de brief met behulp van die speciale stempeltechniek (dit is de HMAC).
 2. Als Bob de brief krijgt, bekijkt hij eerst de stempel. Hij vergelijkt die met zijn eigen speciale stempeltechniek (hij berekent dezelfde HMAC).
 3.    Komt de stempel (HMAC) overeen? Dan weet Bob:
        - De brief kan alleen van Alice komen (authenticatie).
        - Er is niet met de inhoud geknoeid (integriteit).

Kort gezegd: de speciale stempel is de “hash” die wordt gemaakt met een gedeelde geheime sleutel. Als die klopt, weet Bob dat de boodschap origineel van Alice komt en niet veranderd is.

## Labo

- Hashwaarden controleren
	- command line
		- met powershell commando `Get-FileHash`
	- 7-zip
	- torrents

- Assymetrisch handtekenen (GPC)
	- gpg in bash
		- Oorspronkelijk bestand en digitale handtekening combineren tot 1 bestand
		- Digitale handtekening genereren los van het oorspronkelijke bestand
		- https://www.gnupg.org/gph/en/manual.html

# H6 [Availability](./H06%20Availability.md)

## Onvoorziene problemen

- Disaster Recovery Planning
	- Natuurlijke rampen
	- Menselijke rampen

## Hoge beschikbaarheid

### Wat is het 5x9 principe?
- Wordt in het Engels the **Five Nines** genoemd
- Systemen en services kennen een uptime van **99.999%**
    - Ofwel: ze zijn beschikbaar in 99.999% van de tijd
    - Concreet: downtime bedraagt minder dan 5 minuten 15.36 seconden per jaar

### Omgevingen met hoge beschikbaarheid (cruciale sectoren)
- Financiële sector:
- Gezondheidssector:
- Industrie
- Transportsector:
 - Openbare veiligheid:
- Nutsvoorzieningen:
- Telecom sector:
- Retail industrie:

### Bedreigingen van de beschikbaarheid
- Er zijn heel wat oorzaken van **verlies van beschikbaarheid**. Van het falen van systeem tot een natuurramp.
    - System failure
    - Niet-doelbewuste oorzaak
    - Doelbewuste aanval
    - Natuurramp


### Hoge beschikbaarheid kan je bekomen door
- Door te mikken naar veel "nines" uit het 5x9 principe
- **Redundantie** om **single points of failure** (SPoF) vermijden
- **Robuuste** systemen te bouwen
- Het **monitoren** van de systemen
- Het maken van **backups**

### Vermijden SPoF
- Single points of failure zijn de **zwakke schakels** die ervoor kunnen zorgen dat het ganse systeem faalt.

### Redundantie
- **N+1 redundantie** zorgt ervoor dat systemen **beschikbaar blijven** als er eentje faalt.
- Componenten (**N**) moeten steeds **minimum één backup** component hebben (**+1**)

### Systemen zullen falen
- Elk systeem zal ooit falen
- Robuuste systemen hebben een **hoge tolerantie** voor **falen**.
- Robuustheid inbouwen is **meer dan enkel redundantie** voorzien.
- Meer en meer applicaties worden ontwikkeld waarbij men er van uit gaat dat de applicatie vroeg of laat kan **crashen**.
- Ook bij het nemen van back-ups of rond het beheer van schijven (storage) zijn er systemen die **self-healing** zijn zoals ZFS

### Monitoring
- Problemen (**failures**) **detecteren** wanneer ze zich voordoen.
- Meldingen (**alerts**) weergeven op communicatieplatformen

## Back-ups

### De 3-2-1-regel
- **Minstens 3** kopieën
- Op **minstens 2** verschillende media
- Waarvan **minstens 1** op een andere locatie
- Meer mag altijd!
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
- Cloud (⚠️ **Synchronisatie ≠ back-up**)

### Incrementele back ups
- **Automatiseer** back-ups zodat je deze niet vergeet!
- **Full** back-up
    - Telkens opnieuw de volledige inhoud opslaan (copy-paste)
- **Incrementele** back-ups
    - Houdt 1 kopie bij, samen met alle verschillen ("delta's") die later gebeurd zijn
### Test de back-ups!

# H7 [Certificaten](./H07%20Certificaten.md)

### Certificaten: een digitaal paspoort

- Iedereen vertrouwt een 3e persoon of organisatie
    - De **Certificate Authority** (CA)
	- CA genereert **certificaten** (== digitale identiteitskaarten) voor gebruikers die dit aanvragen
	    - Gebruikers kunnen **elkaar controleren** via deze certificaten of ze daadwerkelijk met de gewenste persoon communiceren
	    - Een certificaat koppelt een **publieke sleutel** van een gebruiker aan zijn **identiteit**.*
	- Assymetrisch 
	- **X.509 standaard**

![](./attachments/Pasted%20image%2020241210115551.png)

### Certificaten aanvragen

1. De gebruiker **genereert** een certificate signing request (CSR).
    - Bevat zijn publieke sleutel
    - Bevat zijn informatie (zijn identiteit): naam, adres, ...
2. De CA ontvangt de CSR en **controleert** de identiteit van de gebruiker aan de hand van de informatie in de CSR.
3. De CA creëert het gevraagd certificaat en **ondertekent** dit met zijn private sleutel.
	- Het certificaat is nu 100% zeker afkomstig van de CA
	- Indien het certificaat vervalst wordt, wordt de handtekening ongeldig (en dus ook het certificaat)

![](./attachments/Pasted%20image%2020241210115844.png)

### Toepassing: 
- HTTPS
- VPN


# H8 Red team

## Taak van het red team

- Proberen inbreken
- Verdediging testen
- **Zwakke punten blootleggen**

## De 5 fasen
	
### 1. Reconnaissance
- Zo **veel** mogelijk informatie verzamelen (footprinting)
- 2 Manieren
	- **Passief**
		   - **Geen direct contact** met het doelwit
		   - Anoniem
	- **Actief**
	    - **Wel direct contact** met het doelwit
        - Doelwit heeft informatie over aanvaller!
        - Maar doelwit weet (normaal gezien / nog) niet dat die data gelinkt is aan een toekomstige aanval.
   - Technieken
    - Zoekmachines (OSINT)
    - Openbare databanken
	- Vacatures
	- Social Media
	- e-mailadressen
	- Websites
	- Whois
	- DNS
	- IoT

### 2. Scanning an enumeration
- Zoeken naar **zwakke punten**
- Technischer en actiever dan reconnaissance
- Technieken
	- **Port scanning**
	- **Network scanning**
	- **Vulnerability scanning**
	- **Ping**
	- **Traceroute/tracert**

### 3. Gaining Acces
- Ontfutselen van logingegevens
-  **Exploits**
- Password **cracking**
- ...
### 4. Maintaining Acces
- Ook gekend als **persistence**
- Om dat te vermijden: verschillende opties
    - **Malware** installeren (rootkits, backdoors, reverse shells, ...)
    - Nieuwe **gebruiker** aanmaken
    - **Pivoting** (naar andere toestellen springen)
- Vaak nodig om administratorrechten (**root access**) te verkrijgen via **privilege escalation**
    - Kan met andere exploits
- Ondertussen zo onzichtbaar mogelijk blijven (**evasion**)
### 5. Covering Tracks
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

### Audit Report
   - Een **conclusie** die begrijpbaar is voor niet-technisch personeel
   - Een **gedetailleerde lijst van vulnerabilities, exploits en threats** waar het IT-team mee aan de slag kan.
    - Dit is een **momentopname**, en is nooit compleet.
### Threats en risk
- Een **threat** is dan het gebruik van een exploit door een aanvaller.
- **Risk** is de maat van ernst van een bepaalde vulnerability, gebaseerd op hoe waarschijnlijk het is dat er een threat komt, en hoe ernstig het is als dat gebeurt.
- Methodes om risk te berekenen: bv. van [NIST](https://doi.org/10.6028/NIST.SP.800-30r1)

### Risk matrix
- Dit soort matrices wordt gebruikt om te bepalen wat de Risk is, gebaseerd op _likelihood_ (= kans op threat) en _impact_ (= ernst van threat)
- Likelihood en Impact worden bepaald per bedrijf, ze zijn relatief
### Kort woordje over de verdediging

![](./attachments/20241212211025.png)

## Labos

- Nslookup
- Ping
- Tracert
- nmap
# H9 Bleu team

## Een diepe verdediging

- **Layering** (*gelaagdheid*)
- **Limiting** (*beperking*)
- **Diversity** (*diversiteit*)
- **Obscurity** (*verduistering*)
- **Simplicity** (*eenvoud*)

## Systemen en apparaten beschermen
###  Fysieke toegang
- Sluit toegang af
- Dwing identificatie af
- Beveilig toestellen fysiek (sloten, logout timers)
- logboeken (voor als het fout gaat)
- GPS tracking
- Schade
	- Stroomvoorziening
	- temperatuur/klimaat

###  Gebruikersbeheer
- De zwakste schakel
- AAA framework (Tripple A Raamwerk)
	- **A**uthentication (authenticatie) -> Wie ben je?
	    - Wie mag iets doen?
	- **A**uthorisation (autorisatie) -> Wat mag je doen?
	    - Wat mag iemand wel/niet doen?
	- **A**ccounting (boekhouding) -> Wat heb je gedaan? (logging)
	    - Wie heeft wat gedaan?
- Multi-Factor Authentication (**MFA**/**2FA**)
    - What you **know**
        - Wachtwoorden, wachtwoordzinnen, pincodes, ...
    - What you **have**
        - Smartcards, beveiligingssleutelhangers, toegang tot GSM (authenticator app of SMS), toegang tot e-mailaccount (verificatie e-mail), ...
    - Who you **are**
        - Biometrie: een uniek fysiek kenmerk zoals vingerafdruk, netvlies, stem, ...
    - **Minstens 2 van de 3** nodig
- Rechten
    - Op basis van **niveau**'s
        - Bv. "unclassified" > "confidential" > "secret" > "top secret" niveau's in het leger
    - Op basis van rechten toegekend door **eigenaar**
        - Bv. `rwxrwxrwx` bij Linux bestanden
    - Op basis van **functie**
        - Bv. Enkel dokters mogen patiëntendossier zien
    - ...
- Logfiles
- Content control
- Disk cloning, deep freeze
- Kiosk mode
- Virtualisatie / sandboxing
### Hosts (individuele gebruikerstoestellen)
- Laptops, smartphones, ...
- Beveiliging van het **besturingssysteem**
    - Standaardconfiguratie aanpassen
	      - Verander standaard poort
	      - Pas default wachtwoord aan
	      - verwijder onnodige diensten en opties
    - Verwijderen onnodige software
    - Beveiligingspatches en updates
- Installeren **anti-malware**
    - Bescherming tegen virussen, worms, keyloggers, spyware, ...
    - Mobiele apparaten zijn ook kwetsbaar!
    - **Let op met gratis software!**
        - Frauduleuze anti-malware kan zelf malware bevatten
- Beheer van **patches**
    - Kunnen centraal beheerd worden
        - Automatisch
        - Eventueel verplicht
- Host-gebaseerde **firewall**
    - Regelt inkomend en uitgaand netwerkverkeer op het eigen toestel
- Host **Intrusion Detection System** (HIDS)
    - Controleert verdachte activiteiten op het eigen toestel
- Disk cloning, deep freeze
- Kiosk mode
- Virtualisatie / sandboxing
### Draadloze en mobiele apparaten
- Wired Equivalent Privacy (**WEP**)
    - Basisbescherming Wi-Fi
    - 10 tot 26 hexadecimale karakters (40 - 104 bits)
    - **Niet (meer) veilig!**
      WEP is tegenwoordig te kraken binnen enkele minuten. Je kan dit doen met tools als aircrack-ng (bv. 
- Wi-Fi Protected Access (**WPA** / **WPA2**)
    - Grote verbetering ten opzichte van WEP
    - Gebaseerd op AES (gebruik een goed en lang wachtwoord)
    - Tegenwoordig is WPA2 de standaard
- Toevoegen **wederzijdse authenticatie**:
    - voorkomt man-in-the-middle aanval (rogue access point)
    - Authenticatie tussen beide entiteiten (met certificaten)

 ### Servers
#### Beveiligde toegang op afstand

- Inloggen op een toestel en commando's uitvoeren (CLI op afstand):
    - **Telnet**
        - Verouderd
        - Data verzonden in plaintext
            - o.a. login en wachtwoord
            - ⚠️ **Niet veilig!**
    - **SSH** (Secure SHell)
        - Opvolger Telnet
        - Encryptie van data tijdens verzending

- Bestanden overzetten tussen toestellen:
	- **SCP** (Secure Copy Protocol)
	    - Maakt onderliggend gebruik van **SSH**
	        - Authenticatie + bescherming van data tijdens verzending
	- **SFTP** (SSH File Transfer Protocol)
	    - Gelijkaardig aan SCP
	    - Maakt ook onderliggend gebruik van SSH
	    - Makkelijker in gebruik met visuele programma's

- Vanop een publiek netwerk veilig verbinden met een privaat netwerk
	- **VPN**
	    - Geëncrypteerde "tunnel" opzetten
	        - Authenticatie + bescherming van data in beweging
	    - Meer mogelijk dan CLI of overdracht bestanden

#### Administratieve maatregelen

- Poorten en services beveiligen
    - Via open **poorten** kunnen cybercriminelen achterhalen welke **services** er draaien op een host
    - Op veel systemen draaien meer services dan nodig
    - Beheerder moet elke service bekijken en nagaan of deze noodzakelijk is, alsook de mogelijke risico's inschatten

- Geprivilegieerde accounts
	- Bv. `root`, `admin`, `superuser`, ...
	- **Krachtigste** accounts op een systeem
	- Hebben vaak verhoogde of zelfs onbeperkte toegang
	- Beheerder moet deze accounts voldoende beveiligen of eventueel verwijderen om risico's te beperken

* Group Policies
	- Onderdeel van Active Directory
	- Voor gebruik in **Windows** omgeving
	    - Zie Windows Server I en II (2e en 3e bachelor)
	- Laat toe om bepaalde **veiligheidsmaatregelen** in te stellen voor een groep gebruikers
	    - Bv. password policy, vergrendelingsbeleid, toegang tot bronnen, ...

- Logboeken en waarschuwingen (windows even viewer)
  Liinux debian: journalctl in Bash
	- Een logboek registreert **gebeurtenissen** op een systeem
	- Bevatten uitgebreide **informatie** voor elke gebeurtenis
	- Belangrijk voor computerbeveiliging (AA**A**: accounting)

 ### Netwerk(apparaten)

- Network Operations Centers (NOC)
    - Op één of meerdere locaties
    - Bieden gedetailleerde **status van netwerk**
    - Ground zero voor oplossen van netwerkproblemen, prestatiebewaking, softwaredistributie en updates, communicatiebeheer en apparaatbeheer

- Netwerkapparaten: switches, routers, ...
	- Hart van het moderne netwerk
	- Kwetsbaar voor diefstal, hacking en toegang op afstand
	- Doelwit voor aanvallen op netwerkprotocollen of DOS aanvallen

- Firewalls
	- hardware- of software die het netwerk beveiligen
	- Voorkomt dat ongeautoriseerd of potentieel gevaarlijk verkeer het netwerk binnenkomt
	- Zorgt ervoor dat alleen de noodzakelijke poorten zichtbaar en beschikbaar zijn

- IDS (Intrusion Detection System)
- IPS (Intrusion Prevention System)
- Security Operations Centers


## Assets management

- Bedrijven moeten weten **welke hardware- en software assets** in het bedrijf **aanwezig** zijn. Deze assets moeten immers beveiligd worden.


## Nood aan experten

### Hoe word je een cybersecurity expert?

- Wees een levenslange leerling
- Behaal certificeringen
- Stages
- Professionele organisaties, conferenties, CTF's, ...


Cybersecurity-specialisten moeten kunnen reageren op dreigingen zodra ze zich voordoen. Dit betekent dat de werktijden wat onconventioneel kunnen zijn. Cybersecurity-specialisten analyseren ook beleid, trends en intelligentie om te begrijpen hoe cybercriminelen denken. Vaak kan dit veel speurwerk met zich meebrengen. Hier is een goed advies om een cybersecurity-specialist te worden:

- **Wees een levenslange leerling**: leer de basis door IT cursussen te volgen en blijf up-to-date. Cybersecurity is een vak dat voortdurend verandert, en cybersecurity-specialisten moeten bijblijven.
    
- **Behaal certificeringen**: certificeringen van organisaties zoals Microsoft en Cisco bewijzen dat je over de kennis beschikt die nodig is om werk te zoeken als cybersecurity-specialist.
    
- **Stages**: Het zoeken naar een stage binnen het gebied van cybersecurity kan leiden tot opportuniteiten in de toekomst.
    
- **Professionele organisaties**: word lid van computerbeveiligingsorganisaties, woon vergaderingen en conferenties bij en sluit je aan bij forums en blogs om kennis op te doen van andere experten.


### Certificeringen

- De IT-industrie heeft **standaarden** opgesteld voor cybersecurity-specialisten om professionele certificeringen te verkrijgen die het **bewijs** leveren van **vaardigheden en kennisniveau**.
- Enkele bekende certificaten:
    - CompTIA Security+
    - Certified Ethical Hacker (CEH)
    - SANS GIAC Security Essentials (GSEC)
    - ISC2 Certified Information Systems Security Professional (CISSP)
    - ISACA Certified Information Security Manager (CISM)
    - Cisco Certified Network Associate Security (CCNA Security)


## Labo

- SSH