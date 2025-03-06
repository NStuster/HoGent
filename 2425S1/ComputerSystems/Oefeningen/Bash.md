


# Extra oefeningen
![[extra_oefeningen_Linux.docx]]

![[pokemon2.txt]]
  
**Opmerking: Maak de nodige bestanden, mappen, gebruikers en groepen aan om het gevraagde te kunnen uittesten!**

1) In welke directory op het systeem vinden we configuratiebestanden die systeem – en applicatie – instellingen bijhouden? Duid het juiste antwoord aan
	(a) /etc (b) /lib (c) /usr (d) /var

2) In /usr/share/man vind je de manpages van alle commando's, configuratiebestanden, enz. Geef een commando onafhankelijk van de huidige directory voor het oplijsten van alle directories onmiddellijk onder /usr/share/man (NIET de inhoud van die directories) die beginnen met de letter a?

3) Geef de permissie –rwxr-xr-- in octale notatie weer? ____________

4) De waarde van umask is 112. Wat zal de permissie zijn van een nieuw gecreëerd bestand?

  

5) Geef het commando om de execute permissies in te stellen voor alle bestanden en subdirectories in de directory **/home/sysadmin**?

  

6) Gegeven: Een bestand met de naam **foo1**. Geef het commando zodat de eigenaar en de groep lees - en schrijfrechten hebben en alle anderen enkel schrijfrechten?

  

7) Gegeven: Een bestand met de naam **foo2**. Geef het commando zodat de eigenaar lees – en schrijfrechten heeft, de groep enkel leesrechten en alle anderen geen enkel recht hebben. 
   Maak hierbij gebruik van de octale notatie (numerieke methode).

  

8) Met welk commando zorg je ervoor dat de bestanden in **dir1** enkel kunnen verwijderd worden door de root en door de eigenaar zelf?

  

9) Je bevindt je in de homedirectory van de gebruiker student en je bent momenteel aangemeld als **student**.

1. Met welk commando creëer je de volgende groepen: **1TIN**, **2TIN**, **3TIN**?
    
2. Met welk commando controleer je of de groepen effectief werden aangemaakt?
    
3. Met welk commando voeg je **student** toe aan de groepen **1TIN** en **2TIN**?
    
4. Met welk commando creëer je de gebruiker **stijn** met paswoord **stijn** en met als **primaire groep 1TI**N, maar die eveneens behoort tot de groep **2TIN**. Er wordt voor deze gebruiker géén home directory gecreëerd.
    
5. Met welk(e) commando(‘s) geef je een overzicht van het aantal gebruikers per groep voor de 3 groepen: 1TIN, 2TIN, 3TIN. Bijvoorbeeld, na de vorige commando’s ziet het overzicht van de groepen er als volgt uit …
    

1TIN:x:1007:student

2TIN:x:1008:student,stijn

3TIN:x:1009:

…

Het resultaat moet dan zijn

1TIN:1

2TIN:2

3TIN:0

Eenvoudigheidshalve mag je ervan uitgaan dat de gebruikersnamen bestaan uit hoofdletters

en kleine letters.

  
  
6. Met welk commando verwijder de groep **3TIN**?
    
10) Je bent momenteel aangemeld als student en je bevindt je in de homedirectory. Met welk commando creëer je de volgende mappenstructuur? (Maak het commando zo compact mogelijk!)

  

![](file:///tmp/lu62833pik6h.tmp/lu62833pik9f_tmp_eab553c394649ab.gif)

![](file:///tmp/lu62833pik6h.tmp/lu62833pik9f_tmp_f7e3af4ddee83a32.gif)

  

11) Je bent momenteel aangemeld als student en je bevindt je in de homedirectory. Met welk commando maak in de map **rapporten/restaurants/2014** de volgende bestanden aan: **rapport1.txt, rapport2.txt,**

**rapport3.txt en rapport4.txt**?(Maak hiervoor gebruik van slechts één commando!)

  

12) Je bent momenteel aangemeld als student en je bevindt je in de homedirectory. Met welk commando verplaats je **rapport1.txt, rapport2.txt en rapport3.txt** naar

**rapporten/restaurants/2015** in 1 keer? (Maak het commando zo bondig mogelijk!)

  

13) Je bent momenteel aangemeld als student en je bevindt je in de homedirectory. Met welk commando kopieer je 1 één keer alle bestanden en subdirectories van de directory **rapporten** naar de

directory **archief**.

  

14) Je bent momenteel aangemeld als student en je bevindt je in de homedirectory. Met welk commando geef

Je een omgekeerd alfabetische lijst van alle bestanden (geen directories) die zich 2 niveaus

(levels) onder rapporten bevinden.
![](file:///tmp/lu62833pik6h.tmp/lu62833pik9f_tmp_4ab6870d3cf881c6.gif)

  
15) Je bent momenteel aangemeld als student en je bevindt je in de homedirectory. Met welk commando kan je een volledige boomstructuur zien van de **homedirectory van student**?

  

