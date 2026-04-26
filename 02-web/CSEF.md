# 🌐 Cross Site Request Forgery (CSRF)

## C'est quoi le CSRF ?

Le CSRF force une victime à effectuer une action
sur un site où elle est connectée
sans qu'elle le sache !

## Comment ça marche ?

```
Victime connectée sur sa banque
        ↓
Elle visite un site piégé
        ↓
Le site envoie automatiquement une requête
à la banque à sa place
        ↓
La banque exécute car la victime est connectée 😏
```

## Condition principale

```
La victime doit être connectée au site cible !

Victime connectée ✅ + visite site piégé ✅
→ attaque réussie 😏

Victime pas connectée ❌
→ attaque échoue
```

## Le payload CSRF

```html
<!-- Image invisible qui envoie une requête -->
<img src="http://banque.com/virement?montant=5000&dest=attaquant">

<!-- Formulaire qui se soumet automatiquement -->
<form action="http://banque.com/virement" method="POST">
  <input type="hidden" name="montant" value="5000">
  <input type="hidden" name="dest" value="attaquant">
</form>
<script>document.forms[0].submit()</script>
```

## Différence CSRF vs Clickjacking

```
Clickjacking → superposer deux sites
               victime clique sans le savoir

CSRF         → pas de superposition
               requête envoyée automatiquement
               victime ne clique sur rien !
```

## Actions possibles via CSRF

```
Virement bancaire
Changement de mot de passe
Changement d'email
Suppression de compte
Publication de contenu
Ajout d'un admin
```

## Protection contre le CSRF

```
Token CSRF → valeur aléatoire dans chaque formulaire
             le serveur vérifie ce token
             l'attaquant peut pas le deviner !

SameSite Cookie → cookie envoyé seulement
                  depuis le même site

Vérification Origin/Referer header
```

## Sévérité en bug bounty

```
CSRF changement mot de passe → Critical 🔴🔴
CSRF virement bancaire        → Critical 🔴🔴
CSRF actions sensibles        → High 🔴
CSRF actions mineures         → Medium 🟠
```

## Pratique

```
Mutillidae → OWASP Top 10 → A8 CSRF
PortSwigger → Web Security Academy → CSRF
```
```

---

