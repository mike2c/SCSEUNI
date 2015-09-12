<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Curriculum_model extends CI_Model{

		function __construct(){
			parent::__construct();
			$this->load->database();
		}
		
		public function getEgresadoID($usuario_id){
			$query = $this->db->query("SELECT egresado_id from egresado where egresado.usuario_id=".$usuario_id.";");
			if ($query->num_rows()>0){
				return $query->row();
			}else{
				return FALSE;
			}
		}

		public function guardarCurriculum($egresado_id){
			$this->db->insert("curriculum",array("egresado_id"=>$egresado_id));
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
		
		public function listar($egresado_id){
			$query = $this->db->query("SELECT * FROM curriculum,experiencia_laboral,formacion_academica,formacion_complementaria,idioma,informatica where curriculum.egresado_id=".$egresado_id.";");
			if ($query->num_rows()>0) {
				return $query->result();
			}else{
				return false;
			}
		}
		
		public function actualizarFormacionAcademica(){
			
		}
	}
?>