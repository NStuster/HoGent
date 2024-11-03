# Wat
- Is onderdeel van de analyse
- Is een document dat beschrijft wat een operatie moet bereiken
- Beschrijft de veranderingen/gevolgen in het systeem ten gevolge van die operatie
- Is een expliciete beschrijving van het effect van die operatie, beschrijft niet hoe de veranderingen tot stand gekomen zijn.
- ENKEL voor systeemoperaties die iets wijzigen in het systeem
	- b.v.: aanmaken speler, krediet toekennen, ...
# Doel

# Stappenplan

## Template
### Gebruik volgend template 
- **Contract**: duidelijke naam/omschrijving voor het OC
- **Operation**: naam van de systeemoperatie uit het SSD
- **Cross References**: naam van de betrokken use case(s)
- **Preconditions**: beschrijving van de staat van het systeem VOOR de uitvoering van de operatie. Enkel de niet-triviale zaken opnemen
- **Postconditions**: gedetailleerde beschrijving van de objecten die gewijzigd zijn NA de uitvoering van de operatie

![](20241027170927.png)

## Stappen

### Identificatie en definitie van de postcondities
- Postcondities zijn declaraties over de staat van het systeem
- Beschrijven zeer goed wat een systeemoperatie heeft bereikt, en niet hoe het dit bereikt heeft
- Beperk de postcondities tot de volgende categorieën
	- Creatie van instantie/Verwijdering van een instantie
	- Creatie van een associatie/Verbreking van een associatie
	- Wijziging van attributen
- Druk uit in de verleden tijd
- Beschrijf NIET hoe de postcondities werden bereikt!

### Opstellen van postcondities

1. Neem foto van de huidige staat van de domeinobjecten VOOR systeemoperatie
2. Voer de systeemoperatie uit
3. Neem een nieuwe foto van de nieuwe staat van de domeinobjecten NAde systeemoperatie
4. Postcondities is verschil tussen beide foto’s
	- Instantie object banaan werd aangemaakt
	- Associatie tussen minion en banaan werd aangemaakt
	- Attribuut isAanHetLachen van de minion werd op waar gezet
	- Attribuut toestandHaar van de minion werd op staatRecht gezet

![](20241027171340.png)

# Wanneer OC opstellen
- Overloop het SSD samen met de use case

- Per systeemoperatie beantwoord je volgende vragen
	- Aanmaken van een instantie van een object
	- Verwijdering van een instantie van een object
	- Aanmaken van een associatie
	- Verwijdering van een associatie
	- Wijziging van een attribuut

- OC opstellenbij minstens 1 keer JA

# Voorbeeld

![](20241027171607.png)