
# Logische poorten
## Overzicht
![[Pasted image 20241202195341.png]]


## Anders bekeken

We behouden de werking van de EN-, OF en Exclusieve OF-
poorten, maar we bekijken:
- de ingang A als signaal én
- de ingang B als stuurlijn.



## EN-poort als doorlaatfilter.
Als stuurlijn 1 is laat deze het signaal normaal door.
![[Pasted image 20241202195503.png]]

| Stuurlijn | Signaal | Uit |
| --------- | ------- | --- |
| 0         | 0       | 0   |
| 0         | 1       | 0   |
| 1         | 0       | 0   |
| 1         | 1       | 1   |
- Stuurlijn = 0 => Signaal wordt geblokkeerd (uit = 0).
- Stuurlijn = 1 => Signaal wordt doorgelaten.

## Exclusieve OF-poort als flexibele invertor
Als stuurlijn 1 is inverteert deze de waarde van het signaal.
![[Pasted image 20241202195719.png]]


| Stuurlijn | Signaal | Uit |
| --------- | ------- | --- |
| 0         | 0       | 0   |
| 0         | 1       | 1   |
| 1         | 0       | 1   |
| 1         | 1       | 0   |
- Stuurlijn = 0 => Signaal wordt doorgelaten.
- Stuurlijn = 1 => Signaal wordt geïnverteerd.

## OF-poort als samensteller

De OF-poort kan signalen samenvoegen naar de uitgang.
Hierbij is de uitgang 1 zelfs als slechts op één van de ingangen een signaal aanwezig is terwijl er op de andere ingangen signaal 0 wordt aangeboden.
Enkel als alle signalen 0 zijn is de uitgang 0.

![[Pasted image 20241202195952.png]]


| X   | Y   | Z   | Sign | Uitgang |
| --- | --- | --- | ---- | ------- |
| 0   | 0   | 0   | 0    | 0       |
| 0   | 0   | 0   | 1    | 0       |
| 0   | 0   | 1   | 0    | 1       |
| 0   | 0   | 1   | 1    | 1       |

# Combinatorische schakelingen

Een combinatorische schakeling is een netwerk van logische poorten dat een vooropgestelde functie uitvoert.

https://circuitverse.org/users/152345/projects/computer-systems
## De decoder

Functie: **alle uitgangen zijn 0 met uitzondering van die ene uitgang waarvan de index (adres) als binair getal op de ingangen staat**.
Belangrijk! Bij een decoder is precies één uitgang hoog.

**Decoder is op basis van AND poorten**

Een decoder met n ingangen teken je als volgt:
- Inverteer alle ingangen
- Plaats 2n EN-poorten met n ingangen
- Benoem de uitgangen D0 tem. D(2n-1)
- De ide ingang van elke EN-poort wordt ofwel
met de ide ingang van de schakeling
verbonden ofwel met zijn inverse, afhankelijk
van de binaire schrijfwijze van de index
- 0 => inverse ingang
- 1 => ingang
### 3 to 8 Decoder

![[Pasted image 20241202200545.png]]
![[Pasted image 20241202201311.png]]

![[Pasted image 20241202200558.png]]

| A   | B   | C   |     | D0  | D1  | D2  | D3  | D4  | D5  | D6  | D7  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 1   | 0   | 0   | 0   | 0   | 0   | 0   | 0   |
| 0   | 0   | 1   | 1   | 0   | 1   | 0   | 0   | 0   | 0   | 0   | 0   |
| 0   | 1   | 0   | 2   | 0   | 0   | 1   | 0   | 0   | 0   | 0   | 0   |
| 0   | 1   | 1   | 3   | 0   | 0   | 0   | 1   | 0   | 0   | 0   | 0   |
| 1   | 0   | 0   | 4   | 0   | 0   | 0   | 0   | 1   | 0   | 0   | 0   |
| 1   | 0   | 1   | 5   | 0   | 0   | 0   | 0   | 0   | 1   | 0   | 0   |
| 1   | 1   | 0   | 6   | 0   | 0   | 0   | 0   | 0   | 0   | 1   | 0   |
| 1   | 1   | 1   | 7   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 1   |

