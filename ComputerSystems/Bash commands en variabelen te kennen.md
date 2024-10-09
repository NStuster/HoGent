# Opbouw commando
```bash

command [-opties] [argument]

```
# Opties
### Opties kunnen in combinatie met andere opties gebruikt worden:

dit onderstaande voorbeeld is een combinatie van `ls -l -r`
```bash
sysadmin@localhost:~$ ls -lr
```

### - of --

Bij een optie die *enkel een letter* heeft gebruiken we een enkele `-`
Bij een optie met een *woord* gebruiken we een dubbele `--`

# Variabele

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

# Aliassen

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

# Lijst met te kennen bash commandos

| bash commando   | resultaat                                             | optie resultaat                                                         | argument                    | argument verplicht | meerdere argument mogelijk |
| --------------- | ----------------------------------------------------- | ----------------------------------------------------------------------- | --------------------------- | ------------------ | -------------------------- |
| ls              | weergeven directory inhoud                            |                                                                         | ./directory/die/gewenst/is/ | nee                | ja                         |
| ls -l           | weergeven directory inhoud                            | meer detail (long)                                                      | ./directory/die/gewenst/is/ | nee                | ja                         |
| ls -a           | weergeven directory inhoud                            | met verborgen bestanden                                                 | ./directory/die/gewenst/is/ | nee                | ja                         |
| ls -r           | weergeven directory inhoud                            | omgekeerde volgorde                                                     | ./directory/die/gewenst/is/ | nee                | ja                         |
| ls -s           | weergeven directory inhoud                            | van groot naar klein                                                    | ./directory/die/gewenst/is/ | nee                | ja                         |
| history         | weergeven bash geschiendenis                          |                                                                         |                             |                    |                            |
| !n              | voer history lijn n uit                               |                                                                         |                             |                    |                            |
| !!              | meest recente history command                         |                                                                         |                             |                    |                            |
| `ctrl +` r      | zoeken in history                                     |                                                                         |                             |                    |                            |
|                 | definiëren van variabele                              |                                                                         | variabele=waarde            | ja                 |                            |
| echo            | text weergeven in console                             |                                                                         | $(variabele)                | ja                 |                            |
| echo            | text weergeven in console                             |                                                                         | ./bestand.txt               | ja                 |                            |
| echo            | bestand aanmaken met inhoud                           |                                                                         | text > bestandsnaam         | ja                 |                            |
| env             | geeft omgevingsvairabelen weer                        |                                                                         |                             |                    |                            |
| export          | omgevingsvariabele aanmaken                           |                                                                         | $(variabele)                | ja                 |                            |
| unset           | omgevingsvariabele verwijderen                        |                                                                         | $(variabele)                | ja                 |                            |
| alias           | kort commando maken van lang commando                 |                                                                         | aliasnaam='commando'        | ja                 |                            |
| alias           | aliassen weergeven                                    |                                                                         |                             | nee                |                            |
| unalias         | alias wissen                                          |                                                                         | aliasnaam                   | ja                 |                            |
| grep            | zoeken in platte text                                 |                                                                         | "search term" filename      | ja                 |                            |
| ;               | scheiden van meerdere commando's                      |                                                                         |                             |                    |                            |
| cal             | weergeven van een kalender                            |                                                                         | maand jaar                  | ja                 |                            |
| man             | hulp pagina's                                         |                                                                         | commando                    | ja                 |                            |
| man -f          | hulp pagina's                                         | in welke sectie dit staat                                               | commando                    | ja                 |                            |
| man -k          | hulp pagina's                                         | zoeken in de man pages                                                  | commando                    | ja                 |                            |
| whereis         | locatie van commando of locatie van man pagina vinden |                                                                         | commando                    | ja                 |                            |
| commando --help |                                                       | basis help opvragen                                                     |                             |                    |                            |
| pwd             | huidige directory locatie weergeven                   |                                                                         |                             |                    |                            |
| cd              | verplaatsen naar directory                            |                                                                         | /directory/locatie/         | ja                 |                            |
| cd -            | verplaatsen naar directory                            | vorige locatie                                                          |                             |                    |                            |
| cd /            | verplaatsen naar directory                            | root                                                                    |                             |                    |                            |
| cd ~            | verplaatsen naar directory                            | home                                                                    |                             |                    |                            |
| cd ..           | bovenliggende locatie                                 |                                                                         | /../..                      | nee                |                            |
| cp              | bestand kopieren                                      |                                                                         | bron bestemming             | ja                 |                            |
| cp -v           | bestand kopieren                                      | (verbose) Toont output                                                  | bron bestemming             | ja                 |                            |
| cp -i           | bestand kopieren                                      | (interactive) Vraagt of een bestand overschreven mag worden.            | bron bestemming             | ja                 |                            |
| cp -r           | bestand kopieren                                      | (recursive) Kopieert zowel bestanden als de volledige mappenstructuur.) | bron bestemming             | ja                 |                            |
| mv              | bestand verplaatsen / hernoemen                       |                                                                         | bron bestemming             | ja                 |                            |
| mv -v           | bestand verplaatsen / hernoemen                       | (verbose) Toont output                                                  | bron bestemming             | ja                 |                            |
| mv -i           | bestand verplaatsen / hernoemen                       | (interactive) Vraagt of een bestand overschreven mag worden.)           | bron bestemming             | ja                 |                            |
| mv -n           | bestand verplaatsen / hernoemen                       | (no clobber) Overschrijft niet de inhoud van een doelbestand.)          | bron bestemming             | ja                 |                            |
| touch           | bestand aanmaken                                      |                                                                         | bestandsnaam                | ja                 |                            |
| cat             | inhoud bestand uitschrijven                           |                                                                         |                             |                    |                            |
| mkdir           | directory aanmaken                                    |                                                                         | directorynaam               | ja                 |                            |
| mkdir -p        | directory structuur aanmaken                          |                                                                         | map1/map2/map3              | ja                 |                            |
| rm              | bestand verwijderen                                   |                                                                         | bestandsnaam                | ja                 |                            |
| rm -r           | directory verwijderen                                 | (recursif) directory                                                    | directorynaam               | ja                 |                            |
| rm -f           | bestand verwijderen                                   | (force) zonder bevestiging                                              | bestandsnaam                | ja                 |                            |
| rm -i           | bestand verwijderen                                   | (interactive) vraagt bevestiging                                        | bestandsnaam                | ja                 |                            |
| rm -r -i        | directory verwijderen                                 | (recursif) directory (interactive) vraagt bevestiging                   | directorynaam               | ja                 |                            |
|                 |                                                       |                                                                         |                             |                    |                            |
# Lijst met variabelen

| Naam  | inhoud                                                                  |
| ----- | ----------------------------------------------------------------------- |
| $PATH | alle plaatsten waar het systeem kan zoeken naar uitvoerbare programma's |
|       |                                                                         |
# Globbing lijst

| Symbool | werking                                                                               |
| ------- | ------------------------------------------------------------------------------------- |
| \*      | Representeert 0 of meer gelijk welke tekens in een bestandsnaam.                      |
| ?       | Representeert precies 1 teken.                                                        |
| []      | Zoekt een match met precies 1 teken dat tussen de vierkante haakjes wordt opgegeven.  |
| !       | Wordt gebruikt met [ ] om aan te geven dat de tekens tussen [ ] niet mogen voorkomen. |
