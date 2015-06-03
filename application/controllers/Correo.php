<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Correo extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("mensaje_model");
			$this->load->library("session");
		}

		function index(){
			$objeto = new Mensaje_model();

			$data["inbox"] = $objeto->mensajesRecibidos(9);
			$data["sent"] = $objeto->mensajesEnviados(9);
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("correo",$data);
			$this->load->view("footer");
		}

		function EliminarMensaje($id){
			echo "$id mensaje eliminado";
		}

		function LeerMensaje($mensaje_id){

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