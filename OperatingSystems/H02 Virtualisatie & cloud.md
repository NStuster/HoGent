
# Virtualisatie

https://en.wikipedia.org/wiki/Virtualization
## Voordelen
- Efficiënter
- Goedkoper
- Lagere ecologische voetafdruk


## Nadelen:

- Compatibiliteit
- Prestatie
- Complexiteit


## Soorten

- **Programmeertaal-specifiek** 
    - Java Virtual Machine (JVM)
- **Emulator** 
    - VirtualBox
    - VMWare
    - ...
- **Applicatie-specifiek** 
    - Docker

### Type 1 hypervisor

- Native (bare metal) hypervisor
- Rechtstreeks op de hardware, er is **geen onderliggend OS**
- Kan **rechtstreeks** de nodige hardwarebronnen aanspreken
- Geen overhead door OS
- **Efficiënter** maar ook **complexer**
- Vooral gebruikt op **servers**, soms ingebouwd in hardware
- Hyper-V, VMWare ESXi, ...

### Type 2 hypervisor

- **Programma** bovenop een OS
- Aanspreken van hardware gebeurt via functies van het **besturingssysteem**
- **Eenvoudiger** om te installeren (programma)
- Vooral gebruikt op persoonlijk toestel (bv. Windows VM op Mac)
- Niet zo krachtig en efficiënt als Type-1
- VirtualBox, VMWare Player, Parallels Desktop, ...



## Multi-tenancy

tenant = huurder

### Single-Tenant omgeving

- 1 Server voor 1 klant

### Multi-Tenant omgeving

- Bronnen worden **gedeeld**, in tegenstelling tot een dedicated of isolated omgeving
- Een **tenant** (huurder) is een gebruiker of groep van gebruikers met gemeenschappelijke toegang
- Multi-tenancy kan geïmplementeerd worden in **verschillende vormen**, zowel op niveau van hardware als software
- **Virtualisatie** speelt een belangrijke rol bij multi-tenancy
- Multi-tenancy is een belangrijk kenmerk van **Cloud Computing**

#### Voordelen

- **Efficiënter** gebruik van de beschikbare bronnen, want meerdere eindgebruikers kunnen bediend worden door één toestel of instantie van de applicatie
- Daardoor leidt multi-tenancy tot lagere operationele kosten dus **goedkoper** voor de eindgebruiker

#### Nadelen

- Minder isolatie en verhoogde **beveiligingsrisico's**, in het geval van een inbreuk op de beveiliging op één enkele instantie kunnen meerdere tenants worden getroffen
- Minder **prestatie-isolatie**, grote tenants kunnen de prestaties van kleinere tenants negatief beïnvloeden


# Cloud Computing

https://en.wikipedia.org/wiki/Cloud_computing

- **Bronnen** beschikbaar **op aanvraag** (on demand), vaak zonder tussenkomst van een fysiek persoon
    - Bronnen = hardware, software en/of opslag
    - Vaak: groot aantal servers in datacenter die door iedereen gehuurd kunnen worden, bijvoorbeeld als VM's
- Vaak via een **pay-as-you-go** pricing model (kostprijs afhankelijk van effectief verbruik)
- **Elasticiteit**: mogelijkheid om automatisch aan te passen in functie van vraag

## Deployment modellen

- **Publieke** Cloud omgeving
    - beschikbaar voor iedereen, via het internet
- **Private** Cloud omgeving
    - toegang beperkt tot één of meerdere organisaties
    - kan in privaat (self hosted) of publiek (colocated) datacenter
- **Hybride** Cloud omgeving
    - combinatie van meerdere modellen

## Service modellen (publieke cloud)

- **Infrastructure** as a Service (IaaS)
    - Infrastructuur virtueel beschikbaar voor gebruiker
    - Gebruiker heeft controle over besturingssysteem, software en (virtuele) hardware
    - Amazon EC2, ...
- **Platform** as a Service (PaaS)
	- Platform en diensten (bv. toegangsbeheer) aangeboden
	- Gebruiker heeft controle over software, maar geen controle over onderliggende hardware
	- Microsoft Azure App Service, Google AppEngine, ...
- **Software** as a Service (SaaS)
	- Aanbieden applicaties
	- Gmail, Office 365, Salesforce, ...


![[Pasted image 20250219140323.png]]

## Cloud computing = virtualisatie
## Elasticiteit van de Cloud

- De mate waarin het **aanbod** zich **afstemt** op een stijgende of dalende **vraag**
- Automatische **provisie** van benodigd aantal **instanties**
- Publieke Cloud: **"oneindige"** hoeveelheid **bronnen**


![[Pasted image 20250219140634.png]]

## Cloud Computing = Multi-Tenancy
(Niet te kennen)
![[Pasted image 20250219140825.png]]

## Cloudplatformen: voorbeelden (Niet te kennen)

### Amazon Web Services (AWS)
- Gelanceerd in 2002
- Grootste cloudprovider wereldwijd
- Bekende diensten: EC2, S3, RDS, Lambda (zoals Azure Functions)

### Microsoft Azure
- Gelanceerd in 2008
- Tweede grootste cloudprovider
- Integratie met Microsoft producten (Windows Server, SQL Server, Active Directory)
- Bekende diensten: Virtual Machines, Azure SQL Database, Azure DevOps, Azure OpenAI

### Google Cloud Platform (GCP)
- Gelanceerd in 2008
- Bekende diensten: Compute Engine, BigQuery, Kubernetes Engine, TensorFlow

### DigitalOcean
- Gelanceerd in 2011
- Gericht op ontwikkelaars en kleine tot middelgrote bedrijven
- Bekende diensten: Droplets (virtuele machines), Managed Databases, Kubernetes
- Sterk in eenvoud en gebruiksvriendelijkheid

