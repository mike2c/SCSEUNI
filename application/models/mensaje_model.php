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
			$result = $this->db->query("select mensaje_id,asunto,mensaje,r.correo as 'de',if(visto,'Leido','Sin leer') as 'estado',fecha_envio from mensaje inner join usuario r on r.usuario_id = mensaje.remitente and visto = false and destinatario ='$usuario_id' order by fecha_envio desc;");
			return $result;
		}

		function mensajesEnviados($usuario_id){
			$query = $this->db->query("select asunto,mensaje,r.correo as 'para',if(visto,'Leido','Sin leer') as 'estado',fecha_envio from mensaje inner join usuario r on r.usuario_id = mensaje.destinatario and visto=false and remitente = '$usuario_id' order by fecha_envio desc;");
			return $query;
		}
	}

 ?>