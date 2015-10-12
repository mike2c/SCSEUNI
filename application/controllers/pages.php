<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');

	class Pages extends CI_Controller{

		function __construct(){
			parent::__construct();
		}

		public function view($page = "home"){

		   	if ( ! file_exists(APPPATH.'/views/pages/'.$page.'.php')){
            	show_404();
        	}

        	 $data['title'] = ucfirst($page); // Capitalize the first letter

	        $this->load->view('cabecera', $data);
	        $this->load->view('nav');
	        $this->load->view('pages/'.$page, $data);
	        $this->load->view('footer', $data);
		}


	}
?>