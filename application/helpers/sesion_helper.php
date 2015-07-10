<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

	//Si al menos una sesion existe la funcion regresara true.
	function sesionIniciada(){
		return isset($_SESSION["egresado"]) || isset($_SESSION["empresa"]) || isset($_SESSION["administrador"]) || isset($_SESSION["publicador"]);
	}

	//Esta función retorna la sesión en manera de arreglo realizando previamente si existe la sesión.
	function getSesion(){
		if(isset($_SESSION["egresado"])){
			return $_SESSION["egresado"];
		}elseif($_SESSION["empresa"]){
			 return $_SESSION["empresa"];
		}elseif($_SESSION["administrador"]){
			 return $_SESSION["administrador"];
		}elseif( $_SESSION["publicador"]){
			 return $_SESSION["publicador"];
		}

		return null;
	}

	function esEgresado(){
		if(isset($_SESSION["egresado"])){
			return true;
		}
		return false;
	}

	function esEmpresa(){
		if(isset($_SESSION["empresa"])){
			return true;
		}
		return false;
	}

	function esPublicador(){
		if(isset($_SESSION["publicador"])){
			return true;
		}
		return false;
	}

	function esAdministrador(){
		if(isset($_SESSION["adminsitrador"])){
			return true;
		}
		return false;
	}
	
	function getNombre(){
		$val = getSesion();
		return $val["nombre"];
	}
	
	function getNombreCompleto(){
		$val = getSesion();
		return $val["nombre"]. " ". $val["apellido"];
	}

	function getUsuarioId(){
		$val = getSesion();
		return $val["usuario_id"];
	}

	function getCorreo(){
		$val = getSesion();
		return $val["correo"];
	}
	
	function is_session_started(){

	    if ( php_sapi_name() !== 'cli' ) {
	        if ( version_compare(phpversion(), '5.4.0', '>=') ) {
	            return session_status() === PHP_SESSION_ACTIVE ? TRUE : FALSE;
	        } else {
	            return session_id() === '' ? FALSE : TRUE;
	        }
	    }
	    return FALSE;
	}
?>