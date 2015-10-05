<h2 class="form-title">Listado de publicaciones <small>Cursos libres y de posgrado</small></h2>
<div style="margin-top:15px;margin-bottom:7px;">
	<button style="margin-right:5px" class="btn-sm btn btn-primary" data-toggle="modal" data-target="#modalPublicacion"><span class="glyphicon glyphicon-file"></span> Crear publicación</button>
	<button id="btnEliminar" data-target="<?=base_url('Curso/Eliminar')?>" class="btn btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span> Eliminar publicaciones</button>
</div>
<div class="def-bg"><br>
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
				<td style='text-align:left'>Descripción</td>
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
				echo "<td class='text-align:left'><input type='checkbox' value='$row->publicacion_id'> <a href='javascript:editarCurso($row->publicacion_id)'>". recortar_texto($row->descripcion,50) ."</a></td>";
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
<style type="text/css">

</style>
<script type="text/javascript">
	
	$("#crearPublicacion").on("hidden.bs.modal", function(){
		$("#formCrearPublicacion").trigger("reset");
	});
	$("#btnEliminar").click(function(){
		eliminarPublicaciones($(this).data("target"));
		cargarCursos();
	});
	$("[name='btnCambiarVisibilidad']").click(function(){
		cambiarVisibilidad(this);
	});
</script>