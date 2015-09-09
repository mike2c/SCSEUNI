<div class="def-bg">
	<h3 class="form-title">Listado de becas</h3>
	<div style="overflow:auto;padding:10px 0px;margin-bottom:10px;">
		<button style="margin-right:5px" class="btn-sm btn btn-primary" data-toggle="modal" data-target="#modalPublicarBeca"><span class="glyphicon glyphicon-file"></span> Crear ficha</button>
		<button onclick="eliminarFichas()" class="btn btn-sm btn-danger"><span class="glyphicon glyphicon-trash"></span> Eliminar fichas</button>
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
				<td></td>
				<td style='text-align:left'>Programa académico</td>
				<td>Ultima actualización</td>
				<td data-container="body" data-trigger="hover" title="Visibilidad de la publicación" data-toggle="popover" data-placement="left" data-content="Hace que la publicacion sea visible para los egresados o no">Visible</td>
			</tr>
		</thead>
		<tbody>
			<?php
			$cont = 1;
			foreach ($becas->result() as $row) {
				echo "<tr>";
				echo "<td class='text-center'><strong>$cont</strong></td>";
				echo "<td ><input type='checkbox' name='becas_a_eliminar' value='$row->publicacion_id'></td>";
				
				echo "<td style='text-align:left'><a href='javascript:editarFicha($row->beca_id)'>$row->programa_academico</a></td>";
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
	
	function eliminarFichas(){

		var fichas_checked = $("input:checked");
		var arr_fichas = Array();

		$(fichas_checked).each(function(indice, elemento){

			arr_fichas.push(elemento.value);
		});

		if(arr_fichas.length > 0){

			$.post(baseURL("Ficha/EliminarFichas"),
				{fichas: arr_fichas},
				function(data,textStatus,jqXHR){
					if(data == ""){
						alert("Publicaciones eliminadas");
					}else{
						alert("Ha ocurrido un error y no se ha podido ejecutar la solicitud. \n" + textStatus);
						console.log(jqXHR.responseText);
					}
				});
		}else{
			alert("No se han seleccionado publicaciones");
		}
	}
</script>