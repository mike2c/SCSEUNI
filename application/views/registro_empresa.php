<?php $this->load->view('cabecera');?>
<div class="container">
	<?php 
	echo $error;
	echo form_open_multipart('Empresa/subirImg') ?>
		<div class="form-group">
			<div class="row">
			
			</div>
		<div class="row">
			<div class="col-md-4 col-lg-4">
				<legend>Datos de la Empresa</legend>
				<?php echo form_error('nombre_empresa'); ?>
				<label for="">Nombre de la Empresa*</label>
				<input class="form-control" type="text" name="nombre_empresa" value = "<?php set_value('nombre_empresa'); ?>">
				<?php echo form_error('sociedad'); ?>
				<label for="">Tipo de Sociedad*</label>
				<select name='sociedad'>
					<option value=''> </option>
				</select><br/>
				<?php echo form_error('mision'); ?>
				<label>Misión</label>
				<textarea class="form-control" name="direccion" id="" rows="5" class="form-control" value = "<?php set_value('mision'); ?>"> </textarea>
				<?php echo form_error('vision'); ?>
				<label>Visión</label>
				<textarea class="form-control" name="direccion" id="" rows="5" class="form-control" value = "<?php set_value('vision'); ?>"> </textarea>
				<?php echo form_error('ocupacion'); ?>
				<label>Ocupación</label>
				<textarea class="form-control" name="direccion" id="" rows="5" class="form-control" value = "<?php set_value('ocupacion'); ?>"> </textarea>
				<?php echo form_error('sitio_web'); ?>
				<label>Sitio Web</label>
				<input class="form-control" type="text" name="sitio_web" value = "<?php set_value('sitio_web'); ?>">

				<legend>Datos de Contacto</legend>
				<?php echo form_error('telefono'); ?>
				<label for="">Telefono</label>
				<input class="form-control" type="text" name="telefono" value = "<?php set_value('telefono'); ?>">
				<?php echo form_error('celular'); ?>
				<label for="">Celular</label>
				<input class="form-control" type="text" name="celular" value = "<?php set_value('celular'); ?>">
				<?php echo form_error('direccion'); ?>
				<label for="">Dirección</label>
				<textarea class="form-control" name="direccion" id="" rows="5" class="form-control" value = "<?php set_value('direccion'); ?>"> </textarea>

				<legend>Datos de la Cuenta</legend>
				<label for="">Correo*</label>
				<input class="form-control" type="text" name="correo" value = "<?php set_value('correo'); ?>">
				<label for="">Contraseña*</label>
				<input class="form-control" type="text" name="clave">
				<label for="">Repite la contraseña</label>
				<input class="form-control" type="text" name="clave_repetida">
				<input type="file" name="perfil_img" size="20" />
				<br/> <br/>
				<input type="submit" value="Registrar" />

			</div>
		</div>
		</div>
	</form>
</div>
<?php $this->load->view('footer'); ?>