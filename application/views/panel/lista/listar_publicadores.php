<h1 class="page-header">
	Listado <small>Publicadores</small>
</h1>
<?php
	
	if(!isset($registros) || $registros == null || empty($registros)){
		exit("<h2>ERROR: no se han podido leer los registros.</h2>");
	}	
?>
<div class="panel panel-default">
	<div class="panel-body" style="overflow-x:scroll;padding-top:20px;" >
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<form id="formBusqueda" class="form-inline" action="<?=base_url("CPanel/ListarPublicadores")?>" type="post">
					<div class="form-group">
						<label for="">Area:</label>
						<div id="area_area"></div>
					</div>
					<div class="form-group">
						<label for="">Cargo:</label>
						<div id="cargo_area"></div>
					</div>
					<div class="input-group" style="margin-top:25px;">
			    		<input type="text" value="<?=(isset($busqueda)? $busqueda:"")?>" name="busqueda" class="form-control" placeholder="Buscar por...">
			    		<span class="input-group-btn">
			        	<div class="form-group">
			        		<?php
			        			$campo_seleccionado = (isset($campo))? $campo: "";
			        		?>
							<select class="form-control" name="campo" id="campo">
								<option value="correo" <?php if($campo_seleccionado == "correo") echo "selected";?>>Correo</option>
								<option value="nombre" <?php if($campo_seleccionado == "nombre") echo "selected";?>>Nombre</option>
								<option value="apellido" <?php if($campo_seleccionado == "apellido") echo "selected";?>>Apellido</option>
							</select>
						</div>
						</span>
			    	</div>
				</form>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-12 col-lg-12">
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<td>Nombre</td>
							<td>Apellido</td>
							<td>Genero</td>
							<td>Area</td>
							<td>Cargo</td>
							<td>Correo</td>
							<td>Cuenta</td>
							<td>Ultima conexion</td>
						</tr>
					</thead>
					<tbody>
						<?php
							foreach ($registros->result() as $row) {
								echo "<tr>";
								echo "<td>$row->nombre</td>";
								echo "<td>$row->apellido</td>";
								echo "<td>$row->sexo</td>";
								echo "<td>$row->area</td>";
								echo "<td>$row->cargo</td>";
								echo "<td>$row->correo</td>";
								echo "<td>". (($row->activo == TRUE)? "Activa":"Desactivada") ."</td>";
								echo "<td>$row->ultima_sesion</td>";
								echo "</tr>";
							}
						?>
					</tbody>
				</table>
			</div>
		</div>	
	</div>
</div>
<style>
	td{
		white-space: nowrap;
	}
	.input-group-btn select.form-control{
		color: gray;
		border-left:none;
	}
	select.form-control{
		min-width: 180px;
	}
</style>
<script type="text/javascript" src="<?=base_url("public/js/listas.js")?>"></script>
<script type="text/javascript">

	var area_seleccionada = null;
	var cargo_seleccionado = null;

	<?php
		if(isset($area_seleccionada) && !empty($area_seleccionada)){
			echo "area_seleccionada=". $area_seleccionada . ";";
		}
		if(isset($cargo_seleccionado) && !empty($cargo_seleccionado)){
			echo "cargo_seleccionado=". $cargo_seleccionado . ";";
		}
	?>

	$(document).ready(function(){

		listarAreas(area_seleccionada,null,"form-control");
		listarCargos($("#area").val(),cargo_seleccionado,null,"form-control");
	});

	$("#formBusqueda").submit(function(e){
		e.preventDefault();
		$.post(baseURL("CPanel/ListarPublicadores"),$(this).serialize(),
		function(data){
			$("#page-inner").html(data);
		})
	});

	$("#area").change(function(){
		$("#formBusqueda").trigger("submit");
	});

	$("#cargo").change(function(){
		$("#formBusqueda").trigger("submit");
	});
</script>