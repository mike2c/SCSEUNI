<?php
	class Admin_model extends CI_Model{
		function __construct(){
			parent::__construct();
			$this->load->library('session');
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

		function getInfo(){
			$user_id = $this->session->userdata('administrador');

			$data_usuario['data_usuario'] = $this->db->query("select correo, clave, imagen_perfil from usuario where usuario.usuario_id = '$user_id[usuario_id]'");
			$data_usuario['data_persona'] = $this->db->query("select nombre, apellido, sexo, fecha_nacimiento from persona where persona.persona_id = '$user_id[persona_id]'");

			return $data_usuario;
		}
	}
?>