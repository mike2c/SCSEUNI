<table>
	<tr>
		<td><label>Correo electronico*</label></td>
		<td><input type ="text" name="correo" value="<?php echo set_value('correo'); ?>" size="50" /></td>
		<td><?php echo form_error('correo'); ?></td>
	</tr>

	<tr>
		<td><label>Contraseña*</label></td>
		<td><input type ="password" name="pass" size="50" /></td>
		<td><?php echo form_error('pass'); ?></td>
	</tr>

	<tr>
		<td><label>Confirmar Contraseña*</label></td>
		<td><input type ="password" name="passConf" size="50" /></td>
		<td><?php echo form_error('passConf'); ?></td>
	</tr>
</table>