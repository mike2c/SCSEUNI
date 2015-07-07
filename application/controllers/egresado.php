<?php defined('BASEPATH') OR exit('No direct script access allowed');
	//DEFINIENDO LA CONSTANTE  IS_AJAX
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	
	class Egresado extends CI_Controller{

		
		function __construct(){
			parent::__construct();
			$this->load->helper("url");
			$this->load->helper("form_helper");
			$this->load->library("form_validation");

			#DEFINIENDO LAS REGLAS
				$config = array(
				array('field'=>"nombre",'label'=>"Nombre",'rules'=>'required|max_lenght[45]',
					'errors'=>array('required'=>'El campo nombre no puede quedar vacio')),
				array('field'=>"apellido",'label'=>"Apellido",'rules'=>'required|max_lenght[45]',
					'errors'=>array('required'=>'El campo apellido no puede quedar vacio')),
				array('field'=>"carnet",'label'=>"Carnet",'rules'=>'required|max_lenght[10]',
					'errors'=>array('required'=>'El campo carnet no puede quedar vacio')),
				array('field'=>"genero",'label'=>"Genero",'rules'=>'required',
					'errors'=>array('required'=>'El campo sexo no puede quedar vacio')),
				array('field'=>"celular",'label'=>"Celular",'rules'=>'max_lenght[10]'),
				array('field'=>"telefono",'label'=>"Celular",'rules'=>'max_lenght[10]'),
				array('field'=>"correo",'label'=>"Correo",'rules'=>'max_lenght[45]'),
				array('field'=>"direccion",'label'=>"Dirección",'rules'=>'max_lenght[100]')

			);
			$this->form_validation->set_rules($config);
		}

		function Autenticar(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("autenticar_egresado");
			$this->load->view("footer");
		}
		
		function index(){
			$this->load->model("egresado_model","egresados");
			$this->load->view("busqueda_egresado");
			$data["egresado"] = $this->egresados->listarEgresados();
			$this->load->view("lista_egresados",$data);
		}

		#FUNCION PARA REGISTRAR UN NUEVO EGRESADO
		function registro(){
		

			#Asignando las reglas hechas.
					
			if($this->form_validation->run()==FALSE){
				$this->load->model("listas_model","lista");
				$data["departamentos"] = $this->lista->listarDepartamentos();
				$data["carreras"] = $this->lista->listarCarreras();
				
				$this->load->view("registro_egresado",$data);
			
				}else{
				$this->load->model("egresado_model");
				$egresado = new Egresado_model();

				$data_persona["nombre"] = $this->input->post("nombre");
				$data_persona["apellido"] = $this->input->post("apellido");
				$data_persona["sexo"] = $this->input->post("genero");
				$data_persona["fecha_nacimiento"] = $this->input->post("fecha_nacimiento");;

				$data_contacto["telefono"] = $this->input->post("telefono");
				$data_contacto["celular"] = $this->input->post("celular");
				$data_contacto["direccion"] = $this->input->post("direccion");
				$data_contacto["municipio_id"] = 1; #$this->input->post("municipio");;

				$data_egresado["carnet"] = $this->input->post("carnet");
				$data_egresado["cedula"] = $this->input->post("cedula");;
				$data_egresado["titulado"] = FALSE;
				$data_egresado["trabaja"] = FALSE;
				$data_egresado["carrera_id"] = $this->input->post("carrera");;

				$data_usuario["correo"] = $this->input->post("correo");;
				$data_usuario["activo"] = FALSE;

				$egresado->insertarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto);
				?>
					<script type="text/javascript">
						window.alert("Egresado registrado correctamente");
					</script>
				<?				
			}
			
		}
	
		function edicion(){
		
			$this->load->model("egresado_model");
		
			$modelo = new Egresado_model();

			$data_persona["persona_id"] = $this->input->post("persona_id");
			$data_persona["nombre"] = $this->input->post("nombre");
			$data_persona["apellido"] = $this->input->post("apellido");
			$data_persona["sexo"] = $this->input->post("sexo");
			$data_persona["fecha_nacimiento"] = $this->input->post("fecha_nacimiento ");

			$data_contacto["contacto_id"]= $this->input->post("contacto_id");
			$data_contacto["telefono"] = $this->input->post("telefono");
			$data_contacto["celular"] = $this->input->post("celular");
			$data_contacto["direccion"] = $this->input->post("direccion");
			$data_contacto["municipio_id"] = $this->input->post("municipio");

			$data_egresado["egresado_id"]= $this->input->post("egresado_id");
			$data_egresado["carnet"] = $this->input->post("carnet");
			$data_egresado["cedula"] = $this->input->post("cedula");
			$data_egresado["titulado"] = $this->input->post("titulado");
			$data_egresado["trabaja"] = $this->input->post("trabaja");
			$data_egresado["carrera_id"] = $this->input->post("carrera");

			$data_usuario["usuario_id"]= $this->input->post("usuario_id");
			$data_usuario["correo"] = $this->input->post("correo");
			$data_usuario["clave"] = $this->input->post("clave");
			#$data_usuario["activo"] = $this->input->post("activo");

			$modelo->actualizarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto);
			
		}

		function Busqueda(){
			$campo = $this->input->post("filtro");
			$valor = $this->input->post("busqueda");

			$this->load->model("egresado_model","egresados");
			$data["egresado"] = $this->egresados->buscarEgresado($campo,$valor);
			$this->load->view("lista_egresados",$data);
		}
	}
?>