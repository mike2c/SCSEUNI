<?php
	function format_date($old_date){
		$fecha = date(str_replace("/", "-", $old_date));
		$newfecha = new DateTime($fecha);
		return date_format($newfecha,"Y-m-d");
	}
?>