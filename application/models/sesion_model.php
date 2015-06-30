<?php
	class Sesion_model extends CI_Model{
		
		function __construct(){
			parent:: __construct();
			$this->load->library('session');
			$this->load->database();
		}

		function esAdministrador($data_usuario){
			$query = $this->db->query("select usuario.usuario_id,correo from admin, usuario where usuario.correo='$data_usuario[correo]' and usuario.clave='$data_usuario[clave]' and usuario.usuario_id = admin.usuario_id;");
				if($query->num_rows()>0){
				return $query->row_array();
				#FALTA POR REVISAR - OBTENER ID DE PERSONA PARA LA FUNCION UPDATE DE ADMINISTRADOR
			}
			return null;
		}																																																													

		function esEgresado($data_usuario){
			$query = $this->db->query("select usuario.usuario_id,correo from egresado,usuario where usuario.correo = '$data_usuario[correo]' and usuario.clave = '$data_usuario[clave]' and usuario.usuario_id = egresado.usuario_id;");
			if($query->num_rows()>0){
				return $query->row_array();
			}
			return null;
		}
 
		function esEmpresa($data_usuario){
			$query = $this->db->query("select usuario.usuario_id, correo from usuario, empresa where usuario.correo = '$data_usuario[correo]' and usuario.clave = '$data_usuario[clave]' and usuario.usuario_id = empresa.usuario_id;");
			if($query->num_rows()>0){
				return $query->row_array();
			}
			return null;
		}

		function esPublicador($data_usuario){
			
			$query = $this->db->query("select usuario.usuario_id,correo from publicador, usuario where usuario.correo = '$data_usuario[correo]' and usuario.clave = '$data_usuario[clave]' and usuario.usuario_id = publicador.usuario_id;");
			if($query->num_rows()>0){
				return $query->row_array();
			}
			return null;
		}

		function getSesion_id($user_id){
			$this->session->set_userdata($user_id['usuario_id']);
			$this->session->set_userdata('tipo_usuario',$user_id['tipo_usuario']);
		}
	}