		<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Title Page</title>

		<!-- Bootstrap CSS -->
		<link href="<?=base_url().'public/css/bootstrap.css'?>" rel="stylesheet">
		<style type="text/css">
			.jumbotron{
				padding: 15px;
			
				margin-bottom: 0px;
			}

		</style>
		<script type="text/javascript">

			function activar(elemento){
				elemento.className = "active";
			}

		</script>
	</head>
	<body>
	<div class="jumbotron">
	<div class="container">
		<div class="row">
		<div class="col-md-4 col-lg-4">
		
			<div class="dropdown">
				<button class="btn btn-default dropdown-toggle" id="menudesplegable" data-toggle="dropdown" aria-expanded="true">
					Miguel Angel Castillo Cornejo <span class="caret"></span>
				</button>

			<ul class="dropdown-menu" role="menu" aria-labelledby="menudesplegable">
				<li role="presentation"><a role="menuitem" tab-index="-1" href="">Mi perfil</a></li>
				<li role="presentation"><a role="menuitem" tab-index="-1" href="">Salir</a></li>
				
			</ul>
			</div>
		
		</div>
			<div class="col-md-8 col-lg-8">
			<nav class="navbar">
			<strong><small>
					<ul class="nav nav-pills navbar-right" style="" id="menu">
					<li id="menuinicio"><a data-toggle="tab" href="#inicio">Inicio</a></li>
					<li class="dropdown">
					<a href="" data-toggle="dropdown" aria-expanded="false" role="button" class="dropdown-toggle">information<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="">Empresas</a></li>
							<li><a href="">Egresados</a></li>
							<li><a href="">Mision y Vision</a></li>
							<li><a href=""></a></li>
						</ul>
					</li>

					<!-- <li id="menuempresa">	<li id="menuegresado"><a href="<?=base_url().'index.php/inicio/egresados'?>">Egresados</a></li><a href="<?=base_url().'index.php/inicio/empresas'?>">Empresas</a></li>-->
					<li id="menucontacto"><a href="<?=base_url().'index.php/inicio/contacto'?>">Contacto</a></li>
					<li id="menulogin"><a data-toggle="tab" href="#">Iniciar Sesión</a></li>
					
				</ul>
			</small>
			
			</strong>
		
				
			</nav>
				
			</div>
		</div>

