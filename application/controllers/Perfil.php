<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Perfil extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->library("session");
			$this->load->helper("sesion");
		}

		function index(){

			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("perfil");
			$this->load->view("footer");
		}


		
	}
?>