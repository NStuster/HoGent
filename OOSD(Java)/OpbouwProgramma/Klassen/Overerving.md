# Wat is Overerving?

Overerving is een fundamenteel principe in objectgeoriënteerd programmeren waarbij een nieuwe klasse (subklasse) eigenschappen en methoden kan overnemen van een bestaande klasse (superklasse). Het is vergelijkbaar met de manier waarop eigenschappen in de natuur worden doorgegeven van ouders aan kinderen.


# Generalisatie

In Java kan generalisatie helpen om dubbele code te vermijden door gemeenschappelijke kenmerken van verschillende klassen in een superklasse te plaatsen. Bijvoorbeeld, de klasse `Huisdier` bevat attributen zoals `naam` en methoden zoals `getNaam()` en `setNaam()`, die gemeenschappelijk zijn voor alle huisdieren. Subklassen zoals `Hond` en `Kat` kunnen dan deze eigenschappen overnemen.

De constructor van `Huisdier` roept automatisch de constructor van de superklasse (Object) aan. De `toString()`-methode is bijvoorbeeld geërfd van Object en geeft een tekstuele weergave van het object.

Daarnaast kunnen subklassen methoden zoals `setSaldo()` overschrijven om aangepaste logica toe te voegen, zoals het controleren van een saldo. Dit kan echter problemen veroorzaken, zoals wanneer de constructor van een subklasse een methode aanroept die afhankelijk is van nog niet geïnitialiseerde attributen.


