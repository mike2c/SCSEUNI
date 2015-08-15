<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');

	class Ficha extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("ficha_model","ficha");
			$this->load->library("form_validation");
			$this->load->helper("sesion");
			$this->load->helper("imagen");
		}

		function Index(){
			$this->Listar();
		}

		#CREANDO UNA FICHA OCUPACIONAL NUEVA	
		function Crear(){
			#Terminar de programar la validacion
			$this->load->model("listas_model","lista");

			$data["carreras"] = $this->lista->listarCarreras();
			$conf=array(
			array("field"=>"descripcion","label"=>"descripcion","rules"=>"required")
			);

			$this->form_validation->set_rules($conf);

			if(!IS_AJAX){
				if($this->form_validation->run()==FALSE){

					$this->load->view("cabecera");
					$this->load->view("nav");
					echo validation_errors();
					$this->load->view("ficha/crear_ficha",$data);
					$this->load->view("footer");
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
			}else{
				if(!$_POST){
					$this->load->view("ficha/crear_ficha",$data);
				}else{
					if($this->form_validation->run()==FALSE){
						echo validation_errors();
					}else{
						try{
							$this->Insertar();
						}catch(Exception $e){
							echo $e->getMessage();
						}
											
					}
				}
			}
		}

		function Listar(){

			$data["fichas"] = $this->ficha->listar(array("usuario_id"=>getUsuarioId()));

			if(IS_AJAX){
				$this->load->view("ficha/listar_fichas",$data);
			}else{
				$this->load->view("cabecera");
				$this->load->view("nav");
				$this->load->view("ficha/listar_fichas",$data);
				$this->load->view("footer");
			}
		}

		function Editar($ficha_id){
			$this->load->helper("imagen");
			
			$data["ficha"] = $this->ficha->listar(array("usuario_id"=>getUsuarioId(),"ficha_id"=>$ficha_id))->result();
			
			if(IS_AJAX){
				$this->load->view("ficha/editar_ficha",$data);	
			}else{
				$this->load->view("cabecera");
				$this->load->view("nav");
				$this->load->view("editar_ficha",$data);
				$this->load->view("footer");
			}
		}

		private function Insertar(){
			if(!sesionIniciada()){
				exit("La sesion ha caducado");
			}
			#$data_publicacion["publicador_id"] = $this->input->post("publicador_id");
			$data_publicacion["descripcion"] = nl2br($this->input->post("descripcion"));

			$fecha_actual = getdate();

			$data_publicacion["fecha_publicacion"] = date("Y-m-d", strtotime($fecha_actual["mday"]. "/". $fecha_actual["mon"]. "/". $fecha_actual["year"]));
			
			$originalDate = str_replace("/", "-",$this->input->post("fecha_alta") );
			$newDate = date("Y-m-d", strtotime($originalDate));
			$data_persona["fecha_alta"] = $newDate;

			$data_publicacion["usuario_id"] = getUsuarioId();
			
			//ESCAPA LA IMAGEN DE CARACTERES QUE PUEDEN OCASIONAR UN ERROR EN LA CONSULTA SQL izi nab
			$img = escaparImagen("imagen");
			
			$data_publicacion["imagen"]= $img["imagen"];
			$data_publicacion["tipo"]= $img["tipo"];

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
			$data_ficha["publicada"] = $this->input->post("publicar");

			$data_carrera = $this->input->post("carreras");

			$this->ficha->insertar($data_publicacion,$data_ficha,$data_carrera);
		}

		function Actualizar(){
			if(!sesionIniciada()){
				exit("La sesion ha caducado");
			}
			$data_publicacion["publicacion_id"] = $this->input->post("publicacion_id");
			$data_publicacion["descripcion"] = $this->input->post("descripcion");

			$fecha_actual = getdate();
			$data_publicacion["fecha_publicacion"] = date("Y-m-d", strtotime($fecha_actual["mday"]. "/". $fecha_actual["mon"]. "/". $fecha_actual["year"]));
			$data_publicacion["fecha_alta"] = date("Y-m-d",strtotime($this->input->post("fecha_alta")));
					
			if($_FILES){
				$img = escaparImagen("imagen");
				$data_publicacion["imagen"]= $img["imagen"];
				$data_publicacion["tipo"]= $img["tipo"];
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
			$data_ficha["publicada"] = $this->input->post("publicar");

			$this->ficha->actualizar($data_publicacion,$data_ficha);

			$url = base_url("Perfil");
			echo "
				<script stype='text/javascript'>
					alert('Actualizada');
					window.location='$url';
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