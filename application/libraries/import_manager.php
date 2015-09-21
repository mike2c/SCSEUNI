<?php 
	require_once 'Excel_pdf/PHPExcel.php';
	require_once 'Excel_pdf/PHPExcel/IOFactory.php';
	
	class Import_manager extends PHPExcel
	{
		public function __construct(){
			parent::__construct();
		}
	}
	
?>