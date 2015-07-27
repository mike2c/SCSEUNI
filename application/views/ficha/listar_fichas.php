<table class="table table-bordered">
	<?php
		echo "<tr><th></th><th>Cargo</th><th>Ultima actualización</th><th>Edicion</th></tr>";
		$cont = 1;
		foreach ($fichas->result() as $row) {
			echo "<td class='text-center'><strong>$cont</strong></td>";
			echo "<td>$row->cargo</td>";
			echo "<td>$row->fecha_publicacion</td>";
			echo "<td><a href='javascript:editarFicha($row->ficha_id)'>editar</a></td>";
			echo "</tr>";
			$cont++;
		}

	?>
</table>
