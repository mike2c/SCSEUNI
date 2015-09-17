<div class="container" style="padding-left:1px;">
	<div class="jumbotron">
		<h2 class="">Error de Autenticación </h2>
		<h3><small><?php 
			if (isset($existe)){
				echo $existe;
				?><br/>Inicia sesión con tu correo y contraseña <a href="<?php echo base_url('sesion') ?>">aqui</a><?php
			}else{
				echo $no_existe;
				?><br/>Intentalo nuevamente haciendo click <a href="<?php echo base_url('egresado/Autenticar') ?>">aqui</a><?php
			}
		?>
		</small></h3>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">
			<strong >NOTA</strong>
		</div>
		<div class="panel-body">
			Si tu correo no se encuentra o no coincide con el que has proporcionado a la universidad 
		puedes ponerte en contacto con el administrador del sitio u otra autoridad de la universidad exponiendo el problema y adjuntandole 
		tu correo electronico para que este sea registrado en el sistema, recuerda proporcionar tu numero de carnet para que puedas ser identificado.
		Para obtener más información sobre las funciones y beneficios para los egresados haz click <a href="<?php echo base_url('Informacion/Egresados') ?>">aquí</a>
		</div>
	</div>
</div>

<style type="text/css">
	body{
		background-color: #eaeaea;
	}

	.jumbotron h2{
		font-size: 50px;
	}
	
	.panel-body{
		font-family: Helvetica;
		//font-weight: bold;
		color: gray;
	}
	.jumbotron{
		background-color: white;
		margin: 15px 0px;
	}


	.bg-danger{
		color: white;
		background-color: pink;
	}
</style>