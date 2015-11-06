<div class="container">
	<div class="contenido">
		<h2>Registro de empresa</h2>
		
		<div class="row">
			<div class="col-md-6 col-lg-6">
				<form action="<?=base_url('Empresa/Registro')?>" method="post" id="formRegistroEmpresa" name="formRegistroEmpresa">
					<div class="form-group">
						<div class="col-sm-push-3">
							  <p class="help-block">Los campos marcados con un <i class="glyphicon glyphicon-asterisk"></i> son obligatorios.</p>
						</div>
					</div>
					<div class="form-group">
						<label for="">Nombre de la Empresa*</label>
						<div class="input-group">
							<input class="form-control" placeholder="Nombre de la empresa" required autocomplete="off" type="text" name="nombre_empresa">
							<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
		    			</div>
						
					</div>
					<div class="form-group">
						<label for="">Correo*</label>
						<div class="input-group">
							<input class="form-control" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" placeholder="ejemplo@gmail.com" required autocomplete="off" type="email" name="correo">
							<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
						</div>
						
					</div>
					<div class="form-group">
						<label for="">Contraseña*</label>
						<div class="input-group">
							<input class="form-control" autocomplete="off" type="password" id="clave" required name="clave">
							<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
						</div>
					
					</div>
					<div class="form-group">
						<label for="">Confirma la contraseña*</label>
						<div class="input-group">
							<input class="form-control" autocomplete="off" type="password" id="clave_conf" required name="clave_conf">
							<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
						</div>
						
					</div>
					<!-- -->
					<div class="form-group">
						<label for="">Telefono</label>
						<input class="form-control" pattern="([0-9]{4})+[-]([0-9]{4})" placeholder="0000-0000" autocomplete="off" type="text" name="telefono">
					</div>
					<!--Cargando los Departamentos-->
						<div class="form-group">
							<label for="">Departamento</label>
							<div class="input-group">
								<div id="departamento_area"></div>
								<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
							</div>
							
								
						</div>
						<div class="form-group">
							<label for="">Municipios</label>
							<div class="input-group">
							<div id="municipio_area"></div>
								<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
							</div>
							
						</div>
					<div class="form-group">
					<label for="">Dirección</label>
						<textarea class="form-control" autocomplete="off" name="direccion" id="" rows="3" class="form-control"></textarea>
					</div>
					<div class="form-group">
						<div id="respuesta" class="panel panel-default panel-body text-danger hidden-content">
							
						</div>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Registrar">
					</div>

				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/validar.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/empresas.js')?>"></script>
<script type="text/javascript">
	
	listarDepartamentos(null,null,"form-control");
	listarMunicipios($("#departamento").val(),null,null,"form-control");
	$("#formRegistroEmpresa").submit(function(e){
		e.preventDefault();
		validarForm(this,$("#respuesta"));
	});
	$(".active").removeClass("active");
	$("#menu_registro").addClass("active");
</script>