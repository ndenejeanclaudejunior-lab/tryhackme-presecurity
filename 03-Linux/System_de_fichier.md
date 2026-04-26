# 🐧 Système de Fichiers Linux

## Structure des répertoires

```
/                   → racine du système
├── bin             → commandes essentielles
├── boot            → fichiers de démarrage
├── dev             → périphériques
├── etc             → fichiers de configuration
├── home            → répertoires utilisateurs
├── lib             → bibliothèques système
├── media           → montage périphériques externes
├── mnt             → montage temporaire
├── opt             → logiciels optionnels
├── proc            → informations processus
├── root            → home de root
├── run             → données runtime
├── srv             → données services
├── sys             → informations système
├── tmp             → fichiers temporaires
├── usr             → programmes utilisateurs
└── var             → données variables (logs...)
```

## Fichiers importants en cybersécurité

```
/etc/passwd       → liste des utilisateurs
/etc/shadow       → hashes des mots de passe
/etc/hosts        → résolution DNS locale
/etc/crontab      → tâches planifiées
/etc/sudoers      → permissions sudo
/var/log/auth.log → logs d'authentification
/var/log/syslog   → logs système
/tmp              → fichiers temporaires (souvent writable)
/proc/self/environ→ variables d'environnement
```

## Types de fichiers

```
-  → fichier normal
d  → répertoire
l  → lien symbolique
c  → périphérique caractère
b  → périphérique bloc
s  → socket
p  → pipe
```

## Commandes utiles

```bash
df -h              → espace disque
du -sh dossier     → taille d'un dossier
mount              → voir les montages
file fichier       → type d'un fichier
stat fichier       → infos détaillées
ln -s source dest  → créer un lien symbolique
```

## En cybersécurité

```bash
cat /etc/passwd         → énumérer les utilisateurs
cat /etc/shadow         → récupérer les hashes
cat /etc/sudoers        → voir les permissions sudo
ls -la /tmp             → fichiers temporaires suspects
find / -writable 2>/dev/null → fichiers modifiables
cat /var/log/auth.log   → tentatives de connexion
```
```

---

