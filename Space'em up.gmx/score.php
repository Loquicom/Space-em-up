<?php

$fichier="score.ini";
$array=array();
if(file_exists($fichier) && $fichier_lecture=file($fichier))
   foreach($fichier_lecture as $ligne)
   {
     if(preg_match("#^\[(.*)\]\s+$#",$ligne,$matches))
     {
        $groupe=$matches[1];
        $array[$groupe]=array();
     }
     elseif($ligne[0]!=';')
     {
        list($item,$valeur)=explode("=",$ligne,2);
        if(!isset($valeur)) // S'il n'y a pas de valeur
             $valeur=''; // On donne une chaîne vide
        $array[$groupe][trim($item)]=trim($valeur);
     }
   }
else
echo "Le fichier est introuvable ou incompatible<br />";
// Et voilà, $array contient le fichier membres.ini sous la forme d'un array à 2 niveaux.

unlink($fichier);

$nbLigne = (int) $array["info"]["nbLigne"]+1;

$ini = <<<INI
[info]
	nbLigne=$nbLigne
[score]
	
INI;

/*
$i=0;
foreach ($array as $groupe) {
	foreach ($groupe as $valeur) {
			$ini .= <<<INI
	score$i = $valeur
	
INI;
			$i++;
	}
}
*/

$i=0;
for(; $i < $nbLigne-1; $i++){
	$ini .= <<<INI
score$i=$valeur
	
INI;
}

$score = $_GET['score'];

$ini .= <<<INI
score$i=$score
INI;

var_dump($ini);

if(file_put_contents($fichier, $ini) === FALSE)
{
    echo "Echec de l'écriture.";
}