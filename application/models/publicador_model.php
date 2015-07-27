<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Publicador_model extends CI_Model{

		function __construct(){
			parent::__construct();
			$this->load->database();
		}

		function insertar($data_persona,$data_usuario,$data_publicador){

			$this->db->insert("persona",$data_persona);
			$data_publicador["persona_id"] = $this->db->insert_id();

			$this->db->insert("usuario",$data_usuario);
			$data_publicador["usuario_id"] = $this->db->insert_id();

			$this->db->insert("publicador",$data_publicador);
		
		}

		function listar(){

			return ($this->db->get("registro_publicadores"));
			
		}

		function buscarPublicador($campo,$valor){
			return $this->db->query("select * from registro_publicadores where $campo like'%$valor%'");
		}


	}
?>