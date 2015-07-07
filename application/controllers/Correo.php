<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Correo extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("mensaje_model","mensajes");
			$this->load->helper("sesion");
			$this->load->library("session");
			
			if(!sesionIniciada()){
				exit("<center>error 404 page not found</center>");
			}
		}

		function index(){
			$data["inbox"] = $this->mensajes->mensajesRecibidos(getUsuarioID());
			$data["sent"] = $this->mensajes->mensajesEnviados(getUsuarioID());
			$data["drafts"] = $this->mensajes->borrador(getUsuarioID());
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("correo",$data);
			$this->load->view("footer");

		}

		function Inbox(){

			$data["inbox"] = $this->mensajes->mensajesRecibidos(getUsuarioID());
			$this->load->view("listar_mensajes",$data);
		}

		function Sent(){

			$data["sent"] = $this->mensajes->mensajesEnviados(getUsuarioID());
			$this->load->view("listar_mensajes",$data);
		}

		function Drafts(){

			$data["drafts"] = $this->mensajes->borrador(getUsuarioID());
			$this->load->view("listar_mensajes",$data);
		}

		function EliminarMensaje($id){
			echo "$id mensaje eliminado";
		}

		function LeerMensaje($mensaje_id){

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

		function Buscar(){
			$data = null;

			$datos["tipo"] = $this->input->post("tipo");
			$datos["campo"] = $this->input->post("filtro");
			$datos["busqueda"] = $this->input->post("busqueda");
			$datos["usuario_id"] = getUsuarioID();
			
			$datos["tipo"] = "inbox";
			$datos["campo"] = "asunto";
			$datos["busqueda"] = "men";
			$datos["usuario_id"] = getUsuarioID();
			
			#echo $datos["busqueda"];
			#echo $datos["tipo"];
			#echo $datos["campo"];
			#echo $datos["usuario_id"];

			if($datos["tipo"] == "inbox" ){

				$data["inbox"] = $this->mensajes->buscarMensajes($datos);
			}else if($data["sent"] == "sent"){

				$data["sent"] = $this->mensajes->buscarMensajes($datos);
			}else if($data["drafts"] == "drafts"){
				
				$data["drafts"] = $this->mensajes->buscarMensajes($datos);
			}

			$this->load->view("cabecera");
			$this->load->view("listar_mensajes",$data);
		}
	}
?>