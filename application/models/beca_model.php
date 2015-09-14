<?php defined('BASEPATH') OR exit('No direct script access allowed');
	include "publicacion_model.php";
	class  Beca_model extends Publicacion_model{

		function __construct(){
			parent::__construct("listar_becas");

		}

		function insertarBeca($data_beca){	

			$this->db->insert("beca",$data_beca);
		}

		function actualizarBeca($data_publicacion,$data_beca,$data_carrera,$data_imagen){
			if($data_imagen["imagen"]="" && $data_imagen["tipo"]==""){

			}else{
				$this->actualizarImagen($data_imagen);
			}

			$this->actualizarPublicacion($data_publicacion);

			$this->actualizarFiltro($data_carrera,$data_publicacion["publicacion_id"]);

			$this->db->where("beca_id",$data_beca["beca_id"]);
			$this->db->update("beca",$data_beca);

			
		}

		function eliminarBeca($publicacion_id,$usuario_id){

			parent::eliminarPublicacion($publicacion_id,$usuario_id);

			$this->db->where("publicacion_id",$publicacion_id);
			$this->db->where("usuario_id",$usuario_id);
			$this->db->delete("beca");
		}

	}
?>