# 📡 Le Modèle TCP/IP

## C'est quoi TCP/IP ?

TCP/IP est le modèle utilisé dans la vraie vie —
c'est la base de tout internet !

Contrairement au modèle OSI qui a 7 couches,
TCP/IP en a seulement 4.

## Les 4 couches

### Couche 4 — Application
- Correspond aux couches 5,6,7 du modèle OSI
- Protocoles : HTTP, DNS, FTP, SMTP, SSH

### Couche 3 — Transport
- Correspond à la couche 4 du modèle OSI
- Protocoles : TCP et UDP

### Couche 2 — Internet
- Correspond à la couche 3 du modèle OSI
- Protocoles : IP, ICMP
- Gère l'adressage et le routage

### Couche 1 — Accès réseau
- Correspond aux couches 1,2 du modèle OSI
- Protocoles : Ethernet, WiFi

## TCP vs UDP

### TCP (Transmission Control Protocol)
- Fiable → garantit la livraison des données
- Orienté connexion → établit une connexion avant d'envoyer
- Plus lent
- Exemple : HTTP, SSH, FTP

### Le Three-Way Handshake TCP
```
Client  →  SYN      →  Serveur
Client  ←  SYN-ACK  ←  Serveur
Client  →  ACK      →  Serveur
Connexion établie !
```

### UDP (User Datagram Protocol)
- Non fiable → pas de garantie de livraison
- Sans connexion → envoie sans établir de connexion
- Plus rapide
- Exemple : DNS, streaming vidéo, jeux en ligne

## En cybersécurité

```
TCP SYN scan (nmap)  → exploite le handshake TCP
UDP scan             → découvrir services UDP cachés
IP spoofing          → falsifier l'adresse IP source
```
```

---
