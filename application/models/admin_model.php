<?php
	class Admin_model extends CI_Model{
		function __construct(){
			parent::__construct();
		}

		function insertarAdmin( $data_usuario,$data_persona){
			if($this->db->insert("usuario",$data_usuario)){
				$data_admin['usuario_id']= $this->db->insert_id();

				if($this->db->insert("persona",$data_persona)){
					$data_admin['persona_id']=$this->db->insert_id();

					$this->db->insert("admin",$data_admin);
				}
				
			}
			
		}
		function updateAdmin($data_usuario, $data_persona){
			$this->db->where('usuario_id',$data_usuario['usuario_id']);
			$this->db->update('usuario',$data_usuario);

			$this->db->where('persona_id',$data_persona['persona_id']);
			$this->db->update('persona',$data_persona);
		}

		function borrarAdmin($data_usuario){
			$this->db->where('usuario_id',$data_usuario['usuario_id']);
			$this->db->update('usuario',$data_usuario);
		}
	}
?>