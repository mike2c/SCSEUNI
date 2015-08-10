<?php defined('BASEPATH') OR exit('No direct script access allowed');
	if(!isset($_SESSION["administrador"])){
		#DESCOMENTAR LA LINEA DE CODIGO DE ABAJO CUANDO ESTEN TRABAJANDO CON LAS SESIONES DE ADMINISTRADOR, AL FINAL EL SISTEMA TIENE QUE QUEDAR CON ESA LINEA DE CODIGO PARA CONTROLAR EL ACCESO AL ARCHIVO.
		#exit("Error 404 Page not found.");
	}

	class Sesion extends CI_Controller{
		
		function __construct(){
			parent:: __construct() 	;
			$this->load->helper(array('form','url',"sesion"));
			$this->load->library('form_validation');
			$this->load->library('session');
			$this->form_validation->set_rules('correo','Correo','required');
			$this->form_validation->set_rules('clave','Contraseña','required');
		}

		function Index(){
		
			$this->login();
		
		}

		function Login($data = null){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("login",$data);
			$this->load->view("footer");
		}

		function RegistrarUltimaSesion(){
			$this->load->model("sesion_model","modelo");
			$this->modelo->actualizarSesion(getUsuarioId());
		}

		function IniciarSesion(){
			//cargando el modelo del login
			$this->load->model('sesion_model','',true);
			$this->load->library("Encrypter");

			if($this->form_validation->run()== false){
				$data["sesion_errors"] = validation_errors();
				$this->Login($data);
			
			}else{
			
				$data_usuario['correo'] = $this->input->post('correo');
				$data_usuario['clave'] = Encrypter::encrypt( $this->input->post('clave'));
				
				if($usuario = $this->sesion_model->esEgresado($data_usuario)){
					$this->session->set_userdata("egresado",$usuario);
					$this->RegistrarUltimaSesion();
					redirect("perfil");		
				}elseif($usuario = $this->sesion_model->esEmpresa($data_usuario)){
					$this->session->set_userdata("empresa",$usuario);
					$this->RegistrarUltimaSesion();
					redirect("perfil");			
				}elseif($usuario = $this->sesion_model->esPublicador($data_usuario)){
					$this->session->set_userdata("publicador",$usuario);
					$this->RegistrarUltimaSesion();
					redirect("perfil");
				}elseif($usuario = $this->sesion_model->esAdministrador($data_usuario)){
					$this->session->set_userdata("administrador",$usuario);
					$this->RegistrarUltimaSesion();
					redirect("perfil");
				}else{
					
					$data["sesion_errors"] = "El usuario o contraseña que digitaste no son correctos";
					$this->Login($data);
				}
				
			}
		}

		function CerrarSesion(){
			session_destroy();
			?>
				<script type="text/javascript">
					window.alert("Has cerrado sesion");
					window.location="<?=base_url()?>";
				</script>
			<?
		}

		} 
