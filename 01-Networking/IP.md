# 📡 Adressage IP et Subnetting

## C'est quoi une adresse IP ?

Une adresse IP est une adresse unique qui identifie 
une machine sur un réseau — comme une adresse postale !

## IPv4

Format : 4 nombres séparés par des points
```
192.168.1.1
```
Chaque nombre est entre 0 et 255.

## Les classes d'adresses IP

```
Classe A → 1.0.0.0    à 126.255.255.255
Classe B → 128.0.0.0  à 191.255.255.255
Classe C → 192.0.0.0  à 223.255.255.255
```

## Adresses privées vs publiques

### Adresses privées (réseau local) :
```
10.0.0.0/8
172.16.0.0/12
192.168.0.0/16
```

### Adresses publiques :
Tout le reste — accessibles depuis internet !

## Le Masque de sous-réseau

Le masque définit quelle partie de l'IP 
est le réseau et quelle partie est l'hôte.

```
IP     : 192.168.1.1
Masque : 255.255.255.0
Réseau : 192.168.1.0
Hôtes  : 192.168.1.1 → 192.168.1.254
```

## La notation CIDR

```
192.168.1.0/24 → 254 hôtes disponibles
192.168.1.0/16 → 65534 hôtes disponibles
192.168.1.0/8  → 16777214 hôtes disponibles
```

## Adresses spéciales

```
127.0.0.1     → loopback (ta propre machine)
255.255.255.255 → broadcast (tout le réseau)
0.0.0.0       → toutes les interfaces
```

## IPv6

Format : 8 groupes de 4 chiffres hexadécimaux
```
2001:0db8:85a3:0000:0000:8a2e:0370:7334
```
Créé pour remplacer IPv4 qui manque d'adresses !

## En cybersécurité

```
Connaître le réseau cible → nmap -sn 192.168.1.0/24
Identifier les hôtes actifs → nmap -sV 192.168.1.0/24
Trouver des machines cachées → scan de sous-réseaux
```
