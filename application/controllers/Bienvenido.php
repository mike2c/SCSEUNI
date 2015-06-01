<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Bienvenido extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->library("form_validation");
			$this->load->helper("url");
		}

		function index(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("inicio");
			$this->load->view("footer");
		}

	}
	


?>
