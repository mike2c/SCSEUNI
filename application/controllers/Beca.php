<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	class Beca  extends CI_Controller{
	
		function __construct(){
			parent::__construct();
			$this->load->model("beca_model");
			$this->load->model("listas_model");
			$this->load->library("form_validation");
			$this->load->helper(array("sesion","imagen","url","form","fecha"));
			
			if(sesionIniciada()){
				if(esEmpresa() || esPublicador() || esAdminitrador()){

				}else{
					exit ("mensaje");
				}
			}
		}

		function Index(){
			$this->listar();
		}
		function validarCampos(){
			$this->form_validation->set_rules("url","URL","required|max_length[50]|min_length[10]");
			$this->form_validation->set_rules("fecha_alta","Fecha de Alta","required|max_length[10]|min_length[10]");
			$this->form_validation->set_rules("descripcion","Descripción","required|max_length[200]|min_length[10]");
			$this->form_validation->set_rules("carreras[]","Carreras","required");
			if($this->form_validation->run()==FALSE){
				return validation_errors();
			}else{
				return TRUE;
			}
		}

		function crearBeca(){
			$info["carreras"] = $this->listas_model->listarCarreras();
			$info["errores"]  = $this->validarCampos();

			if(IS_AJAX){
				if(!$info["errores"]==TRUE){
					$this->load->view("beca/guardar_beca",$info);
				}else{
					$data_publicacion["usuario_id"] = getUsuarioId();
					$data_publicacion["descripcion"] = nl2br($this->input->post("descripcion"));

					$data_publicacion["fecha_publicacion"] = date("Y-m-d");
					$data_publicacion["fecha_alta"] =  format_date($this->input->post("fecha_alta"));

					$img = escaparImagen("imagen");
			
					$data_publicacion["imagen"] = $img["imagen"];
					$data_publicacion["tipo"] = $img["tipo"];

					$data_beca["url"] = $this->input->post("url");

					$data_carrera = $this->input->post("carreras[]");
					$cont_carrera = $this->listas_model->listarCarreras();

					$this->beca_model->guardarBeca($data_publicacion,$data_beca,$data_carrera,$cont_carrera);
					$this->listar();
				}
			}
		}

		function listar(){
			$data["becas"] = $this->beca_model->listar(array("usuario_id"=>getUsuarioId()),"","listar_becas");
			if (IS_AJAX) {
				$this->load->view("beca/listar_beca",$data);
			}
		}

		function editar(){
			$beca_id=$_GET["beca_id"];
			$data["beca"]=$this->beca_model->listar(array("usuario_id"=>getUsuarioId(),"beca_id"=>$beca_id),"","listar_becas")->result();
			$data["carrera"] = $this->beca_model->listarCarrera($data["beca"]);
			$data["carreras"] = $this->listas_model->listarCarreras();
			if (IS_AJAX) {
				$this->load->view("update_beca",$data);
			}
		}

		function updateBeca(){

			$beca_id=$this->input->post("beca_id");
			$data["beca"]=$this->beca_model->listar(array("usuario_id"=>getUsuarioId(),"beca_id"=>$beca_id),"","listar_becas")->result();
			$data["carrera"] = $this->beca_model->listarCarrera($data["beca"]);
			$data["carreras"] = $this->listas_model->listarCarreras();
			
			$data["errores"] = $this->validarCampos();

			if(!$data["errores"]==TRUE){
				$this->load->view("beca/update_beca",$data);
			}else{

				$data_publicacion["usuario_id"] = getUsuarioId();
				$data_publicacion["publicacion_id"] = $this->input->post("publicacion_id");
				$data_beca["beca_id"] = $this->input->post("beca_id");
				$data_publicacion["descripcion"] = nl2br($this->input->post("descripcion"));

				$data_publicacion["fecha_publicacion"] = date("Y-m-d");
				$data_publicacion["fecha_alta"] =  format_date($this->input->post("fecha_alta"));
				
				if($_FILES){
					$img = escaparImagen("imagen");
			
					$data_publicacion["imagen"] = $img["imagen"];
					$data_publicacion["tipo"] = $img["tipo"];
				}
				
				$data_beca["url"] = $this->input->post("url");

				$data_carrera = $this->input->post("carreras[]");

				$this->beca_model->updateBeca($data_publicacion,$data_beca,$data_carrera);

				$this->listar();
		}
	}
	function hola(){
		$this->beca_model->deleteBeca(null,null);
	}
}
?>