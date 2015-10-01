<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');

	
	class CPanel extends CI_Controller{

		function __construct(){
			parent::__construct();
			
			$this->load->helper("sesion");
			if(!esAdministrador()){
			#echo_404();
			}
		}

		function index(){
			$this->load->view("cabecera");
			$this->load->view("panel/panel.php");
			$this->load->view("footer");
		}

		function ListarEgresados(){
			
			if(IS_AJAX){
				$this->load->model("egresado_model","egresados");
				$this->load->model("listas_model","listas");

				if(isset($_POST["busqueda"])){

					$like["carrera_id"] = $this->input->post("carrera");
					$data["carrera_seleccionada"] = $this->input->post("carrera");

					$campo = $this->input->post("campo");
					if(!empty($campo)){
						$like["carrera_id"] = $this->input->post("carrera");
						$like[$campo] = $this->input->post("busqueda");
						$data["busqueda"] = $this->input->post("busqueda");
						$data["campo"] = $campo;
					}
					
					$data["registros"] = $this->egresados->listar(null,$like);
				}else{
					$data["registros"] = $this->egresados->listar();
				}
				
				$data["carreras"] = $this->listas->listarCarreras();
				$this->load->view("panel/lista/listar_egresados",$data);
			}
		}

		function RegistrarEgresado(){

			if(IS_AJAX){
				$this->load->view("panel/registro/registrar_egresado");
			}
		}

		function ListarEmpresas(){

			if(IS_AJAX){
				$this->load->model("empresa_model","empresas");
				$this->load->model("listas_model","listas");
				$this->load->helper("fecha");

				if(isset($_POST["busqueda"])){

					$like["sociedad_id"] = $this->input->post("sociedad");
					$data["sociedad_seleccionada"] = $this->input->post("sociedad");

					$campo = $this->input->post("campo");
					if(!empty($campo)){
						$like["sociedad_id"] = $this->input->post("sociedad");
						$like[$campo] = $this->input->post("busqueda");
						$data["busqueda"] = $this->input->post("busqueda");
						$data["campo"] = $campo;
					}
					
					$data["registros"] = $this->empresas->listar(null,$like);
				}else{
					$data["registros"] = $this->empresas->listar();
				}
				
				$data["sociedades"] = $this->listas->listarSociedades();
				$this->load->view("panel/lista/listar_empresas",$data);
			}
		}

		function ListarPublicadores(){

			if(IS_AJAX){
				$this->load->model("publicador_model","publicadores");

				if(isset($_POST["busqueda"])){

					if(isset($_POST["area"])){

						$like["area_id"] = $this->input->post("area");
						$data["area_seleccionada"] = $this->input->post("area");
					}
					if(isset($_POST["cargo"])){

						$like["cargo_id"] = $this->input->post("cargo");
						$data["cargo_seleccionado"] = $this->input->post("cargo");
					}

					if(isset($_POST["campo"]) && !empty($_POST["campo"])){
						$campo = $this->input->post("campo");
						$like[$campo] = $this->input->post("busqueda");
						$data["busqueda"] = $this->input->post("busqueda");
						$data["campo"] = $this->input->post("campo");
					}

					$data["registros"] = $this->publicadores->listar(null,$like);
				}else{
					$data["registros"] = $this->publicadores->listar();
				}

				$this->load->view("panel/lista/listar_publicadores",$data);
			}
		}

		function ListarAdministradores(){

			if(IS_AJAX){
				$this->load->model("admin_model","admin");
				$this->load->helper("fecha");
				
				if(isset($_POST["busqueda"])){

					if(isset($_POST["campo"]) && !empty($_POST["campo"])){
						$campo = $this->input->post("campo");
						$like[$campo] = $this->input->post("busqueda");
						$data["busqueda"] = $this->input->post("busqueda");
						$data["campo"] = $this->input->post("campo");
					}

					$data["registros"] = $this->admin->listar(null,$like);
				}else{
					$data["registros"] = $this->admin->listar();
				}

				$this->load->view("panel/lista/listar_admins",$data);
			}
		}

		/*Creacion de reportes*/
		function ReporteEgresadosTrabajando(){
			if(IS_AJAX){

				$this->load->helper("graficos");
				$this->load->model("egresado_model","egresados");

				$data[0]["name"] = "Trabajando";
				$data[0]["y"] = $this->egresados->listar(array("trabaja"=>TRUE))->num_rows();
				$data[1]["name"] = "Desempleados";
				$data[1]["y"] = $this->egresados->listar(array("trabaja"=>FALSE))->num_rows();
				
				echo '<div class="panel panel-default">';
				echo '<div class="panel-body">';

					crear_grafico_pastel($data,"Porcentaje de egresados trabajando","Porcentaje");
				echo '</div>';
				echo '</div>';
			}
		}

		function ReporteEgresadosTitulados(){
			if(IS_AJAX){

				$this->load->helper("graficos");
				$this->load->model("egresado_model","egresados");

				$data[0]["name"] = "Titulados";
				$data[0]["y"] = $this->egresados->listar(array("titulado"=>TRUE))->num_rows();
				$data[1]["name"] = "Sin titulo";
				$data[1]["y"] = $this->egresados->listar(array("titulado"=>FALSE))->num_rows();
				
				echo '<div class="panel panel-default">';
				echo '<div class="panel-body">';

				crear_grafico_pastel($data,"Porcentaje de egresados titulados","Porcentaje");
				echo '</div>';
				echo '</div>';
			}
		}

		function ReporteEgresadosPorCarrera(){
			if(IS_AJAX){

				$this->load->helper("graficos");
				$this->load->model("egresado_model","egresados");
				$this->load->model("listas_model","listas");

				$carreras = $this->listas->listarCarreras();
				$contador = 0;
				foreach ($carreras->result() as $row) {
					$data[$contador]["name"] = $row->nombre_carrera;
					$data[$contador]["y"] = $this->egresados->listar(array("carrera_id"=>$row->carrera_id))->num_rows();
					$contador++;
				}

				echo '<div class="panel panel-default">';
				echo '<div class="panel-body">';

				crear_grafico_pastel($data,"Porcentaje de egresados titulados","Porcentaje");
				echo '</div>';
				echo '</div>';
			}
		}

		function RegistrarPublicador(){

			if(IS_AJAX){
				$this->load->view("panel/registro/registrar_publicador");
			}
		}

		function RegistrarAdministrador(){

			if(IS_AJAX){
				$this->load->view("panel/registro/registrar_admin");
			}
		}
	}
?>