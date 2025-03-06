# Definities en eigenschappen

## Definitie

- Een verzameling F waarop twee binaire operatoren, + (optelling) en · (vermenigvuldiging), gedefinieerd zijn en waartoe zeker twee constante elementen, 0 en 1, behoren is een veld wanneer de volgende eigenschappen voldaan zijn:

$$\text{Stel a, b, c } ∈F$$
- **$F$ is gesloten voor $+$ en $.$** : $a + b ∈ F$ en $a.b∈F$
- **commutatief**: $a+b = b+a$ en $a.b = b.a$
- **associatief**: $(a+b)+c=a+(b+c)$ en $(a.b).c=a.(b.c)$
- **distributief**: $a.(b+c)=a.b+a.c$
- **neutraal element**: $a+0=a$ en $a.1=a$
- **invers element voor +**: er bestaat een element $-a ∈ F$ zodat $a+(-a)=0$
- **invers element voor .**: voor elke $a ∈ F$, met $-a 0$ zodat $a+(-a)≠0$ bestaat er een element $a^{-1}$ zodat $a.a^{-1}=1$

## Voorbeeld

- ℝ, +, . is een veld
- ℤ, +, . is geen veld: niet elk element heeft een invers element voor de vermenigvuldiging.

## Eigenschap
- Voor een willekeurig veld F met a, b ∈ F geldt
	- het element $0$ is het opslorpend element voor de vermenigvuldiging: $a.0=0$
	- een veld $F$ heeft geen **nuldelers**: als $b.a=0$ dan geld $a=0$ of $b=0$
## Notatie
- Voortaan zullen we a · b eveneens noteren als ab.
## Definitie
- Een **eindig veld** is een veld waarvoor de **verzameling van elementen eindig** is. Het **aantal elementen van deze verzameling** is de **orde** van het veld.
    
## Stelling
- Er bestaat een veld van de orde q als en slechts als q de macht van een priemgetal p is
	- $p\text{ is }(q=q^h\text{, met }h ∈ ℕ_0)$

- Twee velden van de orde q met q = ph zijn **isomorf**. Een veld van de orde q noemen we
    
- een **Galois veld van de orde** q, GF(q).

# Het eindig veld $ℤ_p$

De verzameling $ℤ_m$, met $m ∈ ℕ_0$, stelt de verzameling voor met als elementen de eerste $m$ natuurlijke getallen:
$$ℤ_m=\{0,1,...,m-1\}$$
- $ℤ_m$ is dus een **eindige verzameling** met $m$ elementen.
- Indien we wensen te rekenen met de elementen van $ℤ_m$ dan zal de optelling en de vermenigvuldiging zoals gedefinieerd voor $ℤ$ niet volstaan, aangezien niet elk resultaat opnieuw tot $ℤ_m$ zal behoren.

## Voorbeeld

Beschouw de verzameling $ℤ_8 = \{0,1,2,3,4,5,6,7\}$
- Er geldt $3+4=7∈ℤ_8$
- Maar $3.4=12 ∉ ℤ_8$

## Definitie

Stel $a,b ∈ ℤ$. Dan is *a conguent met b* **modulo** *m als en slechts als de deling van a en van b door $m$ dezelfde rest oplevert*.

## Notatie

$a ≡ b (mod\text{ }m)$, *met $a$ mod $m =$ de positieve rest na deling door $m$*.

### Voorbeelden
- $2 ≡ 23\text{ }(mod\text{ }7)$
- $17 ≡ 2\text{ }(mod\text{ }5)$
- $23 ≡ 5 \text{ }(mod\text{ }9)$
- $16 ≡ 0\text{ }(mod\text{ }4)$
- $16 ≡ 0\text{ }(mod\text{ }8)$
- $16 \not≡ 0\text{ }(mod\text{ }3)$

## Eigenschap
- Stel a ≡ a’ (mod m) en b ≡ b’ (mod m), dan geldt
	- $a+b≡a' + b'(mod\text{ } m)$
	- $a.b≡a' . b'(mod\text{ } m)$

### Voorbeeld
$$13 · 19 ≡ 3 · 4 ≡ 2 (mod 5)$$
$$\text{want } 13(mod5)≡3\text{ en }13(mod5)≡3$$

- Met behulp van de modulo bewerking is het mogelijk een optelling en vermenigvuldiging te definiëren op de elementen van ℤm zodat deze beide bewerkingen inwendig zijn. Als de bewerking inwendig is, zal het resultaat van die bewerking opnieuw tot ℤm behoren.

