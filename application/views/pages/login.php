<div class="container">
	<div class="contenido">
		<h2 class="page-header">Iniciar sesión</h2>
		<div class="row">
			<div class="col-md-5">
				<form id="form_iniciar_sesion" class="" method="POST" action="<?=base_url().'index.php/Sesion/IniciarSesion'?>">
					<div class="form-group">
						<label>Correo</label>
						<div class="input-group">
							<input type="text" class="form-control" name="correo"><span class="input-group-addon glyphicon glyphicon-envelope"></span>
						</div>
					
					</div>
					<div class="form-group">
						<label>Contraseña</label>
						<div class="input-group">
							<input autocomplete="off" type="password" class="form-control" name="clave"><span class="input-group-addon glyphicon glyphicon-lock"></span>
						</div>
					</div>
					<div class="form-group" style="overflow:auto;">
						<input autocomplete="off" type="submit" class="btn btn-primary pull-right" value="Iniciar Sesión">
					</div>
				</form>
			</div>
			<div class="col-md-6">
	
			 	<div class="panel panel-default">
					<div id="respuesta" class="panel-body">
					
					</div>
				</div>
			
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<hr>
				<a href="javascript:mostrarsoluciones()">Problemas para iniciar sesión</a>
				<div id="soluciones" class="hidden-">
				<br>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="text-info">He olvidado mi contraseña</h4>
					</div>
					<div class="panel-body">
						<p class="text-primary">Para recuperar tu contraseña solamente necesitas digitar tu correo en esta <a href="<?=base_url('recuperar_clave')?>">pagina</a> , se te enviara tu contraseña en un correo electronico a la cuenta proporcionada</p>
					</div>
				</div>
					
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="text-info">No sé como o donde crearme mi cuenta</h4>
					</div>
					<div class="panel-body">
						<p class="text-primary">El registro es necesario solamente si eres una empresa y lo puedes realizar completando el formulario en esta <a href="<?=base_url('registro_empresa')?>">pagina</a>. Si eres un egresado deberas autenticar tu cuenta primero antes de iniciar sesión en esta <a href="<?=base_url('autenticar_egresado')?>">página</a></p>.
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="<?=base_url('public/js/validar.js')?>"></script>
<script type="text/javascript">

	$("#form_iniciar_sesion").submit(function(e){
		e.preventDefault();

		validarForm(this,$("#respuesta"));

	});


	function mostrarsoluciones(){
		$("#soluciones").toggle("slow");
	}
</script>
<style>
	.input-group *{
		height: 35px;
		border-radius: 2px;
	}

	.input-group span{
		top: 0px;
	}
	
	body{
		overflow-y:scroll;
	}

	#soluciones p a{
		text-decoration: underline;
	}
</style>
