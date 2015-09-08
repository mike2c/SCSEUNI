<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	class Curso extends CI_Controller{
		function __contruct(){
			parent::__contruct();
			$this->load->model("curso_model");
			$this->load->model("listas_model","lista");
			$this->load->library("form_validation");
			$this->load->helper(array("imagen","fecha","sesion"));

			if (!sesionIniciada()) {
				exit("ERROR DE ACCESO, no hay una sesion activa");
			}
		}
		function Index(){
			$this->listar();
		}
		function validarCampos(){
			$this->form_validation->set_rules("descripcion","Descripcion","required|max_length[200]|min_length[10]");
			$this->form_validation->set_rules("fecha_alta","Fecha de Alta","required|max_length[10]|min_length[10]");
			$this->form_validation->set_rules("carreras[]","Carreras del Curso","required");
			$this->form_validation->set_rules("cost","Costo del Curso","required|decimal|min_length[1]|max_length[200]");
			$this->form_validation->set_rules("duracion","Duracion del Curso","required|integer");

			if ($this->form_validation->run()==FALSE) {
				return validation_errors();
			}else{
				return TRUE;
			}
		}
		function Crear(){
			
			$data["carreras"] = $this->lista->listarCarreras();
			$data["errores"] = $this->validarCampos();

			if(IS_AJAX){
				if(!$data["errores"]==TRUE){
					$this->load->view("ficha/crear_ficha",$data);
				}else{
					$this->Insertar();
					$url = base_url("Perfil");
					echo "
						<script stype='text/javascript'>
							alert('Ficha ocupacional guardada');
							window.location='$url';
						</script>
					";
				}
			}
		}

		function Insertar(){
			$data_publicacion["usuario_id"] = getUsuarioId();
			$data_publicacion["descripcion"] = nl2br($this->input->post("descripcion"));

			$data_publicacion["fecha_publicacion"] = date("Y-m-d");
			$data_publicacion["fecha_alta"] =  format_date($this->input->post("fecha_alta"));

			$img = escaparImagen("imagen");			
			$data_imagen["imagen"] = $img["imagen"];
			$data_imagen["tipo"] = $img["tipo"];

			$data_curso["costo"] = $this->input->post("costo");
			$data_curso["duracion"] = $this->input->post("duracion");

			if (!$this->input->post("libre")=="") {
				$data_curso["libre"] = TRUE;
			}else{
				$data_curso["libre"] = FALSE;
			}
			
			$data_carrera = $this->input->post("carreras[]");

			$this->curso_model->Insertar($data_publicacion,$data_curso,data_carrera,$data_imagen);
		}

		function Listar(){
			$this->load->model("listas_model","lista");

			$data["fichas"] = $this->ficha->listar(array("usuario_id"=>getUsuarioId()),"","listar_cursos");
			$data["carreras"] = $this->lista->listarCarreras();

			if(IS_AJAX){
				$this->load->view("curso/listar_cursos",$data);
				$this->load->view("curso/crear_cursos",$data);
			}
		}

		function editar($curso_id){
			$data["curso"] = $this->ficha->listar(array("usuario_id"=>getUsuarioId(),"curso_id"=>$curso_id),"","listar_curso")->result();
			$data["carrera"] = $this->ficha->listarCarrera($data["curso"]);
			$data["carreras"] = $this->lista->listarCarreras();

			if(IS_AJAX){
				$this->load->view("curso/editar_curso",$data);	
			}
		}

		function actualizar(){

			$ficha_id = $this->input->post("curso_id");
			$data["curso"] = $this->ficha->listar(array("usuario_id"=>getUsuarioId(),"ficha_id"=>$curso_id),"","listar_cursos")->result();
			$data["carrera"] = $this->ficha->listarCarrera($data["curso"]);
			$data["carreras"] = $this->lista->listarCarreras();

			if(!$data["errores"]==TRUE){
				$this->load->view("ficha/editar_curso",$data);
			}else{
				$data_publicacion["usuario_id"] = getUsuarioId();
				$data_publicacion["descripcion"] = nl2br($this->input->post("descripcion"));

				$data_publicacion["fecha_publicacion"] = date("Y-m-d");
				$data_publicacion["fecha_alta"] =  format_date($this->input->post("fecha_alta"));

				$img = escaparImagen("imagen");			
				$data_imagen["imagen"] = $img["imagen"];
				$data_imagen["tipo"] = $img["tipo"];

				$data_curso["costo"] = $this->input->post("costo");
				$data_curso["duracion"] = $this->input->post("duracion");

				if (!$this->input->post("libre")=="") {
					$data_curso["libre"] = TRUE;
				}else{
					$data_curso["libre"] = FALSE;
				}
				
				$data_carrera = $this->input->post("carreras[]");

				$this->curso_model->actualizar($data_publicacion,$data_curso,$curso_carreras,$data_imagen);
				$this->listar();
			}
		}

		function eliminar(){
			
		}
	}
?>