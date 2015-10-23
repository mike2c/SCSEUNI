<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Publicaciones extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->library("session");
			$this->load->helper(array("sesion","fecha"));

		}

		public function Becas(){
			$this->load->library("calendar");
	
			$this->load->model("beca_model");
			$this->load->model("listas_model");

			if(isset($_POST["carrera"]) && !empty($_POST["carrera"])){
			
				$data["becas"] = $this->beca_model->consultar_por_carrera($this->input->post("carrera"));
			}else{
				$data["becas"]= $this->beca_model->listar(array("visible"=>TRUE,"fecha_alta >="=>date("Y-m-d")));
			}
			
			$data["carreras"] = $this->listas_model->listarCarreras();
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("publicacion/becas",$data);
			$this->load->view("footer");
		}

		public function BolsaDeTrabajo(){

			$this->load->model("ficha_model");
			$this->load->model("listas_model");

			if(isset($_POST["carrera"]) && !empty($_POST["carrera"])){
				$data["fichas"] = $this->ficha_model->consultar_por_carrera($this->input->post("carrera"));
			}else{
				$data["fichas"]= $this->ficha_model->listar(array("visible"=>TRUE,"fecha_alta >="=>date("Y-m-d")));
			}
			
			$data["carreras"] = $this->listas_model->listarCarreras();
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("publicacion/bolsa_trabajo",$data);
			$this->load->view("footer");
			
		}

		public function Cursos(){

			$this->load->model("curso_model");
			$this->load->model("listas_model");

			if(isset($_POST["carrera"]) && !empty($_POST["carrera"])){
			
				$data["cursos"] = $this->curso_model->consultar_por_carrera($this->input->post("carrera"));
			}else{
				$data["cursos"] = $this->curso_model->listar(array("visible"=>TRUE,"fecha_alta >="=>date("Y-m-d")));
			}
			
			$data["carreras"] = $this->listas_model->listarCarreras();
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("publicacion/cursos",$data);
			$this->load->view("footer");
		}
	}

?>