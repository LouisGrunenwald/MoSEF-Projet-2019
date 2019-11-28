### Projet Linux MoSEF 2019

## Objectif 

Le but du projet est de réaliser une requête Shell (type : Bash) permettant, à terme, d'identifier les fichiers dans un répertoire correspondant à un un pattern de fichier choisi et possédant au moins une ligne avec un mot clé recherché.

Le but de cet exercice est d'appliquer certaines fonctions Shell vu en cours ainsi que les principes fondamentaux du fonctionnement de Git sur Github par exemple.

## Explication de la construction du code 

Pour créer le script Bash nécessaire au projet, j'ai dû créer trois codes modifiés.
Un premier script renvoyant le chemin du dossier recherché. 
Un second script renvoyant un pattern de fichier préalablement inscrit en ligne de commande par un paramètre.
Enfin un troisième script permettant l'insertion d'un troisème paramètre en ligne de commande nous permettant d'identifier les fichiers répondant à ces deux conditions.
L'aboutissement du script final est dans la continuité de chacun des scripts précédemment crées. 

Dans le script final crée, il suffit simplement d'exécuter le script en ligne de commande de telle façon : `./search_fichiers.sh` avec au choix 0, 1 ou 2 paramètres. Sans paramètre, on retrouvera le 1er script, avec 1 le deuxième et avec 2 le troisième.
Exemple : la commande : `./search_fichiers.sh et*.txt bon*our` nous renverra les chemins des fichiers suivant le pattern "et*.txt" (sensible à la casse) et possédant au moins une fois le mot "bon*our" (insensible à la casse)  dans son contenu.

## Exemple de Fonctionnement 

```
  ./search_fichiers.sh et*.txt bon*our
Bonjour sorbonne, on est actuellemnt le : 28/11/2019 et il est : 16:29 . Il fait froid, il est donc temps de partir en vacs mais pas avant cet exercice 
A quel répertoir souhaitez vous accéder ? Documents
Voici le répertoire : Documents
/home/sorbonne/Documents/etats2.txt
/home/sorbonne/Documents/Etats.txt
/home/sorbonne/Documents/etats.txt
/home/sorbonne/Documents/etAts2 .txt
/home/sorbonne/Documents/etats3.txt
```
## Etapes de soumission sur Github

# Etape 1: 
Création d'une nouvelle branche `git branch nv_branche` sur le repertoire git où l'on travaille.
# Etape 2:
Création ou modification du script sur la branche créée. Une fois que la requête réalisée, on applique `git add ****.sh` pour garder le projet dans la branche secondaire et `git commit -m "commentaire"` afin de soumettre au repo.
# Etape 3: 
Une fois le fichier commité, on peut l'envoyer ensuite sur Github, plateforme collaborative, permettant à d'autres d'en profiter ou d'améliorer celui-ci. Il suffit dès lors d'appliquer un `git push -u origin <branche_actuelle>`. Il ne reste plus qu'à rentrer identifiant et MDP puis le fichier est envoyé sur Github.
# Etape 4:
Le fichier envoyé sur Github, il faut amaintenant le valider, dans l'onglet pull request, on accepte la modification et on merge la branche créée avec la modification à la branche Master. Le tour est joué et la modification est présente sur Github. (On peut y voir tout l'historique des modifications antérieures).
# Etape 5: 
POur enregister les modifications effectuées en local, il ne reste plus qu'a sortir  de la branche "nv_branche" avec la commande `git checkout master` pour retrourner sur la branche master et enfin effectuer une fusion entre les 2 branches avec un `git merge nv_branche` 


## Avertissement 

Il est possible que la ligne de commande ne fonctionne pas dorectement car il est possible que les droits ne soient pas octroyer, il suffit alors juste de tapper la comande `chmod x+u search_fichier.sh`

## Suppression Consignes.md

![This is an example picture](https://github.com/LouisGrunenwald/MoSEF-Projet-2019/blob/0e5482eeb54059b82148a7b287d8673cdde914ce/Suppression%20consignes.md.png)
