<?php
	class Publicacion_model extends CI_Model{

		private $view_name = null;

		function __construct(){
			
			parent::__construct();
			
			$this->load->library('session');
			$this->load->helper(array("sesion"));
		}

		function actualizarPublicacion($data_publicacion){
			$this->db->where("publicacion_id",$data_publicacion["publicacion_id"]);
			$this->db->update("publicacion",$data_publicacion);
		}

		function insertarPublicacion($data_publicacion){
			$this->db->insert("publicacion",$data_publicacion);
			return $this->db->insert_id();
		}

		function listar($where = "",$fields = ""){
			if($where != ""){
				$this->db->where($where);
			}
			if($fields != ""){
				$this->select($fields);
			}

			return $this->db->get("");
		}

		function listarCarrera($data_publicacion){
			foreach($data_publicacion as $row){
				return $data = $this->db->query("select publicacion_carrera_id, carrera_id,filtro from publicacion_carrera where publicacion_carrera.publicacion_id = '$row->publicacion_id';");
			}
		}

		function insertarFiltro($data_publicacion){
			$cont_carrera = $this->db->get("carrera");
			foreach ($cont_carrera->result() as $row) { 
				$this->db->query("insert into publicacion_carrera(publicacion_id,carrera_id,filtro) values('$data_publicacion[publicacion_id]',$row->carrera_id,false);");
			}
		}
		
		function actualizarFiltro($data_carrera,$publicacion_id){
			$data = $this->db->query("select publicacion_id,carrera_id,filtro from publicacion_carrera where publicacion_carrera.publicacion_id = '$publicacion_id';");
			$this->db->where("publicacion_id",$publicacion_id);
			$this->db->update("publicacion_carrera",array("filtro"=>false));

			$encontrado=true;

			if($data->num_rows()>0){

				for ($i=0; $i < count($data_carrera); $i++){
					$encontrado =false;

					foreach($data->result() as $row){ 

						if($row->carrera_id==$data_carrera[$i]){
							$encontrado=true;
							break;
						}
					}

					if ($encontrado==false) {

						$save = array("publicacion_id"=>$publicacion_id,"carrera_id"=>$data_carrera[$i],"filtro"=>true);
						$this->db->insert("publicacion_carrera",$save);

					}else{

						$this->db->where("carrera_id",$data_carrera[$i]);
						$this->db->where("publicacion_id",$publicacion_id);
						$this->db->update("publicacion_carrera",array("filtro"=>true));
					}
				}
			}
		}
	}
?>