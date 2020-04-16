///void global_variable()
//Création et attribution de la valeur de toutes les variables globales

/* --- Variable interaction --- */

//Pseudo du joueur : Non connecté si il n'est pas authentifié sur le site
globalvar pseudo;
pseudo = "Inconnue";

//Meilleur score de la partie ou du joueur si il est authentifié
globalvar scoreMax;
scoreMax = 0

//Meilleur score tactile de la partie ou du joueur si il est authentifié
globalvar scoreTactile;
scoreTactile = 0

/* --- Variable cmd --- */

//Taille de la fenetre de jeu
//tailleX - Width
//tailleY - Height
globalvar tailleX;
globalvar tailleY;
tailleX = 1024;
tailleY = 768;

//Indique le mode de jeu actuel
//0 - Valeur par default
//1 - Solo/Coop
//2 - Versus mode 1
globalvar modeJeu;
modeJeu = 0;

//Indique si le jeu viens d'être lancé ou non
//1 - Le jeu vient d'être lancé (default)
//0 - Le jeu est deja lancé
globalvar first;
first = 1;

//Variable pour verrouiller une action
//0 - Aucune action n'est verrouillées (default)
//1 - Une action est en cour les autres sont verrouillées
globalvar lockSpawn;
lockSpawn = 0;

//Indique si le mode tactile est activé
//false - Desactive (default)
//true - Active
globalvar tactile;
tactile = false;

//Indique si le debug est activé
//false - Desactive (default)
//true - Active
globalvar debug;
debug = true;

//Indique si la console debug est active
globalvar consoleDebug;
consoleDebug = false;

//Volume de la musiqe
globalvar music;
music = 0.5;

//Temps en jeu (en ms)
globalvar gameTime;
gameTime = 0;

/* --- Variable jeu --- */

//Score
globalvar scorePlayer;
globalvar scoreP1;
globalvar scoreP2;
scorePlayer = 0;
scoreP1 = 0;
scoreP2 = 0;

//Pause
//false - Desactive (default)
//true - Actif
globalvar pause;
pause = false;

//Chance qu'un vaisseau lache son powerup
globalvar powerUp;
powerUp = 21;

//Vitesse des powerUp
globalvar vitPU;
vitPU = 6;

//Vie bonus tout les vieBonus*100 de score
globalvar vieBonus;
vieBonus = -1; // Negatif pour ne pas avoir de vie bonues

//Nombre de point de vaisseaux (variable ia) pour faire apparaitre une vie
globalvar spawnVie;
spawnVie = 50

//Variable de calcul du décallage pour le mode tactile
globalvar decalX;
globalvar decalY;
decalX = 0;
decalY = 0;

//Le nombre d'étoile a l'écran
//[0] - min
//[1] - max
globalvar nbEtoile;
nbEtoile[0] = 10;
nbEtoile[1] = 19;

//Le ratio de grosses etoiles par rapport aux petites
//[0] - max (min = 1)
//[1] - x < [1] => grosse etoile
globalvar ratioEtoile;
ratioEtoile[0] = 6;
ratioEtoile[1] = 2;

//Chance d'avoir une planete
globalvar spawnPlanet;
spawnPlanet = 800;
globalvar valToSpawnPlanet;
valToSpawnPlanet = 8;

//Vitesse du décor
//[0] - bigStar
//[1] - smallStar
//[2] - planet
globalvar vitBackground;
vitBackground[0] = -1;
vitBackground[1] = -0.5;
vitBackground[2] = -2;

/* --- Variable Joueur --- */

//Indique quel joueur tir
globalvar tirPlayer;
tirPlayer = 1;

//Angle du tir à créer
globalvar angleTir;
angleTir = 0;

//Vie des joueurs en Solo/Coop
globalvar vie;
vie = 3;

//Vitesse des tirs des joueurs
globalvar vitTir;
vitTir = 18;

//Cd du tir selon l'amélioration de la vitesse de tir
globalvar cdTir;
cdTir[0] = 10;
cdTir[1] = 8;
cdTir[2] = 6;
cdTir[3] = 4;

//Temps de l'invulnerabilite
globalvar invulnerable;
invulnerable = 50;

/* --- Variable Joueur 1 --- */

//Vie du joueur 1
globalvar vieP1;
vieP1 = 2; 

//Indique si le joueur 1 est invulnerable au tir
//0 - Vulnerable (default)
//1 - Invulnerable
globalvar invulnerableP1;
invulnerableP1 = 0;

//Cd du tir
//0 - Peut tirer (default)
//1 - Ne peut pas tirer
globalvar cdP1;
cdP1 = 0;

//Vitesse du joueur
globalvar vitP1;
vitP1 = 11

//Nombre d'amelioration de la vitesse de tir
globalvar fireP1;
fireP1 = 0;

//Tir en diagonale
//0 - Ne peut pas tirer en diagonale (default)
//1 - Peut tirer en diagonale
globalvar tirDiagP1;
tirDiagP1 = 0;

/* --- Varaible Joueur 2 --- */

//Vie du joueur 2
globalvar vieP2;
vieP2 = 2;

//Indique si le joueur 2 est invulnerable au tir
//0 - Vulnerable (default)
//1 - Invulnerable
globalvar invulnerableP2;
invulnerableP2 = 0;

//Cd du tir
//0 - Peut tirer (default)
//1 - Ne peut pas tirer
globalvar cdP2;
cdP2 = 0;

//Vitesse du joueur
globalvar vitP2;
vitP2 = 11

//Nombre d'amelioration de la vitesse de tir
globalvar fireP2;
fireP2 = 0;

//Tir en diagonale
//0 - Ne peut pas tirer en diagonale (default)
//1 - Peut tirer en diagonale
globalvar tirDiagP2;
tirDiagP2 = 0;

/* --- Variable IA --- */

//Variable qui compte le nombre d'IA pour savoir quand les faire spawn
globalvar ia;
ia[1] = 0;
ia[2] = 0;
ia[3] = 0;

//Type d'IA a faire spawn
globalvar typeIA;
typeIA = 0;

//Angle du tir à créer pour les ia
globalvar angleTirIa;
angleTirIa = 180;

//Vitesse des tirs des ia
globalvar vitTirIa;
vitTirIa = 15;

//Vitesse de déplacement des IA
globalvar vitIA;
vitIA[1] = -5;
vitIA[2] = -4;
vitIA[3] = -3;

//Temps de spawn des IA
globalvar spawnIA;
spawnIA[1] = 30;
spawnIA[2] = 60;
spawnIA[3] = 90;

//Temps respawn des IA
globalvar respawnIA;
respawnIA[1] = 20; 
respawnIA[2] = 40;
respawnIA[3] = 60;

//Cd tir IA
globalvar cdTirIA;
cdTirIA[2] = 30;
cdTirIA[3] = 35;

//Score donné par les IA
globalvar scoreIA;
scoreIA[1] = 1;
scoreIA[2] = 2;
scoreIA[3] = 3;

//Variable pour indiquer quand faire spawn
globalvar spawnIa1;
globalvar spawnIa2;
globalvar spawnIa3;
spawnIa1 = 10;
spawnIa2 = 6;
spawnIa3 = 4;
