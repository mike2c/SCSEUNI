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

			$data["inbox"] = $this->mensajes->getMensajes(array("destinatario_id"=>getUsuarioID()));
			$data["sent"] = $this->mensajes->getMensajes(array("remitente_id"=>getUsuarioID()));
			$data["drafts"] = $this->mensajes->getMensajes(array("remitente_id"=>getUsuarioID(),"borrador"=>true));

			$this->load->model("perfil_model");


			$data["lista_egresados"] = $this->perfil_model->getUsuarioEgresados();
			$data["lista_empresas"] = $this->perfil_model->getUsuarioEmpresas();
			$data["lista_publicadores"] = $this->perfil_model->getUsuarioPublicadores();

			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("mensaje/correo",$data);
			$this->load->view("footer");

		}

		function Inbox(){

			$data["inbox"] = $this->mensajes->getMensajes(array("destinatario_id"=>getUsuarioID(),"borrador"=>false));
			$this->load->view("mensaje/listar_mensajes",$data);
		}

		function Sent(){

			$data["sent"] = $this->mensajes->getMensajes(array("remitente_id"=>getUsuarioID(),"borrador"=>false));
			$this->load->view("mensaje/listar_mensajes",$data);
		}

		function Drafts(){

			$data["drafts"] = $this->mensajes->getMensajes(array("remitente_id"=>getUsuarioID(),"borrador"=>TRUE));
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
			$tipo = $this->input->get("bandeja");
			$data["mensaje_id"] = $this->input->get("mensaje");

			$query = $this->mensajes->getMensajes($data);
			
			if($query != null){
				
				$data["mensaje"] = $query->row();

				if($tipo == "drafts"){
					$this->load->view("mensaje/editar_borrador",$data);
				}else if($tipo == "inbox"){
					$this->mensajes->cambiarEstado($data["mensaje_id"]);
					$this->load->view("mensaje/leer_mensaje",$data);	
				}else if($tipo == "sent"){
					
					$this->load->view("mensaje/leer_mensaje_enviado",$data);	
				}
			}
				
		}

		function EnviarMensaje(){
			
			$borrador = $this->input->post("borrador");
			$curr_adjuntado = $this->input->post("curr_adjuntado");

			$data["borrador"] = ($borrador == "true")? 1 : 0;
			
			if(isset($_POST["curr_adjuntado"])){
				$data["curr_adjuntado"] = TRUE;
			}else{
				$data["curr_adjuntado"] = FALSE;
			}

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

		function EnviarBorrador(){
			$borrador = $this->input->post("borrador");
			$curr_adjuntado = $this->input->post("curr_adjuntado");

			$data["borrador"] = ($borrador == "true")? 1 : 0;
			
			if(isset($_POST["curr_adjuntado"])){
				$data["curr_adjuntado"] = TRUE;
			}else{
				$data["curr_adjuntado"] = FALSE;
			}
			$data["mensaje_id"] = $this->input->post("mensaje_id");
			$data["destinatario"] = $this->input->post("usuario");
			if(empty($data["destinatario"])){
				$data["destinatario"] = null;
			}
			$data["asunto"] = $this->input->post("asunto");
			$data["mensaje"] = nl2br($this->input->post("mensaje"));
			$date = getDate();
			$data["fecha_envio"] =  $date["year"]. "-" . $date["mon"]. "-". $date["mday"];
			$data["borrador"] = false;
			$data["visto"] = false;

			$this->mensajes->actualizarMensaje($data);
		}

		function BuscarRecibidos(){
			$data["inbox"] = $this->mensajes->getMensajes(array("destinatario_id"=>getUsuarioID()),$_POST);
			if($data["inbox"] != null){
				$this->load->view("mensaje/listar_mensajes",$data);
			}else{
				echo "<br><br><h3 class='text-center'>[No se han encontrado resultados]</h3>";
			}
			
		}

		function BuscarEnviados(){
			$data["sent"] = $this->mensajes->getMensajes(array("remitente_id"=>getUsuarioID()),$_POST);
			if($data["sent"]->num_rows() > 0){
				$this->load->view("mensaje/listar_mensajes",$data);
			}else{
				echo "<br><br><h3 class='text-center'>[No se han encontrado resultados]</h3>";
			}
			
		}
		
		function BuscarBorrador(){
			$data["drafts"] = $this->mensajes->getMensajes(array("remitente_id"=>getUsuarioID(),"borrador"=>true),$_POST);
			if($data["drafts"] != null){
				$this->load->view("mensaje/listar_mensajes",$data);
			}else{
				echo "<br><br><h3 class='text-center'>[No se han encontrado resultados]</h3>";
			}
			
		}
	}
?>