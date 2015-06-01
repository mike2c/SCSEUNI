<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Correo extends CI_Controller{

		function __construct(){
			parent::__construct();
		}

		function index(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("correo");
			$this->load->view("footer");
		}

	}
?>