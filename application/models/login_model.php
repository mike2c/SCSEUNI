<?php
	class Login_model extends CI_Model{
		function __construct(){
			parent:: __construct();
		}
		function testUser($data_usuario){
			$query = $this->db->query("select usuario.usuario_id from egresado, usuario where usuario.correo = '$data_usuario[correo]' and usuario.clave = '$data_usuario[clave]' and usuario.usuario_id = egresado.usuario_id;");
			$query2 = $this->db->query("select usuario.usuario_id from admin, usuario where usuario.correo='$data_usuario[correo]' and usuario.clave='$data_usuario[clave]' and usuario.usuario_id = admin.usuario_id;");
			$query3 = $this->db->query("select usuario.usuario_id from publicador, usuario where usuario.correo = '$data_usuario[correo]' and usuario.clave = '$data_usuario[clave]' and usuario.usuario_id = publicador.usuario_id;");
			if($query->num_rows()>0){
				$data_usuario['usuario_id'] = $query->row_array();
			}else if($query2->num_rows()>0){
				$data_usuario['usuario_id'] = $query2->row_array();
			}else if($query3->num_rows()>0){
				$data_usuario['usuario_id'] = $query3->row_array();
			}else{
				$data_usuario['usuario_id'] = false;
			}

			return $data_usuario['usuario_id'];
		}
	}