16) Je bent momenteel aangemeld als student en je bevindt je in de homedirectory. Met welk commando verwijder je de volledige directory **archief** in 1 keer? (Gebruik hiervoor 1 commando!)

  

17) Je bent momenteel aangemeld als student en je bevindt je in de homedirectory. Met welk commando maak je in deze directory een symbolische link met naam **symbolinkrapport1** naar **rapporten/restaurants/2015/rapport1.txt**. (Maak hiervoor gebruik van slechts één commando!)

  

18) Stel je hebt een bestand **foo1** en je creëert een harde link naar dit bestand **lnkfoo1**. Wat

moet je doen als je het bestand foo1 volledig wil verwijderen?

  
  
  

Open het bestand pokemon.txt op je computer met kladblok en kopieer de inhoud naar je klembord. Typ in je terminalvenster eerst echo “ (typ manueel de aanhalingstekens en kopieer ze niet van Word!) en plak (rechtermuisknop en plakken) vervolgens alle pokémonnamen. Eindig met “ > pokemon.txt en druk op enter. Je zou nu succesvol een bestand moeten hebben met de naam pokemon.txt en als inhoud de pokémonnamen van de eerste generatie. Controleer dit met de juiste commando’s! Bij het plakken kan het mislopen dat elke regel een extra lege regel te veel krijgt. Je kan onderstaand commando gebruiken om de lege regels weg te werken.

 mv pokemon.txt p ;  sed '/^\s*$/d' p > pokemon.txt


Beantwoord onderstaande vragen die gebruikmaken van het bestand pokemon.txt. Als er gevraagd is “hoeveel” dan is het de bedoeling om te antwoorden met een cijfer. Er wordt dus gevraagd om te tellen. Bij de vraag “geef de Pokémons” of “wat zijn de Pokémons” dien je te antwoorden met een lijst van Pokémonnamen. Wanneer we vragen naar klinkers bedoelen we a, e, o, u en i. **Noteer ook bij elke vraag welk commando daarvoor gebruikt hebt!**

  
  

19) Hoeveel Pokémonnamen beginnen met een klinker?

20) Hoeveel Pokémonnamen hebben een klinker als tweede karakter (op positie 2 van het woord)?

21) Hoeveel Pokémonnamen eindigen op een klinker?

22) Hoeveel Pokémonnamen bestaan precies uit 5 karakters?

23) Welke Pokémonnamen bestaan uit 3 of 4 karakters (Gebruik hiervoor slechts 1 commando)?



24) Test volgende commandos uit en probeer uit te leggen wat de reguliere expressie precies doet.

grep -E "[e]{2,}" pokemon.txt     

grep -E "[z]{1,2}" pokemon.txt      

25) Hoeveel Pokémonnamen hebben een naam waar er twee klinkers na elkaar komen? Dit hoeft niet noodzakelijk dezelfde klinker te zijn. Voorbeelden zijn “aap”, “boos”, “mier”, “poef”. Tip: Maak gebruik van een gelijkaardige reguliere expressie als in de vorige vraag.

26) Gebruik de handleiding om informatie op te vragen van het commando “nl”. Wat doet dit? Test dit uit met het pokemon.txt bestand.

27) Welke Pokémon heeft nummer 100? Probeer je commandoregel zodanig aan te passen dat je ook enkel deze regel ziet, het cijfer 100 mag je nog zien.

28) Wat is het nummer van de Pokémon met naam “Abra”?

29) Toon enkel Pokémonnummer 112. Doe dit op twee verschillende manieren:

- Via nl en grep
    
- Zonder nl en grep maar via head/tail
    

  
  

  
  

30) Tel hoeveel klinkers er zijn in het hele bestand. Tip: Maak gebruik van het **tr** commando om op zoek te gaan naar alle “niet-klinkers”. Er is een optie die een selectie kan “inverteren” of ook “omdraaien” In de wiskunde noemen ze dit vaak het “complement”. Het tr-commando kan karakters ook verwijderen, zoek dit op in de man pagina!

31) Sorteer de Pokémons alfabetisch op naam. Wat is dan:

- De eerste Pokémon?
    
- De laatste Pokémon?
    
- Pokémon nummer 100
    
  

32) Ga op zoek naar alle bestanden onder de /usr/lib map die groter zijn dan 10 megabytes. Stuur alle foutmeldingen van de errorstream naar /dev/null.

33) Ga op zoek naar alle bestanden onder de /etc map die beginnen met “host” in de naam.

34) Het bestand /etc/os-release is een softlink naar een bestand met dezelfde naam op een andere locatie. Controleer dit met het juiste commando! Probeer met behulp van find de locatie ook te achterhalen en zoek dus naar bestanden met de naam “os-release” op je linux-machine.

35) Hoeveel mappen zijn er te vinden met de naam apt onder /usr met de voorwaarde dat je maximaal 3 niveaus diep mag gaan.

36) Welke lege bestanden zijn te vinden in de home directory van sysadmin?