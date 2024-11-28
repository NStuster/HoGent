# Inleiding
## Doel

Op het einde van dit opleidingsonderdeel kan u:

- de werking van verschillende gangbare soorten computers​​ en de belangrijkste hardwarecomponenten toelichten.​​
- de belangrijkste ontwikkelingen binnen de hardware en microprocessor technologieën toelichten.​​
- de Linux Bash-shell gebruiken voor eenvoudige taken.​

Eindcompetenties:

- De student kan complexe IT-oplossingen efficiënt en autonoom installeren, configureren, beveiligen, onderhouden en aanpassen zodat ze blijven beantwoorden aan de veranderende behoeften.

##  Digitale binaire computer

### Computer vs Embedded Systems

**Computer** = *Multifunctioneel programmeerbaar* digitaal elektronisch toestel

**Embedded systeem** = (ook wel *ingebed systeem* of *geïntegreerd systeem*) computer die deel uitmaakt van een ​toestel en waarvan de functionaliteit verbonden is met die van het toestel ​waarin hij ingebouwd is.​


### De dominante technologie vandaag is ​digitale binaire elektronica​

**Elektronica**: technologie die gebruik maakt van *elektrische signalen om informatie en/of energie te verwerken​*.

**Digitaal**: maakt gebruik van *discrete, discontinue waarden* (niet analoog)​ (niet te verwarren met binair)

**Binair**: maakt *gebruik van slechts twee waarden* (in de computer 1 en 0)


### Analoog vs Digitaal

**Analoog**: *elke spannings- of stroomwaarde tussen twee grenzen heeft een betekenis*.

**Digitaal**: *slechts twee waarden* zijn geldig, namenlijk 0 en 1.


### Waarom digitale elektronica?

**Kwaliteit**:
- *stabiel in de tijd en bij bewerkingen of versturen*​
- *zelf kiezen* (trade-off met opslagruimte)​
- *verschillende kwaliteiten op hetzelfde toestel*​

**Productieprijs**:
- *digitale schakelingen zijn eenvoudiger en lenen zich gemakkelijker tot hoge integratie op IC* (Integrated Circuit)​​

**Dezelfde hardware** *kan gebruikt worden voor verschillende informatie* (beeld, geluid, tekst, …)

**Redundantie, encryptie en compressie** *eenvoudig toe te passen*.

**Redelijk betrouwbaar​**

​**Klein, draagbaar** *dankzij de miniaturisatie*​

