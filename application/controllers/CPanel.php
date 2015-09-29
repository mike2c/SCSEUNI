<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');

	class CPanel extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->helper(array("sesion","fecha"));
			if(!esAdministrador()){
				//show_404();
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

		}

		function ListarAdmins(){


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
	}
?>