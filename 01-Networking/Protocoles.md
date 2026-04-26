# 📡 Protocoles Essentiels

## DNS — Domain Name System

### C'est quoi ?
Traduit les noms de domaine en adresses IP.
```
google.com → 142.250.74.46
```
Sans DNS tu devrais mémoriser des IPs !

### Comment ça marche ?
```
Tu tapes google.com
        ↓
Ton PC demande au serveur DNS
        ↓
DNS répond : 142.250.74.46
        ↓
Ton PC se connecte à cette IP
```

### Port : 53 (UDP/TCP)

### En cybersécurité :
```
DNS Enumeration → trouver des sous-domaines cachés
DNS Spoofing    → falsifier les réponses DNS
DNS Zone Transfer → récupérer tous les enregistrements
```

---

## DHCP — Dynamic Host Configuration Protocol

### C'est quoi ?
Attribue automatiquement une adresse IP aux machines.

### Comment ça marche ?
```
Machine rejoint le réseau
        ↓
Elle envoie une requête DHCP
        ↓
Serveur DHCP lui attribue une IP automatiquement
```

### Port : 67/68 (UDP)

### En cybersécurité :
```
DHCP Starvation → épuiser toutes les IPs disponibles
Rogue DHCP      → faux serveur DHCP pour intercepter le trafic
```

---

## HTTP/HTTPS

### HTTP — HyperText Transfer Protocol
- Protocole de communication web
- Non chiffré → données lisibles par tout le monde !
- Port : 80

### HTTPS — HTTP Secure
- HTTP + chiffrement TLS/SSL
- Données chiffrées → sécurisé
- Port : 443

### Méthodes HTTP :
```
GET     → récupérer une ressource
POST    → envoyer des données
PUT     → modifier une ressource
DELETE  → supprimer une ressource
```

### En cybersécurité :
```
HTTP  → intercepter le trafic avec Wireshark
HTTPS → SSL stripping pour forcer HTTP
Burp Suite → intercepter et modifier les requêtes
```

---

## FTP — File Transfer Protocol

### C'est quoi ?
Protocole de transfert de fichiers.

### Ports : 20/21 (TCP)

### En cybersécurité :
```
FTP anonyme → connexion sans mot de passe !
Brute force → hydra -l admin -P rockyou.txt IP ftp
```

---

## SSH — Secure Shell

### C'est quoi ?
Protocole de connexion à distance sécurisé.
```
ssh user@192.168.1.1
```

### Port : 22 (TCP)

### En cybersécurité :
```
Brute force SSH → hydra -l root -P rockyou.txt IP ssh
Clés SSH        → plus sécurisé que les mots de passe
```

---

## SMTP/POP3/IMAP — Protocoles Email

### SMTP — Simple Mail Transfer Protocol
- Envoyer des emails
- Port : 25/587

### POP3 — Post Office Protocol
- Recevoir des emails
- Port : 110

### IMAP — Internet Message Access Protocol
- Recevoir et synchroniser des emails
- Port : 143

### En cybersécurité :
```
SMTP Open Relay → envoyer des spams via un serveur mal configuré
Phishing        → usurper l'identité d'un expéditeur
```

---

## ARP — Address Resolution Protocol

### C'est quoi ?
Traduit les adresses IP en adresses MAC.
```
192.168.1.1 → AA:BB:CC:DD:EE:FF
```

### En cybersécurité :
```
ARP Poisoning → falsifier les tables ARP
               → intercepter le trafic (Man in the Middle)
```
```
