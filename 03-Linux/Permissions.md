# 🐧 Permissions Linux

## C'est quoi les permissions ?

Chaque fichier Linux a des permissions qui définissent
qui peut lire, écrire ou exécuter ce fichier.

## Les trois types de permissions

```
r → read    → lire le fichier
w → write   → modifier le fichier
x → execute → exécuter le fichier
```

## Les trois catégories d'utilisateurs

```
u → user  → le propriétaire du fichier
g → group → le groupe du fichier
o → other → tout le monde
```

## Lire les permissions

```bash
ls -la
-rwxr-xr-- 1 claude users 1234 avril 26 fichier.txt
```

Décomposé :
```
- → type (- fichier, d dossier, l lien)
rwx → propriétaire peut lire, écrire, exécuter
r-x → groupe peut lire et exécuter
r-- → autres peuvent seulement lire
```

## La notation octale

```
r = 4
w = 2
x = 1

rwx = 4+2+1 = 7
r-x = 4+0+1 = 5
r-- = 4+0+0 = 4
```

Exemples :
```
chmod 777 fichier → tout le monde peut tout faire
chmod 755 fichier → propriétaire tout, autres lecture+exec
chmod 644 fichier → propriétaire tout, autres lecture
chmod 600 fichier → propriétaire seulement
```

## Modifier les permissions

```bash
chmod 755 fichier        → notation octale
chmod u+x fichier        → ajouter exec au propriétaire
chmod g-w fichier        → retirer écriture au groupe
chmod o-r fichier        → retirer lecture aux autres
chown claude fichier     → changer le propriétaire
chgrp users fichier      → changer le groupe
```

## Le bit SUID

```bash
chmod u+s fichier
chmod 4755 fichier
```

Quand le bit SUID est activé :
```
Le programme s'exécute avec les droits
de son propriétaire — pas de celui qui l'exécute !
```

Identifier les fichiers SUID :
```bash
find / -perm -4000 -type f 2>/dev/null
```

## Le bit SGID

Similaire au SUID mais pour les groupes :
```bash
chmod g+s fichier
chmod 2755 fichier
```

## Le Sticky Bit

Empêche les utilisateurs de supprimer
les fichiers des autres :
```bash
chmod +t dossier
chmod 1777 dossier
```

Exemple : /tmp a toujours le sticky bit !

## En cybersécurité

```
Fichiers SUID root    → vecteur de privesc !
/etc/passwd writeable → modifier les utilisateurs
/etc/shadow readable  → récupérer les hashes
Fichiers world-write  → modifier des fichiers critiques
```
```

---
