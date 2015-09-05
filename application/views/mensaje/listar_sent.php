<?php
	if(!isset($mensajes) || $mensajes == null){
		exit("<h4>No se pudo cargar la información</h4>");
	}

	if($mensajes->num_rows() == 0){
		exit("<center><h2 class='page-header'>No hay mensajes</h2></center>");
	}
?>
<table class="table table-hover">
	<caption>Bandeja de salida</caption>
	<thead>
		<tr><td>#</td><td>Destinatario</td><td>Asunto</td><td>Fecha de envio</td><td>Estado</td></tr>
	</thead>
	<tbody>
		<?php
			$cont = 1;
			foreach ($mensajes->result() as $row) {

				echo "<tr>
					<td><label for=''>$cont <input id='$cont' type='checkbox' value='$row->mensaje_id' name='mensajes_a_eliminar'> </label></td>
					<td>$row->destinatario</td>
					<td><a href='javascript:leerSent($row->mensaje_id);'>$row->asunto</a></td>
					<td>" . $row->fecha_envio . "</td>
					<td>Enviado</td>
				</tr>";
				$cont += 1;		
			}
		?>
	</tbody>
	<tfoot>

	</tfoot>
</table>