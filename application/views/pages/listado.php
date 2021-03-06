<div class="container">
	<div class="contenido">
		<h2 class="form-title">Lista de egresados</h2><br>
		<div class="col-lg-12 col-md-12" style="overflow:auto">
			<form class="form-inline pull-right" method="post" action="<?=base_url("Egresado/Listado")?>" id="formBuscarEgresado">
				<div class="form-group">
				<label for="">CARRERAS </label>
					 <select class="form-control" name="carrera" id="carrera">
					 	<option value="0">- Todas -</option>
					  	<?php
					 		if(isset($carreras)){
					 			foreach ($carreras->result() as $row) {
					 				if($row->carrera_id == $carrera){
					 					echo "<option selected value='$row->carrera_id'>$row->nombre_carrera</option>";
					 				}else{
					 					echo "<option value='$row->carrera_id'>$row->nombre_carrera</option>";
					 				}				 				
					 			}
					 		}else{
					 			exit("<p class='bg-danger'>No se han podido cargar las carreras</p>");
					 		}
					 	?>
					 </select>
				</div>
				<div class="form-group">
					<input name="nombre" type="text" class="form-control" placeholder="Buscar por nombre">
					<button class="btn btn-primary btn-sm">Buscar </button>
				</div>
			</form>
		
		</div>
	<br>
		<hr>
	
	<div class="col-lg-12 col-md-12">
		<table id="tabla_egresados" class="table table-hover table-responsive">
			<thead>
				<tr>
					<td></td>
					<td>Nombre</td>
					<td>Ubicación actual</td>
					<td>Curriculum</td>
				</tr>
			</thead>
		<tbody>
		<?php
			foreach ($registro->result() as $row) {
				echo "<tr>";
				echo "<td class='no-padding'><img title='ampliar' class='thumbnail zoom' src='" . base_url("uploads/". $row->imagen) . "' alt=''></td>";
				echo "<td><h4>$row->nombre $row->apellido</h4>
				<h4><small>$row->carrera</small></h4>";
				
				if($row->sexo == "F"){
					echo "<h4><small>Mujer</small></h4></td>";
				}else{
					echo "<h4><small>Hombre</small></h4></td>";
				}
				
				echo "<td>$row->municipio, $row->departamento. <br>$row->direccion</td>";
				echo "<td><a target='blank' href='" . base_url("Curriculum/". $row->egresado_id) . "' class='btn btn-primary'>Ver curriculum</a></td>";
				echo "</tr>";
			}
		?>
	</tbody>
	<tfoot>
		
	</tfoot>
</table>
	</div>
			
	</div>
</div>
<style type="text/css">
	table td{
		padding: 0px 0px;
	}
	table img{
		border: 1px solid lightgray;
		height: 65px;
		width: 70px;
		margin-right: 0px;
	}
	.thumbnail{
		margin: 0px 0px;
		cursor: pointer;
		border-radius: 2px;
	}

	table h2{
		color: #337ab7;
	}
	.zoom{
        /* Aumentamos la anchura y altura durante 2 segundos */
        transition: width 0.3s, height 0.3s, transform 0.3s;
        -moz-transition: width 0.3s, height 0.3s, -moz-transform 0.3s;
        -webkit-transition: width 0.3s, height 0.3s, -webkit-transform 0.3s;
        -o-transition: width 0.3s, height 0.3s,-o-transform 0.3s;

    }
    .zoom-in{
        /* tranformamos el elemento al pasar el mouse por encima al doble de
           su tamaño con scale(1). */
        transform : scale(2);
        -moz-transform : scale(2);      /* Firefox */
        -webkit-transform : scale(2);   /* Chrome - Safari */
        -o-transform : scale(2);        /* Opera */
    }
   	.input-group .btn{
   		height: 28px;
   	} 
</style>
<script type="text/javascript">
	$("table tr td img").click(function(){
		$(this).addClass("zoom-in");
	});
	$("table tr td img").mouseleave(function(){
			$(this).removeClass("zoom-in");
	});
</script>