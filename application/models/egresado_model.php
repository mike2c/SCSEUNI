<?php

	class Egresado_model extends CI_Model{

		function __construct(){
			parent::__construct();
			/*$this->load->database();*/
		}

		function insertarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto){

			$this->db->insert("contacto",$data_contacto);
			$data_egresado["contacto_id"] = $this->db->insert_id();
			
			$this->db->insert("usuario",$data_usuario);
			$data_egresado["usuario_id"] = $this->db->insert_id();

			$this->db->insert("persona",$data_persona);
			$data_egresado["persona_id"] = $this->db->insert_id();

			$this->db->insert("egresado",$data_egresado);
		
		}

		function actualizarEgresado($data){

		}

		function eliminarEgresado($data){

		}
	}

?>