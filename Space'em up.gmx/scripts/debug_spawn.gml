///void debug_spawn(String object)

object = argument0;

//Spawn IA1
if(object == "ia1" && lockSpawn == 0){
    //Vérouillage de la possibilite spawn
    lockSpawn = 1;
    typeIA = 1;
    instance_create(0, 0, obj_spawnSolo);
    typeIA = 0;
}
//Spawn IA2
else if(object == "ia2" && lockSpawn == 0){
    //Vérouillage de la possibilite spawn
    lockSpawn = 1;
    typeIA = 2;
    instance_create(0, 0, obj_spawnSolo);
    typeIA = 0;
}
//Spawn IA3
else if(object == "ia3" && lockSpawn == 0){
    //Vérouillage de la possibilite spawn
    lockSpawn = 1;
    typeIA = 3;
    instance_create(0, 0, obj_spawnSolo);
    typeIA = 0;
}
//Spawn vie
else if(object == "vie"){
    instance_create(tailleX, random_range(50, tailleY-50), obj_vie);
}
//Spawn speedUp
else if(object == "speedup"){
    instance_create(tailleX, random_range(50, tailleY-50), obj_speedUp);
}
//Spawn fireUp
else if(object == "fireup"){
    instance_create(tailleX, random_range(50, tailleY-50), obj_fireUp);
}
//Spawn tirDiag
else if(object == "tirdiag"){
    instance_create(tailleX, random_range(50, tailleY-50), obj_tirDiag);
}
else if(object == "help" || object == "h"){
    show_message("spawn <ia1, ia2, ia3, vie, speedUp, fireUp, tirDiag> [x] [y]");
}
else{
    show_message("Erreur argument");
}
