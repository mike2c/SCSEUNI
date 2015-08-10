<input type="hidden" name="base_url" id="base_url" value="<?=base_url()?>">
<?php echo validation_errors(); ?>
<div class="container">
	<div class="col-md-offset-1 col-md-6 col-lg-6">
	<br><br><br>
	<br>
	<br>
		<div id="error_field" class="bg-primary"></div>
	</div>
	<div class="col-md-5 col-lg-5">
		<h2 class="page-header">
			Registro de empresa
		</h2>

		<form action="<?=base_url().'index.php/Empresa/Registro'?>" method="post" id="formRegistroEmpresa" name="formRegistroEmpresa ">
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
						<div id="departamento_seleccion"></div>
						<span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
					</div>
					
						
				</div>
				<div class="form-group">
					<label for="">Municipios</label>
					<div class="input-group">
					<div id="municipio_seleccion"></div>
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
<script type="text/javascript" src="<?=base_url('public/js/listas.js')?>"></script>
<script type="text/javascript" src="<?=base_url('public/js/empresas.js')?>"></script>
<script type="text/javascript">
	
	$("#formRegistroEmpresa").submit(function(event){
		event.preventDefault();
		if($("#clave").val() != $("#clave_conf").val()){
			window.alert("Las contraseñas no coinciden");
			
		}else{
			registrarEmpresa($("#formRegistroEmpresa").serialize(),$("#error_field"));
		}
		
	});

	$(function(){
		$("#departamento").change(function(){
			listarMunicipios($(this).val());
			$("#municipio").addClass("form-control");
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
		background-repeat: no-repeat;
		background-size: 120% 150%;
		
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
	
	#error_field{
		visibility: hidden;
	}
	.bg-primary p{
		color: white;
		font-size: 16px;
	}

	.bg-primary{
		border-radius: 5px;
		border: 2px solid white;
		padding: 10px 10px;
	}
</style>