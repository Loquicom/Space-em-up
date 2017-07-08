///void debug_processor(String commande)

commande = string_lower(argument0);

if(commande != ""){
    //Découpage de la chaine
    commande = split_str(commande, " ");
}
else{
    commande[0] = "Vide";
}

if(commande[0] == "spawn" || commande[0] == "sp"){
    //spawn object
    if(array_length_1d(commande) == 2){
        debug_spawn(commande[1]/*object*/);
    }
    //spawn object x y
    else if(array_length_1d(commande) == 4){
        debug_spawn_coord(commande[1]/*object*/, real(commande[2])/*x*/, real(commande[3])/*y*/);
    }
    else{
        show_message("Erreur argument");
    }
}
else if(commande[0] == "set" || commande[0] =="s"){
   //set var val
   if(array_length_1d(commande) == 3){
        debug_set(commande[1]/*variable change*/, real(commande[2])/*valeur*/);
    }
    else if(array_length_1d(commande) == 4){
        //set var get var
        if(commande[2] == "get"){
            debug_set_get(commande[1]/*variable change*/, commande[3]/*variable copier*/);
        }
        //set var pos val
        else{
            debug_set_tab(commande[1]/*variable change*/, real(commande[2])/*pos tableau*/, real(commande[3])/*valeur*/);
        }
    }
    else if(array_length_1d(commande) == 5){
        //set var get var pos
        if(commande[2] == "get"){
            debug_set_get_tab(commande[1]/*variable change*/, commande[3]/*variable copier*/, real(commande[4])/*pos tableau*/);
        }
        //set var pos get var
        if(commande[3] == "get"){
            debug_set_tab_get(commande[1]/*variable change*/, real(commande[2])/*pos tableau*/, commande[4]/*varaible copier*/);
        }
    }
    //set var pos get var pos
    else if(array_length_1d(commande) == 6){
        debug_set_tab_get_tab(commande[1]/*variable change*/, real(commande[2])/*pos tableau*/, commande[4]/*variable copier*/, real(commande[5])/*pos tableau*/);
    }
    else{
        show_message("Erreur argument");
    }    
}
else if(commande[0] == "get" || commande[0] == "g"){
   //get val
   if(array_length_1d(commande) == 2){
        show_message(string(debug_get(commande[1])));
   }
   //get val pos
   else if(array_length_1d(commande) == 3){
        show_message(string(debug_get_tab(commande[1], real(commande[2]))));
   }
   else{
        show_message("Erreur argument");
   }
}
else if(commande[0] == "kill" || commande[0] == "k"){
    //kill
    if(array_length_1d(commande) == 2){
        debug_kill(commande[1]);
    }
    //kill object TODO
    else if(array_length_1d(commande) == 1){
        debug_kill_ia();
    }
    else{
        show_message("Erreur argument");
    }
}
else if(commande[0] == "help" || commande[0] == "h"){
    if(array_length_1d(commande) == 1){
        show_message("spawn, set, get, kill, help <argument>");
    }
    else if(array_length_1d(commande) == 2){
        if(commande[1] == "spawn" || commande[1] == "sp"){
            debug_spawn("help");
        }
        else if(commande[1] == "set" || commande[1] == "s"){
            show_message("set <variable> [position_tableau] <valeur>");
        }
        else if(commande[1] == "get" || commande[1] == "g"){
            debug_get("help");
        }
        else if(commande[1] == "kill" || commande[1] == "k"){
            debug_kill("help");
        }
        else if(commande[1] == "help" || commande[1] == "h"){
            show_message("help [spawn, get, set, kill, help]");
        }
        else{
            show_message("Erreur argument");
        }
    }
    else{
        show_message("Erreur argument");
    }
}
else if(commande[0] == "Vide"){
    //Rien
}
else{
    show_message("Commande inconnue");
}

consoleDebug = false;
pause = false;
