<div class="container">
	<div class="row contenido">
		
		<div class="col-md-5 col-lg-5">
			<h2 class="form-title">
				Bienvenido
			</h2>
			<form class="" method="POST" action="<?=base_url().'index.php/Sesion/IniciarSesion'?>">
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
					<input autocomplete="off" type="submit" class="btn btn-primary pull-right" value="Aceptar">
				</div>
				
			</form>
			<hr>
				<a href="#" class="pull-right">He olvidado mi contraseña</a>
		</div>
		<div class="col-md-6 col-lg-6" style="">
		<br><br><br><br><br><br>
			<?php
				if(isset($sesion_errors) && !empty($sesion_errors)){
					?>
				 	<div class="panel panel-primary">
						<div class="panel-heading">
							ERROR
						</div>
						<div class="panel-body">
							<?php
								echo $sesion_errors;
							?>
						</div>
					</div>
					<?
				}
			?>
	
		</div>
	</div>
</div>

<style type="text/css">
	.form-control
	{
		height: 35px;
	}
	input[type="password"]{
		font-size:22px;
	}
	.input-group span{
		top:0px;
		background-color: white;
	}
</style>