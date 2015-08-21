<br>
<div class="container" style="max-width: 1100px;">
	
<?php
	if(!isset($data)){
		exit("<p>No se ha podido cargar el contenido, debido a que no se ha podido obetener la información necesaria</p>");
	}

	$total = $data["trabajando"] + $data["no_trabajando"];
	$trab_percent = ($data["trabajando"]/$total) * 100;
	$desp_percent = ($data["no_trabajando"]/$total) * 100;
?>
<style type="text/css">
    ${demo.css}
</style>
<script type="text/javascript">

    $(function () {
        $(document).ready(function () {
        // Build the chart
        $('#trabajando').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Reporte actual de egresados trabajando'
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
                data:[{name: 'Trabajando', y: <?=$data['trabajando']?>},
                	{name: 'No Trabajando', y: <?=$data['no_trabajando']?>}]
            }]
        });
    });
});
</script>

<div id="trabajando" style="min-width: 310px; width: 500; height: 420px; max-width: 500px;border:1px solid lightgray;"></div>
<br>
<table class="table table-bordered" style="padding-top:10px;">
	<tr class=""><th></th><th>Cantidad</th><th>Porcentaje</th></tr>
	<tr class=""><td>Egresados actualmente con empleo: </td><td><?=$data["trabajando"]?></td><td><?=$trab_percent?>%</td></tr>
	<tr class=""><td>Egresados desempleados: </td><td><?=$data["no_trabajando"]?></td><td><?=$desp_percent?>%</td></tr>
	<tr><td>Total de egresados: </td><td><?=$total?></td><td><?=($trab_percent + $desp_percent)?>%</td></tr>
</table>
</div>