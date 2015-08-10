<?php defined('BASEPATH') OR exit('No direct script access allowed');
	//DEFINIENDO LA CONSTANTE  IS_AJAX
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	
	class Egresado extends CI_Controller{

		
		function __construct(){
			parent::__construct();
			$this->load->helper("url");
			$this->load->helper("form_helper");
			$this->load->library(array("form_validation","session"));
			$this->load->helper("sesion");

			#DEFINIENDO LAS REGLAS
			$config = array(
				array('field'=>"nombre",'label'=>"Nombre",'rules'=>'required|max_lenght[45]',
					'errors'=>array('required'=>'El campo nombre no puede quedar vacio')),
				array('field'=>"apellido",'label'=>"Apellido",'rules'=>'required|max_lenght[45]',
					'errors'=>array('required'=>'El campo apellido no puede quedar vacio')),
				array('field'=>"carnet",'label'=>"Carnet",'rules'=>'required|max_lenght[10]',
					'errors'=>array('required'=>'El campo carnet no puede quedar vacio')),
				array('field'=>"genero",'label'=>"Genero",'rules'=>'required',
					'errors'=>array('required'=>'El campo sexo no puede quedar vacio')),
				array('field'=>"celular",'label'=>"Celular",'rules'=>'max_lenght[10]'),
				array('field'=>"telefono",'label'=>"Celular",'rules'=>'max_lenght[10]'),
				array('field'=>"correo",'label'=>"Correo",'rules'=>'max_lenght[45]'),
				array('field'=>"direccion",'label'=>"Dirección",'rules'=>'max_lenght[100]')

			);
			
		}

		function Autenticar(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("autenticar_egresado");
			$this->load->view("footer");
		}
		
		function index(){
	
		}

		function Listar(){
			$this->load->model("egresado_model","egresados");


			if(IS_AJAX){
			
				$data["egresado"] = $this->egresados->listarEgresados();
				$this->load->view("busqueda_egresado");
				$this->load->view("egresado/listar_egresados",$data);
			}else{
				$this->load_>view("cabecera");
				$this->load_>view("nav");
				$this->load->view("busqueda_egresado");
				$this->load_>view("lista_egresados");
				$this->load_>view("cabecera");
			}
			
			
		}

		function info(){
			phpinfo();
		}

		#FUNCION PARA REGISTRAR UN NUEVO EGRESADO
		function Registro(){
			$this->load->model("egresado_model","modelo");
			$this->load->library("Encrypter");
			$this->load->helper("pass_gen");

			$rules = array(
				array('field'=>"nombre",'label'=>"Nombre",'rules'=>'required'),
				array('field'=>"apellido",'label'=>"Apellido",'rules'=>'required'),
				array('field'=>"genero",'label'=>"Genero",'rules'=>'required'),
				);


			$this->form_validation->set_rules($rules);
			
			if($this->form_validation->run() == false){

				if(IS_AJAX){
					
					if(!$_POST){
						$this->load->view("registro_egresado");
					}else{
						echo validation_errors();
					}
					
				}else{
					echo validation_errors();
					$this->load->view("cabecera");
					$this->load->view("nav");
					$this->load->view("registro_egresado");
					$this->load->view("footer");	
				}
			}else{

				$data_persona["nombre"] = $this->input->post("nombre");
				$data_persona["apellido"] = $this->input->post("apellido");
				$data_persona["sexo"] = $this->input->post("genero");
				
				$originalDate = str_replace("/", "-",$this->input->post("fecha_nacimiento") );
				$newDate = date("Y-m-d", strtotime($originalDate));
				$data_persona["fecha_nacimiento"] = $newDate;
				
				$data_contacto["telefono"] = $this->input->post("telefono");
				$data_contacto["celular"] = $this->input->post("celular");
				$data_contacto["direccion"] = $this->input->post("direccion");
				$data_contacto["municipio_id"] = $this->input->post("municipio");;

				$data_egresado["carnet"] = $this->input->post("carnet");
				$data_egresado["cedula"] = $this->input->post("cedula");;
				$data_egresado["titulado"] = FALSE;
				$data_egresado["trabaja"] = FALSE;
				$data_egresado["carrera_id"] = $this->input->post("carrera");;

				if($data_persona["sexo"] == "M"){
					$data_usuario["imagen"]="male.jpeg";
				}else{
					$data_usuario["imagen"]="female.jpeg";
				}

				$data_usuario["correo"] = $this->input->post("correo");
				$data_usuario["clave"] =  Encrypter::encrypt(generarClave(20));
				$data_usuario["activo"] = FALSE;

				$this->modelo->insertarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto);
			
			}
		
		}
		
		
		function ActualizarPerfil(){
			$this->Actualizar();
			redirect("Perfil");
		}

		function Actualizar(){
		
			$this->load->model("egresado_model");
		
			$modelo = new Egresado_model();

			$data_persona["persona_id"] = $this->input->post("persona_id");
			$data_persona["nombre"] = $this->input->post("nombre");
			$data_persona["apellido"] = $this->input->post("apellido");
			$data_persona["sexo"] = $this->input->post("genero");

			$originalDate = str_replace("/", "-",$this->input->post("fecha_nacimiento") );
			$newDate = date("Y-m-d", strtotime($originalDate));
			$data_persona["fecha_nacimiento"] = $newDate;

			$data_contacto["contacto_id"]= $this->input->post("contacto_id");
			$data_contacto["telefono"] = $this->input->post("telefono");
			$data_contacto["celular"] = $this->input->post("celular");
			$data_contacto["direccion"] = $this->input->post("direccion");
			$data_contacto["municipio_id"] = $this->input->post("municipio");

			$data_egresado["egresado_id"]= $this->input->post("egresado_id");
			
			//Capturamos el valor del carnet solo si es administrador porque los egresados no pueden cambiar su numero de carnet
			if(esAdministrador()){
				$data_egresado = $this->input->post("carnet");
			}

			$data_egresado["cedula"] = $this->input->post("cedula");
			$data_egresado["titulado"] = $this->input->post("titulado");
			$data_egresado["trabaja"] = $this->input->post("trabaja");
			$data_egresado["carrera_id"] = $this->input->post("carrera");

			$data_usuario["usuario_id"]= $this->input->post("usuario_id");
			$data_usuario["correo"] = $this->input->post("correo");
			#$data_usuario["clave"] = $this->input->post("clave");
			#$data_usuario["activo"] = $this->input->post("activo");

			$modelo->actualizarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto);
			
		}

		function Busqueda(){
			$this->load->model("egresado_model","egresado");
				
			$data["egresado"] = $this->egresado->buscarEgresado($_POST);
			if(IS_AJAX){
				$this->load->view("egresado/listar_egresados",$data);
			}
		}

		function revelar(){
			$this->load->library("Encrypter");
		
			echo Encrypter::decrypt("'uvGFPyJTCixv9sklHZeMGHyw4QNjH9Us96sWQiq/Xko='");

		}
	}
?>