<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class  Beca_model extends CI_Model{

		function __construct(){
			parent::__construct();
			$this->load->database();
			//$this->load->library("session");
			
		}

		function insertar($data_publicacion,$data_beca){

			$this->db->insert("publicacion",$data_publicacion);
			$data_beca["publicacion_id"] = $this->db->insert_id();
			$this->db->insert("beca",$data_beca);

		}


		function listarbeca(){

		return $this->db->query("select descripcion,fecha_publicacion,fecha_alta,url from publicacion,beca where publicacion.publicacion_id = beca.publicacion_id");
				}
				 

		function actualizar($data_publicacion,$data_beca){

			// $this->db->where("pubicacion_id",$data_publicacion["publicacion_id"]);
			// $this->db->insert("publicacion",$data_publicacion);

			// $this->db->where("ficha_id",$data_ficha["ficha_id"]);
			// $this->db->insert("ficha",$data_ficha);

		}

		function eliminar($ficha_id){
			
			//$this->db->query("call eliminar_ficha($ficha_id);");
		}

		
	}
?>