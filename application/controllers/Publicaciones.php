<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Publicaciones extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->helper("sesion");

			if(sesionIniciada() == false){
				exit("mensaje");
			}
		}

		function Becas(){

			$this->load->model("beca_model");
			$this->beca_model->listar($arr);

			$this->load->view("");
		}

		function BolsaDeTrabajo(){

		}

		function Cursos(){

		}


	}
?>