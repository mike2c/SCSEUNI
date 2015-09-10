<?php defined('BASEPATH') OR exit('No direct script access allowed');
	//DEFINIENDO LA CONSTANTE  IS_AJAX
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	
	class Importar extends CI_Controller{
	
		function __construct(){

			parent::__construct();
			$this->load->helper("url");
			$this->load->library(array("form_validation","PHPExcel","Encrypter"));
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
			extract($_POST);

			if ($action == "upload"){

				//cargamos el archivo al servidor con el mismo nombre

				//solo le agregue el sufijo bak_

				$archivo = $_FILES['excel']['name'];

				$tipo = $_FILES['excel']['type'];

				$destino = "bak_".$archivo;

				if (copy($_FILES['excel']['tmp_name'],$destino)){
					echo "Archivo Cargado Con Éxito";
					$this->importarEgresados($destino);
				}else{
					echo "Error Al Cargar el Archivo";
				}
			}
		}
		function importarEgresados($destino){

			if (file_exists ($destino)){

				/** Clases necesarias */

				/*require_once(‘Classes/PHPExcel.php’);

				require_once(‘Classes/PHPExcel/Reader/Excel2007.php’);*/

				// Cargando la hoja de cálculo

				$objReader = new PHPExcel_Reader_Excel2007();

				$objPHPExcel = $objReader->load($destino);

				$objFecha = new PHPExcel_Shared_Date();

				// Asignar hoja de excel activa

				$objPHPExcel->setActiveSheetIndex(0);

				// Llenamos el arreglo con los datos  del archivo xlsx

				echo $objPHPExcel->getHighestRow();

				exit("no funciona :D");

				for ($i=1;$i<=47;$i++){

					$data_egresado['carnet'] = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();

					$data_egresado['cedula'] = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();

					$data_persona['nombre']= $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();

					$data_persona['apellido']= $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();

					$data_persona['sexo'] = $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();

					$data_persona['fecha_nacimiento'] = format_date($objPHPExcel->getActiveSheet()->getCell('F'.$i)->getCalculatedValue());

					$data_usuario['correo'] = $objPHPExcel->getActiveSheet()->getCell('G'.$i)->getCalculatedValue();

					$data_usuario['clave'] = Encrypter::encrypt(generarClave(10));

					$data_contacto['telefono'] = $objPHPExcel->getActiveSheet()->getCell('H'.$i)->getCalculatedValue();

					$data_contacto['celular'] = $objPHPExcel->getActiveSheet()->getCell('I'.$i)->getCalculatedValue();

					$data_contacto['direccion'] = $objPHPExcel->getActiveSheet()->getCell('J'.$i)->getCalculatedValue();

					$this->egresado_model->insertarEgresado($data_egresado,$data_persona,$data_usuario,$data_contacto);

				}

			}else{//si por algo no cargo el archivo bak_
				echo "Necesitas primero importar el archivo";
			}

			$errores=0;

			//recorremos el arreglo multidimensional

			//para ir recuperando los datos obtenidos

			//del excel e ir insertandolos en la BD



			echo "<strong><center>ARCHIVO IMPORTADO CON EXITO, EN TOTAL $campo REGISTROS Y $errores ERRORES</center></strong>";

			//una vez terminado el proceso borramos el

			//archivo que esta en el servidor el bak_

			unlink($destino);

		}
	}
?>