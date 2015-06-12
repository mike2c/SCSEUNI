<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Empresa extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->helper("url");
		}

		function Registro(){
				$this->load->model("listas_model","departamento");
			$data["departamentos"] = $this->departamento->listarDepartamentos();
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("registro_empresa",$data);
			$this->load->view("footer");
		}
		
		function Actualizar(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			/**/
			$this->load->view("footer");
		}

		function Eliminar(){

		}
		
	}
?>