## Definitie

- Stel $a, b ∈ ℤ_m$. In $ℤ_m$ worden de bewerkingen $+$ en $·$ als volgt gedefinieerd:
	- $a+b≡a+b(mod\text{ } m)$
	- $a.b≡a.b(mod\text{ } m)$

### Voorbeelden

- 1. Beschouw de verzameling ℤ13 , dan geldt
	- $8+5≡0(mod\text{ } 13)$
	-  $9+7≡3(mod\text{ } 13)$
	- $3.5≡2(mod\text{ } 13)$
    - $3.3≡9(mod\text{ } 13)$

- 2. Beschouw de verzameling ℤ8 = {0, 1, 2, 3, 4, 5, 6, 7}, er geldt
    - $3+4≡7(mod\text{ } 8)∈ℤ_8$
    - $3.4≡12≡4(mod\text{ } 8)∈ℤ_8$

- Maar! 2 · 4 ≡ 0 (mod 8). Nochtans geen van beide factoren is 0!
- Dus kan ℤ8, +, · geen veld zijn.


# Voorbeelden

- **Stelling:** $Z_p$, +, · *is een veld als en slechts als p een priemgetal is*.
    

## 1. Het eindig veld met **2 elementen**
- Het eindig veld met twee elementen is $GF(2) = ℤ2 = \{0, 1\}$ met de tabel voor de optelling en vermenigvuldiging

| +   | 0   | 1   |
| --- | --- | --- |
| 0   | 0   | 1   |
| 1   | 1   | 0   |

| .   | 0   | 1   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 1   | 0   | 0   |

## 2. Het eindig veld met **3 elementen**
   - Het eindig veld met drie elementen is $GF(3) = ℤ3 = \{0, 1, 2\}$ met de tabel voor de optelling en vermenigvuldiging


| +   | 0   | 1   | 2   |
| --- | --- | --- | --- |
| 0   | 0   | 1   | 2   |
| 1   | 1   | 2   | 0   |
| 2   | 2   | 0   | 1   |

| .   | 0   | 1   | 2   |
| --- | --- | --- | --- |
| 0   | 0   | 0   | 0   |
| 1   | 0   | 1   | 2   |
| 2   | 0   | 2   | 1   |
## 3. Het eindig veld met **4 elementen**
- Gelet de stelling is ℤ4 geen veld, 4 is immers geen priemgetal. In $ℤ_4$ geldt $2 · 2 ≡ 0 (mod 4)$.
- *Dus 2 is een nuldeler*. **Hieruit kunnen we onmiddellijk besluiten dat $ℤ_4$ geen veld is**.
- **Er geldt $4 = 22$ en dus is $4$ een macht van een priemgetal**. *Waaruit volgt dat er wel een eindig veld met 4 elementen moet bestaan*. **Dit eindig veld met 4 elementen kan als volgt gedefinieerd worden: $GF(4) = \{0, 1, a, b\}$** met

| +   | 0   | 1   | a   | b   |
| --- | --- | --- | --- | --- |
| 0   | 0   | 1   | a   | b   |
| 1   | 1   | 0   | b   | a   |
| a   | a   | b   | 0   | 1   |
| b   | b   | a   | 1   | 0   |

| .   | 0   | 1   | a   | b   |
| --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 0   |
| 1   | 0   | 1   | a   | b   |
| a   | 0   | a   | b   | 1   |
| b   | 0   | b   | 1   | a   |
##  4. Het eindig veld met **5 elementen**
- Het getal $5$ *is een priemgetal*. Dit betekent dat we opnieuw met $ℤ_5$ kunnen werken voor het eindig veld van 5 elementen. Het eindig veld met 5 elementen is $GF(5) = ℤ5 = \{0, 1, 2, 3, 4\}$ met de optelling en vermenigvuldiging als volgt gedefinieerd in ℤ5


| +   | 0   | 1   | 2   | 3   | 4   |
| --- | --- | --- | --- | --- | --- |
| 0   | 0   | 1   | 2   | 3   | 4   |
| 1   | 1   | 2   | 3   | 4   | 0   |
| 2   | 2   | 3   | 4   | 0   | 1   |
| 3   | 3   | 4   | 0   | 1   | 2   |
| 4   | 4   | 0   | 1   | 2   | 3   |

