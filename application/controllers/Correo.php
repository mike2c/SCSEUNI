<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Correo extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("mensaje_model","mensajes");
			$this->load->library("session");
			$this->load->helper("sesion");
						
			if(!sesionIniciada()){
				exit("<center>error 404 page not found</center>");
			}
		}

		function index(){
			$data["inbox"] = $this->mensajes->mensajesRecibidos(getUsuarioID());
			$data["sent"] = $this->mensajes->mensajesEnviados(getUsuarioID());
			$data["drafts"] = $this->mensajes->borrador(getUsuarioID());

			$this->load->model("perfil_model");

			$data["lista_egresados"] = $this->perfil_model->getUsuarioEgresados();
			$data["lista_empresas"] = $this->perfil_model->getUsuarioEmpresas();
			$data["lsita_publicadores"] = $this->perfil_model->getUsuarioPublicadores();

			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("mensaje/correo",$data);
			$this->load->view("footer");

		}

		function Inbox(){

			$data["inbox"] = $this->mensajes->mensajesRecibidos(getUsuarioID());
			$this->load->view("mensaje/listar_mensajes",$data);
		}

		function Sent(){

			$data["sent"] = $this->mensajes->mensajesEnviados(getUsuarioID());
			$this->load->view("mensaje/listar_mensajes",$data);
		}

		function Drafts(){

			$data["drafts"] = $this->mensajes->borrador(getUsuarioID());
			$this->load->view("mensaje/listar_mensajes",$data);
		}

		function EliminarMensajes(){
			
			$mensajes = $this->input->post("mensajes");
			#print_r($mensajes);
			if($mensajes){
				for($i = 0; $i < count($mensajes); $i++){
					$this->mensajes->eliminarMensaje($mensajes[$i]);
				}
			}
		}

		function LeerMensaje(){
			#print_r($_GET);
			$data["tipo"] = $this->input->get("bandeja");
			$data["usuario_id"] = getUsuarioId();
			$data["mensaje_id"] = $this->input->get("mensaje");

			$query = $this->mensajes->mensaje($data);
			
			if($query != null){
				
				foreach ($query->result() as $row) {
					$data["mensaje"] = $row;
				}

				if($data["tipo"] == "drafts"){
					$this->load->view("mensaje/editar_borrador",$data);
				}else{
					$this->load->view("mensaje/leer_mensaje",$data);
				}
			}
				
		}

		function EnviarMensaje(){

			$borrador = $this->input->post("borrador");
			$curr_adjuntado = $this->input->post("curr_adjuntado");

			$data["borrador"] = ($borrador == "true")? 1 : 0;
			$data["curr_adjuntado"] = ($curr_adjuntado == "true")? 1 : 0;

			$data["remitente"] = getUsuarioId();
			$data["destinatario"] = $this->input->post("usuario");
			if(empty($data["destinatario"])){
				$data["destinatario"] = null;
			}
			$data["asunto"] = $this->input->post("asunto");
			$data["mensaje"] = nl2br($this->input->post("mensaje"));
			$date = getDate();
			$data["fecha_envio"] =  $date["year"]. "-" . $date["mon"]. "-". $date["mday"];
			
			$data["visto"] = false;
			$this->mensajes->insertarMensaje($data);
		}

		function Buscar(){
			$data = null;

			$datos["tipo"] = $this->input->get("bandeja");
			$datos["campo"] = $this->input->get("filtro");
			$datos["busqueda"] = $this->input->get("busqueda");
			$datos["usuario_id"] = getUsuarioID();
	
			if($datos["tipo"] == "inbox" ){

				$data["inbox"] = $this->mensajes->buscarMensajes($datos);
			}else if($data["sent"] == "sent"){

				$data["sent"] = $this->mensajes->buscarMensajes($datos);
			}else if($data["drafts"] == "drafts"){
				
				$data["drafts"] = $this->mensajes->buscarMensajes($datos);
			}

			$this->load->view("mensaje/listar_mensajes",$data);
		}
	}
?>