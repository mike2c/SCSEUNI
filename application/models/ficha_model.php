<?php defined('BASEPATH') OR exit('No direct script access allowed');
	include "publicacion_model.php";
	class  Ficha_model extends Publicacion_model{

		function __construct(){
			parent::__construct("listar_fichas");

		}

		function insertar($data_publicacion,$data_ficha,$ficha_carreras,$data_imagen){
			
			$data_publicacion["imagen_publicacion_id"] = $this->insertarImagen($data_imagen);

			$data_ficha["publicacion_id"] = $this->insertarPublicacion($data_publicacion);

			$this->insertarFiltro($data_ficha);
			$this->actualizarFiltro($ficha_carreras,$data_ficha["publicacion_id"]);
	
			$this->db->insert("ficha",$data_ficha);
			
		}

		function actualizar($data_publicacion,$data_ficha,$ficha_carreras,$data_imagen){

			if($data_imagen["imagen"]="" && $data_imagen["tipo"]==""){

			}else{
				$this->actualizarImagen($data_imagen);
			}

			$this->actualizarPublicacion($data_publicacion);

			$this->actualizarFiltro($ficha_carreras,$data_publicacion["publicacion_id"]);

			$this->db->where("ficha_id",$data_ficha["ficha_id"]);
			$this->db->update("ficha",$data_ficha);

		}

		function eliminar($ficha_id){
			
			$this->db->query("call eliminar_ficha($ficha_id);");
		}

	}
?>