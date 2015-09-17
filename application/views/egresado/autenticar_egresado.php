<div class="container" style="padding-left:1px;">

	<div class="jumbotron">
		<h2 class="">Autenticación de egresado</h2>
		<h3><small>	La universidad ya cuenta con información parcial de sus egresados que se obtiene por medio de registro academico.
		Digita tu correo electronico y verifica si se encuentra registrado en el sistema, si tu correo se encuentra se enviara un mensaje a tu cuenta con
		la información para que puedas acceder y actualizar tu cuenta.</small>
		</h3>
	<br>
		<form action="<?=base_url('egresado/Autenticar')?>" class="form-inline" method="post" id="formAutenticarEgresado">
			<div class="form-group">
				<input type="email" class="form-control" name="correo" placeholder="ejemplo@gmail.com" id="correo">
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary" >
			</div>
		</form>
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