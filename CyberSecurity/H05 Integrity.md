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



