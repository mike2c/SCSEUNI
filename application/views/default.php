		<!DOCTYPE html>
<html lang="">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Control y seguimiento de egresados</title>
		<!-- Bootstrap CSS -->
		<link href="<?=base_url().'public/css/bootstrap.css'?>" rel="stylesheet">
	</head>
	<body>
		<!-- Barra de navegación -->
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="dropdown navbar-left"><!-- boton desplegable para el usuario cuando ha iniciado sesion -->
					<button class="btn btn-default navbar-btn" role="button" aria-expanded="false" data-toggle="dropdown">Nombre de usuario <span class="caret"></span></button>
					<ul class="dropdown-menu">
						<li><a href="#">Mi Perfil</a></li>
						<li><a href="">Mensajes</a></li>
						<li><a href="">Salir</a></li>
					</ul>
					</div> <!--Fin del codigo para el boton del usuario-->
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="#">Inicio</a></li>
							<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Información <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="">Egresados</a></li>
									<li><a href="">Empresa</a></li>
									<li><a href="">Acerca de</a></li>
									<li><a href=""></a></li>
								</ul>
							</li>
							<li><a href="#">Contacto</a></li>
							<li><a href="#">Iniciar Sesion</a></li>
						</ul>
						</div>
		</nav>
		<!-- Fin del menu -->
		<div class="header" style="background-color:lightgray;">
			
		</div><!-- fin del header -->
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-lg-2">
					<img src="<?=base_url().'public/res/cap.png'?>" alt="" class="img-responsive">
				</div>
				<div class="col-md-9 col-lg-9">
					<legend>
						<h1 class="text-left">Bienvenido <small>a nuestro programa de control y seguimiento de egresados</small></h1>
					</legend>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatum distinctio suscipit nobis non delectus eaque, labore doloribus, porro temporibus saepe numquam dolore ipsum minus aliquid ad, inventore tenetur fugiat quidem!</p>
				</div>
			</div>
		</div>	

	</body>
	
		
		<!-- jQuery -->
		<script src="//code.jquery.com/jquery.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

		<style type="text/css">
			*{
				#border: 1px solid lightgray;
			}

		
		</style>
	</body>
</html>
