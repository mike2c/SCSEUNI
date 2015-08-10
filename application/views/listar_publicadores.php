<?php

	if(!isset($reg)){
		echo "la variable no existe";
		exit("Error que se yo");
	}
	/*
	foreach ($reg->result() as $row) {
		echo "<label>Nombre</label><br>";
		echo "<input type='text' name='nombre' disabled value='$row->nombre'><br>";
		echo "<label>Apellido</label><br>";
		echo "<input type='text' name='apellido' value='$row->apellido'><br>";
	}
	*/
	echo "<table border=1>";
	echo "<tr><th>Nombre</th><th>Apellido</th><th>Genero</th></tr>";
	foreach ($reg->result() as $row) {

		echo "<tr><td>$row->nombre</td><td>$row->apellido</td><td>";
		if($row->sexo == "M"){
			echo "Masculino";
		}else{
			echo "Femenino";
		}

		echo "</td></tr>";

	}
	echo "</table>";
?>