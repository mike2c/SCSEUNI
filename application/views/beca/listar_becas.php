<div class="def-bg">
	<h3 class="form-title">Listado de publicaciones <small>Becas</small></h3>
	<div style="overflow:auto;padding:10px 0px;margin-bottom:10px;">
		<button style="margin-right:5px" class="btn-sm btn btn-primary" data-toggle="modal" data-target="#modalPublicarBeca"><span class="glyphicon glyphicon-file"></span> Crear publicación</button>
		<button id="btnEliminar" data-target="<?=base_url('Beca/Eliminar')?>" class="btn btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span> Eliminar publicaciones</button>
	</div>
	<?php

		if($becas == null){
			exit("<h3>Ha ocurrido un error y no se han podido visualizar las publicaciones creadas</h3>");
		}

		if($becas->num_rows() == 0){
			echo ("<h3><center>No hay publicaciones creadas</h3></center>");
		}else{
	?>
	<table class="table table-triped table-condensed" style="">
		<thead>
			<tr>
				<td class="text-center">#</td>
				<td colspan="2" style='text-align:left'>Programa académico</td>
				<td>Ultima actualización</td>
				<td data-container="body" data-trigger="hover" title="Visibilidad de la publicación" data-toggle="popover" data-placement="left" data-content="Hace que la publicacion sea visible para los egresados o no">Visible</td>
			</tr>
		</thead>
		<tbody>
			<?php
			$cont = 1;
			foreach ($becas->result() as $row) {
				echo "<tr>";
				echo "<td class='text-center'>$cont</td>";
				echo "<td colspan='2' style='text-align:left'><input type='checkbox' name='becas_a_eliminar' value='$row->publicacion_id'> <a href='javascript:editarBeca($row->publicacion_id)'>$row->programa_academico</a></td>";
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
	td{
		text-align: center;
	}
</style>
<script type="text/javascript">
	
	$("#btnEliminar").click(function(){
		eliminarPublicaciones($(this).data("target"));
		cargarBecas();
	});
	$("[name='btnCambiarVisibilidad']").click(function(){
		cambiarVisibilidad(this);
	});

</script>