///void perte_vie(int Joueur) 1->P1 2->P2

if(modeJeu == 1){
    vie--;
    if (argument0 == 1 && tirDiagP1 == 1) {
        tirDiagP1 = 0;
    } else if (argument0 == 2 && tirDiagP2 == 1) {
        tirDiagP2 = 0;
    }
}
else if(modeJeu == 2){
    if(argument0 == 1){
        vieP1--;
        if (tirDiagP1 == 1) {
            tirDiagP1 = 0
        }
    }
    else if(argument0 == 2){
        vieP2--;
        if (tirDiagP2 == 1) {
            tirDiagP2 = 0
        }
    }
}
