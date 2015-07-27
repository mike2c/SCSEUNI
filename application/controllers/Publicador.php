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
				if($this->form_validation->run() == false){
					echo validation_errors();
					$this->load->view("registro_publicador");
				}else{
					$this->Registrar();
					#redirect("");
				}
			}else{
				if(!$_POST){
					$this->load->view("registro_publicador");
				}else{
					if($this->form_validation->run() == true){
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
			$data_persona["fecha_nacimiento"] = $this->input->post("fecha_nacimiento");;

			$data_usuario["correo"] = $this->input->post("correo");
			$data_usuario["clave"] = Encrypter::encrypt($this->input->post("clave"));
			$data_usuario["activo"] = TRUE;

			$data_publicador["cargo_id"] = $this->input->post("cargo");

			try{
				$this->publicador->insertar($data_persona,$data_usuario,$data_publicador);
				echo "Registrado";
			}catch(Exception $e){
				echo $e->getMessage();
			}
		}

		function Listar(){

			$this->load->model("publicador_model","modelo");

			$data["reg"] = $this->modelo->listar();
			
			$this->load->view("listar_publicadores",$data);

		}

		function Actualizar(){

		}

		function Eliminar($id_publicador){

		}
	}

	
?>