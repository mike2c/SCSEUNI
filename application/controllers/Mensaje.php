<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Mensaje extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("mensaje_model");
			$this->load->library(array("email","session","form_validation","Encrypter"));
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
		
		function recuperarPass(){
			$this->load->model("usuario_model");
			
			$this->form_validation->set_rules("correo","Correo","required|valid_email");
			
			if($this->form_validation->run()==false){
				$this->load->view("cabecera");
				$this->load->view("nav");
				$this->load->view("pages/recuperacion_pass");
				$this->load->view("footer");
			}else{
				$correo = $this->input->post("correo");
				if($this->usuario_model->existe_correo($correo)){
					$pass = $this->usuario_model->obtenerPass($correo);
					if($pass == false){
						echo "Error, No se encontro la cuenta";
					}else{
						$this->email->set_newline("\r\n");
						$this->EnviarPass($pass->clave,$correo);
					}
				}else{
					echo "El correo proporcionado no se encuentra registrado en el sistema, asegurate de ingresar un correo valido.";
				}
			}
		}
		
		function EnviarPass($pass,$correo){
			$clave = Encrypter::decrypt($pass);
			
			$this->email->from("UniAdmin@gmail.com","UNIVERSIDAD NACIONAL DE INGENIERIA");
			$this->email->reply_to("UniAdmin@gmail.com","UNIVERSIDAD NACIONAL DE INGENIERIA");
			$this->email->to($correo);	
			$this->email->subject("Contraseña de tu cuenta");
			$this->email->message("Hola, esta es tu contraseña para iniciar sesion:
			Contraseña: $clave
			Te recomendamos que no borres este correo, en caso de que olvides tu contraseña.");	
				
			if (!$this->email->send()) {
				echo "ERROR, no se pudo enviar el mensaje<br/>";
				echo $this->email->print_debugger();
			}else {
				echo "Enviado";
			}
		}
	}
?>