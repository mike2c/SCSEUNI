<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class  Ficha_model extends CI_Model{

		function __construct(){
			parent::__construct();
			$this->load->database();
			$this->load->library("session");
			
		}

		function insertar($data_publicacion,$data_ficha){

			$this->db->insert("publicacion",$data_publicacion);
			$data_ficha["publicacion_id"] = $this->db->insert_id();

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
			
			return $this->db->query("select $fields from listar_fichas_empresa ". $where);
		}
	}
?>