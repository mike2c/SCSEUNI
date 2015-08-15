<div class="container">
    <?php
    if(!isset($egresados_carrera)){
        exit("<p>No se ha podido cargar el contenido, debido a que no se ha podido obetener la información necesaria</p>");
    }
?>
<style type="text/css">
    ${demo.css}
</style>
<script type="text/javascript">

    $(function () {
        $(document).ready(function () {
        // Build the chart
        $('#container').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Reporte de egresados por carrera'
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
                data:[
                <?php
                    foreach ($egresados_carrera->result() as $row) {
                        echo "{name: '$row->carrera' , y: $row->cantidad},";
                    }
                ?>]
            }]
        });
    });
});
</script>
<script src="<?=base_url('public/js/highcharts/highcharts.js')?>"></script>
<div id="container" style="min-width: 310px; width: 500; height: 420px; max-width: 500px;border:1px solid lightgray;"></div>
</div>