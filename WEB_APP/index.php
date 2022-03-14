<?php

$mysqli = new mysqli("sql.lorenzodelauretis.it","lorenzod23806","lore29322","lorenzod23806");

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}



function mappaValori($nomevalore, $valore, $mysqli) {
	
	$val = $mysqli->query("SELECT * FROM range_valori WHERE nome='".$nomevalore."' AND range_iniziale <= '".$valore."' AND range_finale >= '".$valore."' ORDER BY id ASC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
	return $val['id'];
	
	
}







if(isset($_GET['nome']))
	$nome = $_GET['nome'];
else
	$nome="Anonimo";

if(isset($_GET['saturazione']))
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$nome."', 'saturazione', '".$_GET['saturazione']."')");

if(isset($_GET['battito'])) {
	$val = mappaValori("battito", $_GET['battito'], $mysqli);
	$mysqli->query("INSERT INTO valori(nome, tipo, valore, anomalia) VALUES('".$nome."', 'battito', '".$_GET['battito']."', '".$val."')");
}

if(isset($_GET['presminima']))
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$nome."', 'presminima', '".$_GET['presminima']."')");

if(isset($_GET['presmassima']))
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$nome."', 'presmassima', '".$_GET['presmassima']."')");

if(isset($_GET['temperatura']))
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$nome."', 'temperatura', '".$_GET['temperatura']."')");

if(isset($_GET['peso']))
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$nome."', 'peso', '".$_GET['peso']."')");

if(isset($_GET['altezza']))
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$nome."', 'altezza', '".$_GET['altezza']."')");

if(isset($_GET['patologia']))
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$nome."', 'patologia', '".$_GET['patologia']."')");

if(isset($_GET['cancellapatologia']))
	$mysqli->query("DELETE FROM valori WHERE nome='".$nome."' AND tipo='patologia'");

if(isset($_GET['stato']))
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$nome."', 'stato', '".$_GET['stato']."')");

if(isset($_GET['cancellastato']))
	$mysqli->query("DELETE FROM valori WHERE nome='".$nome."' AND tipo='stato'");

if(isset($_GET['sensazione']))
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$nome."', 'sensazione', '".$_GET['sensazione']."')");

if(isset($_GET['cancellasensazione']))
	$mysqli->query("DELETE FROM valori WHERE nome='".$nome."' AND tipo='sensazione'");

if(isset($_GET['remindermedicina']))
	$mysqli->query("INSERT INTO remindermedicina(nome, medicina, quantita, message) VALUES('".$nome."', '".htmlspecialchars($_GET['nomemedicina'])."', '".htmlspecialchars($_GET['quantita'])."', '".htmlspecialchars($_GET['message'])."')");

if(isset($_GET['remindermisura']))
	$mysqli->query("INSERT INTO remindermisura(nome, misura, message) VALUES('".$nome."', '".htmlspecialchars($_GET['remindermisura'])."', '".htmlspecialchars($_GET['message'])."')");

if(isset($_GET['feed']))
	$mysqli->query("INSERT INTO feedback(nome, tipo, message) VALUES('".$nome."', '".htmlspecialchars($_GET['feed'])."', '".htmlspecialchars($_GET['message'])."')");

if(isset($_GET['token']))
	$mysqli->query("INSERT INTO tokennotifiche(nome, token) VALUES('".$nome."', '".$_GET['token']."')");

if(isset($_GET['eta']))
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$nome."', 'eta', '".$_GET['eta']."')");

if(isset($_GET['qt'])) {
	$val = mappaValori("qt", $_GET['qt'], $mysqli);
	$mysqli->query("INSERT INTO valori(nome, tipo, valore, anomalia) VALUES('".$nome."', 'qt', '".$_GET['qt']."', '".$val."')");
}

if(isset($_GET['qtc'])) {
	$val = mappaValori("qtc", $_GET['qtc'], $mysqli);
	$mysqli->query("INSERT INTO valori(nome, tipo, valore, anomalia) VALUES('".$nome."', 'qtc', '".$_GET['qtc']."', '".$val."')");
}

if(isset($_GET['rr'])) {
	$val = mappaValori("rr", $_GET['rr'], $mysqli);
	$mysqli->query("INSERT INTO valori(nome, tipo, valore, anomalia) VALUES('".$nome."', 'rr', '".$_GET['rr']."', '".$val."')");
}

