<br>	
<div class="container" style="max-width:1100px;">
	<?php
	if(!isset($egresados_carrera)){
		exit("<p>No se ha podido cargar el contenido, debido a que no se ha podido obetener la información necesaria</p>");
	}

	echo "<table class='table table-bordered table-hover'>";
	echo "<tr class='info'><th><h3>Reporte de egresados por carrera</h3></th><th>Cantidad</th><th>Porcentaje</th></tr>";
	$arr = array();
	foreach ($egresados_carrera->result() as $row) {
		array_push($arr, array("carrera"=>$row->carrera,"cantidad"=>$row->cantidad));
				
	}
	
	$total = 0;
	$total_percent = 0;

	$percent = array();

	foreach ($arr as $key => $value) {
		$total += $arr[$key]["cantidad"];
	}

	foreach ($arr as $key => $value) {
		$val = ($arr[$key]["cantidad"] / $total) * 100;
		$total_percent += $val;
		$percent[$key] = $val;
	}

	foreach ($arr as $key => $value) {
		echo "<tr>";
		echo "<td>" . $arr[$key]['carrera']. "</td>";
		echo "<td>" . $arr[$key]['cantidad']. "</td>";
		echo "<td>$percent[$key]</td>";
		echo "</tr>";

	}
	echo "</table>";
?>

	<div id="pie_carreras" class="epoch" style="width: 300px; height: 300px;float:left;border:1px solid lightgray;"></div>
</div>

<script type="text/javascript" src="<?=base_url("public/js/charts/Chart.js")?>"></script>
<script type="text/javascript" src="<?=base_url("public/js/epoch/d3.min.js")?>"></script>
<script type="text/javascript" src="<?=base_url("public/js/epoch/epoch.min.js")?>"></script>
<link rel="stylesheet" type="text/css" href="<?=base_url('public/js/epoch/epoch.min.css')?>">
<script type="text/javascript">
	$(document)	.ready(function(){
		var jsonData = <?php echo json_encode($arr);?>;
		var pieData = new Array();
		
		console.log(jsonData);
		for(var i = 0; i < jsonData.length; i++){
			console.log(jsonData[i].carrera);
			pieData.push({label: jsonData[i].carrera,value: jsonData[i].cantidad});
		}

		 $('#pie_carreras').epoch({
		   type: 'pie',
		   data: pieData

		 });
	});
</script>