# 🐧 Réseau Linux

## Voir les interfaces réseau

```bash
ip a                    → voir toutes les interfaces
ip addr show eth0       → voir une interface spécifique
ifconfig                → ancienne commande
```

## Connectivité

```bash
ping 192.168.1.1        → tester la connectivité
ping google.com         → tester la résolution DNS
traceroute google.com   → tracer le chemin
```

## Ports et connexions

```bash
netstat -tlnp           → ports en écoute
netstat -an             → toutes les connexions
ss -tlnp                → alternative moderne
lsof -i :80             → voir qui utilise le port 80
```

## Configuration réseau

```bash
ip route                → table de routage
ip route add            → ajouter une route
/etc/resolv.conf        → configuration DNS
/etc/hosts              → résolution locale
/etc/network/interfaces → configuration interfaces
```

## Transfert de fichiers

```bash
wget http://site.com/fichier    → télécharger
curl http://site.com            → requête HTTP
scp fichier user@ip:/dest       → copier via SSH
python3 -m http.server 8080     → serveur HTTP rapide
```

## En cybersécurité

```bash
ip a                            → découvrir les interfaces
netstat -tlnp                   → services en écoute
cat /etc/resolv.conf            → serveurs DNS configurés
cat /etc/hosts                  → redirections locales
arp -a                          → table ARP
nc -lvnp 4444                   → écouter sur un port
```
```

---
