<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Perfil extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->library("session");
			$this->load->helper("sesion","sesion_helper");
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

		function PerfilEgresado(){
			$resultado = $this->modelo->buscarEgresado("usuario_id",getUsuarioId());
			
			if($resultado != null){
				$query= $resultado->result();
				$data["perfil"]= $query[0];
				$this->load->view("perfil_egresado",$data);
			}
			
		}
		
		function ActualizarInformacionEgresado(){
			$data["egresado"]["cedula"] = $this->input->post("cedula");
			$data["egresado"]["trabaja"] = $this->input->post("cedula");
			$data["egresado"]["titulado"] = $this->input->post("cedula");

			$this->modelo->actualizar();
		}

		function ActualizarInformacionPersonal(){

			$data["persona"]["nombre"] = $this->input->post("nombre");
			$data["persona"]["apellido"] = $this->input->post("apellido");
			$data["persona"]["sexo"] = $this->input->post("genero");
			$data["persona"]["fecha_nacimiento"] = $this->input->post("fecha_nacimiento");	

			$this->modelo->actualizar($data);
		}

		function ActualizarInformacionContacto(){
			$data["contacto"]["telefono"] = $this->input->post("telefono");
			$data["contacto"]["celular"] = $this->input->post("celular");
			$data["contacto"]["direccion"] = $this->input->post("direccion");
			$data["contacto"]["municipio_id"] = $this->input->post("municipio");	

			$this->model->actualizar($data);
		}


		function prueba(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("prueba");
			$this->load->view("footer");

		}

		function accion(){
			echo $this->input->post("var1");
			echo $this->input->post("var2");
		}

	}
?>