<?php
	class Sesion_model extends CI_Model{
		
		function __construct(){
			parent:: __construct();
			$this->load->library('session');
			$this->load->database();
		}

		function esAdministrador($data_usuario){
			$query = $this->db->query("select usuario.usuario_id,correo,concat(nombre,' ',apellido) as nombre from admin,usuario,persona where usuario.correo='$data_usuario[correo]' and usuario.clave='$data_usuario[clave]' and usuario.usuario_id = admin.usuario_id and persona.persona_id = admin.persona_id;");
				if($query->num_rows()>0){
				return $query->row_array();
				#FALTA POR REVISAR - OBTENER ID DE PERSONA PARA LA FUNCION UPDATE DE ADMINISTRADOR
			}
			return null;
		}																																																													

		function esEgresado($data_usuario){
			$query = $this->db->query("select usuario.usuario_id,correo,nombre,apellido from egresado,usuario,persona where usuario.correo = '$data_usuario[correo]' and usuario.clave = '$data_usuario[clave]' and usuario.usuario_id = egresado.usuario_id and persona.persona_id = egresado.persona_id;");
			if($query->num_rows()>0){
				return $query->row_array();
			}
			return null;
		}
 
		function esEmpresa($data_usuario){
			$query = $this->db->query("select usuario.usuario_id, nombre_empresa as nombre, correo from usuario, empresa where usuario.correo = '$data_usuario[correo]' and usuario.clave = '$data_usuario[clave]' and usuario.usuario_id = empresa.usuario_id;");
			$query = $this->db->query("select usuario.usuario_id,nombre_empresa as nombre, correo from usuario, empresa where usuario.correo = '$data_usuario[correo]' and usuario.clave = '$data_usuario[clave]' and usuario.usuario_id = empresa.usuario_id;");

			if($query->num_rows()>0){
				return $query->row_array();
			}
			return null;
		}

		function esPublicador($data_usuario){
			
			$query = $this->db->query("select usuario.usuario_id,correo,concat(nombre,' ',apellido) as nombre from publicador,usuario,persona where usuario.correo = '$data_usuario[correo]' and usuario.clave = '$data_usuario[clave]' and usuario.usuario_id = publicador.usuario_id and persona.persona_id = publicador.persona_id;");
			if($query->num_rows()>0){
				return $query->row_array();
			}
			return null;
		}

		function getSesion_id($user_id){
			$this->session->set_userdata($user_id['usuario_id']);
			$this->session->set_userdata('tipo_usuario',$user_id['tipo_usuario']);
		}

		function actualizarSesion($usuario){
		
			$this->db->query("call actualizar_sesion('$usuario');");
		
		}
	}