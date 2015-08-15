<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class  Beca_model extends CI_Model{

		function __construct(){
			parent::__construct();
			$this->load->database();
			$this->load->library("session");
		}

		function guardarBeca($data_publicacion,$data_beca,$data_carrera){
			$this->db->insert("publicacion",$data_publicacion);
			$data_beca["publicacion_id"] = $this->db->insert_id();
			for ($i=0; $i < count($data_carrera) ; $i++) { 
				$this->db->query("insert into publicacion_carrera(publicacion_id,carrera_id) values('$data_beca[publicacion_id]',$data_carrera[$i]);");
			}
			
			$this->db->insert("beca",$data_beca);
		}
	}
?>