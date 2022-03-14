<?php

$mysqli = new mysqli("sql.lorenzodelauretis.it","lorenzod23806","lore29322","lorenzod23806");

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}


function standardDeviation($arr)
    {
        $num_of_elements = count($arr);
          
        $variance = 0.0;
          
                // calculating mean using array_sum() method
        $average = array_sum($arr)/$num_of_elements;
          
        foreach($arr as $i)
        {
            // sum of squares of differences between 
                        // all numbers and means.
            $variance += pow(($i - $average), 2);
        }
          
        return (float)sqrt($variance/$num_of_elements);
    }


if(isset($_GET['calcola_AF'])) {
    $battiti = array();
    $rr = array();
    $ids = array();
    $nome = $_GET['nome'];
    $query = $mysqli->query("SELECT * FROM valori WHERE nome = '".$nome."' AND tipo = 'battito' ORDER BY id DESC LIMIT 5");
    $query1 = $mysqli->query("SELECT * FROM valori WHERE nome = '".$nome."' AND tipo = 'rr' ORDER BY id DESC LIMIT 5");

    $i = 0;
    while($result = $query->fetch_array(MYSQLI_ASSOC)) {
        $battiti[$i] = $result['valore']; 
        $i++;

        array_push($ids, $result['id']);
    }
    $i = 0;
    while($result = $query1->fetch_array(MYSQLI_ASSOC)) {
        $rr[$i] = $result['valore']; 
        $i++;

        array_push($ids, $result['id']);
    }

    $avgbpm = array_sum($battiti) / count($battiti);
    $stdrr = standardDeviation($rr);

    if($avgbpm > 100 && $stdrr > 120) {//AF detected
        $mysqli->query("INSERT INTO eventilungotermine(name, descrizione) VALUES('AF', 'An Atrial Fibrillation was discovered. The AVG BPM is ".$avgbpm." and the STD RR is ".$stdrr."')");
        $id = $mysqli->query("SELECT * FROM eventilungotermine ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);

        for($i = 0; $i <  count($ids); $i++) {
            $mysqli->query("INSERT INTO valori_eventilungotermine(id_valori, id_eventilungotermine) VALUES('".$ids[$i]."', '".$id['id']."')");
        }
    }
    else if($avgbpm > 90 && $stdrr > 120) {//Potential AF detected
        $mysqli->query("INSERT INTO eventilungotermine(name, descrizione) VALUES('Potential AF', 'A Potential Atrial Fibrillation was discovered. The AVG BPM is ".$avgbpm." and the STD RR is ".$stdrr."')");
        $id = $mysqli->query("SELECT * FROM eventilungotermine ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);

        for($i = 0; $i <  count($ids); $i++) {
            $mysqli->query("INSERT INTO valori_eventilungotermine(id_valori, id_eventilungotermine) VALUES('".$ids[$i]."', '".$id['id']."')");
        }
    }
}



if(isset($_GET['calcola_WPW'])) {
    $pr = array();
    $qrs = array();
    $ids = array();
    $nome = $_GET['nome'];
    $query = $mysqli->query("SELECT * FROM valori WHERE nome = '".$nome."' AND tipo = 'pr' ORDER BY id DESC LIMIT 5");
    $query1 = $mysqli->query("SELECT * FROM valori WHERE nome = '".$nome."' AND tipo = 'qrs' ORDER BY id DESC LIMIT 5");
    $i = 0;
    while($result = $query->fetch_array(MYSQLI_ASSOC)) {
        $pr[$i] = $result['valore']; 
        $i++;

        array_push($ids, $result['id']);
    }
    $i = 0;
    while($result = $query1->fetch_array(MYSQLI_ASSOC)) {
        $qrs[$i] = $result['valore']; 
        $i++;

        array_push($ids, $result['id']);
    }

    $avgpr = array_sum($pr) / count($pr);
    $avgqrs = array_sum($qrs) / count($qrs);
    $stdqrs = standardDeviation($qrs);

    if($avgpr < 120 && $avgqrs > 120 && $stdqrs > 20) {//WPW detected
        $mysqli->query("INSERT INTO eventilungotermine(name, descrizione) VALUES('WPW', 'A Wolff-Parkinson-White syndrome was discovered. The AVG PR is ".$avgpr.", the AVG QRS is ".$avgqrs." and the STD QRS is ".$stdqrs."')");
        $id = $mysqli->query("SELECT * FROM eventilungotermine ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);

        for($i = 0; $i <  count($ids); $i++) {
            $mysqli->query("INSERT INTO valori_eventilungotermine(id_valori, id_eventilungotermine) VALUES('".$ids[$i]."', '".$id['id']."')");
        }
    }
    else if($avgpr < 120 && $avgqrs > 120 && $stdqrs <= 20) {//Potential WPW detected
        $mysqli->query("INSERT INTO eventilungotermine(name, descrizione) VALUES('Potential WPW', 'A Potential Wolff-Parkinson-White syndrome was discovered. The AVG PR is ".$avgpr.", the AVG QRS is ".$avgqrs." and the STD QRS is ".$stdqrs."')");
        $id = $mysqli->query("SELECT * FROM eventilungotermine ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);

        for($i = 0; $i <  count($ids); $i++) {
            $mysqli->query("INSERT INTO valori_eventilungotermine(id_valori, id_eventilungotermine) VALUES('".$ids[$i]."', '".$id['id']."')");
        }
    }
}





?>