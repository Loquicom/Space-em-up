///debug_set_tab(String variable, int position, int valeur) --> pour les booleans 0=false && 1=true

varName = argument0;
varPos = argument1;
varVal = argument2;

if(varName == "vitbackground"){
    vitBackground[varPos] = varVal;
}
else if(varName == "ia"){
    ia[varPos] = varVal;
}
else if(varName == "vitia"){
    vitIA[varPos] = varVal;
}
else if(varName == "spawnia"){
    spawnIA[varPos] = varVal;
}
else if(varName == "respawnia"){
    respawnIA[varPos] = varVal;
}
else if(varName == "cdtiria"){
    cdTirIA[varPos] = varVal;
}
else if(varName == "scoreia"){
    scoreIA[varPos] = varVal;
}
else{
    show_message("Commande inconnue");
}
