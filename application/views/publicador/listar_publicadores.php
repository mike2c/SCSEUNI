<?php
	
	if($publicadores == null){
		echo "<h1>No hay registros</h1>";
	}

?>
<div style="overflow:auto;" id="lista">
	<table class="table table-striped table-hover">
	<tr>
		<th>Nombre completo</th>
		<th>Sexo</th>
		<th>Fecha de nacimiento</th>
		<th>Area</th>
		<th>Cargo</th>
		<th>Correo</th>
		<th>Cuenta</th>
	
	</tr>
	<?php
		if($publicadores->num_rows()>0){
			foreach($publicadores->result() as $row){
				echo "<tr>";
	
				echo "<td>" . $row->nombre ." ". $row->apellido . "</td>";
				echo "<td>$row->sexo</td>";
				echo "<td>$row->fecha_nacimiento</td>";
				echo "<td>$row->area</td>";
				echo "<td>$row->cargo</td>";

				echo "<td>$row->correo</td>";
				echo "<td>".(($row->activo == true)? 'activa':'desactiva'). "</td>";
				echo "</tr>";
			}
		}
	
	?>
	</table>
</div>
