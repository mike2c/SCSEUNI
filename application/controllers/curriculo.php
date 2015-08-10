<?php defined ("BASEPATH") OR exit("no direct script allowed");
	if(!isset($_SESSION["egresado"])){
		#DESCOMENTAR ESTA LINEA CUANDO EL SISTEMA ESTE TERMINADO.
		//exit ("Error 404. pagina no encontrada");
	}
	class Curriculo extends CI_Controller{
		function __construct(){
			parent:: __construct();
			$this->load->helper(array('form','url','sesion'));
			$this->load->library('form_validation');
			$this->load->library('session');
		} 

		function crearCurriculo(){
			$this->load->model("curriculo_model","",TRUE);

			if ($this->form_validation->run()==FALSE) {
				$this->load->view("cabecera");
				$this->load->view("nav");
				$this->load->view("registro_curriculo");
				$this->load->view("footer");
			}else{
				$data_experiencia["empresa"] = $this->input->post("empresa[]");
				$data_experiencia["cargo"] = $this->input->post("cargo[]");
				$data_experiencia["fecha_comienzo"] = $this->input->post("fecha_comienzo[]");
				$data_experiencia["fecha_finalizacion"] = $this->input->post("fecha_finalizacion[]");

				$data_titulo["titulo"] = $this->input->post("");
				$data_academica["fecha_comienzo"] = $this->input->post("");
				$data_academica["fecha_finalizacion"] = $this->input->post("");

				$data_complementaria["curso"] = $this->input->post("");
				$data_complementaria["fecha_comienzo"] = $this->input->post("");
				$data_complementaria["fecha_finalizacion"] = $this->input->post("");

				$data_idioma["idioma"] = $this->input->post("");
				$data_idioma["nivel"] = $this->input->post("");

				$data_informatica["software"] = $this->input->post("");
				$data_informatica["nivel"] = $this->input->post("");

				$this->curriculo_model->guardarCurriculo();
				for($i=0; $i<count($data_experiencia);$i++){
					$this->curriculo_model->guardar_experiencia_laboral($data_experiencia);
				}
				for($i=0; $i< count($data_titulo);$i++){
					$this->curriculo_model->guardar_formacion_academica($data_academica,$data_titulo);
				}
				for($i=0; $i<count($data_complementaria);$i++){
					$this->curriculo_model->guardar_formacion_complementaria($data_complementaria);
				}
				for($i=0; $i<count($data_idioma);$i++){
					$this->curriculo_model->guardarIdioma($data_idioma);
				}
				for($i=0; $i<count($data_informatica);$i++){
					$this->curriculo_model->guardarInformatica($data_informatica);
				}
			}
		}

		function updateCurriculo(){

		}
	}
?>