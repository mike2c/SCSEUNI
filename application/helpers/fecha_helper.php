<?php
	function format_date($old_date){
		$fecha = date(str_replace("/", "-", $old_date));
		$newfecha = new DateTime($fecha);
		return date_format($newfecha,"Y-m-d");
	}
	
	function menor_o_igual($fechaInicio,$fechaFinal){
		if ($fechaInicio==null && $fechaFinal==null) {
			return TRUE;	
		}elseif($fechaInicio>$fechaFinal){
			return FALSE;
		}elseif ($fechaInicio==$fechaFinal){
			return TRUE;
		}else{
			return TRUE;
		}
	}
	
	/*anio plox*/
	function obtener_anio_actual(){
		$timestamp = strtotime('Y');
		return idate('Y',$timestamp);
	}

	/*Convierte una fecha Y-m-d a d-m-Y.
     *Toma como paramentro un string con la fecha en formato Y-m-d*/
	function date_toDMY($str_date){
		
		$d8 = date_create($str_date);
		return date_format($d8,"d/m/Y");
	}
?>