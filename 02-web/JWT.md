# 🌐 JSON Web Token (JWT)

## C'est quoi un JWT ?

Un JWT est un token d'authentification que le serveur
donne à l'utilisateur après connexion.
Il évite au serveur de stocker les sessions !

## Structure d'un JWT

```
eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyaWQiOiI0MSJ9.signature
        ↑                      ↑                  ↑
     HEADER                 PAYLOAD           SIGNATURE
```

3 parties séparées par des points — encodées en base64 !

## Le Header

```json
{
  "alg": "HS256",
  "typ": "JWT"
}
```
- `alg` → algorithme de signature
- `typ` → type de token

## Le Payload

```json
{
  "userid": "41",
  "username": "claude",
  "role": "user",
  "exp": 1776525173
}
```
Contient les informations de l'utilisateur.
Pas chiffré — juste encodé en base64 !

## La Signature

```
SIGNATURE = HS256(
    base64(header) + "." + base64(payload),
    CLÉ_SECRÈTE_DU_SERVEUR
)
```

Fonction à sens unique — impossible d'inverser !
La clé secrète n'est jamais dans le token.

## Comment le serveur vérifie un JWT

```
Reçoit le token
        ↓
Recalcule la signature avec sa clé secrète
        ↓
Compare avec la signature du token
        ↓
Identiques ✅ → token valide
Différents  ❌ → token rejeté
```

## Les 3 attaques JWT

### Attaque 1 — Modifier le Payload
```
Décoder le payload sur jwt.io
        ↓
Modifier userid=41 → userid=1
        ↓
Renvoyer le token modifié
        ↓
Serveur vulnérable accepte 😏
```

### Attaque 2 — Algorithm None
```
Changer l'algorithme → "alg": "none"
        ↓
Supprimer la signature
        ↓
Serveur vulnérable vérifie pas 😏
```

Token format :
```
header.payload.
```
Note le point final — la signature est vide !

### Attaque 3 — Brute force clé secrète
```bash
echo "ton.token.jwt" > token.jwt
hashcat -a 0 -m 16500 token.jwt rockyou.txt
```
Si clé faible → hashcat la trouve !
On peut alors signer nos propres tokens 😏

### Attaque 4 — RS256 → HS256
```
Serveur utilise RS256
        ↓
Sa clé publique est accessible à tous
        ↓
On change l'algorithme → HS256
        ↓
On signe avec la clé publique
        ↓
Serveur vulnérable vérifie avec clé publique
        ↓
Vérification réussit 😏
```

## Différence JWT vs IDOR

```
IDOR       → paramètre dans l'URL
JWT attack → paramètre dans le token
Même résultat → accès non autorisé 😏
```

## Protection contre les attaques JWT

```
Vérifier l'algorithme côté serveur
Rejeter alg=none
Utiliser une clé secrète forte
Vérifier l'expiration du token
```

## Sévérité en bug bounty

```
Modifier le payload    → High 🔴
Algorithm None         → Critical 🔴🔴
Brute force clé        → Critical 🔴🔴
RS256 → HS256          → Critical 🔴🔴
```

## Outils

```
jwt.io      → décoder et modifier les JWT
hashcat     → brute forcer la clé secrète
Burp Suite  → intercepter et modifier les tokens
```

## Pratique

```
Mutillidae → OWASP Top 10 → A2 → JWT
PortSwigger → Web Security Academy → JWT
```
```

---
