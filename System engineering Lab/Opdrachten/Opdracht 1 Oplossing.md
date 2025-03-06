# Markdown

```markdown
# Introductie Markdown

## Titels en hoofdingen

Een titel of een hoofding is een lijn die begint met één of meer hashtags (#). Één hashtag voor de titel, twee voor een hoofding, drie voor een subhoofding, enzoverder.

## Paragrafen

Paragrafen worden gescheiden door minstens één lege lijn.
Deze tekst is dus deel van de vorige paragraaf.

Hier start een nieuwe paragraaf.

## Opmaak

Met behulp van sterretjes kan je tekst _benadrukken_ of **in het vet zetten**.![[roos.png]]

Met backquotes kan je inline tekst formatteren als `code`. Voor volledige paragrafen gebruik je driedubbele backquotes (```), eventueel gevolgd door een programmeer- of opmaaktaal:

```java
public static void main(String[] args) {
   System.out.println("Hello, World!");
}
```


# Script

```Bash
#!/bin/bash
# Automatiseren software-installatie op Debian

# Kleuren voor leesbaarheid (optioneel)
YELLOW='\e[0;33m'
CYAN='\033[0;36m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${YELLOW}=== Stap 1: Lijst met beschikbare updates ophalen ===${NC}"
sudo apt -y update

echo -e "${YELLOW}=== Stap 2: Optioneel systeem upgraden ===${NC}"
sudo apt -y upgrade

echo -e "${YELLOW}=== Stap 3: Algemene applicaties installeren ===${NC}"
# SnapD installeren
sudo apt -y install snapd

# Git installeren via apt
sudo apt -y install git

#OBS Studio
sudo apt update && sudo apt install -y obs-studio

#Only Office
wget -O ~/Downloads/onlyoffice.deb "https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb"
sudo apt install -y ~/Downloads/onlyoffice.deb
rm ~/Downloads/onlyoffice.deb

#Libre Wolf
if grep -q "^deb .*librewolf" /etc/apt/sources.list.d/librewolf.list; then
    echo "✅ LibreWolf repository is al toegevoegd, wordt overgeslagen."
else
    echo "➕ LibreWolf repository wordt toegevoegd..."
    curl -fsSL https://deb.librewolf.net/keyring.gpg | sudo tee /usr/share/keyrings/librewolf-keyring.gpg >/dev/null
    echo "deb [signed-by=/usr/share/keyrings/librewolf-keyring.gpg] https://deb.librewolf.net $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/librewolf.list
fi
sudo apt update
sudo apt install -y librewolf

# Discord
wget -O ~/Downloads/discord.deb "https://discord.com/api/download?platform=linux&format=deb"
sudo apt install -y ~/Downloads/discord.deb
rm ~/Downloads/discord.deb

#Bitwarden
wget -O ~/Downloads/bitwarden.deb "https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb"
sudo apt install -y ~/Downloads/bitwarden.deb
rm ~/Downloads/bitwarden.deb

#Obsidian
wget -O ~/Downloads/obsidian.deb "https://github.com/obsidianmd/obsidian-releases/releases/latest/download/Obsidian-amd64.deb"
sudo apt install -y ~/Downloads/obsidian.deb
rm ~/Downloads/obsidian.deb

# Visual Studio Code en GitKraken via snap (liever geen snap)
# sudo snap install --classic code
# sudo snap install --classic gitkraken
# VLC als voorbeeld
sudo apt -y install vlc

# VSCODIUM met apt met toevoegen van sleutel en repo
echo "=== VSCODIUM: Stap 1: GPG-sleutel controleren/plaatsen ==="
if [ ! -f /usr/share/keyrings/vscodium.gpg ]; then
    echo "-> GPG-sleutel niet gevonden, downloaden en installeren..."
    wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/gpg \
        | gpg --dearmor > vscodium.gpg
    sudo install -o root -g root -m 644 vscodium.gpg /usr/share/keyrings/
    rm vscodium.gpg
else
    echo "-> GPG-sleutel is al aanwezig, overslaan..."
fi
echo "=== VSCODIUM: Stap 2: Repository controleren/toevoegen ==="
if [ ! -f /etc/apt/sources.list.d/vscodium.list ]; then
    echo "-> Repository nog niet toegevoegd, aanmaken..."
    echo 'deb [signed-by=/usr/share/keyrings/vscodium.gpg] https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/releases/debs stable main' \
        | sudo tee /etc/apt/sources.list.d/vscodium.list
else
    echo "-> Repository is al aanwezig, overslaan..."
fi
echo "=== VSCODIUM:  Stap 3: Pakketlijsten bijwerken ==="
sudo apt update
echo "=== VSCODIUM:  Stap 4: VSCodium installeren/updates doorvoeren ==="
sudo apt install -y codium
echo "=== VSCODIUM:  Klaar! VSCodium is geïnstalleerd of bijgewerkt. ==="

#GitKraken met deb package
echo "=== GITKRAKEN met deb package ==="
wget -O ~/Downloads/gitkraken-amd64.deb https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo apt -y install ~/Downloads/gitkraken-amd64.deb
rm ~/Downloads/gitkraken-amd64.deb

# VOOR SYSTEEM ENGINEERING LAB
#------------------------------
echo -e "${YELLOW}=== Stap 4: Software voor System Engineering Lab ===${NC}"
# FileZilla
sudo apt -y install filezilla
# MySQL Workbench (even checken)
# sudo apt -y install mysql-workbench (werkt niet goed in debian)
sudo apt -y install mysql-server
sudo snap install --classic mysql-workbench-community

echo -e "${CYAN}=== Skip: VirtualBox 7.0 installeren en vastzetten (WORD NIET UITGEVOERD) ===${NC}"
# Installeer de specifieke 7.0 versie
# sudo apt -y install virtualbox-7.0
# Pinnen/holden van deze versie (zodat geen upgrade naar 7.1+ gebeurt)
# sudo apt-mark hold virtualbox-7.0

#Qemu, KVM, Libvirt, Virtual manager
echo -e "${YELLOW}=== Stap 5: KVM + Libvirt Packages, QEMU en Virtual manager installeren ===${NC}"
sudo apt -y install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager
echo -e "${YELLOW}if returns 1 or more, your CPU supports hardware virtualization${NC}"
sudo egrep -c '(vmx|svm)' /proc/cpuinfo
echo -e "${YELLOW}User aan de libvirt Group toevoegen${NC}"
sudo usermod -aG libvirt $USER
sudo usermod -aG kvm $USER
echo -e "${GREEN}=== Alle installaties voltooid! ===${NC}"
```

# Vragen

- ❓ De Bash-prompt toont de map/directory waar we ons nu bevinden. Wat is de naam van de directory waar je in terecht komt als je een Terminal-venster opent?
	- `~` `/home/nikki`  Home directory
	  
- ❓ In welke directory heb jij het script bewaard?
	- `~/Dev/HoGent/SE_Lab/Opdracht1$`

- ❓ In welke directory is het script bewaard in de screenshot onder stap 4?
	- `~/Documents/`

- ❓ (optioneel) Verander de kleuren van de uitvoer, bv. gele tekst op zwarte achtergrond. Tip: zoek op het internet naar "Bash ANSI color codes".
```Bash
	  # Kleuren voor leesbaarheid (optioneel)
CYAN='\033[0;36m'
GREEN='\033[0;32m'

echo -e "${CYAN}=== Stap 1: Lijst met beschikbare updates ophalen ===${NC}"
sudo apt -y update
	  ```

