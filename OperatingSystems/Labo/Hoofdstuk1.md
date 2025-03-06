# Labo1 - Verkenning van het besturingssysteem

### Gebruikers:

```bash
nikki@Debian-Victus:/home$ ls
total 12
15204353 drwxr-xr-x   3 root  root  4096 Nov 24 18:18 .
       2 drwxr-xr-x  20 root  root  4096 Feb  2 21:27 ..
15204354 drwx--x---+ 44 nikki nikki 4096 Feb  7 12:41 nikki

```

- Zie je hierbij jouw verwachte gebruikersnaam?
	- ja
- Heb je eventueel andere gebruikers op het systeem staan?
	- ja: root
- Zoek op welke stappen je moet nemen om zelf een nieuwe gebruiker aan te maken op jouw besturingssysteem.
	- `sudo useradd -m <username>`
	- `$ cd /home` 
	- `sudo su <gebruikersnaam>` 
	- `mkdir <map naam>` 
	- `chown <gebruikersnaam>:<gebruikersnaam> -R /home/<gebruikersnaam>`

### Processen

#### Debian:

```bash
top
htop
btop
```

Visueel: System monitor

![[Pasted image 20250212141424.png]]
### Opstartprocessen

- Visueel: Tweaks

- Ook alles in `/etc/systemd/system` en /`usr/lib/systemd/system`. De opstartconfiguratiebestanden hebben de extensie .service

- Via systemd

- Zijn er bepaalde processen waarvan je liever niet hebt dat ze vanzelf opstarten?
	- Nee
- Kan je dit zelf aanpassen?
	- Ja `sudo systemctl disable <service-name>`.

```bash
    systemctl list-unit-files #– voor informatie over alle services
    systemctl list-units #– voor informatie over actieve services
    systemctl start service_name #– om een service te starten
    systemctl stop service_name #– om een service te stoppen
    systemctl restart service_name #– om een service opnieuw op te starten
```

### Resources

```bash
sudo apt-get install lshw

sudo lshw

sudo lshw -short
```

- Welke processor heb je?
	- 13th Gen Intel(R) Core(TM) i7-13620H
- Hoeveel geheugen heb je beschikbaar?
	- 15GiB System memory
- Welke versie heeft jouw besturingssysteem?
```bash
nikki@Debian-Victus:~$ sudo lsb_release -a
No LSB modules are available.
Distributor ID:	Debian
Description:	Debian GNU/Linux 12 (bookworm)
Release:	12
Codename:	bookworm
```

### Logs

`/var/log`

### Updates

```bash
sudo apt update
sudo apt upgrade
```


### Emulatie V86

https://copy.sh/v86/

#### Free BSD

- Als welke gebruiker ben je momenteel ingelogd? Hoe kan je dit zien of opvragen?
- Waar kan je de home directory van deze gebruiker vinden (let op: dit is een speciale gebruiker!)
- Waar kan je de logbestanden in dit systeem vinden? Hoe kan je een specifiek logbestand uitlezen? (tip: je kan hiervoor het `cat` commando gebruiken)
- Met welk commando kan je de huidige processen opvragen?

#### Op ontdekking

- Windows 98
- ReactOS
- Damn Small Linux (DSL)
- Floppy Bird

# Labo 2

### Doel[¶](https://hogenttin.github.io/operating-systems/h1/2-create-vm/#doel "Permanent link")

In deze opdracht leer je hoe je een hypervisor (VirtualBox) installeert en een bestaande virtuele harde schijf importeert.

Na het voltooien van deze opdracht kan je:

- VirtualBox installeren op een fysiek apparaat.
- Een bestaande virtuele harde schijf importeren en opstarten.

# Labo 3

- [x] #TODO #OperatingSystems Aanmaken VM Windows ✅ 2025-02-22


## VM weergeven

```Bash
sudo virsh list --all
```

## Locatie VHD (qcow2)

```
/var/lib/libvirt/images$
```
## VM Snapshots
**Snapshot a VM**:

   ```bash
   sudo virsh snapshot-create-as --domain OSwinServer2019 --name OSwinServer2019Snapshot190225
   ```

**List all snapshots**
```Bash
sudo virsh snapshot-list OSwinServer2019
```

**Restore a VM from a snapshot**:

```bash
sudo virsh snapshot-revert <vm-name> <snapshot-name>

sudo virsh snapshot-revert OSwinServer2019 OSwinServer2019Snapshot190225
```

**Delete a VM snapshot**:

   ```bash
sudo virsh snapshot-delete <vm-name> <snapshot-name>
   
sudo virsh snapshot-delete OSwinServer2019 OSwinServer2019Snapshot190225
   ```
