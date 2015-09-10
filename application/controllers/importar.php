<?php defined('BASEPATH') OR exit('No direct script access allowed');
	//DEFINIENDO LA CONSTANTE  IS_AJAX
	define("IS_AJAX",isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"]) == 'xmlhttprequest');
	
	class Importar extends CI_Controller{
	
		function __construct(){

			parent::__construct();
			$this->load->helper("url");
			$this->load->library(array("form_validation","PHPExcel/Reader/Excel2007.php","PHPExcel.php"));
			$this->load->helper(array("form_helper","sesion","fecha"));
			$this->load->model("egresado_model");
		}

		function Index(){
			
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
					return $archivo;
				}else{
					echo "Error Al Cargar el Archivo";
				}

				$this->importarEgresados();
			}
		}
		function importarEgresados(){

			if (file_exists ("bak_".$archivo)){

				echo "bak_".$archivo;

				exit;
				/** Clases necesarias */

				/*require_once(‘Classes/PHPExcel.php’);

				require_once(‘Classes/PHPExcel/Reader/Excel2007.php’);*/

				// Cargando la hoja de cálculo

				$objReader = new PHPExcel_Reader_Excel2007();

				$objPHPExcel = $objReader->load("bak_".$archivo);

				$objFecha = new PHPExcel_Shared_Date();

				// Asignar hoja de excel activa

				$objPHPExcel->setActiveSheetIndex(0);

				// Llenamos el arreglo con los datos  del archivo xlsx

				for ($i=1;$i<=47;$i++){

					$_DATOS_EXCEL[$i]['carnet'] = $objPHPExcel->getActiveSheet()->getCell('A'.$i)->getCalculatedValue();

					$_DATOS_EXCEL[$i]['cedula'] = $objPHPExcel->getActiveSheet()->getCell('B'.$i)->getCalculatedValue();

					$_DATOS_EXCEL[$i]['nombre']= $objPHPExcel->getActiveSheet()->getCell('C'.$i)->getCalculatedValue();

					$_DATOS_EXCEL[$i]['apellido']= $objPHPExcel->getActiveSheet()->getCell('D'.$i)->getCalculatedValue();

					$_DATOS_EXCEL[$i]['sexo'] = $objPHPExcel->getActiveSheet()->getCell('E'.$i)->getCalculatedValue();

					$_DATOS_EXCEL[$i]['fecha_nacimiento'] = $objPHPExcel->getActiveSheet()->getCell('F'.$i)->getCalculatedValue();

					$_DATOS_EXCEL[$i]['correo'] = $objPHPExcel->getActiveSheet()->getCell('G'.$i)->getCalculatedValue();

					$_DATOS_EXCEL[$i]['telefono'] = $objPHPExcel->getActiveSheet()->getCell('H'.$i)->getCalculatedValue();

					$_DATOS_EXCEL[$i]['celular'] = $objPHPExcel->getActiveSheet()->getCell('I'.$i)->getCalculatedValue();

					$_DATOS_EXCEL[$i]['direccion'] = $objPHPExcel->getActiveSheet()->getCell('J'.$i)->getCalculatedValue();

				}

			}else{//si por algo no cargo el archivo bak_
				echo "Necesitas primero importar el archivo";
			}

			$errores=0;

			//recorremos el arreglo multidimensional

			//para ir recuperando los datos obtenidos

			//del excel e ir insertandolos en la BD

			foreach($_DATOS_EXCEL as $campo => $valor){

				$sql = “INSERT INTO alumnos VALUES (NULL,'”;

				foreach ($valor as $campo2 => $valor2){

				$campo2 == “sexo” ? $sql.= $valor2.”‘);” : $sql.= $valor2.”‘,'”;

			}

			$result = mysql_query($sql);

			if (!$result){ 
				echo "Error al insertar registro ".$campo;
				$errores+=1;
			}

			/////////////////////////////////////////////////////////////////////////

			echo "<strong><center>ARCHIVO IMPORTADO CON EXITO, EN TOTAL $campo REGISTROS Y $errores ERRORES</center></strong>";

			//una vez terminado el proceso borramos el

			//archivo que esta en el servidor el bak_

			unlink($destino);

			}
		}
	}
?>