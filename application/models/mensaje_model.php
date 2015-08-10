<?php 
	class Mensaje_model extends CI_model{

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

		function getMensajes($where = "",$like = ""){
			
			if($where != ""){
				$this->db->where($where);
			}

			if($like != ""){
				$this->db->like($like);
			}

			return $this->db->get("listar_mensajes");
		}

		function buscarMensajes($data){
			$result;

			if($tipo = "inbox"){
				$result = $this->db->query("select mensaje_id,correo as de,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,fecha_envio from usuario,mensaje where mensaje.remitente = usuario.usuario_id and mensaje.destinatario ='$data[usuario_id]' and borrador=false and $data[campo] like '%$data[busqueda]%'");
				
			}else if($data["sent"]){

				$result = $this->db->query("select mensaje_id,correo as para,asunto,fecha_envio,if(visto,'leido','sin leer') as estado,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.remitente ='$data[usuario_id]' and borrador=false '$data[campo]' = '$data[busqueda]' order by fecha_envio desc;");
			}else if($data["drafts"]){
				
				$result = $this->db->query("select mensaje_id,correo as de,asunto,fecha_envio,fecha_envio from usuario,mensaje where mensaje.destinatario = usuario.usuario_id and mensaje.destinatario ='$usuario_id' and borrador=true and '$data[campo]' = '$data[busqueda]' order by fecha_envio desc;");
			}

			return $result;
		}

		function mensaje($data){
			
			$this->db->where($data);
			return $this->db->get("listar_mensajes");
		}

		function cambiarEstado($mensaje_id){

			$update_string = $this->db->update_string("mensaje",array("visto"=>TRUE),array("mensaje_id"=>$mensaje_id));
			$this->db->query($update_string);

		}
	}

 ?>