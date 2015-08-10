<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Beca  extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("beca_model");
			$this->load->library("form_validation");
			$this->load->helper("sesion");
			$this->load->helper("imagen");
			$this->load->helper("url");
		}

		function Index(){
		
		}

		// function Publicar($id_beca){

		// }

		function guardar(){
			
			$conf=array(
				array("field"=>"descripcion","label"=>"descripcion","rules"=>"required"),
				array('field'=>"fecha_publicacion",'label'=>"fecha_publicacion",'rules'=>'required',
					'errors'=>array('required'=>'El campo  no puede quedar vacio')),
				array('field'=>"fecha_alta",'label'=>"fecha_alta",'rules'=>'required',
					'errors'=>array('required'=>'El campo  no puede quedar vacio')),
				array('field'=>"url",'label'=>"url",'rules'=>'required',
					'errors'=>array('required'=>'El campo  no puede quedar vacio')),
				);



				$this->form_validation->set_rules($conf);

				if($this->form_validation->run()==FALSE){
			$this->load->view("cabecera");
			$this->load->view("nav");
			//$this->load->view("guardar_publicacion");
			$this->load->view("guardar_beca");
			$this->load->view("footer");
			}else{

				$this->load->model("beca_model");
				$this->load->helper("url");
				//$data_publicacion["publicador_id"] =2;
				$data_publicacion["descripcion"] = $this->input->post("descripcion");
				$data_publicacion["fecha_publicacion"] = $this->input->post("fecha_publicacion");
				$data_publicacion["fecha_alta"] = $this->input->post("fecha_alta");
				
				
				//ESCAPA LA IMAGEN DE CARACTERES QUE PUEDEN OCASIONAR UN ERROR EN LA CONSULTA SQL izi nab
				$img = escaparImagen("imagen");
				
				$data_publicacion["imagen"]= $img["imagen"];

				$data_publicacion["tipo"]= $img["tipo"];
				$data_beca["url"]= $this->input->post("url");

			

					$this->beca_model->insertar($data_publicacion,$data_beca);

					echo "Guardado";
		

			}
		
		}

		function listar(){

			$this->load->model("beca_model","modelo");

			$data["reg"] = $this->modelo->listarbeca();
			
			$this->load->view("listar_beca",$data);
			
		}
		//function Eliminar(){

			// $id_ficha = $this->input->post("ficha_id");

			// if(is_array($id_ficha)){

			// 	for($i= 0; i< count($id_ficha);$i++){
			// 		$this->ficha_model->eliminar($id_ficha[$i]);
			// 	}

			// }else{
			// 	$this->ficha_model->eliminar($id_ficha);
			// }
			
			// echo "eliminado";
		}

	}
?>