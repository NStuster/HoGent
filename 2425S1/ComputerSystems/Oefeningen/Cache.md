# Oefeningen:​

## Gegeven:​

*Cache-regels*: 8B breed​
*Cache*: 32B groot​
*Geheugen*: 128B groot​ (Opmerking: Het geheugen bevat m.a.w. ​128 cellen van 1 byte of 8 bit, waarvan de inhoud hexadecimaal werd voor gesteld in de figuur)​

|   |   |   |   |   |   |   |   |   |
|---|---|---|---|---|---|---|---|---|
|78​|07​|06​|05​|04​|03​|02​|01​|00​|
|70​|0F​|0E​|0D​|0C​|0B​|0A​|09​|08​|
|68​|27​|26​|25​|24​|23​|22​|21​|20​|
|60​|1F​|1E​|1D​|1C​|1B​|1A​|19​|18​|
|58​|2F​|2E​|2D​|2C​|2B​|2A​|29​|28​|
|50​|17​|16​|15​|14​|13​|12​|11​|10​|
|48​|37​|36​|35​|34​|33​|32​|31​|30​|
|40​|F7​|F6​|F5​|F4​|F3​|F2​|F1​|F0​|
|38​|A7​|A6​|A5​|A4​|A3​|A2​|A1​|A0​|
|30​|C7​|C6​|C5​|C4​|C3​|C2​|C1​|C0​|
|28​|BF​|BE​|BD​|BC​|BB​|BA​|B9​|B8​|
|20​|9F​|9E​|9D​|9C​|9B​|9A​|99​|98​|
|18​|DF​|DE​|DD​|DC​|DB​|DA​|D9​|D8​|
|10​|D7​|D6​|D5​|D4​|D3​|D2​|D1​|D0​|
|08​|E7​|E6​|E5​|E4​|E3​|E2​|E1​|E0​|
|00​|47​|46​|45​|44​|43​|42​|41​|40​|

| Tag​ | Index​ | adr​ | Data​ |     |         |         |     |     |     |     |
| ---- | ------ | ---- | ----- | --- | ------- | ------- | --- | --- | --- | --- |
| 11​  | 11​    | 78​  | 07​   | 06​ | 05​     | 04​     | 03​ | 02​ | 01​ | 00​ |
|      | 10​    | 70​  | 0F​   | 0E​ | 0D​     | 0C​     | 0B​ | 0A​ | 09​ | 08​ |
|      | 01​    | 68​  | 27​   | 26​ | 25​     | 24​     | 23​ | 22​ | 21​ | 20​ |
|      | 00​    | 60​  | 1F​   | 1E​ | 1D​     | **1C​** | 1B​ | 1A​ | 19​ | 18​ |
| 10​  | 11​    | 58​  | 2F​   | 2E​ | 2D​     | 2C​     | 2B​ | 2A​ | 29​ | 28​ |
|      | 10​    | 50​  | 17​   | 16​ | 15​     | 14​     | 13​ | 12​ | 11​ | 10​ |
|      | 01​    | 48​  | 37​   | 36​ | **35​** | 34​     | 33​ | 32​ | 31​ | 30​ |
|      | 00​    | 40​  | F7​   | F6​ | F5​     | F4​     | F3​ | F2​ | F1​ | F0​ |
| 01​  | 11​    | 38​  | A7​   | A6​ | A5​     | A4​     | A3​ | A2​ | A1​ | A0​ |
|      | 10​    | 30​  | C7​   | C6​ | C5​     | C4​     | C3​ | C2​ | C1​ | C0​ |
|      | 01​    | 28​  | BF​   | BE​ | BD​     | BC​     | BB​ | BA​ | B9​ | B8​ |
|      | 00​    | 20​  | 9F​   | 9E​ | 9D​     | 9C​     | 9B​ | 9A​ | 99​ | 98​ |
| 00​  | 11​    | 18​  | DF​   | DE​ | DD​     | DC​     | DB​ | DA​ | D9​ | D8​ |
|      | 10​    | 10​  | D7​   | D6​ | D5​     | D4​     | D3​ | D2​ | D1​ | D0​ |
|      | 01​    | 08​  | E7​   | E6​ | E5​     | E4​     | E3​ | E2​ | E1​ | E0​ |
|      | 00​    | 00​  | 47​   | 46​ | 45​     | 44​     | 43​ | 42​ | 41​ | 40​ |

**Gevraagd:​**
### 1. Teken de cache en splits de adresverwijzing 4Ah;63h​
(Opmerking: h = hexadecimale notatie) = ( )16​

#### Oplossing

