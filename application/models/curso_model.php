<?php defined('BASEPATH') OR exit('No direct script access allowed');
	include "publicacion_model.php";
	class curso_model extends Publicacion_model{
		function __contruct(){
			parent::__contruct("listar_cursos");
		}

		function insertar($data_publicacion,$data_curso,$curso_carreras,$data_imagen){
			$data_publicacion["imagen_publicacion_id"] = $this->insertarImagen($data_imagen);

			$data_curso["publicacion_id"]=$this->insertarPublicacion($data_publicacion);

			$this->insertarFiltro($data_curso);
			$this->actualizarFiltro($curso_carreras,$data_curso["publicacion_id"]);

			$this->db->insert("curso",$data_curso);
		}

		function actualizar($data_publicacion,$data_curso,$curso_carreras,$data_imagen){

			if($data_imagen["imagen"]="" && $data_imagen["tipo"]==""){

			}else{
				$this->actualizarImagen($data_imagen);
			}

			$this->actualizarPublicacion($data_publicacion);

			$this->actualizarFiltro($curso_carreras,$data_publicacion["publicacion_id"]);

			$this->db->where("curso_id",$data_curso["curso_id"]);
			$this->db->update("curso",$data_curso);
		}

		function eliminar(){

		}
	}