# Oefeningen

https://chamilo-downloads.hogent.be/Chamilo/Libraries/Resources/Javascript/Plugin/PDFJS/web/viewer.html?file=https%3A%2F%2Fchamilo-downloads.hogent.be%3Fapplication%3DChamilo%255CCore%255CRepository%26go%3DDocumentDownloader%26object%3D8948017%26DownloadHost%3D1%26security_code%3D390791a3c99caa5848f4f4f33e713b9291b15d7c%26display%3D1%26saveName%3DH01Oefeningen.pdf

# 11 Keyword Abstract

Abstracte Klasse
	Je kan geen instantie maken van deze klasse
	Abstracte Methode Een methode zonder implementatie
# 12 Static

Static variabele is niet object gebasseerd maar op klasse niveau

# 13 Visibility

|                              | Class | Package | SubClass | World |
| ---------------------------- | ----- | ------- | -------- | ----- |
| public                       | Y     | Y       | Y        | Y     |
| protected                    | Y     | Y       | Y        | N     |
| no modyfier (NIET GEBRUIKEN) | Y     | Y       | N        | N     |
| private                      | Y     | N       | N        | N     |

# Extra

Leer verschillende petjes opzetten
- Applicatie bezig met de gebruiker



## Dit willen we uit elkaar houden

De **UI willen we niet laten communiceren met de Data** (daar is de logica voor)

| **UI** (enkel met het weergeven te maken) | **LOGICA** (Domein) (Staat altijd tussen de UI en DATA) | **DATA** (Persistentie) (die ik wil opslaan) |
| ----------------------------------------- | ------------------------------------------------------- | -------------------------------------------- |
| cui                                       | Domeincontroller                                        | Persistentie                                 |
| gui                                       | Main                                                    | Klassen                                      |
|                                           |                                                         |                                              |

# Comparable

### **Wat moet je toevoegen en waarom?**

1. **Implementeer `Comparable<Movie>`**
    
    - Hierdoor kun je `Movie`-objecten vergelijken en sorteren met `Collections.sort()`.
2. **Voeg de methode `compareTo` toe**
    
    - Dit bepaalt hoe films worden vergeleken:
        - Eerst op **`name`** (alfabetisch).
        - Als **`name`** gelijk is, dan op **`year`** (oplopend).
3. **Gebruik `compareTo` van `String` en `Integer.compare`**
    
    - `this.name.compareTo(other.name)`: vergelijkt alfabetisch.
    - `Integer.compare(this.year, other.year)`: vergelijkt numeriek.


## Comperator

### 1. **Wat is een Comparator?**

Een `Comparator<T>` is een interface in Java waarmee je de sorteervolgorde van objecten kunt bepalen. Dit is handig als:

- De klasse zelf geen `Comparable`-interface implementeert.
- Je objecten op verschillende manieren wilt kunnen sorteren (bv. op rating, titel, of jaar).

De methode `compare(T o1, T o2)` moet geïmplementeerd worden en geeft:

- Een negatief getal terug als `o1` vóór `o2` moet komen.
- 0 als `o1` en `o2` gelijk zijn.
- Een positief getal als `o1` ná `o2` moet komen.


