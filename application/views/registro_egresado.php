	<div class="container">
	<h2>Formulario registro de egresados</h2>
	<hr>
		<div class="row">
		<div class="col-md-3 col-lg-3">
			<form action="<?=base_url().'index.php/egresado/registro'?>" method="post">
			<div class="form-group">
			
				<label for="">Cedula</label><input pattern="^([0-9]{3})+[-]([0-9]{6})+[-]([0-9]{4})+[a-zA-Z]" placeholder="000-000000-0000L" name="cedula" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Carrera*</label>
					<select name="carrera" id="" class="form-control">
						<option value="1">Ingenieria Civil</option>
						<option value="2">Ingenieria en Sistemas</option>
						<option value="3">Ingenieria Industrial</option>
						<option value="4">Ingenieria Industrial</option>
					</select>		
				</div>

				<div class="form-group"><label for="">Carnet*</label><input placeholder="0000-00000" pattern="([0-9]{4})+[-]([0-9]{5})" required name="carnet" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Nombre*</label><input required name="nombre" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Apellido*</label><input required name="apellido" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Sexo*</label>
					<select name="sexo" id="" class="form-control">
						<option value="M">Masculino</option>
						<option value="F">Femenino</option>
					</select>
				</div>
				<div class="form-group"><label for="">Fecha de nacimiento</label><input required type="date" name="fecha_nacimiento" class="form-control"></div>

				<div class="form-group"><label for="">Celular</label><input pattern="([0-9]{4})+[-]([0-9]{4})" placeholder="0000-0000" name="celular" type="text" class="form-control"></div>				
				<div class="form-group"><label for="">Telefono</label><input placeholder="0000-0000" name="telefono" type="text" class="form-control"></div>
				<div class="form-group"><label for="">Correo</label><input placeholder="ejemplo@gmail.com" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" name="correo" type="email" class="form-control"></div>
				
				
				<div class="form-group"><label for="">Departamento</label><select name="departamento" id="departamento" class="form-control"></select></div>
				<div class="form-group"><label for="">Municipio</label><select name="municipio" id="municipio" class="form-control"></select></div>
				<div class="form-group"><label>Dirección</label><textarea name="direccion" id="" cols="30"class="form-control"></textarea></div>
				<div class="form-group">
					<input class="btn btn-primary" type="submit" value="Registrar">
					<input class="btn btn-primary" type="reset" value="Limpiar Campos">
				</div>
			</form>
		</div>


	<div class="col-md-3 col-lg-3">
			<p class="alert alert-info">
			<legend>Informacion</legend>
				Los campos marcados con un * son obligatorios
			</p>
			<p class="alert alert-danger">
			<legend>Advertencias</legend>
				<?php echo validation_errors(); ?>
			</p>
		
		</div>
	</div>

		<!--
		
		-->
</div>
