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

		#FUNCION PARA REGISTRAR UN NUEVO EGRESADO
		function registrar_egresado(){
			$this->load->library("form_validation");

			#DEFINIENDO LAS REGLAS PARA EL FORMULARIO
			$config = array(
				array('field'=>"nombre",'label'=>"Nombre",'rules'=>'required',
					'errors'=>array('required'=>'El campo nombre no puede quedar vacio'))
			);

			$this->form_validation->set_rules($config);
			
			if($this->form_validation->run()==FALSE){
				$this->load->view("top");
				$this->load->view("registrar_egresado");
				$this->load->view("bottom");
			}else{
				
				
				if($this->input->post("titulado") == true){
					echo "Marcado";
				}
			}
			
		}

		function editar_informacion(){
		
			$this->load->model("egresado_model");
		
			$modelo = new Egresado_model();

			$data_persona["persona_id"] = 9;
			$data_persona["nombre"] = "miguel angel";
			$data_persona["apellido"] = "castillo cornejo";
			$data_persona["sexo"] = "M";
			$data_persona["fecha_nacimiento"] = "1992-03-09";

			$data_contacto["contacto_id"]=9;
			$data_contacto["telefono"] = "27322264";
			$data_contacto["celular"] = "84944968";
			$data_contacto["direccion"] = "Antiguos molinos 2000 75 vrs al Oeste";
			$data_contacto["municipio_id"] = "1";

			$data_egresado["egresado_id"]=9;
			$data_egresado["carnet"] = "2009-30761";
			$data_egresado["cedula"] = "161-090392-0001Q";
			$data_egresado["titulado"] = FALSE;
			$data_egresado["trabaja"] = TRUE;
			$data_egresado["carrera_id"] = 1;

			$data_usuario["usuario_id"]=9;
			$data_usuario["correo"] = "mikedosce1992@yahoo.com";
			$data_usuario["clave"] = "123";
			$data_usuario["activo"] = true;

			$modelo->actualizarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto);
			
		}

		function lista(){
			
		}
	}
?>	