///void debug_kill(String object)

object = argument0;

//Kill IA1
if(object == "ia1"){
    with(obj_ia1){instance_destroy();}
}
//Kill IA2
else if(object == "ia2"){
    with(obj_ia2){instance_destroy();}
}
//Kill IA3
else if(object == "ia3"){
    with(obj_ia3){instance_destroy();}
}
//Kill vie
else if(object == "vie"){
    with(obj_vie){instance_destroy();}
}
//Kill speedUp
else if(object == "speedup"){
    with(obj_speedUp){instance_destroy();}
}
//Kill fireUp
else if(object == "fireup"){
    with(obj_fireUp){instance_destroy();}
}
//Kill tirDiag
else if(object == "tirdiag"){
    with(obj_tirDiag){instance_destroy();}
}
//Aide
else if(object == "help" || object == "h"){
    show_message("kill <ia1, ia2, ia3, vie, speedUp, fireUp, tirDiag>");
}
else{
    show_message("Erreur argument");
}
