<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
	if(!sesionIniciada()){
		
	}
	//Si al menos una sesion existe la funcion regresara true.
	function sesionIniciada(){
		return isset($_SESSION["egresado"]) || isset($_SESSION["empresa"]) || isset($_SESSION["administrador"]) || isset($_SESSION["publicador"]);
	}

	//Esta función retorna la sesión en manera de arreglo realizando previamente si existe la sesión.
	function getSesion(){
		if(isset($_SESSION["egresado"])){
			return $_SESSION["egresado"];
		}elseif(isset($_SESSION["empresa"])){
			 return $_SESSION["empresa"]; 
		}elseif(isset($_SESSION["administrador"])){
			 return $_SESSION["administrador"];
		}elseif(isset($_SESSION["publicador"])){
			 return $_SESSION["publicador"];
		}

		return null;
	}

	function getNombre(){
		$val = getSesion();
		return $val["nombre"];
	}

	function getUsuarioID(){
		$val = getSesion();
		return $val["usuario_id"];
	}

?>