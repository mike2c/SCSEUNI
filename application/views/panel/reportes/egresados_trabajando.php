
<div class="panel panel-default">
<div class="panel-body">

<?//$data[1]["y"]?>
<div class="col-md-8">
	<?crear_grafico_pastel($data,"Porcentaje de egresados trabajando","Porcentaje");?>
</div>
<br>
<br>
<br>
<div class="col-md-4 bg-info">
	<form type="post" id="form_filtrar_reporte" action="<?=base_url('CPanel/ReporteEgresadosTrabajando')?>">
		<ul class='list-unstyled'>
			<?
				foreach ($carreras->result() as $row) {
					echo "<li><div class='checkbox'>
				
					<label>	<input type='checkbox' name='carrera[]' value='$row->carrera_id'>$row->nombre_carrera</label>
					</div></li>";
				}

			?>
			<li class="divider"></li>
			<li>
				<div class="checkbox"><label><input type="checkbox" name='titulado' value="true"> Titulado</label></div>
			</li>
			<li><button style="width:100%;" type="submit" class="btn btn-default btn-sm">aplicar</button></li>
		</ul>
	</form>
</div>
<?
	$porcentaje_trabajando = ($data[0]["y"] == 0) ? 0 : (($data[0]["y"]/($data[0]["y"]+$data[1]["y"]))*100);	
	$porcentaje_notrabajando = ($data[1]["y"] == 0) ? 0: (($data[1]["y"]/($data[0]["y"]+$data[1]["y"]))*100);	
?>
<table class='table table-striped table-hover'>
<thead>
<tr>
	<td></td>
	<td>Cantidad</td>
	<td>Porcentaje</td>
	
</tr>
</thead>
<tbody>
<tr>
<?=
	"<td>Egresados trabajando</td><td>".$data[0]["y"]."</td><td>".(round($porcentaje_trabajando*100)/100)."% </td>
	</tr>
		<tr>
	<td>Egresados desempleados</td><td>".$data[1]["y"]."</td><td>".(round($porcentaje_notrabajando*100)/100)."% </td>
	</tr>
		<tr>
	<td>Totales</td><td>".($data[1]["y"] + $data[0]["y"])."</td><td>".($porcentaje_notrabajando + $porcentaje_trabajando)."% </td>"
?>
</tr>
</tbody>
</table>
</div>
</div>
<style type="text/css">
	.divider{
		border-bottom: 1px solid lightgray;
	}
	.bg-info{
		border: 1px solid lightgray;
		border-radius: 2px;
	}
</style>
<script type="text/javascript">
	
	$("#form_filtrar_reporte").submit(function(e){
		e.preventDefault();

		$.ajax({
			url: this.action,
			type: "post",
			data: $(this).serialize(),
			datatype: "html",
			success: function(data){
				$("#page-inner").html(data);
			},
			error: function(jqXHR,textStatus,errorThrown){
				console.log(jqXHR.responseText);
			},
			async:true
		});
	});
	
</script>