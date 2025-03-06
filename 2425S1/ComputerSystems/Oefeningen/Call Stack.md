# Oefeningen

## Hoe zal de stack eruit zien bij uitvoering van het programma, als de uitvoer tot aan de  blauwe lijn gekomen is?

![](../attachmentscomputersystems/20241207210302.png)

### Oplossing
![](../attachmentscomputersystems/20241207210322.png)

# Meer oefeningen 

OEFENING 1: Hoe ziet de stack eruit? De pijl duidt de laatste instructie aan. Laat ook de eventueel doorstreepte waarden uit je stack staan.

![](file:///tmp/lu62833pik6h.tmp/lu62833pikc6_tmp_d53f8f7f996b993d.png)  



|            | **Programma**      |
| ---------- | ------------------ |
|            | instructie         |
|            | CALL w             |
| **a**      | instructie         |
|            | instructie         |
|            | PUSH R0            |
| <br><br>=> | PUSH R3<br><br>……. |
| **w**      | instructie         |
|            | PUSH R1            |
|            | CALL v             |
| **b**      | instructie         |
|            | POP R1             |
|            | RET                |
| **v**      | PUSH R2            |
|            | instructie         |
|            | POP R2             |
|            | RET                |

  
  

  
  

OEFENING 2: Hoe ziet de stack eruit? De pijl duidt de laatste instructie aan. Laat ook de eventueel doorstreepte waarden uit je stack staan.

 
|            | **Programma**            |
| ---------- | ------------------------ |
|            | instructie               |
|            | CALL x                   |
| **a**      | instructie               |
|            | instructie               |
|            | PUSH R5                  |
| <br><br>=> | PUSH R3<br><br>……        |
| **y**      | instructie               |
|            | PUSH R1                  |
|            | POP R1<br><br>RET        |
| **x**      | PUSH R2                  |
|            | Instructie<br><br>CALL y |
| **b**      | POP R2                   |
|            | RET                      |

  
  

OEFENING 3: Hoe ziet de stack eruit? Laat ook de eventueel doorstreepte waarden uit je stack staan.

|       | **Programma**             |
| ----- | ------------------------- |
|       | Instructie<br><br>PUSH R1 |
|       | CALL x                    |
| **a** | instructie                |
|       | instructie                |
|       |                           |
|       | PUSH R3                   |
| **y** | instructie                |
|       |                           |
|       | POP R2<br><br>RET         |
| **x** | PUSH R2                   |
|       | Instructie<br><br>CALL y  |
| **b** | POP R2                    |
|       | RET                       |