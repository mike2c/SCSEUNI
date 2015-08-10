<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class  Ficha_model extends CI_Model{

		function __construct(){
			parent::__construct();
			$this->load->database();
			$this->load->library("session");
			
		}

		function insertar($data_publicacion,$data_ficha,$ficha_carreras){

			$this->db->insert("publicacion",$data_publicacion);
			$data_ficha["publicacion_id"] = $this->db->insert_id();

			for($i = 0; $i < count($ficha_carreras); $i++){
				$this->db->query("insert into publicacion_carrera(publicacion_id,carrera_id) values('$data_ficha[publicacion_id]','$ficha_carreras[$i]');");
			}
			$this->db->insert("ficha",$data_ficha);
			
		}

		function actualizar($data_publicacion,$data_ficha){

			$this->db->where("publicacion_id",$data_publicacion["publicacion_id"]);
			$this->db->update("publicacion",$data_publicacion);

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