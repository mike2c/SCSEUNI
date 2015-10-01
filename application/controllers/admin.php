<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest');
	if(!isset($_SESSION["administrador"])){
		#DESCOMENTAR ESTA LINEA CUANDO EL SISTEMA ESTE TERMINADO.
		//exit ("Error 404. pagina no encontrada");
	}

	class Admin extends CI_Controller{

		function __construct(){
			parent:: __construct();
			
			$this->load->model("admin_model","admin");
		}

		private function validarCampos(){

			$this->load->library("form_validation");
			$this->form_validation->set_rules('nombre','Nombre','trim|required|min_length[2]|max_length[45]');
			$this->form_validation->set_rules('apellido','Apellido','trim|required|min_length[2]|max_length[45]');
			$this->form_validation->set_rules('genero','Sexo','trim|required|max_length[1]');
			$this->form_validation->set_rules('correo','Correo','trim|required|max_length[45]|valid_email');
			$this->form_validation->set_rules('clave','Contraseña','trim|required|min_length[5]|max_length[100]');
			$this->form_validation->set_rules('clave_conf','Confirmar Contraseña','trim|matches[clave]|min_length[5]|required|max_length[100]');
		
			if($this->form_validation->run() == FALSE){

				echo validation_errors();
				return FALSE;
			}

			return TRUE;
		}

		function Registro(){

			if(IS_AJAX){

				$this->validarCampos();
			}else{

				$this->load->library("Encrypter");//Cargamos la libreria para encriptar
				if($this->validarCampos()){

					#Tabla usuario
					$data_usuario["correo"] = $this->input->post('correo');
					$data_usuario["clave"] = Encrypter::encrypt($this->input->post('clave'));
					$data_usuario["activo"] = true;

					#Tabla persona
					$data_persona["nombre"] = $this->input->post('nombre');
					$data_persona["apellido"] = $this->input->post('apellido');
					$data_persona["sexo"] = $this->input->post('genero');
					
					$this->admin->insertarAdmin($data_usuario,$data_persona);

					echo "<script type='text/javascript'>
					alert('Registrado');
					window.location='". base_url('CPanel') ."';
					</script>";
				}
			}
		}
		
		function Actualizar(){
			
			if(IS_AJAX){
				$this->validarCampos();
			}else{

				$this->load->library("Encrypter");
				if($this->validarCampos()){

					$data_usuario["correo"] = $this->input->post('correo');
					$data_usuario["clave"] = Encrypter::encrypt($this->input->post('clave'));
					$data_usuario["usuario_id"] = getUsuarioId();
		
					$data_persona["nombre"] = $this->input->post('nombre');
					$data_persona["apellido"] = $this->input->post('apellido');
					$data_persona["sexo"] = $this->input->post('genero');
					$data_persona["fecha_nacimiento"] = format_date($this->input->post("fecha"));
					$data_persona["persona_id"] = $user_data->persona_id;
		
					$this->admin_model->updateAdmin($data_usuario,$data_persona);
					return TRUE;
				}
			}
		}

		function ActualizarPerfil(){

			if($this->Actualizar()){
				echo "<script type='text/javascript'>
					alert('Perfil actualizado');
					window.location='". base_url('Perfil') ."';
				</script>";
			}
		}
	}
?>
