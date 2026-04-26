# 🐧 Sécurité Linux

## Les bonnes pratiques

### Gestion des utilisateurs
```bash
# Ne jamais utiliser root directement
sudo commande

# Désactiver le login root via SSH
/etc/ssh/sshd_config → PermitRootLogin no

# Vérifier les utilisateurs avec shell
cat /etc/passwd | grep /bin/bash
```

### Mises à jour
```bash
apt update && apt upgrade    → Debian/Ubuntu
yum update                   → CentOS/RHEL
```

### Pare-feu
```bash
ufw enable                   → activer le pare-feu
ufw allow 22                 → autoriser SSH
ufw deny 23                  → bloquer Telnet
ufw status                   → voir les règles
```

## Logs système

```bash
/var/log/auth.log    → authentifications
/var/log/syslog      → logs système
/var/log/apache2/    → logs serveur web
journalctl -f        → logs en temps réel
last                 → dernières connexions
lastb                → tentatives échouées
```

## Durcissement SSH

```bash
# /etc/ssh/sshd_config
PermitRootLogin no          → interdire root
PasswordAuthentication no   → clés uniquement
Port 2222                   → changer le port
MaxAuthTries 3              → limiter les tentatives
```

## En cybersécurité offensive

```bash
# Enumération
cat /etc/passwd             → utilisateurs
sudo -l                     → permissions sudo
cat /etc/crontab            → tâches planifiées
find / -perm -4000 2>/dev/null → fichiers SUID

# Privilege escalation
sudo -l                     → commandes sudo autorisées
crontab -l                  → tâches exploitables
find / -writable 2>/dev/null → fichiers modifiables
```

## Les vecteurs de privesc courants

```
SUID mal configuré     → exécuter en tant que root
Sudo mal configuré     → exécuter des commandes root
Cron jobs              → scripts modifiables par user
Mots de passe exposés  → dans les fichiers de config
Kernel vulnérable      → exploits publics disponibles
```
```

---

