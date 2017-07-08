///boolean spawn_powerUp(int typeIA)
/**
    @param typeIA : le type de l'ia qui appelle le script
    Test si il fau faire apparaitre un powerup
**/

var res;
res = false

var rand;
rand = floor(random_range(1,powerUp));
if(rand == 1){
    if(argument0 == 1){
        if(instance_number(obj_player2) == 0 && vitP1 < 16){
            res = true
        }
        else if(instance_number(obj_player2) == 1 && (vitP1 < 16 || vitP2 < 16)){
            res = true;
        }
    }
    else if(argument0 == 2){
        if(instance_number(obj_player2) == 0 && fireP1 < 3){
            res = true
        }
        else if(instance_number(obj_player2) == 1 && (fireP1 < 3 || fireP2 < 3)){
            res = true;
        }
    }
    else if(argument0 == 3){
        if(instance_number(obj_player2) == 0 && tirDiagP1 < 1){
            res = true
        }
        else if(instance_number(obj_player2) == 1 && (tirDiagP1 < 1 || tirDiagP2 < 1)){
            res = true;
        }
    }
}
return res;
