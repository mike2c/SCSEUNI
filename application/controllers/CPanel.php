<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class CPanel extends CI_Controller{

		function __construct(){
			parent::__construct();
		}

		function index(){
			$this->load->view("cabecera");
		
			$this->load->view("c_panel");
			$this->load->view("footer");
		}


	}
?>