| ​   | V​  | Tag​ | Data​ |     |     |     |     |     |     |     |
| --- | --- | ---- | ----- | --- | --- | --- | --- | --- | --- | --- |
| 18​ | 0​  | ​    | ​     | ​   | ​   | ​   | ​   | ​   | ​   | ​   |
| 10​ | 0​  | ​    | ​     | ​   | ​   | ​   | ​   | ​   | ​   | ​   |
| 08​ | 1​  | 10​  | 37​   | 36​ | 35​ | 34​ | 33​ | 32​ | 31​ | 30​ |
| 00​ | 1​  | 11​  | 1F​   | 1E​ | 1D​ | 1C​ | 1B​ | 1A​ | 19​ | 18​ |

Opsplitsing v/d adresverwijzingen​:

| 4A​            | 10​        | 01​               | 010​                    |
| -------------- | ---------- | ----------------- | ----------------------- |
| 63​            | 11​        | 00​               | 011​                    |
| ​              | Tag field​ | Positie in cache​ | Positie in cache-regel​ |


### 2. Teken de cache en splits de adresverwijzing 79h;38h​
​
#### Oplossing

| ​   | V​  | Tag​ | Data​ |     |     |     |     |     |     |     |
| --- | --- | ---- | ----- | --- | --- | --- | --- | --- | --- | --- |
| 18​ | 1​  | 01​  | A7​   | A6​ | A5​ | A4​ | A3​ | A2​ | A1​ | A0​ |
| 10​ | 0​  | ​    | ​     | ​   | ​   | ​   | ​   | ​   | ​   | ​   |
| 08​ | 0​  | ​    | ​     | ​   | ​   | ​   | ​   | ​   | ​   | ​   |
| 00​ | 0​  | ​    | ​     | ​   | ​   | ​   | ​   | ​   | ​   |     |

Opsplitsing v/d adresverwijzingen:

| 79​ | 11​        | 11​               | 001​                    |
| --- | ---------- | ----------------- | ----------------------- |
| 38​ | 01​        | 11​               | 000​                    |
| ​   | Tag field​ | Positie in cache​ | Positie in cache-regel​ |

# Extra oefening cache:​

## Gegeven: 

Het werkgeheugen is 64 Byte groot; de ​cache regels zijn 4 Byte breed; de cache is 16 Byte ​groot. Deze computer gebruikt een direct mapped ​cache.​

 ## Gevraagd : 
 
 - Geef in de tabel hieronder aan hoe de ​cache eruit zal zien als na het opstarten van de ​computer opeenvolgend deze drie adresverwijzingen ​gebeurd zijn : 19h, 3Fh, 2Ah. ​
 - Omcirkel de bytes die effectief door de processor ​opgevraagd werden als die nog zichtbaar zijn in de ​cache.​
 - Splits de drie adresverwijzingen ook op in de tag, line ​en byte velden.​


| Adres | Inhoud | van | het | geheugen |
| ----- | ------ | --- | --- | -------- |
| 3C​   | AA​    | BB​ | CC​ | DD​      |
| 38​   | EE​    | FF​ | A1​ | A2​      |
| 34​   | A3​    | A4​ | A5​ | A6​      |
| 30​   | A7​    | A8​ | A9​ | B1​      |
| 2C​   | B2​    | B3​ | B4​ | B5​      |
| 28​   | B6​    | B7​ | B8​ | B9​      |
| 24​   | C1​    | C2​ | C3​ | C4​      |
| 20​   | C5​    | C6​ | C7​ | C8​      |
| 1C​   | C9​    | D1​ | D2​ | D3​      |
| 18​   | D4​    | D5​ | D6​ | D7​      |
| 14​   | D8​    | D9​ | E1​ | E2​      |
| 10​   | E3​    | E4​ | E5​ | E6​      |
| 0C​   | E7​    | E8​ | E9​ | F1​      |
| 08​   | F2​    | F3​ | F4​ | F5​      |
| 04​   | F6​    | F7​ | F8​ | F9​      |
| 00​   | 11​    | 22​ | 33​ | 44​      |
## Oplossing

| Cache Geheugen​ |      |       |     |     |     |
| --------------- | ---- | ----- | --- | --- | --- |
| V​              | Tag​ | Data​ |     |     |     |
| ​               | ​    | ​     | ​   | ​   | ​   |
| ​               | ​    | ​     | ​   | ​   | ​   |
| ​               | ​    | ​     | ​   | ​   | ​   |
| ​               | ​    | ​     | ​   | ​   | ​   |

Opsplitsing v/d adresverwijzingen​:

| ​   | TAG​ | LINE​ | BYTE​ |
| --- | ---- | ----- | ----- |
| ​   | ​    | ​     | ​     |
| ​   | ​    | ​     | ​     |
| ​   | ​    | ​     | ​     |

# Nog extra oefeningen

![[oefeningen_cache.docx]]