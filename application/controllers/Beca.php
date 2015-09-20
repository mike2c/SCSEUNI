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
			$this->form_validation->set_rules("programa_academico","Programa académico","required|max_length[60]|min_length[10]");
			$this->form_validation->set_rules("fecha_alta","Fecha de Alta","required|max_length[10]|min_length[10]");
			$this->form_validation->set_rules("descripcion","Descripción","required|max_length[200]|min_length[10]");
			$this->form_validation->set_rules("carreras[]","Carreras","required");
			if($this->form_validation->run()==FALSE){
				echo  validation_errors();
			}

		}

		function CrearBeca(){
			
			$imagen = escaparImagen("imagen");	
			if($imagen != null){
				$data_imagen["imagen"] = $imagen["imagen"];
				$data_imagen["tipo"] = $imagen["tipo"];
			}else{
				$data_imagen["imagen"] = null;
				$data_imagen["tipo"] = null;
			}

			$data_publicacion["usuario_id"] = getUsuarioId();
			$data_publicacion["descripcion"] = nl2br($this->input->post("descripcion"));
			$data_publicacion["fecha_publicacion"] = date("Y-m-d");
			$data_publicacion["fecha_alta"] =  format_date($this->input->post("fecha_alta"));
			$data_publicacion["visible"] = TRUE;

			//Insertamos la informacion de la imagen y capturamos su id
			$data_publicacion["imagen_publicacion_id"] = $this->beca_model->insertarImagen($data_imagen);
			
			//Insertamos la informacion en la tabla publicacion y capturamos su id
			$data_beca["publicacion_id"] = $this->beca_model->insertarPublicacion($data_publicacion);
			$data_beca["url"] = $this->input->post("url");
			$data_beca["programa_academico"] = $this->input->post("programa_academico");

			//Insertamos la informacion en la tabla beca	
			$this->beca_model->insertarBeca($data_beca);

			$data_carrera = $this->input->post("carreras[]");
			$this->beca_model->insertarFiltro($data_beca);
			$this->beca_model->actualizarFiltro($data_carrera,$data_beca["publicacion_id"]);

			echo "<script>
				alert('Publicacion guardada correctamente');
				window.location= '". base_url('Perfil') ."';
			</script>";
		}

		function Listar(){
			$data["becas"] = $this->beca_model->listar(array("usuario_id"=>getUsuarioId()));
			$this->load->model("listas_model");
			$data["carreras"] = $this->listas_model->listarCarreras();
			if (IS_AJAX) {
				$this->load->view("beca/crear_beca",$data);
				$this->load->view("beca/listar_becas",$data);
			}
		}

		function Editar($publicacion_id){
			$data["beca"]=$this->beca_model->listar(array("usuario_id"=>getUsuarioId(),"publicacion_id"=>$publicacion_id));
			
			$data["carrera"] = $this->beca_model->listarCarrera($publicacion_id);
			if (IS_AJAX) {
				$this->load->view("beca/editar_beca",$data);
			}
		}

	function Actualizar(){

		if(IS_AJAX){

			echo $this->validarCampos();
		}else{

			$data_publicacion["usuario_id"] = getUsuarioId();
			$data_publicacion["publicacion_id"] = $this->input->post("publicacion_id");
			$data_publicacion["descripcion"] = nl2br($this->input->post("descripcion"));
			$data_publicacion["fecha_publicacion"] = date("Y-m-d");
			$data_publicacion["fecha_alta"] =  format_date($this->input->post("fecha_alta"));
			
			$img = escaparImagen("imagen");
			if($img != null && !empty($img)){
				$data_imagen["imagen"] = $img["imagen"];
				$data_imagen["tipo"] = $img["tipo"];
				$data_imagen["imagen_publicacion_id"] = $this->input->post("imagen_publicacion_id");
				$this->beca_model->actualizarImagen($data_imagen);
			}
		
			$data_beca["beca_id"] = $this->input->post("beca_id");
			$data_beca["programa_academico"] = $this->input->post("programa_academico");
			$data_beca["url"] = $this->input->post("url");

			$data_carrera = $this->input->post("carreras[]");

			$this->beca_model->actualizarPublicacion($data_publicacion);
			$this->beca_model->actualizarFiltro($data_carrera,$data_publicacion["publicacion_id"]);
			$this->beca_model->actualizarBeca($data_beca);
			redirect("Perfil?page=becas");

		}
	}
	
	function Eliminar(){
		$becas = $this->input->post("publicacion");
		$usuario_id = getUsuarioId();
		if(empty($becas)){
			return;
		}
		if(is_array($becas)){

			foreach ($becas as $key => $value) {
				$this->beca_model->eliminarBeca($value,$usuario_id);
			}

		}else{
			$this->beca_model->eliminarBeca($value,$usuario_id);
		}
	}
}
?>