Conclusie: alle mogelijk informatie (analoge signalen, tekst, foto's, muziek, …) worden gedigitaliseerd.​

## Experimentele technologieën

**Optische technologie**
- Berekeningen worden uitgevoerd *met lichtsignalen*, geproduceerd door lasers of diodes.
- Voordelen: *hogere bandbreedtes, sneller, minder warmteproductie, verbruikt minder energie*
- Nadeel: nog *niet alle elektrische componenten kunnen omgezet worden naar optische componenten* -> tijdelijke tussenstap: hybride systemen

**Kwantumtechnologie**
- *In plaats van elektronen worden kwantumdeeltjes ingezet om berekeningen uit te voeren*. *In plaats van bits, gebruikt deze qubits waarbij elke qubit tegelijkertijd de waarden 0 én 1 heeft*. Een qubit heeft bijgevolg de waarde van 2 bits. 
- Voordeel: 
	- Bepaalde berekeningen kunnen veel sneller uitgevoerd op grotere hoeveelheden data -> *kan ingezet worden voor wetenschappelijk onderzoek waarbij intensieve simulaties uitgevoerd moeten worden*. 
- Nadeel:
	- Er is heel wat nodig (bv. extreme koeling) om een kwantumcomputer stabiel te houden en algoritmen moeten aangepast worden om parallel i.p.v. serieel uitgevoerd te kunnen worden.
	- Toch is het belangrijk om te begrijpen dat *kwantumcomputers niet alle berekeningen sneller uitvoeren*. Er zijn specifieke problemen (bv Factorisatie) die kwantumcomputers beter oplossen dankzij hun unieke eigenschappen, zoals kwantumverstrengeling en superpositie.

# Besturingssystemen

## Wat is een besturingssysteem

*Software die* op een computerapparaat wordt uitgevoerd en de *hardware- en softwarecomponenten beheert*.

**Scheduling**: programma's die uitgevoerd moeten worden en *services aanbieden aan gebruikers of programma’s worden ingepland*.

Gewoonlijk afgekort als **OS**


### onderdelen OS

Hardware: het fysieke deel van een computer inclusief onderliggende elektronica.

**Kernel**: vormt *de communicatie tussen de hardware en software* van een computer en *beheert de hardwarebronnen*.
(staat tussen de gebruikersinterface en de hardware)

**Shell**:  de *gebruikersinterface waarmee gebruikers specifieke taken van de computer kunnen aanvragen*. Deze verzoeken kunnen worden gedaan via de **CLI** of **GUI**.
- **GUI**  = Grafische gebruikersinterface (*Graphical User Interface*)
- **CLI** = Commando-regel interface (*Command-Line Interface*)

### Keuze van besturingssysteem

De 3 belangrijkste besturingssystemen vandaag zijn:
* **Microsoft Windows**
* **Apple macOS**
* **Linux**

•*Enkel Microsoft Windows heeft zijn eigen code en is niet gebaseerd op Unix* ~~of Linux~~. 
* extra info (niet te kennen)
	* (Linux is dus geen directe “afstammeling” van Unix, maar eerder een her implementatie)
	* (Windows NT (New Technology) is niet gebaseerd op Unix, maar heeft enkele ontwerpprincipes en ideeën die geïnspireerd zijn door andere besturingssystemen, waaronder Unix)

Een aantal *factoren spelen een rol bij de keuze* van een geschikt besturingssysteem:
* **Rol**: direct toegankelijk door één gebruiker *(desktop) of* meerdere gebruikers op afstand *(server)*?
* **Functie**: *moet er specifieke software op worden uitgevoerd? Wat zijn de vaardigheden van gebruikers?*
* **Levenscyclus**: verschillende releasecycli en onderhoudscycli voor ondersteuning en updates. (*Hoe lang wordt het OS ondersteund met beveiliging updates*)
* **Stabiliteit**: zijn *OS-releases bèta* (niet getest "in het wild") of stabiel (getest)?
* **Compatibiliteit**: is het *achterwaarts compatibel*?
* **Kost**:
	* ***Microsoft*** *werk met jaarlijkse of eenmalige betalende licenties*
	* ****Apple*** *heeft geen jaarlijkse kost maar werkt enkel op Apple hardware*
	* ***Linux***  *is veelal gratis en werkt vrijwel wel op alle hardware*, terwijl *indien gewenst er een kost is voor support*.
* **Ethiek**: Welke *filosofie zit achter de licentie* en in welke mate draagt dit bij in de maatschappij of *Digitale Soevereiniteit* welke afhankelijkheid hebben hierdoor van een andere natie?).
  ['Europese landen zijn te afhankelijk van Microsoft voor it' - IT Pro - Nieuws - Tweakers](https://tweakers.net/nieuws/123385/europese-landen-zijn-te-afhankelijk-van-microsoft-voor-it.html)
  [Digitale soevereiniteit | TNO](https://www.tno.nl/nl/digitale-soevereiniteit/)

**Microsoft Windows**
* Biedt *desktop- en serverversies*
* *Langzame releasecyclus (3-5 jaar),  lange onderhoudscyclus (10 jaar)* [Microsoft Windows | endoflife.date](https://endoflife.date/windows)
* Nadruk op *achterwaartse compatibiliteit*
* *Grafische gebruikersinterface*
* Er worden verbeterde *scripting*- en beheermogelijkheden ontwikkeld om te concurreren met Linux (*PowerShell*).

**Apple macOS**
* Werkt alleen op Apple hardware
* Gebaseerd op UNIX (BSD)
* Jaarlijkse releases, onderhoudscyclus (3 tot 4 jaar)

**Linux**
* Uniek is dat je na het kiezen van Linux een distributie moet kiezen
* *Verschillende distributies richten zich op verschillende use-cases*, bijv. desktop, server, wetenschap, netwerk, security
* *Sommige distributies bieden commerciële ondersteuning* (Red Hat, Ubuntu), de meeste zijn gebaseerd op vrijwilligers
* *Sommige distributies lange onderhoudscyclus* (Ubuntu LTS: 10jaar)

#### Linux distributies

- **Red Hat**
	- *Richt zich op servertoepassingen* zoals web- en bestandsserver.
	- Brengt Red Hat Enterprise Linux (RHEL) uit, een *stabiele distributie met lange releasecycli*.
	- *Sponsort het Fedora Project*, een persoonlijk bureaublad met de nieuwste software.
	- ~~CentOS is een gratis versie van RHEL-software die geen ondersteuning biedt.~~ (Niet meer correct)
	- *Scientific Linux is een distributie voor specifiek gebruik op basis van Red Hat*.

* **SUSE**
	* *Een van de eerste distributies*
	* Oorspronkelijk *afgeleid van Slackware*
	* *Bevat eigen code en wordt verkocht als een serverproduct*. Sommige modules of add-ons bevatten mogelijks eigen code.
	* Wordt verkocht als een serverproduct, hoewel er een werkstationversie bestaat.
	* *OpenSUSE is een volledig open, gratis versie* met meerdere desktop pakketten

* **Debian**
	* *Uitgebracht door een community die het gebruik van open source software bevordert*.
	* Heeft zijn *eigen pakketbeheersysteem (apt) uitgevonden op basis van het .deb-bestandsformaat*.
	* *Ubuntu is de meest populaire afgeleide distributie*, die varianten heeft voor desktop, server en applicaties. Ubuntu biedt ook een LTS-versie (Long Term Support).
	* *Linux Mint is een afgeleide van Ubuntu* met verschillende gratis versies, sommige hebben licentiebeperkingen.

- **Android**
	- Biedt een *platform voor mobiele gebruikers*.
	- Heeft *geen traditionele GNU / Linux-pakketten om het compatibel* te maken met desktop.
	- *Gesponsord door Google*

- **Andere Linux distributies**
	- ***Raspbian*** *is een Linux distributie die is ontworpen om op Raspberry Pi hardware* te draaien.
	- ***Linux From Scratch (LFS)*** *bestaat uit een online boek, broncode en instructies voor het bouwen van een aangepaste Linux distributie*.

# Open Source licenties

- **End User License Agreement (EULA)** -> *is niet open source, is bij proprietary software*
	- is een juridisch document dat geaccepteerd moet worden voordat de software geïnstalleerd wordt.
- **GNU General Public License version 2 (GPLv2)**
	- is een *licentie waarbij de broncode voor iedereen beschikbaar moet zijn en waarbij iedereen wijzigingen kan aanbrengen*
	- *Wijzigingen moeten onder dezelfde licentie vallen*.
- **Free and Open Source Software**
	- is *software waarbij iedereen de broncode kan bekijken, wijzigen en opnieuw kan verspreiden*.

# Basiskennis Linux

*Linux is overal*, Linux jobs zijn overal, er is een tekort aan Linux talent en er is vraag naar Linux vaardigheden in zowat elke branche en jobcategorie wereldwijd.

- *Linux is de kernel* van een systeem, de centrale controller van alles wat er op de computer gebeurt.
- *Linux is een combinatie van software genaamd* **GNU / Linux**, die het besturingssysteem definieert. (*GNU's Not Unix*)
- *GNU is de gratis open source software die veel commando's aanbiedt die gelijkaardig zijn aan de UNIX-commando's*.
- *Het verhaal van Linux begint met UNIX*, een besturingssysteem dat in de jaren zeventig door AT&T Bell Labs is ontwikkeld voor grote machines (servers).
- *UNIX is geschreven in de C-taal en low-level programmeertaal (assembler)*.

## Keuze distrubutie

**Rol**: distributies beschikbaar voor verschillende systemen; commercieel voor *servers* en *desktop*, gespecialiseerd voor hergebruik van computers,*embedded systemen*, enz.

**Functie**: distributies kunnen gekozen worden op basis van het *doel van gebruik of de benodigde beveiliging*.

**Levenscyclus**: de meeste distributies hebben*grote en kleine updatecycli*. *Sommige Linux-releases hebben langdurige ondersteuning* (**LTS**) (5+ jaar, 13 jaar voor SUSE LTS).

**Stabiliteit**: sommige distributies bieden *stabiele of onstabiele releases*, alsook releases in test

**Kost**: *distributies zijn kosteloos*. Indien hier nood aan is, kan het nuttig zijn om voor ondersteuning te betalen. *Enterprise gebruikers kunnen betalen voor ondersteuning of zelf voor ondersteuning zorgen*.


# Linux: bash Shell

## Shell
- *Zodra een gebruiker een commando heeft ingevoerd, accepteert de terminal wat de gebruiker heeft getypt en geeft het door aan een shell*.

- De *CLI biedt een nauwkeurigere controle, grotere snelheid en de mogelijkheid om taken gemakkelijker te automatiseren door middel van scripts* dan GUI.

- De *shell vertaalt de opdrachten die door een gebruiker zijn ingevoerd in acties die door het besturingssysteem uitgevoerd moeten worden*.

- *Linux ondersteunt het gebruik van veel verschillende shells*.

- De *meest gebruikte shell voor Linux is de* **Bash-shell**

## Bash shell

De Bash-shell heeft *veel populaire functies*, waaronder:
- *Command line geschiedenis*
- *Inline bewerkingen*
- *Scripting*
	- Commando's die in een bestand geplaatst worden, kunnen vervolgens geïnterpreteerd en uitgevoerd worden.
- *Aliassen*
	- Lange opdrachten kun je een korte bijnaam geven.
- *Variabelen*
	- Wordt gebruikt om informatie op te slaan voor de Bash-shell en voor de gebruiker.

### prompt

```bash
sysadmin@localhost:~$
```

De weergegeven prompt bevat de volgende informatie:
- *Gebruikersnaam* (sysadmin)
- *Systeemnaam* (localhost)
- *Huidige directory* (~)

Het ~ -symbool wordt gebruikt als afkorting voor de homedirectory van de gebruiker

### Commandostructuur

- Een **commando** *is een softwareprogramma dat uitgevoerd wordt in de CLI en een actie op de computer uitvoert*.
- Om een commando uit te voeren, is het *typen van de naam van het commando de eerste stap*.
- *Sommige opdrachten hebben extra invoer nodig om correct te werken*.
- Deze *extra invoer is er in twee vormen*: **opties** en **argumenten**.
	- **Opties** *worden gebruikt om het gedrag van een commando te wijzigen*.
		- Opties kunnen in combinatie met andere opties gebruikt worden
		- Oudere opdrachten gebruiken voor opties meestal letters, terwijl nieuwere opdrachten volledige woorden gebruiken
			- Opties van één letter worden voorafgegaan door een enkel koppelteken, zoals de optie -h.
			- Opties voor volledige woorden worden voorafgegaan door twee streepjes - tekens zoals de volledige woordvorm van de optie -h, de optie --human-readable
	- **Argumenten** *worden gebruikt om aanvullende informatie te verstrekken* (zoals een bestandsnaam of een gebruikersnaam).
		-  *Sommige commando's accepteren meerdere argumenten*.
		- Een **argument** *kan gebruikt worden om iets te specificeren waarop het commando moet reageren*.
- Het typische formaat voor een commando is als volgt:
```bash
command [options] [arguments]
```
#### history

- Uitgevoerde opdrachten worden bewaard in een geschiedenislijst.
	- Door op de pijl omhoog **↑** te drukken, wordt het vorige commando op de promptregel weergegeven.
	- Om de volledige geschiedenislijst van een terminal te bekijken, gebruikt u de geschiedenisopdracht: **history**

- Het gewenste commando uit de geschiedenislijst kan uitgevoerd worden door een uitroepteken te typen en vervolgens het nummer naast de opdracht, bijvoorbeeld: !3

- Als het 'history'-commando een getal n als argument krijgt, toont dit de laatste n commando's uit de geschiedenislijst.

- Om het meest recente commando uit te voeren, typ !! en druk op Enter

- Om de meest recente iteratie van een specifiek commando uit te voeren, typ je !command en druk je op Enter.

- In de terminal kan je ook de hotkey Ctrl-r gebruiken om te zoeken in de history:
	1. Druk de toetsen Ctrl en r tegelijkertijd in.
	2. Typ de zoekterm in.
	3. Vind je niet wat je zoekt, druk dan nogmaals Ctrl-r in om het volgende resultaat te vinden. Herhaal dit indien nodig.
	4. Heb je het commando gevonden dat je zoekt? Druk op enter om het uit te voeren.


#### Variabelen



## Opbouw commando
```bash

command [-opties] [argument]

```
## Opties
### Opties kunnen in combinatie met andere opties gebruikt worden:

dit onderstaande voorbeeld is een combinatie van `ls -l -r`
```bash
sysadmin@localhost:~$ ls -lr
```

### - of --

Bij een optie die *enkel een letter* heeft gebruiken we een enkele `-`
Bij een optie met een *woord* gebruiken we een dubbele `--`

## Variabele

### definiëren 
```bash
sysadmin@localhost:~$ variabele='string'

sysadmin@localhost:~$ variabeleInt=1
```
### print waarde van variabele

```bash
sysadmin@localhost:~$ echo $(variable)
```
### omgevingsvariabelen maken

```bash
sysadmin@localhost:~$ export $(variabele)
```
### ongedaan maken omgevingsvariabele
```bash
sysadmin@localhost:~$ unset $(variabele)
```

### $PATH

Belangrijkste bash variabele:
- alle plaatsten waar het systeem zoekt naar uitvoerbare programma's
- als een commando niet op 1 van deze plaatsen staat krijg je **"command not found"**

## Aliassen

Eenvoudige namen toe te wijzen aan langere of ingewikkeldere commando's

### Aanmaken alias
```bash
alias aliasnaam='commando'
```

**voorbeeld***
```bash
alias ll='ls -lah'
```

### Aliassen bekijken 

```bash
alias
```
### Alias verwijderen

Verwijderen doen we met unalias
```bash
unalias ll
```
### Aliassen permanent maken

liassen die je in de terminal invoert, gelden alleen voor de huidige sessie. Om ze permanent te maken, kun je ze toevoegen aan je `.bashrc` of `.bash_profile` bestand (afhankelijk van je systeem).

1. Open `.bashrc` of `.bash_profile` in een teksteditor:
```bash
nano ~/.bashrc
```    

2. Voeg de alias toe:
```bash

alias ll='ls -lah'
``` 

3. Sla het bestand op en voer vervolgens uit om de wijzigingen direct toe te passen:
```bash
source ~/.bashrc
```


## Aanhalingstekens

3 soorten aanhalingstekens: 
- **enkele aanhalingstekens (' ')**
	- *voorkomen* dat de shell *alle speciale tekens* "interpreteert" of uitbreidt
```bash
sysadmin@localhost:~$ echo $variabele
inhoudVanDeVariabele

sysadmin@localhost:~$ echo '$variable'
$variable
```
	
- **dubbele aanhalingstekens (" ") **
	- *voorkomen* dat de shell sommige *metatekens* interpreteert, *inclusief glob-tekens (\*)*
```bash
sysadmin@localhost:~$ echo D*
Desktop Documents Downloads
sysadmin@localhost:~$  echo "D*"
D*
```

	
- **achterwaardse aanhalingstekens of backtick (\` \`) **
	- *"opdrachtvervanging"* waardoor een *opdracht kan worden uitgevoerd binnen de regel van een andere opdracht*
	- Je kan *hetzelfde bereiken door $()* te gebruiken.
	
```bash
sysadmin@localhost:~$ echo today is `date`
Today is Mon Nov 4 03:40:04 UTC 2030

sysadmin@localhost:~$  echo $(date)$
Today is Mon Nov 4 03:40:04 UTC 2030
```

## Backslash

Om *slechts één enkel karakter te blokkeren* aan de speciale betekenis van een shell-metateken, wordt het **backslash (\\ )** teken gebruikt.

## Punt Komma ;

Om meerdere commando's na elkaar uit te voeren.

```bash
sysadmin@localhost:~$ cal 1 2015;cal 2 2015; cal 3 2015


```

## man paginas


## bestandssystemen

[Linux bash commando's en variabelen](./Bash%20commands%20en%20variabelen%20te%20kennen.md)


# Logische Schakelingen

