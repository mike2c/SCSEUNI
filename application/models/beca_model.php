<?php defined('BASEPATH') OR exit('No direct script access allowed');
	include "publicacion_model.php";
	class  Beca_model extends Publicacion_model{

		function __construct(){
			parent::__construct();
		}


		function guardarBeca($data_publicacion,$data_beca,$data_carrera){	
			$data_beca["publicacion_id"] = $this->insertarPublicacion($data_publicacion);
			$this->insertarFiltro($data_beca);
			$this->actualizarFiltro($data_carrera,$data_beca["publicacion_id"]);
			$this->db->insert("beca",$data_beca);
		}

		function updateBeca($data_publicacion,$data_beca,$data_carrera){
			$this->db->where("publicacion_id",$data_publicacion["publicacion_id"]);
			$this->db->update("publicacion",$data_publicacion);

			$this->db->where("beca_id",$data_beca["beca_id"]);
			$this->db->update("beca",$data_beca);

			$this->actualizarFiltro($data_carrera,$data_publicacion["publicacion_id"]);
		}

		function deleteBeca($data_publicacion,$data_beca){

		}
	}
?>