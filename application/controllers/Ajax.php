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

		function CargarDepartamentos($selected = ""){
			$query = $this->registro->listarDepartamentos();
			echo "<select id='departamento' name='departamento'>";
			foreach($query->result() as $row){
				if($row->departamento_id == $selected){
					echo "<option selected value='$row->departamento_id'>$row->departamento</option>";
				}else{
					echo "<option value='$row->departamento_id'>$row->departamento</option>";
				}
				
			}
			echo "</select>";
			
		}

		function CargarMunicipios($municipio_id,$selected = ""){
			$query = $this->registro->listarMunicipios($municipio_id);
			echo "<select name='municipio' id='municipio'>";
			foreach($query->result() as $row){
				if($row->municipio_id == $selected){
					echo "<option selected value='$row->municipio_id'>$row->municipio</option>";
				}else{
					echo "<option value='$row->municipio_id'>$row->municipio</option>";
				}
			
			}
			echo "</select>"; 
		}

		function CargarCarreras($selected = ""){
			$query = $this->registro->listarCarreras();
			echo "<select name='carrera' id='carrera'>";
				foreach ($query->result() as $row) {
					if($selected == $row->carrera_id){
						echo "<option selected value='$row->carrera_id'>$row->nombre_carrera</option>";
					}else{
						echo "<option value='$row->carrera_id'>$row->nombre_carrera</option>";
					}
					
				}
			echo "</select>";
		}
	}
?>