---
### 2 to 4 Decoder

![[Pasted image 20241202200631.png]]

![[Pasted image 20241202200657.png]]

| I0  | I1  | U0  | U1  | U2  | U3  |
| --- | --- | --- | --- | --- | --- |
| 0   | 0   | 1   | 0   | 0   | 0   |
| 0   | 1   | 0   | 1   | 0   | 0   |
| 1   | 0   | 0   | 0   | 1   | 0   |
| 1   | 1   | 0   | 0   | 0   | 1   |

---

## De multiplexer
**Om een parallele stroom van gegevens een seriële uitgang te geven via een selectie vanuit A, B, C in een binair adres.**

De multiplexer is een combinatie van:
- een decoder
- EN-doorlaatfilters
- een OF-samensteller

![[Pasted image 20241202201359.png]]


![[Pasted image 20241203085926.png]]

![[Pasted image 20241203092945.png]]

---

![[Pasted image 20241203093021.png]]

| S 1 | S 0 | Z   |
| --- | --- | --- |
| 0   | 0   | A   |
| 0   | 1   | B   |
| 1   | 0   | C   |
| 1   | 1   | D   |
## De optellers

### Half Adder


![[Pasted image 20241203094746.png]]

| A   | B   | S SOM | C uit carry |
| --- | --- | ----- | ----------- |
| 0   | 0   | 0     | 0           |
| 0   | 1   | 1     | 0           |
| 1   | 0   | 1     | 0           |
| 1   | 1   | 0     | 1           |
### Full Adder

![[Pasted image 20241203094441.png]]

| **A** | **B** | **C** in (carry) | S Som | C out (carry) |
| ----- | ----- | ---------------- | ----- | ------------- |
| 0     | 0     | 0                | 0     | 0             |
| 0     | 0     | 1                | 1     | 0             |
| 0     | 1     | 0                | 1     | 0             |
| 0     | 1     | 1                | 0     | 1             |
| 1     | 0     | 0                | 1     | 0             |
| 1     | 0     | 1                | 0     | 1             |
| 1     | 1     | 0                | 0     | 1             |
| 1     | 1     | 1                | 1     | 1             |
![[Pasted image 20241203094648.png]]


## De Ripple Carry Adder
https://www.youtube.com/watch?v=wvJc9CZcvBc&t=5s

Een **opteller die twee n-bit woorden in één keer bij elkaar optelt** (bv. 2 8-bit woorden), bestaat uit 1 halve en n-1 hele optellers. De carry bits golven doorheen de schakeling, vandaar de term ”ripple” in de naam.

![[Pasted image 20241203095744.png]]

![[Pasted image 20241203095839.png]]


# Interne computeronderdelen

## Algemeen blokschema van de hoofdonderdelen van een computer
![[Pasted image 20241203100246.png]]

## ALU

Het Arithmetic & Logic Unit is een onderdeel van elke processor die op flexibele manier bewerkingen uitvoert op twee n-bit operanden.

![[Pasted image 20241203100344.png]]

### Bewerkingen:
	• en, of, niet,
	• optellen, aftrekken,
	• 2-complement,
	• negatie, …

### Werking

Alle bewerkingen (en, of, niet, optellen) worden tegelijk uitgevoerd.
De gewenste bewerking stroomt door naar de uitgang met een EN-doorlaatfilter gevolgd door een OF-samensteller.
Om de doorlaatfilter/samensteller combinatie correct te laten werken verloopt de selectie via een decoder (slechts één signaal mag doorgelaten worden).

![[Pasted image 20241203102353.png]]

Voor nog meer flexibiliteit zijn er nog drie extra stuurlijnen en wat extra poorten aanwezig namelijk:

- ENA en ENB houden de ingangssignalen op A en B tegen indien 0
- INVA inverteert het A ingangssignaal indien 1 en laat die onveranderd door indien 0
- INC voor de carryin bit (enkel bij eerste 1-bit ALU van een n-bit-ALU-reeks)

Er kunnen zich dus verschillende combinaties voordoen aan de ingangen F0, F1, ENA, ENB, INVA en INC. Niet alle combinaties zijn zinvol, soms geven verschillende combinaties van stuurlijnen dezelfde bewerking.

