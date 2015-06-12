<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Listas_model extends CI_Model{

		function __construct(){
			parent::__construct();
			$this->load->database();
			$this->load->helper("url");
		}	

		function listarDepartamentos(){
			return $this->db->get("departamento");
		}

		function listarMunicipios($departamento_id){
			$this->db->where("departamento_id",$departamento_id);
			return $this->db->get("municipio");
		}

		function listarCarreras(){
			return $this->db->get("carrera");
		}
	}
?>