<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Empresa extends CI_Controller{

		function __construct(){
			parent::__construct();

		}

		function registro(){
			$this->load->view("registro_empresa");
		}

		function edicion(){

		}

		
	}
?>