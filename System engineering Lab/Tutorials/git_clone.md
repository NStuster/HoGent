## Methode 1: Authenticatie met een Personal Access Token (PAT)

1. **Log in op GitHub:**  
    Ga naar [github.com](https://github.com) en log in met je account.
    
2. **Ga naar je instellingen:**  
    Klik rechtsboven op je profielfoto en kies **Settings**.
    ![[Pasted image 20250222092441.png]]
3. **Navigeer naar Developer settings:**  
    In het linker zijmenu scroll je naar beneden en klik je op **Developer settings**.
    ![[Pasted image 20250222092520.png]]
4. **Genereer een nieuwe token:**  
    Klik in het submenu op **Personal access tokens**, daarna op **Tokens (classic)** en vervolgens op **Generate new token**.
    ![[Pasted image 20250222092550.png]]
![[Pasted image 20250222092613.png]]
1. **Stel de token in:**
    
    - Geef je token een beschrijvende naam.
    - Kies de gewenste rechten (bijvoorbeeld **repo** voor volledige repository-toegang).
    - Stel indien gewenst een vervaldatum in.
    ![[Pasted image 20250222092726.png]]
2. **Genereer en kopieer de token:**  
    Klik op **Generate token**. **Belangrijk:** Kopieer de token direct en bewaar deze op een veilige plek, want dit is de enige keer dat je deze ziet.
![[Pasted image 20250222092737.png]]
    
1. **Gebruik de token bij Git-commando’s:**  
    Wanneer je een commando uitvoert zoals:

```bash
nikki@Debian-Victus:~/Dev/HoGent/SE_Lab/GitSELab/selab-2425-g62$ git clone https://github.com/HOGENT-SELab/selab-2425-g62.git
Cloning into 'selab-2425-g62'...
Username for 'https://github.com': NStuster
Password for 'https://NStuster@github.com': #Vul hier je token in
remote: Enumerating objects: 78, done.
remote: Counting objects: 100% (14/14), done.
remote: Compressing objects: 100% (14/14), done.
remote: Total 78 (delta 0), reused 0 (delta 0), pack-reused 64 (from 2)
Receiving objects: 100% (78/78), 4.73 MiB | 4.45 MiB/s, done.
nikki@Debian-Victus:~/Dev/HoGent/SE_Lab/GitSELab/selab-2425-g62$ 

```