<?php defined('BASEPATH') OR exit('No direct script access allowed');
	include_once "publicacion_model.php";
	class  Ficha_model extends Publicacion_model{

		function __construct(){
			parent::__construct("listar_fichas");

		}

		function insertar($data_ficha){
			
			$this->db->insert("ficha",$data_ficha);
			return $this->db->insert_id();	
		}

		function actualizar($data_publicacion,$data_ficha,$ficha_carreras){

			$this->actualizarPublicacion($data_publicacion);
			$this->actualizarFiltro($ficha_carreras,$data_publicacion["publicacion_id"]);
			$this->db->where("ficha_id",$data_ficha["ficha_id"]);
			$this->db->update("ficha",$data_ficha);
		}

		function eliminarFicha($publicacion_id,$usuario_id){
			
			parent::eliminarPublicacion($publicacion_id,$usuario_id);
			
			$this->db->where("publicacion_id",$publicacion_id);
			$this->db->delete("ficha");
		}

		function consultar_por_carrera($arr){

			if(is_null($arr) || empty($arr)){
				return null;
			}
			
			$this->db->select("*")->from("listar_fichas,publicacion_carrera");
			$this->db->where("listar_fichas.publicacion_id=publicacion_carrera.publicacion_id");
			$this->db->where("fecha_alta >=",date("Y-m-d"));
			$this->db->where("visible",TRUE);
			$this->db->where("filtro",TRUE);
			$this->db->where_in("publicacion_carrera.carrera_id",$arr);
			$this->db->group_by("listar_fichas.publicacion_id");
			
			return $this->db->get();
		}
	}
?>