# 🌐 Outils Web Security

## Burp Suite

### C'est quoi ?
L'outil incontournable du pentesteur web —
intercepte et modifie les requêtes HTTP !

### Fonctionnalités principales :
```
Proxy      → intercepter les requêtes
Repeater   → rejouer et modifier les requêtes
Intruder   → brute force et fuzzing
Scanner    → scanner automatique de vulnérabilités
Decoder    → encoder/décoder base64, URL...
```

### Workflow de base :
```
Configurer le proxy dans le navigateur
        ↓
Intercepter une requête
        ↓
La modifier
        ↓
La renvoyer au serveur
```

---

## Gobuster

### C'est quoi ?
Outil de fuzzing de répertoires et fichiers cachés.

### Commandes :
```bash
# Fuzzing de répertoires
gobuster dir -u http://site.com -w /usr/share/wordlists/dirb/common.txt

# Avec extensions
gobuster dir -u http://site.com -w wordlist.txt -x php,html,txt

# Fuzzing de sous-domaines
gobuster dns -d site.com -w wordlist.txt
```

---

## Nikto

### C'est quoi ?
Scanner de vulnérabilités web automatique.

### Commandes :
```bash
# Scan basique
nikto -h http://site.com

# Scan avec port spécifique
nikto -h http://site.com -p 8080

# Scan HTTPS
nikto -h https://site.com -ssl
```

### Ce que Nikto détecte :
```
Headers de sécurité manquants
Fichiers sensibles exposés
Versions vulnérables
Mauvaises configurations
```

---

## jwt.io

### C'est quoi ?
Site web pour décoder, modifier et encoder les JWT.

### Utilisation :
```
Coller le token dans "Encoded"
        ↓
Voir le header et payload décodés
        ↓
Modifier le payload
        ↓
Récupérer le nouveau token encodé
```

---

## Dirb

### C'est quoi ?
Alternative à Gobuster pour le fuzzing de répertoires.

### Commandes :
```bash
# Scan basique
dirb http://site.com

# Avec wordlist spécifique
dirb http://site.com /usr/share/wordlists/dirb/big.txt
```

---

## Hydra

### C'est quoi ?
Outil de brute force pour les formulaires de login.

### Commandes :
```bash
# Brute force HTTP POST
hydra -l admin -P rockyou.txt site.com http-post-form "/login:user=^USER^&pass=^PASS^:F=incorrect"

# Brute force SSH
hydra -l root -P rockyou.txt IP ssh

# Brute force FTP
hydra -l admin -P rockyou.txt IP ftp
```

---

## Wordlists importantes

```
/usr/share/wordlists/rockyou.txt        → mots de passe
/usr/share/wordlists/dirb/common.txt    → répertoires communs
/usr/share/wordlists/dirb/big.txt       → répertoires complet
/usr/share/wordlists/fasttrack.txt      → mots de passe courts
```
```

---
