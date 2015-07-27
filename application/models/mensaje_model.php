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
			$result = $this->db->query("select mensaje_id,correo as de,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,fecha_envio from usuario,mensaje where mensaje.remitente = usuario.usuario_id and mensaje.destinatario ='$usuario_id' and borrador=false;");
			
			return $result;
		}

		function mensajesEnviados($usuario_id){
			$query = $this->db->query("select mensaje_id,correo as para,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.remitente ='$usuario_id' and borrador=false;");
			return $query;
		}

		function borrador($usuario_id){
			return $this->db->query("select mensaje_id,correo as para,asunto,fecha_envio from mensaje left join usuario on usuario.usuario_id = mensaje.destinatario  where mensaje.remitente ='$usuario_id' and borrador=true;");
			
		}

		function buscarMensajes($data){
			$result;

			if($data["tipo"] = "inbox"){
				$result = $this->db->query("select mensaje_id,correo as de,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,fecha_envio from usuario,mensaje where mensaje.remitente = usuario.usuario_id and mensaje.destinatario ='$data[usuario_id]' and borrador=false and $data[campo] like '%$data[busqueda]%'");
				
			}else if($data["sent"]){

				$result = $this->db->query("select mensaje_id,correo as para,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.remitente ='$data[usuario_id]' and borrador=false '$data[campo]' = '$data[busqueda]' order by fecha_envio desc;");
			}else if($data["drafts"]){
				
				$result = $this->db->query("select mensaje_id,correo as de,asunto,fecha_envio,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.destinatario ='$usuario_id' and borrador=true and '$data[campo]' = '$data[busqueda]' order by fecha_envio desc;");
			}

			return $result;
		}

		function mensaje($data){
			$sql = "";
			if($data["tipo"] == "inbox"){
				$sql = "select mensaje_id,usuario.usuario_id,correo,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,mensaje,DATE_FORMAT(fecha_envio,'%d-%m-%Y')as fecha_envio,curr_adjuntado from usuario,mensaje where mensaje.remitente = usuario.usuario_id and mensaje.destinatario ='$data[usuario_id]' and borrador=false and mensaje_id=". $data["mensaje_id"];
			}elseif($data["tipo"] == "sent"){
				$sql = "select mensaje_id,correo,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,mensaje,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.remitente ='$data[usuario_id]' and borrador=false and mensaje_id=". $data["mensaje_id"];
			}elseif($data["tipo"] == "drafts"){
				$sql = "select mensaje_id,correo,asunto,fecha_envio,mensaje from mensaje left join usuario on usuario.usuario_id = mensaje.destinatario  where mensaje.remitente ='$data[usuario_id]' and borrador=true and mensaje_id=". $data["mensaje_id"];
			}
 			
			return $this->db->query($sql);
		}
	}

 ?>