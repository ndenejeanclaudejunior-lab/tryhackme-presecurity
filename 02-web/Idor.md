# 🌐 Insecure Direct Object Reference (IDOR)

## C'est quoi l'IDOR ?

L'IDOR c'est quand un site expose des références
directes à des objets internes (IDs, fichiers...)
sans vérifier si l'utilisateur a le droit d'y accéder.

## Exemple concret

```
https://site.com/profil?id=41  → ton profil
https://site.com/profil?id=1   → profil admin 😏
```

Le site fait confiance à l'ID sans vérifier
si t'as le droit d'y accéder !

## Comment le détecter ?

```
1. Se connecter sur le site
2. Observer les paramètres dans l'URL
   ?id=, ?user=, ?account=, ?file=...
3. Modifier la valeur
4. Si on accède à d'autres données → IDOR ! 😏
```

## Types d'IDOR

### IDOR dans l'URL
```
?id=41 → ?id=1
```

### IDOR dans le body (Burp Suite)
```
{"userid": "41"} → {"userid": "1"}
```

### IDOR dans les cookies
```
userid=41 → userid=1
```

## Impact en bug bounty

```
Accéder aux données d'autres utilisateurs
Modifier les données d'autres utilisateurs
Supprimer les données d'autres utilisateurs
Accéder à des fonctionnalités admin
```

## Différence IDOR vs JWT attack

```
IDOR       → paramètre exposé dans l'URL ou body
JWT attack → paramètre caché dans le token
Même résultat → accès non autorisé 😏
```

## Protection contre l'IDOR

```
Vérifier côté serveur si l'utilisateur
a le droit d'accéder à la ressource demandée
Utiliser des IDs aléatoires (UUID)
```

## Sévérité en bug bounty

```
IDOR lecture données     → High 🔴
IDOR modification données → Critical 🔴🔴
IDOR suppression données  → Critical 🔴🔴
```