| .   | 0   | 1   | 2   | 3   | 4   |
| --- | --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 0   | 0   |
| 1   | 0   | 1   | 2   | 3   | 4   |
| 2   | 0   | 2   | 4   | 1   | 3   |
| 3   | 0   | 3   | 1   | 4   | 2   |
| 4   | 0   | 4   | 3   | 2   | 1   |

- Aangezien $ℤ_5, +, ·$ een veld is, moet elk element een tegengestelde hebben voor de optelling en een **invers voor de vermenigvuldiging**.


| $a$ | $-a$ |
| --- | ---- |
| 0   | 0    |
| 1   | 4    |
| 2   | 3    |
| 3   | 2    |
| 4   | 1    |

| $a$ | $a^{-1}$ |
| --- | -------- |
| 0   | /        |
| 1   | 1        |
| 2   | 3        |
| 3   | 2        |
| 4   | 4        |
- *Voor elk element a van $ℤ_5$ moet gelden $a + (−a) ≡ 0 (mod 5)$ en voor alle elementen*
- *$a$ van $ℤ_5$ , behalve $0$, moet gelden $a · a −1 ≡ 1 (mod 5)$*

## 5. De verzameling $ℤ_6$
    

- Het getal 6 is geen priemgetal dus ℤ6 , +, · is **geen veld**. De verzameling ℤ6  bevat opnieuw nuldelers: 2 · 3 ≡ 0 (mod 6). Dit bewijst onmiddellijk het gestelde. Het is tevens niet mogelijk 6 te schrijven als een macht van een priemgetal. Gelet op de stelling mogen we besluiten dat er geen enkel eindig veld met 6 elementen bestaat.
    

## 6. Het eindig veld met **11 elementen**
    
- Het getal *11 is een priemgetal*. Het eindig veld met 11 elementen
- is $GF(11) = ℤ_{11} = \{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10\}$. De optelling en vermenigvuldiging op deze verzameling is analoog aan de voorgaande voorbeelden.
- Alle inverse elementen voor de optelling en de vermenigvuldiging in $ℤ_{11}$


| $a$ | $-a$ |
| --- | ---- |
| 0   | 0    |
| 1   | 10   |
| 2   | 9    |
| 3   | 8    |
| 4   | 7    |
| 5   | 6    |
| 6   | 5    |
| 7   | 4    |
| 8   | 3    |
| 9   | 2    |
| 10  | 1    |

| $a$ | $a^{-1}$ |
| --- | -------- |
| 0   | /        |
| 1   | 1        |
| 2   | 6        |
| 3   | 4        |
| 4   | 3        |
| 5   | 9        |
| 6   | 2        |
| 7   | 8        |
| 8   | 7        |
| 9   | 5        |
| 10  | 10       |

# Rekenen in $ℤ_p$

- $3\text{ mod }5$:
    - De berekening gebeurt in $ℤ_5$. Dit houdt in dat het resultaat enkel een element kan zijn van $ℤ_5$ of dus van {0, 1, 2, 3, 4}
    - 3 mod 5 = de rest na gehele deling door 5. Bijgevolg is 3 mod 5 = 3

- $23\text{ mod }7$
    - De berekening gebeurt in $ℤ_7$ => resultaat is een element van {0, 1, 2, 3, 4, 5, 6}
    - 23 mod 7 = 2 omdat 7 drie keer in 23 kan en 7.3 = 21 => de rest = 2 of dus 23 -21

- $7\text{ mod }5$
    - Berekening in $ℤ_5$ = {0, 1, 2, 3, 4} => oplossing kan geen negatief getal zijn!
    - Tel bij -7 een veelvoud op van 5 zodat het resultaat positief wordt en in $ℤ_5$ ligt: -7 + 2.5 = 3 => -7 mod 5  ≡ 3 mod 5 of -7 mod 5 = 3

- $3. 2^{-1}\text{ mod }5$
	- Berekening gebeurt in $ℤ5 = \{0, 1, 2, 3, 4\}$
	- $2^{-1}$ in ℤ5 = 3:
		- Het inverse van een element $a$ uit een eindige verzameling $ℤ_p$ vind je door,  een getal uit $ℤ_p$ te nemen $b$ zodat $a.b\text{ mod }p=1$. Dan is $a^{-1} = b$
	    - Om  $2^{-1}$ in $ℤ_5$  te bepalen zoeken we dus naar een getal $x$ in $ℤ_5$, zodat  $x = 3$ of dus $2^{-1} =3$
    - $3. 2^{-1}\text{ mod }5≡ 3.3\text{ mod }5 = 4$

