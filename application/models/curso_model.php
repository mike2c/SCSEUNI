<?php defined('BASEPATH') OR exit('No direct script access allowed');
	include_once "publicacion_model.php";

	class Curso_model extends Publicacion_model{

		function __construct(){
			parent::__construct("listar_cursos");
		}

		function insertar($data_curso){
			$this->db->insert("curso",$data_curso);
		}

		function actualizar($data_curso){

			$this->db->where("curso_id",$data_curso["curso_id"]);
			$this->db->update("curso",$data_curso);
		}
		
		function eliminar($publicacion_id,$usuario_id){

			parent::eliminarPublicacion($publicacion_id,$usuario_id);
			$this->db->where("publicacion_id",$publicacion_id);
			$this->db->delete("curso");
		}

		function filtrar_fichas(){
			
		}

	}