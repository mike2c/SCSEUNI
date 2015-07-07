<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Ficha extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("ficha_model","ficha");
			$this->load->library("form_validation");
			$this->load->helper("sesion");
			$this->load->helper("imagen");
		}

		function Index(){
		
		}

		function Publicar($id_ficha){

		}

		function Guardar(){
			
			$conf=array(
				array("field"=>"descripcion","label"=>"descripcion","rules"=>"required")
				);
			$this->form_validation->set_rules($conf);

			if($this->form_validation->run()==FALSE){
				$this->load->view("cabecera");
				$this->load->view("nav");
				//$this->load->view("guardar_publicacion",array("cabecera"=>"Crear ficha ocupacional"));
				$this->load->view("guardar_ficha");
				$this->load->view("footer");
			}else{
				$data_publicacion["publicador_id"] = $this->input->post(1);
				$data_publicacion["descripcion"] = $this->input->post("publicador_id");
				$data_publicacion["fecha_publicacion"] = $this->input->post("publicador_id");
				$data_publicacion["fecha_alta"] = $this->input->post("publicador_id");
				//ESCAPA LA IMAGEN DE CARACTERES QUE PUEDEN OCASIONAR UN ERROR EN LA CONSULTA SQL izi nab
				$img = escaparImagen("imagen");
				$data_publicacion["imagen"]= $img["imagen"];
				$data_publicacion["tipo"]= $img["tipo"];

				$data_ficha["cargo"]= $this->input->post("cargo");
				$data_ficha["ubicacion"]= $this->input->post("ubicacion");
				$data_ficha["cantidad"]= $this->input->post("cantidad");
				$data_ficha["jefe"]= $this->input->post("jefe");
				$data_ficha["a_cargo"]= $this->input->post("a_cargo");
				$data_ficha["finalidad"]= $this->input->post("finalidad");
				$data_ficha["funciones"]= $this->input->post("funciones");
				$data_ficha["requisitos"]= $this->input->post("requisitos");
				$data_ficha["experiencia"]= $this->input->post("experiencia");
				$data_ficha["competencia"]= $this->input->post("ubicacion");
				$data_ficha["publicada"] = $this->input->post("publicar");

				$this->ficha->insertar($data_publicacion,$data_ficha);
				echo "Guardado";
			}
		
		}

		function Eliminar(){

			$id_ficha = $this->input->post("ficha_id");

			if(is_array($id_ficha)){

				for($i= 0; i< count($id_ficha);$i++){
					$this->ficha_model->eliminar($id_ficha[$i]);
				}

			}else{
				$this->ficha_model->eliminar($id_ficha);
			}
			
			echo "eliminado";
		}

	}
?>