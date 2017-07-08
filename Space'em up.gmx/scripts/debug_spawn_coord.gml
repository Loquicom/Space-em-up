///void debug_spawn_coord(String object, int posX, int posY)

object = argument0;
x = real(argument1);
y = real(argument2);

//Spawn IA1
if(object == "ia1"){
    instance_create(x, y, obj_ia1);
}
//Spawn IA2
else if(object == "ia2"){
    instance_create(x, y, obj_ia2);
}
//Spawn IA3
else if(object == "ia3"){
    instance_create(x, y, obj_ia3);
}
//Spawn vie
else if(object == "vie"){
    instance_create(x, y, obj_vie);
}
//Spawn speedUp
else if(object == "speedup"){
    instance_create(x, y, obj_speedUp);
}
//Spawn fireUp
else if(object == "fireup"){
    instance_create(x, y, obj_fireUp);
}
//Spawn tirDiag
else if(object == "tirdiag"){
    instance_create(x, y, obj_tirDiag);
}
else{
    show_message("Erreur argument");
}
