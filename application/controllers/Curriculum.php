<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Curriculum  extends CI_Controller{

		function __construct(){
			parent::__construct();
		}

		function Crear(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("registro_curriculo");
			$this->load->view("footer");
		}
	}
?>