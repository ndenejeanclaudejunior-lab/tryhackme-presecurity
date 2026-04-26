# 🌐 OWASP Top 10

## C'est quoi l'OWASP ?

L'OWASP (Open Web Application Security Project)
est une organisation qui publie les 10 vulnérabilités
web les plus critiques et courantes.

C'est la référence mondiale en sécurité web !

## Le Top 10

### A01 — Broken Access Control
Contrôle d'accès mal configuré :
```
Accéder à des ressources non autorisées
→ IDOR, path traversal, privilege escalation
```

### A02 — Cryptographic Failures
Mauvaise utilisation de la cryptographie :
```
Données sensibles non chiffrées
→ mots de passe en clair, HTTP non sécurisé
```

### A03 — Injection
Injection de code malveillant :
```
SQLi, Command Injection, LDAPi, XMLi...
→ manipuler les requêtes du serveur
```

### A04 — Insecure Design
Mauvaise conception de l'application :
```
Absence de contrôles de sécurité dès la conception
→ logique métier défaillante
```

### A05 — Security Misconfiguration
Mauvaise configuration de sécurité :
```
Headers manquants, ports inutiles ouverts
→ clickjacking, exposition d'infos sensibles
```

### A06 — Vulnerable Components
Composants vulnérables et obsolètes :
```
Bibliothèques, frameworks non mis à jour
→ exploits publics disponibles
```

### A07 — Authentication Failures
Authentification défaillante :
```
Mots de passe faibles, JWT mal signé
→ brute force, session hijacking
```

### A08 — Software and Data Integrity Failures
Intégrité des données non vérifiée :
```
Mises à jour non signées, pipelines CI/CD non sécurisés
→ supply chain attacks
```

### A09 — Security Logging Failures
Logs de sécurité insuffisants :
```
Absence de logs → attaques non détectées
→ impossible d'investiguer après incident
```

### A10 — Server Side Request Forgery (SSRF)
Forcer le serveur à faire des requêtes :
```
Le serveur contacte des ressources internes
→ accès au réseau interne de l'entreprise
```

## Résumé visuel

```
A01 → IDOR, accès non autorisé
A02 → chiffrement faible
A03 → SQLi, Command Injection
A04 → mauvaise conception
A05 → mauvaise configuration
A06 → composants obsolètes
A07 → JWT, brute force
A08 → intégrité non vérifiée
A09 → logs insuffisants
A10 → SSRF
```

## En bug bounty

```
A01 → High/Critical 🔴
A03 → High/Critical 🔴
A07 → High 🔴
A10 → High/Critical 🔴
A05 → Low/Medium 🟡
A09 → Informational ⚪
```
```

---
