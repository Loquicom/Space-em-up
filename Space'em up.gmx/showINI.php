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

var_dump($array);

$ligne = $array["info"]["nbLigne"];

$html = '<br><br>';

    $html .= <<<HTML
nbLigne => $ligne <br><br>
HTML;

$i=0;
foreach ($array["score"] as $value) {
    $html .= <<<HTML
score$i => $value <br>
HTML;
    $i++;
}

echo $html;