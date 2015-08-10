<div style="overflow:auto;" id="lista">
	<table class="table table-striped table-hover">
	<tr>
		<th>Cárnet</th>
		<th>Cedula</th>
		<th>Nombre completo</th>
		<th>Sexo</th>
		<th>Carrera</th>

		<th>Correo</th>
		<th>Cuenta</th>
		<th>Titulado</th>
		<th>Trabajando</th>
		<th>Teléfono</th>
		<th>Celular</th>
		<th>Dirección</th>
	</tr>
	<?php
		if($egresado->num_rows()>0){
			foreach($egresado->result() as $row){
				echo "<tr>";
				echo "<td>$row->carnet</td>";
				echo "<td>$row->cedula</td>";
				echo "<td>" . $row->nombre ." ". $row->apellido . "</td>";
				echo "<td>$row->sexo</td>";
				echo "<td>$row->nombre_carrera</td>";
				echo "<td>$row->correo</td>";
				echo "<td>".(($row->activo == true)? 'activa':'desactiva'). "</td>";
				echo "<td>".(($row->titulado == true)? 'titulado':'titulado'). "</td>";
				echo "<td>".(($row->trabaja == true)? 'trabajando':'desempleado'). "</td>";
				echo "<td>$row->telefono</td>";
				echo "<td>$row->celular</td>";
				echo "<td>$row->direccion</td>";

				echo "</tr>";
			}
		}
	
	?>
	</table>
</div>
</script>
<!--ESTILO -->
<style type="text/css">
	.nav select{
		margin:5px 0px;
		height: 30px;
		border-color: lightgray;
		color: gray;
		border-radius: 4%;
		padding: 0px 5px;
	}

	.nav{
		padding-left: 0px;
		padding-right: 20px;
	}

	table tr td:hover{
		cursor: hand;
	}
</style>