<h1 class="page-header">
	Registro
	<small>Administrador</small>
</h1>
<div class="row">
	<div class="col-md-12 col-lg-12">
		<div class="panel panel-default" style="">
			<div class="panel-body">
				<form class="" action="<?=base_url('Admin/Registro')?>" method="post" id="formRegistro">
					<div class="row">
						<div class="col-md-6 col-lg-6">
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
								<select required class="form-control" name="genero" id="genero">
									<option value="M">Masculino</option>
									<option value="F">Femenino</option>
								</select>
							</div>
							<div class="form-group">
								<label for="">Correo</label>
								<input placeholder="ejemplo@gmail.com" class="form-control" type="text" name="correo" id="correo" required>
							</div>
							<div class="form-group">
								<label for="">Contraseña</label>
								<input class="form-control" type="password" name="clave" id="clave" required>
							</div>
							<div class="form-group">
								<label for="">Confirmar contraseña</label>
								<input class="form-control" type="password" name="clave_conf" id="clave_conf" required>
							</div>
							<div class="form-group">
								<p id="response_area" class="bg-primary" style="padding:10px;border-radius:5px;display:none;"></p>
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
<script type="text/javascript" src="<?=base_url('public/js/jquery.mask.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/validar.js')?>"></script>
<script type="text/javascript">

	$(document).ready(function(){

		$("#formRegistro").submit(function(e){
			e.preventDefault();
			validarForm(this,$("#response_area"));
		});
	});
</script>