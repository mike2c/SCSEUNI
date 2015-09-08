<?php defined('BASEPATH') OR exit('No direct script access allowed');
	include "publicacion_model.php";
	class  Ficha_model extends Publicacion_model{

		function __construct(){
			parent::__construct();
		}

		function insertar($data_publicacion,$data_ficha,$ficha_carreras){

			$data_ficha["publicacion_id"] = $this->insertarPublicacion($data_publicacion);

			$this->insertarFiltro($data_ficha);
			$this->actualizarFiltro($ficha_carreras,$data_ficha["publicacion_id"]);
	
			$this->db->insert("ficha",$data_ficha);
			
		}

		function actualizar($data_publicacion,$data_ficha,$ficha_carreras){

			$this->actualizarPublicacion($data_publicacion);

			$this->actualizarFiltro($ficha_carreras,$data_publicacion["publicacion_id"]);

			$this->db->where("ficha_id",$data_ficha["ficha_id"]);
			$this->db->update("ficha",$data_ficha);

		}

		function eliminar($ficha_id){
			
			$this->db->query("call eliminar_ficha($ficha_id);");
		}

		function listar($where = "",$fields = "*"){
			if($where != ""){
				$this->db->where($where);
			}

			return $this->db->get("listar_fichas_empresa");
		}
	}
?>