- $(117.6^{-1}+ 1004)\text{ mod }7$    
	- Bepaal voor alle getallen eerst de rest na deling door $7$:
	    - $117 = 16.7 + 5$ →rest is $5$
	    - $1004 = 143.7 +3$ →rest is $3$
    - Herschrijf $(117.6^{-1} + 1004) mod 7$ ≡ $(5.6^{-1} + 3)\text{ mod }7$
    - Bepaal $6{-1}$ in $ℤ_7$→$6^{-1} = 6$
    - Herschrijf $(5.6^{-1} + 3)\text{ mod }7 ≡ (5.6 + 3)\text{ mod }7 ≡ 33\text{ mod }7 ≡ 5\text{ mod }7 = 5$

# Vergelijkingen in $ℤ_p$

## Los volgende vergelijking op naar x:

- In $ℤ_{17} : x + 5 ≡ 35$
    - $(x + 5 ≡ 35)\text{ mod }17 → x$ moet een element zijn van $ℤ^{17}$
    - Deel eerst alle veelvouden van $17$ weg: $(x + 5 ≡ 1)\text{ mod }17$
    - $(x + 5 ≡ 1)\text{ mod }17 → (x ≡ -4)\text{ mod }17 → (x ≡ -4 + 17)\text{ mod }17 → (x ≡ 13)\text{ mod }17$ of dus $x =13$
    - **Controle:** $(13 + 5 ≡ 35)\text{ mod }17 → (18 ≡ 35)\text{ mod }17 → (1 ≡ 1)\text{ mod }17$

 ## Los volgende vergelijking op naar x:
    
- In $ℤ_5 : 23 x + 13 ≡0$
    - $23 x + 13 ≡ 0 \text{ mod } 5 → x$ moet een element zijn van $ℤ_5$
    - *Deel eerst alle veelvouden van 5 weg*: $(3x + 3 ≡ 0)\text{ mod }5$
    - $(3x + 3 ≡ 0)\text{ mod }5 →(3x ≡ -3)\text{ mod }→(3x ≡ -3+5)\text{ mod }5 →(3x ≡ 2)\text{ mod }5$
    - *Om de factor 3 voor de x weg te werken, vermenigvuldigen we beide leden met $3^{-1}$* (**let op dit is $3^{-1}$ uit $ℤ_5$ en niet 1/3 uit ℝ !**) : $(3x ≡ 2)\text{ mod }5 →(3-1 .3x ≡ 3-1.2)\text{ mod }5 →(1.x ≡ 3-1.2)\text{ mod }5 →(x ≡ 3-1.2)\text{ mod }5$
    - Bepaal $3^{-1}$ in $ℤ_5 → 3^{-1} = 2$
    - Herschrijf $(x ≡ 3-1.2)\text{ mod }5 → (x ≡ 2.2)\text{ mod }5 → (x ≡ 4)\text{ mod }5 of x = 4$
    - **Controle:** $(23 . 4 + 13 ≡ 0)\text{ mod }5 → (105 ≡ 0)\text{ mod }5 → (0 ≡ 0)\text{ mod }5$

# Oefeningen

## 1. Noteer alle inverse elementen voor de optelling en de vermenigvuldiging in:
- a) $ℤ_7$
- b) $ℤ_{13}$
- c) $ℤ_{17}$

## 2. Los op naar $x$ in $ℤ_{11}$:
- a) $3x+5≡0$
- b) $4x+6≡0$

## 3. Oefening 3
- Bereken in $ℤ_{7}$:
	- $3.4+6≡ ...$
	- $2^{-1}≡...$
	- $-5≡...$

- Bereken in $ℤ_{11}$:
	- $4.3+5≡ ...$
	- $-4≡...$
	- $8^{-1}≡...$

- Bereken in $ℤ_{5}$:
	- $8002.333≡ ...$
	- $24.a=108≡...$

- Bepaal $(122.a+34) \text{ mod }9$

## 4. Oefening 4
* Laat de 26 letters van het alfabet respectievelijk overeen komen met de getallen 0 tot en met 25. Dit wil zeggen:
	- A → 0
	- B → 1
	- ...
	- Y → 24
	- Z → 25

* Voorts definiëren we het volgende:
	* leesteken punt: . → 26
	* leesteken komma: , → 27
	* leesteken uitroepteken: ! → 28

* Ontcijfer dan het volgende bericht waar alle getallen modulo 29 dienen beschouwd te worden:
$$\text{[34 72 -81 4 -132 19 28]}$$
