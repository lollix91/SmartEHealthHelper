<?php
/*
$mysqli = new mysqli("sql.lorenzodelauretis.it","lorenzod23806","lore29322","lorenzod23806");

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}
*/


/*
    $query = $mysqli->query("SELECT * FROM valori WHERE nome = '".$nome."' AND tipo = 'battito' ORDER BY id DESC LIMIT 5");
    $query1 = $mysqli->query("SELECT * FROM valori WHERE nome = '".$nome."' AND tipo = 'rr' ORDER BY id DESC LIMIT 5");

    $i = 0;
    while($result = $query->fetch_array(MYSQLI_ASSOC)) {
        $battiti[$i] = $result['valore']; 
        $i++;

        array_push($ids, $result['id']);
    }
  
*/


?>


<html lang="en-us">

<head>
  <meta charset="utf-8">
  <title>Psoriasis Detection</title>
</head>

<body>

  <p>Source image: </p>
  <img id="srcImage" src="images_mano/vit.jpg">
<br>
  <p>Processed image, phase 1: </p>
  <img id="processedImage">
  
  <p>Processed image, phase 2:</p>
  <img id="processedImage1">

<p>Clusters found:</p>
<div id="textresult"></div>

<p>N. of clusters found:</p>
<div id="nclusters"></div>



  <script type='module'>

console.stdlog = console.log.bind(console);
console.logs = [];
console.log = function(){
    console.logs.push(Array.from(arguments));
    console.stdlog.apply(console, arguments);
}
	
    import * as Magick from 'http://localhost/lorenzodelauretis/tesi/magickApi.js';
    //import * as Magick from 'http://www.lorenzodelauretis.it/tesi/magickApi.js';


	
    let processedImage = document.getElementById('processedImage');

    let DoMagickCall = async function () {
      let fetchedSourceImage = await fetch("images_mano/vit.jpg");
      let arrayBuffer = await fetchedSourceImage.arrayBuffer();
      let sourceBytes = new Uint8Array(arrayBuffer);

      const files = [{ 'name': 'srcFile.png', 'content': sourceBytes }];

	  const command = ["convert", "srcFile.png", "-fuzz", "3%", "-fill", "black", "+opaque", "#d28678", "-fill", "white", "+opaque", "black", "out.png"];
      let processedFiles = await Magick.Call(files, command);
	  
	  let firstOutputImage = processedFiles[0]
      processedImage.src = URL.createObjectURL(firstOutputImage['blob'])

      let fetchedSourceImage1 = await fetch(processedImage.src);
      let arrayBuffer1 = await fetchedSourceImage1.arrayBuffer();
      let sourceBytes1 = new Uint8Array(arrayBuffer1);
	  const files1 = [{ 'name': 'srcFile1.png', 'content': sourceBytes1 }];
	  const command1 = ["convert", "srcFile1.png", "-define", "connected-components:verbose=true", "-define", "connected-components:area-threshold=10", "-define", "connected-components:mean-color=true", "-connected-components", "8", "out1.png"];
      let processedFiles1 = await Magick.Call(files1, command1);

      let firstOutputImage1 = processedFiles1[0]
      processedImage1.src = URL.createObjectURL(firstOutputImage1['blob'])
    };
    DoMagickCall();
  </script>
  
  <script type="text/javascript">
	
elementToObserve = document.getElementById('textresult');

observer = new MutationObserver(function(mutationsList, observer) {
    var content = mutationsList[0].target.innerHTML;
	var count = (content.match(/gray[(]255[)]/g) || []).length;
	document.getElementById("nclusters").innerHTML=count;
	
	
	
});


observer.observe(elementToObserve, {characterData: false, childList: true, attributes: false});

  </script>
  
  
</body>

</html>