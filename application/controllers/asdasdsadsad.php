<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Sesion extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->library("session");
		}

		function iniciarSesion(){
			$this->load->view("cabecera");
			$this->load->view("login");
			$this->load->view("footer");
		}

		function cerrar_sesion(){

		}

		function crearSesion($nombre){
			$this->session->set_userdata($nombre,array("correo"=>"mikedosce1992@gmail.com","clave"=>"123","usuario_id"=>2));
		
			#echo $this->session->has_userdata($nombre);
			#print_r($_SESSION[$nombre]);
		}

	}
?>