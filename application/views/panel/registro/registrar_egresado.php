<h1 class="page-header">
	Registro
	<small>egresado</small>
</h1>
<div class="row">
	<div class="col-md-12 col-lg-12">
		<div class="panel panel-default" style="">
			<div class="panel-body">
				<form class="" action="<?=base_url('Egresado/Registro')?>" method="post" id="formRegistro">
					<div class="row">
						<div class="col-md-6 col-lg-6">
							<div class="form-group">
								<label for="">Carnét</label>
								<input class="form-control" type="text" name="carnet" id="carnet" required>
							</div>
							<div class="form-group">
								<label for="">Cedula</label>
								<input class="form-control" type="text" name="cedula" id="cedula">
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
								<label for="">Carrera</label>
								<div id="carrera_area"></div>
							</div>
							<div class="form-group">
								<label for="">Año de egresado</label>
								<input class="form-control" type="text" name="fecha_egresado" id="fecha_egresado" required>
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
								<label for="">Teléfono</label>
								<input class="form-control" type="text" name="telefono" id="telefono">
							</div>
							<div class="form-group">
								<label for="">Celular</label>
								<input class="form-control" type="text" name="celular" id="celular">
							</div>
							<div class="form-group">
								<label for="">Departamento</label>
								<div id="departamento_area"></div>
							</div>
							<div class="form-group">
								<label for="">Municipio</label>
								<div id="municipio_area"></div>
							</div>
							
							<div class="form-group">
								<label for="">Dirección:</label>
								<textarea class="form-control" name="direccion" id="direccion" rows="5"></textarea>
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
<script type="text/javascript" src="<?=base_url('public/js/jquery.cedula_plugin.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/jquery.mask.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/validar.js')?>"></script>
<script type="text/javascript">
	$(document).ready(function(){

		listarDepartamentos(null,null,"form-control");
		listarMunicipios($("#departamento").val(),null,null,"form-control");
		listarCarreras(null,null,"form-control");

		$("#carnet").mask("0000-00000",{placeholder:"0000-00000"});
		$("#cedula").mask("000-000000-0000S",{placeholder:"000-000000-0000L"});
		$("#cedula").cedula();
		$("#telefono").mask("0000-0000",{placeholder:"0000-0000"});
		$("#celular").mask("0000-0000",{placeholder:"0000-0000"});
		$("#fecha_egresado").mask("0000",{placeholder: "0000"});

		$("#formRegistro").submit(function(e){
			e.preventDefault();
			if($("#cedula").valida()){
				validarForm(this,$("#area_response"));
			}else{
				alert("Formato de Cedula Incorrecto");
			}
		});
	});
</script>