# 🐧 Processus Linux

## C'est quoi un processus ?

Un processus c'est un programme en cours d'exécution.
Chaque processus a un identifiant unique : le PID.

## Voir les processus

```bash
ps aux          → voir tous les processus
ps aux | grep nom → chercher un processus
top             → moniteur en temps réel
htop            → moniteur amélioré
pgrep nom       → trouver le PID d'un processus
```

## Gérer les processus

```bash
kill PID        → arrêter un processus
kill -9 PID     → forcer l'arrêt
killall nom     → arrêter par nom
```

## Processus en arrière plan

```bash
commande &         → lancer en arrière plan
jobs               → voir les processus en arrière plan
fg                 → ramener au premier plan
bg                 → envoyer en arrière plan
Ctrl+Z             → suspendre un processus
Ctrl+C             → arrêter un processus
```

## Les tâches planifiées — Cron

```bash
crontab -l         → voir les tâches planifiées
crontab -e         → éditer les tâches
cat /etc/crontab   → tâches système
```

Format cron :
```
* * * * * commande
│ │ │ │ │
│ │ │ │ └── jour de la semaine (0-7)
│ │ │ └──── mois (1-12)
│ │ └────── jour du mois (1-31)
│ └──────── heure (0-23)
└────────── minute (0-59)
```

Exemple :
```
0 2 * * * /backup.sh → exécuter backup.sh à 2h du matin
```

## En cybersécurité

```bash
ps aux                          → chercher processus suspects
cat /etc/crontab                → chercher tâches exploitables
find / -writable -type f 2>/dev/null → fichiers modifiables
ls -la /etc/cron*               → tâches cron système
```

Les cron jobs mal configurés sont souvent
utilisés pour la privilege escalation ! 😏
```

---

