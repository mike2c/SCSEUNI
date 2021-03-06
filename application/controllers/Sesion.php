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
			$this->form_validation->set_rules('correo','Correo','required');
			$this->form_validation->set_rules('clave','Contraseña','required');
		}

		function Index(){

			$this->IniciarSesion();
		}

		function IniciarSesion(){
			
			if($this->validar_entrada()){
				
				$this->load->library("Encrypter");
				$this->load->model("egresado_model");
				$this->load->model("empresa_model");
				$this->load->model("publicador_model");
				$this->load->model("admin_model");

				$cond["correo"] = $this->input->post("correo");
				$cond["clave"] = Encrypter::encrypt($this->input->post("clave"));
				$fields = array("correo","imagen","nombre","apellido","usuario_id");
				
				$egresado = $this->egresado_model->listar($cond,null,null,null,$fields);
				$empresa = $this->empresa_model->listar($cond,null,null,null,array("usuario_id","nombre_empresa as nombre","correo","imagen"));
				$publicador = $this->publicador_model->listar($cond,null,null,null,$fields);
				$admin = $this->admin_model->listar($cond,null,null,null,$fields);

				if($egresado->num_rows() == 1){
					$_SESSION["egresado"] = $egresado->row_array();
					$this->actualizarInformacionUsuario();
					redirect("Perfil");
				}elseif($empresa->num_rows() == 1){
					$_SESSION["empresa"] = $empresa->row_array();
					$this->actualizarInformacionUsuario();
					redirect("Perfil");
				}elseif($publicador->num_rows() == 1){
					$_SESSION["publicador"] = $publicador->row_array();
					$this->actualizarInformacionUsuario();
					redirect("Perfil");
				}elseif($admin->num_rows() == 1){
					$_SESSION["administrador"] = $admin->row_array();
					$this->actualizarInformacionUsuario();
					redirect("Perfil");
				}else{
					$data["login_errors"] = "<p>El correo o clave que ingresaste no son correctos</p>";
				}

			}else{
				$data["login_errors"] = validation_errors();
			}

			$this->load->view("cabecera");
			$this->load->view("nav");
			if(sesionIniciada()){
				$this->load->view("errors/html/error_session",$data);
			}else{
				$this->load->view("pages/login",$data);
			}
			$this->load->view("footer");
		}

		private function actualizarInformacionUsuario(){

			$this->load->model("sesion_model");

			$this->sesion_model->actualizarInfoUsuario(getUsuarioId());
		}

		function CerrarSesion(){
			session_destroy();
			?>
				<script type="text/javascript">
					window.alert("Has cerrado sesion");
					window.location="<?=base_url('login')?>";
				</script>
			<?
		}

		private function validar_entrada(){

			$this->load->library("form_validation");
			$this->form_validation->set_rules("correo","correo","required|valid_email|min_length[10]");
			$this->form_validation->set_rules("clave","clave","required");

			if($this->form_validation->run() == FALSE){
				return FALSE;
			}

			return TRUE;			
		}
} 