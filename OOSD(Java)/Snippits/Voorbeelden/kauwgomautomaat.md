Het verschil tussen `aantalBallen` en `this.aantalBallen` in de methode `public void vulBij(int aantalBallen)` ligt in hoe de variabelen worden gebruikt en wat ze vertegenwoordigen.

### **Uitleg:**

1. **`aantalBallen` (parameter)**:
    
    - Dit is de **parameter** van de methode `vulBij`. Wanneer je de methode aanroept, geef je een waarde door aan deze parameter. Deze waarde komt van buiten de klasse (bijvoorbeeld van de gebruiker van het object). De naam `aantalBallen` wordt binnen de methode gebruikt om te verwijzen naar de meegegeven waarde.
    
    Voorbeeld van het aanroepen van de methode:
    
    java
    
    Code kopiëren
    
    `automaat.vulBij(20); // hier is 20 de waarde van 'aantalBallen'`
    
    In dit geval wordt de waarde 20 doorgegeven aan de parameter `aantalBallen` binnen de methode.
    
2. **`this.aantalBallen` (klasseattribuut)**:
    
    - Dit verwijst naar het **attribuut** van het **huidige object** van de klasse `KauwgomAutomaat`. Dit attribuut bevat het aantal ballen dat momenteel in de kauwgomautomaat zit.
        
    - Het gebruik van `this` verwijst naar het specifieke object van de klasse waarin je je bevindt. Dus `this.aantalBallen` verwijst naar de hoeveelheid ballen die in de **automaat** zit waarop de methode is aangeroepen.
        

### **Waarom `this` gebruiken?**

- **`this.aantalBallen`** wordt gebruikt om duidelijk te maken dat je het attribuut van de klasse bedoelt en niet de parameter met dezelfde naam binnen de methode. Als de naam van de parameter en het attribuut hetzelfde zijn, ontstaat er een naamconflict. Met `this.aantalBallen` maak je duidelijk dat je het attribuut van het object bedoelt en niet de lokale parameter.

### **Voorbeeld in jouw code:**

In de methode `vulBij(int aantalBallen)`:

java

Code kopiëren

`public void vulBij(int aantalBallen) {     if (!this.vergrendeld && aantalBallen > 0 && aantalBallen + this.aantalBallen < MAXIMUM_AANTAL_BALLEN) {         setAantalBallen(aantalBallen + this.aantalBallen);     } }`

- **`aantalBallen`** (parameter) is de hoeveelheid ballen die je toevoegt aan de automaat.
- **`this.aantalBallen`** is het aantal ballen dat al in de automaat zit.

#### **Stap voor stap:**

1. **Controle**: De methode controleert of de automaat niet vergrendeld is, of het aantal ballen dat je wilt toevoegen groter is dan 0, en of het totaal niet meer wordt dan het maximumaantal ballen in de automaat.
    
2. **Som van ballen**: In de regel `setAantalBallen(aantalBallen + this.aantalBallen);` tel je het aantal ballen dat je wilt toevoegen (`aantalBallen` - parameter) bij het huidige aantal ballen in de automaat (`this.aantalBallen` - klasseattribuut) op. De som hiervan wordt vervolgens ingesteld via de setter `setAantalBallen()`.
    

---

### **Samenvatting:**

- **`aantalBallen`** (zonder `this`): de **parameter** van de methode, de waarde die wordt meegegeven wanneer je de methode aanroept.
- **`this.aantalBallen`**: het **attribuut** van de klasse `KauwgomAutomaat`, wat het huidige aantal ballen in de automaat voorstelt.

Het gebruik van `this` is noodzakelijk om onderscheid te maken tussen de lokale parameter en het klasseattribuut als ze dezelfde naam hebben.