if(isset($_GET['qrs'])) {
	$val = mappaValori("qrs", $_GET['qrs'], $mysqli);
	$mysqli->query("INSERT INTO valori(nome, tipo, valore, anomalia) VALUES('".$nome."', 'qrs', '".$_GET['qrs']."', '".$val."')");
}

if(isset($_GET['pr'])) {
	$val = mappaValori("pr", $_GET['pr'], $mysqli);
	$mysqli->query("INSERT INTO valori(nome, tipo, valore, anomalia) VALUES('".$nome."', 'pr', '".$_GET['pr']."', '".$val."')");
}



//ato caricando un immagine
if(isset($_POST['nome'])){
	$info = pathinfo($_FILES['image']['name']);
	$ext = $info['extension']; // get the extension of the file
	$newname = rand(0, 99999999999).".".$ext; 

	$target = 'images/'.$newname;
	move_uploaded_file( $_FILES['image']['tmp_name'], $target);
	
	$mysqli->query("INSERT INTO valori(nome, tipo, valore) VALUES('".$_POST['nome']."', '".$_POST['tipo']."', '".$newname."')");

	
}




//RESTITUISCO LA MEDIA DEGLI ULTIMI 50 VALORI

if(isset($_GET['nome'])) {
	$nome = $_GET['nome'];
	
	if(isset($_GET['get_saturazione'])) {
		$val = $mysqli->query("SELECT AVG(valore) as valmed FROM (SELECT valore FROM valori WHERE nome='".$nome."' AND tipo='saturazione' ORDER BY id DESC LIMIT 50) sub")->fetch_array(MYSQLI_ASSOC);
		echo($val['valmed']);
	}

	if(isset($_GET['get_battito'])) {
		$val = $mysqli->query("SELECT AVG(valore) as valmed FROM (SELECT valore FROM valori WHERE nome='".$nome."' AND tipo='battito' ORDER BY id DESC LIMIT 50) sub")->fetch_array(MYSQLI_ASSOC);
		echo($val['valmed']);
	}

	if(isset($_GET['get_presminima'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='presminima' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}

	if(isset($_GET['get_presmassima'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='presmassima' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}

	if(isset($_GET['get_temperatura'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='temperatura' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}

	if(isset($_GET['get_peso'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='peso' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}

	if(isset($_GET['get_altezza'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='altezza' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}
	
	if(isset($_GET['get_eta'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='eta' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}	

	if(isset($_GET['get_stato'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='stato' ORDER BY id DESC");
		while($row=$val->fetch_array(MYSQLI_ASSOC)) {
			echo($row["valore"].";");	
		}
	}
	
	if(isset($_GET['get_sensazione'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='sensazione' ORDER BY id DESC");
		while($row=$val->fetch_array(MYSQLI_ASSOC)) {
			echo($row["valore"].";");	
		}
	}
	
	if(isset($_GET['get_patologia'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='patologia' ORDER BY id DESC");
		while($row=$val->fetch_array(MYSQLI_ASSOC)) {
			echo($row["valore"].";");	
		}
	}

	if(isset($_GET['get_fotoviso'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='fotoviso' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo("http://www.lorenzodelauretis.it/tesi/images/".$val['valore']);
	}

	if(isset($_GET['get_fotomano'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='fotomano' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo("http://www.lorenzodelauretis.it/tesi/images/".$val['valore']);
	}
	
	
	if(isset($_GET['get_terapia'])) {
		$arr=array();
		$i=0;
		$val = $mysqli->query("SELECT * FROM terapie WHERE nome='".$nome."' ORDER BY id DESC");
		while($row=$val->fetch_array(MYSQLI_ASSOC)) {
			$arr[$i]['medicina']=$row['medicina'];
			$arr[$i]['quantita']=$row['quantita'];
			$arr[$i]['orario']=$row['orario'];
			$i++;
		}
		echo(json_encode($arr));
	}
	
	if(isset($_GET['get_qt'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='qt' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}
	
	if(isset($_GET['get_qtc'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='qtc' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}
	
	if(isset($_GET['get_rr'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='rr' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}
	
	if(isset($_GET['get_qrs'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='qrs' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}
	
	if(isset($_GET['get_pr'])) {
		$val = $mysqli->query("SELECT * FROM valori WHERE nome='".$nome."' AND tipo='pr' ORDER BY id DESC LIMIT 1")->fetch_array(MYSQLI_ASSOC);
		echo($val['valore']);
	}
		

}

?>