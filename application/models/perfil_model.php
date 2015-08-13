<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Perfil_model  extends CI_Model{

		function __construct(){
			parent::__construct();
		}

		function getClave($usuario_id){
			$resultado = $this->db->query("select clave from usuario where usuario_id=". $usuario_id)->result();
			return $resultado[0]->clave;
		}

		function cambiarClave($usuario_id,$clave){
			$this->db->query("update usuario set clave='$clave' where usuario_id=". $usuario_id);
		}

		function getUsuarioEmpresas(){
			return $this->db->query("select correo,usuario_id,nombre_empresa as nombre from registro_empresas;");
		}


		function getUsuarioEgresados(){
			return $this->db->query("select correo,usuario_id,concat(nombre,' ',apellido) as nombre from registro_egresados;");
		}


		function getUsuarioPublicadores(){
			return $this->db->query("select imagen,correo,usuario_id,concat(nombre,' ',apellido) as nombre from registro_publicadores;");
		}

		function getUsuarioAdministradores(){
			//return $this->db->query("select correo,usuario_id,concat(nombre,' ',apellido) as nombre from usuario,administrador,persona where usuario.usuario_id=administrador.usuario_id and persona.persona_id=administrador.persona_id;");
		}

		function actualizarImagen($usuario_id,$nombre_imagen){
			$this->db->query("update usuario set imagen = '$nombre_imagen' where usuario_id=".$usuario_id);
		}

		function getImagen($usuario_id){
			$query = $this->db->query("select imagen from usuario where usuario_id=".$usuario_id)->row();
			
			return $query->imagen;
		}
	}
?>