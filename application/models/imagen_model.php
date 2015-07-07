<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Imagen_model extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->database();
		}

		function guardar($data){
			$this->db->query("insert into imagen(imagen,tipo) values ('$data[imagen]','$data[tipo]');");
		}

		function mostrar($id_imagen){

			$result= $this->db->query("select imagen,tipo from imagen where imagen_id=".$id_imagen)->result_array();
			$data["data"]=$result[0]["imagen"];
			$data["tipo"]=$result[0]["tipo"];

			return $data;
		}
	}
?>