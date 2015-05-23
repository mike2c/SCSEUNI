<div class="container">
	<h1>
	Iniciar Sesión
	</h1>
	<div class="row">
		<div class="col-md-5 col-lg-5">
			<form action="<?=base_url().'index.php/sesion/iniciar_sesion'?>" method="POST">
				<div class="form-group">
					<label for="">Correo</label>
					<input type="text" name="correo" id="correo" class="form-control">
					
					<label>Contraseña</label>
					<input type="text" name="clave" id="clave" class="form-control">
				</div>
			</form>
		</div>
	</div>
</div>


<style type="text/css">
	*{
		border-radius: 1px solid lightgray;
	}
</style>