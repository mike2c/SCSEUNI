[1mdiff --git a/application/controllers/inicio.php b/application/controllers/inicio.php[m
[1mdeleted file mode 100644[m
[1mindex 27f004c..0000000[m
[1m--- a/application/controllers/inicio.php[m
[1m+++ /dev/null[m
[36m@@ -1,33 +0,0 @@[m
[31m-<?php defined('BASEPATH') OR exit('No direct script access allowed');[m
[31m-	[m
[31m-	class Inicio extends CI_Controller{[m
[31m-[m
[31m-		function __construct(){[m
[31m-			parent::__construct();[m
[31m-			$this->load->library("form_validation");[m
[31m-			$this->load->helper("url");[m
[31m-		}[m
[31m-[m
[31m-		function index(){[m
[31m-			$this->load->view("top");[m
[31m-		}[m
[31m-[m
[31m-		function contacto(){[m
[31m-			$this->load->view("contacto");[m
[31m-			$this->load->view("bottom");[m
[31m-		}[m
[31m-[m
[31m-		function egresados(){[m
[31m-			$this->load->view("egresado");[m
[31m-			$this->load->view("bottom");[m
[31m-		}[m
[31m-[m
[31m-		function empresas(){[m
[31m-			$this->load->view("empresa");[m
[31m-			$this->load->view("bottom");[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-[m
[31m-[m
[31m-?>[m
[1mdiff --git a/application/views/bottom.php b/application/views/bottom.php[m
[1mdeleted file mode 100644[m
[1mindex 2195d3a..0000000[m
[1m--- a/application/views/bottom.php[m
[1m+++ /dev/null[m
[36m@@ -1,6 +0,0 @@[m
[31m-		<!-- jQuery -->[m
[31m-		<script src="//code.jquery.com/jquery.js"></script>[m
[31m-		<!-- Bootstrap JavaScript -->[m
[31m-		<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>[m
[31m-	</body>[m
[31m-</html>[m
\ No newline at end of file[m
[1mdiff --git a/application/views/datos_contacto.php b/application/views/datos_contacto.php[m
[1mdeleted file mode 100644[m
[1mindex 74080ee..0000000[m
[1m--- a/application/views/datos_contacto.php[m
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-<label>Telefono</label>[m
[31m-<input type="text" name="telefono">[m
[31m-[m
[31m-<label>Celular</label>[m
[31m-<input type="text" name="celular">[m
[31m-[m
[31m-<label>Direccion</label>[m
[31m-<input type="text" name="direccion">[m
[1mdiff --git a/application/views/datos_personales.php b/application/views/datos_personales.php[m
[1mdeleted file mode 100644[m
[1mindex d0cfee2..0000000[m
[1m--- a/application/views/datos_personales.php[m
[1m+++ /dev/null[m
[36m@@ -1,25 +0,0 @@[m
[31m-<label>Nombre</label>[m
[31m-<?php echo form_error('nombre'); ?>[m
[31m-<input type="text" name="nombre">[m
[31m-[m
[31m-<br>[m
[31m-<label>Apellido</label>[m
[31m-<?php echo form_error('apellido'); ?>[m
[31m-<input type="text" name="apellido"><br>[m
[31m-[m
[31m-<br>[m
[31m-<label>Sexo</label>[m
[31m-<select name="sexo">[m
[31m-	<option value="M">Masculino</option>[m
[31m-	<option value="F">Femenino</option>[m
[31m-</select>[m
[31m-[m
[31m-<br>[m
[31m-<label>Fecha de Nacimiento</label>[m
[31m-<?php echo form_error('anio');[m
[31m-	echo form_error('mes');[m
[31m-	echo form_error('dia');[m
[31m- ?>[m
[31m-<input type="text" name="anio" value= "<?php echo set_value('anio','Año') ?>" size="20"/>[m
[31m-<input type="text" name="mes" value= "<?php echo set_value('mes','Mes') ?>" size="20"/> [m
[31m-<input type="text" name="dia" value= "<?php echo set_value('dia','Dia') ?>" size="20"/><br>[m
\ No newline at end of file[m
[1mdiff --git a/application/views/datos_usuario.php b/application/views/datos_usuario.php[m
[1mdeleted file mode 100644[m
[1mindex f84ddb2..0000000[m
[1m--- a/application/views/datos_usuario.php[m
[1m+++ /dev/null[m
[36m@@ -1,13 +0,0 @@[m
[31m-<label>Correo electronico</label>[m
[31m-<?php echo form_error('correo'); ?>[m
[31m-<input type ="text" name="correo" value="<?php echo set_value('correo') ?>" size="50" />[m
[31m-[m
[31m-<br>[m
[31m-<label>Contraseña</label>[m
[31m-<?php echo form_error('pass'); ?>[m
[31m-<input type ="text" name="pass" value="<?php echo set_value('pass') ?>" size="50" />[m
[31m-[m
[31m-<br>[m
[31m-<label>Confirmar Contraseña</label>[m
[31m-<?php echo form_error('passConf'); ?>[m
[31m-<input type ="text" name="passConf" value="<?php echo set_value('passConf') ?>" size="50" />[m
\ No newline at end of file[m
[1mdiff --git a/application/views/prueba.php b/application/views/prueba.php[m
[1mdeleted file mode 100644[m
[1mindex 35027f8..0000000[m
[1m--- a/application/views/prueba.php[m
[1m+++ /dev/null[m
[36m@@ -1,75 +0,0 @@[m
[31m-		<!DOCTYPE html>[m
[31m-<html lang="">[m
[31m-	<head>[m
[31m-		<meta charset="utf-8">[m
[31m-		<meta http-equiv="X-UA-Compatible" content="IE=edge">[m
[31m-		<meta name="viewport" content="width=device-width, initial-scale=1">[m
[31m-		<title>Title Page</title>[m
[31m-[m
[31m-		<!-- Bootstrap CSS -->[m
[31m-		<link href="<?=base_url().'public/css/bootstrap.css'?>" rel="stylesheet">[m
[31m-		<style type="text/css">[m
[31m-			.jumbotron{[m
[31m-				padding: 15px;[m
[31m-			[m
[31m-				margin-bottom: 0px;[m
[31m-			}[m
[31m-[m
[31m-		</style>[m
[31m-		<script type="text/javascript">[m
[31m-[m
[31m-			function activar(elemento){[m
[31m-				elemento.className = "active";[m
[31m-			}[m
[31m-[m
[31m-		</script>[m
[31m-	</head>[m
[31m-	<body>[m
[31m-	<div class="jumbotron">[m
[31m-	<div class="container">[m
[31m-		<div class="row">[m
[31m-		<div class="col-md-4 col-lg-4">[m
[31m-		[m
[31m-			<div class="dropdown">[m
[31m-				<button class="btn btn-default dropdown-toggle" id="menudesplegable" data-toggle="dropdown" aria-expanded="true">[m
[31m-					Miguel Angel Castillo Cornejo <span class="caret"></span>[m
[31m-				</button>[m
[31m-[m
[31m-			<ul class="dropdown-menu" role="menu" aria-labelledby="menudesplegable">[m
[31m-				<li role="presentation"><a role="menuitem" tab-index="-1" href="">Mi perfil</a></li>[m
[31m-				<li role="presentation"><a role="menuitem" tab-index="-1" href="">Salir</a></li>[m
[31m-				[m
[31m-			</ul>[m
[31m-			</div>[m
[31m-		[m
[31m-		</div>[m
[31m-			<div class="col-md-8 col-lg-8">[m
[31m-			<nav class="navbar">[m
[31m-			<strong><small>[m
[31m-					<ul class="nav nav-pills navbar-right" style="" id="menu">[m
[31m-					<li id="menuinicio"><a data-toggle="tab" href="#inicio">Inicio</a></li>[m
[31m-					<li class="dropdown">[m
[31m-					<a href="" data-toggle="dropdown" aria-expanded="false" role="button" class="dropdown-toggle">information<span class="caret"></span></a>[m
[31m-						<ul class="dropdown-menu" role="menu">[m
[31m-							<li><a href="">Empresas</a></li>[m
[31m-							<li><a href="">Egresados</a></li>[m
[31m-							<li><a href="">Mision y Vision</a></li>[m
[31m-							<li><a href=""></a></li>[m
[31m-						</ul>[m
[31m-					</li>[m
[31m-[m
[31m-					<!-- <li id="menuempresa">	<li id="menuegresado"><a href="<?=base_url().'index.php/inicio/egresados'?>">Egresados</a></li><a href="<?=base_url().'index.php/inicio/empresas'?>">Empresas</a></li>-->[m
[31m-					<li id="menucontacto"><a href="<?=base_url().'index.php/inicio/contacto'?>">Contacto</a></li>[m
[31m-					<li id="menulogin"><a data-toggle="tab" href="#">Iniciar Sesión</a></li>[m
[31m-					[m
[31m-				</ul>[m
[31m-			</small>[m
[31m-			[m
[31m-			</strong>[m
[31m-		[m
[31m-				[m
[31m-			</nav>[m
[31m-				[m
[31m-			</div>[m
[31m-		</div>[m
[31m-[m
[1mdiff --git a/application/views/registrar_egresado.php b/application/views/registrar_egresado.php[m
[1mdeleted file mode 100644[m
[1mindex 6f3b64e..0000000[m
[1m--- a/application/views/registrar_egresado.php[m
[1m+++ /dev/null[m
[36m@@ -1,46 +0,0 @@[m
[31m-	<div class="row">[m
[31m-		<div class="col-md-4 col-lg-4">[m
[31m-			<form action="">[m
[31m-				[m
[31m-			<legend>Datos Personales</legend>[m
[31m-				<div class="form-group"><label for="">Cedula</label><input name="cedula" type="text" class="form-control"></div>[m
[31m-				<div class="form-group"><label for="">Carnet*</label><input required name="carnet" type="text" class="form-control"></div>[m
[31m-				<div class="form-group"><label for="">Nombre*</label><input required name="nombre" type="text" class="form-control"></div>[m
[31m-				<div class="form-group"><label for="">Apellido*</label><input required name="apellido" type="text" class="form-control"></div>[m
[31m-				<div class="form-group"><label for="">Sexo*</label>[m
[31m-					<select name="sexo" id="" class="form-control">[m
[31m-						<option value="M">Masculino</option>[m
[31m-						<option value="F">Femenino</option>[m
[31m-					</select>[m
[31m-				</div>[m
[31m-				<div class="form-group"><label for="">Fecha de nacimiento</label><input required type="date" name="fecha_nacimiento" class="form-control"></div>[m
[31m-				[m
[31m-				<legend>Datos de Contacto</legend>[m
[31m-				<div class="form-group"><label for="">Celular</label><input name="celular" type="text" class="form-control"></div>[m
[31m-				<div class="form-group"><label for="">Telefono</label><input name="telefono" type="text" class="form-control"></div>[m
[31m-				<div class="form-group"><label for="">Correo</label><input name="correo" type="email" class="form-control"></div>[m
[31m-				[m
[31m-				<legend>Datos de Ubicación</legend>[m
[31m-				<div class="form-group"><label for="">Departamento</label><select name="departamento" id="departamento" class="form-control"></select></div>[m
[31m-				<div class="form-group"><label for="">Municipio</label><select name="municipio" id="municipio" class="form-control"></select></div>[m
[31m-				<div class="form-group"><label>Dirección</label><textarea name="direccion" id="" cols="30"class="form-control"></textarea></div>[m
[31m-				<div class="form-group">[m
[31m-					<input class="btn btn-primary" type="submit" value="Registrar">[m
[31m-					<input class="btn btn-primary" type="reset" value="Limpiar Campos">[m
[31m-				</div>[m
[31m-			</form>[m
[31m-		</div>[m
[31m-		<!--[m
[31m-		<div class="col-md-5 col-lg-5 col-md-offset-1 col-lg-offset-1" style="margin-top:55px;">[m
[31m-			<p class="alert alert-info">[m
[31m-			<legend>Informacion</legend>[m
[31m-				Los campos marcados con un * son obligatorios[m
[31m-			</p>[m
[31m-			<p class="alert alert-danger">[m
[31m-			<legend>Advertencia</legend>[m
[31m-				<?php echo validation_errors(); ?>[m
[31m-			</p>[m
[31m-		[m
[31m-		</div>[m
[31m-		-->[m
[31m-</div>[m
[1mdiff --git a/application/views/registro_admin.php b/application/views/registro_admin.php[m
[1mdeleted file mode 100644[m
[1mindex da074df..0000000[m
[1m--- a/application/views/registro_admin.php[m
[1m+++ /dev/null[m
[36m@@ -1,9 +0,0 @@[m
[31m-<?php[m
[31m-	echo form_open('admin/registrar');[m
[31m-[m
[31m-	$this->load->view('datos_personales');[m
[31m-	$this->load->view('datos_usuario');[m
[31m-?>[m
[31m-[m
[31m-<div><input type="submit" value="Registrar" /></div>[m
[31m-</form>[m
\ No newline at end of file[m
[1mdiff --git a/application/views/top.php b/application/views/top.php[m
[1mdeleted file mode 100644[m
[1mindex 4f84bbd..0000000[m
[1m--- a/application/views/top.php[m
[1m+++ /dev/null[m
[36m@@ -1,43 +0,0 @@[m
[31m-		<!DOCTYPE html>[m
[31m-<html lang="es">[m
[31m-	<head>[m
[31m-		<meta charset="utf-8">[m
[31m-		<meta http-equiv="X-UA-Compatible" content="IE=edge">[m
[31m-		<meta name="viewport" content="width=device-width, initial-scale=1">[m
[31m-		<title>Control y seguimiento de egresados</title>[m
[31m-		<!-- Bootstrap CSS -->[m
[31m-		<link href="<?php echo base_url() ."/public/css/bootstrap.css"; ?>"  rel="stylesheet">[m
[31m-		<style type="text/css">[m
[31m-			h1,h2,h3,h4,h5{[m
[31m-				margin:10px;	[m
[31m-			}[m
[31m-		</style>[m
[31m-	</head>[m
[31m-[m
[31m-<body><!-- Inicio de body -->[m
[31m-<div class="jumbotron">[m
[31m-	<div class="container">[m
[31m-		<div class="col-md-2 col-lg-2">[m
[31m-			<img src="<?=base_url().'/public/res/logo_uni_610x377.png'?>" alt="" class="img-responsive">[m
[31m-		</div>[m
[31m-		<div class="col-md-10 col-lg-10">[m
[31m-			<h2><strong>Universidad Nacional de Ingenieria</strong></h2>[m
[31m-			<h4>Recinto Universitario Augusto César Sandino</h4>[m
[31m-		</div>[m
[31m-	</div>[m
[31m-</div>[m
[31m-<div class="container">[m
[31m-	<div class="row">[m
[31m-		<nav class="navbar navbar-default">[m
[31m-			<div class="container-fluid">[m
[31m-				<ul class="nav navbar-nav">[m
[31m-					<li><a href="#">Inicio</a></li>[m
[31m-					<li><a href="#">Egresados</a></li>[m
[31m-					<li><a href="#">Empresas</a></li>[m
[31m-					<li><a href="#">Contacto</a></li>[m
[31m-					<li><a href="#">Otro menu</a></li>[m
[31m-				</ul>[m
[31m-			</div>[m
[31m-		</nav>[m
[31m-	</div>[m
[31m-</div>[m
\ No newline at end of file[m
[1mdiff --git a/public/res/logo_uni_610x377.png b/public/res/logo_uni_610x377.png[m
[1mdeleted file mode 100644[m
[1mindex 3c907a6..0000000[m
Binary files a/public/res/logo_uni_610x377.png and /dev/null differ
[1mdiff --git a/public/res/uni-logorgb.jpg b/public/res/uni-logorgb.jpg[m
[1mdeleted file mode 100644[m
[1mindex b348a75..0000000[m
Binary files a/public/res/uni-logorgb.jpg and /dev/null differ
