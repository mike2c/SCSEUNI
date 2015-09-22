<?php defined('BASEPATH') OR exit('No direct script access allowed');
	//DEFINIENDO LA CONSTANTE  IS_AJAX
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	
	class Importar extends CI_Controller{
	
		function __construct(){

			parent::__construct();
			$this->load->helper("url");
			$this->load->library(array("form_validation","Encrypter"));
			$this->load->helper(array("form_helper","sesion","fecha","pass_gen_helper"));
			$this->load->model("egresado_model");

		}

		function Index(){
			$this->load->view("cabecera");
			$this->load->view("nav");
			$this->load->view("upload_functions/importar_egresados");
			$this->load->view("footer");
		}

		function cargarArchivo(){
			//extract($_POST);
			if ( !$_FILES["excel"]["name"] == "" ){
				
				//cargamos el archivo al servidor con el mismo nombre

				//solo le agregue el sufijo bak_

				$archivo = $_FILES["excel"]["name"];

				$tipo = $_FILES['excel']['type'];

				$destino = "bak_".$archivo;

				if (copy($_FILES['excel']['tmp_name'],$destino)){
					echo "Archivo Cargado Con Éxito <br>";
					$this->importarEgresados($destino);
				}else{
					echo "Error Al Cargar el Archivo";
				}
			}else {
				echo "ERROR, No se pudo cargar el archivo selecionado";
			}
		}
		
		function importarEgresados($filename){
			$this->load->library("import_manager");
			//Cargar PHPExcel library
			//$name   = $_FILES['file']['name'];
			//$tname  = $_FILES['file']['tmp_name'];
			$tname = $filename;
			$obj_excel = PHPExcel_IOFactory::load($tname);       
			$sheetData = $obj_excel->getActiveSheet()->toArray(null,true,true,true);
			
			$data_egresado = array();
			$data_persona = array();
			$data_usuario = array();
			$data_contacto = array();
			
			//llenamos los arreglos con la informacion del archivo excel.
			foreach ($sheetData as $index => $value) {            
				if ( $index != 1 ){
					$data_egresado = array(
						'carnet'  => $value['A'],
						'cedula'  =>  $value['B']					                                  
					); 
					//convertimos la fecha del archivo de excel a el formato de Mysql.
					$fecha = format_date($value['F']);
					$data_persona = array(
						'nombre' =>  $value['C'],
						'apellido'  =>  $value['D'],
						'sexo'  =>  $value['E'],
						'fecha_nacimiento'  =>  $fecha
					);
					$data_contacto = array(
						'telefono'  =>  $value['H'],
						'celular'  =>  $value['I'],
						'direccion'  =>  $value['J']
					);
					$data_usuario = array(
						'correo'  =>  $value['G'],
						'clave' => Encrypter::encrypt(generarClave(20))
					);
					foreach ($data_egresado as $llave => $valor) {
					$data_egresado[$llave] = $valor;
					}
					foreach ($data_persona as $llave2 => $valor2) {
					$data_persona[$llave2] = $valor2;
					}
					foreach ($data_contacto as $llave3 => $valor3) {
					$data_contacto[$llave3] = $valor3;
					}
					foreach ($data_usuario as $llave4 => $valor4) {
					$data_usuario[$llave4] = $valor4;
					}
					
					$this->egresado_model->insertarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto);
					
				} 
			}
			unlink($tname);
		}
	}
?>