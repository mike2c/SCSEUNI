<?php defined('BASEPATH') OR exit('No direct script access allowed');
	include "publicacion_model.php";
	
	class  Beca_model extends Publicacion_model{

		function __construct(){
			parent::__construct("listar_becas");
		}

		function insertarBeca($data_beca){	

			$this->db->insert("beca",$data_beca);
		}

		function actualizarBeca($data_beca){
		
			$this->db->where("beca_id",$data_beca["beca_id"]);
			$this->db->update("beca",$data_beca);
		}

		function eliminarBeca($publicacion_id,$usuario_id){

			parent::eliminarPublicacion($publicacion_id,$usuario_id);

			$this->db->where("publicacion_id",$publicacion_id);
			$this->db->delete("beca");
		}

	}
?>