![[Pasted image 20241203103423.png]]

![[Pasted image 20241203103620.png]]

### Een n-bit ALU (bvb. 8-bit ALU)

Er zijn circuits aanwezig die
- overflow detecteren bij het optellen van zowel unsigned als signed integers
- een negatieve uitkomst detecteren bij signed integer
- nul als uitkomst detecteert

Er zijn dus 2 operanden van n-bit nl. A en B, en 6 stuurlijnen nl. InvA, EnA, EnB, F1, F0, INC aanwezig.
Elke combinatie van de stuurlijnen geeft een (al dan niet zinvolle) bewerking op de operanden.

*Examen:*  zelf opstellen door te redeneren vanuit ALU schema

![[Pasted image 20241203103916.png]]

\- (streepje) wil zeggen dat een 1 of 0 niet uitmaakt voor de output.

## Geheugen

### Bouwstenen

#### De SR-latch

Om met logische poorten een geheugen te maken is feedback (terugkoppeling) nodig.

1-bit geheugen opgebouwd met behulp van 2 NOR poorten
	=> twee stabiele toestanden
		• Set=1 (en Reset=0) => Q=1 (en -Q=0)
		• Reset=1 (en Set=0) => Q=0 (en -Q=1)

![[Pasted image 20241203104955.png]]
Werking:
- met een kleine vertraging (wegens poortvertraging) neemt de 2de ingang van één van de NOR-poorten de werking van de S of R ingang over
- om een nieuwe waarde in het geheugen te schrijven moet ofwel S, ofwel R, voldoende lang op 1 gehouden worden
  *Opmerking*: De ingangen (S en R) mogen NOOIT gelijktijdig 1 zijn!

#### De geklokte SR-latch

Hier worden twee EN-doorlaatfilters toegevoegd zodat de toestand van de S- en R-ingangen slechts doorgelaten worden wanneer het kloksignaal hoog (1) is. De klok is meestal laag (0) en wordt “eventjes” hoog (1) gebracht op het moment dat we iets in het geheugen willen schrijven.

![[Pasted image 20241203104933.png]]

*Problemen:*
- S en R kunnen nog altijd gelijktijdig 1 zijn => mag niet, oscillatie mogelijk
- Klokpuls kan eventueel te kort zijn => de bit zal dan niet in het geheugen geschreven zijn en/of de SR-latch zal oscilleren
#### De geklokte D-latch

Hier worden de S- en R-ingangen herleid tot één D-ingang. De NIET-poort zorgt dat R en S nooit allebei 1 zijn.
Probleem: Klokpuls kan nog steeds te kort zijn

![[Pasted image 20241203105051.png]]

#### D-flip-flop

Deze schakeling onthoudt de toestand van ingang D bij elke stijgende flank op de klok-ingang (CK).

##### Pulsgenerator

Bij dit deel van de schakeling hangt aan ingang a een (extern) kloksignaal, op de uitgang d krijgen we een korte puls.

![[Pasted image 20241203105817.png]]

![[Pasted image 20241203105833.png]]

![[Pasted image 20241203110028.png]]

##### Werking van de schakeling:

![[Pasted image 20241203105934.png]]

- Door de poortvertraging op de niet-poort wordt na een stijgende flank op CK een korte puls gegenereerd op beide EN-poorten (middelste ingangen).
- Deze puls maakt kortstondig de S-ingang van de SR-latch hoog als D=1 of de R-ingang als D=0.
- De lengte van de puls moet voldoende lang zijn om de SR-latch in een (nieuwe) stabiele toestand te brengen.

*Voordelen*:
- Door aan de CK-ingang een stijgende flank aan te leggen, wordt de waarde die op dat moment aan de D-ingang hangt, in het geheugen geschreven.
- De maker (fabrikant) van de D-flip-flop zorgt er zelf voor dat de (interne) puls op de EN-poorten voldoende lang is.
- De (interne) puls moet ook voldoende kort zijn. Want hoe korter de puls, hoe sneller na elkaar we iets in het geheugen kunnen schrijven.

##### Voorstelling D-flip-flop’s:

![[Pasted image 20241203110149.png]]

