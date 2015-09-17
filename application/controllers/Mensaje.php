<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Mensaje extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("mensaje_model");
			$this->load->library(array("email","session"));
			$this->email->set_newline("\r\n");
			$this->load->helper(array("sesion"));
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
		
		function EnviarCorreo($data){
			$destinatario = $data["destinatario"];	
			$cc = $data["cc"];
			
			for($i=0; $i < count($data["destinatario"]); $i++) { 
				$list["destinatario"] = $destinatario[$i];
				
				if ($i == count($data["destinatario"]) - 1) {
					$list = "'".$list["destinatario"]."'";
				}else{
					$list = "'".$list["destinatario"]."',";
				}
			}
			
			for ($i=0; $i < count($data["cc"]) ; $i++) { 
				$ccList["cc"]= $cc[$i];
				
				if ($i == count($data["cc"]) - 1) {
					$ccList = "'".$ccList["cc"]."'";
				}else{
					$ccList = "'".$ccList["cc"]."',";
				}
			}
			
			$this->email->from($data["remitente"],getNombreCompleto());
			$this->email->reply_to($data["remitente"],getNombreCompleto());
			$this->email->to($list);	
			if (!$ccList==""){
				$this->email->cc($ccList);
			}
			$this->email->subject($data["asunto"]);
			$this->email->message($data["mensaje"]);
			if (!$this->email->send()) {
				echo "ERROR, no se pudo enviar el mensaje";
				echo $this->email->print_debugger();
			}else {
				return TRUE;
			}
		}
	}
?>