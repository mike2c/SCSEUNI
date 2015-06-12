<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Publicador extends CI_Controller{

		function __construct(){
			parent::__construct();
		}

		function Index(){
			$this->load->view("registro_publicador");
		}
	}
?>