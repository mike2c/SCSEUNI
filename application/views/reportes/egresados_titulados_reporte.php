<?php
	if(!isset($data_titulados)){
		echo "<p>No se ha podido cargar el contenido, debido a que no se ha podido obetener la información necesaria</p>";
		exit();
	}

	$total = $data_titulados["titulados"] + $data_titulados["no_titulados"];
	$trab_percent = ($data_titulados["titulados"]/$total) * 100;
	$desp_percent = ($data_titulados["no_titulados"]/$total) * 100;
?>
<div class="container" style="max-width:1100px;">
<br>
	<table class="table table-bordered table-hover">
		<tr class="info"><th><h3>Reportes de egresados titulados</h3>	</th><th>Cantidad</th><th>Porcentaje</th></tr>
		<tr class=""><td>Egresados con titulo: </td><td><?=$data_titulados["titulados"]?></td><td><?=$trab_percent?>%</td></tr>
		<tr class=""><td>Egresados sin titulo: </td><td><?=$data_titulados["no_titulados"]?></td><td><?=$desp_percent?>%</td></tr>
		<tr><td>Total de egresados: </td><td><?=$total?></td><td><?=($trab_percent + $desp_percent)?>%</td></tr>
	</table>
	<!--DIV PARA EL DIAGRAMA DE PASTEL-->	
	<div id="pie_titulados" class="epoch" style="width: 300px; height: 300px;float:left;border:1px solid lightgray;"></div>
</div>
<script type="text/javascript" src="<?=base_url("public/js/charts/Chart.js")?>"></script>
<script type="text/javascript" src="<?=base_url("public/js/epoch/d3.min.js")?>"></script>
<script type="text/javascript" src="<?=base_url("public/js/epoch/epoch.min.js")?>"></script>
<link rel="stylesheet" type="text/css" href="<?=base_url('public/js/epoch/epoch.min.css')?>">

<script type="text/javascript">
	
	$(document).ready(function(){

		var jsonData = <?php
			if(isset($data_titulados)){
				echo json_encode($data_titulados);
			}else{
				echo "null";
			}
		 
		 ?>;
		
		var pieData = [
		  { label: 'Titulados', value: jsonData.titulados },
		  { label: 'No titulados', value: jsonData.no_titulados }
		]

		 $('#pie_titulados').epoch({
		   type: 'pie',
		   data: pieData,
		 });

	});

</script>