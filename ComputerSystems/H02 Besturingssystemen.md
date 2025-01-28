# Wat is een besturingssysteem?
_Software die_ op een computerapparaat wordt uitgevoerd en de _hardware- en softwarecomponenten beheert_.

**Scheduling**: programma's die uitgevoerd moeten worden en _services aanbieden aan gebruikers of programma’s worden ingepland_.

Gewoonlijk afgekort als **OS**

## onderdelen OS

Hardware: het fysieke deel van een computer inclusief onderliggende elektronica.

**Kernel**: vormt _de communicatie tussen de hardware en software_ van een computer en _beheert de hardwarebronnen_. (staat tussen de gebruikersinterface en de hardware)

**Shell**: de _gebruikersinterface waarmee gebruikers specifieke taken van de computer kunnen aanvragen_. Deze verzoeken kunnen worden gedaan via de **CLI** of **GU**
# GUI vs CLI
- **GUI** = Grafische gebruikersinterface (_Graphical User Interface_)
- **CLI** = Commando-regel interface (_Command-Line Interface_)
# Keuze van besturingssysteem
De 3 belangrijkste besturingssystemen vandaag zijn:

- **Microsoft Windows**
- **Apple macOS**
- **Linux**

•_Enkel Microsoft Windows heeft zijn eigen code en is niet gebaseerd op Unix_ ~~of Linux~~.

- extra info (niet te kennen)
    - (Linux is dus geen directe “afstammeling” van Unix, maar eerder een her implementatie)
    - (Windows NT (New Technology) is niet gebaseerd op Unix, maar heeft enkele ontwerpprincipes en ideeën die geïnspireerd zijn door andere besturingssystemen, waaronder Unix)

Een aantal _factoren spelen een rol bij de keuze_ van een geschikt besturingssysteem:

- **Rol**: direct toegankelijk door één gebruiker _(desktop) of_ meerdere gebruikers op afstand _(server)_?
- **Functie**: _moet er specifieke software op worden uitgevoerd? Wat zijn de vaardigheden van gebruikers?_
- **Levenscyclus**: verschillende releasecycli en onderhoudscycli voor ondersteuning en updates. (_Hoe lang wordt het OS ondersteund met beveiliging updates_)
- **Stabiliteit**: zijn _OS-releases bèta_ (niet getest "in het wild") of stabiel (getest)?
- **Compatibiliteit**: is het _achterwaarts compatibel_?
- **Kost**:
    - _**Microsoft**_ _werk met jaarlijkse of eenmalige betalende licenties_
    - *_**Apple**_ _heeft geen jaarlijkse kost maar werkt enkel op Apple hardware_
    - _**Linux**_ _is veelal gratis en werkt vrijwel wel op alle hardware_, terwijl _indien gewenst er een kost is voor support_.
- **Ethiek**: Welke _filosofie zit achter de licentie_ en in welke mate draagt dit bij in de maatschappij of _Digitale Soevereiniteit_ welke afhankelijkheid hebben hierdoor van een andere natie?). ['Europese landen zijn te afhankelijk van Microsoft voor it' - IT Pro - Nieuws - Tweakers](https://tweakers.net/nieuws/123385/europese-landen-zijn-te-afhankelijk-van-microsoft-voor-it.html) [Digitale soevereiniteit | TNO](https://www.tno.nl/nl/digitale-soevereiniteit/)

**Microsoft Windows**

- Biedt _desktop- en serverversies_
- _Langzame releasecyclus (3-5 jaar), lange onderhoudscyclus (10 jaar)_ [Microsoft Windows | endoflife.date](https://endoflife.date/windows)
- Nadruk op _achterwaartse compatibiliteit_
- _Grafische gebruikersinterface_
- Er worden verbeterde _scripting_- en beheermogelijkheden ontwikkeld om te concurreren met Linux (_PowerShell_).

**Apple macOS**

- Werkt alleen op Apple hardware
- Gebaseerd op UNIX (BSD)
- Jaarlijkse releases, onderhoudscyclus (3 tot 4 jaar)

**Linux**

- Uniek is dat je na het kiezen van Linux een distributie moet kiezen
- _Verschillende distributies richten zich op verschillende use-cases_, bijv. desktop, server, wetenschap, netwerk, security
- _Sommige distributies bieden commerciële ondersteuning_ (Red Hat, Ubuntu), de meeste zijn gebaseerd op vrijwilligers
- _Sommige distributies lange onderhoudscyclus_ (Ubuntu LTS: 10jaar)
# Linux distributies
- **Red Hat**
    - _Richt zich op servertoepassingen_ zoals web- en bestandsserver.
    - Brengt Red Hat Enterprise Linux (RHEL) uit, een _stabiele distributie met lange releasecycli_.
    - _Sponsort het Fedora Project_, een persoonlijk bureaublad met de nieuwste software.
    - ~~CentOS is een gratis versie van RHEL-software die geen ondersteuning biedt.~~ (Niet meer correct)
    - _Scientific Linux is een distributie voor specifiek gebruik op basis van Red Hat_.

- **SUSE**
    
    - _Een van de eerste distributies_
    - Oorspronkelijk _afgeleid van Slackware_
    - _Bevat eigen code en wordt verkocht als een serverproduct_. Sommige modules of add-ons bevatten mogelijks eigen code.
    - Wordt verkocht als een serverproduct, hoewel er een werkstationversie bestaat.
    - _OpenSUSE is een volledig open, gratis versie_ met meerdere desktop pakketten
- **Debian**
    
    - _Uitgebracht door een community die het gebruik van open source software bevordert_.
    - Heeft zijn _eigen pakketbeheersysteem (apt) uitgevonden op basis van het .deb-bestandsformaat_.
    - _Ubuntu is de meest populaire afgeleide distributie_, die varianten heeft voor desktop, server en applicaties. Ubuntu biedt ook een LTS-versie (Long Term Support).
    - _Linux Mint is een afgeleide van Ubuntu_ met verschillende gratis versies, sommige hebben licentiebeperkingen.

- **Android**
    
    - Biedt een _platform voor mobiele gebruikers_.
    - Heeft _geen traditionele GNU / Linux-pakketten om het compatibel_ te maken met desktop.
    - _Gesponsord door Google_
- **Andere Linux distributies**
    
    - _**Raspbian**_ _is een Linux distributie die is ontworpen om op Raspberry Pi hardware_ te draaien.
    - **Linux From Scratch (LFS)** _bestaat uit een online boek, broncode en instructies voor het bouwen van een aangepaste Linux distributie_.
# Open source licenties
- **End User License Agreement (EULA)** -> _is niet open source, is bij proprietary software_
    - is een juridisch document dat geaccepteerd moet worden voordat de software geïnstalleerd wordt.
- **GNU General Public License version 2 (GPLv2)**
    - is een _licentie waarbij de broncode voor iedereen beschikbaar moet zijn en waarbij iedereen wijzigingen kan aanbrengen_
    - _Wijzigingen moeten onder dezelfde licentie vallen_.
- **Free and Open Source Software**
    - is _software waarbij iedereen de broncode kan bekijken, wijzigen en opnieuw kan verspreiden_.