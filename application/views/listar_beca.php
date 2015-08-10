<?php

	if(!isset($reg)){
		echo "la variable no existe";
		exit("Error que se yo");
	}
		
	echo "<br><center><table border=2>";
	echo "<tr><th>Descripcion</th><th>Fecha Publicacion</th><th>Fecha Alta</th><th>Url</th><th>Imagen</th></tr>";
	foreach ($reg->result() as $row) {

		echo "<tr><td>$row->descripcion</td><td>$row->fecha_publicacion</td><td>$row->fecha_alta</td><td>$row->url</td><td>";
		// if($row->url == "M"){
		// 	echo "Masculino";
		// }else{
		// 	echo "Femenino";
		// }

		echo "</td></tr></center>";

	}
	echo "</table>";
?>