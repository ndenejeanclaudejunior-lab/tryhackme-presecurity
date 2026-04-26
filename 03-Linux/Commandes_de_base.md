# 🐧 Commandes de Base Linux

## Navigation

```bash
pwd         → afficher le répertoire actuel
ls          → lister les fichiers
ls -la      → lister avec détails et fichiers cachés
cd /home    → changer de répertoire
cd ..       → remonter d'un niveau
cd ~        → aller dans le répertoire home
```

## Manipulation de fichiers

```bash
touch fichier.txt      → créer un fichier
mkdir dossier          → créer un dossier
cp fichier dest        → copier un fichier
mv fichier dest        → déplacer/renommer
rm fichier             → supprimer un fichier
rm -rf dossier         → supprimer un dossier
cat fichier.txt        → afficher le contenu
nano fichier.txt       → éditer un fichier
```

## Recherche

```bash
find / -name fichier   → chercher un fichier
grep "mot" fichier     → chercher dans un fichier
grep -r "mot" /dossier → chercher récursivement
which nmap             → trouver un programme
locate fichier         → localiser un fichier
```

## Informations système

```bash
whoami      → utilisateur actuel
id          → infos utilisateur et groupes
uname -a    → infos système
hostname    → nom de la machine
ps aux      → processus actifs
top         → moniteur système
df -h       → espace disque
free -h     → mémoire RAM
```

## Gestion des utilisateurs

```bash
adduser nom          → créer un utilisateur
passwd nom           → changer mot de passe
su utilisateur       → changer d'utilisateur
sudo commande        → exécuter en tant que root
usermod -aG groupe   → ajouter au groupe
cat /etc/passwd      → liste des utilisateurs
cat /etc/shadow      → hashes des mots de passe
```

## Réseau

```bash
ip a                 → voir les interfaces réseau
ping 192.168.1.1     → tester la connectivité
netstat -tlnp        → voir les ports ouverts
ss -tlnp             → alternative à netstat
curl http://site.com → faire une requête HTTP
wget http://site.com → télécharger un fichier
```

## Permissions

```bash
chmod 755 fichier    → modifier les permissions
chown user fichier   → changer le propriétaire
chmod +x fichier     → rendre exécutable
chmod u+s fichier    → ajouter le bit SUID
```

## Compression

```bash
tar -czf archive.tar.gz dossier  → compresser
tar -xzf archive.tar.gz          → décompresser
zip archive.zip fichier           → zipper
unzip archive.zip                 → dézipper
gunzip fichier.gz                 → décompresser gz
```

## Pipes et redirections

```bash
commande > fichier    → rediriger vers fichier
commande >> fichier   → ajouter à un fichier
commande 2>/dev/null  → ignorer les erreurs
cmd1 | cmd2           → pipe entre commandes
```

## En cybersécurité

```bash
find / -perm -4000 2>/dev/null   → trouver les SUID
cat /etc/passwd                   → énumérer les users
cat /etc/crontab                  → tâches planifiées
history                           → historique commandes
env                               → variables d'environnement
```
```

---
