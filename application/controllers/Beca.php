<?php defined('BASEPATH') OR exit('No direct script access allowed');
	if(!isset($_SESSION["publicador"])){
		#DESCOMENTAR ESTA LINEA CUANDO EL SISTEMA ESTE TERMINADO.
		//exit ("Error 404. pagina no encontrada");
	}
	class Beca  extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("beca_model");
			$this->load->model("listas_model");
			$this->load->library("form_validation");
			$this->load->helper(array("sesion","imagen","url","form","fecha"));
		}

		function Index(){
		
		}

		function crearBeca(){
			$info["carreras"] = $this->listas_model->listarCarreras();

			$this->form_validation->set_rules("descripcion","Descripción","required|max_length[50]|min_length[10]");
			$this->form_validation->set_rules("fecha_alta","Fecha de Alta","required|max_length[10]|min_length[10]");
			$this->form_validation->set_rules("descripcion","Descripción","required|max_length[200]|min_length[10]");
			$this->form_validation->set_rules("carreras[]","Carreras","required");

			if($this->form_validation->run()==FALSE){
				$this->load->view("cabecera");
				$this->load->view("nav");
				echo validation_errors();
				$this->load->view("guardar_beca",$info);
				$this->load->view("footer");
			}else{
				$data_publicacion["usuario_id"] = getUsuarioId();
				$data_publicacion["descripcion"] = nl2br($this->input->post("descripcion"));

				$fecha_actual = getdate();
				$data_publicacion["fecha_publicacion"] = $fecha_actual["year"]. "-". $fecha_actual["mon"]. "-".$fecha_actual["mday"] ;
				$data_publicacion["fecha_alta"] =  format_date($this->input->post("fecha_alta"));

				$img = escaparImagen("imagen");
		
				$data_publicacion["imagen"] = $img["imagen"];
				$data_publicacion["tipo"] = $img["tipo"];

				$data_beca["url"] = $this->input->post("url");

				$data_carrera = $this->input->post("carreras[]");


				$this->beca_model->guardarBeca($data_publicacion,$data_beca,$data_carrera);
				
			}
		}
	}
?>