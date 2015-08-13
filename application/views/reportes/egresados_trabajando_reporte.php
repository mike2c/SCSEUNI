<?php
	if(!isset($data)){
		exit("No se ha podido obetener la informacíón");
	}
	$total = $data["trabajando"] + $data["no_trabajando"];
	$trab_percent = ($data["trabajando"]/$total) * 100;
	$desp_percent = ($data["no_trabajando"]/$total) * 100;
?>

<div class="container" style="max-width:1100px;">
<br>

	<table class="table table-bordered table-hover">
		<tr class="info"><th><h3>Reportes de egresados empleados y no empleados</h3>	</th><th>Cantidad</th><th>Porcentaje</th></tr>
		<tr class=""><td>Egresados actualmente con empleo: </td><td><?=$data["trabajando"]?></td><td><?=$trab_percent?>%</td></tr>
		<tr class=""><td>Egresados desempleados: </td><td><?=$data["no_trabajando"]?></td><td><?=$desp_percent?>%</td></tr>
		<tr><td>Total de egresados: </td><td><?=$total?></td><td><?=($trab_percent + $desp_percent)?>%</td></tr>
	</table>
	<!--DIV PARA EL DIAGRAMA DE PASTEL-->	
	<div id="pie" class="epoch" style="width: 300px; height: 300px;float:left;border:1px solid lightgray;"></div>
	
</div>


<!--IMPORTANDO LIBRERIAS-->
<script type="text/javascript" src="<?=base_url("public/js/charts/Chart.js")?>"></script>
<script type="text/javascript" src="<?=base_url("public/js/epoch/d3.min.js")?>"></script>
<script type="text/javascript" src="<?=base_url("public/js/epoch/epoch.min.js")?>"></script>
<link rel="stylesheet" type="text/css" href="<?=base_url('public/js/epoch/epoch.min.css')?>">
<!--TERMINANDO DE IMPORTAR-->
<script type="text/javascript">
	
	$(document).ready(function(){
		var jsonData = <?php
			if(isset($data)){
				echo json_encode($data);
			}else{
				echo "null";
			}
		 
		 ?>;
		//dibujarGrafico(jsonData);
		dibujarGraficoEPoch(jsonData);
	});

	function dibujarGraficoEPoch(jsonData){
		var pieData = [
		  { label: 'Trabajando', value: jsonData.trabajando },
		  { label: 'Desempleados', value: jsonData.no_trabajando }
		]

		 $('#pie').epoch({
		   type: 'pie',
		   data: pieData,
		 });
	}
</script>
<style type="text/css">
	.form-inline .form-group p{
		font-size: 18px;
	}
</style>
