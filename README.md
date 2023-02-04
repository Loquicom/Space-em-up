# Space'em up

Ce document a été rédigé en version 1.2 du logiciel, de ce fait la version 1.2 est considérée comme la version de référence et tout le changelog indique les modification à partir de cette version
Ceci est la documentation de space'em up, jeu par Loquicom
La musique utilisé est A40 de ZeroCall
Une partie des sprites utilisés viennent de Onyx

Le jeu en version navigateur est jouable :
 - Sur mon site web [space-em-up.loquicom.fr](https://space-em-up.loquicom.fr) (Recommandé)
 - Sur la [Github Page](https://loquicom.github.io/Space-em-up/)

## Manuel

Liste des différents modes et des commandes du jeu

### Modes

1 - Mode Solo/Coop
Détruire le plus d'ennemie avant de mourrir pour faire le meilleur score
Les boules rouge augmente la vitesse de déplacement
Les boules jaunes augmente la vitesse de tir
Les boules vertes permettent de tirer en diagonale
Sortir par le haut de l'ecran fait revenir par le bas (et inversement)
En mode coop le tir amis est activé

2 - Mode Souris/Tactile
Le bouton en haut a droite permet de changer de mode, dans ce mode seul le solo est accessible (pas de coop)
Le tir est automatique
Le deplacement ce fait en maintenant le clic gauche pour que le vaisseau suive le mouvement de la souris
Sinon ce mode de jeu est identique au mode solo/coop
Le high score de ce mode est different du solo/coop

3 - mode Versus
WIP
Le bouton ne fait rien pour le moment

### Commandes

___Mode Solo/Coop___
SPACE -> Tirer Joueur 1
Z -> Mouvement Joueur 1 vers le haut
Q -> Mouvement Joueur 1 vers la gauche
S -> Mouvement Joueur 1 vers le bas 
D -> Mouvement Joueur 1 vers la droite
R -> Recommencer
T -> Baisser le volume
Y -> Augmenter le volume
P -> Pause
Numpad 0 -> Tirer/Rejoindre Joueur 2
Flèche Haut -> Mouvement Joueur 2 vers le haut
Flèche Gauche -> Mouvement Joueur 2 vers la gauche
Flèche Bas -> Mouvement Joueur 2 vers le bas 
Flèche Droite -> Mouvement Joueur 2 vers la droite
Echap -> Retour au menu / Quitter le logiciel

___Commande Debug___
0 -> Ouvrir la console de debug (taper help pour avoir les commandes) 

## Changelog

--- Ver : 1.3 [Graphic Update] ---

1 - Correction de bug :
Mauvais sprite utilisé par les vaisseaux verts pour le tir diagonale ba

2 - Changement :
Changement des sprites de tir des vaisseaux IA par une nouvelle version plus visible
La musique ne redémarre plus quand on relance le jeu avec la touche R
Apparence du curseur de la souris sur le menu
Nouvelle police pour l'affichage du score et de la vie
Fond animé sur le menu

3 - Ajout :
Compteur de vie afficher à coté de score
Changement du curseur et du bouton au survol de ce dernier
Possiblité de passer l'écran du logo avec la souris

4 - Suppression :
Curseur invisible sur l'écran de jeu

--- Ver 1.4 [Respawn Update] ---

1 - Correction de bug :
Aucun

2 - Changement :
Changement de la vitesse horizontal des étoiles et des planetes :
   -> petite étoile passe de -1 à -0.5
   -> grande étoile passe de -2 à -1
   -> planete passe de -3 à -2
Changement de la vitesse des ia de type 3 de -4 à -3
Refonte du systeme d'apparition des vaisseaux :
   -> le 1er vaisseau d'un type apparait après son temps de respawn
   -> lors de l'apparition d'un nouveau type de vaisseau le vaisseau du type precedent n'apparait pas
   -> il faut tuer 40 vaisseau (anciennement 30) de type 1 pour faire apparaitre le 1er type 2
   -> il faut tuer 24 vaisseau (anciennement 18) de type 2 pour faire apparaitre le 1er type 3
   -> il faut tuer 6 vaisseau (anciennement 5) de type 2 pour faire apparaitre un autre
   -> il faut tuer 4 vaisseau (anciennement 6) de type 3 pour faire apparaitre un autre
   -> création d'un timeline propre au spawn des vaisseaux (1,5 fois la durée de respawn)
Changement du comportement des boutons sur le menu pour éviter de lancer une partie en voulant passer l'écran des logos

3 - Ajout :
Gain d'une vie tout les 100 de score
Touche 9 pour ajouter 50 de score
Touche 8 pour faire apparaitre une ia type 3
Touche 7 pour faire apparaitre une ia type 2
Touche 6 pour faire apparaitre une ia type 1
Touche F12 pour détruire toutes les ia
Echap sur le menu quitte le jeu

4 - Suppression :
Aucun

--- Ver 1.5 [Progression Update] ---

1 - Correction de bug  :
Invulnérabilité infinie

2 - Changement :
Passage des touches debug sur les touches fonctions :
   -> F5 fait apparaitre une ia de type 1 (anciennement touche 6)
   -> F6 fait apparaitre une ia de type 2 (anciennement touche 7)
   -> F7 fait apparaitre une ia de type 3 (anciennement touche 8)
   -> F9 +1 vie (anciennement touche 0)
   -> F8 +50 score (anciennement touche 9)
Refonte du systeme de tir, chaque tir des joueurs est indépendant

3 - Ajout :
Invulnérabilité après un tir :
   -> Se déclenche après avoir subis un tir allié ou ennemie
   -> Rend invulnerable contre les tirs (allié ou ennemie)
   -> Si un vaisseau sors de l'écran une vie est perdu
   -> Une collision fait perdre une vie
   -> L'invulnérabilité s'applique au deux joueurs en coop
   -> La durée de l'invulnérabilité est de 80 steps
Clignotement pour indiquer l'invulnérabilité
Les vaisseaux peuvent lacher une vie en mourrant si les points ia sont un multiple de 50
Les vie bouge et font une boucle
Power-Up :
   -> Une chance sur 30 qu'un ennemie lache son power-up en mourrant
   -> Chaque type d'ia a un power-up différent : SpeedUp pour les rouges; FireUp pour les jaunes, et tir en diagonale pour les verts
   -> Les effets du power-up ne s'applique qu'au joueur qui les récupérent
   -> Le SpeedUp augmente la vitesse de 1, j'usqu'a un maximum de 16 (la vitesse de base est de 11)
   -> Le FireUp diminue le cd du tir de step j'usqu'a un minimum de 4 steps (le cd de base est de 10 steps)
   -> La vie est prioritaire sur les power-up

4 - Suppression
Aucun

--- Ver 1.6 [Optimisation Update] ---

1 - Correction de bug :
Aucun

2 - Changement :
Refonte du fonctionnement du systeme de tir des joueurs (aucune difference visible en jeu)
Refonte du fonctionnement du systeme de tir des ia (aucune difference visible en jeu)
Refonte du fonctionnement du systeme de mouvement des joueurs (aucune difference visible en jeu)
Refonte du fonctionnement des touches debug, et communes aux deux joueurs (aucune difference visible en jeu)

3 - Ajout :
Aucun

4 - Suppression :
Aucun

--- Ver 1.7 [Small Update] ---

1 - Correction de bug :
Bug deplacment fantome(sans que le joueur n'appuie sur une touche) des vaisseaux
Impossibilité de tirer quand on rammase un power up jaune

2 - Changement :
Couleur du fond qui est maintenant bleu foncé (anciennement noir) dans le jeu et le menu
Trajectoire du coeur modifé, plus ample et parcourant plus le fenetre

3 - Ajout :
Les power up avance vers le joueur, il sont detruit si il sortent de l'écran

4 - Suppresion
Aucun

--- Ver 1.8 [Recode Update] ---

Réecriture du code pour une meilleur intégration web
Préparation du jeu pour l'insertion du mode versus
Réorganisation des données pour un control plus centralisé et des changements plus facile
Ajout de variable pour différent comportement (vitesse de tir, de respawn, ...) pour permettre des modifications plus faciles sur ces données
Rerefonte des mouvements des joueurs
Ajout d'un mode debug et suppresion de l'ancien systeme
Toute ces modifications n'on aucun réel impact en jeu
Pause

Tout les tir touchant un joueur sons détruit meme si ce dernier est invulnerable
Ajout d'un mode tactile activable avec le boutton sur le menu
Rendu plus realiste de la vitesse en digonale des joueurs
Ajout possibilité d'interaction avec le serveur

Bug -> partie redemare pas apres echap quand mort + pas de tir

--- Ver 1.9 [Balancing Update] ---

Après que 800 IA ont spawn les vies n'apparaissent plus
Plus de spawn de power-up ou de vie lors de collision avec un ennemie
Suppression du gain de vie avec le score
Diminution de la frequence d'apparition des vies
Les ennenemies de type 2 (jaune) donnent maintenant 2 points (1 point precedement)
Changement splash screen
Les power-up sont bien reset
Baisse du volume de la musique par defaut
Gestion du volume de la musique
Prendre un degat fait perdre le tir en diagonale
Diminution du temps d'invulnerabilité (80 -> 50)
La vitesse des ia augmente au fur et a mesure de la partie (lors de chaque apparition d'une nouvelle ia de type 3, apres la 1er apparition)
Les ia peuvent augmenter de 9 fois leur vitesse
La vitesse maximum des joueurs est de 18 (anciennement 16)
L'amplitude de la trajectoire des vie a été un peu diminuée
Le joueur commence avec 3 vies (1 anciennement)
Debug commande get vitp1
Debug spawn planete
