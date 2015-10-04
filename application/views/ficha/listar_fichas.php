<h2 class="form-title">Listado de publicaciones <small>Fichas ocupacionales</small></h2>
<div style="margin-bottom:7px;margin-top:15px;">
		<button style="margin-right:5px" class="btn-sm btn btn-primary" data-toggle="modal" data-target="#crearFicha"><span class="glyphicon glyphicon-file"></span> Crear publicación</button>
		<button id="btnEliminar" data-target='<?=base_url('Ficha/Eliminar')?>' class="btn btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span> Eliminar publicaciones</button>
	</div>
<div class="def-bg">
	<br>
	
	<?php

		if($fichas == null){
			exit("<h3>Ha ocurrido un error y no se han podido visualizar las publicaciones creadas</h3>");
		}

		if($fichas->num_rows() == 0){
			echo ("<h3><center>No hay publicaciones creadas</h3></center>");
		}else{
	?>
	<table class="table table-triped table-condensed" style="">
		<thead>
			<tr>
				<td>#</td>
				<td style='text-align:left'>Cargo</td>
				<td>Ultima actualización</td>
				<td data-container="body" data-trigger="hover" title="Visibilidad de la publicación" data-toggle="popover" data-placement="left" data-content="Hace que la publicacion sea visible para los egresados o no">Visible</td>
			</tr>
		</thead>
		<tbody>
			<?php
			$cont = 1;
			foreach ($fichas->result() as $row) {
				echo "<tr>";
				echo "<td>$cont</td>";
				echo "<td class='text-left'><input type='checkbox' name='fichas_a_eliminar' value='$row->publicacion_id'> <a href='javascript:editarFicha($row->publicacion_id)'>$row->cargo</a></td>";
				echo "<td>$row->fecha_publicacion</td>";

				if($row->visible){
					echo "<td><button name='btnCambiarVisibilidad' class='btn btn-default btn-xs' data-publicacion='$row->publicacion_id' data-visible='true'> <i class='glyphicon glyphicon-eye-open'></i> Visible</button></td>";
				}else{
					echo "<td><button name='btnCambiarVisibilidad' class='btn btn-default btn-xs' data-publicacion='$row->publicacion_id' data-visible='false'><i class='glyphicon glyphicon-eye-close'></i> No visible</button></td>";					
				}
				echo "</tr>";
				$cont++;
				}
			}
			?>
		</tbody>
	</table>
</div>
<script type="text/javascript">

	$("[name='btnCambiarVisibilidad']").click(function(){
		cambiarVisibilidad(this);
	});

	$("#crearFicha").on("hidden.bs.modal", function(){
		$("#formCrearFicha").trigger("reset");
	});

	$("#btnEliminar").click(function(){
		
		eliminarPublicaciones($(this).data("target"));	
		cargarFichas();
	});
</script>