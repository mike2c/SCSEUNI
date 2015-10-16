<div class="container" style="padding-left:1px;">
	<div class="jumbotron">
		<h3>Recuperación de Contraseña</h3>
		<h3><small>
			En caso de que hayas olvidado la contraseña de tu cuenta, ingresa en la caja de texto el correo electrónico con el que registraste en la página, a continuación te será enviada una contraseña a tu correo para que puedas ingresar al sistema.
		</small></h3>
		<br>
		<form action="<?=base_url('Mensaje/recuperarPass')?>" class="form-inline" method="post" id="formRecuperarPass">
			<div class="form-group">
				<input type="email" class="form-control" name="correo" placeholder="ejemplo@gmail.com" id="correo">
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary" >
			</div>
		</form>
	</div>
	<div>
		<div class="panel-heading">
			<strong >NOTA</strong>
		</div>
		<div class="panel-body">
			Te aconsejamos que no borres el correo que te será enviado, en caso de que olvides tu contraseña nuevamente podrás acceder con la contraseña almacenada en ese correo.
		</div>
	</div>
	<div>
	<div class="panel panel-default">
	<div class="panel-body" id="respuesta">
		
	</div>
</div>
</div>