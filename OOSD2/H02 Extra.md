
# 25-02-21-info-in-de-klas
# Code scheiden

## 3 lagen

**UI** \<-> **Applicatie** \<-> **Data**
<
## Applicatie scheiden we verder op

Bevat:
- **Applicatie** (staat in voor het **wat**)
- **Domeincontroller** 
	- (applicatie communiceert via deze)
	- Centrum van de applicatie
- **Repository**
	- Kan bv een groep van 10 studenten bevatten
	- hier maken we niet het onderscheid tussen details
- **Interfaces**
	- een tussenstap dat we maken (soort document met de voorwaarden)
- **Domeinobjecten**
	- Bevat de klassen
		- Deze zijn in principe herbruikbaar

## DTO

Pakketje informatie die tussen Domeincontroller en UI staat

## Mapper

- Om data te voeden vanuit de databank
- Staat tussen de repository en Data
## Volledig schema

![[PXL_20250221_125303313.jpg]]

# Samenvatting transcriptie

Hieronder een overzichtelijker en gestructureerd overzicht:

---

### 1. Hergebruik en Scheiding van Dataobjecten

- **Algemene dataobjecten:**
    - Voorbeeld: Een student met voornaam en achternaam.
    - Deze objecten worden in een aparte map bewaard (buiten het specifieke project) zodat ze in meerdere applicaties hergebruikt kunnen worden (bijv. website, bankapplicatie, etc.).

---

### 2. Domeincontroller en Repository

- **Domeincontroller:**
    - Stuurt de interactie tussen de user interface (UI) en de data.
    - Beheert de logica en stuurt de werking van de applicatie aan.
- **Repository (Klasgroep):**
    - Bundelt individuele dataobjecten, zoals studenten, in één collectie.
    - Biedt methoden voor het toevoegen, sorteren en valideren van objecten.
    - Zorgt ervoor dat de domeincontroller niet elk object afzonderlijk hoeft te beheren.

---

### 3. Data Transfer Objects (DTO’s)

- **Functie van DTO’s:**
    - Werken als tussenlaag tussen de domeinlaag en de UI.
    - Verpakken en transporteren de benodigde informatie zonder de interne structuur van de dataobjecten bloot te geven.
    - Maken de applicatie robuuster; wijzigingen in de backend hoeven de UI niet direct te beïnvloeden.

---

### 4. Architectuur in Lagen

- **Linkerzijde – User Interface (UI):**
    
    - Verantwoordelijk voor de weergave van data.
    - Blijft onafhankelijk van de interne dataopslag.
- **Midden – Domeincontroller:**
    
    - Verbindt de UI met de data.
    - Stuurt de logica en beheert de repository.
- **Rechterzijde – Dataopslag:**
    
    - Bevat de dataobjecten en de opslaglogica.
    - Is losgekoppeld zodat wijzigingen hier minimale impact hebben op andere lagen.

---

### 5. Voordelen van deze Structuur

- **Herbruikbaarheid:**
    - Dataobjecten kunnen in meerdere applicaties gebruikt worden zonder aanpassingen.
- **Onderhoudbaarheid:**
    - Wijzigingen in één laag (bijv. dataopslag) vragen slechts beperkte aanpassingen in andere lagen.
- **Flexibiliteit:**
    - De repository kan aangepast worden (bijvoorbeeld bij overstap naar een andere opslagmethode) zonder dat de gehele applicatie herschreven hoeft te worden.

---

### Conclusie

Het gescheiden ontwerpen van domeinobjecten, domeincontroller, repository en DTO’s zorgt voor een flexibele, onderhoudbare en herbruikbare architectuur. Dit maakt het mogelijk om, zelfs bij groei of wijzigingen in de applicatie, slechts minimale aanpassingen door te voeren en de kernlogica intact te laten. Deze aanpak is niet alleen geschikt voor eenvoudige oefeningen, maar vormt ook een stevige basis voor complexere applicaties zoals multiplayer games of andere grote systemen.