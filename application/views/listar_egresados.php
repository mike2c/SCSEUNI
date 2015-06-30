<div class="nav">
	<a href="#" class="navbar-brand">Registro de egresados</a>
	<form action="#" class="navbar-form navbar-right">
		
		<button class="btn btn-primary navbar-btn"><span class="glyphicon glyphicon-repeat"></span></button>
		<div class="form-group">
			<input type="text" class="form-control" placeholder="busqueda">
		</div>
	</form>
</div>
<div>
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

			?>

</table>
</div>
