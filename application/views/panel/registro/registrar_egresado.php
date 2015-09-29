<h1 class="page-header">
	Registro
	<small>egresado</small>
</h1>
<div class="row">
	<div class="col-md-12 col-lg-12">
		<div class="panel panel-default" style="">
			<div class="panel-body">
				<form class="" action="<?=base_url('Egresado/')?>" method="post" id="formRegistro">
					<div class="row">
						<div class="col-md-6 col-lg-6">
							<div class="form-group">
								<label for="">Carnét</label>
								<input class="form-control" type="text" name="carnet" id="carnet" required>
							</div>
							<div class="form-group">
								<label for="">Cedula</label>
								<input class="form-control" type="text" name="cedula" id="cedula" required>
							</div>
							<div class="form-group">
								<label for="">Nombre</label>
								<input class="form-control" type="text" name="nombre" id="nombre" required>
							</div>
							<div class="form-group">
								<label for="">Apellido</label>
								<input class="form-control" type="text" name="apellido" id="apellido" required>
							</div>
							<div class="form-group">
								<label for="">Genero</label>
								<select class="form-control" name="genero" id="genero">
									<option value="M">Masculino</option>
									<option value="F">Femenino</option>
								</select>
							</div>

							<div class="form-group">
								<label for="">Correo</label>
								<input class="form-control" type="text" name="correo" id="correo" required>
							</div>
							<div class="form-group">
								<label for="">Teléfono</label>
								<input class="form-control" type="text" name="telefono" id="telefono" required>
							</div>
							<div class="form-group">
								<label for="">Celular</label>
								<input class="form-control" type="text" name="celular" id="celular" required>
							</div>

							<div class="form-group">
								<label for="">Municipio</label>
								<div id=""></div>
							</div>
							<div class="form-group">
								<label for="">Departamento</label>
								<div id=""></div>
							</div>
							<div class="form-group">
								<label for="">Dirección:</label>
								<textarea class="form-control" name="direccion" id="direccion" rows="5"></textarea>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary">Registrar</button>
								<button type="button" class="btn btn-default">Cancelar</button>
							</div>
						</div>
					</div>
				</form>
			</div>
			
		</div>
	</div>
</div>
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>