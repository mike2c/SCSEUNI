<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	
	class Curriculum  extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->helper("sesion");
			$this->load->library("session");
		}

		function Index(){
			$this->load->model("curriculum_model","modelo");
			
			if($this->modelo->existe(getUsuarioId())){
				echo "existe";
			}else{
				if(IS_AJAX)				{
					$this->load->view("registro_curriculum");
				}else{
					$this->load->view("cabecera");
					$this->load->view("nav");
					$this->load->view("registro_curriculum");
					$this->load->view("footer");
				}
			}
		}

		function Crear(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("registro_curriculum");
			$this->load->view("footer");
		}

		function Guardar(){

			print_r($_POST);
		}


	}
?>