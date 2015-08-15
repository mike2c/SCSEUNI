<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Curriculum_model extends CI_Model{

		function __construct(){
			parent::__construct();
		}

		public function guardarCurriculum($usuario_id){
			$this->db->insert("curriculum",array("usuario_id"=>$usuario_id));
		}
		
		public guardarFormacionAcademica($data){
			$this->db->insert("formacion_academica",$data);
		}

		public guardarExperienciaLaboral($data){
			$this->db->insert("experiencia_laboral",$data);
		}

		public guardarformacionComplementaria($data){
			$this->db->insert("formacion_complementaria",$data);
		}

		public guardarIdiomas($data){
			$this->db->insert("idioma",$data);
		}

		public guardarInformatica($data){
			$this->db->insert("informatica",$data);
		}

		
	}
?>