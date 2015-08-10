<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	function escaparImagen($nombre){
		$data = null;

		if (is_uploaded_file($_FILES["$nombre"]["tmp_name"])){
		    # verificamos el formato de la imagen
		    if($_FILES["$nombre"]["type"]=="image/jpeg" || $_FILES["$nombre"]["type"]=="image/jpg" || $_FILES["$nombre"]["type"]=="image/gif" || $_FILES["$nombre"]["type"]=="image/bmp" || $_FILES["$nombre"]["type"]=="image/png"){
		        # Cogemos la anchura y altura de la imagen 
		        $info=getimagesize($_FILES["$nombre"]["tmp_name"]);
		        //echo "<BR>".$info[0]; //anchura
		        //echo "<BR>".$info[1]; //altura
		        //echo "<BR>".$info[2]; //1-GIF, 2-JPG, 3-PNG
		        //echo "<BR>".$info[3]; //cadena de texto para el tag <img
		 
		        # Escapa caracteres especiales
		        $data["imagen"]= mysql_escape_string(file_get_contents($_FILES["$nombre"]["tmp_name"]));
		 		$data["tipo"]= $_FILES["$nombre"]["type"];
		 		return $data;
		  	}else{
			 	echo "<div class='error'>Error: El formato de archivo tiene que ser JPG, GIF, BMP o PNG.</div>";
			}

		}
		return null;
	}

	function subirImagen(){
		
	}

	function redimensionarImagen(){
		
	}