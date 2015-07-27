<div class="container contenido">
<h2 class="page-header">Inicia sesión porfavor</h2>
	<div class="col-lg-4 col-md-4 col-xs-4">
	<form class="form-horizontal" method="POST" action="<?=base_url().'index.php/Sesion/IniciarSesion'?>">
		<div class="form-group">
			<label>Correo</label>
			<input type="text" class="form-control" name="correo">
		</div>
		<div class="form-group">
			<label>Contraseña</label>
			<input autocomplete="off" type="password" class="form-control" name="clave">
		</div>
		<div class="form-group">
			<input autocomplete="off" type="submit" class="form-control btn btn-primary" value="Entrar">
		</div>
	</form>
	<br>
	</div>

</div>

<div>
	<div class="container well contenido">
		<div class="row">
			<div class="col-md-10 col-lg-10">
			<h1 class="">¿Aun no posees una cuenta?</h1>
				<p>El proceso de registro varia dependiendo de el tipo de usuario.Si eres un <label for=""> Egresado</label> deberas seguir
				 los siguientes pasos mostrados en este <a href="<?=base_url('Egresado/Autenticar')?>">enlace</a> o si eres una empresa puedes crearla directamente completando el siguiente formulario de registro <a href="#">aqui</a>.</p>
			</div>
		</div>	
	</div>
</div>	

<!-- ESTILO -->
<script type="text/javascript">
	activarMenu(document.getElementById("menu_sesion"));
</script>
