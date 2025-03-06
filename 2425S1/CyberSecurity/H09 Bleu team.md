# H9 Bleu team

## Een diepe verdediging

- **Layering** (*gelaagdheid*)
- **Limiting** (*beperking*)
- **Diversity** (*diversiteit*)
- **Obscurity** (*verduistering*)
- **Simplicity** (*eenvoud*)

- Een **gelaagde beveiliging** zorgt voor de meest omvangrijke beveiliging. Als cybercriminelen de eerste laag kunnen binnendringen, is er nog altijd een tweede (en evt. volgende) laag die ze moeten binnendringen. *Beveiligen in lagen betekent dat je meerdere barrières gaat maken*.

- Het **beperken van toegang tot informatie** vermindert de kans op een aanval. Een organisatie beperkt best de toegang om er voor te zorgen dat *werknemers alleen toegang hebben tot de informatie die zij nodig hebben om hun job uit te voeren*.

- **Diversiteit**: *varieer in manieren van beveiliging*. *Wanneer men zich de toegang heeft verschaft tot de ene laag, mag dit niet de andere lagen in gevaar brengen*. Zorg dus voor afwisseling: gebruik in de andere lagen bvb. een ander encryptie algoritme.

- **Obscuring of verduisteren van informatie** kan deze ook beschermen. Een organisatie hoeft _bv. niet prijs te geven welke OS versie_ men gebruikt of welke type firewall men gebruikt. *Security through obscurity can een handige extra zijn, maar maak hiervan nooit de hoeksteen van jouw beveiliging!*

- **Simplicity of eenvoud** leidt meestal tot een hogere beschikbaarheid. Als de *beveiliging te complex wordt, wordt de kans op fouten ook alsmaar groter*.

Streef steeds naar een **gevarieerde combinatie**!

## Systemen en apparaten beschermen

Er zijn verschillende aspecten aan het beheren van een ICT-omgevingen die we moeten **beschermen**:

- Fysieke toegang
- Gebruikersbeheer
- Hosts (individuele gebruikerstoestellen)
    - Laptops, smartphones, ...
- Servers
- Netwerk(apparaten)


## Fysieke bescherming

- Mag je niet vergeten!
- Kan enorm schadelijk zijn
    - Diefstal
    - Rogue device planten (inplanten van ongewenste hardware door ongewenst persoon)
    - Vandalisme

### Hoe voorkomen?

- Sluit toegang af
    - Omheining, barricades, bewaking, ...
    - Beperk toegangstijden
- Dwing identificatie af
    - Biometrie
    - Badge
- Beveilig toestellen
    - Kabelsloten
    - Veiligheidskooien
    - Logout timers (automatisch vergrendelen na periode van inactiviteit)

### Wat bij diefstal

- Hou logboeken bij
    - Wie had het laatst toegang?
- GPS tracking

### Hou je toestellen blij

- Redundante en voldoende stroomvoorziening (UPS, Noodgenerator)
- HVAC
    - Verwarming, ventilatie, airco
    - Regelt de omgeving (temperatuur, vochtigheid, luchtstroom en luchtfiltering)
- Monitor de hardware
    - Alerts als er iets foutgaat

## Gebruikersbeheer

### De zwakste schakel

> The user's going to pick dancing pigs over security every time ~ Edward Felten

- Gebruikers (klanten, werknemers, IT-personeel, ...) zijn **onvoorspelbaar**
    - Hebben soms slechte bedoelingen
    - Maken fouten
    - ...
    - Je kan het zo gek niet bedenken
- **Limiteer** de rechten van een gebruiker zoveel mogelijk!
    - "_Principle of least privilege_"

### AAA framework (Tripple A Raamwerk)

- **A**uthentication (authenticatie) -> Wie ben je?
    - Wie mag iets doen?
- **A**uthorisation (autorisatie) -> Wat mag je doen?
    - Wat mag iemand wel/niet doen?
- **A**ccounting (boekhouding) -> Wat heb je gedaan? (logging)
    - Wie heeft wat gedaan?

#### Voorbeelden

##### Voorbeeld 1: Bankautomaat

- Authentication (authenticatie)
    - Enkel iemand met de juiste bankkaart en pincode heeft toegang tot de bankrekening
