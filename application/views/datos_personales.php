<label>Nombre</label>
<?php echo form_error('nombre'); ?>
<input type="text" name="nombre" value="<?php echo set_value('nombre') ?>">

<br>
<label>Apellido</label>
<?php echo form_error('apellido'); ?>
<input type="text" name="apellido" value = "<?php set_value('apellido') ?>"><br> 

<br>
<label>Sexo</label>
<select name="sexo">
	<option value="M" <?php echo set_select('sexo','M','TRUE'); ?>>Masculino</option>
	<option value="F" <?php echo set_select('sexo','F'); ?>>Femenino</option>
</select>

<br>
<label>Fecha de Nacimiento</label>
<?php echo form_error('anio');
	echo form_error('mes');
	echo form_error('dia');
 ?>
<input type="text" name="anio" placeholder= "Año" value= "<?php echo set_value('anio') ?>" size="20"/>
<input type="text" name="mes" placeholder= "Mes" value= "<?php echo set_value('mes') ?>" size="20"/> 
<input type="text" name="dia" placeholder= "Dia" value= "<?php echo set_value('dia') ?>" size="20"/><br>