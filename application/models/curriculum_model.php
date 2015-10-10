<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Curriculum_model extends CI_Model{

		function __construct(){
			parent::__construct();
			$this->load->database();
		}
		
		public function getEgresadoID($usuario_id){
			$query = $this->db->query("SELECT egresado_id from egresado where egresado.usuario_id=".$usuario_id.";");
			if ($query->num_rows()>0) {
				return $query->row();
			}else {
				return NULL;
			}
		}
		
		public function getCurriculumID($usuario_id){
			$egresado_id = $this->getEgresadoID($usuario_id);
			if (!$egresado_id->egresado_id==NULL){
				$curriculum_id = $this->db->query("SELECT curriculum_id from curriculum where curriculum.egresado_id = '$egresado_id->egresado_id';");
				if ($curriculum_id->num_rows()>0) {
					return $curriculum_id->row();
				}else {
					return NULL;
				}
				
			}else{
				return NULL;
			}
		}
		
		public function listarCurriculo($curriculum_id){
			$data_curriculo["experiencia_laboral"]=$this->listarExperienciaLaboral($curriculum_id);
			$data_curriculo["formacion_academica"]=$this->listarFormacionAcademica($curriculum_id);
			$data_curriculo["formacion_complementaria"]=$this->listarFormacionComplementaria($curriculum_id);
			$data_curriculo["idioma"]=$this->listarIdiomas($curriculum_id);
			$data_curriculo["informatica"]=$this->listarInformatica($curriculum_id);
			$data_curriculo["curriculum_id"]= $curriculum_id;
			return $data_curriculo;
		}
		
		public function listarExperienciaLaboral($curriculum_id){
			$query = $this->db->query("SELECT experiencia_laboral_id,empresa,cargo,fecha_comienzo,fecha_finalizacion from experiencia_laboral where experiencia_laboral.curriculum_id = '$curriculum_id';");
			if ($query->num_rows()>0) {
				return $query;
			}else{
				return NULL;
			}
		}
		
		public function listarFormacionAcademica($curriculum_id){
			$query = $this->db->query("SELECT formacion_academica_id,fecha_comienzo, fecha_finalizacion, titulo_id from formacion_academica where formacion_academica.curriculum_id = '$curriculum_id';");
			if ($query->num_rows()>0) {
				return $query;
			}else {
				return NULL;
			}
		}
		
		public function listarFormacionComplementaria($curriculum_id){
			$query = $this->db->query("select formacion_complementaria_id,curso, fecha_comienzo, fecha_finalizacion from formacion_complementaria where formacion_complementaria.curriculum_id='$curriculum_id';");
			if ($query->num_rows()>0) {
				return $query;
			}else{
				return NULL;
			}
		}
		
		public function listarIdiomas($curriculum_id){
			$query =$this->db->query("select idioma_id,idioma, nivel from idioma where idioma.curriculum_id = '$curriculum_id';");
			if ($query->num_rows()>0) {
				return $query;
			}else {
				return NULL;
			}
		}
		
		public function listarInformatica($curriculum_id){
			$query =$this->db->query("select informatica_id,software, nivel from informatica where informatica.curriculum_id = '$curriculum_id';");
			if ($query->num_rows()>0) {
				return $query;
			}else {
				return NULL;
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
		
		public function actualizarFormacionAcademica($data,$id){
			$this->db->where("formacion_academica_id",$id);
			$this->db->update("formacion_academica",$data);
		}
		
		public function actualizarFormacionComplementaria($data,$id){
			$this->db->where("curriculum_id",$id);
			$this->db->update("formacion_complementaria",$data);
		}
		
		public function actualizarExperienciaLaboral($data,$id){
			$this->db->where("curriculum_id",$id);
			$this->db->update("experiencia_laboral",$data);
		}
		
		public function actualizarIdiomas($data,$id){
			$this->db->where("curriculum_id",$id);
			$this->db->update("idioma",$data);
		}
		
		public function actualizarInformatica($data,$id){
			$this->db->where("curriculum_id",$id);
			$this->db->update("informatica",$data);
		}
		
		public function actualizarOGuardar($data_bd,$id="",$data){
			if($data_bd!=""){
			foreach ($data_bd->result() as $bd_info) {
				if(isset($bd_info->formacion_academica_id)){//FORMACION ACADEMICA
					if ($bd_info->formacion_academica_id == $id) {
						$this->actualizarFormacionAcademica($data,$id);
						break;
					}else{
						$this->guardarFormacionAcademica($data);
						break;
					}
				}elseif(isset($bd_info->experiencia_laboral_id)){//EXPERIENCIA LABORAL
					if ($bd_info->experiencia_laboral_id == $id){
						$this->actualizarExperienciaLaboral($data,$id);
						break;
					}else{
						$this->guardarExperienciaLaboral($data);
						break;	
					}
				}elseif(isset($bd_info->formacion_complementaria_id)){//FORMACION COMPLEMENTARIA
					if ($bd_info->formacion_complementaria_id == $id) {
						$this->actualizarFormacionComplementaria($data,$id);
						break;
					}else{
						$this->guardarformacionComplementaria($data);
						break;
					}
				}elseif(isset($bd_info->idioma_id)){//IDIOMA
					if ($bd_info->idioma_id == $id) {
						$this->actualizarIdiomas($data,$id);
						break;
					}else{
						$this->guardarIdiomas($data);
						break;
					}
				}elseif(isset($bd_info->informatica_id)){//INFORMATICA
					if ($bd_info->informatica_id == $id) {
						$this->actualizarInformatica($data,$id);
						break;
					}else{
						$this->guardarInformatica($data);
						break;
					}
				}
			}
			}else{
				if(isset($data["titulo_id"])){
					$this->guardarFormacionAcademica($data);
				}elseif(isset($data["empresa"])){
					$this->guardarExperienciaLaboral($data);
				}elseif (isset($data["curso"])) {
					$this->guardarformacionComplementaria($data);
				}elseif (isset($data["idioma"])) {
					$this->guardarIdiomas($data);
				}elseif (isset($data["software"])) {
					$this->guardarInformatica($data);
				}
			}
		}
				
		function borrarExperienciaLaboral($tipo,$data){
			if($tipo==TRUE){
				$this->db->where("experiencia_laboral_id",$data["experiencia_laboral_id"]);
				$this->db->delete("experiencia_laboral");
			}else{
				$data_bd =$this->listarCurriculo($data["curriculum_id"]);
				foreach($data_bd["experiencia_laboral"]->result() as $db_data){
					if ($db_data->experiencia_laboral_id != $data["experiencia_laboral_id"]) {
						$this->db->where("experiencia_laboral_id",$data["experiencia_laboral_id"]);
						$this->db->delete("experiencia_laboral");
					}
				}
			}
		}
		
		function borrarFormacionAcademica($data){
			$this->db->where("formacion_academica_id",$data["formacion_academica_id"]);
			$this->db->delete("formacion_academica");
		}
		
		function borrarFormacionComplementaria($tipo,$data){
			$this->db->where("formacion_complementaria_id",$data["formacion_complementaria_id"]);
			$this->db->delete("formacion_complementaria");
		}
		
		function borrarIdioma($tipo,$data){
			$this->db->where("idioma_id",$data["idioma_id"]);
			$this->db->delete("idioma");
		}
		function borrarInformatica($tipo,$data){
			$this->db->where("informatica_id",$data["informatica_id"]);
			$this->db->delete("informatica");
		}
		
		function borrarCurriculo($data){
			$this->db->where("curriculum_id",$data["curriculum_id"]);
			$this->db->delete("curriculum",$data);
		}
	}
?>