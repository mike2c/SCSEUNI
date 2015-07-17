<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Perfil extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->library("session");
			$this->load->helper("sesion");
			if(!sesionIniciada()){
				exit("error 404 page not found");
			}

			if(esEgresado()){
				$this->load->model("egresado_model","modelo");
			}else if(esEmpresa()){
				$this->load->model("empresa_model","modelo");
			}else if(esPublicador()){
				$this->load->model("publicador_model","modelo");
			}else if(esAdministrador()){
				$this->load->model("admin_model","modelo");
			}
		}

		function Index(){

			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("menu_perfil");
			$this->load->view("footer");
		}

		#Cargar perfil de la empresa
		function PerfilEgresado(){
			$resultado = $this->modelo->buscarEgresado("usuario_id",getUsuarioId());
			
			if($resultado != null){
				
				foreach ($resultado->result() as $row) {
					$data["perfil"] = $row;
				}
				
				$this->load->view("perfil_egresado",$data);
			}
			
		}
		
		function PerfilEmpresa(){

			$resultado = $this->modelo->buscarEmpresa("usuario_id",getUsuarioId());
			
			if($resultado != null){
				
				foreach ($resultado->result() as $row) {
					$data["perfil"] = $row;
				}
				
				$this->load->view("perfil_empresa",$data);
			}
		}

		function CambiarClave(){
			$this->load->model("perfil_model");

			$clave_actual = $this->input->post("clave_actual");
			$clave_nueva = $this->input->post("clave_nueva");
			$clave_repetida = $this->input->post("clave_repetida");

			if($clave_actual == $this->perfil_model->getClave(getUsuarioId())){
				if($clave_nueva == $clave_repetida){
					$this->perfil_model->cambiarClave(getUsuarioId(),$clave_nueva);
					echo "<script type='text/javascript'>
						alert('La contraseña ha sido cambiada');
						window.location='". base_url('Perfil')."'"; 
						echo "
					</script>";
					
				}else{
					echo "Las contraseñas no coinciden";
				}
			}else{
				echo "contraseña incorrecta";
			}
		}

		function prueba(){
			$this->load->model("perfil_model");
			echo $this->perfil_model->getClave(getUsuarioId());

		}

		function accion(){
			echo $this->input->post("var1");
			echo $this->input->post("var2");
		}

	}
?>