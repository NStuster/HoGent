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
