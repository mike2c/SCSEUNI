<label>Nombre</label>
<?php echo form_error('nombre'); ?>
<input type="text" name="nombre">

<br>
<label>Apellido</label>
<?php echo form_error('apellido'); ?>
<input type="text" name="apellido"><br>

<br>
<label>Sexo</label>
<select name="sexo">
	<option value="M">Masculino</option>
	<option value="F">Femenino</option>
</select>

<br>
<label>Fecha de Nacimiento</label>
<?php echo form_error('anio');
	echo form_error('mes');
	echo form_error('dia');
 ?>
<input type="text" name="anio" value= "<?php echo set_value('anio','Año') ?>" size="20"/>
<input type="text" name="mes" value= "<?php echo set_value('mes','Mes') ?>" size="20"/> 
<input type="text" name="dia" value= "<?php echo set_value('dia','Dia') ?>" size="20"/><br>