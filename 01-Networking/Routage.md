# 📡 Routage

## C'est quoi le routage ?

Le routage c'est le processus qui permet 
d'acheminer les données d'une machine 
vers une autre à travers un réseau.

C'est le rôle du **routeur** !

## Comment ça marche ?

```
Ton PC envoie un paquet vers google.com
        ↓
Le paquet passe par ton routeur
        ↓
Le routeur consulte sa table de routage
        ↓
Il envoie le paquet vers le prochain routeur
        ↓
Et ainsi de suite jusqu'à destination !
```

## La table de routage

C'est une liste que chaque routeur possède :
```
Destination      Masque          Passerelle
0.0.0.0          0.0.0.0         192.168.1.1  ← route par défaut
192.168.1.0      255.255.255.0   0.0.0.0      ← réseau local
```

## Les protocoles de routage

### Routage statique
- Configuré manuellement par l'administrateur
- Simple mais pas flexible

### Routage dynamique
- Les routeurs échangent automatiquement leurs tables
- Protocoles :
```
RIP  → simple, petit réseau
OSPF → rapide, grand réseau
BGP  → internet mondial
```

## Commandes utiles

```bash
# Voir la table de routage sur Linux
ip route

# Voir la table de routage sur Windows
route print

# Tracer le chemin d'un paquet
traceroute google.com  (Linux)
tracert google.com     (Windows)
```

## En cybersécurité

```
Route poisoning  → falsifier les tables de routage
BGP hijacking    → détourner le trafic internet
Traceroute       → cartographier le réseau cible
```
