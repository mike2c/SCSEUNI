<div class="def-bg">
	<h3 class="form-title">Listado de publicaciones <small>cursos</small></h3>
	<div style="overflow:auto;padding:10px 0px;margin-bottom:10px;">
		<button style="margin-right:5px" class="btn-sm btn btn-primary" data-toggle="modal" data-target="#crearFicha"><span class="glyphicon glyphicon-file"></span> Crear publicación</button>
		<button onclick="eliminarFichas()" class="btn btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span> Eliminar publicaciones</button>
	</div>
	<?php

		if($cursos == null){
			exit("<h3>Ha ocurrido un error y no se han podido visualizar las publicaciones creadas</h3>");
		}

		if($cursos->num_rows() == 0){
			echo ("<h3><center>No hay publicaciones creadas</h3></center>");
		}else{
	?>
	<table class="table table-triped table-condensed" style="">
		<thead>
			<tr>
				<td class="text-center">#</td>
				<td></td>
				<td style='text-align:left'>Cargo</td>
				<td>Ultima actualización</td>
				<td data-container="body" data-trigger="hover" title="Visibilidad de la publicación" data-toggle="popover" data-placement="left" data-content="Hace que la publicacion sea visible para los egresados o no">Visible</td>
			</tr>
		</thead>
		<tbody>
			<?php
			$cont = 1;
			foreach ($cursos->result() as $row) {
				echo "<tr>";
				echo "<td class='text-center'><strong>$cont</strong></td>";
				echo "<td ><input type='checkbox' value='$row->publicacion_id'></td>";
				
				#echo "<td style='text-align:left'><a href='javascript:editarFicha($row->ficha_id)'>$row->cargo</a></td>";
				echo "<td>$row->fecha_publicacion</td>";
				if($row->visible){
					echo "<td><input onchange='cambiarVisibilidad($row->publicacion_id);' checked type='checkbox' value='$row->publicacion_id'></td>";
				}else{
					echo "<td><input onchange='cambiarVisibilidad($row->publicacion_id);' type='checkbox' value='$row->publicacion_id'></td>";
				}
				echo "</tr>";
				$cont++;
				}
			}
			?>
		</tbody>
	</table>
</div>
<style type="text/css">
	td{
		text-align: center;
	}
</style>
<script type="text/javascript">
	
	$("#crearPublicacion").on("hidden.bs.modal", function(){
		$("#formCrearPublicacion").trigger("reset");
	});


</script>