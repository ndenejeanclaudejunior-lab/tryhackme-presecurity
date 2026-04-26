# 🌐 Clickjacking

## C'est quoi le Clickjacking ?

Le Clickjacking consiste à superposer une page
légitime invisible au dessus d'une page piégée
pour tromper la victime sur ce qu'elle clique !

## Comment ça marche ?

```
Ce que la victime voit :
"Clique ici pour gagner un iPhone 🎁"

Ce qui se passe vraiment :
La vraie page (invisible) est au dessus
"Confirmer le virement de 5000€"

La victime clique sur "iPhone"
mais en réalité clique sur "virement" 😏
```

## Schéma visuel

```
Couche du DESSUS (invisible) → site légitime
Couche du DESSOUS (visible)  → page piégée
        ↓
Victime voit la page piégée
Victime clique → clic atterrit sur le site légitime
```

## Différence Clickjacking vs CSRF

```
Clickjacking → victime clique sans le savoir
               deux pages superposées

CSRF         → requête automatique
               victime ne clique sur rien
```

## Comment détecter le Clickjacking

```bash
# Vérifier les headers HTTP
curl -I http://site.com

# Chercher X-Frame-Options
X-Frame-Options: DENY       → protégé ✅
X-Frame-Options: absent     → vulnérable ❌
```

Dans la console du navigateur :
```javascript
window === window.top
→ true  → pas dans un iframe
→ false → dans un iframe → vulnérable !
```

## Actions possibles via Clickjacking

```
Confirmer un virement bancaire
Supprimer un compte
Changer un mot de passe
Liker/partager du contenu
Autoriser des permissions
```

## Protection contre le Clickjacking

```
X-Frame-Options: DENY
→ empêche le site d'être chargé dans un iframe

Content-Security-Policy: frame-ancestors 'none'
→ alternative moderne à X-Frame-Options
```

## Sévérité en bug bounty

```
Clickjacking actions sensibles → Medium/High 🟠🔴
Clickjacking actions mineures  → Low 🟡
```

## Pratique

```
Mutillidae → OWASP Top 10 → A5 → Clickjacking
```
```

---

