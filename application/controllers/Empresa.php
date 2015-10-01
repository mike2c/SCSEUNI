<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest');
	
	class Empresa extends CI_Controller{

		/*Declaracion global de la variable empresa de tipo Empresa_modelo*/
		function __construct(){
			parent::__construct();
		
			$this->load->model("empresa_model","empresa");
		}

		private function validarCampos(){

			$this->load->library("form_validation");
			$this->form_validation->set_rules('nombre_empresa','Nombre de la Empresa','trim|required|min_length[5]|max_length[60]');
			$this->form_validation->set_rules('ruc','RUC','trim|max_length[9]|min_length[9]');
			$this->form_validation->set_rules('telefono','Telefono','trim|max_length[9]|min_length[9]');
			$this->form_validation->set_rules('direccion','Direccion','trim|max_length[100]');
			$this->form_validation->set_rules('correo','Correo','trim|required|min_length[10]|max_length[45]|valid_email');
			$this->form_validation->set_rules('clave','Confirmar Contraseña','trim|min_length[5]|required|max_length[15]');
			$this->form_validation->set_rules('clave_conf','Contraseña','trim|required|matches[clave]|min_length[5]|max_length[15]',
				array("matches"=>"Las contraseñas no coinciden","required"=>"El campo de confirmacion de contraseña es obligatorio"));
			
			if($this->form_validation->run() == FALSE){
				echo validation_errors();
				return FALSE;
			}

			return TRUE;
		}

		function Actualizar(){

			if(IS_AJAX){

				$this->validarCampos();				
			}else{
				
				if($this->validarCampos()){

					#Tabla empresa
					$data["empresa"]["empresa_id"] = $this->input->post("empresa_id");
					$data["empresa"]["mision"] = $this->input->post("mision");
					$data["empresa"]["vision"] = $this->input->post("vision");
					$data["empresa"]["ocupacion"] = $this->input->post("ocupacion");
					$data["empresa"]["nombre_empresa"] = $this->input->post("nombre_empresa");
					$data["empresa"]["ruc"] = $this->input->post("ruc");
					$data["empresa"]["sociedad_id"] = $this->input->post("sociedad");
					$data["empresa"]["sitio_web"] = $this->input->post("sitio_web");

					#Tabla contacto
					$data["contacto"]["contacto_id"] = $this->input->post("contacto_id");
					$data["contacto"]["telefono"] = $this->input->post("telefono");
					$data["contacto"]["celular"] = $this->input->post("celular");
					$data["contacto"]["direccion"] = $this->input->post("direccion");
					$data["contacto"]["municipio_id"] = $this->input->post("municipio");

					#Tabla usuario
					$data["usuario"]["usuario_id"] = $this->input->post("usuario_id");
					$data["usuario"]["correo"] = $this->input->post("correo");
					
					$this->empresa->actualizarEmpresa($data["empresa"],$data["contacto"],$data["usuario"]);
				
				}//END IF

			}//END ELSE
			
		}//END FUNCTION


		/*Actualizar perfil de empresa*/
		function ActualizarPerfil(){

			if($this->Actualizar()){
				echo "<script type='text/javascript'>
					alert('Perfil actualizado');
					window.location='". base_url('Perfil') ."';
				</script>";
			}
		}

		/*Registrar una nueva empresa*/
		function Registro(){
			
			if(IS_AJAX){

				$this->validarCampos();
			}else{

				if($this->validarCampos()){

					$this->load->library("Encrypter");

					#Tabla empresa
					$data_empresa['nombre_empresa'] = $this->input->post('nombre_empresa');
					
					#Tabla usuario
					$data_usuario['correo'] = $this->input->post('correo');
					$data_usuario['clave'] = Encrypter::encrypt($this->input->post('clave'));
					$data_usuario['activo'] = TRUE;
					
					#Tabla contacto
					$data_contacto['telefono'] = $this->input->post('telefono');
					$data_contacto['direccion'] = $this->input->post('direccion');
					$data_contacto['municipio_id'] = $this->input->post('municipio');

					$this->empresa->insertarEmpresa($data_usuario,$data_empresa,$data_contacto);
					
				}/*END IF*/

			}/*END ELSE*>

		}/*END FUNCTION*/
	}
?>