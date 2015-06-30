<?php defined('BASEPATH') OR exit('No direct script access allowed');
	
	class Ajax extends CI_Controller{

		function __construct(){
			parent::__construct();
			$this->load->model("listas_model","registro");
		}

		function index(){
			$data["departamentos"] = $this->registro->listarDepartamentos();
			$this->load->view("ajax.php",$data);

		}

		function CargarDepartamentos(){
			$query = $this->registro->listarDepartamentos();
			echo "<select name='departamento' id='departamento'>";
			foreach($query->result() as $row){
				echo "<option value='$row->departamento_id'>$row->departamento</option>";
			}
			echo "</select>";
			echo "<script type='text/javascript'>alert('MEnsaje');</script>";
		}

		function CargarMunicipios($municipio_id){
			$query = $this->registro->listarMunicipios($municipio_id);
			echo "<select class='form-control' name='municipio' id='municipio'>";
			foreach($query->result() as $row){
				echo "<option value='$row->municipio_id'>$row->municipio</option>";
			}
			echo "</select>"; 
		}
	}
?>