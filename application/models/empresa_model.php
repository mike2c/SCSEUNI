<?php 

	class Empresa_model extends CI_Controller{


		function __construct(){
			parent::__construct();
			$this->load->database();
		}

		function insertarEmpresa($data_usuario,$data_empresa,$data_contacto){

			$this->db->insert("usuario",$data_usuario);
			$data_empresa["usuario_id"] = $this->db->insert_id();
			
			$this->db->insert("contacto",$data_contacto);
			$data_empresa["contacto_id"] = $this->db->insert_id();
			
			$this->db->insert("empresa",$data_empresa);
			
		}

		function editarEmpresa($data_usuario,$data_empresa,$data_contacto){

			$this->db->where("usuario_id",$data_usuario["usuario_id"]);
			$this->db->update("usuario",$data_usuario);

			$this->db->where("contacto_id",$data_contacto["contacto_id"]);
			$this->db->update("contacto",$data_contacto);

			$this->db->where("empresa_id",$data_empresa["empresa_id"]);
			$this->db->update("empresa",$data_empresa);

		}

		function eliminarEmpresa($empresa_id,$contacto_id,$usuario_id){
			$this->db->query("delete from empresa where empresa_id=" & $empresa_id);
			$this->db->query("delete from usuario where usuario_id" & $usuario_id);
			$this->db->query("delete from contacto where contacto_id=" & $contacto_id);
		}
	}
	
 ?>