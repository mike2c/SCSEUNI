<?php 
	const EGRESADO = 1;
	const EMPRESA = 2;
	const PUBLICADOR = 3;
	const ADMIN = 4;

	class Usuario_model extends CI_Model{

		public $usuario;

		function __construct(){
			parent::__construct();
			$this->load->database();

		}
		
		function desactivarCuenta($usuario_id){
			$this->db->query("update usuario set activo=false where usuario_id=$usuario_id");
		}

		function activarCuenta($usuario_id){
			$this->db->query("update usuario set activo=true where usuario_id=$usuario_id");
		}


	}


 ?>