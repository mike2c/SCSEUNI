<label>Correo electronico</label>
<?php echo form_error('correo'); ?>
<input type ="text" name="correo" value="<?php echo set_value('correo') ?>" size="50" />

<br>
<label>Contraseña</label>
<?php echo form_error('pass'); ?>
<input type ="text" name="pass" value="<?php echo set_value('pass') ?>" size="50" />

<br>
<label>Confirmar Contraseña</label>
<?php echo form_error('passConf'); ?>
<input type ="text" name="passConf" value="<?php echo set_value('passConf') ?>" size="50" />