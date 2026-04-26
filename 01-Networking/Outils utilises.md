# 📡 Outils Pratiques Réseau

## Nmap — Network Mapper

### C'est quoi ?
L'outil de scan réseau le plus utilisé en cybersécurité.

### Commandes essentielles :
```bash
# Scanner un hôte
nmap 192.168.1.1

# Découvrir les hôtes actifs
nmap -sn 192.168.1.0/24

# Scanner les ports et services
nmap -sV 192.168.1.1

# Scanner tous les ports
nmap -p- 192.168.1.1

# Scan agressif (OS, services, scripts)
nmap -A 192.168.1.1

# Scan UDP
nmap -sU 192.168.1.1
```

---

## Wireshark

### C'est quoi ?
Outil d'analyse du trafic réseau en temps réel.

### Utilisation :
```
Lancer Wireshark
        ↓
Choisir l'interface réseau (eth0, wlan0)
        ↓
Capturer le trafic
        ↓
Analyser les paquets
```

### Filtres utiles :
```
http          → filtrer le trafic HTTP
dns           → filtrer le trafic DNS
ip.addr == 192.168.1.1 → filtrer par IP
tcp.port == 80         → filtrer par port
```

---

## Netstat

### C'est quoi ?
Voir les connexions réseau actives sur ta machine.

### Commandes :
```bash
# Voir toutes les connexions
netstat -an

# Voir les ports en écoute
netstat -tlnp

# Voir les connexions établies
netstat -tn
```

---

## Traceroute

### C'est quoi ?
Tracer le chemin d'un paquet vers une destination.

### Commandes :
```bash
# Linux
traceroute google.com

# Windows
tracert google.com
```

---

## Tcpdump

### C'est quoi ?
Capturer le trafic réseau en ligne de commande.

### Commandes :
```bash
# Capturer tout le trafic
tcpdump -i eth0

# Capturer le trafic HTTP
tcpdump -i eth0 port 80

# Sauvegarder la capture
tcpdump -i eth0 -w capture.pcap
```

---

## Netcat

### C'est quoi ?
Le couteau suisse du réseau !

### Utilisations :
```bash
# Écouter sur un port
nc -lvnp 4444

# Se connecter à un port
nc 192.168.1.1 4444

# Transférer un fichier
nc -lvnp 4444 > fichier.txt
nc 192.168.1.1 4444 < fichier.txt
```
