<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Mensaje extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("mensaje_model");
		}

		function index(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("correo");
			$this->load->view("footer");
		}

		function listarMensajes(){
			
		}

		function EnviarMensaje(){
			$data["remitente"] = $this->input->post("remitente");
			$data["destinatario"] = $this->input->post("destinatario");
			$data["asunto"] = $this->input->post("asunto");
			$data["mensaje"] = $this->input->post("mensaje");
			$data["fecha_envio"] = getdate();
			$data["borrador"] = FALSE;
			$data["visto"] = FALSE;

		}
	}
?>