# 📡 Le Modèle OSI

## C'est quoi le modèle OSI ?

Le modèle OSI (Open Systems Interconnection) est un 
modèle de référence qui décrit comment les données 
circulent dans un réseau informatique.

Il est composé de 7 couches — chaque couche a un rôle précis.

## Les 7 couches

### Couche 7 — Application
- La plus proche de l'utilisateur
- Protocoles : HTTP, FTP, DNS, SMTP
- Exemple : ton navigateur web

### Couche 6 — Présentation
- Formate et chiffre les données
- Exemple : SSL/TLS, chiffrement HTTPS

### Couche 5 — Session
- Gère les sessions de communication
- Exemple : ouverture/fermeture de connexions

### Couche 4 — Transport
- Transporte les données de bout en bout
- Protocoles : TCP (fiable), UDP (rapide)
- Gère les ports

### Couche 3 — Réseau
- Gère l'adressage et le routage
- Protocoles : IP, ICMP
- Exemple : adresses IP

### Couche 2 — Liaison de données
- Gère la communication entre deux machines
- Protocoles : Ethernet, WiFi
- Exemple : adresses MAC

### Couche 1 — Physique
- Transmission des bits bruts
- Exemple : câbles, ondes radio

## Moyen mnémotechnique

```
7 - Application   → All
6 - Présentation  → People
5 - Session       → Seem
4 - Transport     → To
3 - Réseau        → Need
2 - Liaison       → Data
1 - Physique      → Processing
```

## En cybersécurité

```
Couche 7 → XSS, SQLi, attaques web
Couche 4 → scan de ports, TCP SYN flood
Couche 3 → spoofing IP
Couche 2 → ARP poisoning
