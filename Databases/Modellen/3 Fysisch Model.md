# Diagram: **Relationeel Model**

|                   |                                                                                                                                                                                                                                                                |
| ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Normale entiteit  | 1. Geef als naam de naam van het entiteit type<br>2. Voeg de sleutel(s) toe<br>3. Voeg eventueel de sleutel toe van de Entiteit waar een relatie mee is<br>4. Trek een pijl Van de sleutel van de entiteit waar een relatie mee is naar de toegevoegde sleutel |
| Zwakke entiteit   | 1. kandidaat sleutel van sleutelattribuut toevoegen<br>2. Alle sleutels onderlijnen<br>3. Pijl trekken van kandidaat sleutel zwakke entiteit naar                                                                                                              |
| Relatie-attribuut | 1. Maak nieuwe tabel met beide namen van de Entiteit type<br>2. Voeg alle sleutel attributes toe van beide Entiteit types<br>3. Voeg de uitbreiding toe                                                                                                        |
| IR toevoegen      | 1 van elke relatie beschrijven:<br>X.toegevoegdeSleutel verwijst naar Y.hoofdSleutel , verplicht/niet verplicht, uniek/ niet uniek<br>                                                                                                                         |


eens we het eens zijn met de business, kunnen we overgaan tot het modelleren van het relationele model op basis van het Entity Relationship Diagram (ERD). Om deze mapping mogelijk te maken kan je gebruik maken van het onderstaande stappenplan.

## Stappenplan​

[](https://github.com/HOGENT-Databases/DB1-Workshops/blob/master/workshops/04-relationeel_model/exercises.md#stappenplan)

1. Elk entiteittype wordt een tupel verzameling of tabel ​(opgelet bij specialisatie!).​
2. Enkelvoudige attribuuttypes overnemen.​
3. Samengestelde attribuuttypes opsplitsen in enkelvoudige attribuuttypes.​
4. Meerwaardige attributen in een aparte, nieuwe verzameling plaatsen.​
5. Primaire sleutel bepalen (opgelet bij zwakke entiteiten!).​
6. Voor elke relatie (verband) tussen entiteittypen de vreemde sleutel(s) bepalen.​
7. Integriteitregels bepalen van elke vreemde sleutel.​

## Regels

[](https://github.com/HOGENT-Databases/DB1-Workshops/blob/master/workshops/04-relationeel_model/exercises.md#regels)

Verbanden tussen verzamelingen worden gelegd aan de hand van **vreemde sleutels (VS)** of **foreign keys (FK)**.

### Binair verband:​

[](https://github.com/HOGENT-Databases/DB1-Workshops/blob/master/workshops/04-relationeel_model/exercises.md#binair-verband)

- 1 op N: vreemde sleutel aan N-zijde​
- 1 op 1: vreemde sleutel aan 1 zijde (zelf te kiezen)
- N op N: aparte verzameling met 2 vreemde sleutels​

### Unair verband: ​

[](https://github.com/HOGENT-Databases/DB1-Workshops/blob/master/workshops/04-relationeel_model/exercises.md#unair-verband-)

- 1 op N: vreemde sleutel in zelfde (naam van rol 1-zijde!)​
- 1 op 1: vreemde sleutel met zichzelf​
- N op N: nieuwe verzameling met 2 vreemde sleutels (rolnamen gebruiken!)

### Integriteitsregels vreemde sleutel:​

[](https://github.com/HOGENT-Databases/DB1-Workshops/blob/master/workshops/04-relationeel_model/exercises.md#integriteitsregels-vreemde-sleutel)

- Geef weer naar welke primaire sleutel deze vreemde sleutel verwijst​ of de vreemde sleutel verplicht of optioneel is: ​
    - Bepaal je aan de hand van de minimumcardinaliteit​
- Geef weer of de vreemde sleutel uniek is (bij 1 op 1)​

### Specialisatie / Generalisatie

[](https://github.com/HOGENT-Databases/DB1-Workshops/blob/master/workshops/04-relationeel_model/exercises.md#specialisatie--generalisatie)

|Participatie constraint|Disjoint constraint|Mapping|
|---|---|---|
|Mandatory|AND|1 tabel met hierin booleans om de subtypes te onderscheiden|
|Optional|AND|2 tabellen: 1 voor het supertype, 1 voor de subtypes met booleans om de subtypes te onderscheiden|
|Mandatory|OR|1 aparte tabel per subtype|
|Optional|OR|voor elk type een tabel|