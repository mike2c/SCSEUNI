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
			return $this->db->query("select correo,usuario.usuario_id,nombre_empresa as nombre from usuario,empresa where usuario.usuario_id=empresa.usuario_id;");
		}


		function getUsuarioEgresados(){
			return $this->db->query("select correo,usuario.usuario_id,concat(nombre,' ',apellido) as nombre from usuario,egresado,persona where usuario.usuario_id=egresado.usuario_id and persona.persona_id=egresado.persona_id;");
		}


		function getUsuarioPublicadores(){
			return $this->db->query("select correo,usuario.usuario_id,concat(nombre,' ',apellido) as nombre from usuario,publicador,persona where usuario.usuario_id=publicador.usuario_id and persona.persona_id=publicador.persona_id;");
		}

		function getUsuarioPublicador(){
			//return $this->db->query("select correo,usuario_id,concat(nombre,' ',apellido) as nombre from usuario,administrador,persona where usuario.usuario_id=administrador.usuario_id and persona.persona_id=administrador.persona_id;");
		}

	}
?>