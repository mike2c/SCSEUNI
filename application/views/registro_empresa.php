<?php $this->load->view('cabecera');?>
<div class="container">
<<<<<<< HEAD
	<div class="col-md-5 col-lg-5 col-md-push-7 borde">
		<h2 class="page-header">
			Registro de empresa
		</h2>

		<form action="<?=base_url().'index.php/Egresado/Registro'?>" method="post" id="formRegistroEmpresa" name="formRegistroEmpresa ">
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
					<input class="form-control" autocomplete="off" type="password" id="clave1" required name="clave">
					<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
				</div>
			
			</div>
			<div class="form-group">
				<label for="">Confirma la contraseña*</label>
				<div class="input-group">
					<input class="form-control" autocomplete="off" type="password" id="clave2" required name="conf_clave">
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
							<select name="departamento" class="form-control" id="departamento">
							<?php
								foreach($departamentos->result() as $row){
									echo "<option value='$row->departamento_id'>$row->departamento</option>";
								}
							?>
						</select>
						<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
					</div>
					
						
				</div>
				<div class="form-group">
					<label for="">Municipios</label>
					<div class="input-group">
					<div id="areaMunicipios"></div>
						<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
					</div>
					
				</div>
			<div class="form-group">
			<label for="">Dirección</label>
				<textarea class="form-control" autocomplete="off" name="direccion" id="" rows="3" class="form-control"></textarea>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary" value="Registrar">
			</div>

		</form>
	</div>

</div>
<script type="text/javascript">
	
	$("#formRegistroEmpresa").submit(function(event){
		if($("#clave1").val() != $("#clave2").val()){
			window.alert("Las contraseñas no coinciden");
			event.preventDefault();
		}

	});

	$(function(){
		$("#departamento").change(function(){
			listarMunicipios($(this).val());
		});
	});

	function listarMunicipios(id){
		if(id > 0){
			$("#areaMunicipios").load("<?=base_url().'index.php/Ajax/CargarMunicipios/'?>" + id);	
		}
		
	}

	listarMunicipios(document.getElementById("departamento").value);
	function abrirImagen(){
		$("#logo").trigger("click");
	}


</script>
<style type="text/css">
	
	body{
		background-image:url("<?=base_url().'public/res/rasca_cielos.jpg'?>");
		background-size: 100% 100%;
		
	}
	body label{
		color: white;
		text-shadow: 0px 0px 1px black;
	}
	
	h2{
		color:white;
	}
	.borde{
		//border: 1px solid lightgray;
	}
</style>
=======
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
>>>>>>> 24993d1d79e69dbe6b4b6c7cc4f10c8692f39225
