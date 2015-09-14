<div class="def-bg">
	<h3 class="form-title">Listado de fichas ocupacionales</h3>
	<div style="overflow:auto;padding:10px 0px;margin-bottom:10px;">
		<button style="margin-right:5px" class="btn-sm btn btn-primary" data-toggle="modal" data-target="#crearFicha"><span class="glyphicon glyphicon-file"></span> Crear ficha</button>
		<button id="btnEliminar" onclick="eliminarPublicaciones()" class="btn btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span> Eliminar fichas</button>
	</div>
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
				
				echo "<td class='text-left'><input type='checkbox' name='fichas_a_eliminar' value='$row->publicacion_id'> <a href='javascript:editarFicha($row->publicacion_id)'>$row->cargo</a></td>";
				echo "<td>$row->fecha_publicacion</td>";

				if($row->visible){
					echo "<td><button name='btnCambiarVisibilidad' class='btn btn-primary btn-xs' data-idpublicacion='$row->publicacion_id' data-visible='$row->visible'><i class='glyphicon glyphicon-eye-open'></i> Visible</button></td>";
					#echo "<td><input onchange='cambiarVisibilidad($row->publicacion_id);' checked type='checkbox' value='$row->publicacion_id'></td>";
				}else{
					echo "<td><button name='btnCambiarVisibilidad' class='btn btn-danger btn-xs' data-idpublicacion='$row->publicacion_id' data-visible='$row->visible'><i class='glyphicon glyphicon-eye-close'></i> No visible</button></td>";					
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

	$("button[name='btnCambiarVisibilidad']").click(function(){

		if($(this).data("visible") == 1){

			$(this).text("No visible");
			$(this).data("visible",0);
			$(this).find(".glyphicon").removeClass("glyphicon-eye-open").addClass("glyphicon-eye-close");
		}else{
			$(this).text("Visible");
			$(this).data("visible",1);
			$(this).find(".glyphicon").removeClass("glyphicon-eye-close").addClass("glyphicon-eye-open");
		}

		alert($(this).data("visible"));
	});

	$("#crearFicha").on("hidden.bs.modal", function(){
		$("#formCrearFicha").trigger("reset");
	});

	$("#benEliminar").click(function(){
		if(eliminarPublicaciones("ficha") == TRUE){
			alert("Publicaciones eliminadas");
			cargarFichas();
		}
	});
</script>