#### Register

Is een combinatie van meerdere flip-flops waarvan de voedingspinnen, de clock en clear pinnen gecombineerd zijn.
Functie: Een 8-bit woord op de D-pinnen wordt vast-gehouden bij een stijgende flank op de CK pin.
Een dergelijke opstelling binnenin een CPU wordt ook een “register” genoemd.

![[Pasted image 20241203110325.png]]

### RAM-geheugen

Het bieden van een tijdelijke opslag voor informatie, die snel toegankelijk is en verdwijnt van zodra de computer uitgezet wordt.

**Opbouw van RAM geheugen:**
- lange lijst van locaties (bestaande uit geheugencellen)
- in elke locatie kan één computerwoord opgeslagen worden
- de opgeslagen informatie kan in willekeurige volgorde opgevraagd worden - vandaar de naam “Random Access Memory”
- om de geheugenlocaties individueel te kunnen aanwijzen, heeft elke locatie een uniek adres (= binair getal).

#### Basisopdrachten

Slechts 2 basisopdrachten (CPU  RAM geheugen):
- Lees de inhoud van de geheugenlocatie met adres X.
- Schrijf nieuwe inhoud in de geheugenlocatie met adres X

#### Interactie met het RAM-geheugen

**Adreslijnen**:
- geven aan welke geheugencel gelezen of geschreven moet worden
- verbindingen tussen de processor en het RAM geheugen
- elke adreslijn is 1 elektrische verbinding

**Datalijnen**:
- Verbindingen tussen de processor en het RAM geheugen waarover het op te slaan of uit te lezen woord uitgewisseld wordt.

**Stuurlijnen**:
- Bijkomende verbinding tussen de processor en het RAM geheugen met de functies:
	- opdracht: aangeven of er gelezen of geschreven moet worden
	- timing: zorgen dat de processor en het geheugen in hetzelfde ritme blijven werken


#### Schematische voorstelling

![[Pasted image 20241203111510.png]]

![[Pasted image 20241203111532.png]]


##### Cellen

De cellen zijn D-flip-flops. Eén flip-flop houdt één bit van één geheugenlocatie vast.

![[Pasted image 20241203111650.png]]

Ze zijn georganiseerd in een matrixvorm:
- horizontaal: bits van het woord
- verticaal: opeenvolgende geheugenlocaties


##### adreslijnen en de woordselectie

**Adreslijnen**:
- zijn unidirectionele lijnen (enkel ingang voor de RAM chip)
- het binaire getal op deze lijnen = de te adresseren locatie

![[Pasted image 20241203112659.png]]

**Decoder**:
- zet signaal op n adreslijnen om naar signaal op 2n woordselectielijnen
- Op elk ogenblik zal slechts één woordselectielijn hoog zijn, namelijk diegene die aangewezen wordt door het binair getal op de adreslijnen
*Woordselectielijnen*: uitgangen van de decoder

##### leesfilters

EN-doorlaatfilters/OF-samensteller combinatie:

Functie: **Alleen de uitgangen van de flip-flops in de aangewezen rij naar de datalijnen doorgegeven**.

*EN-doorlaatfilter*:
- Select-ingang/stuurlijn (links) verbonden met woordselectielijn
- Signaal-ingang (rechts) verbonden met uitgang van de flipflop

*OF-samensteller*:
- evenveel ingangen als er locaties op de chip zijn!
- slechts één ingang bevat een nuttig signaal, de rest nul, dankzij de werking van de adresdecoder

![[Pasted image 20241203113917.png]]


##### stuurlijnen

**RD: Read**
Zolang deze lijn hoog is, wordt het woord van de locatie die door de adreslijnen aangewezen wordt naar de datalijnen doorgegeven.

**WR: Write**
Externe klokpuls die aangeeft dat het woord dat op de datalijnen staat naar de locatie, die door de adreslijnen aangewezen wordt, moet geschreven worden.

**CS: Chip Select**
Maakt het mogelijk om meerdere geheugenchips parallel op dezelfde adres- en datalijnen te zetten (zie later). Er mag steeds slechts 1 chip geselecteerd zijn, bij de rest moet CS=0. CS bepaalt of WR en RD door de EN-doorlaatfilters mogen.

