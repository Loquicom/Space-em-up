///boolean spawn_vie()
/**
    Fait apparaitre une vie si les points d'ia (les varaibles ia) sont
    modulo de la variable spawnVie créée dans le cmd du solo 
**/

var pointIa;
pointIa = ia[1] + ia[2] + ia[3];
pointIa += instance_number(obj_ia1)*spawnIa1;
pointIa += instance_number(obj_ia2)*spawnIa2;
pointIa += instance_number(obj_ia3)*spawnIa3;
if(pointIa%spawnVie == 0){
    return true;
}
else{
    return false;
}

