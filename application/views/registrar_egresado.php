	<div class="row">
		<div class="col-md-4 col-lg-4">
			<form action="">
				
			<legend>Datos Personales</legend>
				<div class="form-group"><label for="">Cedula</label><input name="cedula" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Carnet*</label><input required name="carnet" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Nombre*</label><input required name="nombre" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Apellido*</label><input required name="apellido" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Sexo*</label>
					<select name="sexo" id="" class="form-control">
						<option value="M">Masculino</option>
						<option value="F">Femenino</option>
					</select>
				</div>
				<div class="form-group"><label for="">Fecha de nacimiento</label><input required type="date" name="fecha_nacimiento" class="form-control"></div>
				
				<legend>Datos de Contacto</legend>
				<div class="form-group"><label for="">Celular</label><input name="celular" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Telefono</label><input name="telefono" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Correo</label><input name="correo" type="email" class="form-control"></div>
				
				<legend>Datos de Ubicación</legend>
				<div class="form-group"><label for="">Departamento</label><select name="departamento" id="departamento" class="form-control"></select></div>
				<div class="form-group"><label for="">Municipio</label><select name="municipio" id="municipio" class="form-control"></select></div>
				<div class="form-group"><label>Dirección</label><textarea name="direccion" id="" cols="30"class="form-control"></textarea></div>
				<div class="form-group">
					<input class="btn btn-primary" type="submit" value="Registrar">
					<input class="btn btn-primary" type="reset" value="Limpiar Campos">
				</div>
			</form>
		</div>
		<!--
		<div class="col-md-5 col-lg-5 col-md-offset-1 col-lg-offset-1" style="margin-top:55px;">
			<p class="alert alert-info">
			<legend>Informacion</legend>
				Los campos marcados con un * son obligatorios
			</p>
			<p class="alert alert-danger">
			<legend>Advertencia</legend>
				<?php echo validation_errors(); ?>
			</p>
		
		</div>
		-->
</div>
