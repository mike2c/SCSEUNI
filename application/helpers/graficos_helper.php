<?php

	function crearGraficoPastel($arr,$text = "",$tooltipText = ""){
		if($text== null || $text == ""){
			$text = "Titulo por default";
		}
		if($tooltipText== null || $tooltipText == ""){
			$tooltipText = "Titulo por default";
		}
		?>
			<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
			<style type="text/css">
			${demo.css}
			</style>
			<script src="js/highcharts.js"></script>
			<script src="js/modules/exporting.js"></script>
			<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
			<script type="text/javascript">
				
				var data = <?=json_encode($arr)?>;
				var jsonData = Array();
				for(var i = 0; i < data.length; i++){
					jsonData.push({name:data[i].name,y: parseFloat(data[i].y)});
				}
				$('#container').highcharts({
			            chart: {
			                plotBackgroundColor: null,
			                plotBorderWidth: null,
			                plotShadow: false,
			                type: 'pie'
			            },
			            title: {
			                text: "<?=$text?>"
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
			            series:[{
			                name: "<?=$tooltipText?>",
			                colorByPoint: true,
			                data: jsonData}]
			             });
			</script>
		<?
	}
?>
?>