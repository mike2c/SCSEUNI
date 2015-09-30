<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');

	class Publicador extends CI_Controller{

		function __construct(){
			parent::__construct();
		}

		function Index(){
			$this->load->view("cabecera");
			$this->load->view("registro_publicador");
		}

		function Registro(){

			$this->load->library("form_validation");
			
			$rules = array();
			array_push($rules,array("field"=>"nombre","label"=>"Nombre","rules"=>"required"));
			$this->form_validation->set_rules($rules);
			/*AQUIIII*/
			/*Terminar de valiadar*/

			if(!IS_AJAX){
				if(!$this->validarCampos()){
					echo validation_errors();
					$this->load->view("cabecera");
					$this->load->view("nav");
					$this->load->view("publicador/registro_publicador");
					$this->load->view("footer");
				}else{
					$this->Registrar();
				}
			}else{
				if(!$_POST){
					$this->load->view("publicador/registro_publicador");
				}else{
					if(!$this->validarCampos()){
						echo validation_errors();
					}else{
						$this->Registrar();
					}
				}
			}
		
		}

		private function Registrar(){
			//LOADS
			$this->load->library("Encrypter");
			$this->load->model("Publicador_model","publicador");

			//CAPTURANDO LOS DATOS
			$data_persona["nombre"] = $this->input->post("nombre");
			$data_persona["apellido"] = $this->input->post("apellido");
			$data_persona["sexo"] = $this->input->post("genero");
			
			$originalDate = str_replace("/", "-",$this->input->post("fecha_nacimiento") );
			$newDate = date("Y-m-d", strtotime($originalDate));
			$data_persona["fecha_nacimiento"] = $newDate;
			
			if($data_persona["sexo"] == "M"){
				$data_usuario["imagen"]="male.jpeg";
			}else{
				$data_usuario["imagen"]="female.jpeg";
			}

			$data_usuario["correo"] = $this->input->post("correo");
			$data_usuario["clave"] = Encrypter::encrypt($this->input->post("clave"));
			$data_usuario["activo"] = TRUE;

			$data_publicador["cargo_id"] = $this->input->post("cargo");

			$this->publicador->insertar($data_persona,$data_usuario,$data_publicador);
		
		}

		function Listar(){

			$this->load->model("publicador_model","modelo");
			$data["publicadores"] = $this->modelo->listar();
			
			if(IS_AJAX){
				$this->load->view("publicador/busqueda_publicador",$data);
				$this->load->view("publicador/listar_publicadores",$data);
			}else{
				$this->load->view("cabecera",$data);
				$this->load->view("nav",$data);
				$this->load->view("publicador/busqueda_publicador",$data);
				$this->load->view("publicador/listar_publicadores",$data);
				$this->load->view("footer",$data);
			}
		}

		function Busqueda(){

			if($_POST){
				$this->load->model("publicador_model","modelo");
				$data["publicadores"] = $this->modelo->buscarPublicador($_POST);

				if(IS_AJAX){
					$this->load->view("publicador/listar_publicadores",$data);
				}else{
					$this->load->view("publicador/busqueda_publicador");
					$this->load->view("publicador/listar_publicadores",$data);
				}
			}
		}

		function ActualizarPerfil(){

			$this->Actualizar();
			redirect("Perfil");
		}

		function Actualizar(){

			$this->load->library("Encrypter");
			$this->load->model("Publicador_model","publicador");

			$data_persona["persona_id"] = $this->input->post("persona_id");
			$data_persona["nombre"] = $this->input->post("nombre");
			$data_persona["apellido"] = $this->input->post("apellido");
			$data_persona["sexo"] = $this->input->post("genero");
			
			$originalDate = str_replace("/", "-",$this->input->post("fecha_nacimiento") );
			$newDate = date("Y-m-d", strtotime($originalDate));
			$data_persona["fecha_nacimiento"] = $newDate;
			
			$data_usuario["usuario_id"] = $this->input->post("usuario_id");
			$data_usuario["correo"] = $this->input->post("correo");

			$data_publicador["publicador_id"] = $this->input->post("publicador_id");
			$data_publicador["cargo_id"] = $this->input->post("cargo");
			
			if($data_publicador["cargo_id"] == ""){
				return;
			}

			$this->publicador->actualizar($data_usuario,$data_persona,$data_publicador);

		}

		function Eliminar($id_publicador){

		}
		
		function validarCampos(){
				$this->form_validation->set_rules("nombre","Nombre","trim|required|max_lenght[45]");
				$this->form_validation->set_rules("apellido","Apellido","trim|required|max_lenght[45]");
				$this->form_validation->set_rules("nombre","Genero","trim|required|max_lenght[1]");
				$this->form_validation->set_rules("cargo_id","Cargo","trim|required|max_lenght[1]");
				
				if($this->form_validation->run()==false){
					return FALSE;
				}else{
					return TRUE;
				}
		}
	}

	
?>