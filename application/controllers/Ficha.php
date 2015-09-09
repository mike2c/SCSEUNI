<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');

	class Ficha extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("ficha_model","ficha");
			$this->load->model("listas_model","lista");
			$this->load->library("form_validation");
			$this->load->helper(array("imagen","fecha","sesion"));

			if(!sesionIniciada()){
				exit("ERROR DE ACCESO, no hay una sesion activa");
			}
		}

		function Index(){
			$this->Listar();
		}

		function validarCampos(){
			$this->form_validation->set_rules("descripcion","Descripcion","required|max_length[200]|min_length[10]");
			$this->form_validation->set_rules("fecha_alta","Fecha de Alta","required|max_length[10]|min_length[10]");
			$this->form_validation->set_rules("cargo","Denominacion del cargo","required|max_length[20]|min_length[5]");
			$this->form_validation->set_rules("ubicacion","Ubicacion del Cargo","required|max_length[20]|min_length[3]");
			$this->form_validation->set_rules("cantidad","Cantidad de Puestos","required|max_length[20]|min_length[1]");
			$this->form_validation->set_rules("jefe","Jefe inmediato","required|max_length[30]|min_length[3]");
			$this->form_validation->set_rules("a_cargo","Personal a Cargo","required|max_length[100]|min_length[3]");
			$this->form_validation->set_rules("finalidad","Finalidad del Puesto","required|max_length[200]|min_length[5]");
			$this->form_validation->set_rules("funciones","Funciones y Responsabilidades","required|max_length[300]|min_length[5]");
			$this->form_validation->set_rules("requisitos","Requisitos del Puesto","required|max_length[200]|min_length[5]");
			$this->form_validation->set_rules("experiencia","Experiencia Necesario","required|max_length[100]|min_length[5]");
			$this->form_validation->set_rules("competencia","Competencia","required|max_length[100]|min_length[5]");
			$this->form_validation->set_rules("carreras[]","Carreras","required");

			if($this->form_validation->run()==FALSE){
				echo validation_errors();
			}
		}
		
		#CREANDO UNA FICHA OCUPACIONAL NUEVA	
		function Crear(){
			
			if(IS_AJAX){
				if(is_string(validarCampos())){
					echo validarCampos();
				}
			}else{
				if($this->insertar() == true){
					echo "<script>
						alert('Publicación guardada correctamente');
						window.location='" . base_url("Perfil") . "';	
					</script>";
				}
			}
		}

		function Listar(){
			$this->load->model("listas_model","lista");

			$data["fichas"] = $this->ficha->listar(array("usuario_id"=>getUsuarioId()));
			$data["carreras"] = $this->lista->listarCarreras();

			if(IS_AJAX){
				$this->load->view("ficha/listar_fichas",$data);
				$this->load->view("ficha/crear_ficha",$data);
			}
		}

		function Editar($ficha_id){
			$data["ficha"] = $this->ficha->listar(array("usuario_id"=>getUsuarioId(),"ficha_id"=>$ficha_id))->result();
			$data["carrera"] = $this->ficha->listarCarrera($data["ficha"]);
			$data["carreras"] = $this->lista->listarCarreras();

			if(IS_AJAX){
				$this->load->view("ficha/editar_ficha",$data);
			}
		}

		private function Insertar(){

			try{
				$img = escaparImagen("imagen");
				$data_imagen = array();
				if($img != null){
					$data_imagen["imagen"]= $img["imagen"];
					$data_imagen["tipo"]= $img["tipo"];
				}else{
					$data_imagen["imagen"]= null;
					$data_imagen["tipo"]= null;
				}
				
				$data_publicacion["imagen_publicacion_id"] = $this->ficha->insertarImagen($data_imagen);
				$data_publicacion["descripcion"] = nl2br($this->input->post("descripcion"));
				$data_publicacion["fecha_publicacion"] = date("Y-m-d");
				$data_publicacion["fecha_alta"] = format_date($this->input->post('fecha_alta'));
				$data_publicacion["usuario_id"] = getUsuarioId();
				$data_publicacion["visible"] = true;
				
				$data_ficha["publicacion_id"] = $this->ficha->insertarPublicacion($data_publicacion);

				$data_ficha["cargo"]= $this->input->post("cargo");
				$data_ficha["ubicacion"]= $this->input->post("ubicacion");
				$data_ficha["cantidad"]= $this->input->post("cantidad");
				$data_ficha["jefe"]= $this->input->post("jefe");
				$data_ficha["a_cargo"]= $this->input->post("a_cargo");
				$data_ficha["finalidad"]= nl2br($this->input->post("finalidad"));
				$data_ficha["funciones"]= nl2br($this->input->post("funciones"));
				$data_ficha["requisitos"]= nl2br($this->input->post("requisitos"));
				$data_ficha["experiencia"]= $this->input->post("experiencia");
				$data_ficha["competencia"]= nl2br($this->input->post("competencia"));
				
				$this->ficha->insertar($data_ficha);
				$data_carrera = $this->input->post("carreras[]");

				$this->ficha->insertarFiltro($data_ficha);
				$this->ficha->actualizarFiltro($data_carrera,$data_ficha["publicacion_id"]);
			}catch(Exception $e){
				return false;
			}
			
			return true;	
		}

		function Actualizar(){

			$data_publicacion["publicacion_id"] = $this->input->post("publicacion_id");
			$data_publicacion["descripcion"] = nl2br($this->input->post("descripcion"));
			$data_publicacion["fecha_publicacion"] = date("Y-m-d");
			$data_publicacion["fecha_alta"] = format_date($this->input->post("fecha_alta"));
					
			$img = escaparImagen("imagen");
			$data_imagen = array();
			if($img != null){
				$data_imagen["imagen"]= $img["imagen"];
				$data_imagen["tipo"]= $img["tipo"];
				$data_imagen["imagen_publicacion_id"] = $this->input->post("imagen_publicacion_id");
				$this->ficha->actualizarImagen();
			}
						
			$data_ficha["ficha_id"] = $this->input->post("ficha_id");
			$data_ficha["cargo"]= $this->input->post("cargo");
			$data_ficha["ubicacion"]= $this->input->post("ubicacion");
			$data_ficha["cantidad"]= $this->input->post("cantidad");
			$data_ficha["jefe"]= $this->input->post("jefe");
			$data_ficha["a_cargo"]= $this->input->post("a_cargo");
			$data_ficha["finalidad"]= nl2br($this->input->post("finalidad"));
			$data_ficha["funciones"]= nl2br($this->input->post("funciones"));
			$data_ficha["requisitos"]= nl2br($this->input->post("requisitos"));
			$data_ficha["experiencia"]= $this->input->post("experiencia");
			$data_ficha["competencia"]= nl2br($this->input->post("competencia"));
			
			$data_carrera = $this->input->post("carreras[]");
			$this->ficha->actualizar($data_publicacion,$data_ficha,$data_carrera);

			echo "
				<script stype='text/javascript'>
					alert('Actualizada');
					window.location='". base_url("Perfil")."';
				</script>
			";
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