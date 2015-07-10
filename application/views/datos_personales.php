<style type="text/css">
	table tr td{
		padding-top: 5px;
		padding-left: 20px;
	}
</style>
<table>
	<tr>
		<td><label>Nombre</label></td>
		<td><input type="text" name="nombre" value="<?php echo set_value('nombre'); ?>"></td>
		<td><?php echo form_error('nombre'); ?></td>
		
	</tr>
	<tr>
		<td><label>Apellido</label></td>
		<td><input type="text" name="apellido" value = "<?php set_value('apellido'); ?>"></td>
		<td><?php echo form_error('apellido'); ?></td>
	</tr>
	<tr>
		<td><label>Sexo</label></td>
		<td><select name="sexo">
			<option value="M" <?php echo set_select('sexo','M','TRUE'); ?>>Masculino</option>
			<option value="F" <?php echo set_select('sexo','F'); ?>>Femenino</option>
		</select></td>
	</tr>

	<tr>
		<td><label>Fecha de Nacimiento</label></td>
		<td><input type="text" name="anio" placeholder= "Año" value= "<?php echo set_value('anio'); ?>" size="20"/>
		<input type="text" name="mes" placeholder= "Mes" value= "<?php echo set_value('mes'); ?>" size="20"/> 
		<input type="text" name="dia" placeholder= "Dia" value= "<?php echo set_value('dia'); ?>" size="20"/></td>
		<td><?php echo form_error('anio');
			echo form_error('mes');
			echo form_error('dia');
		 ?></td>
	</tr>
</table>