![[Pasted image 20241203114039.png]]


##### datalijnen

De datalijnen zijn bidirectionele verbindingen die de woorden transporteren :
- van het RAM-geheugen naar de CPU bij het lezen en
- van de CPU naar de RAM-chip bij het schrijven

Om bidirectionele verbindingen mogelijk te maken, zijn tri-state buffers nodig.

![[Pasted image 20241203114149.png]]

##### schrijfpoort

EN poort gebruikt als doorlaatfilter:
- Externe klokpuls is de signaallijn (bovenste lijn)
- “Woordselectielijn” is de stuurlijn/select ingang (onderste lijn)

Functie:
- De externe klokpuls wordt alleen naar die rij (locatie) doorgelaten waarnaar geschreven moet worden.
- Om problemen te voorkomen mag slechts één schrijfpoort tegelijk actief worden en daar zorgt de decoder voor, want de woordselectielijnen zijn uitgangen van een decoder.

![[Pasted image 20241203114407.png]]
#### leescyclus

1. Begintoestand: CS, RD en WR lijnen zijn laag.
2. De CPU plaatst de datalijnen in hoog-ohmige toestand.
3. Vervolgens plaatst de CPU het adres van de gewenste locatie op de adreslijnen.
4. Via de decoder, adresselectie en leesfilters komt de inhoud van de gewenste locatie aan de ingang van de tri-state buffers.
5. De CPU maakt RD en CS lijnen hoog.
6. De tri-state buffers sturen de datalijnen actief aan.
7. De CPU leest het gevraagde woord van de datalijnen.
8. De CPU maakt CS, RD en WR lijnen terug laag ter voorbereiding van de volgende cyclus.

#### schrijfcyclus

1. Begintoestand: CS, RD en WR lijnen zijn laag.
2. De CPU plaatst het weg te schrijven woord op de datalijnen.
3. De CPU plaatst het adres van de doellocatie op de adreslijnen.
4. Het weg te schrijven woord wordt aan de ingangen van ALLE flip-flops aangeboden.
5. De CPU maakt CS stuurlijn hoog en stuurt een klokpuls naar de WR stuurlijn. (Door de werking van de schrijfpoorten krijgen alleen de flip-flops van de gewenst rij de schrijfpuls binnen.)
6. De flip-flops van de geadresseerde locatie bewaren het door de CPU gegeven woord.
7. De CPU maakt CS, RD en WR lijnen terug laag ter voorbereiding van de volgende cyclus.


#### organisatie van RAM-chips

Naast de totale opslagcapaciteit in Kibit, Mibit of Gibit, is ook de organisatie van de chip belangrijk, want het aantal data- en adreslijnen hangt ervan af.

##### Voorbeeld:
![[Pasted image 20241203114802.png]]

### RAM-modules

RAM-chips combineren in één module (“latje”) om een groter RAM-geheugen te bouwen

#### Voorbeeld:

We willen een geheugenmodule maken met:
	- totale *geheugencapaciteit : 128 bit*
	- *woordbreedte : 4 bit*

*Hoeveel woorden* (van 4 bit) kunnen we dan opslaan? *32 woorden* (128/4)

*Hoeveel datalijnen* zal de module hebben? *4 datalijnen*

*Hoeveel adreslijnen* heeft onze module? *5 adreslijnen* (chipselect1 + chipselect2 + adreslijn 0 + adreslijn 1 + adreslijn 2 )

*Welke stuurlijnen* heeft onze module? *WR, RD, CS*

#### Situatie 1:

Maak 128-bit-module (32x4bit) met 4 chips van 32x1 bit

Aantal datalijnen bij 32x1-chip? 1 datalijn
Aantal adreslijnen bij 32x1-chip? 5 adreslijnen
Welke stuurlijnen heeft 32x1-chip? WR, RD, CS

Hoe organiseren we onze module?
– Elke chip zorgt voor 1 datalijn
– Elke chip gebruikt dezelfde 5 adreslijnen
– CS is voor elke chip gemeenschappelijk
– ook RD en WR zijn gemeenschappelijk

![[Pasted image 20241203115625.png]]



