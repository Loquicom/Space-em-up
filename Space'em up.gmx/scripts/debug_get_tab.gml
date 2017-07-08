///int debug_get_tab(String variable, int pos)

varName = argument0;
varPos = argument1;

if(varName == "vitbackground"){
    return vitBackground[varPos];
}
else if(varName == "ia"){
    return ia[varPos];
}
else if(varName == "vitia"){
    return vitIA[varPos];
}
else if(varName == "spawnia"){
    return spawnIA[varPos];
}
else if(varName == "respawnia"){
    return respawnIA[varPos];
}
else if(varName == "cdtiria"){
    return cdTirIA[varPos];
}
else if(varName == "scoreia"){
    return scoreIA[varPos];
}
else{
    show_message("Commande inconnue");
}
