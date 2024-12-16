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
### De databank verwijderen (inbreuk op availability)[¶](https://hogenttin.github.io/cybersecurity/h3/sql-injection/sql-injection/#de-databank-verwijderen-inbreuk-op-availability "Permanent link")

Je kan grote schade aanrichten met door met SQL injection code de databank te verwijderen. Eenmaal de databank verwijderd is, kan er namelijk niemand meer inloggen. Zoek hiervoor SQL injection codes op die het woord `DROP` bevatten. Zie hiervoor ook de tip bij het stuk `Een account toevoegen`. Bij het verwijderen van de databank zal er een foutmelding getoond woord: je drukt immers op inloggen, maar de databank is zojuist door jouw code geleegd, vandaar de foutmelding.

```sql
' ; DROP DATABASE Accounts -- 
```

### Enkele hulpbronnen:

- [https://github.com/payloadbox/sql-injection-payload-list](https://github.com/payloadbox/sql-injection-payload-list)
- [https://www.openbugbounty.org/blog/ismailtsdln/sql-injection-payload-list/](https://www.openbugbounty.org/blog/ismailtsdln/sql-injection-payload-list/)
- [http://www.unixwiz.net/techtips/sql-injection.html](http://www.unixwiz.net/techtips/sql-injection.html)
- [https://www.softwaretestinghelp.com/sql-injection-how-to-test-application-for-sql-injection-attacks/](https://www.softwaretestinghelp.com/sql-injection-how-to-test-application-for-sql-injection-attacks/)
- [https://pentest-tools.com/blog/sql-injection-attacks/](https://pentest-tools.com/blog/sql-injection-attacks/) (geavanceerd)

# H4

## Encryptie met HoGent e-mail



# H5

# H6

GEEN LABO
# H7

# H8

# H9
