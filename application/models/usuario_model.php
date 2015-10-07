<?php 
	class Usuario_model extends CI_Model{

		private $view_name = null;

		function __construct($view_name){
			
			parent::__construct();
			
			$this->load->database();
			$this->view_name = $view_name;
		}
		
		function desactivarCuenta($usuario_id){
			$this->db->query("update usuario set activo=false where usuario_id=$usuario_id");
		}

		function activarCuenta($usuario_id){
			$this->db->query("update usuario set activo=true where usuario_id=$usuario_id");
		}

		function listar($where = "",$like = "",$order_by="",$where_in="",$fields = ""){
			
			if($where != ""){
				$this->db->where($where);
			}
			if($like != ""){
				$this->db->like($like);
			}
			if($fields != ""){
				$this->db->select($fields);
			}
			if($order_by != ""){
				$this->db->order_by($order_by,"asc");
			}
			if($where_in != ""){
				$this->db->where_in(key($where_in),$where[key($where_in)]);
			}
			return $this->db->get($this->view_name);
		}

		function existe_correo($correo,$usuario = null){
			
			#Verificamos si el usuario no es null y no esta vacio
			if($usuario != null && !empty($usuario)){
				$this->db->where("usuario_id !=",$usuario);	
			}

			#Verificamos si el correo no es null o esta vacio
			if($correo != null && !empty($correo)){
				$this->db->where("correo",$correo);	
			}else{
				throw new Exception("Error el parametro correo es null o vacio", 1);
			}

			$query = $this->db->get("usuario");
			if($query->num_rows() > 0){
				return TRUE;
			}
			
			return  FALSE;
		}


	}

 ?>