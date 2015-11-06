<br>
<div class="container">
	<div class="row">
		<div class="col-md-5 col-lg-5" style="margin-left:30%;">
			<h1 class="text-center"><strong>Login</strong></h1>
		</div>
	</div>
<div class="row" style="margin:0 auto;">
	<div class="col-md-5 col-lg-5" style="margin-left: 30%;">
		<div class="contenido" style="padding:20px 40px;">
	
		<p class="help-block text-center">Ingresa para iniciar tu sesión</p>
		<form id="form_iniciar_sesion" class="" method="POST" action="<?=base_url('login')?>">
		
			<div class="form-group">
			<label>Correo</label>
			<div class="input-group">
				<input type="text" required class="form-control" name="correo"><span class="input-group-addon glyphicon glyphicon-envelope"></span>
			</div>
		
			</div>
			<div class="form-group">
				<label>Contraseña</label>
				<div class="input-group">
					<input autocomplete="off" type="password" required class="form-control" name="clave"><span class="input-group-addon glyphicon glyphicon-lock"></span>
				</div>
			</div>
			<div class="form-group">
				<?php
					if(isset($login_errors) && !empty($login_errors)){
						?>
					 	<div class="panel panel-danger">
							<div id="respuesta" class="panel-body text-danger">
								<?=$login_errors?>
							</div>
						</div>
						<?
					}
				?>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary btn-sm" value="Iniciar Sesión">
			</div>	
		</form>
		<hr>
		<a href="javascript:mostrar_soluciones();" class="btn btn-link text-info text-center" style="display:block">Tengo problemas para iniciar sesión</a>
		<div class="hidden-content">
			<ul>
				<li><a href="<?=base_url('recuperacion_pass')?>">He olvidado mi contraseña</a></li>
				<li><a href="<?=base_url('registro_empresa')?>">Soy una empresa, ¿En donde me registro?</a></li>
				<li><a href="<?=base_url('autenticar_egresado')?>">Soy un egresado,¿Como accedo?</a></li>
			</ul>
		</div>
		</div>
	</div>
</div>
</div>
<style>
	.input-group-addon{
		top: 0px;
		border-left: none;
		background-color: white;
		color: gray;
	}
	input[type="text"],[type="password"]{
		box-shadow: none;
		border-right: none;
	}
</style>
<script type="text/javascript" src="<?=base_url('public/js/validar.js')?>"></script>
<script type="text/javascript">

	function mostrar_soluciones(){
		$(".hidden-content").toggle("slow");
	}

	$(".active").removeClass("active");
	$("#menu_ingresar").addClass("active");
</script>