- Authorisation (autorisatie)
    - Iemand kan niet meer geld afhalen dan hij heeft
    - Er is een maximum bedrag dat afgehaald kan worden per dag
- Accounting (boekhouding)
    - Op de rekeninguitreksels staat er welk bedrag er wanneer is gestort op of afgehaald van de rekening


##### Voorbeeld 2: Forum

- Authentication (authenticatie)
    - Je moet je aanmelden met een username en paswoord
- Authorisation (autorisatie)
    - Een gewone gebruiker kan berichten lezen en zelf berichten aanmaken
    - Administratoren kunnen ook topics beheren of afsluiten, berichten van andere gebruikers bewerken en verwijderen en hebben toegang tot administrator topics die niet voor gewone gebruikers zichtbaar zijn.
- Accounting (boekhouding)
    - Er zijn logs die bijhouden wanneer wie welke actie op het forum heeft uitgevoerd (bv. op 25/09/2020 heeft administrator Alice het bericht met id 68132 van Bob verwijderd)

### Hulpmiddel voor authenticatie

- Multi-Factor Authentication (**MFA**/**2FA**)
    - What you **know**
        - Wachtwoorden, wachtwoordzinnen, pincodes, ...
    - What you **have**
        - Smartcards, beveiligingssleutelhangers, toegang tot GSM (authenticator app of SMS), toegang tot e-mailaccount (verificatie e-mail), ...
    - Who you **are**
        - Biometrie: een uniek fysiek kenmerk zoals vingerafdruk, netvlies, stem, ...
    - **Minstens 2 van de 3** nodig

### Hulpmiddel voor autorisatie

- Rechten
    - Op basis van **niveau**'s
        - Bv. "unclassified" > "confidential" > "secret" > "top secret" niveau's in het leger
    - Op basis van rechten toegekend door **eigenaar**
        - Bv. `rwxrwxrwx` bij Linux bestanden
    - Op basis van **functie**
        - Bv. Enkel dokters mogen patiëntendossier zien
    - ...

### Hulpmiddel voor accounting

- Logfiles
    - Inlogtijd
    - Succesvol aangemeld?
    - Welke bronnengebruikt?
    - ...

### Host Hardening

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

### Draadloze en mobiele apparaten

- Wired Equivalent Privacy (**WEP**)
    - Basisbescherming Wi-Fi
    - 10 tot 26 hexadecimale karakters (40 - 104 bits)
    - **Niet (meer) veilig!**
      WEP is tegenwoordig te kraken binnen enkele minuten. Je kan dit doen met tools als aircrack-ng (bv. [https://www.youtube.com/watch?v=rJXQYmG5uNY](https://www.youtube.com/watch?v=rJXQYmG5uNY) ).
- Wi-Fi Protected Access (**WPA** / **WPA2**)
    - Grote verbetering ten opzichte van WEP
    - Gebaseerd op AES (gebruik een goed en lang wachtwoord)
      https://www.youtube.com/watch?v=X49lIPHcurE
    - Tegenwoordig is WPA2 de standaard
- Toevoegen **wederzijdse authenticatie**:
    - voorkomt man-in-the-middle aanval (rogue access point)
    - Authenticatie tussen beide entiteiten (met certificaten)

### Content control

- Content screening en blokkering
    - Beperkt de inhoud waartoe een gebruiker toegang heeft met een webbrowser via internet.
    - Kan bepaalde sites blokkeren:
        - Pornografie
        - Controversiële religieuze of politieke inhoud
        - Social media (nuttig in bedrijfsomgevingen)
        - Torrents
        - ...

### Disk cloning, deep freeze

- Software om besturingssysteem en configuratiebestanden te beschermen.
- **Disk clone**
    - Image (bv. ISO) van volledige harde schijf
      Norton ghost, clonezilla
- **Deep freeze**
    - "Bevriest" de partitie van de harde schijf
    - Alle wijzigingen door gebruiker verloren bij herstarten
    - Vooral nuttig voor publieke toestellen
        - bv. internetcafé

### Kiosk mode

- Afgesloten omgeving waar je niet zomaar uit kan
- Heeft niets te maken met de harde schijf of partities, het is meer een software matige gevangenis
- Meer preventief t.o.v. disk clone en deep freeze
- Vooral nuttig voor publieke toestellen
    - Bv. bibliotheek, zelfscan-kassa, bestelkassa fastfoodrestaurant, ...

### Virtualisatie / sandboxing

- Programma's worden uitgevoerd in een virtuele omgeving (ook soms een sandbox genoemd)
- Programma's hebben niet door dat ze in een virtuele omgeving draaien
- Als hackers via de software zich een weg naar binnen hacken, zitten ze nog steeds vast in de virtuele omgeving en niet direct op het besturingssysteem van het toestel
- Soms lukt het daders echter om deze sandbox te omzeilen en zo toch code uit te voeren op het besturingssysteem van het slachtoffer

## Server Hardening

### Beveiligde toegang op afstand

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

### Administratieve maatregelen

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

## Network Hardening

### Netwerkapparaten beschermen

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
![[Pasted image 20241215160056.png]]

- IPS (Intrusion Prevention System)
![[Pasted image 20241215160113.png]]

### Een modern beveiligingsoperatiecentrum

- Security Operations Centers zijn gelijkaardig aan NOC's, maar dan voor **security**.
- SOC's bieden een aantal diensten aan zoals monitoring, beheer, oplossingen voor bedreigingen, gehoste beveiliging, ...
- Als bedrijf kun je zelf een SOC opzetten of die uitbesteden aan gespecialiseerde firma's.

### Security Information and Event Management (SIEM) systemen

- Software gebruikt in SOC's:
    - Verzamel en filter gegevens.
    - Detecteer en classificeer bedreigingen.
    - Analyseren en onderzoeken van bedreigingen.
    - Uitvoeren van preventieve maatregelen.
    - Pak toekomstige bedreigingen aan.

## Assets management

- Bedrijven moeten weten **welke hardware- en software assets** in het bedrijf **aanwezig** zijn. Deze assets moeten immers beveiligd worden.
- Assets management
    - omvat het **beheren** van al deze assets
    - Een volledig overzicht (**inventaris**) te zijn van alle hard- en software
- Het bedrijf kan zo een **inschatting** maken welke **beveiligingsgevaren** er zouden kunnen zijn.

- Moet minstens het volgende in de gaten houden:
    - Elk hardware systeem
    - Elk besturingssysteem
    - Elk hardware netwerk toestel
    - Elk network device operating system
    - Elke software applicatie
    - Elke firmware
    - Alle language runtime environments (Java, C#, Python, ...)
- Sommige bedrijven kiezen voor software die automatisch deze zaken bijhoudt

### Voordelen:

- Beveiliging
- Updatebeleid
    - Welke hard- of software is (binnenkort) verouderd?
- Helpdesk
    - Log van vorige problemen
    - Weet alle specs van klant/toestel met probleem

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

### Websites van cybersecurity organisaties

- National Vulnerability Database (NVD)
    - [https://nvd.nist.gov](https://nvd.nist.gov)
- Computer Emergency Response Team (CERT)
    - [https://sei.cmu.edu/about/divisions/cert](https://sei.cmu.edu/about/divisions/cert)
    - [https://cert.be](https://cert.be)
- Internet Storm Center (ISC)
    - [https://isc.sans.edu](https://isc.sans.edu)
- The Advanced Cyber Security Center (ACSC)
    - [https://www.acscenter.org](https://www.acscenter.org)
- ...

### Websites over cybersecurity nieuws

**Het is enorm belangrijk om op de hoogte te blijven van de laatste bedreigingen en verdedigingen!**

- [https://www.reddit.com/user/goretsky/m/security](https://www.reddit.com/user/goretsky/m/security)
    - (verzameling van reddit threads i.v.m. cybersecurity)
- [https://www.csoonline.com](https://www.csoonline.com)
- [https://www.darkreading.com](https://www.darkreading.com)
- [https://www.bleepingcomputer.com](https://www.bleepingcomputer.com)
- [https://news.ycombinator.com](https://news.ycombinator.com)
- [https://nakedsecurity.sophos.com](https://nakedsecurity.sophos.com)
- [https://threatpost.com](https://threatpost.com)
- [https://blog.erratasec.com](https://blog.erratasec.com)
- [https://krebsonsecurity.com](https://krebsonsecurity.com)
- [https://medium.com/mitre-attack](https://medium.com/mitre-attack)
- [https://risky.biz](https://risky.biz)
- [https://latesthackingnews.com](https://latesthackingnews.com)
- ...




