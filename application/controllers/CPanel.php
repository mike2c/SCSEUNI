<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');

	class CPanel extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->helper("sesion");
			if(!esAdministrador()){
				//show_404();
			}
		}

		function index(){
			$this->load->view("cabecera");
			$this->load->view("panel/panel.php");
			$this->load->view("footer");
		}

		function ListarEgresados(){
			
			if(IS_AJAX){
				$this->load->model("egresado_model","egresados");
				$this->load->model("listas_model","listas");

				$data["carreras"] = $this->listas->listarCarreras();
				$data["registro"] = $this->egresados->listar();

				$this->load->view("panel/lista/listar_egresados",$data);
			}
		}

		function RegistrarEgresado(){

			if(IS_AJAX){

				$this->load->view("panel/registro/registrar_egresado");
			}
		}

		function ListarEmpresas(){

		}

		function ListarPublicadores(){

		}

		function ListarAdmins(){

		}
	}
?>