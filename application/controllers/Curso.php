<?php defined('BASEPATH') OR exit('No direct script access allowed');
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	class Curso extends CI_Controller{
		function __contruct(){
			parent::__contruct();
			$this->load->model("curso_model");
			$this->load->model("listas_model");
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
		function 
	}
?>