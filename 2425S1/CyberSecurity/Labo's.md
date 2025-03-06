# Inloggegens
## SSH inloggegevens

- Host: vichogent.be
- Port: 40048
- User: student
- Password: HackMe1337

```bash
ssh student@vichogent.be:40048
```
# H1
## Bescherm je digitale zelf

Als cybersecurity expert zorg je er uiteraard voor dat je eigen materiaal voldoende beveiligd is. In deze eerste opdracht zullen we enkele basisstappen nemen om je digitale zelf voldoende te beschermen.

### 1. Beveilig fysiek jouw toestel
- wachtwoord op jouw toestellen
- scherm jouw webcam af met een webcam cover
- webcam of microfoon. Denk dus steeds goed na voor je een apparaat koopt of het betrouwbaar is

### 2. Update steeds alle toestellen
- Update niet alleen jouw laptop, smartphone, ... , maar ook andere toestellen zoals smart Tv's
- Oudere Windows versies worden niet meer ondersteund, dus zorg ervoor dat je een recentere Windows hebt dan XP, Vista of 7.

### 3. Virusscanner (antivirus)
- Windows computers komen tegenwoordig standaard met Windows Defender
- Er bestaan veel frauduleuze tools die beweren een virusscanner te zijn, maar in realiteit malware bevatten
- AV-test ( [https://www.av-test.org/](https://www.av-test.org/) )
- malwarescanner jouw toestel te controleren op malware. [https://www.malwarebytes.com/](https://www.malwarebytes.com/) .
- nooit 2 virusscanners tegelijkertijd
### 4. Firewall
- Er zijn hierbij 2 mogelijkheden:
	- Je laat default alle connecties toe, en blokkeert specifiek bepaalde diensten. Dit is de eenvoudigste, maar minst veilige optie. Als een aanvaller merkt dat een bepaalde poort geblokkeerd is, kan hij gewoon een andere poort gebruiken, en via een portscan kan hij snel achterhalen welke poorten open staan.
	- Een beter alternatief is om default alle verkeer (of op zijn minst: alle inkomende verkeer) te blokkeren, en specifiek in te stellen welk verkeer wél door mag.

- Windows heeft standaard een firewall. Zorg ervoor dat deze dus steeds aan staat!
- Indien je toch graag een alternatief wil, geven we hier enkele grote namen:
	- ZoneAlarm: [https://www.zonealarm.com/software/free-firewall/](https://www.zonealarm.com/software/free-firewall/)
	- Comodo: [https://personalfirewall.comodo.com/](https://personalfirewall.comodo.com/)
	
### 5. Password Manager
- Op [https://haveibeenpwned.com/](https://haveibeenpwned.com/) kun je alvast eens kijken, op basis van je e-mailadres, of jouw gegevens al onderdeel uitmaken van een tot op heden gekend datalek
- **Omdat goede wachtwoorden gebruiken tegenwoordig ontzettend belangrijk is, wordt dit uitgelicht in een eigen labo opdracht!**
- https://github.com/dani-garcia/vaultwarden

### 6. Gebruik zoveel mogelijk 2FA (Two-Factor Authentication)
- Bij 2FA moet je niet enkel je wachtwoord ingeven, maar ook bewijzen wie je bent met iets dat je hebt.

### 7. HTTPS
- Surf enkel naar websites die beginnen met `https://`
- wordt al het verkeer tussen jou en die website geëncrypteerd. Zo kan er niemand luistervinken
### 8. Controleer website certificaten
- Officiële sites zijn gecertificeerd door beveiligingsbedrijven
- Controleer dit zeker na bij websites voor e-mail, banktransacties, ... .

### 9. Private/incognito-modus bij browsers
- verstopt surfgedrag enkel voor andere gebruikers van jouw toestel die met dezelfde webbrowser als jou werken
### 10. Let op als je hardware weggooit, weggeeft of verkoopt
- Als iets wordt verwijderd op een harde schijf/usb stick/SSD/... , worden de bytes op die mediadrager niet op 0 gezet.
- https://www.ccleaner.com/recuva
- https://www.lifewire.com/free-data-destruction-software-programs-2626174
- De interne schijf verbrijzelen: dit kan op verschillende manieren. Een bekende manier is het doorboren van de schijf met een boormachine op 3 of meer plaatsen. Zorg ervoor dat je zeker de interne schijf hebt geraakt.

### 11. Custom DNS (geavanceerd)
- privacy. Aangezien je alle aanvragen naar je ISP stuurt, weet deze welke sites je bezoekt
- dergelijke aanvragen niet geëncrypteerd verstuurd worden over het internet.
- veilige vorm van DNS (DNSsec, maar deze technologie is nooit doorgebroken doordat de configuratie omslachtig is. Tegenwoordig is DNSCrypt wel in opkomst, maar ook dit vraagt wel wat kennis om te configureren).
- 'veilige' DNS servers die duidelijk aangeven dat ze geen informatie bijhouden. Merk op: op internet wordt vaak aangeraden om de DNS servers van Google te gebruiken (8.8.8.8 en 8.8.4.4). Hiermee zal je misschien de beruchte Belgische torrent wall kunnen omzeilen
- Pi-hole ( [https://pi-hole.net/](https://pi-hole.net/) ) of Adguard Home ( [https://adguard.com](https://adguard.com) ).

### 12. VPN, Tor, ... (geavanceerd)
- [https://whatismyipaddress.com/](https://whatismyipaddress.com/)
- VPN: al al je inkomend en uitgaand verkeer niet volgens het normale pad verlopen, maar zal alle verkeer eerst via VPN server passeren - op die manier lijkt het alsof je surft vanaf de server (die een ander IP-adres heeft dan jijzelf)
	- Wireguard
- Tor: een alternatief voor VPN is om gebruik te maken van het Tor netwerk. Hierbij werk je niet met een vaste server, maar worden alle uitgaande en binnenkomende berichten geëncrypteerd en speciaal gerouteerd over een aantal tussenliggende nodes, waarbij elke node enkel de volgende en vorige node kent. Op die manier is het bijna onmogelijk voor een tussenliggende node om te achterhalen van waar het pakket komt

### 13. Encryptie (geavanceerd)
- bestanden verbergen door gebruik te maken van encryptie
- - Veracrypt: [https://www.veracrypt.fr/](https://www.veracrypt.fr/)
- Rar-, zip- of 7z-bestanden met wachtwoordbeveiliging: [https://www.7-zip.org/](https://www.7-zip.org/
- GPG: [https://www.gpg4win.org/](https://www.gpg4win.org/)
- BitLocker: [https://docs.microsoft.com/en-us/windows/security/information-protection/encrypted-hard-drive](https://docs.microsoft.com/en-us/windows/security/information-protection/encrypted-hard-drive)

### 14. Meer weten?
- Je vindt op de volgende sites nog veel meer (geavanceerdere) informatie:
	- [https://ssd.eff.org/](https://ssd.eff.org/)
	- [https://privacyguides.org/](https://privacyguides.org/)

### 15. Tools om jezelf te testen
- [https://haveibeenpwned.com/](https://haveibeenpwned.com/) (Is jouw account al eens gehackt?)
- [https://www.safeonweb.be/index.php/nl/doe-de-phishingtest](https://www.safeonweb.be/index.php/nl/doe-de-phishingtest) (Kan jij phishing mails herkennen?)
- [https://www.eicar.org/download-anti-malware-testfile/](https://www.eicar.org/download-anti-malware-testfile/) (Probeer de 4 bestanden: eicar.com, eicar.com.txt, eicar_com.zip en eicarcom2.zip. Detecteert jouw antivirus ze allemaal? Heb je het ook geprobeerd met onderstaande string? Zie [https://en.wikipedia.org/wiki/EICAR_test_file](https://en.wikipedia.org/wiki/EICAR_test_file) voor meer informatie.)
```
X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*
```
- [https://www.wicar.org/test-malware.html](https://www.wicar.org/test-malware.html)
- [https://www.amtso.org/security-features-check/](https://www.amtso.org/security-features-check/)
- [http://shieldcheck.com/](http://shieldcheck.com/) (Controleert enkel basispoorten.)
- [https://www.grc.com/shieldsup](https://www.grc.com/shieldsup) (Controleert de eerste 1056 poorten.)
- [https://www.knowbe4.com/ransomware-simulator](https://www.knowbe4.com/ransomware-simulator) (Test jouw verdediging tegen ransomware en cryptomining malware. Je kan de tool rechtstreeks downloaden zonder account van [https://ransim.knowbe4.com/downloads/ransim.zip](https://ransim.knowbe4.com/downloads/ransim.zip) . Het passwoord voor de zip is `knowbe4`.)

##  Enkele netwerktermen

### Wat is een IP-adres?
Elk toestel op het internet krijgt een uniek nummer. Dit nummer is het IP-adres genoemd en bestaat uit 4 cijfers tussen 0 en 255 aan elkaar geplakt met een `.` (punt). Bijvoorbeeld: `142.250.74.206` of `8.8.8.8` . Je kan jouw IP adres vinden op [https://www.whatismyip.com/](https://www.whatismyip.com/) .

- Straat + huisnummer + postcode + gemeente duidt jouw huis uniek aan in de wereld == IP-adres
### Wat is een poort?
Om te weten welk internetverkeer er voor welk programma is bedoeld, krijgt elk programma een nummer tussen 0 en 65534. Dit nummer is dan het poortnummer voor dat programma.

- Voornaam + achternaam duidt aan voor wie de brief bedoeld is in dat huis (er kunnen immers verschillende mensen op hetzelfde adres wonen) == poortnummer

### Wat is DNS?
DNS is een technologie die domeinnamen vertaald naar IP-adressen, aangezien domeinnamen voor computers weinig betekenis hebben; zij verstaan enkel IP-adressen.

## Password manager
- **lang en complex wachtwoord**
- **voor elk account een ander wachtwoord**
- [https://haveibeenpwned.com/](https://haveibeenpwned.com/)
- **password manager**
- **tweestapsverficatie** toe, ook bekend als **2-FA** of **Two-Factor Authentication**
- 2-FA is **TOTP** wat staat voor **Time-based One-Time Passwords**. Hierbij wordt een tijdsgevoelige code gegenereerd die je samen met je login en wachtwoord moet invoeren om aan te melden. https://www.twilio.com/docs/glossary/totp

### Hoe maak je een goed wachtwoord?
- Elk wachtwoord is compleet **uniek**!
- geen woorden, quotes, geboortedata
- Gebruik geen wachtwoorden die voorkomen in lijsten van vaak gebruikte wachtwoorden zoals [https://www.passwordrandom.com/most-popular-passwords](https://www.passwordrandom.com/most-popular-passwords) of [https://en.wikipedia.org/wiki/List_of_the_most_common_passwords](https://en.wikipedia.org/wiki/List_of_the_most_common_passwords).
- Een wachtwoord moet zeker 16 of meer karakters bevatten.
- Gebruik verschillende soorten karakters in jouw wachtwoorden: letters, hoofdletters, cijfers, leestekens, spaties, ... .
- gebruik maken van passphrases. Meer info op [https://www.useapassphrase.com/](https://www.useapassphrase.com/) .
- Genereer geen wachtwoorden via websites!
- elke password manager een genereer-een-random-wachtwoord-functie aan
- lengte is het aller-aller-allerbelangrijkste! Belangrijker dan welke soorten karakters je er allemaal insteekt.

### Password Managers

#### Er zijn 3 types password managers

1. **Built-in password managers**: *deze password managers zitten ingebouwd in jouw webbrowser.* Als je net Chrome/Firefox/... hebt geïnstalleerd, krijg je een melding of je wil dat deze jouw gegevens bewaart. Deze password managers zijn vaak op bepaalde vlakken [minder veilig](https://www.avira.com/en/blog/browser-based-password-managers-vs-dedicated-password-managers) of beperkter in functionaliteit dan de password managers die enkel en specifiek gebouwd zijn om jouw wachtwoorden te bewaren. De password manager is ook niet bruikbaar als je wisselt tussen webbrowsers.
2. **Cloud-based password managers**: het bedrijf achter de password manager *synchroniseert jouw wachtwoorden in de cloud.* Bij een goede password manager worden jouw wachtwoorden geëncrypteerd voordat ze in de cloud worden bewaard.
	   - Bitwarden: [https://bitwarden.com/](https://bitwarden.com/) (in plaats van de server van het bedrijf te gebruiken, kan je ook indien gewenst zelf een eigen server opzetten: aanrader!)
	- 1Password: [https://1password.com/](https://1password.com/)
	- Dashlane: [https://www.dashlane.com/](https://www.dashlane.com/)
	- ~~Lastpass: [https://www.lastpass.com/](https://www.lastpass.com/)~~ (heeft al wat problemen gehad in het verleden: dus niet de beste keuze!)
3. **Local storage password managers:** *Deze programma's slaan de wachtwoorden op in een geëncrypteerd bestand op jouw computer.* Wil je dit bestand synchroniseren met andere toestellen, dan moet je dit zelf manueel doen via OneDrive/Dropbox/Google Drive/... (niet aan te raden) of Syncthing/Nextcloud/... . Als je het synchroniseren goed aanpakt (bv. met Syncthing) dan is dit natuurlijk een stuk veiliger dan de webhosted password managers omdat je zelf kiest waar het geëncrypteerd bestand terecht komt.
	   - KeepassXC: [https://keepassxc.org/](https://keepassxc.org/) (let goed op de naam! Varianten als KeePassX, KeePass, and KeePass2 worden minder actief ontwikkeld)
	- Enpass: [https://www.enpass.io/](https://www.enpass.io/)
	- Vaultwarden: https://github.com/dani-garcia/vaultwarden

#### Aan de slag met Bitwarden

Volgens [Forbes](https://www.forbes.com/advisor/business/software/best-password-managers/) is [Bitwarden](https://bitwarden.com/) de beste open-source password manager. Het voordeel van open-source software met een sterke community is dat bugs snel opgemerkt en verholpen worden wat de veiligheid meteen ook bevordert. Verder werkt Bitwarden cross platform (Windows, Mac, Linux, ...) en biedt het ook browser plugins aan die logingegevens automatisch kunnen invullen.

Maak een wachtwoordkluis aan op Bitwarden:

1. Maak een account aan via [https://vault.bitwarden.eu/#/register](https://vault.bitwarden.eu/#/register). **Tip**: gebruik een sterke **passphrase** als master password voor je kluis die je kunt onthouden.
2. Via [https://vault.bitwarden.eu/#/login](https://vault.bitwarden.eu/#/login) kun je achteraf met je geregistreerd e-mailadres en master password aanmelden om je kluis te raadplegen.
3. Voltooi de registratie door je e-mailadres te verifiëren.

Installeer minstens de desktop app én een browser plugin. Instructies hiervoor zijn hier te vinden: [https://bitwarden.com/download/](https://bitwarden.com/download/).

## TOTP: Authy

Zoals in de inleiding vermeld, is een TOTP een vorm van **2-FA**. Een TOTP kun je **via e-mail of SMS** ontvangen, maar een veiliger methode is om die **via een authenticator app** te laten genereren. SMS wordt sterk afgeraden, tenzij er geen andere 2-FA alternatief is (Beter SMS dan helemaal geen 2-FA).

Er bestaan verschillende authenticator apps zoals Google Authenticator, Microsoft Authenticator, Authy, ... . Onze keuze ligt hier bij **Authy**: [https://authy.com/](https://authy.com/). Het werkt cross-platform en voorziet een veilige backup in de cloud voor al je 2-FA geactiveerde accounts.

Probeer dit zelf eens uit met één of meerdere accounts naar keuze. Bv.

- Hogent: [https://www.hogent.be/helpdesk/mfa/](https://www.hogent.be/helpdesk/mfa/)
    - Tip: voor de tweestapsverificatie van jullie HOGENT-account wordt in de handleiding SMS of Microsoft authenticator voorgesteld, maar dit lukt ook perfect met Authy.
- Google: [https://myaccount.google.com/signinoptions/two-step-verification/enroll-welcome](https://myaccount.google.com/signinoptions/two-step-verification/enroll-welcome)
- Protonmail: [https://proton.me/support/2fa-security-key](https://proton.me/support/2fa-security-key)
- GitHub: [https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/about-two-factor-authentication](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/about-two-factor-authentication)
- Facebook: [https://www.facebook.com/help/148233965247823/](https://www.facebook.com/help/148233965247823/)
- ...

Tip: Heb je geen smartphone, maar wil je wel gebruik maken van TOTP? Vaak ondersteunen password managers ook TOTP, waardoor jouw password manager de rol van Authy kan vervullen. Dit is minder ideaal dan Authy, maar beter dan geen 2-FA of SMS 2-FA te gebruiken.


# H2

GEEN LABO
# H3

## Hoe open ik een command line / PowerShell venster?

- Vanaf het startmenu (klikken op Windows-icoontje, of de Windows-toets op het toetsenbord indrukken): typ `powershell` in.
- In de map waarin je een Powershell venster will openen: Houdt shift in en klik met de rechtermuisknop in open ruimte. Klik in het geopende menu op `Open PowerShell Window here ...`.

- [https://www.howtogeek.com/662611/9-ways-to-open-powershell-in-windows-10/](https://www.howtogeek.com/662611/9-ways-to-open-powershell-in-windows-10/)
- [https://www.youtube.com/watch?v=tdzoX_M5dQU](https://www.youtube.com/watch?v=tdzoX_M5dQU)

## SQL Injection

Voor dit programma gebruiken we `sql-injection-tester`. Je kan het .jar-bestand [hier](https://hogenttin.github.io/cybersecurity/h3/sql-injection/files/sql-injection-tester.jar) downloaden.

```powershell
java -jar sql-injection-tester.jar
```

### Inloggen zonder account (**inbreuk op confidentiality**)

Het programma toont een login. Het doel is om in te loggen zonder dat je het wachtwoord weet. Om dit te doen gebruiken we SQL injection codes. Je hebt nog geen ervaring met de SQL-programmeertaal (dat is voor het vak Databases), je moet deze dus ook nog niet begrijpen. Je vindt veel voorbeelden op het internet als je zoekt op `SQL injection examples`. Je zoekt naar SQL injection codes die als volgt zijn opgesteld (let goed op de apostrof en 2 mintekens):

```sql
' opgezochtesqlcode --
```

```sql
' OR 1=1 --
```

Je kan dergelijke codes op verschillende manieren gebruiken:

- Je weet de gebruikersnaam van de gebruiker (`Joeri`): welke code kan je ingeven in het wachtwoord-veld om in te loggen?
    
- Je weet zelfs de gebruikersnaam niet: welke code kan je gebruiken in het gebruikersnaam-veld? Moet je dan nog iets invullen in het wachtwoord-veld? Er zijn codes die gebruik maken van slechts 1 van de 2 of waarvoor er in beide velden iets ingevuld moet worden.

Onderaan het programma zie je de inhoud van de databank. Een echt programma of website zal deze uiteraard nooit tonen. De databank past zich automatisch aan als er iets veranderd. Om het programma terug te herstellen naar oorspronkelijke waarden sluit je het af en start je het opnieuw op.

### Een account toevoegen (**inbreuk op integrity*)

Met de juiste SQL injection code kan je zelfs een account toevoegen. Zoek hiervoor SQL injection codes op die het woord `INSERT` bevatten. Een tip: de databank noemt `accounts` (`Users` in de Windows-only versie) en bevat de kolommen `username` (gebruikersnaam) en `password`.

Als je de code ingeeft, krijg je de foutmelding dat er een foute gebruikersnaam en/of wachtwoord is ingegeven. Ook al heb je deze foutmelding, je merkt dat de door jou geïnjecteerde gebruikersnaam en wachtwoord nu wel zijn opgenomen in de databank. Je kan je nu met de door jou geïnjecteerde gebruikersnaam en wachtwoord inloggen.

```sql
' OR 1=1; INSERT INTO accounts(username, password) VALUES ('hacker', 'wachtwoord') --
```
### De databank verwijderen (**inbreuk op availability**)
### Enkele hulpbronnen:

- [https://github.com/payloadbox/sql-injection-payload-list](https://github.com/payloadbox/sql-injection-payload-list)
- [https://www.openbugbounty.org/blog/ismailtsdln/sql-injection-payload-list/](https://www.openbugbounty.org/blog/ismailtsdln/sql-injection-payload-list/)
- [http://www.unixwiz.net/techtips/sql-injection.html](http://www.unixwiz.net/techtips/sql-injection.html)
- [https://www.softwaretestinghelp.com/sql-injection-how-to-test-application-for-sql-injection-attacks/](https://www.softwaretestinghelp.com/sql-injection-how-to-test-application-for-sql-injection-attacks/)
- [https://pentest-tools.com/blog/sql-injection-attacks/](https://pentest-tools.com/blog/sql-injection-attacks/) (geavanceerd)

# H4

## Encryptie met HoGent e-mail

Doorgewinterde cybersecurityspecialisten maken gebruiken van tools zoals GPG om geëncrypteerde e-mails te versturen. Deze software is vrij ingewikkeld en vraagt goede kennis van de command line. Voor de gewone gebruiker bestaan er ook e-mailproviders die geëncrypteerde e-mail aanbieden. Enkele bekende voorbeelden:

- [https://protonmail.com/](https://protonmail.com/)
- [https://www.tutanota.com/](https://www.tutanota.com/)

Daarnaast biedt ook de HoGent e-mail deze functie aan. Om dit aan te tonen zullen we een geëncrypteerde e-mail naar onszelf sturen, met een niet-HoGent e-mailadres in CC.

1. Log je online op jouw HoGent e-mailaccount via [https://webmail.hogent.be](https://webmail.hogent.be) .
2. Schrijf een test-mail naar jouw eigen HoGent e-mailadres.
3. Zet jouw eigen niet-hogent privé e-mailadres in CC.
4. Stel deze e-mail in als geëncrypteerd door `Encrypt` te selecteren (onder `Options`). Er komt dan een lijn tekst tevoorschijn dat deze e-mail geëncrypteerd zal verzonden worden.
5. Verstuur de e-mail.
6. Wacht tot je de e-mail terug ontvangt in jouw HoGent mailbox. Je zal zien dat je deze kan lezen zonder iets te moeten doen. Dit komt omdat Outlook 365 de mail automatisch voor decrypteerd.
7. Bekijk nu de e-mail via jouw privé e-mailadres dat je in CC had geplaatst. De e-mail toont een knop waarmee je je kan inloggen om de mail te bekijken. De e-mail is dus niet zichtbaar voor onbevoegden en de vertrouwelijkheid is dus gegarandeerd.

## Bestanden encrypteren met symmetrische encryptie

### Encryption met zip file

Indien de bestanden die je wil versturen niet zo belangrijk zijn, of je niet genoeg ervaring hebt met encryptie, kan je steeds een beroep doen op verpakkingsprogramma's om bestanden met een paswoord te versleutelen. Hier zullen we gebruik maken van 7-zip ( [https://www.7-zip.org/](https://www.7-zip.org/) ) om .zip-bestanden te maken met een wachtwoord. Je kan dit ook doen met andere zip tools zoals WinRAR of PeaZip.

1. Download het 7-zip installatieprogramma van [https://www.7-zip.org/](https://www.7-zip.org/) . Je download hier de 64-bit versie (x86_64).
2. Dubbelklik op het gedownloade bestand om het te installeren.
3. Open Windows Explorer en ga naar de bestanden die je wil encrypteren.
4. Selecteer deze bestanden en druk op de rechtermuisknop. Je zal zien dat er daar een menu is bijgekomen voor 7-zip. Klik op `7-zip` > `Add to archive...`.
5. In het venster dat verschijnt kan je alles instellen om het .zip-bestand aan te maken. We hebben 4 belangrijke opties aangeduid:
	- `Archive`: geef hier de gewenste naam in van het .zip-bestand.
	- `Archive format`: Je kan er ook voor kiezen om een .7z- of .tar-bestand te maken in plaats van een .zip-bestand.
	- `Compression level`: Als je wil kan je proberen de bestanden te comprimeren om het bestand kleiner te maken. `Store` betekent dat dit niet moet en bestanden worden toegevoegd aan het .zip-bestand zoals ze zijn. Dit is ook het snelst.
	- `Enter password`: Hier kan je een paswoord ingeven. Bij `Encryption method` kan je kiezen op welke manier het .zip-bestand wordt geëncrypteerd. `AES-256` is een goede keuze.
6. Druk op OK en je ziet dat jouw .zip-bestand werd aangemaakt in dezelfde map. De bestanden in de zip zijn geëncrypteerd: dit kan je zien door de `+` in de kolom `Encrypted`.

 Als je het .zip-bestand opent zie je de bestanden die in het .zip-bestand zitten. *Pas als je dit .zip-bestand probeert uit te pakken of er een bestand uit probeert te openen, zal het paswoord gevraagd worden*. Let op dat je de bestanden specifiek opent **met 7-zip en niet met de Windows Verkenner**. Windows verkenner heeft slechts een eenvoudige ondersteuning voor archiefbestanden en kan niet overweg met archiefbestanden beveiligd met een wachtwoord.

*Als je niet wil dat iemand kan zien welke bestanden er in het .zip-bestand zitten, dan zal je creatief moeten worden*: steek de bestanden in een .zip-bestand (dit bestand hoeft niet geëncrypteerd te worden) en plaats dat bestand dan op zijn beurt in een geëncrypteerd .zip-bestand. Test dit zelf eens uit!

Indien je wil kan je het .zip-bestand hernoemen naar bijvoorbeeld `boodschappenlijst.txt` om het bestand minder verdacht te maken. *Iemand met kennis van zaken kan wel met een hexeditor achterhalen dat dit stiekem een .zip-bestand is*.

De opties voor encryptie zijn in 7-zip vrij beperkt. *Programma's zoals 7-zip worden vooral gebruikt voor compressie* (het verkleinen van bestanden), de encryptie is meer een extraatje. **Er wordt hier gebruik gemaakt van symmetrische encryptie**, dus als je dit bestand wil verzenden naar iemand *moet je deze op een veilige manier het paswoord bezorgen*. Stuur dus niet het paswoord mee via e-mail, als je het .zip-bestand al via e-mail verstuurd. Gebruik een ander veilig communicatiekanaal voor het paswoord zoals bijvoorbeeld telefoneren of in het echt afspreken.

### VeraCrypt

Een tool die meer geschikt is om bestanden te verbergen met symmetrische encryptie is VeraCrypt. Dit is een opvolger van TrueCrypt, waarvan de ontwikkeling in 2014 plots werd stilgezet zonder gekende reden (al zijn er veel wilde theorieën). Met VeraCrypt kan je bestanden aanmaken die dienen als virtuele harde schijf. Deze zijn geëncrypteerd met gekende encryptie-algoritmes en hebben extra features beveiligingsfeatures. Zo is het bijvoorbeeld onmogelijk om te bewijzen dat een bestand een VeraCrypt container is, zelfs met een hexeditor (dit wordt ook wel `plausible deniability` genoemd). Soms kan het ook voorvallen dat je verplicht wordt om een paswoord op te geven (bv. bij afpersing, bedreiging, ...). Je kan daarvoor een extra paswoord instellen dat je kan opgeven als je onder druk wordt gezet waardoor er slechts door jou geselecteerde onbelangrijke zaken worden getoond (ook wel `hidden volumes` genoemd).

1. Download en installeer VeraCrypt vanop [https://www.veracrypt.fr/en/Downloads.html](https://www.veracrypt.fr/en/Downloads.html) .
2. Open VeraCrypt en klik op `Create Volume`.
3. Kies voor `Create an encrypted file container` .
4. Bij de volgende pop-up over `administrator priviliges` druk je op `No`.
5. Kies voor een `Standard VeraCrypt volume`.
6. Druk op `Select File...` om te kiezen waar jouw container zal worden opgeslagen en met welke naam.
7. Stel de juiste encryptie algoritmes in. Je kan hier ook jouw systeem testen op snelheid via `Benchmark`, mar dat is niet per se nodig. AES als encryptie-algoritme en SHA-512 als hashing algoritme zijn op dit moment goede keuzes.
8. Kies hier de grootte van jouw container.
9. Stel hier jouw paswoord in. De opties `Use keyfiles` en `Use PIM` zijn voor dit labo niet van toepassing.
10. Om de encryptie sleutels te genereren heeft het systeem random data nodig. Hoe meer random, hoe beter. Om goede random data te hebben wordt er gevraagd om met de muis over het venster te bewegen tot de balk groen wordt. Als de balk groen is, is er genoeg random data om de encryptie sleutels aan te maken. Druk dan op `Format`. Hierna kom je terug op het basisvenster terecht mocht je nog een container willen maken.

Je zal nu zien dat er een bestand is aangemaakt op de plaats die je hebt aangeduid met de grootte die je hebt opgegeven. Om hierin bestanden op te slaan, moet je deze container `koppelen`. Je kan dit vergelijken met het aansluiten van een USB-stick.

1. Klik op op een schijfletter en dan op `Select File...` om een container te selecteren.
2. Druk op `Mount`.
3. Typ jouw paswoord voor de container in en druk op `Ok`. Je hebt de opties nu niet nodig.
4. Het duurt even om de container te koppelen. Eenmaal gekoppeld is deze zichtbaar in de lijst.
5. Nu is de container gekoppeld aan jouw systeem. Als je nu gaat kijken bij Windows Explorer zal het lijken alsof je een USB-stick hebt aangesloten op de schijfletter die je daarnet had geselecteerd. Je kan nu bestanden erin kopiëren, verplaatsen, bewerken, verwijderen, ... alsof het een gewone map is op jouw toestel. Je kan de map ook openen door op de letter te dubbelklikken in VeraCrypt.
6. Als je de map weer wil sluiten, selecteer dan in VeraCrypt de schijf en klik op `Dismount`. Dit kan terug even duren afhankelijk van de grootte van de container. Je kan ook alle containers in een keer afsluiten door de knop `Dismount All`.

Opnieuw kan je je container hernoemen naar iets minder verdachts zoals `cursus_cybersecurity.pdf`. VeraCrypt containers zijn moeilijk te kraken als je een paswoord neemt met voldoende lengte. Ook is het onmogelijk te zijn welke bestanden erin zitten zonder het paswoord in tegenstelling tot bij .zip-bestanden. Dit samen met `plausible deniability` en `hidden volumes` maken VeraCrypt een uitstekende keuze om bestanden te verbergen!

Je kan VeraCrypt containers ook opslaan in de cloud (OneDrive, Google Drive, DropBox, MEGA, ...). Ze zijn immers geëncrypteerd. Er zijn zelfs tools die dit automatiseren voor jou, zoals bv. [https://cryptomator.org/](https://cryptomator.org/) .

## .zip-bestanden kraken

### Over welk bestand gaat het?[¶](https://hogenttin.github.io/cybersecurity/h4/zip-kraken/zip-kraken/#over-welk-bestand-gaat-het "Permanent link")

Alvorens we een bestand kunnen kraken, moeten we eerst weten wat voor type het bestand is. Meestal wordt er gekeken naar de extensie (bv. `txt` in `test.txt`, `mp4` in `movie.mp4`, `docx` in `somedocument.docx`, ...). Op windows moet je in Windows Verkenner vaak instellen dat je expliciet de extensies wil zijn van bestanden, anders verbergt Windows deze. Dit is vaak verwarrend, dus stel in dat Windows verkenner deze altijd toont: [https://www.howtogeek.com/205086/beginner-how-to-make-windows-show-file-extensions/](https://www.howtogeek.com/205086/beginner-how-to-make-windows-show-file-extensions/) .

Kijken naar de extensie kan bedrieglijk zijn, want iedereen kan een bestandsnaam (en dus ook de bijhorende extensie) zomaar aanpassen en wijzigen. De inhoud van het bestand verandert daarbij niet, maar je kan een bestand zo wel onopvallend verbergen door bv. `malware.exe` te hernoemen naar `boodschappenlijstje.txt`. We hebben dus iets robuuster nodig. Laten we kijken naar de exacte bytes van een bestand met behulp van een hex editor:

1. Installeer een hexeditor zoals bv. [ImHex](https://github.com/WerWolv/ImHex/releases) .
2. Open een willekeurig .zip-bestand met de hexeditor.

Je ziet dat het bestand begint met de bytes 0x50 en dat deze worden omgezet naar de karakters `PK`. De eerste bytes van een bestand worden vaak de "magic bytes" genoemd omdat deze aanduiden over welk type bestand het gaat. Hernoem het bestand naar `test.txt`. Je zal zien dat de magic bytes (en de rest van de inhoud) niet veranderen.

Beantwoord volgende vragen:

- Probeer dit uit met verschillende .zip-bestanden, zijn de magic bytes telkens hetzelfde?
- Bekijk een VeraCrypt bestand met een hexeditor, welke magic bytes worden er gebruikt voor VeraCrypt containers?
- Bekijk verschillende VeraCrypt containers in de hexeditor, zijn de magic bytes overal hetzelfde?

Dit was een korte intro over magic bytes, deze worden verder bekeken in het vak Cybersecurity & Virtualisation.

### John the Ripper[¶](https://hogenttin.github.io/cybersecurity/h4/zip-kraken/zip-kraken/#john-the-ripper "Permanent link")

Nu je een .zip-bestand met wachtwoord kan maken en we kunnen achterhalen dat het om een .zip-bestand gaat, zullen we deze ook eens proberen te kraken. Hiervoor gebruiken we het programma John the Ripper. Dit programma kan enorm veel, maar we gaan dit nu enkel gebruiken om .zip-bestanden te kraken.

1. Download [easy.zip](https://hogenttin.github.io/cybersecurity/h4/zip-kraken/easy.zip). Dit .zip-bestand is geëncrypteerd met een speciaal zwak wachtwoord zodat je meteen de zip kan kraken.
2. Download `1.9.0-jumbo-1 64-bit Windows` vanop [https://www.openwall.com/john/](https://www.openwall.com/john/) en sla dit .7z-bestand op in dezelfde map als `easy.zip`.
3. Open de map die `easy.zip` bevat in Windows Explorer. Pak `john-1.9.0-jumbo-1-win64.7z` uit zodat je een map `john-1.9.0-jumbo-1-win64` krijgt in dezelfde map als `easy.zip`.
4. Hou Shift in en druk met de rechtermuisknop op een lege plaats in de map. In het menu dat nu verschijnt druk je op `Open PowerShell window here`. Er zal nu een blauw PowerShell venster tevoorschijn komen.
5. Typ in dit venster lijn per lijn de volgende 4 commando’s. Je hoeft deze niet 100 % te begrijpen. Let op, krijg je een `No such file or directory` fout, dan zijn de relatieve paden die je gebruikt niet correct. Kijk goed in welke map je je bevindt op de terminal en waar de nodige commando’s en bestanden staan. Zorg ervoor dat de relatieve paden juist zijn.
	- Ga in de map `john-1.9.0-jumbo-1-win64\run\` :
	  ```powershell
cd .\john-1.9.0-jumbo-1-win64\run\
```
	- Haal de hashes uit de zip (**Let wel op**, vervang `..\..\easy.zip` met de locatie van het `easy.zip`-bestand.):
	  ```powershell
.\zip2john.exe ..\..\easy.zip > hashes.txt
```
	- Soms krijg je hier de volgende warning:
	  ```powershell
ver 5.1 ..\..\..\superduperdifficult.zip/Hacking the internet.mp4 is not encrypted, or stored with non-handled compression type	  
```
	  - Zolang het `hashes.txt` bestand is aangemaakt en inhoud bevat, is dit geen probleem. Je kan dit verifiëren met `cat`:
	    ```bash
$ cat hashes.txt
superduperdifficult.zip/Hacking the internet.mp4:$zip2$*0*3*0*b970acd3510b257fb6f3286d7f2fce8d*8bc9*cf0d5c*9a772ec01824a5c7e811638bf3fc5099c9215ec43df92895a7a99d3d2277733c6bda ...
```
	- Je kan de grootte checken in Powershell:
	  ```powershell
PS> (Get-Item "hashes.txt").Length / 1MB
0.388114929199219
```
	- Probeer de hashes te kraken:
	  ```powershell
Get-Content -Encoding Unicode .\hashes.txt | Set-Content -Encoding UTF8 .\hashes2.txt
```

```powershell
.\john.exe .\hashes2.txt
```
6. Het programma probeert nu het .zip-bestand te kraken. Je kan op enter duwen om een update te krijgen of `q` om het te stoppen. De update geeft onder andere de volgende informatie:
    - De tijd dat het programma er tot nu toe heeft over gedaan.
    - p/s: kandidaat wachtwoorden getest per seconde
    ![](./attachments/20241216123001.png)
	In de screenshot hierboven werd het wachtwoord `letmein` gevonden.

Als je opnieuw probeert, zal John the Ripper zeggen dat hij dit al heeft gekraakt. Je kan dit dan zien met het volgende commando. Om John the Ripper dit te laten vergeten, delete je het `john.pot` bestand.

Het wachtwoord vinden kan enorm lang duren. John the Ripper probeert daarom verschillende manieren:

1. Hij probeert aan de hand van een lijst eerst de meest voorkomende wachtwoorden uit. Als het wachtwoord zich in die lijst bevindt, wordt het wachtwoord binnen de minuut geraden. `thisisit` is een voorbeeld van zo een woord uit de lijst. John the Ripper komt zelf met een kleine standaard lijst `password.lst` in de map `john-1.9.0-jumbo-1-win64` > `JtR` > `run`. Je kan natuurlijk zelf lijsten maken of downloaden.
2. Hij probeert alle mogelijke combinaties: a, b, c, ... , x, y, y, aa, ab, ac, ...,ax, ay, az, ba, bb, bc, ..., bx, by, bz, ... . Dit duurt natuurlijk enorm lang! Als we stellen dat het aantal verschillende symbolen (kleine letters, hoofdletters, leestekens, ...) op 128 ligt [1](https://hogenttin.github.io/cybersecurity/h4/zip-kraken/zip-kraken/#fn:1), dan kunnen we het aantal mogelijke wachtwoorden van lengte n berekenen met

. Als je weet dat cybercriminelen tot miljoenen pogingen kunnen doen per seconde, wordt het duidelijk dat een wachtwoord maar beter lang genoeg kan zijn. Nu bij dit programma wordt er default gebruik gemaakt van de CPU, waardoor het kraken van een klein wachtwoord al uren of dagen kan duren. Cybercriminelen gebruiken verschillende grafische kaarten om dit proces enorm te versnellen.

| Aantal karakters | Aantal mogelijkheden                                                         |
| ---------------- | ---------------------------------------------------------------------------- |
| 1                | 128¹ = 128                                                                   |
| 2                | 128² = 16384                                                                 |
| 4                | 128⁴ = 268435456                                                             |
| 8                | 128⁸ = 72057594037927936                                                     |
| 16               | 128¹⁶ = 5192296858534827628530496329220096                                   |
| 32               | 128³² = 26959946667150639794667015087019630673637144422540572481103610249216 |
[https://www.reddit.com/r/dataisbeautiful/comments/322lbk/time_required_to_bruteforce_crack_a_password/](https://www.reddit.com/r/dataisbeautiful/comments/322lbk/time_required_to_bruteforce_crack_a_password/)

> On a 64bit quad-core i7 system [from 2014], without using GPU, and while doing some other CPU-intensive tasks, the password was cracked in 6.5 hours.

[https://dfir.science/2014/07/how-to-cracking-zip-and-rar-protected.html](https://dfir.science/2014/07/how-to-cracking-zip-and-rar-protected.html)

Je kan dit nu zelfs eens uittesten met de bestanden [easy.zip](https://hogenttin.github.io/cybersecurity/h4/zip-kraken/easy.zip) en [difficult.zip](https://hogenttin.github.io/cybersecurity/h4/zip-kraken/difficult.zip).

- `easy.zip` zou binnen de seconden gekraakt moeten worden, aangezien het wachtwoord voorkomt in de lijst van veel voorkomende wachtwoorden.
- `difficult.zip` zou langer moeten duren, aangezien het wachtwoord niet voorkomt in de lijst van veel voorkomende wachtwoorden. Dit kan uren tot zelfs dagen duren, afhankelijk van jouw systeem. We hebben het wachtwoord beperkt tot 4 karakters om dit relatief doenbaar te houden.
- Wil je een echte uitdaging? Probeer dan [superduperdifficult.zip](https://hogenttin.github.io/cybersecurity/h4/zip-kraken/superduperdifficult.zip) te kraken!

Andere gekende tools om wachtwoorden te kraken zijn Hydra ( [https://github.com/vanhauser-thc/thc-hydra](https://github.com/vanhauser-thc/thc-hydra) ) en Hashcat ( [https://hashcat.net/hashcat/](https://hashcat.net/hashcat/) ). Probeer gerust zelf eens op te zoeken hoe je de .zip-bestanden met deze tools kan kraken (geavanceerd: valt buiten de scope van deze opdracht).

### Resultaten[¶](https://hogenttin.github.io/cybersecurity/h4/zip-kraken/zip-kraken/#resultaten "Permanent link")

| Bestand         | Wachtwoord |
| --------------- | ---------- |
| `easy.zip`      | `letmein`  |
| `difficult.zip` | `h4ck`     |
#### Tijden (CPU)[¶](https://hogenttin.github.io/cybersecurity/h4/zip-kraken/zip-kraken/#tijden-cpu "Permanent link")

CPU: Intel i7-6700K
- `easy.zip`: Opgelost binnen de seconde.
- `difficult.zip`: Opgelost in 1 uur 34 min 2 sec.

#### Tijden (GPU)[¶](https://hogenttin.github.io/cybersecurity/h4/zip-kraken/zip-kraken/#tijden-gpu "Permanent link")

Door het gebruik te maken van grafische kaarten, kunnen veel meer pogingen gedaan worden per seconde. Dit kan het proces van kraken enorm versnellen. Het opzetten van John the Ripper met een GPU is wel al een stuk geavanceerder. Wie dit graag eens wil proberen kan dit doen met de tutorial op [https://suay.site/?p=1029](https://suay.site/?p=1029) .

GPU: Nvidia GTX 1080 Ti
- `easy.zip`: Opgelost binnen de seconde. Het duurt in totaal iets langer dan de CPU, omdat het meer werk vereist om de GPU klaar te zetten. Dit nadeel speelt enkel een rol bij aanvallen die heel snel gedaan zijn en is meestal dus te verwaarlozen.
- `difficult.zip`: Opgelost in 5 min 19 sec. Dat is 17.69 keer sneller dan met de CPU!

## Asymmetrische encryptie (GPC)

GPG is de tool voor cyberspecialisten om asymmetrische encryptie op te zetten en te gebruiken. Op Mac en Linux wordt dit vaak gedaan met het `gpg` commando op de command line. Op windows kunnen we hiervoor Gpg4win downloaden met een GUI. Gpg is vrij geavanceerd, dus leggen we hier enkel de basis uit om berichten te encrypteren en te decrypteren.

### Installatie

1. Download Gpg4win via [https://www.gpg4win.org/download.html](https://www.gpg4win.org/download.html) . Er wordt gevraagd of je wil doneren: dit mag, maar hoeft niet. Klik op "$0" en dan op "Download". Vergeet na het downloaden niet de SHA256 te controleren.
2. Dubbelklik op het gedownloade bestand "gpg4win-x.x.x.exe" om het te installeren. De default instelling zijn telkens goed.
3. Je kan nu kiezen om gpg op de command line te gebruiken, of om de GUI genaamd "Kleopatra" te gebruiken. Wij gaan voor de commandline. Vink `Run Kleopatra` uit.
4. Open een PowerShell venster en typ het commando `gpg --version` in, je zal de versie en informatie van de geïnstalleerde GPG software te zien krijgen:
```powershell
PS C:\Users\martijn> gpg --version
gpg (GnuPG) 2.4.3
libgcrypt 1.10.2
Copyright (C) 2023 g10 Code GmbH
License GNU GPL-3.0-or-later <https://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Home: C:\Users\martijn\AppData\Roaming\gnupg
Supported algorithms:
Pubkey: RSA, ELG, DSA, ECDH, ECDSA, EDDSA
Cipher: IDEA, 3DES, CAST5, BLOWFISH, AES, AES192, AES256, TWOFISH,
        CAMELLIA128, CAMELLIA192, CAMELLIA256
Hash: SHA1, RIPEMD160, SHA256, SHA384, SHA512, SHA224
Compression: Uncompressed, ZIP, ZLIB, BZIP2
```

### Genereren van een public/private sleutelpaar
Alvorens we gebruik kunnen maken van asymmetrische encryptie, moeten we eerst onze publieke en private sleutel genereren. Gebruik hiervoor het commando `gpg --gen-key` en vul je eigen informatie in. Tijdens de installatie wordt er gevraagd om een wachtwoord of passphrase aan jouw sleutel te geven. Dit wordt **sterk aangeraden** en versterkt de veiligheid van jouw sleutelpaar! Als iemand jouw apparaat steelt met daarop jouw sleutels, kan deze de sleutel nog steeds niet gebruiken zonder wachtwoord. Gebruik een lang wachtwoord of passphrase!

```powershell
PS C:\Users\martijn> gpg --gen-key
gpg (GnuPG) 2.4.3; Copyright (C) 2023 g10 Code GmbH
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Note: Use "gpg --full-generate-key" for a full featured key generation dialog.

GnuPG needs to construct a user ID to identify your key.

Real name: Martijn Saelens
Email address: martijn.saelens@hogent.be
You selected this USER-ID:
    "Martijn Saelens <martijn.saelens@hogent.be>"

Change (N)ame, (E)mail, or (O)kay/(Q)uit? O
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
gpg: revocation certificate stored as 'C:\\Users\\martijn\\AppData\\Roaming\\gnupg\\openpgp-revocs.d\\5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0.rev'
public and secret key created and signed.

pub   ed25519 2023-10-13 [SC] [expires: 2026-10-12]
      5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0
uid                      Martijn Saelens <martijn.saelens@hogent.be>
sub   cv25519 2023-10-13 [E] [expires: 2026-10-12]
```

De sleutel is nu klaar. Je krijgt op het einde ook de fingerprint te zin (`5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0` in het voorbeeld). Dit is een hash waarde van de publieke sleutel, wat het makkelijker maakt om sleutels te vergelijken via bijvoorbeeld telefoon.

### Jouw publieke sleutel verspreiden[¶](https://hogenttin.github.io/cybersecurity/h4/asymmetrisch-encrypteren/asymmetrisch-encrypteren/#jouw-publieke-sleutel-verspreiden "Permanent link")

Opdat anderen berichten naar jou berichten kunnen encrypteren, moeten ze aan jouw publieke sleutel kunnen geraken. Daarom moeten we de publieke sleutel exporteren en verspreiden. Dit kan met de `--export` optie waarbij je het e-mailadres of de fingerprint dat hoort bij sleutel opgeeft. Je merkt dat je hiervoor geen paswoord moet opgeven, het is immers compleet veilig om jouw publieke sleutel te verspreiden.
```powershell
PS C:\Users\martijn> gpg --output pubkey.gpg --armor --export 5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0
```

We gebruiken hier ook de `--armor` optie om ervoor te zorgen dat het bestand leesbaar is met een texteditor (bv. kladblok, Visual Studio Code, ...). Dit is niet per se nodig, maar kan handig zijn als je de sleutel op een leesbare maniuer wil tonen. Dit zorgt er ook voor dat we eens kunnen kijken naar de inhoud van de publieke sleutel:

```text
-----BEGIN PGP PUBLIC KEY BLOCK-----

mDMEZSkXAhYJKwYBBAHaRw8BAQdAFw9KQKS/w0InrokGujBsjnhw7jTjp31A1dAa
BMWkiZe0K01hcnRpam4gU2FlbGVucyA8bWFydGlqbi5zYWVsZW5zQGhvZ2VudC5i
ZT6ImQQTFgoAQRYhBFx8IxwAk99aFZon+MALqx/xP+egBQJlKRcCAhsDBQkFo5qA
BQsJCAcCAiICBhUKCQgLAgQWAgMBAh4HAheAAAoJEMALqx/xP+eg47IBANfzjseP
ukxnJO8T54+OqmlA2ScjiUlmzuGEX9DmWiToAP98ej72G6CMkacphIkcX8P5VL3t
AgTl+yFoKeKzB583ALg4BGUpFwISCisGAQQBl1UBBQEBB0Aum8UjuaEzrdh/tRr0
lWwT9ULbxvrpf6DAmKgTwDwKDAMBCAeIfgQYFgoAJhYhBFx8IxwAk99aFZon+MAL
qx/xP+egBQJlKRcCAhsMBQkFo5qAAAoJEMALqx/xP+eg6t4BAJW0BORPzn9Km3Sn
N6iN5nGV2ESoWNwlU/cqTb1i9ruOAP45Z96vuvB592WoFI+NOxWmEay5oZDRCPqa
j8fKY91IAQ==
=XrUR
-----END PGP PUBLIC KEY BLOCK-----
```

Let goed op de woorden **PUBLIC** in de sleutel: **controleer steeds** of hier PUBLIC of PRIVATE staat alvorens je met deze sleutel iets doet! Je zou niet de eerste zijn die per ongelijk zijn private sleutel online gooit en zijn encryptie zo compleet **onveilig** maakt. Hier staat er public, dus deze sleutel mag verspreid worden.

Je kan de publieke sleutel nu doorsturen via e-mail, chat, ... of online plaatsen op jouw website. Zo kunnen anderen die iets geëncrypteerd naar jou willen sturen jouw publieke sleutel daarvoor gebruiken. Je kan de sleutel doorsturen als bestand, of gewoon de inhoud (de tekst) ergens plaatsen (in een e-mail, op een website, ...).

Indien gewenst kan je ook jouw private sleutel exporteren (bv. als backup). Gebruik hiervoor de `--export-secret-keys` optie. Het kan zijn dat je hier jouw wachtwoord moet opgeven indien je een had ingesteld bij het genereren van de sleutel.

```powershell
PS C:\Users\martijn> gpg --output privkey.gpg --armor --export-secret-keys 5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0
PS C:\Users\martijn> cat .\privkey.gpg
-----BEGIN PGP PRIVATE KEY BLOCK-----

lIYEZSkXAhYJKwYBBAHaRw8BAQdAFw9KQKS/w0InrokGujBsjnhw7jTjp31A1dAa
BMWkiZf+BwMCLFpMqryLApDO7n2AbZqRmt/+ESdH7U+a0Mqr9+IKyeo/XaftySPt
8AdGUr1XSmkO01KJqBczLV5CNROPQpSLbc0rJ7606HYuy+AfpaDi+bQrTWFydGlq
biBTYWVsZW5zIDxtYXJ0aWpuLnNhZWxlbnNAaG9nZW50LmJlPoiZBBMWCgBBFiEE
XHwjHACT31oVmif4wAurH/E/56AFAmUpFwICGwMFCQWjmoAFCwkIBwICIgIGFQoJ
CAsCBBYCAwECHgcCF4AACgkQwAurH/E/56DjsgEA1/OOx4+6TGck7xPnj46qaUDZ
JyOJSWbO4YRf0OZaJOgA/3x6PvYboIyRpymEiRxfw/lUve0CBOX7IWgp4rMHnzcA
nIsEZSkXAhIKKwYBBAGXVQEFAQEHQC6bxSO5oTOt2H+1GvSVbBP1QtvG+ul/oMCY
qBPAPAoMAwEIB/4HAwIV4nJc+ND85c4xGrlrcHyyMo5SaGuG8cyTA4uHfGR2ADAM
VPnroV/rveBvoJgxOIFu7JNp8YY2vweK8wx+gHNZhcwDZoquoo5rSQMUv4lGiH4E
GBYKACYWIQRcfCMcAJPfWhWaJ/jAC6sf8T/noAUCZSkXAgIbDAUJBaOagAAKCRDA
C6sf8T/noOreAQCVtATkT85/Spt0pzeojeZxldhEqFjcJVP3Kk29Yva7jgD+OWfe
r7rwefdlqBSPjTsVphGsuaGQ0Qj6mo/HymPdSAE=
=j7s7
-----END PGP PRIVATE KEY BLOCK-----
```

**Bewaar deze kopie op een veilige plaats aangezien deze jouw private sleutel bevat! Verspreid deze NIET.** De private sleutel wordt hier enkel getoond voor demonstratie doeleinden. Deze sleutel is dus niet meer veilig en is ondertussen verwijderd. **Toon zelf NOOIT jouw private sleutel aan iemand anders, anders is jouw sleutelpaar niets meer waard en compleet onveilig!**

### Importeer een publieke sleutel

Om berichten te versturen, hebben we natuurlijk een publieke sleutel nodig van de ontvanger. We demonstreren dit aan de hand van de publieke sleutel [test-public-key.asc](https://hogenttin.github.io/cybersecurity/h4/asymmetrisch-encrypteren/test-public-key.asc).

1. Download de publieke sleutel.
2. Importeer de sleutel met de `--import` optie:
   ```powershell
PS C:\Users\martijn> gpg --import test-public-key.asc
gpg: key 1B001C49CE3133E9: public key "Test" imported
gpg: can't connect to the gpg-agent: IPC connect call failed
gpg: Total number processed: 1
gpg:               imported: 1
   ```
3. Dubbelcheck met de `--list-keys` optie, deze toont de publieke sleutels op ons systeem:
```powershell
PS C:\Users> gpg --list-keys
gpg: checking the trustdb
gpg: marginals needed: 3  completes needed: 1  trust model: pgp
gpg: depth: 0  valid:   1  signed:   0  trust: 0-, 0q, 0n, 0m, 0f, 1u
gpg: next trustdb check due at 2026-10-12
[keyboxd]
---------
pub   ed25519 2023-10-13 [SC] [expires: 2026-10-12]
    5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0
uid           [ultimate] Martijn Saelens <martijn.saelens@hogent.be>
sub   cv25519 2023-10-13 [E] [expires: 2026-10-12]

pub   rsa3072 2020-11-22 [SC]
    FCEC724109785C50F47E270D1B001C49CE3133E9
uid           [ unknown] Test
sub   rsa3072 2020-11-22 [E]
```

We zien dat de test sleutel met als fingerprint `FCEC724109785C50F47E270D1B001C49CE3133E9` succesvol is geïmporteerd. We hebben nu 2 publieke sleutels. Idealiter contacteer je de eigenaar van de key om de fingerprint te verifiëren (in het echt of via telefoon), zo vermijd je dat een Man in the Middle attack je een vervalste sleutel heeft gegeven.

Als we de `--list-secret-keys` optie gebruiken, toont deze slechts 1 private sleutel op ons systeem:

```powershell
PS C:\Users\martijn> gpg --list-secret-keys
[keyboxd]
---------
sec   ed25519 2023-10-13 [SC] [expires: 2026-10-12]
    5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0
uid           [ultimate] Martijn Saelens <martijn.saelens@hogent.be>
ssb   cv25519 2023-10-13 [E] [expires: 2026-10-12]
```

Dat klopt, wij hebben slechts 1 sleutelpaar gemaakt (publieke + private sleutel) en als we iemands sleutel importeren zal dat steeds diens publieke sleutel zijn, **nooit zijn private sleutel!** Anders kan iedereen met die private sleutel die persoon zijn berichten decrypteren en lezen. Je kan dit testen aan de hand van de overeenkomstige private key [test-private-key-empty-password.asc](https://hogenttin.github.io/cybersecurity/h4/asymmetrisch-encrypteren/test-private-key-empty-password.asc).

### Bestanden encrypteren en decrypteren[¶](https://hogenttin.github.io/cybersecurity/h4/asymmetrisch-encrypteren/asymmetrisch-encrypteren/#bestanden-encrypteren-en-decrypteren "Permanent link")

Nu we de publieke key hebben geïmporteerd van de ontvanger kunnen we een bericht naar de ontvanger encrypteren en versturen. Maak een bestand `test.txt` aan met als inhoud `Dit is een test!`. Je kan dit doen met eender welke text editor of met volgende commando's:

```powershell
PS C:\Users\martijn> echo "Dit is een Test!" > test.txt
PS C:\Users\martijn> cat test.txt
Dit is een test!
```

Nu encrypteren we het bestand met behulp van de `--encrypt` optie. We geven ook de `--recipient` optie met de fingerprint van de sleutel van de ontvanger: zo weet gpg voor wie het bestand geëncrypteerd moet worden. Het resulterende bestand `encrypted.gpg` is nu compleet onleesbaar.

```powershell
PS C:\Users\martijn> gpg --encrypt --output encrypted.gpg --recipient FCEC724109785C50F47E270D1B001C49CE3133E9 test.txt
gpg: 506F586D6F3410CA: There is no assurance this key belongs to the named user

sub  rsa3072/506F586D6F3410CA 2020-11-22 Test
 Primary key fingerprint: FCEC 7241 0978 5C50 F47E  270D 1B00 1C49 CE31 33E9
      Subkey fingerprint: 6950 B5EE F1D4 EC65 AD8A  E2B0 506F 586D 6F34 10CA

It is NOT certain that the key belongs to the person named
in the user ID.  If you *really* know what you are doing,
you may answer the next question with yes.

Use this key anyway? (y/N) y
PS C:\Users\martijn> cat encrypted.gpg
…ŒPoXmo4Ê
Ÿ#Ú½ŒæÁgI'piÓ
’b5`¾¹Ö³h&Dt2`9›¼€µ]¸eü£ž´Ìã‡5 6¨ènjqö÷ÖY+ÄŸ2D¡»|úý)öí £…Âð[(ýã¨qz_«Kj5›;|AïÝo{ÚiV–Œ-„y¢`8³Ÿ¢HÎÖ½:«ÈÎwøLRóWÒq
Ú0—ªa¼L6u‹9#Z€LéT õÉ’5ðe/þðï’<bnk]²t•ñŸe|´°÷kcC<£‹ªÝ‘ô
n}÷áÚjÄ|°Ç7˜7äimÈH–™ Fûcµx¯Þf’Ä¢ðY@•¡)ÕÅh+k†Æ`)äv
ø#Ò›ˆþ<ö°¹¥Y Sc¨dŸ†ä}J2Ù\=Ýó.ÕW6
£I ©S
?|¨(ÇÐ3¬¸Ðz_FEMÎá¦Ê÷¹!nÜUA?'÷+Ð>ŸA÷ â6Å|ûÕNVŒ?G^9WL+¼ì.æBê
A¶Øu4¾q¦K–Ú×¹:`ÒaÚd¦žâ»åÕ›{'{ÍrË•½Ÿ`äU[´ÆŸK¡a¨¥¦FÁñkùçú>l<ñ³L¼HaW¦Þø¸Úa¹¥ñæêv¾Ç^}f-FvæV}
<õ¼HÅô‘Î(
```

Let op! Aangezien het geëncrypteerd enkel met de sleutel van de ontvanger geëncrypteerd is, is het geëncrypteerde bestand `encrypted.gpg` ook voor jou (de verzender) niet meer te lezen. Decrypteren gebeurt met de optie `--decrypt`.

```powershell
PS C:\Users\martijn> gpg --decrypt --output decrypted.txt encrypted.gpg
gpg: encrypted with rsa3072 key, ID 506F586D6F3410CA, created 2020-11-22
      "Test"
gpg: public key decryption failed: No secret key
gpg: decryption failed: No secret key
```

Indien je het geëncrypteerde bestand ook zelf nog wil kunnen lezen, zal je het ook moeten encrypteren met je eigen sleutel:

```powershell
PS C:\Users\martijn> gpg --encrypt --output encrypted.gpg --recipient FCEC724109785C50F47E270D1B001C49CE3133E9 --recipient 5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0 test.txt
gpg: 506F586D6F3410CA: There is no assurance this key belongs to the named user

sub  rsa3072/506F586D6F3410CA 2020-11-22 Test
 Primary key fingerprint: FCEC 7241 0978 5C50 F47E  270D 1B00 1C49 CE31 33E9
      Subkey fingerprint: 6950 B5EE F1D4 EC65 AD8A  E2B0 506F 586D 6F34 10CA

It is NOT certain that the key belongs to the person named
in the user ID.  If you *really* know what you are doing,
you may answer the next question with yes.

Use this key anyway? (y/N) y
PS C:\Users\martijn> gpg --decrypt --output decrypted.txt encrypted.gpg
gpg: encrypted with cv25519 key, ID FC9673623EF7A847, created 2023-10-13
      "Martijn Saelens <martijn.saelens@hogent.be>"
gpg: encrypted with rsa3072 key, ID 506F586D6F3410CA, created 2020-11-22
      "Test"
PS C:\Users\martijn> cat decrypted.txt
Dit is een test!
```

Het kan zijn dat je jouw wachtwoord moet opgeven bij het decrypteren van bestanden die voor jou bestemd zijn, indien je een had ingesteld bij het genereren van de sleutel.
### Oefening

Nu iedereen in de klas een eigen sleutel heeft aangemaakt: encrypteer een bestand en geef deze samen met jouw publieke sleutel (of plaats deze op een website) aan een medestudent. Kan de medestudent het bestand decrypteren en jij het bestand van de medestudent?
### Meer info

Wil je meer weten? Dan kan je de officiële handleiding vinden op [https://www.gnupg.org/gph/en/manual.html](https://www.gnupg.org/gph/en/manual.html) .

## Steganografie

Soms is het niet voldoende om bestanden te encrypteren, maar wil je ook niet dat het opvalt dat er verborgen bestanden zijn. Om bestanden onopgemerkt uit te wisselen, wordt er gebruik gemaakt van stenografie. Hierbij worden geëncrypteerde bestanden verstopt in andere onschuldige bestanden. Iemand die dit bestand in zijn bezit krijgt, zal er niets verdachts in zien.

1. Download `OpenStego- x.x.x.zip` vanop [https://github.com/syvaidya/openstego/releases/latest](https://github.com/syvaidya/openstego/releases/latest) .
2. Pak de zip uit en zoek het .jar-bestand `openstego.jar` in `openstego-x.x.x` > `lib`. Open dit bestand om het programma op te starten (hiervoor heb je terug Java 17 of hoger nodig). Open een powershell venster om het programma op te starten:
   ```powershell
   java -jar openstego.jar
```
3. Klik links op `Hide Data` en vul volgende velden in:
    a. `Message File`: het bestand dat je wil verstoppen.
    b. `Cover File`: een afbeelding waarin je jouw bestand wil verstoppen.
    c. `Output Stego File`: de plaats en naam waar je het resultaatbestand wil bewaren
    d. `Password` en `Confirm Password`: het wachtwoord waarmee je jouw verstopt bestand wil encrypteren.
4. Druk op `Hide Data`. Er wordt een nieuwe afbeelding gemaakt. Open die afbeelding nu eens zoals je een gewone afbeelding opent. De afbeelding gedraagt zich als een normale afbeelding.
5. Open terug OpenStego, klik links op `Extract Data` en vul volgende velden in:
    a. `Input Stego File`: het bestand dat je zojuist hebt gegenereerd met OpenStego.
    b. `Output Folder for Message File`: waar je het ontpakte encrypteerde bestand wil bewaren.
    c. `Password`: het wachtwoord waarmee je het bestand hebt beveiligd.
6. Je krijgt nu het bestand dat je had verstopt terug.
    
Je kan deze stappen ook volgen op [https://www.youtube.com/watch?v=Jsbe5oqRyXI](https://www.youtube.com/watch?v=Jsbe5oqRyXI) .

Denk je dat je het onder de knie hebt? Probeer dan de geheime boodschap te halen uit [hogeschool_gent_logo_HiddenMessage.png](https://hogenttin.github.io/cybersecurity/h4/steganografie/hogeschool_gent_logo_HiddenMessage.png).
![](./attachments/20241216130133.png)

## Extra
### Voorbeeld [ROT13](https://math.libretexts.org/Bookshelves/Combinatorics_and_Discrete_Mathematics/Yet_Another_Introductory_Number_Theory_Textbook_-_Cryptology_Emphasis_(Poritz)/04%3A_Cryptology/4.02%3A_The_Caesar_Cipher_and_Its_Variants)

Test het zelf eens uit via [https://github.com/HoGentTIN/cybersec-otp](https://github.com/HoGentTIN/cybersec-otp) .

#### Encryptie

|   |   |   |   |   |   |
|---|---|---|---|---|---|
|plaintext|h|e|l|l|o|
|plaintext|7|4|11|11|14|
|||||||
|key|13|13|13|13|13|
|||||||
|plaintext + key|20|17|24|24|27|
|(plaintext + key) mod 26|20|17|24|24|1|
|ciphertext|u|r|y|y|b

#### Decryptie

|   |   |   |   |   |   |
|---|---|---|---|---|---|
|ciphertext|u|r|y|y|b|
|ciphertext|20|17|24|24|1|
|||||||
|key|13|13|13|13|13|
|||||||
|ciphertext - key|7|4|11|11|-12|
|(ciphertext - key) mod 26|7|4|11|11|14|
|plaintext|h|e|l|l|o|
### Voorbeeld [OTP](https://www.ciphermachinesandcryptology.com/en/onetimepad.htm)

#### Encryptie

|                          |     |     |     |     |     |
| ------------------------ | --- | --- | --- | --- | --- |
| plaintext                | h   | e   | l   | l   | o   |
| plaintext                | 7   | 4   | 11  | 11  | 14  |
|                          |     |     |     |     |     |
| key                      | w   | a   | c   | h   | t   |
| key                      | 22  | 0   | 2   | 7   | 19  |
|                          |     |     |     |     |     |
| plaintext + key          | 29  | 4   | 13  | 18  | 33  |
| (plaintext + key) mod 26 | 3   | 4   | 13  | 18  | 7   |
| ciphertext               | d   | e   | n   | s   | h   |

#### Decryptie

|   |   |   |   |   |   |
|---|---|---|---|---|---|
|ciphertext|d|e|n|s|h|
|ciphertext|3|4|13|18|7|
|||||||
|key|w|a|c|h|t|
|key|22|0|2|7|19|
|||||||
|ciphertext - key|-19|4|11|11|-12|
|(ciphertext - key) mod 26|7|4|11|11|14|
|plaintext|h|e|l|l|o|
### Extra uitleg Diffie-Hellman

Laten we Diffie-Hellman demonstreren met een klein voorbeeld. Alice en Bob spreken op voorhand de volgende variabelen af:
$$p = 23$$
$$g = 5$$
Alice kiest eerst haar geheime variabele: $$a = 4$$Nu gaat ze een getal genereren om aan Bob te geven.
$$A = g^{a} \mod{p} = 5^{4} \mod{23} = 4$$

Ondertussen kiest Bob ook zijn geheime variabele: $$ b = 3$$ Bob gaat ook een getal genereren om aan Alice te geven.
$$B = g^{b} \mod{p} = 5^{3} \mod{23} = 10$$

Alice en Bob wisselen nu de getallen en `A en B` met elkaar uit, erna gaan ze met deze getallen aan de slag.
Alice gaat met behulp van `B` van Bob en haar eigen geheim a de gemeenschappelijke sleutel genereren:
$$S_{Alice} = B^{a} \mod{p} = 10^{4} \mod{23} = 18$$
Bob gaat ondertussen met behulp van `A` van Alice en zijn eigen geheim b ook de gemeenschappelijke sleutel genereren:
$$S_{Bob} = A^{b} \mod{p} = 4^{3} \mod{23} = 18$$
De gemeenschappelijke sleutel is dus:
$$S_{Alice} = S_{Bob} = S = 18$$
We zien dus dat Alice en Bob beiden dezelfde waarde uitkomen voor de gemeenschappelijke sleutel:
$$S$$
Tijdens de berekeningen hebben Alice en Bob hun geheimen `(a = 4 en b = 3)` nooit prijsgegeven! Met deze sleutel kunnen ze nu overschakelen naar symmetrische encryptie.

Waarom werkt dit?
$$S_{Alice} = B^{a} \mod{p} = (g^{b} \mod{p})^{a} \mod{p} = (g^{b})^{a} \mod{p} = g^{ab} \mod{p}$$
$$S_{Bob}   = A^{b} \mod{p} = (g^{a} \mod{p})^{b} \mod{p} = g^{ab} \mod{p}$$
# H5

## Hashwaarden controleren

Veel bestanden of programma’s zijn te downloaden op het internet, maar hoe weet je of het gedownloade bestand het juiste is en er geen fouten zijn opgetreden of iemand het bestand heeft vervalkst? Hiervoor wordt hashing gebruikt. Vaak staat er bij een bestand een hashwaarde. Als je het bestand hebt gedownload, bereken je opnieuw met software de hashwaarde van het gedownloade bestand. Als de hashwaardes gelijk zijn, heb je het juiste bestand. Zodra er 1 bit afwijkt, verschillen de hashwaardes en is er ergens iets foutgelopen (bestand van onbetrouwbare afkomst, fout tijdens downloaden, ...).

### Controleren aan de hand van de command line

Windows en Linux hebben al ingebouwde tools om hashes te genereren. Stel dat we de hashes van een bestand (bv. `test.txt`) willen controleren, dan kan dit in met het powershell commando `Get-FileHash`.

```powershell
PS /home/martijn> Get-FileHash -Path test.txt -Algorithm md5

Algorithm       Hash                                                                   Path
---------       ----                                                                   ----
MD5             D41D8CD98F00B204E9800998ECF8427E                                       /home/martijn/test.txt

PS /home/martijn> Get-FileHash -Path test.txt -Algorithm sha1

Algorithm       Hash                                                                   Path
---------       ----                                                                   ----
SHA1            DA39A3EE5E6B4B0D3255BFEF95601890AFD80709                               /home/martijn/test.txt

PS /home/martijn> Get-FileHash -Path test.txt -Algorithm sha256

Algorithm       Hash                                                                   Path
---------       ----                                                                   ----
SHA256          E3B0C44298FC1C149AFBF4C8996FB92427AE41E4649B934CA495991B7852B855       /home/martijn/test.txt

PS /home/martijn> Get-FileHash -Path test.txt -Algorithm sha512

Algorithm       Hash                                                                   Path
---------       ----                                                                   ----
SHA512          CF83E1357EEFB8BDF1542850D66D8007D620E4050B5715DC83F4A921D36CE9CE47D0D... /home/martijn/test.txt
```

Linux gebruikers kunnen gebruik maken van de `md5sum`, `sha1sum`,`sha256sum`, `sha512sum` commando's, of [PowerShell](https://github.com/PowerShell/PowerShell/releases) installeren op Linux om gebruik te maken van dezelfde commando's als Windows.

### Controleren aan de hand van 7-zip

Hier zullen we gebruik maken van 7-zip om hashwaarden te berekenen van een bestand.

1. Download en installeer het 7-zip installatieprogramma van [https://www.7-zip.org/](https://www.7-zip.org/) (zie vorige praktijkopdrachten).
2. Als je nu met je rechtermuisknop op een bestand klikt, kan je de hash berekenen.

![](./attachments/20241216141054.png)

### Gebruik van torrents

Alhoewel torrents vaak worden geassocieerd met illegaal downloaden, hebben ze ook een legaal nut. Torrent-programma's op zich zijn niet illegaal: enkel het downloaden van illegale content is illegaal. Je kan dus gerust torrent-programma's gebruiken om legale bestanden te downloaden of te delen met vrienden. Linux distributies gebruiken bijvoorbeeld torrents als alternatief voor het downloaden van de linux-distro van hun website. Dit vermindert de druk op de website omdat torrent-clients downloaden van meerdere andere torrent-clients, in tegenstelling dat iedereen van een enkele webserver download. Daarnaast heeft dit als voordeel dat het bestand compleet wordt gecontroleerd op download fouten. Om te verifiëren dat het bestand niet is vervalst, kan je de hashwaarde controleren met de hashwaarde gegeven door de maker van het bestand.

1. Download qBittorrent van [https://sourceforge.net/projects/qbittorrent/](https://sourceforge.net/projects/qbittorrent/) en installeer dit programma.
2. Om qBittorrent te werken gaan we gebruik maken van enkele legale torrents. We kunnen er enkele vinden op [https://webtorrent.io/free-torrents](https://webtorrent.io/free-torrents) . We gaan hier verder met `Big Buck Bunny` (263.6 MB) [1](https://hogenttin.github.io/cybersecurity/h5/hashing/hashing/#fn:1). Heb je een beperkt of trager internet kan je gaan voor de `Wired CD` (53.4 MB) [2](https://hogenttin.github.io/cybersecurity/h5/hashing/hashing/#fn:2). De stappen zijn gelijkaardig.
3. Klik op `(torrent file)`. Afhankelijk van jouw systeeminstelling en gebruikte webbrowser zal jouw systeem je aanbieden om het bestand `big-buck-bunny.torrent` rechtstreeks met qBittorrent te openen. In het ander geval zal het bestand simpelweg als .torrent-bestand gedownload worden. In het laatste geval kan je in Windows Explorer dubbelklikken op het gedownloade .torrent-bestand om dit te openen in qBittorrent.
4. Wanneer qBittorrent geopend wordt, zal het je eerst alle informatie over de torrent tonen alvorens het te downloaden. Je kan bijvoorbeeld zien welke inhoud de torrent bevat, waar de inhoud van de torrent zal opgeslagen worden, de grootte, ... .
5. Het bestand wordt nu door qBittorrent gedownload.
6. qBittorrent heeft ondertussen de checksum controle zelf al uitgevoerd. Soms worden er ook magnet-links gebruikt. Deze hebben de volgende vorm:
```text
magnet:?xt=urn:btih:bla123bla123bla123bla123bla123bla123bla1
```

Je kan er dan op klikken en de torrent wordt meteen geopend in qBittorrent. De website met de legale torrents biedt ook magnet links aan. Test deze gerust eens uit. De magnet link van `Big Buck Bunny` ziet er bijvoorbeeld als volgt uit:

```text
magnet:?xt=urn:btih:dd8255ecdc7ca55fb0bbf81323d87062db1f6d1c&dn=Big+Buck+Bunny&tr=udp%3A%2F%2Fexplodie.org%3A6969&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Ftracker.empire-js.us%3A1337&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337&tr=wss%3A%2F%2Ftracker.btorrent.xyz&tr=wss%3A%2F%2Ftracker.fastcast.nz&tr=wss%3A%2F%2Ftracker.openwebtorrent.com&ws=https%3A%2F%2Fwebtorrent.io%2Ftorrents%2F&xs=https%3A%2F%2Fwebtorrent.io%2Ftorrents%2Fbig-buck-bunny.torrent
```

### Test het zelf

We hebben een website gemaakt waarop er een programma kan gedownload worden dat alle priemgetallen uitschrijft tussen 1 en een opgegeven getal. Er zijn meerdere download mirrors vanwaar het bestand kan gedownload worden. Helaas zijn er waarschijnlijk download mirrors overgenomen door cybercriminelen: Als je het programma van zo een gehackte download mirror downloadt, download je dus malware. Nu is het aan jou om de download mirrors te controleren en de niet-gehackte download mirror te vinden. Gelukkig heeft de ontwikkelaar de hashwaarden van het juiste programma op de downloadpagina geplaatst!

Open de website:

1. Download [website.7z](https://hogenttin.github.io/cybersecurity/h5/hashing/website.7z).
2. Pak het bestand uit (je kan hiervoor 7-zip gebruiken).
3. Dubbelklik op `index.html`. Dit stelt de site voor. **Alle andere bestanden zijn mogelijks malware!**
![[./attachments/website.7z]]
Doe voor elke download mirror het volgende:

1. Klik op de link om het programma van die download mirror te downloaden.
2. **Voer het programma nog niet uit!** Je weet immers nog niet of het het juiste programma is.
3. Bereken de hashwaarde van het programma en vergelijk het met de aangeboden hashwaarden op de website.
4. Als de hashwaarden gelijk zijn, is het programma het origineel. Anders is het malware. Als je denkt dat je het juiste programma hebt, probeer het dan uit te voeren. Wees gerust, mocht het malware zijn is het programma onschadelijk: de lectoren hebben deze "malware" gemaakt. Natuurlijk zou dit in het echt niet zo onschuldig zijn!

Dit lijkt veel werk, maar deze stappen zou je eigenlijk moeten doen voor elk programma dat je download. Zeker voor elk programma dat je gebruikt voor persoonlijke gegevens, wachtwoordbeheer, bankgegevens, virusscanner, malwarescanner, firewall, cybersecurity-tools, ... moet je dit doen, aangezien dit favoriete doelwitten zijn voor cybercriminelen om te vervalsen!

---

1. [https://en.wikipedia.org/wiki/Big_Buck_Bunny](https://en.wikipedia.org/wiki/Big_Buck_Bunny) [↩](https://hogenttin.github.io/cybersecurity/h5/hashing/hashing/#fnref:1 "Jump back to footnote 1 in the text")
2. [https://en.wikipedia.org/wiki/The_Wired_CD](https://en.wikipedia.org/wiki/The_Wired_CD) [↩](https://hogenttin.github.io/cybersecurity/h5/hashing/hashing/#fnref:2 "Jump back to footnote 2 in the text")

## Assymetrisch handtekenen (GPC)

GPG is niet alleen de tool voor cyberspecialisten om asymmetrische encryptie op te zetten en te gebruiken. Dankzij de asymmetrische encryptie kan je ook bestanden digitaal handtekenen en handtekeningen controleren. We gaan er vanuit dat je tijdens een vorig labo ...

- het commando `gpg` al hebt geïnstalleerd.
- reeds een sleutelpaar hebt gegenereerd.
- reeds een publieke sleutel hebt geïmporteerd of weet hoe je dat moet doen.

### Oorspronkelijk bestand en digitale handtekening combineren tot 1 bestand.

Nu we de publieke key hebben geïmporteerd van de ontvanger kunnen we een bericht naar de ontvanger digitaal handtekenen en versturen. Maak een bestand `test.txt` aan met als inhoud `Dit is een test!`. Je kan dit doen met eender welke text editor of met volgende commando's:

```powershell
PS C:\Users\martijn> echo "Dit is een Test!" > test.txt
PS C:\Users\martijn> cat test.txt
Dit is een test!
```

Nu encrypteren we het bestand met behulp van de `--sign` optie. Het resulterende bestand `test.sig` bevat nu het originele bestand samen met de digitale handtekening. Je merkt dat het ondertekend bestand `test.sig` niet meer leesbaar is met een text editor, ook al is het niet geëncrypteerd. GPG zet het om naar een binair formaat:

```powershell
PS C:\Users\martijn> gpg --output test.sig --sign test.txt
PS C:\Users\martijn> cat test.sig
£›ÀËÌÀ%v€{µüGûç
               ×˜$q”¤—è•T”¤|XùÿŸ
                                C&C       ƒ©@˜¤K€t1¸8`"¿ë¶›ÛMefÎœ8uÒÒ™+8Ìn_;¼JKàÅŸš)Œ•«’²ß22L|?Ã]cæAËŽ­»N”k9UÖ5ÿSÐÖÄWŠ”©¾ä
PS C:\Users\martijn>
```

Je kan nu het originele bestand `test.txt` zelfs verwijderen, de ontvanger heeft dit niet nodig. Je hoeft enkel het bestand `test.sig` door te sturen naar de ontvanger. Deze kan de digitale handtekening verifiëren en het originele bestand eruit halen met behulp van de `--decrypt` optie:

```powershell
PS C:\Users\martijn> rm test.txt
PS C:\Users\martijn> gpg --output test2.txt --decrypt test.sig
gpg: Signature made 19/10/2023 11:39:27 Romance Daylight Time
gpg:                using EDDSA key 5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0
gpg: Good signature from "Martijn Saelens <martijn.saelens@hogent.be>" [ultimate]
PS C:\Users\martijn> cat test2.txt
Dit is een Test!
```

In de output zie je `Good signature` staan, wat er op wijst dat de handtekening correct is: het bestand komt van de juiste persoon en er is niets aan gewijzigd sinds die persoon het document ondertekend heeft. Het originele bestand is opgeslagen in `test2.txt`.

### Digitale handtekening genereren los van het oorspronkelijke bestand.[¶](https://hogenttin.github.io/cybersecurity/h5/asymmetrisch-handtekenen/asymmetrisch-handtekenen/#digitale-handtekening-genereren-los-van-het-oorspronkelijke-bestand "Permanent link")

Soms is het beter om de digitale handtekening en het originele bestand los van elkaar te houden i.p.v. deze te combineren in een enkel bestand. Dit kan in GPG met behulp van de `--detach-sig` optie:

```powershell
PS C:\Users\martijn> gpg --output test.sig  --detach-sig test.txt
PS C:\Users\martijn> cat .\test.txt
Dit is een test!
PS C:\Users\martijn> cat .\test.sig
ˆu
!\|#“ßZš'øÀ
           «ñ?ç e0õW
        À
         «ñ?ç hœ:I<5ôšgCÝB¶dòå“„!<¶q1qQÃuìá¬Ö)ÿd²¡ioUÒÞ0)ßR"ÑÖçu¼jt+eÏµìkš

PS C:\Users\martijn>
```

Om te verifiëren moet je nu in tegenstelling tot het vorige hoofdstuk op de command line zowel de digitale handtekening als het oorspronkelijke bestand opgeven, anders weet GPG niet welke bestanden en digitale handtekeningen bij elkaar horen:

```powershell
PS C:\Users\martijn> gpg --verify test.sig test.txt
gpg: Signature made 19/10/2023 11:25:04 Romance Daylight Time
gpg:                using EDDSA key 5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0
gpg: Good signature from "Martijn Saelens <martijn.saelens@hogent.be>" [ultimate]
```

Als je nu het oorspronkelijke bestand wijzigt, zal je zien dat de handtekening niet meer geldig is:

```powershell
PS C:\Users\martijn> echo "Dit is nu een andere Test met MALWARE!!!" > test.txt
PS C:\Users\martijn> gpg --verify test.sig test.txt
gpg: Signature made 19/10/2023 11:25:04 Romance Daylight Time
gpg:                using EDDSA key 5C7C231C0093DF5A159A27F8C00BAB1FF13FE7A0
gpg: BAD signature from "Martijn Saelens <martijn.saelens@hogent.be>" [ultimate]
```

### Oefening

Nu iedereen in de klas een eigen sleutel heeft aangemaakt: onderteken een bestand en geef deze samen met jouw publieke sleutel (of plaats deze op een website) aan een medestudent. Kan de medestudent de handtekening van het bestand verifiëren en jij het bestand van de medestudent?

Je kan encryptie en digitaal handtekeningen met tegelijkertijd uitvoeren met GPG. Zoek op hoe je dit kan doen met een enkel `gpg` commando voor encryptie + creatie digitale handtekening, en een enkel `gpg` commando voor decryptie en verificatie digitale handtekening. Je zal hiervoor meerdere opties moeten combineren. Test ook dit uit met een medestudent.

Extra: indien je al wat meer IT voorkennis hebt en gebruik maakt van GitHub, dan kan je eens uitzoeken hoe je jouw commits kan laten verifiëren op een GitHub repository.

### Meer info

Wil je meer weten? Dan kan je de officiële handleiding vinden op [https://www.gnupg.org/gph/en/manual.html](https://www.gnupg.org/gph/en/manual.html) .
# H6

GEEN LABO
# H7

## Virtual Private Network (VPN)

### Wat is een VPN?

Als je op een bedrijf werkt en je bent rechtstreeks verbonden met het bedrijfsnetwerk (computer met kabel, wifi in het kantoor, ... ) dan kan je ook aan alle bronnen in dat netwerk. Je kan bijvoorbeeld aan de printers, aan alle bestanden op een interne cloud, aan servers, code repositories op het intranet, ... . Deze bronnen zijn enkel bedoeld voor werknemers van dat bedrijf: niet iedereen mag dus zomaar aan die bronnen of toestellen kunnen. Dit netwerk is daarom afgeschermd van het internet met behulp van firewalls. Dat geeft wel een probleem voor werknemers die van thuis uit werken: zij hebben ook geen toegang tot het bedrijfsnetwerk. Om dit probleem op te lossen, kan er gebruik gemaakt worden van een VPN-verbinding.

Een Virtual Private Network of VPN is een versleutelde verbinding tussen jou en een ander netwerk. Dit wil zeggen dat niemand het verkeer tussen jou en het ander netwerk kan afluisteren. Een VPN-verbinding wordt daarom ook vaak een "tunnel" genoemd, omdat het lijkt alsof je door een afgeschermde tunnel verbonden bent. Daarnaast lijkt het alsof je rechtstreeks op dat ander netwerk zit (bv. Alsof je fysiek op de kabel of wifi van het kantoor zit).

Om een VPN-verbinding op te zetten, zijn er 2 componenten nodig:

- Een VPN server (wordt soms ook wel VPN router genoemd): deze bevindt zich op het bedrijfsnetwerk en wordt beheerd door de IT-dienst van dat bedrijf.
- Een VPN client: dit is een softwareprogramma op jouw computer, waarmee je een VPN-verbinding kan aangaan met de VPN server. Je moet je hierbij meestal aanmelden met een gebruikersnaam en wachtwoord.

![](./attachments/20241216142826.png)

VPN’s worden ook vaak gebruikt voor privacy en geolocatie doeleinden. Een VPN kan helpen om jouw privacy te versterken:

- Niet iedereen vertrouwt zijn ISP (Internet Service Provider, bv. Telenet, Proximus, ... ). Door een VPN te gebruiken kan je ervoor zorgen dat jouw ISP niet weet naar wie je surft of wat je verstuurt/ontvangt op het internet.
    
- Door het gebruik van een VPN lijkt het voor andere toestellen alsof ze enkel verbonden zijn met de VPN server: de andere toestellen hebben dus geen idee dat de VPN server alles naar jou doorstuurt.
    

Je kan een VPN-verbinding hier eigenlijk zien als een bewuste Man-in-the-Middle attack. Bijvoorbeeld, stel dat je wil surfen naar [https://duckduckgo.com](https://duckduckgo.com) . Als je surft zonder VPN, weet jouw ISP dat je hebt gesurft naar [https://duckduckgo.com](https://duckduckgo.com) . Je vraagt immers deze website rechtstreeks aan jouw ISP. Indien we een VPN gebruiken, dan gaan we niet rechtstreeks de website vragen aan onze ISP. In plaats daarvan sturen we via de geëncrypteerde tunnel een bericht naar de VPN server: "wil jij voor ons de website [https://duckduckgo.com](https://duckduckgo.com) opvragen en deze naar ons via deze geëncrypteerde tunnel opsturen?". De VPN server zal dan [https://duckduckgo.com](https://duckduckgo.com) via zijn eigen ISP. Voor de administratoren van [https://duckduckgo.com](https://duckduckgo.com) lijkt het alsof de VPN de website voor zichzelf opvraagt, zij hebben immers geen idee dat de website wordt doorgestuurd naar iemand anders (naar jou).

![](./attachments/20241216142848.png)

![](./attachments/20241216142856.png)

De tunnel tussen VPN client en server zorgt er dus voor dat jouw internet provider geen idee heeft naar wie of wat je surft. Er zijn verschillende bedrijven die gratis of betalend VPN-toegang aanbieden naar hun netwerk. Let wel op, het lijkt alsof je in dat bedrijf zijn netwerk zit en van daaruit surft: dat bedrijf kan dus wel zien naar wie of wat je surft! Het is aan jou om een bedrijf te kiezen dat je vertrouwt met deze gegevens.

VPN’s worden soms ook gebruikt om geografische restricties te omzeilen. Netflix bijvoorbeeld biedt sommige series enkel aan in Amerika. Door een VPN-verbinding op te zetten met een netwerk in Amerika, lijkt het voor Netflix alsof je je daadwerkelijk in Amerika bevindt en kan je zo jouw serie bekijken.

![](./attachments/20241216142911.png)

Download je soms torrents zonder VPN? Kijk dan eens op [https://iknowwhatyoudownload.com](https://iknowwhatyoudownload.com) . Wat er allemaal gelinkt is aan jouw huidig IP-adres. Let op! Het is niet omdat deze site niets weergeeft, dat er niets is gedetecteerd. Het kan immers simpelweg zijn dat je net een nieuw IP hebt gekregen van jouw provider. Downloads daarvoor kunnen nog steeds door IP-adres en timestamps naar jou getraceerd worden, ook al staan deze niet op de website!

### Zelf testen met ProtonVPN

In dit labo gaan we een VPN-client installeren en gebruiken. Alvorens we dit doen, gaan we eerst kijken hoe andere toestellen op het internet ons toestel herkennen. Surf daarvoor naar [https://ipleak.net/](https://ipleak.net/) . Hier vind je alle informatie die andere toestellen op het internet van jouw toestel weten of kunnen achterhalen.

1. Schrijf jouw (publiek) IP-adres neer:
   ![](./attachments/20241216142941.png)
2. Kijk ook naar de locatie: deze zal niet exact overeenkomen, maar wel het juiste land tonen.
   ![](./attachments/20241216143000.png)
Ga naar [https://protonvpn.com/](https://protonvpn.com/) en maak een gratis account aan. Eenmaal ingelogd kan je op [https://account.protonvpn.com/downloads](https://account.protonvpn.com/downloads) een VPN client kiezen voor jouw besturingssysteem. Download en installeer deze client. Eenmaal geïnstalleerd, start je deze op. Je zal je eerst moeten aanmelden met jouw account.

Op dit moment ben je nog niet verbonden met een VPN (hoe zie je dit met [https://ipleak.net/](https://ipleak.net/) ?). Je kan kiezen voor `Quick connect` waardoor ProtonVPN zelf een VPN server selecteert. De kans is groot dat je dan op een Belgische server terecht komt. Dit is niet per se onveilig, maar voor dit labo minder interessant. Maak verbinding met een VPN server in Zwitserland. Wat zie je nu op [https://ipleak.net/](https://ipleak.net/) ?

![](./attachments/20241216143030.png)

![](./attachments/20241216143037.png)

### Extra features van een VPN-dienst

#### Speedtest

Een speedtest zoals [https://www.speedtest.net](https://www.speedtest.net) meet enkele waarden:

- Ping: Het meeste verkeer op het internet is vraag-antwoord. Bijvoorbeeld als je surft naar [https://www.google.be](https://www.google.be) dan stuur je een vraag naar de Google webserver voor de webpagina. De webserver stuurt de code voor de pagina naar jou terug zodat deze getoond kan worden in jouw browser. De tijd tussen dat jij de vraag verstuurd en antwoord krijgt noemt men de ping. Vaak ligt de ping tussen 1 en 100 ms.
    
- Bandwidth: Hoeveel data kan je per seconde ontvangen (download) of versturen (upload)? Dit wordt vaak uitgedrukt in Mbps (megaBIT per seconde). Dit is niet hetzelfde als MBps (megaBYTE per seconde)! Als de speedtest aangeeft dat jouw maximum download 100 Mbps bedraagt, zal je maximum bestanden kunnen downloaden aan 12.5 MBps (
    

- , een byte bevat immers 8 bits). Je zal in jouw webbrowser, torrentprogramma, steam, ... dus maximum een snelheid halen van 12.5 MBps. Meer info: [https://www.attplans.com/resources/difference-mbps-and-mbps/](https://www.attplans.com/resources/difference-mbps-and-mbps/)
    

Voer de speedtest uit van thuis eens zonder VPN en eens met VPN. Zorg ervoor dat je dit doet op een moment dat er niemand anders intensief gebruik maakt van het netwerk, anders kan dit de resultaten beïnvloeden. Probeer dit niet op het HoGent netwerk, want daar zit je met meerdere personen op het HoGent netwerk, wat ook de resultaten kan beïnvloeden.

Welk verschil zie je in ping en bandwidth? Je gebruikt de gratis ProtonVPN, komen de resultaten overeen met wat je verwacht?

#### Kill switch

ProtonVPN biedt een kill switch aan. Dit zorgt ervoor dat als de verbinding met de VPN per ongeluk uitvalt al jouw internetverkeer wordt gestopt. Zo wordt vermeden dat er per ongeluk toch verkeer buiten de VPN verstuurd wordt. Je kan dit testen met de "permanent" kill switch: hierbij wordt jouw internet ook afgesneden als je deze expliciet disconnect. Test dit eens uit. Meer informatie vind je op [https://protonvpn.com/support/what-is-kill-switch](https://protonvpn.com/support/what-is-kill-switch) .

### Hoe kies je een goede VPN-dienst?

De keuze van een goede VPN-dienst is niet altijd even gemakkelijk. Je zal zelf goed moeten zoeken naar een dienst die bij jouw eisen past. Enkele vragen die je kunnen helpen:

- Hoeveel data houdt de VPN-dienst over mij bij? Loggen ze wat ik via hun VPN server doe? Hoe lang houden ze die logs bij? Wat doen ze met die logs?
    
- In welk land staan er VPN servers van die dienst? Waar staat de hoofdzetel van de VPN-dienst? Verschillende landen hebben verschillende wetten. In sommige landen wordt er meer data verzameld van gebruikers dan andere. Zo zijn de landen van de Five Eyes berucht voor spionage op burgers. Andere landen zoals Zwitserland hebben dan weer strenge wetten op vlak van privacy.
    
- Hoeveel kost een dienst? Hoeveel wil ik er voor betalen? Op welke manieren kan ik betalen? Kan ik cryptocurrency gebruiken voor volledige anonimiteit?
    
- Welke snelheden bieden ze aan? De maximumsnelheid tussen de VPN server en doelwit is vermoedelijk trager dan tussen de VPN client en server: m.a.w. de snelheid van de VPN dienst zal waarschijnlijk lager liggen dan als je geen VPN gebruikt.
    
- Met hoeveel toestellen kan je tegelijk een VPN-verbinding opzetten?
    
- Voor welke besturingssystemen bieden ze een client aan? Windows, Linux, Mac, ... ?
    
- Welk type verkeer laten ze toe? Aanvaarden ze bv. torrent-verkeer?
    
- Welke features bieden ze aan? Verschillende VPN-diensten bieden wel of niet verschillende features aan:
    
    - Kill switch: Als de VPN niet actief is wordt al het netwerkverkeer van jouw toestel geblokkeerd, zo vermijd je lekken.
    - Split tunneling: de VPN kan ingesteld worden dat deze enkel werkt voor een bepaald program, of voor alle programma’s behalve enkele.
    - Gebruikte protocollen: OpenVPN, Wireguard, ...
    - DNS leak protection
    - Port forwarding
    - ...
- ...
    

Enkele goede kandidaten staan op [https://www.privacyguides.org/en/vpn/](https://www.privacyguides.org/en/vpn/) . Je zal zien dat de website een waarschuwing geeft dat een VPN niet per se anonimiteit geeft. De data wordt enkel versleuteld tussen jouw client en de server. Jouw verkeer is verborgen voor jouw ISP, maar niet voor de VPN-dienst en diens ISP. Het blijft een Man-in-the-Middle attack, ook al is deze bewust. Je verkiest alleen dat de VPN-dienst weet wat je doet in plaats van jouw ISP. Als een overheid jou echt wil traceren, kunnen ze steeds deze diensten verplichten om jouw gegevens door te spelen. Dit wordt verder uitgelegd op de website van privacyguides.

Let wel op, VPN-verbindingen kunnen nog steeds informatie van jou lekken. Je kan dit testen met websites zoals [https://ipleak.net](https://ipleak.net) , [https://vpntesting.com/](https://vpntesting.com/) , ... . Een voorbeeld is WebRTC leaks, hiervoor kan je op Firefox bv. de extensie `Disable WebRTC` ( [https://addons.mozilla.org/en-US/firefox/addon/happy-bonobo-disable-webrtc/](https://addons.mozilla.org/en-US/firefox/addon/happy-bonobo-disable-webrtc/) ) gebruiken. Meer informatie vind je hierover op [https://www.ipvanish.com/blog/webrtc/](https://www.ipvanish.com/blog/webrtc/) .

# H8

## Scanning
Dit labo toont hoe je een aantal zaken in kaart brengt en onderzoekt.

### Nslookup

Laten we eens het IP-adres achterhalen van `scanme.nmap.org` . Hiervoor gebruiken we het nslookup-commando. Test dit zelf eens uit.

```powershell
PS C:\Users\martijn> nslookup scanme.nmap.org
Server:  UnKnown
Address:  xxxxx

Non-authoritative answer:
Name:    scanme.nmap.org
Addresses:  2600:3c01::f03c:91ff:fe18:bb2f
          45.33.32.156
```

_Omwille van privacyredenen zijn sommige zaken in de outputs telkens vervangen door `xxxxx`._

Het gevonden IP-adres is hier `45.33.32.156` . Dit is een IPv4 adres, scanme.nmap.org heeft ook een IPv6-adres ( `2600:3c01::f03c:91ff:fe18:bb2f` ). We werken in dit labo enkel met IPv4: IPv4 en IPv6 worden verder uitgelegd in de Computer Networks vakken.

### Ping

Laten we nu eens kijken of we dit toestel kunnen bereiken. Hiervoor kunnen we het toestel pingen met het ping-commando. Test dit zelf eens uit.

```powershell
PS C:\Users\martijn> ping 45.33.32.156

Pinging 45.33.32.156 with 32 bytes of data:
Reply from 45.33.32.156: bytes=32 time=160ms TTL=50
Reply from 45.33.32.156: bytes=32 time=160ms TTL=50
Reply from 45.33.32.156: bytes=32 time=160ms TTL=50
Reply from 45.33.32.156: bytes=32 time=159ms TTL=50

Ping statistics for 45.33.32.156:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 159ms, Maximum = 160ms, Average = 159ms
```

Ping vraagt 4x aan `45.33.32.156` "Hallo, ben jij daar?" en we zien dat we 4x een antwoord krijgen "Ja, ik ben hier". Per antwoord wordt ook de tijd gegeven dat het duurde om dat antwoord te krijgen (in de output respectievelijk 160 ms, 160 ms, 160 ms, 159ms). Op het eind zien we dat we op alle vragen een antwoord hebben gekregen (`0% loss`) en krijgen we een overzicht van de tijden (minimum, maximum en gemiddelde).

We weten nu dat `45.33.32.156` goed bereikbaar is, maar niet alle toestellen zijn zo happig om te antwoorden. Als een toestel niet antwoord kan dit meerdere dingen betekenen:

- Het toestel is offline.
- Het toestel is online, maar is ingesteld om niet te antwoorden op ping-berichten zodat mogelijke aanvallers hier niets kunnen uit leren.
- Het toestel is online en antwoordt, maar een netwerkapparaat (bv. een firewall) blokkeert ping-berichten zodat mogelijke aanvallers hier niets kunnen uit leren. `Request time out` wil dus niet automatisch zeggen dat het toestel offline is!

Let op! Je kan ook pingen op een domeinnaam zoals `scanme.nmap.org` i.p.v. een IP-adres, maar het kan zijn dat de vertaling van domeinnaam naar IP fout gaat (DNS), terwijl het toestel wel online is. In dat geval zal het voor jou via ping onterecht lijken alsof het toestel offline is. Daarom is het sterk aangeraden om eerst te zoeken naar het IP-adres met tools zoals `nslookup` en dan te pingen naar het IP-adres. Alleen zo ben je zeker van het resultaat van het ping-commando. DNS wordt verder uitgelegd in de Computer Networks vakken.

```powershell
PS C:\Users\martijn> nslookup hogent.be
Server:  UnKnown
Address:  xxxxx

Non-authoritative answer:
Name:    hogent.be
Address:  193.190.173.132

PS C:\Users\martijn> ping 193.190.173.132

Pinging 193.190.173.132 with 32 bytes of data:
Request timed out.
Request timed out.
Request timed out.
Request timed out.

Ping statistics for 193.190.173.132:
    Packets: Sent = 4, Received = 0, Lost = 4 (100% loss),
```

[https://hogent.be](https://hogent.be) weigert bijvoorbeeld om te antwoorden op ping-berichten uit veiligheidsredenen. Als we pingen naar `193.190.173.132` dan krijgen we op elke vraag geen antwoord. Ping wacht per vraag telkens een klein tijdsinterval: `Request timed out.` Betekent dat ping binnen dat interval geen antwoord van het toestel heeft gekregen. Geen enkel van de vragen is beantwoord (`100% loss`). Nochtans kunnen we wel surfen naar dit toestel via een webbrowser zoals Chrome of Firefox. Het toestel werkt dus, maar weigert gewoonweg te antwoorden op onze ping-berichten.

### Tracert

Als we een traceroute (tracert op Windows) uitvoeren op `scanme.nmap.org` kunnen we bekijken welke route netwerkberichten afleggen naar een bepaald toestel. Let op! Gebruik terug steeds het IP-adres i.p.v. de domeinnaam om juiste resultaten te bekomen. Test dit zelf eens uit.

```powershell
PS C:\Users\martijn> tracert 45.33.32.156

Tracing route to scanme.nmap.org [45.33.32.156]
over a maximum of 30 hops:

  1    <1 ms    <1 ms    <1 ms  xxxxx
  2     5 ms     5 ms     5 ms  xxxxx.net [xxxxx]
  3     6 ms     6 ms     4 ms  xxxxx.net [xxxxx]
  4     6 ms     4 ms     6 ms  brx-b4-link.ip.twelve99.net [62.115.48.172]
  5     5 ms     4 ms     4 ms  brx-b3-link.ip.twelve99.net [62.115.117.56]
  6     9 ms     8 ms     8 ms  prs-bb1-link.ip.twelve99.net [62.115.116.238]
  7    96 ms    96 ms    94 ms  ash-bb2-link.ip.twelve99.net [62.115.112.242]
  8    95 ms    94 ms    94 ms  ash-b2-link.ip.twelve99.net [62.115.123.125]
  9    95 ms    94 ms    95 ms  akamai-ic-352275.ip.twelve99-cust.net [62.115.184.199]
 10    95 ms    94 ms    94 ms  ae2.r01.iad01.icn.netarch.akamai.com [23.203.152.36]
 11    95 ms    94 ms    94 ms  ae3.r01.iad02.icn.netarch.akamai.com [23.193.112.39]
 12   106 ms   120 ms   107 ms  ae14.r01.ord01.icn.netarch.akamai.com [23.193.112.192]
 13     *      107 ms   107 ms  ae0.r02.ord01.icn.netarch.akamai.com [23.32.63.81]
 14   156 ms   157 ms   156 ms  ae4.r02.sjc01.icn.netarch.akamai.com [23.32.63.27]
 15   156 ms   156 ms   156 ms  ae2.r12.sjc01.ien.netarch.akamai.com [23.207.232.41]
 16   157 ms   162 ms   158 ms  a23-203-158-53.deploy.static.akamaitechnologies.com [23.203.158.53]
 17     *        *        *     Request timed out.
 18     *        *        *     Request timed out.
 19     *        *        *     Request timed out.
 20   159 ms   160 ms   160 ms  scanme.nmap.org [45.33.32.156]

Trace complete.
```

Elke tussenstap wordt 3x gevraagd `Hallo, ben jij daar?`. Als er een antwoord komt, wordt de tijd weergegeven. Als er geen antwoord komt, verschijnt er een `*`. Dit is ook het geval als we traceroute uitvoeren naar [https://hogent.be](https://hogent.be) , want die toestellen antwoorden niet op zulke berichten uit veiligheidsredenen.

```powershell
PS C:\Users\martijn> tracert 193.190.173.132

Tracing route to net-173-node-133.hogent.be [193.190.173.132]
over a maximum of 30 hops:

  1    <1 ms    <1 ms    <1 ms  xxxxx
  2     5 ms     5 ms     5 ms  xxxxx.net [xxxxx]
  3     5 ms     6 ms     6 ms  xxxxx.net [xxxxx]
  4     4 ms     5 ms     6 ms  xxxxx.net [xxxxx]
  5     5 ms     4 ms     4 ms  bnix.brueve.belnet.net [194.53.172.65]
  6     7 ms     6 ms     6 ms  10.28.35.61
  7     9 ms     7 ms     7 ms  hogent.r1.gntste.belnet.net [193.191.7.21]
  8     *        *        *     Request timed out.
  9     *        *        *     Request timed out.
 10     *        *        *     Request timed out.
 11     *        *        *     Request timed out.
 12     *        *        *     Request timed out.
 13     *        *        *     Request timed out.
 14     *        *        *     Request timed out.
 15     *        *        *     Request timed out.
 16     *        *        *     Request timed out.
 17     *        *        *     Request timed out.
 18     *        *        *     Request timed out.
 19     *        *        *     Request timed out.
 20     *        *        *     Request timed out.
 21     *        *        *     Request timed out.
 22     *        *        *     Request timed out.
 23     *        *        *     Request timed out.
 24     *        *        *     Request timed out.
 25     *        *        *     Request timed out.
 26     *        *        *     Request timed out.
 27     *        *        *     Request timed out.
 28     *        *        *     Request timed out.
 29     *        *        *     Request timed out.
 30     *        *        *     Request timed out.

Trace complete.
```

### nmap

Het doel van dit onderdeel is om met behulp van de poortscanner `nmap` te zoeken naar open poorten op een toestel.

#### Installatie

1. Surf naar [https://nmap.org/download.html](https://nmap.org/download.html) en download de `latest stable release self-installer` onder `Microsoft Windows binaries`.
2. Voer dit exe-bestand uit en voltooi de installatie.

#### Port scan

Je kan nu in de terminal gebruik maken van het commando `nmap`. Laten we eerst eens een port scan uitvoeren van ons eigen toestel, `localhost` (oftewel `127.0.0.1`, dit is op elk toestel het IP-adres van het toestel zelf):

```powershell
PS C:\Users\martijn> nmap localhost
Starting Nmap 7.94 ( https://nmap.org ) at 2023-10-24 00:06 Romance Daylight Time
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00021s latency).
Other addresses for localhost (not scanned): ::1
Not shown: 995 closed tcp ports (reset)
PORT     STATE SERVICE
22/tcp   open  ssh
135/tcp  open  msrpc
445/tcp  open  microsoft-ds
1025/tcp open  NFS-or-IIS
2869/tcp open  icslap

Nmap done: 1 IP address (1 host up) scanned in 0.21 seconds
```

Hier zien we bijvoorbeeld o.a. de SSH poort (22) openstaan.

**(!) Het gebruik van `nmap` op sites of servers waarvan je geen eigenaar bent of geen toestemming hebt is illegaal! `scanme.nmap.org` is een educatieve server die expliciet is opgesteld om met `nmap` te experimenteren. De eigenaars geven jou toestemming om `nmap` scans uit te voeren op deze server. Voer dit niet zomaar uit op andere sites of servers!**

Laten we eens een port scan op `scanme.nmap.org` uit voeren:

```powershell
PS C:\Users\martijn> nmap 45.33.32.156
Starting Nmap 7.94 ( https://nmap.org ) at 2023-10-24 00:09 Romance Daylight Time
Nmap scan report for scanme.nmap.org (45.33.32.156)
Host is up (0.16s latency).
Not shown: 993 closed tcp ports (reset)
PORT      STATE    SERVICE
22/tcp    open     ssh
80/tcp    open     http
135/tcp   filtered msrpc
139/tcp   filtered netbios-ssn
445/tcp   filtered microsoft-ds
9929/tcp  open     nping-echo
31337/tcp open     Elite

Nmap done: 1 IP address (1 host up) scanned in 3.81 seconds
```

We zien naast de SSH poort ook bv. poort 80 voor HTTP-verkeer (ongeëncrypteerd webverkeer). Deze poort staat open en kan dus bereikt worden. HTTP wordt tegenwoordig niet gebruikt omdat het verkeer niet geëncrypteerd is. Deze poorten staan `open`, dus er draait een programma achter die poorten dat reageert op binnenkomende berichten. Deze programma's kunnen misschien aangevallen worden door cybercriminelen. Anderzijds moeten deze poorten openstaan, anders kunnen gewone gebruikers geen gebruik maken van deze programma's. Je probeert op een server zo weinig poorten als mogelijk open te zetten, zonder dat legitieme gebruikers hinder ondervinden.

Er zijn ook enkele `filtered` poorten. `nmap` heeft voor deze poorten geen enkel antwoord ontvangen. Er is dus geen duidelijkheid of deze poorten open staan of niet. Vermoedelijk blokkeert een firewall deze poorten.

Tegenwoordig wordt steeds HTTPS (geëncrypteerd webverkeer) gebruikt met poort 443. We zien deze poort niet terug komen in de lijst, laten we eens specifiek op deze poort scannen met de `-p` optie:

```powershell
PS C:\Users\martijn> nmap -p 443 45.33.32.156
Starting Nmap 7.94 ( https://nmap.org ) at 2023-10-24 00:10 Romance Daylight Time
Nmap scan report for scanme.nmap.org (45.33.32.156)
Host is up (0.16s latency).

PORT    STATE  SERVICE
443/tcp closed https

Nmap done: 1 IP address (1 host up) scanned in 0.46 seconds
```

De HTTPS-poort staat op `closed`. We hebben een antwoord gekregen van de server dat er geen programma op die poort draait. Dit is het verschil met `filtered`: daarbij kregen we geen antwoord en moesten we gokken naar de reden waarom er geen antwoord kwam.

#### Version detection scan

Laten we eens kijken naar de specifieke versies van de programma's achter de open poorten met de `-sV` optie:

```powershell
PS C:\Users\martijn> nmap -sV 45.33.32.156
Starting Nmap 7.94 ( https://nmap.org ) at 2023-10-24 00:22 Romance Daylight Time
Nmap scan report for scanme.nmap.org (45.33.32.156)
Host is up (0.16s latency).
Not shown: 993 closed tcp ports (reset)
PORT      STATE    SERVICE      VERSION
22/tcp    open     ssh          OpenSSH 6.6.1p1 Ubuntu 2ubuntu2.13 (Ubuntu Linux; protocol 2.0)
80/tcp    open     http         Apache httpd 2.4.7 ((Ubuntu))
135/tcp   filtered msrpc
139/tcp   filtered netbios-ssn
445/tcp   filtered microsoft-ds
9929/tcp  open     nping-echo   Nping echo
31337/tcp open     tcpwrapped
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 12.27 seconds
```

We zien bijvoorbeeld dat de versie van de SSH software op deze server `6.6.1p1` is. Daarnaast zien we ook het type van de webserver `apache` en de versie `2.4.7`. We kunnen ook zien dat de server het `Ubuntu` Linux besturingssysteem gebruikt. Voor een hacker is dit zeer interessante informatie: je kan nu kijken welke hacks er bruikbaar zijn op deze versie. Zeker verouderde systemen kunnen zo uitgebuit worden, dus update steeds jouw toestellen en software.

#### Network scan
Je kan nmap ook gebruiken om te scannen welke toestellen er op een netwerk draaien. Om jouw thuisnetwerk te scannen gebruik je jouw netwerk adres. Dit is vermoedelijk `192.168.1.1/24` of `192.168.0.1/24` (dit wordt verder uitgelegd in de Computer Networks vakken). Je kan dit nagaan met het ipconfig-commando.

```powershell
PS C:\Users\martijn> ipconfig

Windows IP Configuration

Ethernet adapter Ethernet:

   Connection-specific DNS Suffix  . : xxxxx
   IPv4 Address. . . . . . . . . . . : xxxxx
   Subnet Mask . . . . . . . . . . . : 255.255.255.0
   Default Gateway . . . . . . . . . : 192.168.1.1
```

De default gateway is `192.168.1.1`, dus bij ons zal het netwerk vermoedelijk `192.168.1.1/24` zijn. Welke toestellen vind je allemaal terug op jouw thuisnetwerk? Welke poorten staan er allemaal open?

```powershell
PS C:\Users\martijn> nmap 192.168.1.1/24
...
```

# H9

## SSH

SSH (Secure SHell) is een techniek om op een veilige en geëncrypteerde manier via de command line in te loggen op een toestel via het internet. Het vervang het verouderde en onveilige Telnet. SSH werkt net als webverkeer met clients en servers: een SSH client kan inloggen op een SSH server.

![](./attachments/20241216164216.png)

SSH bestond al lange tijd op Mac en Linux, maar is tegenwoordig ook ingebouwd in Windows 10. De commando’s zijn op beide besturingssystemen hetzelfde. Je kan ook indien gewenst externe programma’s gebruiken zoals Putty voor Windows.

De docenten zullen voor dit labo een SSH server voorzien waarop je kan inloggen, samen met een gebruikersnaam en wachtwoord voor een account op die SSH server. **Je kan via SSH inloggen op dit account, maak hier geen misbruik van: alles wordt geregistreerd!**

Voor de voorbeelden in dit document maken we telkens gebruik van de volgende (niet-bestaande) SSH server en account:

- Server: `sshtest.hogent.be`
- Poort: 30022
- Gebruikersnaam: `student`
- wachtwoord: `DitIsEenOkWachtwoord!`

⚠️ **De echte login-gegevens en serveradres worden gegeven tijdens de les.** Je zal bovenstaande gegevens dus daardoor moeten vervangen in de commando's in dit labo!

### Inloggen met gebruikersnaam en wachtwoord

Het eenvoudigste is om in te loggen met een gebruikersnaam en wachtwoord. Dit kan met eenvoudig het `ssh` commando in de terminal:

```spowershell
ssh <gebruikersnaam>@<server> -p <poort>
```

Vervang de velden ingesloten met `<` en `>` in het commando met de juiste inloggegevens. Met onze voorbeeldgegevens wordt dit:

```spowershell
ssh student@sshtest.hogent.be -p 30022
```

Het kan zijn dat je de volgende uitleg ziet:

```text
The authenticity of host '192.168.1.254 (192.168.1.254)' can't be established.
ECDSA key fingerprint is SHA256:8DMc+FXE2A0qwerKSbIJMpvdG38r23eASDFxfM2eh1LA.
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

Dit komt omdat je voor de eerste keer op dat toestel verbindt met SSH. Typ `yes` en druk op `Enter`. Nu krijg je de vraag om het wachtwoord in te geven:

```spowershell
student@sshtest.hogent.be’s password:
```

Typ hier het wachtwoord in. Je zal zien dat er geen sterretjes (`*`) of iets dergelijks verschijnen als je het wachtwoord intypt. Dit is een beveilingsmaatregel dat verhindert dat iemand over de schouder kan meekijken hoe lang het wachtwoord is. Als iemand de lengte weet, is het een stuk makkelijker om het wachtwoord te kunnen achterhalen. Eenmaal het wachtwoord ingetypt, druk je op `Enter`.

Je bent nu ingelogd op het systeem vanop afstand. Het lijkt alsof je aan de computer zelf zit en de command line hebt openstaan. Probeer eens enkele standaard commando’s uit zoals `ls`, `cd`, `uname –a`, ...

```spowershell
PS C:\Users\martijn> ssh xxxxx@xxxxx
The authenticity of host 'xxxxx (xxxxx)' can't be established.
ED25519 key fingerprint is SHA256:KCHd6HWbeGsoMyAnrmC7/QyT777zeKyzMuO6PXHC9ZQ.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'xxxxx' (ED25519) to the list of known hosts.
root@xxxxx's password:
Activate the web console with: systemctl enable --now cockpit.socket

Last login: Thu Oct 19 09:57:34 2023 from 10.255.253.2
[root@web ~]# ls -al
total 68
dr-xr-x---.  4 root root   274 Apr 25 15:12 .
dr-xr-xr-x. 18 root root   244 Feb  4  2022 ..
-rw-------   1 root root 18716 Oct 19 10:08 .bash_history
-rw-r--r--.  1 root root    18 Aug 12  2018 .bash_logout
-rw-r--r--.  1 root root   176 Aug 12  2018 .bash_profile
-rw-r--r--.  1 root root   176 Aug 12  2018 .bashrc
drwx------   3 root root    18 Mar  3  2022 .config
-rw-r--r--.  1 root root   100 Aug 12  2018 .cshrc
-rw-r--r--.  1 root root   129 Aug 12  2018 .tcshrc
[root@web ~]#
```

_De code hier is gekopieerd tijdens het inloggen naar een specifieke server. Wegens privacy redenen zijn sommige gegevens onherkenbaar gemaakt en vervangen door `xxxxx`._

### Inloggen met SSH-sleutelparen

Het gebruik van wachtwoorden wordt naar het verloop van tijd vervelend omdat je telkens jouw wachtwoord moet ingeven. Daarom biedt SSH aan om met sleutelparen te werken. Zo kan je inloggen zonder telkens jouw wachtwoord te moeten ingeven. We gaan hier nu een SSH-sleutelpaar aanmaken en overbrengen naar de server.

#### Genereren van het SSH-sleutelpaar

Je kan een sleutelpaar voor SSH genereren met het `ssh-keygen` commando. Hierbij enkele opmerkingen:

- SSH vraagt waar het sleutelpaar moet worden opgeslagen. De standaard aangeboden locatie is goed, druk op `Enter` om dit te bevestigen.
- Je kan indien je dit wenst een wachtwoord toekennen aan het sleutelpaar. We gaan deze stap voor de eenvoud overslaan, druk op `Enter`. Je moet dan opnieuw het wachtwoord ingeven. Aangezien wij geen wachtwoord hebben opgegeven, hoef je nu terug gewoon op `Enter` te drukken.

```spowershell
PS C:\Users\martijn> ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (C:\Users\martijn/.ssh/id_ed25519):
Created directory 'C:\\Users\\martijn/.ssh'.
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in C:\Users\martijn/.ssh/id_ed25519
Your public key has been saved in C:\Users\martijn/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:AL7BWHO1PDEilqrRXSJMSnmIU+aGMaJPi+6wB77cL2U martijn@DESKTOP-J2AMDQF
The key's randomart image is:
+---[RSA 3072]----+
|==* *.o.+        |
|*XoBo=.o +       |
|+o*++o. +        |
|.=o..o . .       |
|.oo .   S        |
|+    E           |
|oo  o            |
|+oo.             |
|.=..o.           |
+----[SHA256]-----+
PS C:\Users\martijn>
```

Jouw sleutel is nu aangemaakt. Je vindt deze standaard terug in de map `C:\Users\<gebruikersnaam>\.ssh`. `id_ed25519` bevat jouw private sleutel, **deze geef je nooit aan iemand anders!** `id_ed25519.pub` (let op de `.pub`-extensie) is jouw publieke sleutel en kan je wel zonder problemen verspreiden. Op oudere versie van Windows kan het zijn dat de bestanden `id_rsa` en `id_rsa.pub` noemen (wanneer RSA gebruikt wordt als cipher).

```spowershell
PS C:\Users\martijn> ls .ssh


    Directory: C:\Users\martijn\.ssh


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/20/2023   2:22 PM           2610 id_ed25519
-a----        10/20/2023   2:22 PM            578 id_ed25519.pub
```

Je kan deze sleutels bekijken met een text editor:

```spowershell
PS C:\Users\martijn> cat .\.ssh\id_ed25519.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGwNH78dBrJoWr+BznrLA7J260odcI2GYW7yhey3LLGW martijn@DESKTOP-J2AMDQF
```

```spowershell
PS C:\Users\martijn> cat .\.ssh\id_ed25519
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
QyNTUxOQAAACBsDR+/HQayaFq/gc56ywOydutKHXCNhmFu8oXstyyxlgAAAJi5CKI7uQii
OwAAAAtzc2gtZWQyNTUxOQAAACBsDR+/HQayaFq/gc56ywOydutKHXCNhmFu8oXstyyxlg
AAAECvmD6r+GnmY5XHP0g83Vf0/Rod28vRMsjSSTxOskLsLmwNH78dBrJoWr+BznrLA7J2
60odcI2GYW7yhey3LLGWAAAAEHBqbUBOQjIyLTROUzNXRzMBAgMEBQ==
-----END OPENSSH PRIVATE KEY-----
```

De private sleutel wordt hier enkel getoond voor demonstratie doeleinden. Deze sleutel is dus niet meer veilig en is ondertussen verwijderd. **Toon zelf NOOIT jouw private sleutel aan iemand anders, anders is jouw sleutelpaar niets meer waard en compleet onveilig!** Dit is hetzelfde concept als bij asymmetrische encryptie.

#### Het uploaden van het genereerde sleutelpaar

We gaan nu de publieke sleutel uploaden naar de SSH server. Linux en Mac gebruikers kunnen dit heel eenvoudig met behulp van het `ssh-copy-id` commando. Windows kent helaas het `ssh-copy-id` commando niet (`not recognized`):

```spowershell
PS C:\Users\martijn> ssh-copy-id
ssh-copy-id : The term 'ssh-copy-id' is not recognized as the name of a cmdlet, function, script file, or operable
program. Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
At line:1 char:1
+ ssh-copy-id
+ ~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (ssh-copy-id:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException
```

Daarom gebruiken we wat command line "magie" om de sleutels naar de server up te loaden via SSH. Deze commando’s worden uitgevoerd vanop de client, dus jouw toestel.

```spowershell
type C:\Users\ <gebruikersnaam-eigen-toestel> \.ssh\id_ed25519.pub | ssh <gebruikersnaam>@<server> -p <poort> "cat >> ~/.ssh/authorized_keys"
```

Dit is een enkel commando dus alles hoort op een lijn zonder enters zoals in onderstaande screenshot. Vervang alles tussen de `<` en `>` characters. Dus volgens onze voorbeeldgegevens wordt dit:

```spowershell
type C:\Users\student\.ssh\id_ed25519.pub | ssh student@sshtest.hogent.be -p 30022 "cat >> ~/.ssh/authorized_keys"
```

Het kan zijn dat dit commando blijft hangen, druk na 10 s op `Ctrl+C` om het te onderbreken. Ga dan verder met de volgende stap.

Probeer nu in te loggen, je zal zien dat je geen wachtwoord meer moet intypen!

Linux en Mac gebruikers kunnen wel eenvoudig het `ssh-copy-id` commando gebruiken en hoeven bovenstaande truc niet uit te voeren.