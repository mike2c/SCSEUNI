<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Egresado extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->helper("url");
			$this->load->helper("form_helper");
	
		}

		function index(){
			echo "hola";
		}

		function registro(){
			$this->load->library("form_validation");

			if($this->form_validation->run()==FALSE){
				
				
			}else{

			}
			
		}

		function registrar(){
		
			$this->load->library("form_validation");
			$this->load->model("egresado_model");

			if($this->form_validation->run()==false){


			}
		
			$modelo = new Egresado_model();

			$data_persona["nombre"] = "miguel angel";
			$data_persona["apellido"] = "castillo cornejo";
			$data_persona["sexo"] = "M";
			$data_persona["fecha_nacimiento"] = "1992-03-09";

			$data_contacto["telefono"] = "27322264";
			$data_contacto["celular"] = "89021739";
			$data_contacto["direccion"] = "Antiguos molinos 2000 75 vrs al Oeste";
			$data_contacto["municipio_id"] = "1";

			$data_egresado["carnet"] = "2009-30761";
			$data_egresado["cedula"] = "161-090392-0001Q";
			$data_egresado["titulado"] = FALSE;
			$data_egresado["trabaja"] = FALSE;
			$data_egresado["carrera_id"] = 1;

			$data_usuario["correo"] = "mikedosce1992@gmail.com";
			$data_usuario["clave"] = "123";
			$data_usuario["activo"] = true;
			$modelo->insertarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto);
			#$this->load->view("mensaje_registrado",array("mensaje"=>"Registrado correctamente"));
		}

		function editar_informacion(){

		}


	}
?>	