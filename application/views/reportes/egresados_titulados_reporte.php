<div class="container" style="max-width: 1100px;">
	<?php
	if(!isset($data_titulados)){
		echo "<p>No se ha podido cargar el contenido, debido a que no se ha podido obetener la información necesaria</p>";
		exit();
	}

	$total = $data_titulados["titulados"] + $data_titulados["no_titulados"];
	$trab_percent = ($data_titulados["titulados"]/$total) * 100;
	$desp_percent = ($data_titulados["no_titulados"]/$total) * 100;
?>
<style type="text/css">
    ${demo.css}
</style>
<script type="text/javascript">

    $(function () {
        $(document).ready(function () {
        // Build the chart
        $('#titulados').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Reporte actual de egresados titulados'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
                name: "Porcentaje",
                colorByPoint: true,
                data:[{name: 'Titulados', y: <?=$data_titulados['titulados']?>},
                	{name: 'No Titulados', y: <?=$data_titulados['no_titulados']?>}]
            }]
        });
    });
});
</script>

<div id="titulados" style="min-width: 310px; width: 500; height: 420px; max-width: 500px;border:1px solid lightgray;"></div>
<br>
<table class="table table-bordered">
	<tr class=""><th></th><th>Cantidad</th><th>Porcentaje</th></tr>
	<tr class=""><td>Egresados con titulo: </td><td><?=$data_titulados["titulados"]?></td><td><?=$trab_percent?>%</td></tr>
	<tr class=""><td>Egresados sin titulo: </td><td><?=$data_titulados["no_titulados"]?></td><td><?=$desp_percent?>%</td></tr>
	<tr><td>Total de egresados: </td><td><?=$total?></td><td><?=($trab_percent + $desp_percent)?>%</td></tr>
</table>
</div>