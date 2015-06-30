<?php 
	class Mensaje_model extends CI_model{

		private $strInbox = "select mensaje_id,correo,asunto,fecha_envio,visto,fecha_envio from usuario,mensaje where mensaje.remitente = usuario.usuario_id and mensaje.destinatario=";
		private $strSent = "";
		private $strDrafts = "";

		function __construct(){
			parent::__construct();
			$this->load->database();
		}

		function insertarMensaje($data){
			$this->db->insert("mensaje",$data);
		}

		function eliminarMensaje($mensaje_id){
			$this->db->where("mensaje_id",$mensaje_id);
			$this->db->delete("mensaje");
		}

		function actualizarMensaje($data){
			$this->db->where("mensaje_id",$data["mensaje_id"]);
			$this->db->update("mensaje",$data);
		}

		function mensajesRecibidos($usuario_id){
			$result = $this->db->query("select mensaje_id,correo as de,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.destinatario ='$usuario_id';");
			
			return $result;
		}

		function mensajesEnviados($usuario_id){
			$query = $this->db->query("select mensaje_id,correo as para,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.remitente ='$usuario_id';");
			return $query;
		}

		function borrador($usuario_id){
			return $this->db->query("select mensaje_id,correo as de,asunto,fecha_envio,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.destinatario ='$usuario_id' and borrador=true;");
			
		}

		function buscarMensajes($data){
			$result;

			if($data["tipo"] = "inbox"){
				$result = $this->db->query("select mensaje_id,correo as de,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,fecha_envio from usuario,mensaje where mensaje.remitente = usuario.usuario_id and mensaje.destinatario ='$data[usuario_id]' and $data[campo] like '%$data[busqueda]%' order by fecha_envio desc;");
				
			}else if($data["sent"]){

				$result = $this->db->query("select mensaje_id,correo as para,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.remitente ='$data[usuario_id]' and '$data[campo]' = '$data[busqueda]' order by fecha_envio desc;");
			}else if($data["drafts"]){
				
				$result = $this->db->query("select mensaje_id,correo as de,asunto,fecha_envio,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.destinatario ='$usuario_id' and borrador=true and '$data[campo]' = '$data[busqueda]' order by fecha_envio desc;");
			}

			return $result;
		}
	}

 ?>