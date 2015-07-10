<?php
	echo form_open('admin/update');
?>
<div class="container">
	<div class="row">
		<div class="col-md-12 col-lg-12 contenido">
			<table>
				<tr><td><label>Nombre</label></td>
				<td><input type="text" name="nombre" value="<?php echo set_value('nombre',$data_persona->row()->nombre) ?>"></td>
				<td><?php echo form_error('nombre'); ?></td>
				</tr>

				<tr><td><label>Apellido</label></td>
				<td><input type="text" name="apellido" value="<?php echo set_value('apellido',$data_persona->row()->apellido) ?>"><br> </td>
				<td><?php echo form_error('apellido'); ?></td>
				</tr>

				<tr><td><label>Sexo</label></td>
				<td><select name="sexo">
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
				</select></td>
				</tr>

				<tr><td><label>Fecha de Nacimiento</label></td>
				<?php echo form_error('anio');
					echo form_error('mes');
					echo form_error('dia');
					$test = $data_persona->row()->fecha_nacimiento;
					$fecha = explode('-',$test);

				?>
				<td><input type="text" name="anio" placeholder= "Año" value= "<?php echo set_value('anio',$fecha[0]) ?>" size="5"/>
				<input type="text" name="mes" placeholder= "Mes" value= "<?php echo set_value('mes',$fecha[1]) ?>" size="3"/> 
				<input type="text" name="dia" placeholder= "Dia" value= "<?php echo set_value('dia',$fecha[2]) ?>" size="3"/><br>
				</td>
				</tr>

				<tr><td><label>Correo electronico</label></td>
				<td><input type ="text" name="correo" value="<?php echo set_value('correo',$data_usuario->row()->correo) ?>" size="50" /></td>
				<td><?php echo form_error('correo'); ?></td>

				<tr><td><label>Contraseña</label></td>
				<td><input type ="password" name="pass" value="<?php echo set_value('pass'),$data_usuario->row()->clave ?>" size="50" /></td>
				<td><?php echo form_error('pass'); ?></td>
				</tr>
				 
				<tr><td><label>Confirmar Contraseña</label></td>
				<td><input type ="password" name="passConf" value="<?php echo set_value('passConf',$data_usuario->row()->clave) ?>" size="50" /></td>
				<td><?php echo form_error('passConf'); ?></td>
				</tr>

				<tr><td><div><input type='submit' value='guardar cambios' /></div></td></tr>
			</table>
		</div>
	</div>
</div>