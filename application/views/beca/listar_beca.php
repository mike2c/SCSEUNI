<br>
<table class="table table-default table-hover" style="border-left:1px solid lightgray">
	<?php
		echo "<tr><th></th><th>Cargo</th><th>Ultima actualización</th><th></th></tr>";
		$cont = 1;
		foreach ($becas->result() as $row) {
			echo "<td class='text-center'><strong>$cont</strong></td>";
			echo "<td>$row->descripcion</td>";
			echo "<td>$row->fecha_publicacion</td>";
			echo"<td><a href='".base_url("Beca/editar")."?beca_id=$row->beca_id'>editar</a></td>";
			echo "</tr>";
			$cont++;
		}

	?>
</table>