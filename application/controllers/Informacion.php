<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Informacion extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->library("session");
			$this->load->helper("sesion");
		}

		//ESTAS FUNCIONES NO TIENEN NADA QUE VER CON LA FUNCIONALIDAD DEL SISTEMA O ACCIONES DE LOS ADMINS.	
		function Egresados(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("informacion_egresado");
			$this->load->view("footer");
			/*Aqui meter la informacion que va a ser mostrada a egresados en la pagina*/
		}

		function Empresas(){
			echo "<h1>Agregar informacion para las empresas</h1>";
			/*Aqui meter la informacion que va a ser mostrada a las Empresas en la pagina*/
		}
		function misionVision(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("mision_vision");
			$this->load->view("footer");
		}
		
	}
?>