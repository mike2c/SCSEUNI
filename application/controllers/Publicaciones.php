<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Publicaciones extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->helper("sesion");
			$this->load->model("publicacion_model");

			if(sesionIniciada() == false){
				exit("ERROR DE ACCESO, no hay una sesion activa");
			}
		}

		public function Becas(){
			$data["becas"]= $this->publicacion_model->listar(array("visible"=>TRUE,"fecha_publicacion <="=>"fecha_alta"),"","listar_becas");
			$this->mostrarLista("publicaciones/listar_becas",$data);
		}

		public function BolsaDeTrabajo(){
			$data["bolsa_trabajo"] = $this->publicacion_model->listar(array("visible"=>TRUE,"fecha_publicacion <="=>"fecha_alta"),"","listar_fichas");
			$this->mostrarLista("publicaciones/bolsa_de_trabajo",$data);
		}

		public function Cursos(){
			$data["cursos"]=$this->publicacion_model->listar(array("visible"=>TRUE,"fecha_publicacion <="=>"fecha_alta"),"","listar_cursos");
			$this->mostrarLista("publicaciones/listar_cursos",$data);
		}
		private function mostrarLista($list_name, $data){
			if(!$list_name==""&& !$data==""){
				if(IS_AJAX){
					$this->load->view($list_name,$data);
				}else{
					$this->load->view("cabecera");
					$this->load->view("nav");
					$this->load->view($list_name,$data);
					$this->load->view("footer");
				}
			}else{
				throw new exception("ERROR, uno de los parametros esta vacio");
			}
		}
	}

?>