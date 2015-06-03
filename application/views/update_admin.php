<?php
	$title = 'Actualizar Informacion';
	$this->load->view('cabecera',$title);
	echo form_open('admin/update');

?>
	<label>Nombre</label>
	<?php echo form_error('nombre'); ?>
	<input type="text" name="nombre" value="<?php echo set_value('nombre',$data_persona->row()->nombre) ?>">

	<br>
	<label>Apellido</label>
	<?php echo form_error('apellido'); ?>
	<input type="text" name="apellido" value="<?php echo set_value('apellido',$data_persona->row()->apellido) ?>"><br> 

	<br>
	<label>Sexo</label>
	<select name="sexo">
		<?php 
			if($data_persona->row()->sexo == 'M'){
				$male = TRUE; 
				$female='';
			}
			else{
				$female = TRUE;
				$male = '';
			}
		?>
		<option value="M" <?php echo set_select('sexo','M',$male); ?>>Masculino</option>
		<option value="F" <?php echo set_select('sexo','F',$female); ?>>Femenino</option>
	</select>

	<br>
	<label>Fecha de Nacimiento</label>
	<?php echo form_error('anio');
		echo form_error('mes');
		echo form_error('dia');

		$test = $data_persona->row()->fecha_nacimiento;
		$fecha = explode('-',$test);

	?>
	<input type="text" name="anio" placeholder= "Año" value= "<?php echo set_value('anio',$fecha[0]) ?>" size="5"/>
	<input type="text" name="mes" placeholder= "Mes" value= "<?php echo set_value('mes',$fecha[1]) ?>" size="3"/> 
	<input type="text" name="dia" placeholder= "Dia" value= "<?php echo set_value('dia',$fecha[2]) ?>" size="3"/><br>

	<label>Correo electronico</label>
	<?php echo form_error('correo'); ?>
	<input type ="text" name="correo" value="<?php echo set_value('correo',$data_usuario->row()->correo) ?>" size="50" />

	<br>
	<label>Contraseña</label>
	<?php echo form_error('pass'); ?>
	<input type ="password" name="pass" value="<?php echo set_value('pass'),$data_usuario->row()->clave ?>" size="50" />
	 
	<br>
	<label>Confirmar Contraseña</label>
	<?php echo form_error('passConf'); ?>
	<input type ="password" name="passConf" value="<?php echo set_value('passConf',$data_usuario->row()->clave) ?>" size="50" />

	<div><input type='submit' value='guardar cambios' /></div>
<?php
	$this->load->view('footer');
?>