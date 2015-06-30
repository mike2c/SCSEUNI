<div style="overflow:auto;" id="lista">
	<table class="table table-striped">
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
				echo "<td>$row->Carnet</td>";
				echo "<td>$row->Cedula</td>";
				echo "<td>" . $row->Nombre ." ". $row->Apellido . "</td>";
				echo "<td>$row->Sexo</td>";
				echo "<td>$row->Carrera</td>";
				echo "<td>$row->Correo</td>";
				echo "<td>$row->Estado</td>";
				echo "<td>$row->Titulado</td>";
				echo "<td>$row->Trabajando</td>";
				echo "<td>$row->Telefono</td>";
				echo "<td>$row->Celular</td>";
				echo "<td>$row->Dirección</td>";

				echo "</tr>";
			}
		}
	
	?>
	</table>
</div>


<!--SCRIPT DE BUSQUEDA-->
<script type="text/javascript">
	
</script>
<!--ESTILO -->
<style type="text/css">
	.nav select{
		height: 34px;
		border-color: lightgray;
		color: gray;
		border-radius: 4%;
		padding: 0px 5px;
	}

	.nav{
		padding-right: 10px;
	}
</style>