///int debug_get(String variable)

varName = argument0;

if(varName == "taillex"){
    return tailleX;
}
else if(varName == "tailley"){
    return tailleY;
}
else if(varName == "modejeu"){
    return modeJeu;
}
else if(varName == "first"){
    return first;
}
else if(varName == "lockspawn"){
    return lockSpawn;
}
else if(varName == "tactile"){
    if(tactile){
        return 1;
    }
    else{
        return 0;
    }
}
else if(varName == "scoreplayer"){
    return  scorePlayer;
}
else if(varName == "scorep1"){
    return scoreP1;
}
else if(varName == "scorep2"){
    return scoreP2;
}
else if(varName == "powerup"){
    return powerUp;
}
else if(varName == "vitpu"){
    return vitPU;
}
else if(varName == "viebonus"){
    return vieBonus;
}
else if(varName == "spawnvie"){
    return spawnVie;
}
else if(varName == "spawnplanet"){
    return spawnPlanet;
}
else if(varName == "vie"){
    return vie;
}
else if(varName == "vittir"){
    return vitTir;
}
else if(varName == "invulnerable"){
    return invulnerable;
}
else if(varName == "viep1"){
    return vieP1
}
else if(varName == "invulnerablep1"){
    return invulnerableP1;
}
else if(varName == "vitp1"){
    return vitP1;
}
else if(varName == "firep1"){
    return fireP1;
}
else if(varName == "tirdiagp1"){
    return tirDiagP1;
}
else if(varName == "viep2"){
    return vieP2;
}
else if(varName == "invulnerablep2"){
    return invulnerableP2;
}
else if(varName == "vitp2"){
    return vitP2;
}
else if(varName == "firep2"){
    return fireP2;
}
else if(varName == "tirdiagp2"){
    return tirDiagP2;
}
else if(varName == "vittiria"){
    return vitTirIa;
}
else if(varName == "spawnia1"){
    return spawnIa1;
}
else if(varName == "spawnia2"){
    return spawnIa2;
}
else if(varName == "spawnia3"){
    return spawnIa3;
}
else if(varName == "time") {
    return current_time - gameTime;
}
else if(varName == "help" || varName == "h"){
    return "get <variable> [position_tableau]"
}
else{
    show_message("Erreur argument");
}
