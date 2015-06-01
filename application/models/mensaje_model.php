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

		function mensajesSinLeer(){
			
		}
	}

 ?>