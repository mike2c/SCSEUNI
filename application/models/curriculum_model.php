<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Curriculum_model extends CI_Model{

		function __construct(){
			parent::__construct();
			$this->load->database();
		}

		public function guardarCurriculum($usuario_id){
			$this->db->insert("curriculum",array("usuario_id"=>$usuario_id));
			return $this->db->insert_id();
		}
		
		public function guardarFormacionAcademica($data){
			$this->db->insert("formacion_academica",$data);
		}

		public function guardarExperienciaLaboral($data){
			$this->db->insert("experiencia_laboral",$data);
		}

		public function guardarformacionComplementaria($data){
			$this->db->insert("formacion_complementaria",$data);
		}

		public function guardarIdiomas($data){
			$this->db->insert("idioma",$data);
		}

		public function guardarInformatica($data){
			$this->db->insert("informatica",$data);
		}

		public function existe($egresado_id){
			$query = $this->db->query("select curriculum_id from curriculum where egresado_id=". $egresado_id);
			if($query->num_rows()){
				return $query->row()->curriculum_id;
			}

			return false;
		}
	}
?>