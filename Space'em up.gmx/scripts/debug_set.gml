///void debug_set(String variable, int valeur) --> pour les booleans 0=false && 1=true

varName = argument0;
varVal = argument1;

if(varName == "taillex"){
    tailleX = real(varVal);
}
else if(varName == "tailley"){
    tailleY = real(varVal);
}
else if(varName == "modejeu"){
    modeJeu = real(varVal);
}
else if(varName == "first"){
    first = real(varVal);
}
else if(varName == "lockspawn"){
    lockspawn = real(varVal);
}
else if(varName == "tactile"){
    if(real(varVal) == 1){
        tactile = true;
    }
    else if(real(varVal) == 0){
        tactile = false;
    }
}
else if(varName == "scoreplayer"){
    if(modeJeu == 1){
        scoreP1 = real(varVal);
    }
    else{
        scorePlayer = real(varVal);
    }
}
else if(varName == "scorep1"){
    scoreP1 = real(varVal);
}
else if(varName == "scorep2"){
    scoreP2 = real(varVal);
}
else if(varName == "powerup"){
    powerUp = real(varVal);
}
else if(varName == "vitpu"){
    vitPU = real(varVal);
}
else if(varName == "viebonus"){
    vieBonus = real(varVal);
}
else if(varName == "spawnvie"){
    spawnVie = real(varVal);
}
else if(varName == "spawnplanet"){
    spawnPlanet = real(varVal);
}
else if(varName == "vie"){
    vie = real(varVal);
}
else if(varName == "vittir"){
    vitTir = real(varVal);
}
else if(varName == "invulnerable"){
    invulnerable = real(varVal);
}
else if(varName == "viep1"){
    vieP1 = real(varVal);
}
else if(varName == "invulnerablep1"){
    invulnerableP1 = real(varVal);
}
else if(varName == "vitp1"){
    vitP1 = real(varVal);
}
else if(varName == "firep1"){
    fireP1 = real(varVal);
}
else if(varName == "tirdiagp1"){
    tirDiagP1 = real(varVal);
}
else if(varName == "viep2"){
    vieP2 = real(varVal);
}
else if(varName == "invulnerablep2"){
    invulnerableP2 = real(varVal);
}
else if(varName == "vitp2"){
    vitP2 = real(varVal);
}
else if(varName == "firep2"){
    fireP2 = real(varVal);
}
else if(varName == "tirdiagp2"){
    tirDiagP2 = real(varVal);
}
else if(varName == "vittiria"){
    vitTirIa = real(varVal);
}
else if(varName == "spawnia1"){
    spawnIa1 = real(varVal);
}
else if(varName == "spawnia2"){
    spawnIa2 = real(varVal);
}
else if(varName == "spawnia3"){
    spawnIa3 = real(varVal);
}
else{
    show_message("Erreur argument");
}
